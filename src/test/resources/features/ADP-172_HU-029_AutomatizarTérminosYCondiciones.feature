#Author: Herman Alarcon
#Keywords Summary : Validacion Documento
@issue:ADP-172 @Recargas
Feature: HU029 AutomatizarTerminosYCondiciones
  Como Tigoune
  Quiero realizar pruebas automatizadas de la consulta de Términos y Condiciones
  Para garantizar que se pueden utilizar la opcion de Términos y Condiciones

  Background: Borrar Datos de Navegacion
    And se borran cookies del navegador

  Scenario: Recargas - Automatizar Términos y Condiciones
    Given Estoy en la página de inicio "Pagina paquetes" en la url "https://transaccionesco-uat.tigocloud.net/servicios/paquetes"
    When doy clic en "Recarga"
    And Espero 1 segundos
    And doy clic en "Terminos y Condiciones"
    Then llevará al formulario con el objeto "Terminos y Condiciones Recargas"
    
