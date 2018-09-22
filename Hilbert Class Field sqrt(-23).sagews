︠ea6369be-ba54-4b13-a4f8-f175c63bad8e︠
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

︡bd2088c8-bc94-4a6d-9e74-16893f23761c︡{"stdout":"K is Q adjoin the square root of -23.\nK has class number: 3\n"}︡{"stdout":"f is the polynomial: x^3 + (-1/2*rootMinus23 - 3/2)*x^2 + (1/2*rootMinus23 - 3/2)*x + 1\n"}︡{"stdout":"Adjoining a root of f to K yields an extension of K with relative discriminant: Fractional ideal (1)\n"}︡{"stdout":"The Hilbert class field of K is: Number Field in alpha with defining polynomial x^6 - 3*x^5 + 5*x^4 - 5*x^3 + 5*x^2 - 3*x + 1\n"}︡{"stdout":"It has discriminant: -1 * 23^3\n"}︡{"stdout":"The primes above 23 are: [Fractional ideal (2*alpha^5 - 5*alpha^4 + 6*alpha^3 - 4*alpha^2 + 5*alpha - 2), Fractional ideal (alpha^5 - 4*alpha^4 + 6*alpha^3 - 5*alpha^2 + 4*alpha - 3), Fractional ideal (-alpha^5 + alpha^4 - alpha^2 - alpha - 1)]\n"}︡{"stdout":"It has class number: 1\n"}︡{"done":true}︡
︠2826156b-df19-41f8-ae35-b151df0dee54︠









