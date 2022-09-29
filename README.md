<p align="center">
<img src="https://github.com/aruZeta/QRterm/blob/main/share/img/logo.svg"
width="300px" height="300px" />
</p>

# QRterm - A simple QR generator in your terminal

QRterm is a simple terminal QR generator made with [QRgen](https://github.com/aruZeta/QRgen).

## Prerequisites

`nim --version` >= `1.6.0`

## Installation

`nimble install qrterm`

## Features

- Supports all QR versions: from `1` to `40`.
- Supports all EC (Error Correction) levels: `L`, `M`, `Q` and `H`.
- Supports `numeric mode`, `alphanumeric mode` and `byte mode`.

## Usage

Pass input through arguments or via stdin:

```shell
qrterm "Hello World"
```
  
```shell
echo "Hello World" | qrterm
```

We could for example also show a QR with the password of a network connection:

```shell
nmcli -s -g 802-11-wireless-security.psk connection show <connection> | qrterm
```

## Advanced options

```
-l, --ecLevel: Set the EC (error correction) level, possible values:
  * l, low
  * m, medium (default)
  * q, quartile
  * h, high

-h, --help: Show a help message

-v, --version: Show the version of the program
```
