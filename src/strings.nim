const
  helpMsg*: string = """
QRterm - A simple QR generator in your terminal.

Usage:
======

Pass input through arguments or stdin:
  qrterm "Hello World"
  echo "Hello World" | qrterm

Options:
========

-l, --ecLevel: Set the EC (error correction) level, possible values:
  * l, low
  * m, medium (default)
  * q, quartile
  * h, high

-h, --help: Show this message

-v, --version: Show the version of the program
  """

  versionMsg*: string =
    """
QRterm v1.0.1
https://github.com/aruZeta/QRterm/releases/tag/v1.0.1
    """
