#lang pie

'spinach

; (car 'spinach)
; => Not a pair type

; (cons 'spinach 'cauliflower)
; => Can't determine a type

(the (Pair Atom Atom)
  (cons 'spinach 'cauliflower))

(the (Pair Atom
       (Pair Atom Atom))
  (cons 'spinach
    (cons 'kale 'cauliflower)))

(car
  (the (Pair Atom Nat)
    (cons 'brussels-sprout 4)))

U
(Pair U U)
(Pair Atom U)
