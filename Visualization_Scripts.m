% Visualization_Scripts
% The images drawn are the original versions and have not been embellished.

%% ----------------------------------------------------------
% Plotting Figure 2
load('fig2.mat');

% Figure 2 (a)
figure;
plot(M, M_dif_delta_IG, '-o', 'LineWidth', 2); % \delta = \eta = 0.1
xlabel('M', 'FontSize', 16, 'FontName', 'Helvetica');
ylabel('Fraction of cooperation', 'FontSize', 16, 'FontName', 'Helvetica');
xlim([1, 50]);
ylim([0, 1]);
legend('\delta = \eta = 0', '\delta = \eta = 0.2', '\delta = \eta = 0.4', 'Location', 'Best');

% Figure 2 (b)
figure;
plot(M, M_dif_delta_PGG, '-o', 'LineWidth', 2); % \delta = \eta = 0.1
xlabel('M', 'FontSize', 16, 'FontName', 'Helvetica');
ylabel('Fraction of cooperation', 'FontSize', 16, 'FontName', 'Helvetica');
xlim([1, 50]);
ylim([0, 1]);
legend('\delta = \eta = 0', '\delta = \eta = 0.2', '\delta = \eta = 0.4', 'Location', 'Best');

% Figure 2 (c)
figure;
plot(M, M_dif_delta_payoff, '-o', 'LineWidth', 2);
xlabel('M');
ylabel('Average payoffs');
ylim([-10, 30]);
xlim([1, 50]);
legend('\delta = \eta = 0', '\delta = \eta = 0.2', '\delta = \eta = 0.4', 'Location', 'Best');


% Figure 2 (d)
figure;
semilogx(1:T, coop_c, 'r-', 'LineWidth', 2);
hold on
semilogx(1:T, coop_c2, 'b-', 'LineWidth', 2);
legend('M=12','M=18')
grid on;
xlabel('MCS');
ylabel('EoC');

% Figure 2 (e)
figure;
x = 1:4; 
hold on;
b1 = bar(x - 0.2, data_M12, 0.4);
b2 = bar(x + 0.2, data_M18, 0.4);
set(gca, 'XTick', x);
set(gca, 'XTickLabel', {'C-C', 'C-D', 'D-C', 'D-D'});
ylabel('Fraction');
xlabel('Coupled strategy profiles');
legend({'M=12', 'M=18'}, 'Location', 'best');
hold off;

% Figure 2 (f)
figure;
semilogx(1:2000, coop_ratio_layer1, 'r-', 'LineWidth', 2);
hold on
semilogx(1:2000, coop_ratio_layer2, 'b-', 'LineWidth', 2);
semilogx(1:2000, coop_ratio_layer3, 'r--', 'LineWidth', 2);
semilogx(1:2000, coop_ratio_layer4, 'b--', 'LineWidth', 2);
legend('M=8, Layer 1','M=8, Layer 2','M=22, Layer 1','M=22, Layer 2')
grid on;
xlabel('MCS');
ylabel('Fraction of cooperators');
xlim([1, 2000]);
hold off;

%% ----------------------------------------------------------
% Plotting Figure 3
load('fig3.mat');

% Figure 3 (a)
figure;
semilogx(1:T, coop_ratio_layer1_M12, 'r-', 'LineWidth', 2);
hold on
semilogx(1:T, coop_ratio_layer2_M12, 'b-', 'LineWidth', 2);
legend('IG-layer','PGG-layer', 'Location', 'Best')
grid on;
xlabel('MCS');
ylabel('Fraction of cooperators');
xlim([1, T]);
hold off;

% Figure 3 (b)
figure;
imagesc(strategy_layer1_M12);
colormap(gca, cmap_layer1);
axis equal tight;
axis off

% Figure 3 (c)
figure;
imagesc(strategy_layer2_M12);
colormap(gca, cmap_layer2);
axis equal tight;
axis off

% Figure 3 (d)
figure;
imagesc(coupled_M12);
colormap(gca, cmap_layer);
axis equal tight;
axis off

