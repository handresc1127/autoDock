#Author: Karen Perez
#Keywords Summary :
@issue:ADP-76 @Recargas
Feature: HU023 Adelanta Saldo
  
  Como Tigoune
  Quiero realizar pruebas automatizadas sobre adelantar saldo en el formulario de recargas
  Para garantizar que permita realizar el proceso de transacción de Adelanta Saldo

  Background: Autenticarse en CMS
    Given Estoy en la página de inicio "Pagina pago de facturas" en la url "https://transaccionesco-uat.tigocloud.net/user"
    And ingreso "automatizacion" en el campo "user dupal transacciones"
    And desencripto "bXWxspvWWuLLx3rxzheNMw==" y lo guardo en "Clave guardada con seguridad"
    And ingreso "Clave guardada con seguridad" en el campo "pass dupal transacciones"
    And doy clic en "ok"

  Scenario: Recargas - Visualización de opción adelanta saldo como medio de pago
    Given Estoy en la página de inicio "Pagina paquetes" en la url "https://transaccionesco-uat.tigocloud.net/servicios/paquetes?he=1&client_id=653367cb840ab699e31beca8140469b9"
    When doy clic en "Recarga"
    When ingreso "3002774442" en el campo "Ingresa tu línea Tigo"
    And ingreso "pruebas@yopmail.com" en el campo "Correo electrónico"
    And doy clic en "Recargar"
    Then llevará al formulario con el objeto "Titulo Detalle"
    And doy clic en "Adelanta Saldo"
