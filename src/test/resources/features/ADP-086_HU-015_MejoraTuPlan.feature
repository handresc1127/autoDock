#Author: Nelson Mesa
#Keywords Summary :
@issue:ADP-86 @MiCuenta
Feature: HU015 Mejora Tu Plan
  
  YO como usuario de mi cuenta Tigo 
  QUIERO conocer los planes pospago
  PARA escoger el que más se ajusta a mis necesidades

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

  Scenario: Mi Cuenta - Mejora tu plan
    And doy clic en "Seleccion MSISDN" si es visible
    And Espero 2 segundos
    And doy clic en "No linea hibrido" si es visible
    And Espero 1 segundos
    And doy clic en "Seleccion MSISDN" si es visible
    And Espero 2 segundos
    And doy clic en "Linea hibrido" si es visible
    And doy clic en "Administrar Servicios" si es visible
    And doy clic en "Mejora Plan" si es visible
    Then llevará al formulario con el objeto "Planes"
