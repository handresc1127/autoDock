#Author: Alexandra Lasprilla Cardona
#Keywords Summary :
@issue:ADP-109 @MiCuenta
Feature: HU024 Detalles Servicios Fijos
  
  Yo como usuario de mi cuenta Tigo 
  Quiero ingresar a mis servicios fijos
  Para conocer la información y el detalle de los productos

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

  Scenario: Mi Cuenta - Detalles servicio Internet
    And doy clic en "Seleccion MSISDN" si es visible
    And Espero 2 segundos
    And doy clic en "No Linea fija" si es visible
    And Espero 1 segundos
    And doy clic en "Seleccion MSISDN" si es visible
    And Espero 2 segundos
    And doy clic en "Linea Fija" si es visible
    And doy clic en "Servicios" si es visible
    And doy clic en "Producto Internet Detalles"
    Then llevará al formulario con el objeto "Plan Producto"
    Then llevará al formulario con el objeto "Numero Suscripcion Producto"
    Then llevará al formulario con el objeto "Direccion Ubicacion Producto"

  Scenario: Mi Cuenta - Detalles servicio de Televisión
    And doy clic en "Seleccion MSISDN" si es visible
    And Espero 2 segundos
    And doy clic en "No Linea fija" si es visible
    And Espero 1 segundos
    And doy clic en "Seleccion MSISDN" si es visible
    And Espero 2 segundos
    And doy clic en "Linea Fija" si es visible
    And doy clic en "Servicios" si es visible
    And doy clic en "Producto Televisión Detalles"
    Then llevará al formulario con el objeto "Plan Producto"
    Then llevará al formulario con el objeto "Numero Suscripcion Producto"
    Then llevará al formulario con el objeto "Direccion Ubicacion Producto"
    Then llevará al formulario con el objeto "Informacion de Dispositivos"
