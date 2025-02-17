clc; clear; close all;

% Ângulos para varredura
theta = linspace(0, 2*pi, 360);

% Padrão de radiação do dipolo infinitesimal
F = abs(sin(theta));
F = F / max(F);

% Plot polar
figure;
polar(theta, F, 'b');
title('Diagrama de Radiação do Dipolo Infinitesimal');
grid on;
