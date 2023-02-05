clear;
% Generate data
t = linspace(0,1,30); 
x = linspace(0,1,1000);
g = sin(2*pi*t).^2 + normrnd(0,sqrt(0.07),[1 30]);

%plot the data
figure;
scatter(t,g);
grid on;
hold on;

% 2nd order
P2 = polyfit(t,g,2); 
y2 = polyval(P2,x);
plot(x,y2);
% 5th order
P5 = polyfit(t,g,5); 
Pv5 = polyval(P5,x);
plot(x,Pv5);
% 10th order
P10 = polyfit(t,g,10); 
Pv10 = polyval(P10,x);
plot(x,Pv10);
% 14th order
P14 = polyfit(t,g,14); 
Pv14 = polyval(P14,x);
plot(x,Pv14);
% 18th order
P18 = polyfit(t,g,18); 
Pv18 = polyval(P18,x);
plot(x,Pv18);
hold off;
legend('data','2nd order','5th order','10th order','14th order','18th order','Location','southeast');


% training error
MSE_Train = zeros(1,18); 
y_30 = zeros(18,30);

for i = 1:18
    y_30(i,:) = polyval(polyfit(t,g,i),t);
    MSE_Train(i) = sum((g-y_30(i,:)).^2)/30;
end
figure; 
plot(MSE_Train,'*-r'); 
title('Training error vs polynomial dimension 1~18');
xlabel('Dimension'); ylabel('Training error');

% Generate testing data
g2 = sin(2*pi*x).^2 + normrnd(0,sqrt(0.07),[1 1000]);

% Testing error vs polynomial dimension
MSE_Test = zeros(1,18); y_1000 = zeros(18,1000);
for i = 1:18
    y_1000(i,:) = polyval(polyfit(t,g,i),x);
    MSE_Test(i) = sum((g2-y_1000(i,:)).^2)/1000;
end
figure;
plot(MSE_Test,'o-b');title('Testing error vs polynomial dimension');
xlabel('Dimension'); ylabel('Testing error');
%training error and testing error
figure;
hold on;
plot(MSE_Train,'r*-');
plot(MSE_Test,'bo-');
title('training error and testing error');
xlabel('Dimension of polynomial ');
ylabel('Testing error');
legend('Training error','Testing error','Location','southwest');
hold off;
clear;
% Generate data
x = [0.2 0.3 0.6 0.9 1.1 1.3 1.4 1.6];
y = [0.050446 0.098426 0.33277 0.7266 1.0972 1.5697 1.8487 2.5015];
x0 = linspace(0.2,1.6,1000); n = length(x);
y_h = zeros(3,8); 
RSS = zeros(1,3);
AIC = zeros(1,3); BIC = zeros(1,3);
% Fitting data & compute AIC, BIC
Pf1=polyfit(x,y,1);
y_h(1,:) = polyval(Pf1,x);
RSS(1) = sum((y-y_h(1,:)).^2);
AIC(1) = n*log(RSS(1)/n) + 2*1;
BIC(1) = n*log(RSS(1)/n) + log(n)*1;

Pf2=polyfit(x,y,2);
y_h(2,:) = polyval(Pf2,x);
RSS(2) = sum((y-y_h(2,:)).^2);
AIC(2) = n*log(RSS(2)/n) + 2*2;
BIC(2) = n*log(RSS(2)/n) + log(n)*2;

Pf3=polyfit(x,y,3);
y_h(3,:) = polyval(Pf3,x);
RSS(3) = sum((y-y_h(3,:)).^2);
AIC(3) = n*log(RSS(3)/n) + 2*3;
BIC(3) = n*log(RSS(3)/n) + log(n)*3;
%plot the model
figure;
subplot(2,2,1);
scatter(x,y); grid on; hold on; 
plot(x0,polyval(Pf1,x0)); 
xlabel('X data'); ylabel('Y data');
title(['Degree = 1, RSS = ',num2str(RSS(1))]); 

subplot(2,2,2);
scatter(x,y); grid on; hold on; 
plot(x0,polyval(Pf2,x0)); 
xlabel('X data'); ylabel('Y data');
title(['Degree = 2, RSS = ',num2str(RSS(2))]); 

subplot(2,2,3);
scatter(x,y); grid on; hold on; 
plot(x0,polyval(Pf3,x0)); 
xlabel('X data'); ylabel('Y data');
title(['Degree = 3, RSS = ',num2str(RSS(3))]);

figure;
bar([AIC;BIC]'); legend('AIC','BIC','Location','southwest');
xlabel('X data'); ylabel('Y data');
title('AIC & BIC');
disp(AIC);
disp(BIC);