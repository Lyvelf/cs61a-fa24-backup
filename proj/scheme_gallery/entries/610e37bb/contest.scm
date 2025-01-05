;;; Scheme Recursive Art Contest Entry
;;;
;;; Please do not include your name or personal info in this file.
;;;
;;; Title: Sunset on Santa Monica
;;;
;;; Description:
;;;   Oh, what can I do?
;;;   Life is beautiful,
;;;   but you don't have a clue. -- Black Beauty

(define (draw)
  (Begin
    (bgcolor "#000000")
    (pu)
    (ht)
    (define (helper n r a x y c)
      (goto x y)
      (seth a)
      (if (equal? n 0)
        ()
        (Begin 
          (color c)
          (begin_fill)
          (circle r 180)
          (end_fill) 
          (helper (- n 1) r a (+ x 40) y c)
        )
      )
    )
    ;;; Sky
    (helper 20 30 0 -360 300 "#b0d6f5")
    (helper 20 30 0 -330 280 "#0487e2")
    (helper 20 30 0 -360 260 "#ffc0c0")
    (helper 20 30 0 -330 240 "#0487e2")
    (helper 20 30 0 -360 220 "#b0d6f5")
    (helper 20 30 0 -330 200 "#ffc0c0")
    (helper 20 30 0 -360 180 "#fefeff")
    (helper 20 30 0 -330 160 "#0487e2")
    (helper 20 30 0 -360 140 "#b0d6f5")
    (helper 20 30 0 -330 120 "#0487e2")
    ;;; Sun
    (helper 1 180 0 280 20 "#f29f05")
    (helper 1 160 0 260 20 "#f28705")
    (helper 1 140 0 240 20 "#f25c05")
    (helper 1 120 0 220 20 "#d33a03")
    (helper 1 110 0 210 20 "#a82f01")
    ;;; Sunset
    (helper 20 30 0 -360 100 "#ec8b62")
    (helper 20 30 0 -330 80 "#d1506f")
    (helper 20 30 0 -360 60 "#e77d8d")
    (helper 20 30 0 -330 40 "#d1506f")
    (helper 20 30 0 -360 20 "#ffc0c0")
    ;;; Ocean
    (helper 20 30 0 -330 0 "#0e77ab")
    (helper 20 30 0 -360 -20 "#253e5e")
    (helper 20 30 0 -330 -40 "#0e77ab")
    (helper 20 30 0 -360 -60 "#253e5e")
    (helper 20 30 0 -330 -80 "#0e77ab")
    (helper 20 30 0 -360 -100 "#253e5e")
    (helper 20 30 0 -330 -120 "#0e77ab")
    (helper 20 30 0 -360 -140 "#12b5c4")
    (helper 20 30 0 -330 -160 "#c0e6f0")
    (helper 20 30 0 -360 -180 "#0e77ab")
    (helper 20 30 0 -330 -200 "#c0e6f0")
    (helper 20 30 0 -360 -220 "#12b5c4")
    (helper 20 30 0 -330 -240 "#c0e6f0")
    (helper 20 30 0 -360 -260 "#0e77ab")
    (helper 20 30 0 -330 -280 "#c0e6f0")
    (helper 20 30 0 -360 -300 "#12b5c4")
    (helper 20 30 0 -330 -320 "#c0e6f0")
  )
  (exitonclick)
)

; Please leave this last line alone. You may add additional procedures above
; this line.
(draw)