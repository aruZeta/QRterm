# This file just generates the logo of the library

import
  std/[os],
  pkg/[QRgen, QRgen/renderer, pixie]

let qr = newQR("https://github.com/aruZeta/QRterm", ecLevel = qrECH)

writeFile(
  qr.renderImg(
    "#1d2021",
    "#fabd2f",
    100,
    100,
    pixels = 3840,
    img = readImage("share" / "img" / "logo-embed.png")
  ),
  "share" / "img" / "logo.png"
)

writeFile(
  "share" / "img" / "logo.svg",
  qr.printSvg(
    "#1d2021",
    "#fabd2f",
    100,
    100,
    svgImg = readFile("share" / "img" / "logo-embed.svg")
  )
)
