module CustomHelpers
  def font_awesome_url
    '//netdna.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.css'
  end

  def email_address
    'ali@thoughtbot.

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
