;; Set default frame size
(add-to-list 'default-frame-alist '(height . 34))
(add-to-list 'default-frame-alist '(width . 90))

;; Disable tooltips
(tooltip-mode 0)

;; Disable cursor blinking
(blink-cursor-mode 0)

;; Configure indentation
(setq c-default-style "bsd"
      c-basic-offset 4)

(add-hook 'haskell-mode-hook 'turn-on-haskell-indent)

;; Disable tab characters
(setq-default indent-tabs-mode nil)

;; Disable backup
(setq backup-inhibited t)

;; Disable auto-save
(setq auto-save-default nil)

;; Show column number
(column-number-mode t)

;; Highlight matching pairs of parentheses
(show-paren-mode t)

;; Prevent the startup message
(setq inhibit-startup-message t)

;; Delete trailing whitespace
(add-hook 'before-save-hook 'delete-trailing-whitespace)

;; Hide menu bar, toolbar, and scrollbar
(menu-bar-mode -1)
(tool-bar-mode -1)
(scroll-bar-mode -1)

;; Set color theme
(load-theme 'wombat)

;; Set default font
(set-default-font "Ubuntu Mono 13")

;; Configure the package manager
(require 'package)

(add-to-list 'package-archives
             '("melpa" . "http://melpa.org/packages/") t)

(package-initialize)

;; Enable projectile
(require 'projectile)

(projectile-global-mode)

;; Interactively do things
(require 'ido-vertical-mode)

(ido-mode t)
(ido-vertical-mode t)

(setq ido-enable-flex-matching t
      ido-auto-merge-work-directories-length -1)

(setq ido-use-faces t)

(set-face-attribute 'ido-subdir nil
                    :foreground "#8ac6f2")
(set-face-attribute 'ido-first-match nil
                    :foreground "#f6f3e8")
(set-face-attribute 'ido-only-match nil
                    :foreground "#f6f3e8"
                    :weight 'bold)
