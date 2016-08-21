;;; evil-org.el --- Evil extensions for Org.

;; Copyright (C) 2016 Ben Moon
;; Author: Ben Moon <guiltydolphin@gmail.com>
;; URL: https://github.com/guiltydolphin/evil-org
;; Git-Repository: git://github.com/guiltydolphin/evil-org.git
;; Created: 2016-08-21
;; Version: 0.1.0
;; Keywords: evil org
;; Package-Requires: ((evil "0") (hook "0"))

;; This program is free software: you can redistribute it and/or modify
;; it under the terms of the GNU General Public License as published by
;; the Free Software Foundation, either version 3 of the License, or
;; (at your option) any later version.
;;
;; This program is distributed in the hope that it will be useful,
;; but WITHOUT ANY WARRANTY; without even the implied warranty of
;; MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
;; GNU General Public License for more details.
;;
;; You should have received a copy of the GNU General Public License
;; along with this program.  If not, see <http://www.gnu.org/licenses/>.

;;; Commentary:
;;;
;;; Provide utilities for generating hooks.
;;;
;;; Code:

(require 'evil)

(evil-define-state org-table
  "org-table-state
State for working in org tables."
  :tag " <O-T> "
  :enable (normal))


(evil-define-operator evil-org-table-kill-row
  (beg end type register yank-handler)
  "Delete whole current table row."
  :motion nil
  (interactive "<R><x>")
  (let ((col (org-table-current-column)))
    (org-table-kill-row)
    (org-table-goto-column col)))

(provide 'evil-org)
;;; evil-org.el ends here
