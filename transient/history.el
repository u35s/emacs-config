((magit-blame
  ("-w"))
 (magit-commit nil
			   ("--verbose"))
 (magit-diff
  (("--" "main.go")))
 (magit-diff:--diff-algorithm)
 (magit-file-dispatch nil)
 (magit-log
  (("--" "init.el"))
  ("-n256" "--graph" "--decorate")
  (("--" "main.go")))
 (magit-push nil))
