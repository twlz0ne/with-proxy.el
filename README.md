[![Build Status](https://travis-ci.com/twlz0ne/with-proxy.el.svg?branch=master)](https://travis-ci.com/twlz0ne/with-proxy.el)
[![MELPA](https://melpa.org/packages/with-proxy-badge.svg)](https://melpa.org/#/with-proxy)

# with-proxy.el

Evaluate expressions with proxy.

## Installation

Clone this repository, or install from MELPA. Add the following to your `.emacs`:

```elisp
(require 'with-proxy)
```

## Usage

```elisp
(with-proxy
  ...)

;; equals to:
(with-proxy
  :http-server "127.0.0.1:1081"
  :no-proxy '("localhost" "127.0.0.1" "192.168.*" "10.*")
  ...)

;; equals to:
(with-proxy-url
  :http-server "127.0.0.1:1081"
  :no-proxy '("localhost" "127.0.0.1" "192.168.*" "10.*")
  (with-proxy-shell
    :http-server "127.0.0.1:1081"
    ...))
```
