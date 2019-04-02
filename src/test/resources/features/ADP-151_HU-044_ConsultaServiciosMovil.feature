#Author: Nelson Mesa
#Keywords Summary :
@issue:ADP-151 @MiCuenta
Feature: HU044 Consulta Servicios - Móvil
  
  Yo como usuario de mi cuenta Tigo 
  Quiero ingresar al menú Servicios
  Para consultar la información de los servicios

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

  Scenario: Mi Cuenta - Consulta información de Activa tu Roaming
    And doy clic en "Seleccion MSISDN" si es visible
    And Espero 2 segundos
    And doy clic en "no linea arma tu plan" si es visible
    And Espero 1 segundos
    And doy clic en "Seleccion MSISDN" si es visible
    And Espero 2 segundos
    And doy clic en "linea arma tu plan" si es visible
    And doy clic en "Servicios Movil" si es visible
    Then llevará al formulario con el objeto "Activa tu roaming"

  Scenario: Mi Cuenta - Consulta información de Buzón de voz
    And doy clic en "Seleccion MSISDN" si es visible
    And Espero 2 segundos
    And doy clic en "no linea arma tu plan" si es visible
    And Espero 1 segundos
    And doy clic en "Seleccion MSISDN" si es visible
    And Espero 2 segundos
    And doy clic en "linea arma tu plan" si es visible
    And doy clic en "Servicios Movil" si es visible
    Then llevará al formulario con el objeto "Buzon"

  Scenario: Mi Cuenta - Consulta información de Adelanta ExtraSaldo
    And doy clic en "Seleccion MSISDN" si es visible
    And Espero 2 segundos
    And doy clic en "no linea arma tu plan" si es visible
    And Espero 1 segundos
    And doy clic en "Seleccion MSISDN" si es visible
    And Espero 2 segundos
    And doy clic en "linea arma tu plan" si es visible
    And doy clic en "Servicios Movil" si es visible
    Then llevará al formulario con el objeto "Adelanta"
