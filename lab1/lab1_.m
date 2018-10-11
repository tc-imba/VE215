x=[0.5 1.0 1.5 2.0 3.0 4.0 5.0];
y=[0.011 0.022 0.034 0.044 0.066 0.088 0.111];
plot(x,y,'.');
axis([0 6 0 0.15]);
hold on;
f=fit(x',y','poly1')
plot(f);
ylabel('A');
xlabel('V');
hold off;