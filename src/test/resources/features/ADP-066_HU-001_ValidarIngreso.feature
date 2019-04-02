#Author: Karen Perez Parrado
#Keywords Summary :
@issue:ADP-66 @MiCuenta
Feature: HU001 Validar Ingreso
  
  Como usuario de mi cuenta Tigo
  Quiero ingresar a mi cuenta
  Para gestionar portafolio

  Scenario: Mi Cuenta - Login desde el botón ingresar
    Given Estoy en la página de inicio "Página mi cuenta tigo" en la url "https://tigoselfcareregional-uat-co.tigocloud.net"
    When doy clic en "Ingresar"
    Then llevará al formulario con el objeto "Ingresar a tu cuenta"

  Scenario: Mi Cuenta - Login desde el botón descúbrelo ya
    Given Estoy en la página de inicio "Página mi cuenta tigo" en la url "https://tigoselfcareregional-uat-co.tigocloud.net"
    When doy clic en "Descúbrelo ya"
    Then llevará al formulario con el objeto "Ingresar a tu cuenta"

  Scenario: Mi Cuenta - Login desde el botón ingresar a mi cuenta
    Given Estoy en la página de inicio "Página mi cuenta tigo" en la url "https://tigoselfcareregional-uat-co.tigocloud.net"
    When doy clic en "Ingresar a Mi Cuenta" si es visible
    And Espero 1 segundos
    And doy clic en "Iniciar Sesión" si es visible
    Then llevará al formulario con el objeto "Ingresar a tu cuenta"

  Scenario: Mi Cuenta - Login desde el botón cambiar mi clave
    Given Estoy en la página de inicio "Página mi cuenta tigo" en la url "https://tigoselfcareregional-uat-co.tigocloud.net"
    When doy clic en "Cambiar mi clave"
    Then llevará al formulario con el objeto "Con Mi Correo"
