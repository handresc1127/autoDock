#Author: Alexandra Lasprilla
#Keywords Summary :
@issue:ADP-152 @MiCuenta
Feature: HU045 Conocer Beneficios Premium - Móvil
  
  Yo como usuario de mi cuenta Tigo 
  Quiero ingresar al menú Premium
  Para conocer mis beneficios

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

  Scenario: Mi Cuenta - Conocer beneficio Deezer
    And doy clic en "Seleccion MSISDN" si es visible
    And Espero 2 segundos
    And doy clic en "no linea arma tu plan" si es visible
    And Espero 1 segundos
    And doy clic en "Seleccion MSISDN" si es visible
    And Espero 2 segundos
    And doy clic en "linea arma tu plan" si es visible
    And doy clic en "Compras" si es visible
    And doy clic en "Conoce mas Deezer"
    And voy a la pestaña "última"
    And Espero 2 segundos
    And lo llevará a la página "https://compras.tigo.com.co/movil/pospago"

  Scenario: Mi Cuenta - Conocer beneficio Amazon Prime Video
    And doy clic en "Seleccion MSISDN" si es visible
    And Espero 2 segundos
    And doy clic en "no linea arma tu plan" si es visible
    And Espero 1 segundos
    And doy clic en "Seleccion MSISDN" si es visible
    And Espero 2 segundos
    And doy clic en "linea arma tu plan" si es visible
    And doy clic en "Compras" si es visible
    And doy clic en "Conoce mas Amazon"
    And voy a la pestaña "última"
    And Espero 2 segundos
    And lo llevará a la página "https://compras.tigo.com.co/movil/pospago"
