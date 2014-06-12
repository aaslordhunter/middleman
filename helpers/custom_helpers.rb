module CustomHelpers
  def old_portfolio_url
    'http://aliflynnaas.com/2012'
  end

  def blog_url
    'http://blog.aliflynnaas.com/'
  end

  def font_awesome_url
    '//netdna.bootstrapcdn.com/font-awesome/4.1.0/css/font-awesome.css'
  end

  def github_url
    'https://github.com/aaslordhunter/'
  end

  def email_address
    'hi@ali-aas.com'
  end

  def google_fonts_stylesheet_link_tag(family)
    stylesheet_link_tag "https://fonts.googleapis.com/css?family=#{family}"
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
