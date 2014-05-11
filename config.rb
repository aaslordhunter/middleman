helpers do
  def blog
    'http://blog.aliflynnaas.com/'
  end

  def jquery
    'https://ajax.googleapis.com/ajax/libs/jquery/1.7.1/jquery.min.js'
  end

  def section_link(section_name)
    link_to section_name, void, class: 'nav-link js-nav-link',
      data: { anchor: section_name.downcase }
  end

  def void
    'javascript:void(0)'
  end
end

activate :i18n
activate :minify_html

set :css_dir, 'stylesheets'
set :js_dir, 'javascripts'
set :images_dir, 'images'
set :relative_links, true

configure :build do
  activate :minify_css
  activate :minify_js
  activate :relative_assets
end
