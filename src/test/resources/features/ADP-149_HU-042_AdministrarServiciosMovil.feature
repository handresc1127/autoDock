#Author: Nelson Mesa
#Keywords Summary :
@issue:ADP-149 @MiCuenta
Feature: HU042 Administrar Servicios - Móvil
  
  Yo como usuario de mi cuenta Tigo 
  Quiero ingresar al menú Administrar Servicios
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

  Scenario: Mi Cuenta - Consulta información de mi plan
    And doy clic en "Seleccion MSISDN" si es visible
    And Espero 2 segundos
    And doy clic en "No linea arma tu plan" si es visible
    And Espero 1 segundos
    And doy clic en "Seleccion MSISDN" si es visible
    And Espero 2 segundos
    And doy clic en "linea arma tu plan" si es visible
    And doy clic en "Administrar Servicios" si es visible
    Then llevará al formulario con el objeto "Lineas asociadas"
    And moverse hasta la posicion "Final"
