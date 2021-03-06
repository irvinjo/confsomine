;; -*- mode: emacs-lisp -*-
;; This file is loaded by Spacemacs at startup.
;; It must be stored in your home directory.

(defun dotspacemacs/layers ()
  "Configuration Layers declaration.
You should not put any user code in this function besides modifying the variable
values."
  (setq-default
   ;; Base distribution to use. This is a layer contained in the directory
   ;; `+distribution'. For now available distributions are `spacemacs-base'
   ;; or `spacemacs'. (default 'spacemacs)
   dotspacemacs-distribution 'spacemacs
   ;; Lazy installation of layers (i.e. layers are installed only when a file
   ;; with a supported type is opened). Possible values are `all', `unused'
   ;; and `nil'. `unused' will lazy install only unused layers (i.e. layers
   ;; not listed in variable `dotspacemacs-configuration-layers'), `all' will
   ;; lazy install any layer that support lazy installation even the layers
   ;; listed in `dotspacemacs-configuration-layers'. `nil' disable the lazy
   ;; installation feature and you have to explicitly list a layer in the
   ;; variable `dotspacemacs-configuration-layers' to install it.
   ;; (default 'unused)
   dotspacemacs-enable-lazy-installation 'unused
   ;; If non-nil then Spacemacs will ask for confirmation before installing
   ;; a layer lazily. (default t)
   dotspacemacs-ask-for-lazy-installation t
   ;; If non-nil layers with lazy install support are lazy installed.
   ;; List of additional paths where to look for configuration layers.
   ;; Paths must have a trailing slash (i.e. `~/.mycontribs/')
   dotspacemacs-configuration-layer-path '()
   ;; List of configuration layers to load.
   dotspacemacs-configuration-layers
   '(
     ;; ----------------------------------------------------------------
     ;; Example of useful layers you may want to use right away.
     ;; Uncomment some layer names and press <SPC f e R> (Vim style) or
     ;; <M-m f e R> (Emacs style) to install them.
     ;; ----------------------------------------------------------------

     ;; == Completion ==
     helm
     ;; ivy
     (auto-completion :variables
                      spacemacs-default-company-backends '(company-files company-capf)
                      auto-completion-enable-sort-by-usage t
                      ;; auto-completion-enable-help-tooltip 'manual
                      auto-completion-enable-help-tooltip t
                      auto-completion-enable-snippets-in-popup t
                      auto-completion-return-key-behavior 'complete
                      auto-completion-tab-key-behavior 'cycle
                      auto-completion-complete-with-key-sequence nil
                      auto-completion-complete-with-key-sequence-delay 0.1
                      auto-completion-private-snippets-directory nil)

     ;; == Emacs ==
     semantic
     (org :variables
          org-enable-reveal-js-support t
          org-enable-github-support t)
     (ibuffer :variables ibuffer-group-buffers-by 'projects)
     (typography :variables typography-enable-typographic-editing t)
     (better-defaults :variables
                      better-defaults-move-to-end-of-code-first nil
                      better-defaults-move-to-beginning-of-code-first t)

     ;; == Source Control ==
     git
     (version-control :variables
                      version-control-diff-tool 'diff-hl
                      version-control-global-margin t)

     ;; == Checkers ==
     (pell-checking :variables
                     spell-checking-enable-auto-dictionary t
                     =enable-flyspell-auto-completion= t
                     spell-checking-enable-by-default nil)
     (syntax-checking :variables
                      syntax-checking-enable-by-default nil
                      syntax-checking-use-original-bitmaps t
                      syntax-checking-enable-tooltips nil)

     ;; == Fun ==
     emoji
     games
     selectric
     xkcd

     ;; == Tools ==
     speed-reading
     pdf-tools
     docker
     nginx
     (shell :variables
            shell-default-term-shell "/bin/bash"
            shell-default-full-span nil
            shell-enable-smart-eshell t
            shell-default-height 30
            shell-protect-eshell-prompt nil
            shell-default-position 'bottom
            shell-default-shell 'eshell)

     ;; == Theming ==
     ;: themes-megapack
     (colors :variables
             colors-enable-nyan-cat-progress-bar t
             colors-colorize-identifiers 'all)

     ;; == Frameworks, programing and markup language ==
     html
     ipython-notebook
     (latex :variables
            latex-enable-auto-fill t
            latex-enable-folding t
            latex-build-command "LaTeX")

     react
     vue-mode
     django
     ruby-on-rails

     emacs-lisp
     yaml
     php
     elixir
     common-lisp
     (scala :variables
            scala-use-java-doc-style t
            scala-auto-insert-asterisk-in-comments t
            scala-use-unicode-arrows t
            scala-auto-start-ensime t
            scala-indent:use-javadoc-style t)
     (haskell :variables
              haskell-completion-backend 'intero
              haskell-enable-hindent-style "johan-tibell"
              haskell-process-type 'stack-ghci)
     (clojure :variables clojure-enable-fancify-symbols t)
     (c-c++ :variables
            c-c++-enable-clang-support t
            c-c++-default-mode-for-headers 'c++-mode)
     (javascript :variables
                 javascript-disable-tern-port-files nil
                 tern-command '("node" "/usr/bin/tern"))
     (python :variables
             python-enable-yapf-format-on-save t
             python-fill-column 99
             python-sort-imports-on-save t
             python-test-runner '(pytest nose))

     ;; == Web services ==
     spotify
     search-engine
     (wakatime :variables
               wakatime-api-key  "940f29df-f9ed-4eb5-9aac-b0fcac84830c"
               ;; use the actual wakatime path
               wakatime-cli-path "/usr/local/bin/wakatime")

     )
   ;; List of additional packages that will be installed without being
   ;; wrapped in a layer. If you need some configuration for these
   ;; packages, then consider creating a layer. You can also put the
   ;; configuration in `dotspacemacs/user-config'.
   dotspacemacs-additional-packages '(
                                      multiple-cursors


                                      all-the-icons
                                      neotree


                                      s
                                      ein
                                      nose
                                      dash
                                      pytest
                                      request
                                      websocket
                                      skewer-mode
                                      python-mode
                                      auto-complete


                                      pony-mode


                                      auctex-latexmk
                                      company-auctex
                                      evil-matchit
                                      reftex


                                      php-mode


                                      js2-mode
                                      js3-mode
                                      js2-refactor
                                      web-beautify
                                      json-snatcher
                                      livid-mode
                                      nodejs-repl
                                      node-resolver
                                      indium


                                      yasnippet
                                      auto-yasnippet
                                      company
                                      auto-complete


                                      (elixir-mode
                                       (elixir-enable-compilation-checking . t))
                                      alchemist

                                      haskell-mode
                                      haskell-emacs

                                      nginx-mode


                                      company-emoji

                                      vue-mode

                                      ;solarized-theme
                                      ;zenburn-theme
                                      ;suscolors-theme
                                      ;peacock-theme
                                      ;gruvbox-theme
                                      ;jazz-theme
                                      ;majapahit-theme
                                      ;molokai-theme
                                      ;monokai-theme
                                      dracula-theme
                                      )
   ;; A list of packages that cannot be updated.
   dotspacemacs-frozen-packages '()
   ;; A list of packages that will not be installed and loaded.
   dotspacemacs-excluded-packages '()
   ;; Defines the behaviour of Spacemacs when installing packages.
   ;; Possible values are `used-only', `used-but-keep-unused' and `all'.
   ;; `used-only' installs only explicitly used packages and uninstall any
   ;; unused packages as well as their unused dependencies.
   ;; `used-but-keep-unused' installs only the used packages but won't uninstall
   ;; them if they become unused. `all' installs *all* packages supported by
   ;; Spacemacs and never uninstall them. (default is `used-only')
   dotspacemacs-install-packages 'used-only))

(defun dotspacemacs/init ()
  "Initialization function.
This function is called at the very startup of Spacemacs initialization
before layers configuration.
You should not put any user code in there besides modifying the variable
values."
  ;; This setq-default sexp is an exhaustive list of all the supported
  ;; spacemacs settings.
  (setq-default
   ;; If non nil ELPA repositories are contacted via HTTPS whenever it's
   ;; possible. Set it to nil if you have no way to use HTTPS in your
   ;; environment, otherwise it is strongly recommended to let it set to t.
   ;; This variable has no effect if Emacs is launched with the parameter
   ;; `--insecure' which forces the value of this variable to nil.
   ;; (default t)
   dotspacemacs-elpa-https t
   ;; Maximum allowed time in seconds to contact an ELPA repository.
   dotspacemacs-elpa-timeout 5
   ;; If non nil then spacemacs will check for updates at startup
   ;; when the current branch is not `develop'. Note that checking for
   ;; new versions works via git commands, thus it calls GitHub services
   ;; whenever you start Emacs. (default nil)
   dotspacemacs-check-for-update nil
   ;; If non-nil, a form that evaluates to a package directory. For example, to
   ;; use different package directories for different Emacs versions, set this
   ;; to `emacs-version'.
   dotspacemacs-elpa-subdirectory nil
   ;; One of `vim', `emacs' or `hybrid'.
   ;; `hybrid' is like `vim' except that `insert state' is replaced by the
   ;; `hybrid state' with `emacs' key bindings. The value can also be a list
   ;; with `:variables' keyword (similar to layers). Check the editing styles
   ;; section of the documentation for details on available variables.
   ;; (default 'vim)
   dotspacemacs-editing-style 'vim
   ;; If non nil output loading progress in `*Messages*' buffer. (default nil)
   dotspacemacs-verbose-loading nil
   ;; Specify the startup banner. Default value is `official', it displays
   ;; the official spacemacs logo. An integer value is the index of text
   ;; banner, `random' chooses a random text banner in `core/banners'
   ;; directory. A string value must be a path to an image format supported
   ;; by your Emacs build.
   ;; If the value is nil then no banner is displayed. (default 'official)
   dotspacemacs-startup-banner 'official
   ;; List of items to show in startup buffer or an association list of
   ;; the form `(list-type . list-size)`. If nil then it is disabled.
   ;; Possible values for list-type are:
   ;; `recents' `bookmarks' `projects' `agenda' `todos'."
   ;; List sizes may be nil, in which case
   ;; `spacemacs-buffer-startup-lists-length' takes effect.
   dotspacemacs-startup-lists '((recents . 5)
                                (projects . 7))
   ;; True if the home buffer should respond to resize events.
   dotspacemacs-startup-buffer-responsive t
   ;; Default major mode of the scratch buffer (default `text-mode')
   dotspacemacs-scratch-mode 'text-mode
   ;; List of themes, the first of the list is loaded when spacemacs starts.
   ;; Press <SPC> T n to cycle to the next theme in the list (works great
   ;; with 2 themes variants, one dark and one light)
   dotspacemacs-themes '(
                         ;solarized-dark
                         ;solarized-light
                         ;zenburn
                         ;suscolors
                         ;monokai
                         ;molokai
                         ;majapahit-dark
                         ;majapahit-light
                         ;jazz-dark
                         ;jazz-light
                         ;gruvbox
                         dracula
                         spacemacs-dark
                         spacemacs-light
                         )
   ;; If non nil the cursor color matches the state color in GUI Emacs.
   dotspacemacs-colorize-cursor-according-to-state t
   ;; Default font, or prioritized list of fonts. `powerline-scale' allows to
   ;; quickly tweak the mode-line size to make separators look not too crappy.
   dotspacemacs-default-font '("Source Code Pro"
                               :size 13
                               :weight normal
                               :width normal
                               :powerline-scale 1.1)
   ;; The leader key
   dotspacemacs-leader-key "SPC"
   ;; The key used for Emacs commands (M-x) (after pressing on the leader key).
   ;; (default "SPC")
   dotspacemacs-emacs-command-key "SPC"
   ;; The key used for Vim Ex commands (default ":")
   dotspacemacs-ex-command-key ":"
   ;; The leader key accessible in `emacs state' and `insert state'
   ;; (default "M-m")
   dotspacemacs-emacs-leader-key "M-m"
   ;; Major mode leader key is a shortcut key which is the equivalent of
   ;; pressing `<leader> m`. Set it to `nil` to disable it. (default ",")
   dotspacemacs-major-mode-leader-key ","
   ;; Major mode leader key accessible in `emacs state' and `insert state'.
   ;; (default "C-M-m")
   dotspacemacs-major-mode-emacs-leader-key "C-M-m"
   ;; These variables control whether separate commands are bound in the GUI to
   ;; the key pairs C-i, TAB and C-m, RET.
   ;; Setting it to a non-nil value, allows for separate commands under <C-i>
   ;; and TAB or <C-m> and RET.
   ;; In the terminal, these pairs are generally indistinguishable, so this only
   ;; works in the GUI. (default nil)
   dotspacemacs-distinguish-gui-tab nil
   ;; If non nil `Y' is remapped to `y$' in Evil states. (default nil)
   dotspacemacs-remap-Y-to-y$ nil
   ;; If non-nil, the shift mappings `<' and `>' retain visual state if used
   ;; there. (default t)
   dotspacemacs-retain-visual-state-on-shift t
   ;; If non-nil, J and K move lines up and down when in visual mode.
   ;; (default nil)
   dotspacemacs-visual-line-move-text nil
   ;; If non nil, inverse the meaning of `g' in `:substitute' Evil ex-command.
   ;; (default nil)
   dotspacemacs-ex-substitute-global nil
   ;; Name of the default layout (default "Default")
   dotspacemacs-default-layout-name "Default"
   ;; If non nil the default layout name is displayed in the mode-line.
   ;; (default nil)
   dotspacemacs-display-default-layout nil
   ;; If non nil then the last auto saved layouts are resume automatically upon
   ;; start. (default nil)
   dotspacemacs-auto-resume-layouts nil
   ;; Size (in MB) above which spacemacs will prompt to open the large file
   ;; literally to avoid performance issues. Opening a file literally means that
   ;; no major mode or minor modes are active. (default is 1)
   dotspacemacs-large-file-size 1
   ;; Location where to auto-save files. Possible values are `original' to
   ;; auto-save the file in-place, `cache' to auto-save the file to another
   ;; file stored in the cache directory and `nil' to disable auto-saving.
   ;; (default 'cache)
   dotspacemacs-auto-save-file-location 'cache
   ;; Maximum number of rollback slots to keep in the cache. (default 5)
   dotspacemacs-max-rollback-slots 5
   ;; If non nil, `helm' will try to minimize the space it uses. (default nil)
   dotspacemacs-helm-resize nil
   ;; if non nil, the helm header is hidden when there is only one source.
   ;; (default nil)
   dotspacemacs-helm-no-header nil
   ;; define the position to display `helm', options are `bottom', `top',
   ;; `left', or `right'. (default 'bottom)
   dotspacemacs-helm-position 'bottom
   ;; Controls fuzzy matching in helm. If set to `always', force fuzzy matching
   ;; in all non-asynchronous sources. If set to `source', preserve individual
   ;; source settings. Else, disable fuzzy matching in all sources.
   ;; (default 'always)
   dotspacemacs-helm-use-fuzzy 'always
   ;; If non nil the paste micro-state is enabled. When enabled pressing `p`
   ;; several times cycle between the kill ring content. (default nil)
   dotspacemacs-enable-paste-transient-state nil
   ;; Which-key delay in seconds. The which-key buffer is the popup listing
   ;; the commands bound to the current keystroke sequence. (default 0.4)
   dotspacemacs-which-key-delay 0.4
   ;; Which-key frame position. Possible values are `right', `bottom' and
   ;; `right-then-bottom'. right-then-bottom tries to display the frame to the
   ;; right; if there is insufficient space it displays it at the bottom.
   ;; (default 'bottom)
   dotspacemacs-which-key-position 'bottom
   ;; If non nil a progress bar is displayed when spacemacs is loading. This
   ;; may increase the boot time on some systems and emacs builds, set it to
   ;; nil to boost the loading time. (default t)
   dotspacemacs-loading-progress-bar t
   ;; If non nil the frame is fullscreen when Emacs starts up. (default nil)
   ;; (Emacs 24.4+ only)
   dotspacemacs-fullscreen-at-startup nil
   ;; If non nil `spacemacs/toggle-fullscreen' will not use native fullscreen.
   ;; Use to disable fullscreen animations in OSX. (default nil)
   dotspacemacs-fullscreen-use-non-native nil
   ;; If non nil the frame is maximized when Emacs starts up.
   ;; Takes effect only if `dotspacemacs-fullscreen-at-startup' is nil.
   ;; (default nil) (Emacs 24.4+ only)
   dotspacemacs-maximized-at-startup t
   ;; A value from the range (0..100), in increasing opacity, which describes
   ;; the transparency level of a frame when it's active or selected.
   ;; Transparency can be toggled through `toggle-transparency'. (default 90)
   dotspacemacs-active-transparency 90
   ;; A value from the range (0..100), in increasing opacity, which describes
   ;; the transparency level of a frame when it's inactive or deselected.
   ;; Transparency can be toggled through `toggle-transparency'. (default 90)
   dotspacemacs-inactive-transparency 90
   ;; If non nil show the titles of transient states. (default t)
   dotspacemacs-show-transient-state-title t
   ;; If non nil show the color guide hint for transient state keys. (default t)
   dotspacemacs-show-transient-state-color-guide t
   ;; If non nil unicode symbols are displayed in the mode line. (default t)
   dotspacemacs-mode-line-unicode-symbols t
   ;; If non nil smooth scrolling (native-scrolling) is enabled. Smooth
   ;; scrolling overrides the default behavior of Emacs which recenters point
   ;; when it reaches the top or bottom of the screen. (default t)
   dotspacemacs-smooth-scrolling t
   ;; Control line numbers activation.
   ;; If set to `t' or `relative' line numbers are turned on in all `prog-mode' and
   ;; `text-mode' derivatives. If set to `relative', line numbers are relative.
   ;; This variable can also be set to a property list for finer control:
   ;; '(:relative nil
   ;;   :disabled-for-modes dired-mode
   ;;                       doc-view-mode
   ;;                       markdown-mode
   ;;                       org-mode
   ;;                       pdf-view-mode
   ;;                       text-mode
   ;;   :size-limit-kb 1000)
   ;; (default nil)
   dotspacemacs-line-numbers t
   ;; Code folding method. Possible values are `evil' and `origami'.
   ;; (default 'evil)
   dotspacemacs-folding-method 'evil
   ;; If non-nil smartparens-strict-mode will be enabled in programming modes.
   ;; (default nil)
   dotspacemacs-smartparens-strict-mode nil
   ;; If non-nil pressing the closing parenthesis `)' key in insert mode passes
   ;; over any automatically added closing parenthesis, bracket, quote, etc…
   ;; This can be temporary disabled by pressing `C-q' before `)'. (default nil)
   dotspacemacs-smart-closing-parenthesis nil
   ;; Select a scope to highlight delimiters. Possible values are `any',
   ;; `current', `all' or `nil'. Default is `all' (highlight any scope and
   ;; emphasis the current one). (default 'all)
   dotspacemacs-highlight-delimiters 'all
   ;; If non nil, advise quit functions to keep server open when quitting.
   ;; (default nil)
   dotspacemacs-persistent-server nil
   ;; List of search tool executable names. Spacemacs uses the first installed
   ;; tool of the list. Supported tools are `ag', `pt', `ack' and `grep'.
   ;; (default '("ag" "pt" "ack" "grep"))
   dotspacemacs-search-tools '("ag" "pt" "ack" "grep")
   ;; The default package repository used if no explicit repository has been
   ;; specified with an installed package.
   ;; Not used for now. (default nil)
   dotspacemacs-default-package-repository nil
   ;; Delete whitespace while saving buffer. Possible values are `all'
   ;; to aggressively delete empty line and long sequences of whitespace,
   ;; `trailing' to delete only the whitespace at end of lines, `changed'to
   ;; delete only whitespace for changed lines or `nil' to disable cleanup.
   ;; (default nil)
   dotspacemacs-whitespace-cleanup nil
   ))

(defun dotspacemacs/user-init ()
  "Initialization function for user code.
It is called immediately after `dotspacemacs/init', before layer configuration
executes.
 This function is mostly useful for variables that need to be set
before packages are loaded. If you are unsure, you should try in setting them in
`dotspacemacs/user-config' first."
  ;; Git
  (setq-default git-magit-status-fullscreen t)
  (setq-default git-enable-magit-svn-plugin t)
)

(defun dotspacemacs/user-config ()
  "Configuration function for user code.
This function is called at the very end of Spacemacs initialization after
layers configuration.
This is the place where most of your configurations should be done. Unless it is
explicitly specified that a variable should be set before a package is loaded,
you should place your code here."
  ;; ==== pdf layer
  (setq-default dotspacemacs-configuration-layers '(pdf-tools))

  ;; ==== Org layer
  (with-eval-after-load 'org
    ;; User Org configuration
    (org-babel-do-load-languages
     'org-babel-load-languages
     '( (perl . t)
        (ruby . t)
        (sh . t)
        (python . t)
        (emacs-lisp . t)
        (sh, t)
        (ditaa . t)
        (js, t)
        (haskell, t)
        (lisp, t)
        (ruby, t)
        (clojure, t)
        (sql, t)
        (sqlite, t)
        (css, t)
      )
    )
    (setq org-confirm-babel-evaluate nil)
  )

  ;; ==== typografia
  (typo-global-mode 1)
  (add-hook 'text-mode-hook 'typo-mode)

  ;; ==== git
  (setq magit-repository-directories '("~/repositories/"))
  (global-git-commit-mode t)

  ;; ==== latex
  (add-hook 'doc-view-mode-hook 'auto-revert-mode)
  (company-auctex-init)
  (global-evil-matchit-mode 1)
  (add-hook 'LaTeX-mode-hook 'turn-on-reftex)   ; with AUCTeX LaTeX mode
  (add-hook 'latex-mode-hook 'turn-on-reftex)   ; with Emacs latex mode

  ;; ==== react layer
  (setq-default
   ;; js2-mode
   js2-basic-offset 2
   ;; web-mode
   css-indent-offset 2
   web-mode-markup-indent-offset 2
   web-mode-css-indent-offset 2
   web-mode-code-indent-offset 2
   web-mode-attr-indent-offset 2)
  (with-eval-after-load 'web-mode
    (add-to-list 'web-mode-indentation-params '("lineup-args" . nil))
    (add-to-list 'web-mode-indentation-params '("lineup-concats" . nil))
    (add-to-list 'web-mode-indentation-params '("lineup-calls" . nil)))

  ;; ==== javascript
  (setq js2-strict-missing-semi-warning nil)
  (setq-default js2-basic-offset 2)
  (setq-default js-indent-level 2)

  (autoload 'js2-mode "js2-mode" nil t)
  (add-to-list 'auto-mode-alist '("\\.js$" . js2-mode))

  ;; ==== nodejs
  ;; == indium
  (add-hook 'js-mode-hook #'indium-interaction-mode)
  ;; == nodejs-repl
  (add-hook 'js-mode-hook
            (lambda ()
              (define-key js-mode-map (kbd "C-x C-e") 'nodejs-repl-send-last-expression)
              (define-key js-mode-map (kbd "C-c C-j") 'nodejs-repl-send-line)
              (define-key js-mode-map (kbd "C-c C-r") 'nodejs-repl-send-region)
              (define-key js-mode-map (kbd "C-c C-l") 'nodejs-repl-load-file)
              (define-key js-mode-map (kbd "C-c C-z") 'nodejs-repl-switch-to-repl)))
  ;; == node-ac
  ;;(add-to-list 'load-path "~/.emacs.d/node-ac")
  ;;(require 'node-ac-mode)
  ;;(setq node-ac-node-modules-path "/usr/lib/node_modules")
  ;;(add-hook 'js2-mode-hook
  ;;          (lambda ()
  ;;            (local-set-key (kbd "C-.") 'node-ac-auto-complete)
  ;;          (local-set-key (kbd "C-c C-d") 'node-ac-show-document)
  ;;            (local-set-key (kbd "C-c C-j") 'node-ac-jump-to-definition)))

  ;; ==== yasnippet
  (yas-global-mode 1)
  (add-hook 'prog-mode-hook #'yas-minor-mode)

  ;; ==== search enguine
  (setq browse-url-browser-function 'browse-url-generic
        engine/browser-function 'browse-url-generic
        browse-url-generic-program "google-chrome")

  ;; ==== clojure
  (setq clojure-enable-fancify-symbols t)

  ;; ==== ipython layer
  (setq ein:use-auto-complete-superpack t)
  (setq ein:use-smartrep t)
  (add-hook 'term-mode-hook 'toggle-truncate-lines)


  ;; (add-hook 'js2-mode-hook (lambda () (setq js2-basic-offset 2)))
  ;;  (add-hook 'js-mode-hook (lambda () (setq js-indent-level 2)))

  ;;  (defun my-web-mode-hook ()
  ;;    "Hooks for Web mode."
  ;;    (setq web-mode-markup-indent-offset 2)
  ;;    (setq web-mode-css-indent-offset 2)
  ;;    (setq web-mode-code-indent-offset 2)
  ;;    )
  ;;  (add-hook 'web-mode-hook  'my-web-mode-hook)
  ;;  (add-to-list 'auto-mode-alist '("\\.api\\'" . web-mode))
  ;;  (add-to-list 'auto-mode-alist '("/some/react/path/.*\\.js[x]?\\'" . web-mode))

  ;;  (setq web-mode-content-types-alist
  ;;        '(("json" . "/some/path/.*\\.api\\'")
  ;;          ("xml"  . "/other/path/.*\\.api\\'")
  ;;          ("jsx"  . "/some/react/path/.*\\.js[x]?\\'")))


  ;; ==== PHP mode
  (add-hook 'php-mode-hook 'my-php-mode-hook)
  (defun my-php-mode-hook ()
    "My PHP mode configuration."
    (setq indent-tabs-mode nil
          tab-width 2
          c-basic-offset 2))


  ;; ==== All the icons 
  (global-set-key [f8] 'neotree-toggle)
  (setq neo-theme (if (display-graphic-p) 'icons 'arrow))


  ;; ==== Multiple cursos
  (global-set-key (kbd "C-c m c") 'mc/edit-lines)
  (global-set-key (kbd "C->") 'mc/mark-next-like-this)
  (global-set-key (kbd "C-<") 'mc/mark-previous-like-this)
  (global-set-key (kbd "C-c C-<") 'mc/mark-all-like-this)

  ;; ==== Auto Complete
  (ac-config-default)
  )

;; Do not write anything past this comment. This is where Emacs will
;; auto-generate custom variable definitions.
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ansi-color-names-vector
   ["#0a0814" "#f2241f" "#67b11d" "#b1951d" "#4f97d7" "#a31db1" "#28def0" "#b2b2b2"])
 '(package-selected-packages
   (quote
    (js3-mode add-node-modules-path lsp-vue vue-mode flymake-haskell-multi haskell-emacs ac-haskell-process org-plus-contrib indium node-resolver package-build nodejs-repl quelpa elixir-yasnippets auctex-latexmk wgrep typo spray smex slime-company slime rvm ruby-tools ruby-test-mode rubocop rspec-mode robe rbenv projectile-rails rake pdf-tools ob-elixir noflet minitest ivy-hydra flycheck-mix flycheck-credo feature-mode ensime sbt-mode scala-mode engine-mode dockerfile-mode docker tablist docker-tramp disaster counsel-projectile counsel swiper ivy company-c-headers common-lisp-snippets cmake-mode clojure-snippets clj-refactor inflections edn paredit peg clang-format cider-eval-sexp-fu cider seq queue clojure-mode chruby bundler inf-ruby alchemist elixir-mode phpunit phpcbf php-extras php-auto-yasnippets drupal-mode php-mode powerline spinner hydra parent-mode projectile pkg-info epl flx smartparens iedit anzu evil goto-chg undo-tree highlight bind-map bind-key packed f dash s helm avy helm-core async popup jsx-mode org-babel-eval-in-repl smartrep xpm jedi org-mime helm-spotify-plus let-alist python-mode ein-mumamo ein request-deferred websocket deferred dynamic-fonts memoize font-lock+ all-the-icons gruvbox-dark-theme darktooth-dark-theme pastels-on-dark-theme molokai-dark-theme zenburn-theme zen-and-art-theme yapfify yaml-mode xkcd web-mode web-beautify wakatime-mode underwater-theme ujelly-theme typit mmt twilight-theme twilight-bright-theme twilight-anti-bright-theme toxi-theme tao-theme tangotango-theme tango-plus-theme tango-2-theme tagedit sunny-day-theme sudoku sublime-themes subatomic256-theme subatomic-theme spotify spacegray-theme soothe-theme solarized-theme soft-stone-theme soft-morning-theme soft-charcoal-theme smyx-theme slim-mode seti-theme selectric-mode scss-mode sass-mode reverse-theme rainbow-mode rainbow-identifiers railscasts-theme pyvenv pytest pyenv-mode py-isort purple-haze-theme pug-mode professional-theme pony-mode planet-theme pip-requirements phoenix-dark-pink-theme phoenix-dark-mono-theme pacmacs organic-green-theme omtose-phellack-theme oldlace-theme occidental-theme obsidian-theme noctilux-theme nginx-mode naquadah-theme mustang-theme monokai-theme monochrome-theme molokai-theme moe-theme minimal-theme material-theme majapahit-theme madhat2r-theme lush-theme livid-mode skewer-mode simple-httpd live-py-mode light-soap-theme less-css-mode json-mode json-snatcher json-reformat js2-refactor multiple-cursors js2-mode js-doc jbeans-theme jazz-theme ir-black-theme intero inkpot-theme hy-mode hlint-refactor hindent heroku-theme hemisu-theme helm-spotify multi helm-pydoc helm-hoogle helm-css-scss hc-zenburn-theme haskell-snippets haml-mode gruvbox-theme gruber-darker-theme grandshell-theme gotham-theme gandalf-theme flycheck-haskell flatui-theme flatland-theme farmhouse-theme espresso-theme emoji-cheat-sheet-plus emmet-mode dracula-theme django-theme darktooth-theme autothemer darkokai-theme darkmine-theme darkburn-theme dakrone-theme cython-mode cyberpunk-theme company-web web-completion-data company-tern dash-functional tern company-ghci company-ghc ghc haskell-mode company-emoji company-cabal company-auctex company-anaconda color-theme-sanityinc-tomorrow color-theme-sanityinc-solarized color-identifiers-mode coffee-mode cmm-mode clues-theme cherry-blossom-theme busybee-theme bubbleberry-theme birds-of-paradise-plus-theme badwolf-theme auctex apropospriate-theme anti-zenburn-theme anaconda-mode pythonic ample-zen-theme ample-theme alect-themes afternoon-theme 2048-game xterm-color unfill stickyfunc-enhance srefactor smeargle shell-pop ox-reveal ox-gfm orgit org-projectile org-category-capture org-present org-pomodoro alert log4e gntp org-download mwim multi-term mmm-mode markdown-toc markdown-mode magit-gitflow ibuffer-projectile htmlize helm-gitignore helm-company helm-c-yasnippet gnuplot gitignore-mode gitconfig-mode gitattributes-mode git-timemachine git-messenger git-link git-gutter-fringe+ git-gutter-fringe fringe-helper git-gutter+ git-gutter gh-md fuzzy flyspell-correct-helm flyspell-correct flycheck-pos-tip flycheck evil-magit magit magit-popup git-commit ghub with-editor eshell-z eshell-prompt-extras esh-help diff-hl company-statistics company-quickhelp pos-tip company auto-yasnippet yasnippet auto-dictionary ac-ispell auto-complete ws-butler winum which-key volatile-highlights vi-tilde-fringe uuidgen use-package toc-org spaceline restart-emacs request rainbow-delimiters popwin persp-mode pcre2el paradox org-bullets open-junk-file neotree move-text macrostep lorem-ipsum linum-relative link-hint info+ indent-guide hungry-delete hl-todo highlight-parentheses highlight-numbers highlight-indentation hide-comnt help-fns+ helm-themes helm-swoop helm-projectile helm-mode-manager helm-make helm-flx helm-descbinds helm-ag google-translate golden-ratio flx-ido fill-column-indicator fancy-battery eyebrowse expand-region exec-path-from-shell evil-visualstar evil-visual-mark-mode evil-unimpaired evil-tutor evil-surround evil-search-highlight-persist evil-numbers evil-nerd-commenter evil-mc evil-matchit evil-lisp-state evil-indent-plus evil-iedit-state evil-exchange evil-escape evil-ediff evil-args evil-anzu eval-sexp-fu elisp-slime-nav dumb-jump diminish define-word column-enforce-mode clean-aindent-mode auto-highlight-symbol auto-compile aggressive-indent adaptive-wrap ace-window ace-link ace-jump-helm-line))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
