clear, clc

x = [
1 400;
1 70;
1 45;
1 2;
1 0.3;
1 0.16;
];

y = [
270;
82;
50;
4.8;
1.45;
0.97];


b = x\y;
b = b.'

b1 = b(2)
b0 = b(1)

xserie = x(:,2)
xserie
yCalc = b0 + b1*xserie
yCalc

scatter(xserie, y)
hold on
plot(xserie, yCalc)

xlabel('Potencia Calorífica (Watts)')
ylabel('Masa del animal (kg)')

xk = 200
yk = b0 + b1 * xk
xk
yk
%calculo de R^2
R2 = 1 - sum((y - yCalc).^2)/sum((y - mean(y)).^2)
R2

mytitle = ['Linear regression relation between x and y, R ' num2str(xk) ' ' num2str(yk) ' ' num2str(R2)]
mytitle 
title(mytitle)
grid on