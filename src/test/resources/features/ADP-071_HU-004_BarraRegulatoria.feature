#Author:Jose David Moreno
#Keywords Summary :
@issue:ADP-71 @MiCuenta
Feature: HU004 Barra Regulatoria
  Y0 como usuario de mi cuenta Tigo 
  Quiero ingresar a la barra regulatoria
  Para estar informado de las PQR reportadas

  Scenario: Mi Cuenta - Consulta/Radica PQR para UNE
    Given Estoy en la página de inicio "Página mi cuenta tigo" en la url "https://tigoselfcareregional-uat-co.tigocloud.net"
    When doy clic en "Consulta PQR UNE" si es visible
    And voy a la pestaña "ultima"
    Then llevará al formulario con el objeto "PQR UNE"
    And cerrar pestaña

  Scenario: Mi Cuenta - Consulta/Radica PQR Tigo
    Given Estoy en la página de inicio "Página mi cuenta tigo" en la url "https://tigoselfcareregional-uat-co.tigocloud.net"
    When doy clic en "Consulta PQR TIGO" si es visible
    And voy a la pestaña "ultima"
    Then llevará al formulario con el objeto "PQR TIGO"
    And cerrar pestaña

  Scenario: Mi Cuenta - Consulta ante la SIC
    Given Estoy en la página de inicio "Página mi cuenta tigo" en la url "https://tigoselfcareregional-uat-co.tigocloud.net"
    When Presiono la tecla "Avanzar Página" sobre "Consulta SIC"
    And doy clic en "Consulta SIC" si es visible
    And voy a la pestaña "ultima"
    Then llevará al formulario con el objeto "SIC"
    And cerrar pestaña

  Scenario: Mi Cuenta - Conoce nuestras Tiendas
    Given Estoy en la página de inicio "Página mi cuenta tigo" en la url "https://tigoselfcareregional-uat-co.tigocloud.net"
    And Presiono la tecla "Avanzar Página" sobre "Nuestras Tiendas"
    When doy clic en "Nuestras Tiendas" si es visible
    And voy a la pestaña "ultima"
    Then llevará al formulario con el objeto "tiendas"
    And cerrar pestaña
