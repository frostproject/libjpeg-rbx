# libjpeg-rbx

> A high-performance library for efficient JPEG image handling, designed specifically for Roblox and Luau

Work in progress. Expect a lot of work and documentation to be done soon. Most progress will be seen on `dev` branch. This is the first progress made since [roblox-video-codec](https://github.com/iceeburr/roblox-video-codec) died. This might be the start of something bigger.

The library will be published in the future exclusively to Pesde at the moment.

This project was made for a school project about digital data compression methods and algorithms. You will be able to read my works and presentation in both English and Russian in the future. Maybe you can learn something new! Thank you for reading!

## Contributing

If you will to contribute, here is everything you need to know:<br>
You can run the development web server for testing images with `pesde run serve`. You can skip this altogether and simply fetch images from a URL.

A small collection of varied JPEG files can be found in [./testing/web/assets/](/testing/web/assets/). To specify your own, you can use the `-i` or `--image` arguments:

```copy
pesde run serve -- --image FILE_NAME.jpg
```

_File located in ./testing/web/assets/FILE_NAME.jpg_

By default it tries to search the assets directory first for the specified file name.
You can also use a relative path:

```copy
pesde run serve -- -i ~/Pictures/FILE_NAME.jpg
```
