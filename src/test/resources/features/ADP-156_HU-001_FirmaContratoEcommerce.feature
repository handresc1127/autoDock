#Author: Herman Alarcon
#Keywords Summary :
@issue:ADP-156 @Ecommerce
Feature: HU001 Firma Contrato - Ecommerce
  YO como usuario de ecommerce
  QUIERO ingresar al portal de activación
  PARA realizar firma de contrato

  Scenario: Ecommerce - Firma Contrato
    Given Estoy en la página de inicio "Pagina pago de facturas" en la url "https://transaccionesco-uat.tigocloud.net/servicios/activate?msisdn=3118863821&imsi=732111173642899"
    When Espero 3 segundos
    And llevará al formulario con el objeto "title page-title"
    And doy clic en "Ingresar Correo"
    And ingreso "automatizacionmicuenta@gmail.com" en el campo "Correo electrónico Plan SIM"
    When arrastro el elemento "slider captcha" hasta la posición "410,0"
    And doy clic en "Pospago 5.2"
    And doy clic en "Continuar Activar Plan SIM"
    And llevará al formulario con el objeto "title page-title"
    And doy clic en "Expedición"
    And doy clic en "Fecha Expedición"
    When Espero 1 segundos
    And doy clic en "Activar Plan SIM E"
    Then llevará al formulario con el objeto "title page-title"
    And doy clic en "Continuar Plan SIM"
    Then llevará al formulario con el objeto "title page-title"
