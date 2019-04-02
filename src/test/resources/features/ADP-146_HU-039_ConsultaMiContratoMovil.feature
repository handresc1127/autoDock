#Author: Nelson Mesa
#Keywords Summary :
@issue:ADP-146 @MiCuenta
Feature: HU039 Consulta Mi Contrato - Móvil
  
  Yo como usuario de mi cuenta Tigo
  Quiero ingresar a la información de mi cuenta
  Para consultar la información de mi contrato

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

  Scenario: Mi Cuenta - Consulta Mi Contrato - Móvil
    And doy clic en "Seleccion MSISDN" si es visible
    And Espero 2 segundos
    And doy clic en "No linea hibrido2" si es visible
    And Espero 1 segundos
    And doy clic en "Seleccion MSISDN" si es visible
    And Espero 2 segundos
    And doy clic en "Linea hibrido2" si es visible
    And Espero 1 segundos
    And doy clic en "Servicios Movil" si es visible
    Then doy clic en "Ver contrato"
    And voy a la pestaña "Contrato"
    And Espero 3 segundos
    And llevará al formulario con el objeto "contrato pdf"
    And Espero 1 segundos
