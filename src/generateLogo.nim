# This file just generates the logo of the library

import
  std/[os],
  pkg/[QRgen, QRgen/renderer, pixie]

let qr = newQR("https://github.com/aruZeta/QRterm", ecLevel = qrECH)

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

let qrImg = qr.renderImg(
  "#1d2021",
  "#fabd2f",
  100,
  100,
  pixels = 3840,
  img = readImage("share" / "img" / "logo-embed.png")
)

qrImg.writeFile("share" / "img" / "logo.png")

var qrImgExtended = newImage(1280, 640)
qrImgExtended.fill("#1d2021")

var qrImgExtendedCtx = qrImgExtended.newContext
qrImgExtendedCtx.drawImage(
  qrImg,
  640f32 / 2,
  0f32,
  640f32,
  640f32
)

qrImgExtended.writeFile("share" / "img" / "logo-extended.png")
