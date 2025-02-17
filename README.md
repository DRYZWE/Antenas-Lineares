# Simulação de Diagramas de Radiação de Dipolos no GNU Octave

Este repositório contém códigos em **GNU Octave** para simular e visualizar diagramas de radiação de diferentes tipos de dipolos, incluindo:

- **Dipolo de comprimento 1.4λ** (análise de lóbulos secundários).
- **Dipolo infinitesimal** (padrão clássico de "8" no plano E).

## Requisitos

Para rodar os códigos, você precisa do **GNU Octave** instalado no seu sistema. Caso ainda não tenha, pode instalá-lo via:

- Ubuntu/Debian:
  ```sh
  sudo apt install octave
  ```
- Windows/macOS: [Baixe aqui](https://www.gnu.org/software/octave/download)

## Códigos Disponíveis

### 1. **Diagrama de Radiação do Dipolo de Comprimento 1.4λ**

Arquivo: [`dipolo_1_4lambda.m`](dipolo_1_4lambda.m)

#### **Como executar:**

```sh
  octave dipolo_1_4lambda.m
```

### 2. **Diagrama de Radiação do Dipolo Infinitesimal**

Arquivo: [`dipolo_infinitesimal.m`](dipolo_infinitesimal.m)

#### **Como executar:**

```sh
  octave dipolo_infinitesimal.m
```
### 3. **Cálculo de SWR**

Arquivo: [`calculo_swr.m`](calculo_swr.m)

#### **Como executar:**

```sh
  octave calculo_swr.m
```
## Exemplo de Saída Gráfica

- **Dipolo de 1.4λ:** Padrão com lóbulos secundários.
- **Dipolo Infinitesimal:** Formato de "8", sem lóbulos secundários.
- **SWR Corrigido:** Gráfico da relação de ondas estacionárias em função da frequência.

## Contribuição

Se quiser contribuir, fique à vontade para fazer um fork do repositório, modificar os scripts e enviar um pull request!

## Licença

Este projeto está sob a licença MIT.

