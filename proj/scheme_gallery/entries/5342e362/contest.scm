;;; Scheme Recursive Art Contest Entry
;;;
;;; Please do not include your name or personal info in this file.
;;;
;;; Title: Meow APT
;;;
;;; Description:
;;;   Meow Pah Teu, Meow Pah
;;;   Teu. Meow Pah Teu, Meow Pah Teu.
;;;   Ah! Uh huh uh huh

(define (draw)

  (speed 0)
  (ht)
  (move -200 -150)
  (hand 'l)
  (move -100 100)
  (flower 300 150)

  (move 200 -100)
  (hand 'r)

  (move 180 300)
  (hand 'dl)

  (move -300 200)
  (hand 'dr)

  (move 300 100)
  (flower 200 170)

  (move -50 -200)
  (flower 200 -150)

  (exitonclick))

;side = 'l or 'r or 'dl' or 'dr
;left or right or down left or down right
(define (hand side)
  (cond ((equal? side 'l) (seth 45))
        ((equal? side 'r) (seth -45))
        ((equal? side 'dl) (seth 225))
        (else (seth 135))
  )
  (circle 450 20)
  (rt 15)
  (circle -20 70)
  (lt 90)
  (circle -30 120)
  (lt 70)
  (circle -30 120)
  (lt 90)
  (circle -20 70)
  (rt 30)
  (circle -450 20)

  (cond ((equal? side 'l) (move 15 90))
        ((equal? side 'r) (move -90 15))
        ((equal? side 'dl) (move -15 -90))
        (else (move 90 -15))
  )
  
  (cond ((equal? side 'l) (seth 45))
        ((equal? side 'r) (seth -45))
        ((equal? side 'dl) (seth 225))
        (else (seth 135))
  )
  (color "#ffcccc")
  (begin_fill)
  (circle 30 180)
  (rt 15)
  (circle 20 150)
  (rt 70)
  (circle 20 150)
  (end_fill)
  
  (cond ((equal? side 'l) (move 30 20))
        ((equal? side 'r) (move -30 20))
        ((equal? side 'dl) (move -25 -35))
        (else (move 25 -35))
  )
  (colorCircle)

  (cond ((equal? side 'l) (move -20 30))
        ((equal? side 'r) (move -30 -20))
        ((equal? side 'dl) (move 20 -30))
        (else (move 30 20))
  )
  (colorCircle)

  (cond ((equal? side 'l) (move -30 15))
        ((equal? side 'r) (move -15 -30))
        ((equal? side 'dl) (move 30 -15))
        (else (move 15 30))
  )
  (colorCircle)

  (cond ((equal? side 'l) (move -35 -20))
        ((equal? side 'r) (move 20 -35))
        ((equal? side 'dl) (move 35 20))
        (else (move -20 35))
  )
  (colorCircle))

;postive x: right, postive y : up
;relative set postion
(define(move x y)
  (pu)
  (seth 0)
  (fd y)
  (rt 90)
  (fd x)
  (pd))

(define (draw1 n)
  (if (> n 0)
      (begin
        (rt 72) (circle 20) (draw1 (- n 1))
        ))
)

(define (flower k angle)
  (draw1 5)
  (move -1 -8)
  (color "#ffcc66")
  (colorCircle)
  (color "black")
  (seth angle)
  (circle k 45)
)

(define (colorCircle)
  (begin_fill)
  (circle 10)
  (end_fill)
)

; Please leave this last line alone. You may add additional procedures above
; this line.
(draw)