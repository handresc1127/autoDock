#Author: Alexandra Lasprilla
#Keywords Summary :
@issue:ADP-80 @MiCuenta
Feature: HU009 Consumos Movil
  
  YO como usuario de mi cuenta Tigo 
  QUIERO Ingresar a mis consumos
  PARA llevar el registro y control de estos

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

  Scenario: Mi Cuenta - Consumos Datos
    And doy clic en "Seleccion MSISDN" si es visible
    And Espero 2 segundos
    And doy clic en "No Linea Hibrido 2" si es visible
    And Espero 1 segundos
    And doy clic en "Seleccion MSISDN" si es visible
    And Espero 2 segundos
    And doy clic en "Linea Hibrido 2" si es visible
    And doy clic en "Consumos" si es visible
    And llevará al formulario con el objeto "Fecha y Hora Datos"
    And llevará al formulario con el objeto "Día Datos"
    And llevará al formulario con el objeto "Consumo Datos"

  Scenario: Mi Cuenta - Consumos llamadas Seleccionando Fecha del Calendario
    And doy clic en "Seleccion MSISDN" si es visible
    And Espero 2 segundos
    And doy clic en "No Linea Hibrido 2" si es visible
    And Espero 1 segundos
    And doy clic en "Seleccion MSISDN" si es visible
    And Espero 2 segundos
    And doy clic en "Linea Hibrido 2" si es visible
    And doy clic en "Consumos" si es visible
    And doy clic en "Consultar Llamadas"
    And doy clic en "Fecha Inicial Llamadas"
    And doy clic en "Día del Calendario Llamadas"
    And doy clic en "Ok fecha"
    And doy clic en "Fecha Final Llamadas"
    And doy clic en "Día del Calendario final Llamadas"
    And doy clic en "Ok fecha Final"
    And Presiono la tecla "Avanzar Página" sobre "Ver Llamadas"
    And Presiono la tecla "Avanzar Página"
    And doy clic en "Ver Llamadas"
    And Espero 1 segundos
    And llevará al formulario con el objeto "Fecha y Hora llamadas"
    And llevará al formulario con el objeto "Destino llamadas"
    And llevará al formulario con el objeto "Duración llamadas"

  Scenario: Mi Cuenta - Consumos llamadas sin seleccionar Fecha del Calendario
    And doy clic en "Seleccion MSISDN" si es visible
    And Espero 2 segundos
    And doy clic en "No Linea Hibrido 2" si es visible
    And Espero 1 segundos
    And doy clic en "Seleccion MSISDN" si es visible
    And Espero 2 segundos
    And doy clic en "Linea Hibrido 2" si es visible
    And doy clic en "Consumos" si es visible
    And doy clic en "Consultar Llamadas"
    And Presiono la tecla "Avanzar Página" sobre "Ver Llamadas"
    And doy clic en "Ver Llamadas"
    And Espero 1 segundos
    And llevará al formulario con el objeto "Fecha y Hora llamadas"
    And llevará al formulario con el objeto "Destino llamadas"
    And llevará al formulario con el objeto "Duración llamadas"

  Scenario: Mi Cuenta - Consumos Mensajes Seleccionando Fecha del Calendario
    And doy clic en "Seleccion MSISDN" si es visible
    And Espero 2 segundos
    And doy clic en "No Linea Hibrido 2" si es visible
    And Espero 1 segundos
    And doy clic en "Seleccion MSISDN" si es visible
    And Espero 2 segundos
    And doy clic en "Linea Hibrido 2" si es visible
    And doy clic en "Consumos" si es visible
    And doy clic en "Consultar Mensajes"
    And doy clic en "Fecha Inicial Mensajes"
    And doy clic en "Día del Calendario Mensajes"
    And doy clic en "Ok fecha" si es visible
    And doy clic en "Fecha Final Mensajes"
    And doy clic en "Día del Calendario final Mensajes"
    And doy clic en "Ok fecha final Mensajes"
    And Presiono la tecla "Avanzar Página" sobre "Ver Mensajes"
    And doy clic en "Ver Mensajes"
    And Espero 1 segundos
    And llevará al formulario con el objeto "Fecha y Hora Mensajes"
    And llevará al formulario con el objeto "Destino Mensajes"

  Scenario: Mi Cuenta - Consumos Mensajes sin seleccionar Fecha del Calendario
    And doy clic en "Seleccion MSISDN" si es visible
    And Espero 2 segundos
    And doy clic en "No Linea Hibrido 2" si es visible
    And Espero 1 segundos
    And doy clic en "Seleccion MSISDN" si es visible
    And Espero 2 segundos
    And doy clic en "Linea Hibrido 2" si es visible
    And doy clic en "Consumos" si es visible
    And doy clic en "Consultar Mensajes"
    And Presiono la tecla "Avanzar Página" sobre "Ver Mensajes"
    And doy clic en "Ver Mensajes"
    And Espero 1 segundos
    And llevará al formulario con el objeto "Fecha y Hora Mensajes"
    And llevará al formulario con el objeto "Destino Mensajes"
