(defun recoll-query ()
  (interactive "*"  )
  (let* ((qstring (read-string "Query: "))
         (command (concat "~/usr/recoll-utils/example.py \"" qstring "\" > ~/tmp.html" )))

;;;    (shell-command-to-string command)
    (shell-command command)
    (w3m-find-file "~/tmp.html")
    ))






















