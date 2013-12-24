window.add_hide_flags = (marker_data, checked_ids) ->
  # For each id in checklist_id, go through the session marker_data and set flags accordingly

  if $.isEmptyObject(checked_ids) == false
    console.log checked_ids

    session_markers = marker_data
    markers_to_display = new Array()
    listings_to_display = new Array()

    $(checked_ids.split(',')).each((x, id) ->
      $('#'+id).attr('checked', true)
      $('#'+id+'_services').show()
    )

    $('.location_listing').hide()
    $('.location_listing').each((a, listing) ->
      listing_id_match = true
      listing_tags = listing.getAttribute('data-tags').split(' ')
      $.each(checked_ids.split(','), (b, id) ->
          # the filters are an AND condition so we only need one mismatch - looping
          # again might override the false value if the next id is a match
        if jQuery.inArray(id, listing_tags) == -1
          listing_id_match = false
          return
        )

      if listing_id_match == true
        listings_to_display.push(listing)
        $('#'+listing.getAttribute('id')).show()
      else
        # Hide this listing on the map
        m['hide_flag']=true for m in marker_data when m.id=listing.getAttribute('id')
      )

    if listings_to_display.length == 0
      $("#results_count").html('There are no results that match your search criteria')
    else
      if listings_to_display.length == 1
        $("#results_count").html(listings_to_display.length + ' result')
      else
        $("#results_count").html(listings_to_display.length + ' results')

  undefined

window.build_maps = ->
  # We build the handler and marker objects array in here. The latter array is in order that the objects are in the JSON.
  handler = Gmaps.build('Google')
  markers = $.session.get('marker_data')
  
  handler.buildMap { provider: {}, internal: {id: 'map'}}, ->
    marker_objs=handler.addMarkers markers
    handler.bounds.extendWith marker_objs
    handler.fitMapToBounds()
    $.session.set('marker_objs', marker_objs)
    $.session.set('map_handler', handler)
  
  undefined

# This is really the key function where the flagged markers are hidden
window.hide_markers = (marker_data, marker_objs) ->
  marker_objs[i].hide() for i in [0..marker_data.length-1] when marker_data[i]['hide_flag']

window.redo_markers = (marker_data, checked_ids, marker_objs) ->
  # checked_ids is either there, or nothing has been checked, in which case nothing should be flagged to hide.
  add_hide_flags marker_data, checked_ids

  # Now hide the markers
  hide_markers marker_data, marker_objs
  undefined


# Set state: do everything that needs to be done when the page is loaded/refreshed. On refresh, we'll attempt to use data
# that's in the session.

$ ->
  # Read the raw data from the JSON if it's not there already
  if $.isEmptyObject $.session.get('marker_data')
    json = $(".location_map_data").text()
    marker_data = $.parseJSON json
    $.session.set('marker_data', marker_data)

  # build map if necessary
  build_maps() if $.isEmptyObject($.session.get('map_handler'))

  # At this point the session will also have a marker_objs key
  redo_markers $.session.get('marker_data'), $.session.get('checked_ids'), $.session.get('marker_objs')
  
