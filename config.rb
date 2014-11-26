http_path = "/"
sass_dir = "sass"
css_dir = "dist"
images_dir = "img"
relative_assets = true
output_style = :compressed

require 'autoprefixer-rails'
require 'compass-flexbox'

on_stylesheet_saved do |file|
  css = File.read(file)
  File.open(file, 'w') do |io|
    io << AutoprefixerRails.process(css)
  end
end
