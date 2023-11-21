require 'rmagick'
require 'pathname'

### Ensure that the destination path exists
Pathname.new("./After/").mkpath

Pathname.new("./Before/").children.each do |path|
  img = Magick::Image.read(path).first
  side = [img.columns, img.rows].max

  background_img = Magick::Image.new(side, side) do |options|
    options.background_color = "black"
  end

  result = background_img.composite(img, Magick::CenterGravity, Magick::OverCompositeOp)

  result.write("./After/barred-#{path.basename}")
end

