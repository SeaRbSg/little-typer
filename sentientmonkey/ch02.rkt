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

(-> Nat
  Atom)

(-> Nat
    (Pair Nat Nat))

(claim vegetables
  (Pair Atom Atom))
(define vegetables
  (cons 'celery 'carrot))

vegetables
(car vegetables)

(which-Nat zero
  'naught
  (λ (n)
     'more))

(which-Nat 4
  'naught
  (λ (n)
     'more))

(which-Nat 5
  0
  (λ (n)
     (+ 6 n)))
;; 10. wut.

(claim gauss
  (-> Nat
      Nat))

;; (define gauss
;;   (λ (n)
;;     (which-Nat n
;;       0
;;       (λ (n1)
;;          (+ (add1 n1) (gauss n1))))))
;; 
;; (gauss 5)


(claim Pear
   U)
(define Pear
  (Pair Nat Nat))

(claim Pear-maker
   U)
(define Pear-maker
  (-> Nat Nat
      Pear))

(claim elim-Pear
   (-> Pear Pear-maker
       Pear))
(define elim-Pear
  (λ (pear maker)
     (maker (car pear) (cdr pear))))

(elim-Pear
  (cons 3 17)
  (λ (a d)
     (cons d a)))

(claim pearwise+
   (-> Pear Pear
       Pear))
(define pearwise+
  (λ (anjou bosc)
     (elim-Pear anjou
        (λ (a1 d1)
           (elim-Pear bosc
              (λ (a2 d2)
                 (cons
                   (+ a1 a2)
                   (+ d1 d2))))))))

(pearwise+
  (cons 3 8)
  (cons 7 6))
