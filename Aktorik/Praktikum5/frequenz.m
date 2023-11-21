x = linspace(0,36,200);
y1 = ones([1,22]) % 0-3s
y2 = 3 * ones([1,5])
y3 = 5*ones([1,5])
y4 = 9*ones([1,6])
y5 = 13*ones([1,6])
y6 = 15*ones([1,5])
y7= 17*ones([1,5])
y8 = 22*ones([1,5])
y9= 25*ones([1,5])
y10 = 25*ones([1,136])


y = [y1 y2 y3 y4 y5 y6 y7 y8 y9,y10]

plot(x,y)