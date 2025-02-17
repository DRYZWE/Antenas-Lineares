% Frequencias em MHz
frequencias_MHz = [950, 1000, 1050, 1100, 1150, 1200];
frequencias_Hz = frequencias_MHz * 1e6; % Converte para Hz

% Dados convertidos para metros
min1 = [9.18, 17.82, 16.35, 15.04, 18.5, 13.29] * 1e-2; % Primeiro mínimo em metros
min2 = [25.01, 32.8, 30.76, 29.1, 30.63, 25.73] * 1e-2; % Segundo mínimo em metros
ld = [9.23, 8.89, 8.67, 8.51, 7.57, 7.8] * 1e-2;        % lamba (λΔ) em metros
delta_min = [12.19, 1.63, 2.2, 1.51, 10.05, 12.22] * 1e-2; % Diferença entre mínimos em metros

% Dados de Vmax e Vmin
Vmax = [150, 160, 150, 170, 115, 100] * 1e-3; % Converte mV para V
Vmin = [18, 34, 50, 64, 50, 50] * 1e-3;       % Converte mV para V

% Inicializa vetor de SWR corrigido
SWR_corrigido = zeros(1, length(frequencias_MHz));

% Calculo do SWR corrigido para cada frequencia
for k = 1:length(frequencias_MHz)
    l = delta_min(k); % Diferença entre mínimos
    lambda_z = ld(k); % Comprimento de onda corrigido

    % Fator de correção m
    m = -0.3 / log10(cos(pi * l / lambda_z));

    % SWR corrigido
    SWR_corrigido(k) = (Vmax(k) / Vmin(k))^(1 / m);
end

% Gera grafico de SWR corrigido em função da frequência
plot(frequencias_MHz, SWR_corrigido, 'o-b', 'LineWidth', 2, 'MarkerSize', 8);
xlabel('Frequencia (MHz)');
ylabel('SWR Corrigido');
title('SWR Corrigido X Frequencia');
grid on;
