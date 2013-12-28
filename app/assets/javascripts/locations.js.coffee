window.add_hide_flags = (marker_data, checked_ids) ->
  # For each id in checklist_id, go through the session marker_data and set flags accordingly

  if $.isEmptyObject(checked_ids) == false
    console.log checked_ids

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
        m['hide_flag']=true for m in marker_data when m.id == parseInt(listing.getAttribute('db_id'))

        undefined
      )

    if listings_to_display.length == 0
      $("#results_count").html('There are no results that match your search criteria')
    else
      if listings_to_display.length == 1
        $("#results_count").html(listings_to_display.length + ' result')
      else
        $("#results_count").html(listings_to_display.length + ' results')
  else 
    $('.location_listing').show()

    # Unhide all flags in the marker json
    m['hide_flag'] = false for m in marker_data

  undefined

window.build_maps = (parsed_json) ->
  # We build the handler and marker objects array in here. The latter array is in order that the objects are in the JSON.
  handler = Gmaps.build('Google')
  
  handler.buildMap { provider: {}, internal: {id: 'map'}}, ->
    window.map_markers=handler.addMarkers(parsed_json) 
    # Remove unchecked listings, and hide them on the map

    redraw_display window.parsed_json, $.session.get('checked_ids'), window.map_markers

    handler.bounds.extendWith window.map_markers
    handler.fitMapToBounds()
    undefined
  
  undefined

# This is really the key function where the flagged markers are hidden
window.hide_markers = (marker_data, marker_objs) ->
  marker_objs[i].show() for i in [0..marker_data.length-1] 
  marker_objs[i].hide() for i in [0..marker_data.length-1] when marker_data[i]['hide_flag']
  undefined

window.redraw_display = (marker_data_objs, checked_ids, marker_objs) ->
  # checked_ids is either there, or nothing has been checked, in which case nothing should be flagged to hide.
  add_hide_flags marker_data_objs, checked_ids

  # Now hide the markers
  hide_markers marker_data_objs, marker_objs

  undefined

# Set state: set globals when the page is loaded/refreshed. 

$ ->
  console.log 'Starting scripts'; $.session.clear()

  marker_json = $(".location_map_data").text().trim()
  window.parsed_json = jQuery.parseJSON marker_json
  
  # build full map on each load - we have to do the redraw display inside the callback of the build_maps otherwise
  # it'll run into timing issues.
  build_maps window.parsed_json
  
  undefined

# Let's set up an event handler for when a checkbox is clicked.  
$ ->
  $(':checkbox').click ->
    checked_ids = new Array()

    # Handle the display of the taxonomy first.
    $(':checkbox').each((i, value) ->
      if $('#' + value.getAttribute('id')).is(':checked')
        $('#' + value.getAttribute('id') + '_services').show()
        checked_ids.push(value.getAttribute('id'))
      else
        $('#' + value.getAttribute('id') + '_services').hide()
        $('#' + value.getAttribute('id') + '_services :checkbox').attr('checked', false)
    )
    $.unique(checked_ids)
    $.session.set('checked_ids', checked_ids)

    # Now handle the display of listings on the map and in the list
    redraw_display window.parsed_json, $.session.get('checked_ids'), window.map_markers
