module CustomHelpers
  def blog_url
    'http://blog.aliflynnaas.com/'
  end

  def font_awesome_url
    '//netdna.bootstrapcdn.com/font-awesome/4.0.3/css/font-awesome.css'
  end

  def repo_url
    'https://github.com/aaslordhunter/middleman'
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
