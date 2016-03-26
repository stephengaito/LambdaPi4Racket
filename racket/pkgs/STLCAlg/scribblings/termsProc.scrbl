#lang scribble/manual

@(require STLCAlg/termsData
          STLCAlg/termsProc
          STLCAlg/typesData
          "utils.rkt")
@(require 
  (for-label 
    racket
    STLCAlg/termsData
    STLCAlg/termsProc
    STLCAlg/typesData
  )
)

@title[#:tag "quote"]{STLCAlg termsProc}
@(author-stg)

@defmodule[STLCAlg/termsProc]

The @racketmodname[STLCAlg/termsProc] module implements the STLCAlg 
term proceedures using the Racket dialect of Scheme/Lisp.

@defproc[
  (lp-quote
    [ aValue value? ]
  )
  term?
]{
Returns a quoted term for a given value.
}

@defproc[
  (rec-quote
    [ anInt number? ]
    [ aValue value? ]
  )
  term?
]{
Recursively computes a quoted term for a given value. (Recurses on anInt).
}

@defproc[
  (neutral-quote
    [ anInt number? ]
    [ aNeutral neutral? ]
  )
  term?
]{
Recursively computes a quoted term across neutrals for a given value. (Recurses on anInt).
}

@defproc[
  (bound-free
    [ anInt number? ]
    [ aName name? ]
  )
  term?
]{
Returns the bound or free term associated with a given quote.
}