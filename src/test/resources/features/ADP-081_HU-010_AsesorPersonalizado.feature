#Author: Nelson Mesa
#Keywords Summary :
@issue:ADP-81 @MiCuenta
Feature: HU010 Asesor Personalizado
  
  Yo como usuario de mi cuenta Tigo 
  Quiero asesoría personalizada
  Para realizar consultas acerca de mis servicios

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

  Scenario: Mi Cuenta - Consultar mi asesor personalizado
    And doy clic en "Seleccion MSISDN" si es visible
    And Espero 2 segundos
    And doy clic en "No Linea Hibrido" si es visible
    And Espero 1 segundos
    And doy clic en "Seleccion MSISDN" si es visible
    And Espero 2 segundos
    And doy clic en "Linea Hibrido" si es visible
    And doy clic en "Servicios Movil" si es visible
    And doy clic en "Consultar a mi asesor"
    And voy a la pestaña "ultima"
    And lo llevará a la página "https://ayuda.tigoune.co/hc/es/requests/new?ticket_form_id=360000251614"
    And cerrar pestaña
