#lang pie

(check-same
  Nat
  (iter-Nat 5
    3
    (λ (k)
      (add1 k)))
  (add1
    (add1
      (add1
        (add1
          (add1 3))))))

(claim step-+
  (→ Nat
      Nat))

(define step-+
  (λ (+n-1)
    (add1 +n-1)))

(claim +
  (→ Nat Nat
      Nat))

(define +
  (λ (n j)
    (iter-Nat n
      j
      step-+)))


(check-same
  Nat
  (+ (add1 zero) 7)
  (add1 7))

(claim step-zerop
  (→ Nat Atom
    Atom))

(define step-zerop
  (λ (n-1 zeropn-1)
    'nil))

(claim zerop
  (→ Nat
    Atom))

(define zerop
  (λ (n)
    (rec-Nat n
      't
      step-zerop)))

(check-same
  Atom
  (zerop 37)
  'nil)

(check-same
  Atom
  (zerop 37)
  (zerop 23))

(claim step-gauss
  (→ Nat Nat
    Nat))
(define step-gauss
  (λ (n-1 gaussn-1)
  (+ (add1 n-1) gaussn-1)))

(claim gauss
  (→ Nat
  Nat))
(define gauss
  (λ (n)
    (rec-Nat n
      0
      step-gauss)))

(check-same
  Nat
  (gauss zero)
  0)
