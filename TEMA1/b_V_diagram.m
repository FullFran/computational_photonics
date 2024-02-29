% File name: b_V_diagram.m
% function which plots b-V diagram of a planar slab waveguide
clear all
N_max = 400; % number of points for plot
b = linspace(0,1.0,N_max);
hold on
for nu = [0, 0.5, 1, 2]
for a = [0.0, 8.0,50.0]; % asymmetry coefficient
% determine V
V1 = atan(sqrt(b./(1-b)) );
V2 = atan(sqrt((b+a)./(1.0-b)));
V3 = 1./sqrt(1.0-b);
V = (nu*pi + V1 + V2).*V3;
%
plot(V,b,'LineWidth',1.2)
grid on
axis([0.0 20.0 0.0 1.0]) % change axis limit
end
end
box on % makes frame around plot
xlabel ('V','FontSize',14);
ylabel('b','FontSize',14);
set(gca,'FontSize',14); % size of tick marks on both axes
text(10, 0.96, '\nu=0','Fontsize',14)
text(10, 0.8, '\nu=1','Fontsize',14)
text(10, 0.55, '\nu=2','Fontsize',14)
%
text(0.1, 0.3, 'a=0','Fontsize',14)
text(2.5, 0.3, 'a=50','Fontsize',14)
%
text(3.3, 0.2, 'a=0','Fontsize',14)
text(5.8, 0.2, 'a=50','Fontsize',14)
%
text(6, 0.1, 'a=0','Fontsize',14)
text(8.8, 0.1, 'a=50','Fontsize',14)
pause
close all