% Figure 3 (e)
figure;
semilogx(1:T, coop_ratio_layer1_M18, 'r-', 'LineWidth', 2);
hold on
semilogx(1:T, coop_ratio_layer2_M18, 'b-', 'LineWidth', 2);
legend('IG-layer','PGG-layer', 'Location', 'Best')
grid on;
xlabel('MCS');
ylabel('Fraction of cooperators');
xlim([1, T]);
hold off;

% Figure 3 (f)
figure;
imagesc(strategy_layer1_M18);
colormap(gca, cmap_layer1);
axis equal tight;
axis off

% Figure 3 (g)
figure;
imagesc(strategy_layer2_M18);
colormap(gca, cmap_layer2);
axis equal tight;
axis off

% Figure 3 (h)
figure;
imagesc(coupled_M18);
colormap(gca, cmap_layer);
axis equal tight;
axis off


%% ----------------------------------------------------------
% Plotting Figure 4
load('fig4.mat');

% Figure 4 (a)
figure;
plot(rr, r_dif_delta_IG, '-o', 'LineWidth', 2);
xlabel('r');
ylabel('Fraction of cooperation');
xlim([3, 5.5]);
ylim([0, 1]);
legend('\delta = \eta = 0', '\delta = \eta = 0.2', '\delta = \eta = 0.4', 'Location', 'Best');

% Figure 4 (b)
figure;
plot(rr, r_dif_delta_PGG, '-o', 'LineWidth', 2);
xlabel('r');
ylabel('Fraction of cooperation');
xlim([3, 5.5]);
ylim([0, 1]);
legend('\delta = \eta = 0', '\delta = \eta = 0.2', '\delta = \eta = 0.4', 'Location', 'Best');

% Figure 4 (c)
figure;
plot(rr, r_dif_delta_payoff, '-o', 'LineWidth', 2);
xlabel('r');
ylabel('Fraction of cooperation');
xlim([3, 5.5]);
legend('\delta = \eta = 0', '\delta = \eta = 0.2', '\delta = \eta = 0.4', 'Location', 'Best');

% Figure 4 (d)
figure;
semilogx(1:T, coop_ratio_layer1, 'r--', 'LineWidth', 2);
hold on
semilogx(1:T, coop_ratio_layer2, 'b--', 'LineWidth', 2);
semilogx(1:T, coop_ratio_layer3, 'r-', 'LineWidth', 2);
semilogx(1:T, coop_ratio_layer4, 'b-', 'LineWidth', 2);
legend('\delta=0.2, Layer 1','\delta=0.2, Layer 2','\delta=0.4 Layer 1','\delta=0.4, Layer 2', 'Location', 'Best')
grid on;
xlabel('MCS');
ylabel('Fraction of cooperators');
xlim([1, T]);
hold off;

% Figure 4 (e)
figure;
semilogx(1:T, mean_allM, 'b-', 'LineWidth', 2); hold on;
semilogx(1:T, mean_allr, 'r-', 'LineWidth', 2);
xlabel('MCS');
ylabel('Fraction of cooperators');
legend('M^{*}', 'r^{*}');
grid on;
xlim([1, T]);
ylabel('Value of M^{*} and r^{*}');

