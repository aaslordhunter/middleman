module CustomHelpers
  def blog
    'http://blog.aliflynnaas.com/'
  end

  def google_javascript_include_tag(path, version, filename = nil)
    href = 'https://ajax.googleapis.com/ajax/libs/%s/%s/%s.min.js'
    javascript_include_tag href % [path, version, filename || path]
  end

  def section_link(section_name)
    link_to section_name, void, class: 'nav-link js-nav-link',
      data: { anchor: section_name.downcase }
  end

  def void
    'javascript:void(0)'
  end
end
