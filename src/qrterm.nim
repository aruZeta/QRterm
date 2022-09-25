import
  "."/[strings],
  std/[os, parseopt],
  pkg/[QRgen]

var
  params: OptParser = commandLineParams().initOptParser
  qrEcLevel: QRECLevel = qrECM
  data: string = ""

proc writeHelp() =
  echo helpMsg
  quit(0)

proc writeVersion() =
  echo versionMsg
  quit(0)

for kind, key, val in params.getopt():
  case kind
  of cmdEnd: discard
  of cmdLongOption, cmdShortOption:
    case key
    of "help", "h": writeHelp()
    of "version", "v": writeVersion()
    of "ecLevel", "l":
      case val
      of "l", "low": qrEcLevel = qrECL
      of "m", "medium": qrEcLevel = qrECM
      of "q", "quartile": qrEcLevel = qrECQ
      of "h", "high": qrEcLevel = qrECH
      else: quit("Wrong -l, --ecLevel value")
  of cmdArgument:
    data = key

if data.len == 0:
  data = stdin.readAll

newQR(data, ecLevel = qrEcLevel).printTerminal
