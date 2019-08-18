;;; with-proxy-test.el --- Test with-proxy -*- lexical-binding: t; -*-

;; Copyright (C) 2019 Gong Qijian <gongqijian@gmail.com>

;; This program is free software; you can redistribute it and/or modify
;; it under the terms of the GNU General Public License as published by
;; the Free Software Foundation, either version 3 of the License, or
;; (at your option) any later version.

;; This program is distributed in the hope that it will be useful,
;; but WITHOUT ANY WARRANTY; without even the implied warranty of
;; MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
;; GNU General Public License for more details.

;; You should have received a copy of the GNU General Public License
;; along with this program.  If not, see <https://www.gnu.org/licenses/>.

;;; Code:

(require 'ert)
(require 'with-proxy)

(ert-deftest with-proxy-test--cl-args-body-1 ()
    (should (equal '((1+ 1) (1+ 2))
                   (with-proxy--cl-args-body '(:http-server "127.0.0.1:8081"
                                               :no-proxy '("localhost" "127.0.0.1" "192.168.*" "10.*")
                                               (1+ 1)
                                               (1+ 2))))))

(ert-deftest with-proxy-test--cl-args-body-2 ()
    (should (equal '((1+ 1) (1+ 2))
                   (with-proxy--cl-args-body '(:http-server "127.0.0.1:8081"
                                               (1+ 1)
                                               (1+ 2))))))

(ert-deftest with-proxy-test--cl-args-body-3 ()
    (should (equal '((1+ 1) (1+ 2))
                   (with-proxy--cl-args-body '(:no-proxy '("localhost" "127.0.0.1" "192.168.*" "10.*")
                                               (1+ 1)
                                               (1+ 2))))))

(ert-deftest with-proxy-test--cl-args-body-4 ()
    (should (equal '((1+ 1) (1+ 2))
                   (with-proxy--cl-args-body '((1+ 1)
                                               (1+ 2))))))

(provide 'with-proxy-test)

;;; with-proxy-test.el ends here
