#Author: Jose David Moreno Serrano
#Keywords Summary :
@issue:ADP-170 @Pasarela
Feature: HU016 Pagos Exitosos Y Rechazados
  Como Tigoune
  Quiero pruebas automatizadas de los pagos con los diferentes medios de pago
  Para garantizar el correcto funcionamiento de pasarela

  Background: seleccion medio de pago
    Given Estoy en la página de inicio "Pagina pago de facturas" en la url "https://transaccionesco-uat.tigocloud.net/servicios/facturas"
    When doy clic en "Movil"
    And ingreso "movil_msisdn con facturas" en el campo "Tu línea Tigo"
    And ingreso "automatizacionmicuenta@gmail.com" en el campo "Correo electrónico M"
    And doy clic en "Consultar M clic"
    Then llevará al formulario con el objeto "title-detail"

  Scenario: Pasarela - Pago Rechazado con Tarjeta de credito
    Given Estoy en la página de selección de formas de pago con el tipo "Tarjeta de Crédito" seleccionado
    And ingreso "41111111111111111" en el campo "Número de tarjeta"
    And ingreso "123" en el campo "CVV"
    And selecciono "nextMM()" en el campo "MM"
    And selecciono "nextYYYY()" en el campo "AA"
    And ingreso "REJECTED" en el campo "Nombre"
    And selecciono "CC" en el campo "tipo cc"
    And ingreso "1234567896" en el campo "número de documento TC"
    And ingreso "3004186619" en el campo "celular comprador"
    And doy clic en "Autorizo esta tarjeta para futuros pagos"
    When doy clic en "Pagar"
    And Espero 1 segundos
    Then el campo "Mensaje De Pago" tiene el texto "Lo sentimos, se presentó un error en la comunicación con tu banco. Por favor intenta de nuevo"
    
    
    Scenario: Pasarela - Pago Exitoso con Tarjeta de credito
    Given Estoy en la página de selección de formas de pago con el tipo "Tarjeta de Crédito" seleccionado
    And ingreso "41111111111111111" en el campo "Número de tarjeta"
    And ingreso "777" en el campo "CVV"
    And selecciono "nextMM()" en el campo "MM"
    And selecciono "nextYYYY()" en el campo "AA"
    And ingreso "APPROVED" en el campo "Nombre"
    And selecciono "CC" en el campo "tipo cc"
    And ingreso "1234567896" en el campo "número de documento TC"
    And ingreso "3004186619" en el campo "celular comprador"
    And doy clic en "Autorizo esta tarjeta para futuros pagos"
    When doy clic en "Pagar"
    And Espero 1 segundos
    Then el campo "Mensaje De Pago" tiene el texto "Tu pago ha sido exitoso"
    
     