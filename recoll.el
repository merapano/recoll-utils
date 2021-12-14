(defun recoll-query ()
  (interactive "*"  )
  (let* ((tmpbuffer   (generate-new-buffer "*recoll*"))
         (qstring (read-string "Query: "))
         (command
          (concat
           "~/usr/recoll-utils/example.py \""
           qstring
           "\" > ~/tmp.html" ))
;;;    (shell-command-to-string command)
         )
    (switch-to-buffer tmpbuffer)
    (set-buffer tmpbuffer)
    (shell-command command)
    (w3m-find-file "~/tmp.html")))

(global-set-key "\C-c\C-y" 'recoll-query)
























