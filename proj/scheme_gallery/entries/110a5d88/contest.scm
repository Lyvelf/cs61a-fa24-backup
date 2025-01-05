;;; Scheme Recursive Art Contest Entry
;;;
;;; Please do not include your name or personal info in this file.
;;;
;;; Title: The Conflux of Light
;;;
;;; Description:
;;;   The shadows of light
;;;   Where all that is new and old
;;;   Begins once again

(define (square x)
  (* x x)
)

(define (funny a s x y z)
        (+
        (+
        (* (square (- 1 (* a (/ 1 s)))) x) 
        (* (* (* a (/ 1 s)) (* 2 (- 1 (* a (/ 1 s))))) y)
        )
        (* (square (* a (/ 1 s))) z)
        )
)


  (define colors (list "#ff595e" "#ff924c" "#ffca3a" "#c5ca30" "#8ac926" "#52a675" "#1982c4" "#4267ac" "#6a4c93" "#b5a6c9"))

(define (curve points current steps)
(begin
  (if (= current 0) (pu) (pd))
  (setpos
    (funny current steps (car (car points)) (car (car (cdr points))) (car (car (cdr (cdr points)))))
    (funny current steps (car (cdr (car points))) (car (cdr (car (cdr points)))) (car (cdr (car (cdr (cdr points))))))
  )
  (if (not (= current steps)) (curve points (+ 1 current) steps) (pu))
)
)

(define (haha startx starty current step point)
(let ((a (+ current step))) 
    (curve (list (list (+  startx current) (+ starty current)) point (list (+ startx a) (+ starty a))) 0 50)
    (if (> 1000 (abs a)) (haha startx starty a step point))
)
)

(define (modify f i s c)
  (color (car c))
  (f i)
  (if (<= (abs (+ i s)) 1000)
    (if (null? (cdr c)) 
    (modify f (+ i s) s colors)
    (modify f (+ i s) s (cdr c)))
  ) 
)

(define (draw)
  (hideturtle)
  (bgcolor "black")
  (define (aaa y) (lambda (x) (haha x y 0 100 (list x 0))))
  (define (bbb y) (lambda (x) (haha y x 0 100 (list x 0))))
  (modify (aaa -500) -1000 93 colors)
  (modify (bbb -500) -1000 42 colors)
  (modify (aaa 500) -1000 93 colors)
  (modify (bbb 500) -1000 63 colors)
  (exitonclick)
)

; Please leave this last line alone. You may add additional procedures above
; this line.
; :)
(draw)