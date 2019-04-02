#Author: Herman Alarcon
#Keywords Summary : Validacion Documento
@issue:ADP-174 @Recargas
Feature: HU027_AutomatizarChatAyudaRecargas
  Como Tigoune
  Quiero realizar pruebas automatizadas para Chat y Ayuda en recargas
  Para garantizar que se pueden utilizar la opcion Chat y Ayuda en recargas

  Scenario: Recargas - Chat y Ayuda
    Given Estoy en la página de inicio "Pagina paquetes" en la url "https://transaccionesco-uat.tigocloud.net/servicios/paquetes"
    When doy clic en "Recarga"
    And doy clic en "Chat y Ayuda"
    And Espero 5 segundos
    And ejecuto el script "seleccionarChatMovil();"
    And Espero 10 segundos
    And cambiar de iframe "5"
    And doy clic en "Chat en Vivo"
    And cambiar a iframe principal
    And cambiar de iframe "1"
    Then llevará al formulario con el objeto "CHATEA CON NOSOTROS"
