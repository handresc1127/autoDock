#Author: Alexandra Lasprilla
#Keywords Summary :
@issue:ADP-130 @MiCuenta
Feature: HU034 Configuración Smartapps - Móvil
  
  YO como usuario de mi cuenta Tigo 
  QUIERO ingresar al menú Mi Cuenta
  PARA configurar las Smartapps

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

  Scenario: Mi Cuenta - Configuración Smartapps Datos ilimitados Musica
    And doy clic en "Seleccion MSISDN" si es visible
    And Espero 2 segundos
    And doy clic en "No Linea Hibrido 1" si es visible
    And Espero 1 segundos
    And doy clic en "Seleccion MSISDN" si es visible
    And Espero 2 segundos
    And doy clic en "Linea Hibrido 1" si es visible
    And doy clic en "Compras" si es visible
    And moverse hasta la posicion "Final"
    And doy clic en "Activar Amazon"
    Then llevará al formulario con el objeto "Icono Amazon"
    And doy clic en "Continuar Amazon"
    And Espero 1 segundos
    Then lo llevará a la página "https://www.amazon.com/ap/register"

  Scenario: Mi Cuenta - Configuración Smartapps Deezer
    And doy clic en "Seleccion MSISDN" si es visible
    And Espero 2 segundos
    And doy clic en "No linea Hibrido 1" si es visible
    And Espero 1 segundos
    And doy clic en "Seleccion MSISDN" si es visible
    And Espero 2 segundos
    And doy clic en "Linea Hibrido 1" si es visible
    And doy clic en "Compras" si es visible
    And moverse hasta la posicion "Final"
    And doy clic en "Activar Deezer"
    Then llevará al formulario con el objeto "Ya activaste Deezer"
    And doy clic en "Regresar Deezer"
    And doy clic en "Desactivar deezer"
    And doy clic en "Desactivar 2 deezer"
    And Espero 2 segundos
