#Author:
#Keywords Summary :
@issue:ADP-110 @MiCuenta
Feature: HU025 Historico Consumos Telefonia
  
  Yo como usuario de mi cuenta Tigo 
  Quiero ingresar al Histórico de consumos
  Para conocer el detalle de los consumos del servicio de telefonía

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

  Scenario: Mi Cuenta - Histórico de consumos
    And doy clic en "Seleccion MSISDN" si es visible
    And Espero 2 segundos
    And doy clic en "No Linea fija con Telefono" si es visible
    And Espero 1 segundos
    And doy clic en "Seleccion MSISDN" si es visible
    And Espero 2 segundos
    And doy clic en "Linea Fija con Telefono" si es visible
    And doy clic en "Servicios" si es visible
    And doy clic en "Producto Telefonia detalles"
    And doy clic en "Historico de Consumo"
    Then llevará al formulario con el objeto "Detalle consumo"

  Scenario: Mi Cuenta - Detalle del Histórico de consumos
    And doy clic en "Seleccion MSISDN" si es visible
    And Espero 2 segundos
    And doy clic en "No Linea fija con Telefono" si es visible
    And Espero 1 segundos
    And doy clic en "Seleccion MSISDN" si es visible
    And Espero 2 segundos
    And doy clic en "Linea Fija con Telefono" si es visible
    And doy clic en "Servicios" si es visible
    And doy clic en "Producto Telefonia detalles"
    And doy clic en "Historico de Consumo"
    Then llevará al formulario con el objeto "Detalle consumo"
    And doy clic en "Ver detalle" si es visible
    Then llevará al formulario con el objeto "Fecha consumo"
