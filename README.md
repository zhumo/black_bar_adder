A script that adds black bars to photos to make them square for instagram's image preview.

Previously, if you upload a non-square horizontal image to instagram, the image preview will fill into the preview square. If you upload a non-square vertical image, you are forced to crop it to square.

This script is smart enough to detect the orientation of the image and add the bars correctly.

# Usage
To install, run:
```
$ bundle install
```

The script expects a "Before" folder in the root directory. Put all the non-barred images here.

The script will then add the bars and create an "After" directory to store the outputs.

You can change it to use white bars instead of black by editing the script.

To run the script:
```
$ ruby add_bars.rb
```
