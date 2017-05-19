;;; sourcerer-theme.el --- A version of sourcerer by xero

;; Author: Bryan Gilbert <gilbertw1@gmail.com>
;; Keywords: themes
;; X-URL: http://github.com/gilbertw1/sourcerer-emacs
;; URL:  http://github.com/gilbertw1/sourcerer-emacs
;; Version: {{VERSION}}

;; This program is free software; you can redistribute it and/or modify
;; it under the terms of the GNU General Public License as published by
;; the Free Software Foundation, either version 3 of the License, or
;; (at your option) any later version.

;; This program is distributed in the hope that it will be useful,
;; but WITHOUT ANY WARRANTY; without even the implied warranty of
;; MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
;; GNU General Public License for more details.

;; You should have received a copy of the GNU General Public License
;; along with this program.  If not, see <http://www.gnu.org/licenses/>.

;;; Commentary:

;;
;;; Credit:

;; Colour selection by xero:
;; https://github.com/xero/sourcerer

;;; Code:

(deftheme sourcerer)

(let ((class '((class color) (min-colors 89)))
      (background   "#222222")
      (current-line "#2b2b2b")
      (highlight    "#2b2b2b")
      (selection    "#6688aa")
      (contrast-bg  "#27323D")
      (foreground   "#c2c2b0")
      (comment      "#5c5d56")
      (red          "#aa4450")
      (orange       "#cc8800")
      (yellow       "#d0770f")
      (green        "#858253")
      (brightgreen  "#537D01")
      (aqua         "#5b8583")
      (blue         "#86aed5")
      (offwhite     "#fdfdd5")
      (purple       "#8686ae"))

  (custom-theme-set-faces
   'sourcerer
   `(default ((,class (:foreground ,foreground :background ,background))))
   `(button ((,class (:foreground ,selection :box t))))
   `(shadow ((,class (:foreground ,comment))))
   `(highlight ((,class (:background ,highlight))))
   `(link ((,class (:underline t))))
   `(link-visited ((,class (:inherit link :foreground ,aqua))))
   `(cursor ((,class (:background "#626262"))))
   `(region ((,class (:background ,contrast-bg))))
   `(secondary-selection ((,class (:background ,highlight))))
   `(linum ((,class (:background "#3A3A3A" :foreground "#878787"))))
   `(fringe ((,class (:background "#3A3A3A" :foreground "#878787"))))
   `(border ((,class (:background ,contrast-bg :foreground ,highlight))))
   `(vertical-border ((,class (:foreground ,contrast-bg))))
   `(tooltip ((,class (:foreground ,foreground :background ,contrast-bg))))
   `(trailing-whitespace ((,class (:background ,orange :foreground ,yellow))))

   ;; font-lock
   `(escape-glyph ((,class (:foreground ,offwhite))))
   `(font-lock-builtin-face ((,class (:foreground ,blue))))
   `(font-lock-comment-delimiter-face ((,class (:foreground ,comment :slant italic))))
   `(font-lock-comment-face ((,class (:foreground ,comment :slant italic))))
   `(font-lock-doc-face ((,class (:foreground ,purple))))
   `(font-lock-doc-string-face ((,class (:foreground ,yellow))))
   `(font-lock-function-name-face ((,class (:foreground ,offwhite))))
   `(font-lock-keyword-face ((,class (:foreground ,blue))))
   `(font-lock-negation-char-face ((,class (:foreground "#afafaf"))))
   `(font-lock-reference-face ((,class (:foreground ,yellow))))
   `(font-lock-constant-face ((,class (:foreground ,aqua))))
   `(font-lock-preprocessor-face ((,class (:foreground ,brightgreen))))
   `(font-lock-regexp-grouping-backslash ((,class (:foreground ,yellow))))
   `(font-lock-regexp-grouping-construct ((,class (:foreground ,purple))))
   `(font-lock-string-face ((,class (:foreground ,green))))
   `(font-lock-type-face ((,class (:foreground ,purple))))
   `(font-lock-variable-name-face ((,class (:foreground ,offwhite))))
   `(font-lock-warning-face ((,class (:weight bold :foreground ,orange))))
   `(success ((,class (:foreground ,brightgreen))))
   `(error ((,class (:foreground ,red))))
   `(warning ((,class (:foreground ,orange))))

   ;; search
   `(match ((,class (:foreground ,blue :background ,background :inverse-video t))))
   `(isearch ((,class (:foreground ,yellow :background ,background :inverse-video t))))
   `(isearch-fail ((,class (:background ,background :inherit font-lock-warning-face :inverse-video t))))
   `(lazy-highlight ((,class (:foreground ,aqua :background ,background :inverse-video t))))

   ;; mode and header lines
   `(mode-line ((,class (:background ,contrast-bg))))
   `(mode-line-buffer-id ((,class (:foreground ,purple :weight bold))))
   `(mode-line-inactive ((,class (:inherit mode-line :foreground ,comment :background ,highlight))))
   `(mode-line-emphasis ((,class (:foreground ,foreground :slant italic))))
   `(mode-line-highlight ((,class (:foreground ,purple :weight bold))))
   `(minibuffer-prompt ((,class (:foreground ,blue))))
   `(header-line ((,class (:inherit mode-line-inactive :foreground ,aqua))))

   ;; Customize
   `(custom-variable-tag ((,class (:foreground ,blue))))
   `(custom-group-tag ((,class (:foreground ,blue))))
   `(custom-state ((,class (:foreground ,green))))

   ;; ansi-term
   `(term ((,class (:inherit default))))
   `(term-color-black   ((,class (:foreground ,foreground :background ,foreground))))
   `(term-color-red     ((,class (:foreground ,red :background ,red))))
   `(term-color-green   ((,class (:foreground ,green :background ,green))))
   `(term-color-yellow  ((,class (:foreground ,yellow :background ,yellow))))
   `(term-color-blue    ((,class (:foreground ,blue :background ,blue))))
   `(term-color-magenta ((,class (:foreground ,purple :background ,purple))))
   `(term-color-cyan    ((,class (:foreground ,aqua :background ,aqua))))
   `(term-color-white   ((,class (:foreground ,background :background ,background))))

   ;; Compilation (most faces politely inherit from 'success, 'error, 'warning etc.)))
   `(compilation-column-number ((,class (:foreground ,yellow))))
   `(compilation-line-number ((,class (:foreground ,yellow))))
   `(compilation-message-face ((,class (:foreground ,blue))))
   `(compilation-mode-line-exit ((,class (:foreground ,green))))
   `(compilation-mode-line-fail ((,class (:foreground ,red))))
   `(compilation-mode-line-run ((,class (:foreground ,blue))))

   ;; diff
   `(diff-added ((,class (:foreground ,green))))
   `(diff-changed ((,class (:foreground ,purple))))
   `(diff-removed ((,class (:foreground ,orange))))
   `(diff-header ((,class (:foreground ,aqua))))
   `(diff-file-header ((,class (:foreground ,blue))))
   `(diff-hunk-header ((,class (:foreground ,purple))))
   `(diff-refine-added ((,class (:inherit diff-added :inverse-video t))))
   `(diff-refine-removed ((,class (:inherit diff-removed :inverse-video t))))

   ;; EDiff
   `(ediff-even-diff-A ((,class (:inverse-video t))))
   `(ediff-even-diff-B ((,class (:inverse-video t))))
   `(ediff-odd-diff-A  ((,class (:foreground ,comment :inverse-video t))))
   `(ediff-odd-diff-B  ((,class (:foreground ,comment :inverse-video t))))

   ;; ElDoc
   `(eldoc-highlight-function-argument ((,class (:foreground ,green :weight bold))))

   ;; ERC
   `(erc-direct-msg-face ((,class (:foreground ,orange))))
   `(erc-error-face ((,class (:foreground ,red))))
   `(erc-header-face ((,class (:foreground ,foreground :background ,highlight))))
   `(erc-input-face ((,class (:foreground ,green))))
   `(erc-keyword-face ((,class (:foreground ,yellow))))
   `(erc-current-nick-face ((,class (:foreground ,green))))
   `(erc-my-nick-face ((,class (:foreground ,green))))
   `(erc-nick-default-face ((,class (:foreground ,purple))))
   `(erc-nick-msg-face ((,class (:foreground ,yellow))))
   `(erc-notice-face ((,class (:foreground ,comment))))
   `(erc-pal-face ((,class (:foreground ,orange))))
   `(erc-prompt-face ((,class (:foreground ,blue))))
   `(erc-timestamp-face ((,class (:foreground ,aqua))))

   ;; Flymake
   `(flymake-warnline ((,class (:underline (:style wave :color ,orange) :background ,background))))
   `(flymake-errline ((,class (:underline (:style wave :color ,red) :background ,background))))

   ;; Flyspell
   `(flyspell-incorrect ((,class (:underline (:style wave :color ,red)))))

   ;; Gnus
   `(gnus-button ((,class (:inherit link))))
   `(gnus-emphasis-highlight-words ((,class (:foreground ,yellow :background ,highlight))))
   `(gnus-header-content ((,class (:inherit message-header-other))))
   `(gnus-header-from ((,class (:inherit message-header-other-face :weight bold :foreground ,orange))))
   `(gnus-header-name ((,class (:inherit message-header-name))))
   `(gnus-header-newsgroups ((,class (:foreground ,yellow :slant italic))))
   `(gnus-header-subject ((,class (:inherit message-header-subject))))
   `(gnus-x-face ((,class (:foreground ,background :background ,foreground))))
   `(mm-uu-extract ((,class (:foreground ,green :background ,highlight))))
   `(gnus-signature ((,class (:inherit font-lock-comment-face))))
   `(gnus-cite-1 ((,class (:foreground ,blue))))
   `(gnus-cite-2 ((,class (:foreground ,purple))))
   `(gnus-cite-3 ((,class (:foreground ,aqua))))
   `(gnus-cite-4 ((,class (:foreground ,offwhite))))
   `(gnus-cite-5 ((,class (:foreground ,orange))))
   `(gnus-cite-6 ((,class (:foreground ,blue))))
   `(gnus-cite-7 ((,class (:foreground ,purple))))
   `(gnus-cite-8 ((,class (:foreground ,aqua))))
   `(gnus-cite-9 ((,class (:foreground ,orange))))
   `(gnus-cite-10 ((,class (:foreground ,yellow))))
   `(gnus-cite-11 ((,class (:foreground ,red))))
   `(gnus-group-mail-1 ((,class (:foreground ,blue))))
   `(gnus-group-mail-2 ((,class (:foreground ,purple))))
   `(gnus-group-mail-3 ((,class (:foreground ,aqua))))
   `(gnus-group-mail-4 ((,class (:foreground ,offwhite))))
   `(gnus-group-mail-5 ((,class (:foreground ,orange))))
   `(gnus-group-mail-6 ((,class (:foreground ,blue))))
   `(gnus-group-mail-1-empty ((,class (:foreground ,comment))))
   `(gnus-group-mail-2-empty ((,class (:foreground ,comment))))
   `(gnus-group-mail-3-empty ((,class (:foreground ,comment))))
   `(gnus-group-mail-4-empty ((,class (:foreground ,comment))))
   `(gnus-group-mail-5-empty ((,class (:foreground ,comment))))
   `(gnus-group-mail-6-empty ((,class (:foreground ,comment))))
   `(gnus-group-mail-low ((,class (:foreground ,comment))))
   `(gnus-group-mail-low-empty ((,class (:foreground ,comment))))
   `(gnus-group-news-1 ((,class (:foreground ,orange))))
   `(gnus-group-news-2 ((,class (:foreground ,blue))))
   `(gnus-group-news-3 ((,class (:foreground ,purple))))
   `(gnus-group-news-4 ((,class (:foreground ,aqua))))
   `(gnus-group-news-5 ((,class (:foreground ,blue))))
   `(gnus-group-news-6 ((,class (:foreground ,purple))))
   `(gnus-group-news-1-empty ((,class (:foreground ,comment))))
   `(gnus-group-news-2-empty ((,class (:foreground ,comment))))
   `(gnus-group-news-3-empty ((,class (:foreground ,comment))))
   `(gnus-group-news-4-empty ((,class (:foreground ,comment))))
   `(gnus-group-news-5-empty ((,class (:foreground ,comment))))
   `(gnus-group-news-6-empty ((,class (:foreground ,comment))))
   `(gnus-summary-cancelled ((,class (:foreground ,red))))
   `(gnus-summary-high-ancient ((,class (:foreground ,green))))
   `(gnus-summary-high-read ((,class (:foreground ,green))))
   `(gnus-summary-high-unread ((,class (:foreground ,yellow))))
   `(gnus-summary-high-ticked ((,class (:foreground ,orange))))
   `(gnus-summary-low-ancient ((,class (:foreground ,comment))))
   `(gnus-summary-normal-unread ((,class (:foreground ,blue))))
   `(gnus-summary-normal-read ((,class (:foreground ,foreground))))
   `(gnus-summary-normal-ancient ((,class (:foreground ,aqua))))
   `(gnus-summary-normal-ticked ((,class (:foreground ,orange))))
   `(gnus-summary-low-unread ((,class (:foreground ,comment))))
   `(gnus-summary-low-read ((,class (:foreground ,comment))))

   ;; Grep
   `(grep-context-face ((,class (:foreground ,comment))))
   `(grep-error-face ((,class (:foreground ,red :weight bold :underline t))))
   `(grep-hit-face ((,class (:foreground ,blue))))
   `(grep-match-face ((,class (:inherit match))))

   ;; IDO
   `(ido-subdir ((,class (:foreground ,purple))))
   `(ido-first-match ((,class (:foreground ,orange))))
   `(ido-only-match ((,class (:foreground ,green))))
   `(ido-indicator ((,class (:foreground ,red :background ,background))))
   `(ido-virtual ((,class (:foreground ,comment))))

   ;; info
   `(Info-quoted ((,class (:inherit font-lock-constant-face))))
   `(info-menu-header ((,class (:weight bold :height 1.4 :foreground ,offwhite))))
   `(info-menu-star ((,class (:foreground ,red))))
   `(info-node ((,class (:inherit italic :weight bold :foreground ,offwhite))))
   `(info-title-1 ((,class (:weight bold :height 1.6))))
   `(info-title-2 ((,class (:weight bold :height 1.4))))
   `(info-title-3 ((,class (:weight bold :height 1.2))))
   `(info-title-4 ((,class (:weight bold))))

   ;; Message-mode
   `(message-header-other ((,class (:weight normal))))
   `(message-header-subject ((,class (:inherit message-header-other :weight bold :foreground ,yellow))))
   `(message-header-to ((,class (:inherit message-header-other :weight bold :foreground ,orange))))
   `(message-header-cc ((,class (:inherit message-header-to))))
   `(message-header-name ((,class (:foreground ,blue))))
   `(message-header-newsgroups ((,class (:foreground ,aqua))))
   `(message-separator ((,class (:foreground ,purple))))

   ;; nxml
   `(nxml-name-face ((,class (:foreground unspecified :inherit font-lock-constant-face))))
   `(nxml-attribute-local-name-face ((,class (:foreground unspecified :inherit font-lock-variable-name-face))))
   `(nxml-ref-face ((,class (:foreground unspecified :inherit font-lock-preprocessor-face))))
   `(nxml-delimiter-face ((,class (:foreground unspecified :inherit font-lock-keyword-face))))
   `(nxml-delimited-data-face ((,class (:foreground unspecified :inherit font-lock-string-face))))
   `(rng-error-face ((,class (:underline ,red))))

   ;; org-mode
   `(org-agenda-structure ((,class (:foreground ,purple))))
   `(org-agenda-date ((,class (:foreground ,blue))))
   `(org-agenda-done ((,class (:foreground ,green))))
   `(org-agenda-dimmed-todo-face ((,class (:foreground ,comment))))
   `(org-block ((,class (:foreground ,orange))))
   `(org-code ((,class (:foreground ,yellow))))
   `(org-column ((,class (:background ,contrast-bg))))
   `(org-column-title ((,class (:inherit org-column :weight bold :underline t))))
   `(org-date ((,class (:foreground ,blue :underline t))))
   `(org-document-info ((,class (:foreground ,aqua))))
   `(org-document-info-keyword ((,class (:foreground ,green))))
   `(org-document-title ((,class (:weight bold :foreground ,orange :height 1.44))))
   `(org-done ((,class (:foreground ,green))))
   `(org-ellipsis ((,class (:foreground ,comment))))
   `(org-footnote ((,class (:foreground ,aqua))))
   `(org-formula ((,class (:foreground ,red))))
   `(org-hide ((,class (:foreground ,background :background ,background))))
   `(org-link ((,class (:foreground ,blue :underline t))))
   `(org-scheduled ((,class (:foreground ,green))))
   `(org-scheduled-previously ((,class (:foreground ,aqua))))
   `(org-scheduled-today ((,class (:foreground ,green))))
   `(org-special-keyword ((,class (:foreground ,orange))))
   `(org-table ((,class (:foreground ,purple))))
   `(org-todo ((,class (:foreground ,red))))
   `(org-upcoming-deadline ((,class (:foreground ,orange))))
   `(org-warning ((,class (:weight bold :foreground ,red))))

   ;; Outline
   `(outline-1 ((,class (:foreground ,blue))))
   `(outline-2 ((,class (:foreground ,purple))))
   `(outline-3 ((,class (:foreground ,aqua))))
   `(outline-4 ((,class (:foreground ,offwhite))))
   `(outline-5 ((,class (:foreground ,orange))))
   `(outline-6 ((,class (:foreground ,blue))))
   `(outline-7 ((,class (:foreground ,purple))))
   `(outline-8 ((,class (:foreground ,aqua))))
   `(outline-9 ((,class (:foreground ,yellow))))

   ;; Parenthesis matching (built-in)))
   `(show-paren-match ((,class (:background ,purple :foreground ,background))))
   `(show-paren-mismatch ((,class (:background ,red :foreground ,background))))

   ;; Python-specific overrides
   `(py-builtins-face ((,class (:foreground ,orange))))

   ;; rcirc
   `(rcirc-bright-nick ((,class (:foreground ,offwhite))))
   `(rcirc-my-nick ((,class (:foreground ,green))))
   `(rcirc-nick-in-message ((,class (:foreground ,yellow))))
   `(rcirc-other-nick ((,class (:foreground ,purple))))
   `(rcirc-prompt ((,class (:foreground ,blue))))
   `(rcirc-server ((,class (:foreground ,green))))
   `(rcirc-timestamp ((,class (:foreground ,aqua))))

   ;; re-builder
   `(reb-match-0 ((,class (:foreground ,background :background ,aqua))))
   `(reb-match-1 ((,class (:foreground ,background :background ,purple))))
   `(reb-match-2 ((,class (:foreground ,background :background ,green))))
   `(reb-match-3 ((,class (:foreground ,background :background ,orange))))

   ;; ruler
   `(ruler-mode-column-number ((,class (:foreground ,foreground))))
   `(ruler-mode-comment-column ((,class (:foreground ,comment))))
   `(ruler-mode-current-column ((,class (:foreground ,yellow :weight bold))))
   `(ruler-mode-default ((,class (:background ,contrast-bg))))
   `(ruler-mode-fill-column ((,class (:foreground ,red))))
   `(ruler-mode-fringes ((,class (:foreground ,green))))
   `(ruler-mode-goal-column ((,class (:foreground ,red))))
   `(ruler-mode-margins ((,class (:foreground ,offwhite))))
   `(ruler-mode-pad ((,class (:foreground ,aqua))))
   `(ruler-mode-tab-stop ((,class (:foreground ,blue))))

   ;; sh-script
   `(sh-heredoc ((,class (:inherit font-lock-string-face))))
   `(sh-quoted-exec ((,class (:inherit font-lock-preprocessor-face))))

   ;; which-function
   `(which-func ((,class (:foreground ,blue))))

   ;; Whitespace mode
   `(whitespace-empty ((,class (:foreground ,orange :background ,yellow))))
   `(whitespace-hspace ((,class (:background ,contrast-bg))))
   `(whitespace-indentation ((,class (:background ,contrast-bg))))
   `(whitespace-line ((,class (:background ,contrast-bg))))
   `(whitespace-newline ((,class (:background ,contrast-bg))))
   `(whitespace-space ((,class (:background ,contrast-bg))))
   `(whitespace-space-after-tab ((,class (:background ,contrast-bg))))
   `(whitespace-space-before-tab ((,class (:background ,contrast-bg))))
   `(whitespace-tab ((,class (:background ,contrast-bg))))
   `(whitespace-trailing ((,class (:background ,contrast-bg))))

   ;; Third-party packages

   ;; ace-window
   `(aw-background-face ((,class (:foreground ,contrast-bg))))
   `(aw-leading-char-face ((,class (:foreground ,brightgreen :background ,contrast-bg))))

   ;; Anzu
   `(anzu-match-1 ((,class (:foreground ,green :background ,background))))
   `(anzu-match-2 ((,class (:foreground ,yellow :background ,background))))
   `(anzu-match-3 ((,class (:foreground ,brightgreen :background ,background))))
   `(anzu-mode-line ((,class (:foreground ,orange))))
   `(anzu-mode-line-no-match ((,class (:foreground ,red))))
   `(anzu-replace-highlight ((,class (:inherit isearch-lazy-highlight-face))))
   `(anzu-replace-to ((,class (:inherit isearch))))

   ;; avy
   `(avy-background-face ((,class (:foreground ,contrast-bg))))
   `(avy-lead-face ((,class (:foreground ,offwhite :background ,red))))
   `(avy-lead-face-0 ((,class (:foreground ,offwhite :background ,purple))))
   `(avy-lead-face-1 ((,class (:foreground ,offwhite :background ,aqua))))
   `(avy-lead-face-2 ((,class (:foreground ,offwhite :background ,blue))))

   ;; bookmark+
   `(bmkp-*-mark ((,class (:foreground ,background :background ,yellow))))
   `(bmkp->-mark ((,class (:foreground ,yellow))))
   `(bmkp-D-mark ((,class (:foreground ,orange :background ,comment))))
   `(bmkp-X-mark ((,class (:foreground ,red))))
   `(bmkp-a-mark ((,class (:background ,red))))
   `(bmkp-bad-bookmark ((,class (:foreground ,background :background ,yellow))))
   `(bmkp-bookmark-file ((,class (:foreground ,purple :background ,contrast-bg))))
   `(bmkp-bookmark-list ((,class (:foreground ,offwhite :background ,contrast-bg))))
   `(bmkp-desktop ((,class (:foreground ,brightgreen :background ,contrast-bg))))
   `(bmkp-file-handler ((,class (:background ,red))))
   `(bmkp-function ((,class (:foreground ,green))))
   `(bmkp-gnus ((,class (:foreground ,orange))))
   `(bmkp-heading ((,class (:foreground ,green))))
   `(bmkp-info ((,class (:foreground ,offwhite))))
   `(bmkp-light-autonamed ((,class (:foreground ,contrast-bg :background ,aqua))))
   `(bmkp-light-autonamed-region ((,class (:foreground ,contrast-bg :background ,red))))
   `(bmkp-light-fringe-autonamed ((,class (:foreground ,contrast-bg :background ,purple))))
   `(bmkp-light-fringe-non-autonamed ((,class (:foreground ,contrast-bg :background ,green))))
   `(bmkp-light-mark ((,class (:foreground ,offwhite :background ,aqua))))
   `(bmkp-light-non-autonamed ((,class (:foreground ,offwhite :background ,purple))))
   `(bmkp-light-non-autonamed-region ((,class (:foreground ,offwhite :background ,red))))
   `(bmkp-local-directory ((,class (:foreground ,offwhite :background ,purple))))
   `(bmkp-local-file-with-region ((,class (:foreground ,yellow))))
   `(bmkp-local-file-without-region ((,class (:foreground ,offwhite))))
   `(bmkp-man ((,class (:foreground ,purple))))
   `(bmkp-no-jump ((,class (:foreground ,comment))))
   `(bmkp-no-local ((,class (:foreground ,yellow))))
   `(bmkp-non-file ((,class (:foreground ,green))))
   `(bmkp-remote-file ((,class (:foreground ,brightgreen))))
   `(bmkp-sequence ((,class (:foreground ,blue))))
   `(bmkp-su-or-sudo ((,class (:foreground ,red))))
   `(bmkp-t-mark ((,class (:foreground ,purple))))
   `(bmkp-url ((,class (:inherit link))))
   `(bmkp-variable-list ((,class (:foreground ,green))))

   ;; Clojure errors
   `(clojure-test-failure-face ((,class (:underline (:style wave :color ,orange) :background ,background))))
   `(clojure-test-error-face ((,class (:underline (:style wave :color ,red) :background ,background))))
   `(clojure-test-success-face ((,class (:underline ,green))))

   ;; For Brian Carper's extended clojure syntax table
   `(clojure-keyword ((,class (:foreground ,yellow))))
   `(clojure-parens ((,class (:foreground ,foreground))))
   `(clojure-braces ((,class (:foreground ,green))))
   `(clojure-brackets ((,class (:foreground ,yellow))))
   `(clojure-double-quote ((,class (:foreground ,aqua))))
   `(clojure-special ((,class (:foreground ,blue))))
   `(clojure-java-call ((,class (:foreground ,purple))))

   ;; coffee-mode
   `(coffee-mode-class-name ((,class (:foreground ,orange :weight bold))))
   `(coffee-mode-function-param ((,class (:foreground ,purple))))

   ;; company
   `(company-preview ((,class (:foreground ,comment :background ,contrast-bg))))
   `(company-preview-common ((,class (:inherit company-preview :foreground ,red))))
   `(company-preview-search ((,class (:inherit company-preview :foreground ,blue))))
   `(company-tooltip ((,class (:background ,contrast-bg))))
   `(company-tooltip-selection ((,class (:background ,highlight))))
   `(company-tooltip-common ((,class (:inherit company-tooltip :foreground ,red))))
   `(company-tooltip-common-selection ((,class (:inherit company-tooltip-selection :foreground ,red))))
   `(company-tooltip-search ((,class (:inherit company-tooltip :foreground ,blue))))
   `(company-tooltip-annotation ((,class (:inherit company-tooltip :foreground ,green))))
   `(company-scrollbar-bg ((,class (:inherit 'company-tooltip :background ,highlight))))
   `(company-scrollbar-fg ((,class (:background ,contrast-bg))))
   `(company-echo-common ((,class (:inherit company-echo :foreground ,red))))

   ;; csv-mode
   `(csv-separator-face ((,class (:foreground ,orange))))

   ;; debbugs
   `(debbugs-gnu-done ((,class (:foreground ,aqua))))
   `(debbugs-gnu-handled ((,class (:foreground ,green))))
   `(debbugs-gnu-new ((,class (:foreground ,red))))
   `(debbugs-gnu-pending ((,class (:foreground ,purple))))
   `(debbugs-gnu-stale ((,class (:foreground ,orange))))
   `(debbugs-gnu-tagged ((,class (:foreground ,red))))

   ;; dired+
   `(diredp-autofile-name ((,class (:background ,highlight))))
   `(diredp-compressed-file-name ((,class (:foreground ,purple))))
   `(diredp-compressed-file-suffix ((,class (:foreground ,aqua))))
   `(diredp-deletion ((,class (:inherit error :inverse-video t))))
   `(diredp-deletion-file-name ((,class (:inherit error))))
   `(diredp-date-time ((,class (:foreground ,blue))))
   `(diredp-dir-heading ((,class (:foreground ,green :weight bold))))
   `(diredp-dir-name ((,class (:foreground ,aqua))))
   `(diredp-dir-priv ((,class (:foreground ,aqua))))
   `(diredp-exec-priv ((,class (:foreground ,orange))))
   `(diredp-executable-tag ((,class (:foreground ,red))))
   `(diredp-file-name ((,class (:foreground ,yellow))))
   `(diredp-file-suffix ((,class (:foreground ,green))))
   `(diredp-flag-mark ((,class (:foreground ,green :inverse-video t))))
   `(diredp-flag-mark-line ((,class (:inherit highlight))))
   `(diredp-ignored-file-name ((,class (:foreground ,comment))))
   `(diredp-link-priv ((,class (:foreground ,purple))))
   `(diredp-mode-line-flagged ((,class (:foreground ,red))))
   `(diredp-mode-line-marked ((,class (:foreground ,green))))
   `(diredp-no-priv ((,class (:background nil))))
   `(diredp-number ((,class (:foreground ,yellow))))
   `(diredp-other-priv ((,class (:foreground ,purple))))
   `(diredp-rare-priv ((,class (:foreground ,red))))
   `(diredp-read-priv ((,class (:foreground ,green))))
   `(diredp-symlink ((,class (:foreground ,purple))))
   `(diredp-tagged-autofile-name ((,class (:background ,contrast-bg))))
   `(diredp-write-priv ((,class (:foreground ,yellow))))

   ;; dired-async
   `(dired-async-failures ((,class (:inherit error))))
   `(dired-async-message ((,class (:inherit warning))))
   `(dired-async-mode-message ((,class (:inherit success))))

   ;; Diff-Hl
   `(diff-hl-insert ((,class (:foreground ,green))))
   `(diff-hl-change ((,class (:foreground ,blue))))
   `(diff-hl-delete ((,class (:foreground ,orange))))
   `(diff-hl-unknown ((,class (:foreground ,purple))))

   ;; e2wm
   `(e2wm:face-history-list-normal ((,class (:foreground ,foreground :background ,background))))
   `(e2wm:face-history-list-select1 ((,class (:foreground ,aqua :background ,background))))
   `(e2wm:face-history-list-select2 ((,class (:foreground ,yellow :background ,background))))

   ;; EDTS errors
   `(edts-face-warning-line ((,class (:underline (:style wave :color ,orange) :background ,background))))
   `(edts-face-warning-mode-line ((,class (:foreground ,orange :weight bold))))
   `(edts-face-error-line ((,class (:underline (:style wave :color ,red) :background ,background))))
   `(edts-face-error-mode-line ((,class (:foreground ,red :weight bold))))

   ;; Elfeed
   `(elfeed-log-debug-level-face ((,class (:foreground ,blue))))
   `(elfeed-log-error-level-face ((,class (:inherit error))))
   `(elfeed-log-info-level-face ((,class (:inherit success))))
   `(elfeed-log-warn-level-face ((,class (:inherit warning))))
   `(elfeed-search-date-face ((,class (:foreground ,aqua))))
   `(elfeed-search-feed-face ((,class (:foreground ,purple))))
   `(elfeed-search-tag-face ((,class (:foreground ,brightgreen))))
   `(elfeed-search-title-face ((,class (:foreground ,foreground))))
   `(elfeed-search-unread-count-face ((,class (:foreground ,foreground))))

   ;; EMMS
   `(emms-browser-artist-face ((,class (:foreground ,purple))))
   `(emms-browser-album-face ((,class (:foreground ,aqua))))
   `(emms-browser-track-face ((,class (:foreground ,offwhite))))
   `(emms-browser-year/genre-face ((,class (:foreground ,blue))))
   `(emms-playlist-selected-face ((,class (:inverse-video t))))
   `(emms-playlist-track-face ((,class (:foreground ,offwhite))))

   ;; RHTML
   `(erb-delim-face ((,class (:background ,contrast-bg))))
   `(erb-exec-face ((,class (:background ,contrast-bg :weight bold))))
   `(erb-exec-delim-face ((,class (:background ,contrast-bg))))
   `(erb-out-face ((,class (:background ,contrast-bg :weight bold))))
   `(erb-out-delim-face ((,class (:background ,contrast-bg))))
   `(erb-comment-face ((,class (:background ,contrast-bg :weight bold :slant italic))))
   `(erb-comment-delim-face ((,class (:background ,contrast-bg))))

   ;; Flycheck
   `(flycheck-error ((,class (:underline (:style wave :color ,red)))))
   `(flycheck-info ((,class (:underline (:style wave :color ,aqua)))))
   `(flycheck-warning ((,class (:underline (:style wave :color ,orange)))))
   `(flycheck-fringe-error ((,class (:foreground ,red))))
   `(flycheck-fringe-info ((,class (:foreground ,aqua))))
   `(flycheck-fringe-warning ((,class (:foreground ,orange))))

   ;; flx-ido
   `(flx-highlight-face ((,class (:foreground ,yellow :weight bold))))

   ;; Geiser
   `(geiser-font-lock-autodoc-current-arg ((,class (:foreground ,green))))
   `(geiser-font-lock-autodoc-identifier ((,class (:foreground ,blue))))
   `(geiser-font-lock-doc-link ((,class (:foreground ,aqua :underline t))))
   `(geiser-font-lock-error-link ((,class (:foreground ,aqua :underline t))))
   `(geiser-font-lock-xref-link ((,class (:foreground ,aqua :underline t))))

   ;; git-gutter
   `(git-gutter:modified ((,class (:foreground ,purple :weight bold))))
   `(git-gutter:added ((,class (:foreground ,green :weight bold))))
   `(git-gutter:deleted ((,class (:foreground ,red :weight bold))))
   `(git-gutter:unchanged ((,class (:background ,yellow))))

   ;; git-gutter-fringe
   `(git-gutter-fr:modified ((,class (:foreground ,purple :weight bold))))
   `(git-gutter-fr:added ((,class (:foreground ,green :weight bold))))
   `(git-gutter-fr:deleted ((,class (:foreground ,red :weight bold))))

   ;; guide-key
   `(guide-key/prefix-command-face ((,class (:foreground ,blue))))
   `(guide-key/highlight-command-face ((,class (:foreground ,green))))
   `(guide-key/key-face ((,class (:foreground ,comment))))

   ;; helm
   `(helm-buffer-saved-out ((,class (:inherit warning))))
   `(helm-buffer-size ((,class (:foreground ,yellow))))
   `(helm-buffer-not-saved ((,class (:foreground ,orange))))
   `(helm-buffer-process ((,class (:foreground ,aqua))))
   `(helm-buffer-directory ((,class (:foreground ,blue))))
   `(helm-ff-dotted-directory ((,class (:foreground ,comment))))
   `(helm-ff-dotted-symlink-directory ((,class (:foreground ,comment))))
   `(helm-ff-directory ((,class (:foreground ,aqua))))
   `(helm-candidate-number ((,class (:foreground ,red))))
   `(helm-match ((,class (:inherit match))))
   `(helm-selection ((,class (:inherit highlight))))
   `(helm-separator ((,class (:foreground ,purple))))
   `(helm-source-header ((,class (:weight bold :foreground ,orange :height 1.44))))

   ;; highlight-80+
   `(highlight-80+ ((,class (:background ,contrast-bg))))

   ;; highlight-sexp
   `(hl-sexp-face ((,class (:background ,contrast-bg))))

   ;; highlight-symbol
   `(highlight-symbol-face ((,class (:inherit isearch-lazy-highlight-face))))

   ;; Hydra
   `(hydra-face-blue ((,class (:foreground ,blue))))
   `(hydra-face-teal ((,class (:foreground ,aqua))))
   `(hydra-face-pink ((,class (:foreground ,purple))))
   `(hydra-face-red ((,class (:foreground ,red))))
   `(hydra-face-amaranth ((,class (:foreground ,orange))))

   ;; info+
   `(info-command-ref-item ((,class (:foreground ,brightgreen :background ,contrast-bg))))
   `(info-constant-ref-item ((,class (:foreground ,purple :background ,contrast-bg))))
   `(info-double-quoted-name ((,class (:inherit font-lock-comment-face))))
   `(info-file ((,class (:foreground ,yellow :background ,contrast-bg))))
   `(info-function-ref-item ((,class (:inherit font-lock-function-name-face :background ,contrast-bg))))
   `(info-macro-ref-item ((,class (:foreground ,yellow :background ,contrast-bg))))
   `(info-menu ((,class (:foreground ,yellow))))
   `(info-quoted-name ((,class (:inherit font-lock-constant-face))))
   `(info-reference-item ((,class (:background ,contrast-bg))))
   `(info-single-quote ((,class (:inherit font-lock-keyword-face))))
   `(info-special-form-ref-item ((,class (:foreground ,yellow :background ,contrast-bg))))
   `(info-string ((,class (:inherit font-lock-string-face))))
   `(info-syntax-class-item ((,class (:foreground ,blue :background ,contrast-bg))))
   `(info-user-option-ref-item ((,class (:foreground ,red :background ,contrast-bg))))
   `(info-variable-ref-item ((,class (:inherit font-lock-variable-name-face :background ,contrast-bg))))

   ;; Ivy
   `(ivy-confirm-face ((,class (:foreground ,green))))
   `(ivy-current-match ((,class (:background ,contrast-bg))))
   `(ivy-cursor ((,class (:background ,contrast-bg))))
   `(ivy-match-required-face ((,class (:foreground ,red))))
   `(ivy-minibuffer-match-face-1 ((,class (:foreground ,background :background ,green))))
   `(ivy-minibuffer-match-face-2 ((,class (:foreground ,background :background ,aqua :weight bold))))
   `(ivy-minibuffer-match-face-3 ((,class (:foreground ,background :background ,blue :weight bold))))
   `(ivy-minibuffer-match-face-4 ((,class (:foreground ,background :background ,purple :weight bold))))
   `(ivy-modified-buffer ((,class (:foreground ,yellow))))
   `(ivy-remote ((,class (:foreground ,blue))))
   `(ivy-subdir ((,class (:foreground ,orange))))
   `(ivy-virtual ((,class (:foreground ,comment))))

   ;; Jabber
   `(jabber-chat-prompt-local ((,class (:foreground ,yellow))))
   `(jabber-chat-prompt-foreign ((,class (:foreground ,orange))))
   `(jabber-chat-prompt-system ((,class (:foreground ,yellow :weight bold))))
   `(jabber-chat-text-local ((,class (:foreground ,yellow))))
   `(jabber-chat-text-foreign ((,class (:foreground ,orange))))
   `(jabber-chat-text-error ((,class (:foreground ,red))))

   `(jabber-roster-user-online ((,class (:foreground ,green))))
   `(jabber-roster-user-xa ((,class (:foreground ,comment))))
   `(jabber-roster-user-dnd ((,class (:foreground ,yellow))))
   `(jabber-roster-user-away ((,class (:foreground ,orange))))
   `(jabber-roster-user-chatty ((,class (:foreground ,purple))))
   `(jabber-roster-user-error ((,class (:foreground ,red))))
   `(jabber-roster-user-offline ((,class (:foreground ,comment))))

   `(jabber-rare-time-face ((,class (:foreground ,comment))))
   `(jabber-activity-face ((,class (:foreground ,purple))))
   `(jabber-activity-personal-face ((,class (:foreground ,aqua))))

   ;; js2-mode
   `(js2-warning ((,class (:underline ,orange))))
   `(js2-error ((,class (:underline ,red))))
   `(js2-external-variable ((,class (:foreground ,purple))))
   `(js2-function-param ((,class (:foreground ,blue))))
   `(js2-instance-member ((,class (:foreground ,blue))))
   `(js2-private-function-call ((,class (:foreground ,red))))
   ;; js2-mode additional attributes for better syntax highlight in javascript
   `(js2-jsdoc-tag ((,class (:foreground ,aqua))))
   `(js2-jsdoc-type ((,class (:foreground ,orange))))
   `(js2-jsdoc-value ((,class (:foreground ,orange))))
   `(js2-function-call ((,class (:foreground ,foreground))))
   `(js2-object-property ((,class (:foreground ,foreground))))
   `(js2-private-member ((,class (:foreground ,purple))))
   `(js2-jsdoc-html-tag-name ((,class (:foreground ,orange))))
   `(js2-jsdoc-html-tag-delimiter ((,class (:foreground ,orange))))

   ;; js3-mode
   `(js3-warning-face ((,class (:underline ,orange))))
   `(js3-error-face ((,class (:underline ,red))))
   `(js3-external-variable-face ((,class (:foreground ,purple))))
   `(js3-function-param-face ((,class (:foreground ,blue))))
   `(js3-jsdoc-tag-face ((,class (:foreground ,orange))))
   `(js3-jsdoc-type-face ((,class (:foreground ,aqua))))
   `(js3-jsdoc-value-face ((,class (:foreground ,yellow))))
   `(js3-jsdoc-html-tag-name-face ((,class (:foreground ,blue))))
   `(js3-jsdoc-html-tag-delimiter-face ((,class (:foreground ,green))))
   `(js3-instance-member-face ((,class (:foreground ,blue))))
   `(js3-private-function-call-face ((,class (:foreground ,red))))

   ;; Ledger-mode
   `(ledger-font-comment-face ((,class (:inherit font-lock-comment-face))))
   `(ledger-font-occur-narrowed-face ((,class (:inherit font-lock-comment-face :invisible t))))
   `(ledger-font-occur-xact-face ((,class (:inherit highlight))))
   `(ledger-font-payee-cleared-face ((,class (:foreground ,green))))
   `(ledger-font-payee-uncleared-face ((,class (:foreground ,aqua))))
   `(ledger-font-posting-date-face ((,class (:foreground ,orange))))
   `(ledger-font-posting-amount-face ((,class (:foreground ,foreground))))
   `(ledger-font-posting-account-cleared-face ((,class (:foreground ,blue))))
   `(ledger-font-posting-account-face ((,class (:foreground ,purple))))
   `(ledger-font-posting-account-pending-face ((,class (:foreground ,yellow))))
   `(ledger-font-xact-highlight-face ((,class (:inherit highlight))))
   `(ledger-occur-narrowed-face ((,class (:inherit font-lock-comment-face :invisible t))))
   `(ledger-occur-xact-face ((,class (:inherit highlight))))

   ;; macrostep
   `(macrostep-expansion-highlight-face ((,class (:inherit highlight))))

   ;; Magit
   `(magit-blame-heading ((,class (:background ,highlight :foreground ,orange))))
   `(magit-blame-date ((,class (:foreground ,red))))
   `(magit-header-line ((,class (:weight bold))))
   `(magit-dimmed ((,class (:foreground ,comment))))
   `(magit-hash ((,class (:foreground ,comment))))
   `(magit-tag ((,class (:foreground ,yellow))))
   `(magit-branch-local ((,class (:foreground ,aqua))))
   `(magit-branch-remote ((,class (:foreground ,green))))
   `(magit-branch-current ((,class (:foreground ,blue))))
   `(magit-refname ((,class (:inherit comment))))
   `(magit-signature-good ((,class (:inherit success))))
   `(magit-signature-bad ((,class (:inherit error))))
   `(magit-signature-untrusted ((,class (:foreground ,aqua))))
   `(magit-signature-unmatched ((,class (:foreground ,aqua))))
   `(magit-cherry-equivalent ((,class (:foreground ,purple))))
   `(magit-log-graph ((,class (:foreground ,comment))))
   `(magit-log-author ((,class (:foreground ,orange))))
   `(magit-log-date ((,class (:foreground ,blue))))
   `(magit-process-ok ((,class (:inherit success))))
   `(magit-process-ng ((,class (:inherit error))))
   `(magit-section-heading ((,class (:foreground ,yellow :weight bold))))
   `(magit-section-heading-selection ((,class (:foreground ,orange :weight bold))))
   `(magit-section-highlight ((,class (:inherit highlight))))

   ;; Markdown mode
   `(markdown-url-face ((,class (:inherit link))))
   `(markdown-link-face ((,class (:foreground ,blue :underline t))))

   ;; mark-multiple
   `(mm/master-face ((,class (:inherit region))))
   `(mm/mirror-face ((,class (:inherit region))))

   ;; MMM-mode
   `(mmm-code-submode-face ((,class (:background ,contrast-bg))))
   `(mmm-comment-submode-face ((,class (:inherit font-lock-comment-face))))
   `(mmm-output-submode-face ((,class (:background ,contrast-bg))))

   ;; mu4e
   `(mu4e-header-highlight-face ((,class (:inherit region))))
   `(mu4e-header-marks-face ((,class (:foreground ,yellow))))
   `(mu4e-flagged-face ((,class (:foreground ,orange))))
   `(mu4e-replied-face ((,class (:foreground ,blue))))
   `(mu4e-unread-face ((,class (:foreground ,yellow))))
   `(mu4e-cited-1-face ((,class (:foreground ,blue))))
   `(mu4e-cited-2-face ((,class (:foreground ,purple))))
   `(mu4e-cited-3-face ((,class (:foreground ,aqua))))
   `(mu4e-cited-4-face ((,class (:foreground ,offwhite))))
   `(mu4e-cited-5-face ((,class (:foreground ,orange))))
   `(mu4e-cited-6-face ((,class (:foreground ,blue))))
   `(mu4e-cited-7-face ((,class (:foreground ,purple))))
   `(mu4e-ok-face ((,class (:foreground ,green))))
   `(mu4e-view-contact-face ((,class (:foreground ,yellow))))
   `(mu4e-view-link-face ((,class (:inherit link :foreground ,blue))))
   `(mu4e-view-url-number-face ((,class (:foreground ,aqua))))
   `(mu4e-view-attach-number-face ((,class (:foreground ,orange))))
   `(mu4e-highlight-face ((,class (:inherit highlight))))
   `(mu4e-title-face ((,class (:foreground ,green))))

   ;; neotree
   `(neo-banner-face ((,class (:foreground ,yellow :weight bold))))
   `(neo-button-face ((,class (:underline t))))
   `(neo-dir-link-face ((,class (:foreground ,blue))))
   `(neo-expand-btn-face ((,class (:foreground ,aqua))))
   `(neo-file-link-face ((,class (:foreground ,foreground))))
   `(neo-header-face ((,class (:foreground ,offwhite))))
   `(neo-root-dir-face ((,class (:foreground ,green))))
   `(neo-vc-added-face ((,class (:foreground ,brightgreen))))
   `(neo-vc-conflict-face ((,class (:foreground ,red))))
   `(neo-vc-default-face ((,class (:foreground ,orange))))
   `(neo-vc-edited-face ((,class (:foreground ,purple))))
   `(neo-vc-missing-face ((,class (:foreground ,comment))))
   `(neo-vc-needs-merge-face ((,class (:foreground ,comment))))
   `(neo-vc-unlocked-changes-face ((,class (:foreground ,background :background ,red))))
   `(neo-vc-up-to-date-face ((,class (:foreground ,contrast-bg))))
   `(neo-vc-user-face ((,class (:foreground ,red :slant italic))))

   ;; Parenthesis matching (mic-paren)))
   `(paren-face-match ((,class (:inherit show-paren-match))))
   `(paren-face-mismatch ((,class (:inherit show-paren-mismatch))))
   `(paren-face-no-match ((,class (:inherit show-paren-mismatch))))

   ;; Parenthesis dimming (parenface)))
   `(paren-face ((,class (:foreground ,comment))))

   ;; Powerline
   `(powerline-active1 ((,class (:foreground ,foreground :background ,highlight))))
   `(powerline-active2 ((,class (:foreground ,foreground :background ,contrast-bg))))

   ;; Powerline-evil
   `(powerline-evil-base-face ((,class (:inherit mode-line :foreground ,background))))
   `(powerline-evil-emacs-face ((,class (:inherit powerline-evil-base-face :background ,purple))))
   `(powerline-evil-insert-face ((,class (:inherit powerline-evil-base-face :background ,blue))))
   `(powerline-evil-motion-face ((,class (:inherit powerline-evil-base-face :background ,orange))))
   `(powerline-evil-normal-face ((,class (:inherit powerline-evil-base-face :background ,aqua))))
   `(powerline-evil-operator-face ((,class (:inherit powerline-evil-base-face :background ,brightgreen))))
   `(powerline-evil-replace-face ((,class (:inherit powerline-evil-base-face :background ,red))))
   `(powerline-evil-visual-face ((,class (:inherit powerline-evil-base-face :background ,yellow))))

   ;; Rainbow-delimiters
   `(rainbow-delimiters-depth-1-face ((,class (:foreground ,foreground))))
   `(rainbow-delimiters-depth-2-face ((,class (:foreground ,aqua))))
   `(rainbow-delimiters-depth-3-face ((,class (:foreground ,yellow))))
   `(rainbow-delimiters-depth-4-face ((,class (:foreground ,brightgreen))))
   `(rainbow-delimiters-depth-5-face ((,class (:foreground ,blue))))
   `(rainbow-delimiters-depth-6-face ((,class (:foreground ,foreground))))
   `(rainbow-delimiters-depth-7-face ((,class (:foreground ,aqua))))
   `(rainbow-delimiters-depth-8-face ((,class (:foreground ,yellow))))
   `(rainbow-delimiters-depth-9-face ((,class (:foreground ,green))))
   `(rainbow-delimiters-unmatched-face ((,class (:foreground ,red))))

   ;; regex-tool
   `(regex-tool-matched-face ((,class (:inherit match))))

   ;; rpm-spec-mode
   `(rpm-spec-dir-face ((,class (:foreground ,green))))
   `(rpm-spec-doc-face ((,class (:foreground ,green))))
   `(rpm-spec-ghost-face ((,class (:foreground ,red))))
   `(rpm-spec-macro-face ((,class (:foreground ,yellow))))
   `(rpm-spec-obsolete-tag-face ((,class (:foreground ,red))))
   `(rpm-spec-package-face ((,class (:foreground ,red))))
   `(rpm-spec-section-face ((,class (:foreground ,yellow))))
   `(rpm-spec-tag-face ((,class (:foreground ,blue))))
   `(rpm-spec-var-face ((,class (:foreground ,red))))

   ;; spaceline
   `(spaceline-evil-emacs ((,class (:foreground ,background :background ,blue))))
   `(spaceline-evil-insert ((,class (:foreground ,background :background "#ff9800"))))
   `(spaceline-evil-motion ((,class (:foreground ,background :background ,purple))))
   `(spaceline-evil-normal ((,class (:foreground ,background :background ,aqua))))
   `(spaceline-evil-operator ((,class (:foreground ,background :background ,red))))
   `(spaceline-evil-replace ((,class (:foreground ,background :background ,red))))
   `(spaceline-evil-visual ((,class (:foreground ,background :background ,offwhite))))

   ;; Smartparens paren matching
   `(sp-show-pair-match-face ((,class (:inherit show-paren-match))))
   `(sp-show-pair-mismatch-face ((,class (:inherit show-paren-mismatch))))

   ;; SLIME
   `(slime-error-face ((,class (:underline (:style wave :color ,red)))))
   `(slime-note-face ((,class (:underline (:style wave :color ,blue)))))
   `(slime-style-warning-face ((,class (:underline (:style wave :color ,brightgreen)))))
   `(slime-warning-face ((,class (:underline (:style wave :color ,orange)))))
   `(slime-highlight-edits-face ((,class (:weight bold))))
   `(slime-repl-input-face ((,class (:underline nil))))
   `(slime-repl-prompt-face ((,class (:underline nil :weight bold :foreground ,purple))))
   `(slime-repl-result-face ((,class (:foreground ,green))))
   `(slime-repl-output-face ((,class (:foreground ,blue :background ,background))))
   `(slime-repl-inputed-output-face ((,class (:foreground ,comment))))

   ;; sx
   `(sx-question-mode-content-face ((,class (:background ,highlight))))
   `(sx-question-list-answers ((,class (:height 1.0 :inherit sx-question-list-parent :foreground ,green))))
   `(sx-question-mode-accepted ((,class (:height 1.5 :inherit sx-question-mode-title :foreground ,green))))
   `(sx-question-mode-kbd-tag ((,class (:height 0.9 :weight semi-bold :box (:line-width 3 :style released-button :color ,contrast-bg))))))

  ;; twittering-mode
  `(twittering-username-face ((,class (:foreground ,orange))))
  `(twittering-uri-face ((,class (:foreground ,blue :inherit link))))
  `(twittering-timeline-header-face ((,class (:foreground ,green :weight bold))))
  `(twittering-timeline-footer-face ((,class (:inherit twittering-timeline-header-face))))

  ;; undo-tree
  `(undo-tree-visualizer-default-face ((,class (:foreground ,foreground))))
  `(undo-tree-visualizer-current-face ((,class (:foreground ,green :weight bold))))
  `(undo-tree-visualizer-active-branch-face ((,class (:foreground ,red))))
  `(undo-tree-visualizer-register-face ((,class (:foreground ,yellow))))

  ;; web mode
  `(web-mode-variable-name-face ((,class (:foreground ,purple))))
  `(web-mode-css-property-name-face ((,class (:foreground ,purple))))
  `(web-mode-function-name-face ((,class (:foreground ,blue))))
  `(web-mode-filter-face ((,class (:foreground ,blue))))
  `(web-mode-filter-face ((,class (:foreground ,blue))))
  `(web-mode-html-attr-name-face ((,class (:foreground ,purple))))
  `(web-mode-html-tag-face ((,class (:foreground ,blue))))

  ;; wgrep
  `(wgrep-delete-face ((,class (:foreground ,red))))
  `(wgrep-done-face ((,class (:foreground ,blue))))
  `(wgrep-face ((,class (:foreground ,green))))
  `(wgrep-file-face ((,class (:foreground ,comment))))
  `(wgrep-reject-face ((,class (:foreground ,purple :weight bold))))

  ;; wid-edit
  `(widget-button ((,class (:underline t))))
  `(widget-field ((,class (:background ,contrast-bg :box (:line-width 1 :color ,foreground)))))

  (custom-theme-set-variables
   'sourcerer
   `(ansi-color-names-vector [,foreground ,red ,green ,yellow ,blue ,purple ,aqua ,background])))

;;;###autoload
(when load-file-name
  (add-to-list 'custom-theme-load-path
               (file-name-as-directory (file-name-directory load-file-name))))

(provide-theme 'sourcerer)

;;; sourcerer-theme.el ends here
