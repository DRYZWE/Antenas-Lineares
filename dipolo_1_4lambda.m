clc; clear; close all;

% Parâmetros
f0 = 300e6;      % Frequência de 300 MHz
c = 3e8;         % Velocidade da luz no vácuo (m/s)
lambda = c / f0; % Comprimento de onda
L = 1.4 * lambda; % Comprimento do dipolo

% Ângulos para varredura do padrão de radiação
theta = linspace(0, 2*pi, 360);

% Função de radiação do dipolo
beta = 2 * pi / lambda;
F = abs((cos(beta*L/2 .* cos(theta)) - cos(beta*L/2)) ./ sin(theta));
F(theta == 0 | theta == pi) = 0; % Evita divisão por zero
F = F / max(F);

% Plot polar
figure;
polar(theta, F, 'b');
title('Diagrama de Radiação do Dipolo L = 1.4\lambda');
grid on;
