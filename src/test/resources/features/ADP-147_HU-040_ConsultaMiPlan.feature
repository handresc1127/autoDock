#Author: Jose David Moreno
#Keywords Summary :
@issue:ADP-147 @MiCuenta
Feature: HU040 Consulta Mi Plan - Movil
  
  YO como usuario de mi cuenta Tigo 
  QUIERO ingresar al menu resumen
  PARA conocer las caracteristicas de mi plan

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

  Scenario: Mi Cuenta - Consulta información de Mi Plan
    And doy clic en "Seleccion MSISDN" si es visible
    And Espero 1 segundos
    And doy clic en "No linea Hibrido" si es visible
    And Espero 1 segundos
    And doy clic en "Seleccion MSISDN" si es visible
    And Espero 1 segundos
    And doy clic en "Linea Hibrido" si es visible
    And doy clic en "Servicios Movil" si es visible
    Then llevará al formulario con el objeto "Mi Plan Movil"
    And llevará al formulario con el objeto "Nombre Plan"
    And llevará al formulario con el objeto "Internet Plan"
    And llevará al formulario con el objeto "Minutos Plan"
    And llevará al formulario con el objeto "Mensajes Plan"
    And llevará al formulario con el objeto "Cargo Basico Plan"
