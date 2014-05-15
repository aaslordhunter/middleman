activate :i18n
activate :minify_html
activate :relative_assets

set :css_dir, 'stylesheets'
set :js_dir, 'javascripts'
set :images_dir, 'images'
set :relative_links, true

configure :build do
  activate :minify_css
end
