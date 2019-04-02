#Author: Alexandra Lasprilla
#Keywords Summary :
@issue:ADP-131 @MiCuenta
Feature: HU035 Bloqueo de SIM - Móvil
  
  YO como usuario de mi cuenta Tigo 
  QUIERO ingresar al menú Mi Cuenta
  PARA Bloquear mi Sim

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

  Scenario: Mi Cuenta - Bloqueo Sim por Pérdida
    And doy clic en "Seleccion MSISDN" si es visible
    And Espero 1 segundos
    And doy clic en "no linea arma tu plan" si es visible
    And Espero 1 segundos
    And doy clic en "Seleccion MSISDN" si es visible
    And Espero 1 segundos
    And doy clic en "linea arma tu plan" si es visible
    And doy clic en "Servicios Móvil" si es visible
    And doy clic en "Bloqueo de equipo y sim"
    Then llevará al formulario con el objeto "Bloqueo de equipo y Simcard"
    And moverse hasta la posicion "Final"
    And doy clic en "Continuar Bloqueo"
    And Espero 1 segundos
    And doy clic en "Departamento Bloqueo"
    And doy clic en "Cundinamarca"
    And Espero 1 segundos
    And doy clic en "Ciudad Bloqueo"
    And doy clic en "Bogotá"
    And ingreso "Calle 15 # 7-45" en el campo "Direccion Aproximada"
    And ingreso "Prueba bloqueo de sim" en el campo "Descripción de los hechos"

  Scenario: Mi Cuenta - Bloqueo Sim por Robo
    And doy clic en "Seleccion MSISDN" si es visible
    And Espero 1 segundos
    And doy clic en "no linea arma tu plan" si es visible
    And Espero 1 segundos
    And doy clic en "Seleccion MSISDN" si es visible
    And Espero 1 segundos
    And doy clic en "linea arma tu plan" si es visible
    And doy clic en "servicios Móvil" si es visible
    And doy clic en "Bloqueo de equipo y sim"
    Then llevará al formulario con el objeto "Bloqueo de equipo y Simcard"
    And doy clic en "Robo"
    And moverse hasta la posicion "Final"
    And doy clic en "Continuar Bloqueo"
    And Espero 1 segundos
    And doy clic en "Departamento Bloqueo"
    And doy clic en "Cundinamarca"
    And Espero 1 segundos
    And doy clic en "Ciudad Bloqueo"
    And doy clic en "Bogotá"
    And ingreso "Calle 35 # 7-64" en el campo "Direccion Aproximada"
    And doy clic en "SI Violencia Robo"
    And doy clic en "SI Presentaron Armas"
    And doy clic en "Tipo Arma"
    And doy clic en "Arma Blanca"
    Then ingreso "Prueba bloqueo de sim por robo" en el campo "Descripcion Hechos Robo"
