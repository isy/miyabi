(use-modules (guix packages)
             (gnu packages ruby))

(define-public ruby-nokogiri'
  (package
   (inherit ruby-nokogiri)
   (arguments
    (cons* #:ruby ruby-3.2
           (package-arguments ruby-nokogiri)))))

(packages->manifest (list ruby-nokogiri' ruby-rspec ruby-3.2))
