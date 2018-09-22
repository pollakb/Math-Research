K.<zeta23> = CyclotomicField(23)
print "K is the", K

R.<x> = PolynomialRing(K)
f = x^3 + (-zeta23^18 - zeta23^16 - zeta23^13 - zeta23^12 - zeta23^9 - zeta23^8 - zeta23^6 - zeta23^4 - zeta23^3 - zeta23^2 - zeta23 - 2)*x^2 + (zeta23^18 + zeta23^16 + zeta23^13 + zeta23^12 + zeta23^9 + zeta23^8 + zeta23^6 + zeta23^4 + zeta23^3 + zeta23^2 + zeta23 - 1)*x + 1
print "\nf is the polynomial:", f,
L.<beta> = K.extension(f)
print "Adjoining a root of f to K yields an extension of K with relative discriminant:", L.relative_discriminant()

HzetaMinus23.<alpha> = L.absolute_field()
print "\nThe Hilbert class field of K is:", HzetaMinus23
print "It has discriminant:", HzetaMinus23.discriminant().factor()









