#Author: Leison Perilla
#Keywords Summary : MSISDN
@issue:ADP-176 @Recargas
Feature: Automatizar centro de ayuda de Recargas
  Como Tigoune
  Quiero realizar pruebas automatizadas sobre el campo Centro de ayudas de recargas

  Scenario: Automatizar centro de ayuda de Recargas
    Given Estoy en la página de inicio "Pagina paquetes" en la url "https://transaccionesco-uat.tigocloud.net/servicios/paquetes"
    When doy clic en "Recarga"
    And doy clic en "Entra Aqui"
    And Espero 2 segundos
    And voy a la pestaña "Titulo Centro de Ayuda"
    Then doy clic en "Continuar Con Tu Recarga"
    And voy a la pestaña "Recarga"
    Then lo llevará a la página "https://transacciones.tigo.com.co/servicios/paquetes?he=1&value=15000"
    