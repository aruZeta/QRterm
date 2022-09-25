const
  helpMsg*: string = """
QRterm - A simple QR generator in your terminal.

Usage:
======

Pass input through arguments or stdin:
  qrterm "Hello World"
  echo "Hellow World" | qrterm

Options:
========

-l, --ecLevel: Set the ECC (error correction level), possible values:
  * l, low
  * m, medium (default)
  * q, quartile
  * h, high

-h, --help: Show this message

-v, --version: Show the version of the program
  """

  versionMsg*: string = "QRterm v0.0.1"
