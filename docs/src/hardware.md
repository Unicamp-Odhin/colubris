# Hardware

## Limitações de Alimentação e Bateria

A placa pode ser alimentada com uma tensão de até 8V e suporta baterias LiPo com uma tensão máxima de até 4.2V.

## Microcontrolador

O projeto utiliza o microcontrolador ESP32-S2, fabricado pela Espressif. Esta escolha foi feita por seu alto desempenho e baixo consumo de energia, que é inferior aos modelos ESP32 e ESP32S3. Além disso, o ESP32-S2 oferece os recursos necessários para este projeto sem excessos.

Mais informações sobre o módulo estão disponíveis em: [ESP32-S2 - Espressif](https://www.espressif.com/en/products/socs/esp32-s2).

## Módulo LoRa

O módulo LoRa selecionado para o projeto é o SX1262 devido ao seu alcance superior em comparação com o SX1276 e seu menor consumo de energia. O módulo utilizado é fabricado pela Ebyte.

Mais informações sobre o módulo estão disponíveis em: [SX1262 - Ebyte](https://www.ebyte.com/en/product-view-news.aspx?id=437).

## Controlador de Carga

O projeto emprega o controlador de carga de bateria TP4056, auxiliado pelo circuito de proteção de bateria composto pelos CIs 8295A e DW01. Além disso, o circuito permite o carregamento da bateria enquanto o circuito principal é alimentado por uma fonte externa.
