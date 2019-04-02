#Author: Nelson Mesa
#Keywords Summary :
@issue:ADP-83 @MiCuenta
Feature: HU012 Factura Digital
  
  YO como usuario de mi cuenta Tigo 
  QUIERO cambiar los datos de facturación
  PARA para recibir mi factura en mi correo electrónico

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

  Scenario: Mi Cuenta - Cambio a facturación Electrónica
    And doy clic en "Seleccion MSISDN" si es visible
    And Espero 2 segundos
    And doy clic en "No Linea arma tu Plan" si es visible
    And Espero 1 segundos
    And doy clic en "Seleccion MSISDN" si es visible
    And Espero 2 segundos
    And doy clic en "Linea arma tu Plan" si es visible
    And Espero 2 segundos
    And doy clic en "Facturacion" si es visible
    And doy clic en "Activa tu factura electrónica"
    And doy clic en "Impresa"
    And doy clic en "OK"
    And Espero 4 segundos
    Then el campo "Mensaje Confirmación" tiene el texto "Tus datos de facturación se han modificado correctamente."

  Scenario: Mi Cuenta - Cambio a facturación Impresa
    And doy clic en "Seleccion MSISDN" si es visible
    And Espero 2 segundos
    And doy clic en "No Linea arma tu Plan" si es visible
    And Espero 1 segundos
    And doy clic en "Seleccion MSISDN" si es visible
    And Espero 2 segundos
    And doy clic en "Linea arma tu Plan" si es visible
    And Espero 2 segundos
    And doy clic en "Facturacion" si es visible
    And doy clic en "Modificar Facturación"
    And doy clic en "Electronica"
    And doy clic en "OK"
    And Espero 4 segundos
    Then el campo "Mensaje Confirmación" tiene el texto "Tus datos de facturación se han modificado correctamente."
