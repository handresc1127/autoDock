#Author: Alexandra Lasprilla
#Keywords Summary :
@issue:ADP-129 @MiCuenta
Feature: HU033 Consulta Servicio Television
  
  Yo como usuario de mi cuenta Tigo 
  Quiero consultar el detalle de mi servicio de televisión
  Para Ver información de mis dispositivos y de mi suscripción

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

  Scenario: Mi Cuenta - Usuario sin servicios de televisión
    And doy clic en "Seleccion MSISDN" si es visible
    And Espero 1 segundos
    And doy clic en "No linea Fija sin Television" si es visible
    And Espero 1 segundos
    And doy clic en "Seleccion MSISDN" si es visible
    And Espero 1 segundos
    And doy clic en "Linea Fija sin Television" si es visible
    And doy clic en "Servicios" si es visible
    Then el campo "Producto television detalles" no existe

  Scenario: Mi Cuenta - Usuario de televisión tradicional
    And doy clic en "Seleccion MSISDN" si es visible
    And Espero 1 segundos
    And doy clic en "No linea Fija" si es visible
    And Espero 1 segundos
    And doy clic en "Seleccion MSISDN" si es visible
    And Espero 1 segundos
    And doy clic en "Linea Fija" si es visible
    And doy clic en "Servicios" si es visible
    Then llevará al formulario con el objeto "Producto television detalles"
    Then llevará al formulario con el objeto "Nombre servicio TV Tradicional"
    Then llevará al formulario con el objeto "Numero servicio TV Tradicional"
    Then llevará al formulario con el objeto "Estado servicio TV Tradicional"
    And doy clic en "Producto television detalles"
    And llevará al formulario con el objeto "Television"
    And doy clic en "Servicios" si es visible
    And doy clic en "Diagnosticar Fallas"
    And el campo "Modal Diagnostico fallas" tiene el texto "¡Espera mientras revisamos tus servicios en linea!"

  Scenario: Mi Cuenta - Usuario de televisión oneTV
    And doy clic en "Seleccion MSISDN" si es visible
    And Espero 2 segundos
    And doy clic en "No linea Fija Wifi" si es visible
    And Espero 1 segundos
    And doy clic en "Seleccion MSISDN" si es visible
    And Espero 2 segundos
    And doy clic en "Linea Fija Wifi" si es visible
    And doy clic en "Servicios" si es visible
    Then llevará al formulario con el objeto "Producto television detalles"
    Then llevará al formulario con el objeto "Nombre servicio TV OneTv"
    Then llevará al formulario con el objeto "Numero servicio TV OneTv"
    Then llevará al formulario con el objeto "Estado servicio TV OneTv"
    And doy clic en "Producto television detalles"
    And llevará al formulario con el objeto "Television"
    And doy clic en "Servicios" si es visible
    And doy clic en "Diagnosticar Fallas"
    And el campo "Modal Diagnostico fallas" tiene el texto "¡Espera mientras revisamos tus servicios en linea!"
