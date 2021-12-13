(defun recoll-query ()
  (interactive "*"  )
  (generate-new-buffer "*recoll*")
  (switch-to-buffer "*recoll*")
  (let* ((qstring (read-string "Query: "))
         (command (concat "~/usr/recoll-utils/example.py \"" qstring "\" > ~/tmp.html" )))

;;;    (shell-command-to-string command)
    (shell-command command)
    (w3m-find-file "~/tmp.html")
    ))

(global-set-key "\C-c\C-y" 'recoll-query)























