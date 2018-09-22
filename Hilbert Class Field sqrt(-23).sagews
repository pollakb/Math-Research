K.<rootMinus23> = NumberField(x^2 + 23)
print "K is Q adjoin the square root of -23.\nK has class number:", K.class_number()

R.<x> = PolynomialRing(K)
f = x^3 + (-1/2*rootMinus23 - 3/2)*x^2 + (1/2*rootMinus23 - 3/2)*x + 1
print "f is the polynomial:", f
L.<beta> = K.extension(f)
print "Adjoining a root of f to K yields an extension of K with relative discriminant:", L.relative_discriminant()

Hrootminus23.<alpha> = L.absolute_field()
print "The Hilbert class field of K is:", Hrootminus23
print "It has discriminant:", Hrootminus23.discriminant().factor()
print "It has class number:", Hrootminus23.class_number()
print "The primes above 23 are:", Hrootminus23.primes_above(23)
