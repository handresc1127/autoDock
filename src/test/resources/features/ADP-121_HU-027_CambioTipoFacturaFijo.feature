#Author: Nelson Mesa
#Keywords Summary :
@issue:ADP-93 @MiCuenta
Feature: HU027 Cambio Tipo de Factura Fijo
  
  Yo como usuario de mi cuenta Tigo 
  Quiero ingresar a mis servicios fijos
  Para Para cambiar mi tipo de factura

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

  Scenario: Mi Cuenta - El usuario ya tiene factura electrónica
    And doy clic en "Seleccion MSISDN" si es visible
    And Espero 2 segundos
    And doy clic en "No Linea fija" si es visible
    And Espero 1 segundos
    And doy clic en "Seleccion MSISDN" si es visible
    And Espero 2 segundos
    And doy clic en "Linea Fija" si es visible
    And doy clic en "Facturacion" si es visible
    And doy clic en "modificarfacturacion"
    And Espero 4 segundos
    Then llevará al formulario con el objeto "Datos Facturación"
    And llevará al formulario con el objeto "documento"
    And llevará al formulario con el objeto "número"
    And llevará al formulario con el objeto "correo electrónico"

  Scenario: Mi Cuenta - Cambio de tipo de factura usuario de factura electrónica a factura física
    And doy clic en "Seleccion MSISDN" si es visible
    And Espero 2 segundos
    And doy clic en "No Linea fija" si es visible
    And Espero 1 segundos
    And doy clic en "Seleccion MSISDN" si es visible
    And Espero 2 segundos
    And doy clic en "Linea Fija" si es visible
    And doy clic en "Facturacion" si es visible
    And doy clic en "Modificar Facturación"
    And doy clic en "Impresa"
    And doy clic en "OK"
    And Espero 4 segundos
    Then llevará al formulario con el objeto "Factura Impresa"
