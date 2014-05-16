module CustomHelpers
  def blog_url
    'http://blog.aliflynnaas.com/'
  end

  def cellphone_number
    '860-918-5895'
  end

  def font_awesome_url
    '//netdna.bootstrapcdn.com/font-awesome/4.1.0/css/font-awesome.css'
  end

  def gmail_address
    'aas.alexandra@gmail.com'
  end

  def github_url
    'https://github.com/aaslordhunter/'
  end

  def linkedin_url
    'https://www.linkedin.com/in/aliflynnaas'
  end

  def google_javascript_include_tag(path, version, filename = nil)
    href = 'https://ajax.googleapis.com/ajax/libs/%s/%s/%s.min.js'
    javascript_include_tag href % [path, version, filename || path]
  end

  def repo_url
    github_url + 'middleman'
  end

  def section_link(section_name)
    link_to section_name, void, class: 'nav-link js-nav-link',
      data: { anchor: section_name.downcase }
  end

  def void
    'javascript:void(0)'
  end
end
