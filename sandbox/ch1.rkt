; Examples from the book don't work when copied exactly. e.g.:
(car (1 2 3))
; will return:
; application: not a procedure;
;  expected a procedure that can be applied to arguments
;   given: 1
;   context...:
;    body of top-level
;    /usr/share/racket/pkgs/xrepl-lib/xrepl/xrepl.rkt:1573:0
;    /usr/share/racket/collects/racket/repl.rkt:11:26

; The first element in a list _must_ be a procedure!
> (car (cons 3 4))
3
> (car (list 1 2 3))
1
> (car (list 'atom))
'atom
> (define l (list 'a 'b 'c))
> (car l)
1
> '(1 2 3)
'(1 2 3)
> (car '(1 2 3))

; Use the quote to run examples from the book:
> (car '(((hotdogs)) (and) (pickle) relish))
'((hotdogs))