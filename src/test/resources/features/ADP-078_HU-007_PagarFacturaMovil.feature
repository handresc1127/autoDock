#Author: Alexandra Lasprilla Cardona
#Keywords Summary :
@issue:ADP-78 @MiCuenta
Feature: HU007 Pagar Factura Movil
  
  Yo como usuario de mi cuenta Tigo 
  Quiero ingresar al menú resumen
  Para realizar el pago de la factura móvil

  Background: Borrar Datos de Navegacion y Autenticarse
    Given se borran cookies del navegador
    And Estoy en la página de inicio "Página mi cuenta tigo" en la url "https://tigoselfcareregional-uat-co.tigocloud.net"
    When doy clic en "Ingresar"
    And ingreso "automatizacionmicuenta@gmail.com" en el campo "Correo Mi Cuenta"
    And doy clic en "Validar Mi Cuenta"
    And doy clic en "Continuar con Gmail"
    And doy clic en "Siguiente Gmail correo"
    And desencripto "bXWxspvWWuLLx3rxzheNMw==" y lo guardo en "Clave guardada con seguridad"
    And ingreso "Clave guardada con seguridad" en el campo "Contrasena Gmail"
    And doy clic en "Siguiente Gmail pass"
    And Espero 1 segundos

  Scenario: Mi Cuenta - Pago factura línea pospago
    And doy clic en "Seleccion MSISDN" si es visible
    And Espero 2 segundos
    And doy clic en "No Linea Hibrido" si es visible
    And Espero 1 segundos
    And doy clic en "Seleccion MSISDN" si es visible
    And Espero 2 segundos
    And doy clic en "Linea Hibrido" si es visible
    And doy clic en "Facturación" si es visible
    And doy clic en "Pagar Factura"
    Then llevará al formulario con el objeto "Pagar tu Factura"

  Scenario: Mi Cuenta - Pago de factura línea prepago
    And doy clic en "Seleccion MSISDN" si es visible
    And Espero 2 segundos
    And doy clic en "No Linea Prepago" si es visible
    And Espero 1 segundos
    And doy clic en "Seleccion MSISDN" si es visible
    And Espero 2 segundos
    And doy clic en "Linea Prepago" si es visible
    Then el campo "Facturación" no existe
