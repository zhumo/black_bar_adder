require 'rmagick'
require 'pathname'

### Ensure that the destination path exists
Pathname.new("./After/").mkpath

Pathname.new("./Before/").children.each do |path|
  next if path.basename.to_s == ".DS_Store"
  img = Magick::Image.read(path).first
  side = [img.columns, img.rows].max

  background_img = Magick::Image.new(side, side) do |options|
    options.background_color = "black"
  end

  result = background_img.composite(img, Magick::CenterGravity, Magick::OverCompositeOp)

  result.write("./After/barred-#{path.basename}")
end

