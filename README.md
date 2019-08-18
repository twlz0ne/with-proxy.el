[![Build Status](https://travis-ci.com/twlz0ne/with-proxy.el.svg?branch=master)](https://travis-ci.com/twlz0ne/with-proxy.el)

# with-proxy.el

Evaluate expressions with proxy.

## Installation

Clone this repository to directory `~/.emacs.d/site-lisp/with-proxy`, for example, and add this to your .emacs

```elisp
(add-to-list 'load-path (expand-file-name "~/.emacs.d/site-lisp/with-proxy"))
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
(with-url-proxy
  :http-server :http-server "127.0.0.1:1081"
  :no-proxy '("localhost" "127.0.0.1" "192.168.*" "10.*")
  (with-shell-proxy
    :http-server :http-server "127.0.0.1:1081"
    ...))
```
