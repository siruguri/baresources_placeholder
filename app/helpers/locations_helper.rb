module LocationsHelper
  
  def checkbox_helper(value)
    if value == true
      image_tag('check.png')
    else
      image_tag('cancel.png')
    end
  end
  
  def class_tags(location)
    tags = []
    if location.categories.present?
      location.categories.each do |category|
        if category.present?
          tags << 'category_' + category.id.to_s
        end
      end
    end
    if location.languages.present?
      location.languages.each do |language|
        if language.present?
          tags << 'language_' + language.id.to_s
        end
      end
    end
    tags.join(' ')
  end
  
  def popover(service, location)
    if service.description.present? && location.delivery_method.present?
      "#{service.description}<br /><br />#{location.delivery_method}"
    elsif service.description.present?
      service.description
    end
  end
end
