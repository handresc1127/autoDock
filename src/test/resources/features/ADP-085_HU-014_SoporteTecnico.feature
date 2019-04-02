#Author: Nelson Mesa
#Keywords Summary :
@issue:ADP-85 @MiCuenta
Feature: HU014 Soporte Tecnico
  
  Yo como usuario de mi cuenta Tigo 
  Quiero tener soporte de mis equipos
  Para resolver las fallas presentadas

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

  Scenario: Mi Cuenta - Soporte tecnico, Centro de ayuda
    And doy clic en "Seleccion MSISDN" si es visible
    And Espero 2 segundos
    And doy clic en "No linea hibrido 2" si es visible
    And Espero 1 segundos
    And doy clic en "Seleccion MSISDN" si es visible
    And Espero 2 segundos
    And doy clic en "Linea hibrido 2" si es visible
    And doy clic en "Soporte Tecnico" si es visible
    And doy clic en "Centro de Ayuda"
    And voy a la pestaña "ultima"
    And lo llevará a la página "https://ayuda.tigoune.co/hc/es/sections/115001850127-Equipos"
    And cerrar pestaña

  Scenario: Mi Cuenta - Soporte tecnico, Tiendas
    And doy clic en "Seleccion MSISDN" si es visible
    And Espero 2 segundos
    And doy clic en "No linea hibrido 2" si es visible
    And Espero 1 segundos
    And doy clic en "Seleccion MSISDN" si es visible
    And Espero 2 segundos
    And doy clic en "Linea hibrido 2" si es visible
    And doy clic en "Soporte Tecnico" si es visible
    And doy clic en "tienda"
    And voy a la pestaña "ultima"
    And lo llevará a la página "https://www.tigo.com.co/tiendas"
    And cerrar pestaña

  Scenario: Mi Cuenta - Soporte tecnico, Detalles
    And doy clic en "Seleccion MSISDN" si es visible
    And Espero 2 segundos
    And doy clic en "No Linea Prepago" si es visible
    And Espero 1 segundos
    And doy clic en "Seleccion MSISDN" si es visible
    And Espero 2 segundos
    And doy clic en "Linea Prepago" si es visible
    And doy clic en "Soporte Tecnico" si es visible
    And llevará al formulario con el objeto "Primer Item con Detalle"
