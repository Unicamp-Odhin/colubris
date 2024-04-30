# Estação metereologica LoRaWAN | Colubris

A Colubris é uma placa de hardware aberto baseada no microcontrolador ESP32-S2 e equipada com um módulo LoRa SX1262 integrado. Além disso, ela possui um sistema de gerenciamento de bateria que permite carregar e utilizar baterias diretamente pela placa. A principal finalidade da Colubris é equipar estações meteorológicas que operarão em áreas remotas, mas ela é versátil o suficiente para ser usada em outros dispositivos que necessitem de comunicação de longo alcance.

![Placa Colubris soldada](docs/src/assets/placa_soldada_frente.jpg)

## Desenvolvedores:

Autor: Julio Nunes Avelar.

## Hardware

Principal:

- ESP32S2/ESP32
- EByte E22-900M22 (SX1262)
- TP4056
- DW01
- 8205A
- Mosfet Canal P IRF4905 ou IRF9540
- Diodo Schottky 1n5819
- PCB impressa
- Botões
- Resistores diversos
- Capacitores diveros

A lista completa pode ser consultada na [documentação](https://embarcacoes.ic.unicamp.br/colubris/build/)

Opcional:

- Modulo de Carga TP4056
- Bateria 18650 4.2V 2600mAh
- DHT22
- Sensor de Umidade do Solo
- Sensor de Nivel de Água
- Sensor de Chuva
- Sensor de Vento
- BME280
- BH1750
- Display OLED 0.96" 128x64 I2C
- Case 3D impressa em ABS

## Software

- [ESP-IDF](https://docs.espressif.com/projects/esp-idf/en/latest/esp32/)

## Pré-requisitos:

- [ESP-IDF](https://docs.espressif.com/projects/esp-idf/en/latest/esp32/get-started/).

Você precisara do ESPIDF para compilar e gravar o Firmware na Placa.

## Configurações:

O Firmware está localizado em colubris, para acessar o diretorio use:

```bash
cd colubris
```

## Menu config:

Para gravar o firmware será necessario realizar alguns ajustes no menu config.

Para "invocar" o ESPID, utilize:

```bash
get_idf
```

Após invocar o IDF, nó diretorio, será necessario escolher o MCU, para utilizar o ESP32S2, utilize:

```bash
idf.py set-target esp32s2
```

Se você estiver usando a extensão do VS-Code, existe uma opção para isso no menu inferior (Elá tem uma caixa com engrenagens como icone e do lado esta escrito esp32 ou esp32s2).

Após escolher o MCU, sera necessario realizar algumas configurações no menu config.

Para acessar o menuconfig utilize:

```bash
idf.py menuconfig
```

ou utilize a opção da extensão do VS-Code (Esta opção também está no menu inferior e tem como icone uma unica engrenagem),

Após acessar menuconfig, configure as seguintes opções:

- Configure a flash com 80mhz.
- Coloque a flash com tamanho minimo de 4 MBs.
- Escolha uma tabela de partições personalizadas.
- Coloque a frequencia da CPU em 240mhz.
- Habilite o https_client.
- Habilite a calibração do ADC.
- Habilite o componente esp_https_server.

Após realizar essas configurações, salve e saia.

## Gravando:

Para realizar a gravação primeiro será necessario realizar a compilação do firmware, é possivel compilar utilizando o comando

```bash
idf.py build
```

Após compilar o firmware para gravalo utilize:

```bash
idf.py flash
```

Caso queira utilizar o monitor serial para ver os logs, utilize:

```bash
idf.py monitor
```

Para executar tudo de uma vez, utilize:

```bash
idf.py build flash monitor
```

Esse passo a passo também pode ser realizado pela extensão do ESPIDF para o VS-Code, basta selecionar a opção: **"ESP-IDF build, flash and monitor"**.

## Organização do Projeto

O projeto é organizado em sete pastas principais:

- **3d-design**: Esta pasta contém os modelos 3D desenvolvidos para o projeto.

- **docs**: Toda a documentação dos componentes e do projeto está localizada nesta pasta.

- **colubris**: Esta pasta armazena o firmware oficial do projeto.

- **documents**: Nesta pasta, você encontrará esquemáticos compilados e datasheets relacionados ao projeto.

- **kicad-project**: Aqui estão o projeto KiCad da placa de circuito impresso (PCB) e os esquemáticos do projeto.

- **examples**: Esta pasta oferece exemplos de uso do projeto para facilitar a implementação.

O projeto foi organizado dessa forma para facilitar o acesso a diferentes aspectos e componentes do projeto.

## Duvidas e Bugs:

Em caso de alguma duvida, bug na aplicação ou sujestão, utilize o menu issues do [Gitlab](https://gitlab.com/embarcacoes/open-hardware-day-site/-/issues).

## Licença:

O hardware é disponibilizado sob a [CERN Open Hardware Licence (OHL) V2](https://gitlab.com/embarcacoes/estacao-metereologica-lorawan/-/blob/main/LICENSE.md?ref_type=heads), na versão Weakly Reciprocal [(CERN OHL-W)](https://gitlab.com/embarcacoes/estacao-metereologica-lorawan/-/blob/main/LICENSE.md?ref_type=heads). A licença pode ser encontrada na raiz do [repositório](https://gitlab.com/embarcacoes/estacao-metereologica-lorawan/-/blob/main/LICENSE.md?ref_type=heads).

O software é disponibilizado sob a [Licença MIT](https://gitlab.com/embarcacoes/estacao-metereologica-lorawan/-/blob/main/colubris/LICENSE.md?ref_type=heads), que também pode ser consultada no [GitLab](https://gitlab.com/embarcacoes/estacao-metereologica-lorawan/-/blob/main/colubris/LICENSE.md?ref_type=heads).

A documentação é disponibilizada sob a [Licença Creative Commons](https://gitlab.com/embarcacoes/estacao-metereologica-lorawan/-/blob/main/docs/LICENSE.md?ref_type=heads) e também está acessível no [GitLab](https://gitlab.com/embarcacoes/estacao-metereologica-lorawan/-/blob/main/docs/LICENSE.md?ref_type=heads).
