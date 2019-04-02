#Author: Karen Perez Parrado
#Keywords Summary :
@issue:ADP-111 @MiCuenta
Feature: HU026 Consulta de PQR
  
  Yo como usuario de mi cuenta Tigo 
  Quiero ingresar a mis PQR
  Para conocer el detalle y la solución de estas

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

  Scenario: Mi Cuenta - Consulta de PQR
    And doy clic en "Seleccion MSISDN" si es visible
    And Espero 2 segundos
    And doy clic en "No Linea Fija" si es visible
    And Espero 1 segundos
    And doy clic en "Seleccion MSISDN" si es visible
    And Espero 2 segundos
    And doy clic en "Linea Fija" si es visible
    And doy clic en "Consulta PQR" si es visible
    And Espero 1 segundos
    Then llevará al formulario con el objeto "Estados PQRs"
    And Espero a que el numero de elementos de "Estado cada pqr" sea ">=" que 1
