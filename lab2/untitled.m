x=[0.1:0.1:1];
y1=[0.302 0.600 0.904 1.200 1.500 1.800 2.100 2.400 2.700 3.000];
g1=x.*3;
y2=[0.187 0.353 0.520 0.686 0.860 1.020 1.193 1.346 1.533 1.717];
g2=x.*2;
figure(1);
plot(x,y1,'.','Markersize',10);
axis([0 1 0 3])
f=fit(x',y1','poly1')
hold on;
plot(f);
plot(x,g1,'--');
xlabel('Vpp(in)');
ylabel('Vpp(out)');
title(['k=' num2str(f.p1)]);
legend('experimental','fitted curve','expectation','Location','NorthWest')
hold off;

figure(2);
plot(x,y2,'.','Markersize',10);
axis([0 1 0 2])
hold on;
f=fit(x',y2','poly1')
plot(f);
plot(x,g2,'--');
xlabel('Vpp(in)');
ylabel('Vpp(out)');
title(['k=' num2str(f.p1)]);
legend('experimental','fitted curve','expectation','Location','NorthWest')
hold off;
