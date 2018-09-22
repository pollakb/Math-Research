︠dc97b675-4959-4502-8c13-216bc6171b8b︠
n = input("Enter degree:")
secondDegree = input("Bound degree of second term:")
secondCoefficient = input("Bound value of second term coefficient:")
constantTerm = input("Bound value of constant term:")

for k in range(1, secondDegree):
    for a in range(1, secondCoefficient):
        for b in range(1, constantTerm):
            d = ((-1)**((n*(n-1))/2))*(b**(k-1))*((n**n)*(b**(n-k)) + ((-1)**(n-1))*((n-k)**(n-k))*(a**n)*(k**k))
            if(d != 0):
                factors = list(factor(d))
                if(len(factors) == 1):
                    print "x^%d + %d*x^%d + %d with discriminant %d" %(n,a,k,b,d)










