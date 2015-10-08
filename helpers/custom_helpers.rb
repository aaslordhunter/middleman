module CustomHelpers
  def font_awesome_url
    '//netdna.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.css'
  end

  def email_address
    'ali@thoughtbot.com'
  end

  def google_fonts_stylesheet_link_tag(family)
    stylesheet_link_tag "https://fonts.googleapis.com/css?family=#{family}"
  end

  def google_javascript_include_tag(path, version, filename = nil)
    href = 'https://ajax.googleapis.com/ajax/libs/%s/%s/%s.min.js'
    javascript_include_tag href % [path, version, filename || path]
  end



  def resume_url
    'aas_resume_2015.pdf'
  end

  def section_link(section_name)
    link_to section_name, void, class: 'nav-link js-nav-link',
      data: { anchor: section_name.downcase }
  end

  def void
    'javascript:void(0)'
  end
end
