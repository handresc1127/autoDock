#Author: Jose David Moreno
#Keywords Summary :
@issue:ADP-122 @MiCuenta
Feature: HU028 Consulta Informacion Cuenta - Movil
  
  Yo como usuario de mi cuenta Tigo 
  Quiero ingresar a la informacion de mi cuenta 
  Para conocer mis datos personales almacenados

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

  Scenario: Mi Cuenta - Consulta información de mi cuenta exitosa
    And doy clic en "Seleccion MSISDN" si es visible
    And Espero 2 segundos
    And doy clic en "No linea arma tu plan" si es visible
    And Espero 1 segundos
    And doy clic en "Seleccion MSISDN" si es visible
    And Espero 2 segundos
    And doy clic en "linea arma tu plan" si es visible
    And doy clic en "Mi cuenta movil" si es visible
    Then llevará al formulario con el objeto "Mi Informacion"
    And llevará al formulario con el objeto "Nombre Movil"
    And llevará al formulario con el objeto "Documento Movil"
    And llevará al formulario con el objeto "Direccion Movil"
    And llevará al formulario con el objeto "Departamento Movil"
    And llevará al formulario con el objeto "Ciudad Movil"
    And llevará al formulario con el objeto "Correo Electronico Movil"
    And llevará al formulario con el objeto "Telefono Movil"

  Scenario: Mi Cuenta - Consulta información de Mi equipo y mi simcard exitosa
    And doy clic en "Seleccion MSISDN" si es visible
    And Espero 2 segundos
    And doy clic en "No linea arma tu plan" si es visible
    And Espero 1 segundos
    And doy clic en "Seleccion MSISDN" si es visible
    And Espero 2 segundos
    And doy clic en "linea arma tu plan" si es visible
    And doy clic en "Servicios movil" si es visible
    Then llevará al formulario con el objeto "Mi equipo y Mi simcard"
    And llevará al formulario con el objeto "IMEI Movil"
    And llevará al formulario con el objeto "IMSI Movil"
    And llevará al formulario con el objeto "ESTADO Movil"
