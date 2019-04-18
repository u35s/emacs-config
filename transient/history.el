((magit-blame
  ("-w"))
 (magit-commit nil
			   ("--verbose"))
 (magit-diff
  (("--" "main.go")))
 (magit-diff:--diff-algorithm)
 (magit-file-dispatch nil)
 (magit-log
  (("--" "main.go"))
  (("--" "init.el"))
  ("-n256" "--graph" "--decorate"))
 (magit-pull nil)
 (magit-push nil))
