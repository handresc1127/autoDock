#Author: Melissa Pineda
#Keywords Summary :
@issue:ADP-163 @MiCuentaEmpresas
Feature: HU002 Boton crear cuenta en Mi cuenta B2B
  YO como usuario de mi cuenta B2B
	QUIERO ingresar a mi cuenta
	PARA gestionar mi portafolio de servicios fijos y móviles.
	
  Scenario: Mi Cuenta Empresas - Ingresar al formulario crear cuenta
  	Given Estoy en la página de inicio "Pagina mi cuenta empresas" en la url "https://tigob2bselfcare-uat-co.tigocloud.net"
		When doy clic en "B2B Crear Cuenta"
		Then llevará al formulario con el objeto "Crear tu cuenta"
		And doy clic en "Crear tu cuenta"
		And llevará al formulario con el objeto "Correo mi cuenta"

  Scenario: Mi Cuenta Empresas - Ingresar al formulario desde Crear cuenta
  	Given Estoy en la página de inicio "Pagina mi cuenta empresas" en la url "https://tigob2bselfcare-uat-co.tigocloud.net"
		When doy clic en "B2B Crear Cuenta"
		Then llevará al formulario con el objeto "Crear tu cuenta"
		And doy clic en "Crear tu cuenta"
		And llevará al formulario con el objeto "Correo mi cuenta"
		And concateno "Numero Unico()" con "@gmail.com" y se guarda en "Correo B2B Unico"
		And ingreso "Correo B2B Unico" en el campo "correomicuenta"
		And ingreso "Nombre" en el campo "Nombre y Apellido B2B"
		And ingreso "valeria123" en el campo "Contrasena mi cuenta"
		And doy clic en "Continuar Id B2B"
		Then llevará al formulario con el objeto "B2B Tipo documento"
		
	Scenario: Mi Cuenta Empresas - Ingresar al formulario desde Crear cuenta
  	Given Estoy en la página de inicio "Pagina mi cuenta empresas" en la url "https://tigob2bselfcare-uat-co.tigocloud.net"
		When doy clic en "B2B Crear Cuenta"
		Then llevará al formulario con el objeto "Crear tu cuenta"
		And ingreso "automatizacionmicuenta@gmail.com" en el campo "Correo mi cuenta"
		And doy clic en "Validar mi cuenta"
		And desencripto "bXWxspvWWuLLx3rxzheNMw==" y lo guardo en "Clave guardada con seguridad"
    And ingreso "Clave guardada con seguridad" en el campo "Contrasena mi cuenta"
		And doy clic en "Continuar mi cuenta"
		And  llevará al formulario con el objeto "B2B Tipo documento"
		
		
	Scenario: Mi Cuenta Empresas - Ingresar al formulario desde Iniciar sesión
  	Given Estoy en la página de inicio "Pagina mi cuenta empresas" en la url "https://tigob2bselfcare-uat-co.tigocloud.net"
		When doy clic en "B2B Iniciar Sesion"
		Then llevará al formulario con el objeto "Crear tu cuenta"
		And doy clic en "Crear tu cuenta"
		And llevará al formulario con el objeto "Correo mi cuenta"
		And concateno "Numero Unico()" con "@gmail.com" y se guarda en "Correo B2B Unico"
		And ingreso "Correo B2B Unico" en el campo "correomicuenta"
		And ingreso "Nombre" en el campo "Nombre y Apellido B2B"
		And ingreso "valeria123" en el campo "Contrasena mi cuenta"
		And doy clic en "Continuar Id B2B"
		Then llevará al formulario con el objeto "B2B Tipo documento"
		
	Scenario: Mi Cuenta Empresas - Ingresar al formulario desde Iniciar sesión
  	Given Estoy en la página de inicio "Pagina mi cuenta empresas" en la url "https://tigob2bselfcare-uat-co.tigocloud.net"
		When doy clic en "B2B Iniciar Sesion"
		Then llevará al formulario con el objeto "Crear tu cuenta"
		And ingreso "automatizacionmicuenta@gmail.com" en el campo "Correo mi cuenta"
		And doy clic en "Validar mi cuenta"
		And desencripto "bXWxspvWWuLLx3rxzheNMw==" y lo guardo en "Clave guardada con seguridad"
    And ingreso "Clave guardada con seguridad" en el campo "Contrasena mi cuenta"
		And doy clic en "Continuar mi cuenta"
		And doy clic en "Cuenta Universidad"
		And  llevará al formulario con el objeto "B2B Tipo documento"
		
		
		
	 	
		
    


