# Package

version       = "1.0.0"
author        = "aruZeta"
description   = "A simple QR generator in your terminal."
license       = "MIT"
srcDir        = "src"
binDir        = "bin"
bin           = @["qrterm"]

# Dependencies

requires "nim >= 1.6.0",
         "qrgen 2.1.1"
