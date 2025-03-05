#lang racket

;; Define a binry tree structure
(struct node (value left right) #;transparent)

;; Insert a value into the BST
(define (bst-insert tree val)
  (cond
    [(null? tree) (node val null null)]
    [(< val (node-value tree)) (node (node-value tree) (bst-insert (node-left tree) val) (node-right tree))]
    [else (node (node-value tree) (node-left tree) (bst-insert (node-right tree) val))]))

;; Search for a value in a  BST
(define (bst-search tree val)
  (cond
    [(null? tree) #f]
    [(= val (node-value tree)) #t]
    [(< val (node-value tree)) (bst-search (node-left tree) val)]
    [else (bst-search (node-right tree) val)]))

;; Inforder
(define (bst-inorder tree)
  (if (null? tree)
    '()
    (append (bst-inorder (node-left tree))
            (list (node-value tree))
            (bst-inorder (node-right tree)))))

;; Test
(define bst (bst-insert (bst-insert (bst-insert null 10) 5) 15))
(display (bst-inorder bst)) ; Print '(5 10 15)
