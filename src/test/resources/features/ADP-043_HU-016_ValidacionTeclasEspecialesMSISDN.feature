#Author: Alexandra Lasprilla
#Keywords Summary : MSISDN
@issue:ADP-43 @Recargas
Feature: HU016 Validación Teclas Especiales MSISND
  Como Tigoune
  Quiero realizar pruebas automatizadas sobre el campo "Número Celular" en el formulario de paquetes y recargas
  Para garantizar que se pueden utilizar las teclas especiales sobre dicho campo

  Scenario: Recargas - Recarga de página con F5
    Given Estoy en la página de inicio "Pagina paquetes" en la url "https://transaccionesco-uat.tigocloud.net/servicios/paquetes?clear=true"
    When doy clic en "Recarga"
    And ingreso "" en el campo "Ingresa tu línea Tigo"
    And Presiono la tecla "F5"
    Then La página se recarga

  Scenario Outline: Recargas - Validación de teclas especiales campo "Tu línea Tigo"
    Given Estoy en la página de inicio "Pagina paquetes" en la url "https://transaccionesco-uat.tigocloud.net/servicios/paquetes?clear=true"
    When doy clic en "Recarga"
    And ingreso <msisdn> en el campo "Ingresa tu línea Tigo"
    And Presiono la tecla <tecla1>
    And Presiono la tecla <tecla2>
    And Presiono la tecla <tecla3>
    Then mostrará en el valor del campo "Ingresa tu línea Tigo" el texto <resultado>

    Examples: 
      | msisdn      | tecla1   | tecla2             | tecla3      | resultado      |
      | "300"       | "inicio" | "flecha derecha"   | "backspace" | "(300"          |
      | "301200"    | "inicio" | "flecha derecha"   | "backspace" | "(301) 200"     |
      | "30159874"  | "inicio" | "flecha derecha"   | "backspace" | "(301) 598-74"  |
      | "301623784" | "inicio" | "flecha derecha"   | "backspace" | "(301) 623-784" |
      | "300"       | "inicio" | "suprimir"         | ""          | "(300"          |
      | "301200"    | "inicio" | "suprimir"         | ""          | "(301) 200"     |
      | "30159874"  | "inicio" | "suprimir"         | ""          | "(301) 598-74"  |
      | "301623784" | "inicio" | "suprimir"         | ""          | "(301) 623-784" |
      | "300"       | "fin"    | "backspace"        | ""          | "(30"          |
      | "301200"    | "fin"    | "backspace"        | ""          | "(301) 20"     |
      | "30159874"  | "fin"    | "backspace"        | ""          | "(301) 598-7"  |
      | "301623784" | "fin"    | "backspace"        | ""          | "(301) 623-78" |
      | "300"       | "fin"    | "flecha izquierda" | "suprimir"  | "(30"          |
      | "301200"    | "fin"    | "flecha izquierda" | "suprimir"  | "(301) 20"     |
      | "30159874"  | "fin"    | "flecha izquierda" | "suprimir"  | "(301) 598-7"  |
      | "301623784" | "fin"    | "flecha izquierda" | "suprimir"  | "(301) 623-78" |
