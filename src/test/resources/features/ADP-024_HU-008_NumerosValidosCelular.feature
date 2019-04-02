#Author: Alexandra Lasprilla Cardona
#Keywords Summary :
@issue:ADP-24 @Pasarela
Feature: HU008 Validación número Celular
  Como Tigoune
  Quiero realizar pruebas automatizadas de la consulta de facturas del servicio móvil
  Para garantizar que se pueden utilizar las teclas especiales básicas en el formulario de consulta de facturas

  Scenario Outline: Pasarela - MSISDN válido que no es Tigo
    Given Estoy en la página de inicio "Pagina pago de facturas" en la url "https://transaccionesco-uat.tigocloud.net/servicios/facturas"
    When doy clic en "Movil"
    And ingreso <msisdn> en el campo "Tu línea Tigo"
    And ingreso <email> en el campo "Correo electrónicoM"
    And doy clic en "Consultar M clic"
    Then el campo "Linea sin facturas" tiene el texto "No se encontraron datos en la consulta."
    And el campo "Linea sin facturas" tiene el atributo "background" en el valor "azul"
    And el campo "Linea sin facturas" tiene el atributo "color" en el valor "blanco"

    Examples: 
      | msisdn       | email                   |
      | "3000000000" | "prueba@prueba.com"     |
      | "3110000000" | "ejemplo@ejemplo.com"   |
      | "3150000000" | "casoexitoso@ti.go"     |
      | "3200000000" | "caso_exitoso@tigo.com" |

  Scenario: Pasarela - MSISDN válido Tigo sin facturas pendientes
    Given Estoy en la página de inicio "Pagina pago de facturas" en la url "https://transaccionesco-uat.tigocloud.net/servicios/facturas"
    When doy clic en "Movil"
    And ingreso "movil_msisdn sin facturas" en el campo "Tu línea Tigo"
    And ingreso "ejemplo@pruebas.com" en el campo "Correo electrónicoM"
    And doy clic en "Consultar M clic"
    Then el campo "Linea sin facturas" tiene el texto "No se encontraron datos en la consulta."
    And el campo "Linea sin facturas" tiene el atributo "background" en el valor "azul"
    And el campo "Linea sin facturas" tiene el atributo "color" en el valor "blanco"

  @CasoFeliz
  Scenario: Pasarela - MSISDN válido Tigo con facturas pendientes
    Given Estoy en la página de inicio "Pagina pago de facturas" en la url "https://transaccionesco-uat.tigocloud.net/servicios/facturas"
    When doy clic en "Movil"
    And ingreso "movil_msisdn con facturas" en el campo "Tu línea Tigo"
    And ingreso "prueba@prueba.com" en el campo "Correo electrónicoM"
    And doy clic en "Consultar M clic"
    Then llevará al formulario con el objeto "title-detail"

  Scenario: Pasarela - Visualización de datos de línea Tigo con facturas pendientes
    Given Estoy en la página de inicio "Pagina pago de facturas" en la url "https://transaccionesco-uat.tigocloud.net/servicios/facturas"
    When doy clic en "Movil"
    And ingreso "3043878232" en el campo "Tu línea Tigo"
    And ingreso "prueba@prueba.com" en el campo "Correo electrónicoM"
    And doy clic en "Consultar M clic"
    Then llevará al formulario con el objeto "title-detail"
    And el campo "title-detail" tiene el texto "RESUMEN DE TU TRANSACCIÓN"
    And el campo "Numero del Producto" tiene el texto "(304)*****32"
    And el campo "Fecha límite de pago" no está vacío
    And el campo "Referente de pago" no está vacío
    And el campo "Valor a pagar" no está vacío
