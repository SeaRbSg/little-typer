#lang pie

; 3.26
(claim step-+
  (→ Nat
      Nat))

(define step-+
  (λ (+n-1)
    (add1 +n-1)))

; 3.24
(claim +
  (→ Nat Nat
      Nat))

; 3.27
(define +
  (λ (n j)
    (iter-Nat n
      j
      step-+)))

'atom
'ratatouille
;; (cons 'ratatouille 'baguette)
;; (car
;;   (cons 'ratatouille 'baguette))
;; (cdr
;;   (cons 'ratatouille 'baguette))
;; (car
;;   (cons
;;     (cons 'aubergine 'courgette)
;;     'tomato))
;; (car
;;   (cdr
;;     (cons 'ratatouille
;;        (cons 'baguette 'olive-oil))))

1
1729
0
(+ 0 26)

(claim one
  Nat)
(define one
  (add1 zero))

(claim two
  Nat)
(define two
  (add1 one))


(claim four
  Nat)
;; (define four
;;   (add1
;;     (add1
;;       (add1
;;         (add1 zero)))))

(define four
  (add1
    (+ (add1 zero)
       (add1
         (add1 zero)))))

(add1 (+ 0 1))
(add1 (+ 1 0))