% Figure 4 (f)
delta = {'$\delta=\eta=0.2$', '$\delta=\eta=0.4$'};
figure;
bar_handle = bar([data1; data2]', 'grouped');
bar_handle(1).FaceColor = [255, 185, 0] / 255; 
bar_handle(2).FaceColor = [67, 91, 196] / 255;
set(gca, 'XTickLabel', delta, 'TickLabelInterpreter', 'latex', 'FontSize', 12);
xlabel('', 'Interpreter', 'latex', 'FontSize', 12);
ylabel('Transition probabilities', 'Interpreter', 'tex', 'FontSize', 12);
legend({'$W_{C\to D}^{[1]}$', '$W_{C\to D}^{[2]}$'}, 'Interpreter', 'latex', 'FontSize', 10, 'Location', 'best');

%% ----------------------------------------------------------
% Plotting Figure 5
load('fig5.mat');

% Figure 5 (a)
figure;
semilogx(1:T, coop_ratio_layer1, 'r-', 'LineWidth', 2);
hold on
semilogx(1:T, coop_ratio_layer2, 'b-', 'LineWidth', 2);
legend('IG-layer','PGG-layer', 'Location', 'Best')
grid on;
xlabel('MCS');
ylabel('Fraction of cooperators');
xlim([1, T]);
hold off;

% Figure 5 (b)
figure;
imagesc(M_35);
axis equal tight;
axis off

% Figure 5 (c)
figure;
imagesc(r_35);
axis equal tight;
axis off

% Figure 5 (d)
figure;
semilogx(1:T, coop_ratio_layer3, 'r-', 'LineWidth', 2);
hold on
semilogx(1:T, coop_ratio_layer4, 'b-', 'LineWidth', 2);
legend('IG-layer','PGG-layer', 'Location', 'Best')
grid on;
xlabel('MCS');
ylabel('Fraction of cooperators');
xlim([1, T]);
hold off;

% Figure 5 (e)
figure;
imagesc(M_355);
axis equal tight;
axis off

% Figure 5 (f)
figure;
imagesc(r_355);
axis equal tight;
axis off


%% ----------------------------------------------------------
% Plotting Figure 6
load('fig6.mat');

% Figure 6 (a)
figure
pcolor(MM, rr, dif_IG');
shading interp
axis square
xlabel('M');
ylabel('r');
% Set color mapping (Blue - white - Red)
max_abs = max(abs(dif_IG(:)));
caxis([-max_abs, max_abs]);
n_colors = 256;
neg_colors = [linspace(0, 1, n_colors/2)', linspace(0, 1, n_colors/2)', ones(n_colors/2, 1)];
pos_colors = [ones(n_colors/2, 1), linspace(1, 0, n_colors/2)', linspace(1, 0, n_colors/2)'];
custom_cmap = [neg_colors; pos_colors];
colormap(custom_cmap);
colorbar;

% Figure 6 (b)
figure
pcolor(MM, rr, dif_PGG');
shading interp
axis square
colormap(viridis)
colorbar;
xlabel('M');
ylabel('r');
max_abs = max(abs(dif_PGG(:)));
caxis([-max_abs, max_abs]);
n_colors = 256; 
neg_colors = [linspace(0, 1, n_colors/2)', linspace(0, 1, n_colors/2)', ones(n_colors/2, 1)];
pos_colors = [ones(n_colors/2, 1), linspace(1, 0, n_colors/2)', linspace(1, 0, n_colors/2)'];
custom_cmap = [neg_colors; pos_colors];
colormap(custom_cmap);
colorbar;


%% ----------------------------------------------------------
% Plotting Figure 7
load('fig7.mat');

% Figure 7 (a)
figure('Color','white','Position',[100 100 600 400]);
yyaxis left
plot(delta, M15_IG, 'b-o', ...
    'LineWidth', 2, ... 
    'MarkerSize', 8, ...
    'DisplayName','IG-layer'); 
hold on;
plot(delta, M15_PGG, 'b-d', ...
    'LineWidth', 2, ...
    'MarkerSize', 8, ...
    'DisplayName','PGG-layer'); 
ylabel('Fraction of cooperation');
ylim([0 1])
yyaxis right
plot(delta, M15_PAY, 'r:d', ...
    'LineWidth', 2, ...
    'MarkerSize', 6, ...
    'DisplayName','Average payoff');
ylabel('Average payoff'); 
xlabel('\delta, \eta'); 
grid off;  
legend('Location','best'); 
set(gca, 'FontName', 'Times New Roman', 'FontSize', 14);

% Figure 7 (b)
figure
pcolor(M15_rt_delta_eta_IG);
shading interp
axis square
caxis([0 1])
colormap(viridis)
colorbar;
xlabel('\delta');
ylabel('\eta');

% Figure 7 (c)
figure
pcolor(M15_rt_delta_eta_PGG);
shading interp
axis square
colormap(viridis)
caxis([0 1])
colorbar;
xlabel('\delta');
ylabel('\eta');

% Figure 7 (d)
figure
pcolor(M15_rt_payoff);
shading interp
axis square
colormap(viridis)
colorbar;
xlabel('\delta');
ylabel('\eta');

% Figure 7 (e)
figure('Color','white','Position',[100 100 600 400]);
yyaxis left
plot(delta, M25_IG, 'b-o', ...
    'LineWidth', 2, ... 
    'MarkerSize', 8, ...
    'DisplayName','IG-layer'); 
hold on;
plot(delta, M25_PGG, 'b-d', ...
    'LineWidth', 2, ...
    'MarkerSize', 8, ...
    'DisplayName','PGG-layer'); 
ylabel('Fraction of cooperation');
ylim([0 1])
yyaxis right
plot(delta, M25_PAY, 'r:d', ...
    'LineWidth', 2, ...
    'MarkerSize', 6, ...
    'DisplayName','Average payoff');
ylabel('Average payoff'); 
xlabel('\delta, \eta'); 
grid off;  
legend('Location','best'); 
set(gca, 'FontName', 'Times New Roman', 'FontSize', 14);

% Figure 7 (f)
figure
pcolor(M25_rt_delta_eta_IG);
shading interp
axis square
caxis([0 1])
colormap(viridis)
colorbar;
xlabel('\delta');
ylabel('\eta');

% Figure 7 (g)
figure
pcolor(M25_rt_delta_eta_PGG);
shading interp
axis square
colormap(viridis)
caxis([0 1])
colorbar;
xlabel('\delta');
ylabel('\eta');

% Figure 7 (h)
figure
pcolor(M25_rt_payoff);
shading interp
axis square
colormap(viridis)
colorbar;
xlabel('\delta');
ylabel('\eta');


%% ----------------------------------------------------------
% Plotting Figure A1
load('figA1.mat');

% Figure A1 (a)
figure;
plot(M, dif_d_IG, '-o', 'LineWidth', 2);
xlabel('M', 'FontSize', 16, 'FontName', 'Helvetica');
ylabel('Fraction of cooperation', 'FontSize', 16, 'FontName', 'Helvetica');
xlim([1, 50]);
ylim([0, 1]);
legend('d=2', 'd=4', 'd=6', 'd=8', 'Location', 'Best');

% Figure A1 (d)
figure;
plot(M, dif_d_PGG, '-o', 'LineWidth', 2);
xlabel('M', 'FontSize', 16, 'FontName', 'Helvetica');
ylabel('Fraction of cooperation', 'FontSize', 16, 'FontName', 'Helvetica');
xlim([1, 50]);
ylim([0, 1]);
legend('d=2', 'd=4', 'd=6', 'd=8', 'Location', 'Best');

% Figure A1 (b)
figure;
plot(M, dif_beta_IG, '-o', 'LineWidth', 2);
xlabel('M', 'FontSize', 16, 'FontName', 'Helvetica');
ylabel('Fraction of cooperation', 'FontSize', 16, 'FontName', 'Helvetica');
xlim([1, 50]);
ylim([0, 1]);
legend('\beta=0.6', '\beta=1.0','\beta=1.4');

% Figure A1 (e)
figure;
plot(M, dif_beta_PGG, '-o', 'LineWidth', 2);
xlabel('M', 'FontSize', 16, 'FontName', 'Helvetica');
ylabel('Fraction of cooperation', 'FontSize', 16, 'FontName', 'Helvetica');
xlim([1, 50]);
ylim([0, 1]);
legend('\beta=0.6', '\beta=1.0','\beta=1.4');

% Figure A1 (c)
figure;
plot(M, dif_lam_IG, '-o', 'LineWidth', 2);
xlabel('$M$', 'FontSize', 16, 'FontName', 'Helvetica');
ylabel('Fraction of cooperation', 'FontSize', 16, 'FontName', 'Helvetica');
xlim([1, 50]);
ylim([0, 1]);
legend('$\lambda=1.5$', '$\lambda=2.0$','$\lambda=3.0$');

% Figure A1 (f)
figure;
plot(M, dif_lam_PGG, '-o', 'LineWidth', 2);
xlabel('$M$', 'FontSize', 16, 'FontName', 'Helvetica');
ylabel('Fraction of cooperation', 'FontSize', 16, 'FontName', 'Helvetica');
xlim([1, 50]);
ylim([0, 1]);
legend('$\lambda=1.5$', '$\lambda=2.0$','$\lambda=3.0$');
