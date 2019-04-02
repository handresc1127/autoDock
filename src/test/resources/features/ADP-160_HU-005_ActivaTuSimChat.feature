#Author: Nelson Mesa
#Keywords Summary : Autenticación
@issue:ADP-160 @Ecommerce
Feature: HU005 Activa Tu Sim Chat
  YO como usuario de ecommerce
  QUIERO ingresar al portal de activación
  PARA Validar Chat

  Scenario: Ecommerce - Activación Tu Sim Chat
    Given Estoy en la página de inicio "ecommerce" en la url "https://transaccionesco-uat.tigocloud.net/servicios/activate?msisdn=3118863821&imsi=732111173642899"
    When ingreso "nhmes@indracompany.com" en el campo "Correo Electronico"
    And arrastro el elemento "slider captcha" hasta la posición "410,0"
    And Espero 1 segundos
    And arrastro el elemento "slider captcha" hasta la posición "410,0"
    And Espero 1 segundos
    And arrastro el elemento "slider captcha" hasta la posición "410,0"
    And llevará al formulario con el objeto "Chat Iframe"
    And cambiar de iframe "Chat Iframe"
    And Espero 1 segundos
    And doy clic en "Chat"
    And cambiar a iframe principal
    And llevará al formulario con el objeto "Chat en vivo Iframe"
    And cambiar de iframe "Chat en vivo Iframe"
    And llevará al formulario con el objeto "Chat en vivo"
