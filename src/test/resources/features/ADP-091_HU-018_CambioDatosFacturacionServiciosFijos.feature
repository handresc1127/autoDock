#Author: Alexandra Lasprilla Cardona
#Keywords Summary :
@issue:ADP-91 @MiCuenta
Feature: HU018 Cambio Datos Facturacion Servicios Fijos
  
  Yo como usuario de mi cuenta Tigo 
  Quiero cambiar los datos de facturación
  Para para recibir la factura de mis servicios fijos en el correo electrónico

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

  Scenario: Mi Cuenta - Cambio Datos de Facturación
    And doy clic en "Seleccion MSISDN" si es visible
    And Espero 2 segundos
    And doy clic en "No Linea Fija" si es visible
    And Espero 1 segundos
    And doy clic en "Seleccion MSISDN" si es visible
    And Espero 2 segundos
    And doy clic en "Linea Fija" si es visible
    And doy clic en "Facturación" si es visible
    And doy clic en "Modificar Facturación"
    And doy clic en "Documento"
    And doy clic en "CC"
    And ingreso "123458745" en el campo "Número Documento"
    And ingreso "automatizacionmicuenta@gmail.com" en el campo "Correo Electronico Fijo"
    And doy clic en "OK"
    Then el campo "Mensaje Confirmación" tiene el texto "A partir de ahora recibirás tu factura en el correo electrónico automatizacionmicuenta@gmail.com"
