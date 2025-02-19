(defun print-triangle (rows)
  (loop for i from 1 to rows do
        (progn
          ; Print spaces before stars
          (loop for j from 1 to (- rows i) do
                (princ " "))

          ; Print stars
          (loop for k from 1 to i do
                (princ "* "))

          ; Print newline
          (terpri))))

; Ask the user for the number of rows
(princ "Enter the number of rows: ")
(let ((rows (read)))
  ; Print the triangle pattern
  (print-triangle rows))