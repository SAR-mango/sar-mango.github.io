clc; clear; close all;
set(groot, ...
    'defaultAxesTickLabelInterpreter',  'latex', ...
    'defaultTextInterpreter',           'latex', ...
    'defaultLegendInterpreter',         'latex', ...
    'defaultAxesFontSize',              12);
%% plots for introduction
t = 0:0.001:1;
r = sin(2*pi*t);
x = zeros(size(t));
for n = 0:1
    x = x + pulse(t-n,1);
    x = x - pulse(t-n-0.5,1);
end
figure;
plot(t,x,'LineWidth',2,'Color','blue');
hold on;
plot(t,r,'LineWidth',2,'Color','#75147c',LineStyle=':');
hold off;
grid on;
pbaspect([3,2,1]);
legend('Parabolic Approximation\,\,\,','True Sinusoid','Interpreter','latex');
% Format tick labels with LaTeX
ax = gca;
ax.XTickLabel = arrayfun(@(x) sprintf('$$%g$$', x), ax.XTick, 'UniformOutput', false);
ax.YTickLabel = arrayfun(@(y) sprintf('$$%g$$', y), ax.YTick, 'UniformOutput', false);
exportgraphics(gcf,'/Users/erksampat/dev/sar-mango.github.io/assets/sinusoid_vs_parabola.svg');