
(defun wrong (&rest r)
	(let ((mylst (copy-list (first r))))
		(setf (nth 0 mylst) :a)
	)
	r
)

(defun loop-a (&rest r)
	(dotimes (i (length (first r)))
		(dotimes (j (length (first r)))
			(print (nth j (nth i (first r))))
		)
	)
)

(defun WRONG-FUNCTION-1 (&rest r)
        (let ((matrix-t (copy-list (first r)))
                (l (length (first r))))
                (dotimes (i l)   
                        (dotimes (j l)
				(print (nth i (nth j (first r))))
                                (setf (nth j (nth i matrix-t)) (nth i (nth j (first r))))
				(print (nth i (nth j (first r))))
                        )
                )
                matrix-t
        )
)
