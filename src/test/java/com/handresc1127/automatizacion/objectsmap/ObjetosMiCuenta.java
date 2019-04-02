package com.handresc1127.automatizacion.objectsmap;

import org.openqa.selenium.By;

import com.handresc1127.automatizacion.utilities.ActionsUtil;

public class ObjetosMiCuenta {
	
	public ObjetosMiCuenta () {
		
		/*----------------------------------------------------------------------------------------------------------*/
		/*------------------------------------------- PANTALLA 1 ---------------------------------------------------*/
		/*----------------------------------------------------------------------------------------------------------*/
		ActionsUtil.objetosPut("ingresaramicuenta", 		By.xpath("//*[@id='top_menu_aside']/nav/ul/li/a|//*[@id='account-mobile-selector']"));
		ActionsUtil.objetosPut("iniciarsesion", 			By.xpath("//*[@id='top_menu_aside']/nav/ul/li/ul/li/a|//*[@id='account-mobile-menu']/nav/ul/li/a"));
		ActionsUtil.objetosPut("ingresar", 					By.xpath("//*[@id='main-content']/div[2]/div[2]/div/div/div/section/div[3]/a[2]"));
		ActionsUtil.objetosPut("descubreloya", 				By.xpath("//*[@id='main-content']/div[2]/div[1]/div/div/div/section/div/div/a"));
		ActionsUtil.objetosPut("registrarme", 				By.xpath("//*[@id='main-content']/div[2]/div[2]/div/div/div/section/div[3]/a[1]"));
		/*----------------------------------------------------------------------------------------------------------*/
		ActionsUtil.objetosPut("pagatusfacturas", 			By.xpath("//*[contains(@href,'/servicios/facturas')]"));
	    ActionsUtil.objetosPut("recargasypaquetes", 		By.xpath("//*[contains(@href,'/servicios/paquetes')]"));
	    ActionsUtil.objetosPut("registratuequipo", 			By.xpath("//*[contains(@href,'/registra-tu-equipo')]")); 
	    ActionsUtil.objetosPut("reponetusim", 				By.xpath("//*[contains(@href,'reposicion-sim-card')]"));
	    /*----------------------------------------------------------------------------------------------------------*/
	    ActionsUtil.objetosPut("consultapqrune", 			By.xpath("//*[contains(@href,'/quejas')]"));
	    ActionsUtil.objetosPut("consultapqrtigo", 			By.xpath("//*[contains(@href,'/GestionPqrOnLineWEB')]"));
		ActionsUtil.objetosPut("consultasic", 				By.xpath("//*[contains(@href,'/consultaCUNSIC')]"));
		ActionsUtil.objetosPut("nuestrastiendas", 			By.xpath("//*[contains(@href,'/tiendas')]"));
		
		/*----------------------------------------------------------------------------------------------------------*/
		/*----------------------------------------- PANTALLA MI TIGO ID --------------------------------------------*/
		/*----------------------------------------------------------------------------------------------------------*/
		ActionsUtil.objetosPut("correomicuenta", 			By.id("idEmail"));
		ActionsUtil.objetosPut("contrasenamicuenta",		By.id("password"));
		ActionsUtil.objetosPut("validarmicuenta", 			By.id("continueBtn"));
		ActionsUtil.objetosPut("creartucuenta", 			By.xpath("//*[@href='javascript:createAccount();']"));
		ActionsUtil.objetosPut("ingresaratucuenta", 		By.xpath("/html/body/div[2]/div/div[1]/h5"));
		ActionsUtil.objetosPut("continuarmicuenta", 		By.xpath("//button[@type='submit']"));
		ActionsUtil.objetosPut("olvidastemicuenta", 		By.xpath("//*[contains(@href,'/password/reset/')]"));
		
		ActionsUtil.objetosPut("continuarcongmail",         By.xpath("//button[text()='Continuar']"));
		ActionsUtil.objetosPut("correogmail", 				By.id("identifierId"));
		ActionsUtil.objetosPut("contrasenagmail", 			By.xpath("//*[@id='password']//input[@name='password']"));
		ActionsUtil.objetosPut("siguientegmailcorreo", 		By.xpath("//*[@id='identifierNext']//span[text()='Siguiente']"));
		ActionsUtil.objetosPut("siguientegmailpass", 		By.xpath("//*[@id='passwordNext']//span[text()='Siguiente']"));
		/*----------------------------------------------------------------------------------------------------------*/
		/*------------------------------------------- PANTALLA 2 ---------------------------------------------------*/
		/*----------------------------------------------------------------------------------------------------------*/
		ActionsUtil.objetosPut("seleccionmsisdn", 			By.xpath("//*[@id='account-mobile-selector']|//*[@id='block-accountsblock-2']//span[@class='line']"));
		ActionsUtil.objetosPut("lineaarmatuplan1", 			By.xpath("((//*[@id='lines'])//a[contains(.,'3008819838')])"));
		ActionsUtil.objetosPut("nolineaarmatuplan1", 		By.xpath("((//*[@id='lines'])//a[not(contains(.,'3008819838'))])"));
		ActionsUtil.objetosPut("lineaarmatuplan", 			By.xpath("((//*[@id='lines'])//a[contains(.,'3008913170')])"));
		ActionsUtil.objetosPut("nolineaarmatuplan", 		By.xpath("((//*[@id='lines'])//a[not(contains(.,'3008913170'))])"));
		ActionsUtil.objetosPut("lineahibrido1",             By.xpath("((//*[@id='lines'])//a[contains(.,'3004186749')])"));
		ActionsUtil.objetosPut("nolineahibrido1",           By.xpath("((//*[@id='lines'])//a[not(contains(.,'3004186749'))])"));
		ActionsUtil.objetosPut("lineaprepago", 	        	By.xpath("((//*[@id='lines'])//a[contains(.,'Prepago - Mi linea Tigo')])"));
		ActionsUtil.objetosPut("nolineaprepago", 	  	  	By.xpath("((//*[@id='lines'])//a[not(contains(.,'Prepago - Mi linea Tigo'))])"));
		ActionsUtil.objetosPut("lineahibrido",   			By.xpath("((//*[@id='lines'])//a[contains(.,'Hibrido - Mi linea Tigo')])"));
		ActionsUtil.objetosPut("nolineahibrido", 			By.xpath("((//*[@id='lines'])//a[not(contains(.,'Hibrido - Mi linea Tigo'))])"));
		ActionsUtil.objetosPut("lineafija",            	 	By.xpath("((//*[@id='lines'])//a[contains(.,'CL 61 # 56 - 51 IN 1701')])"));
		ActionsUtil.objetosPut("nolineafija",           	By.xpath("((//*[@id='lines'])//a[not(contains(.,'CL 61 # 56 - 51 IN 1701'))])"));
		ActionsUtil.objetosPut("lineafijacontelefono",  	By.xpath("((//*[@id='lines'])//a[contains(.,'CL 65 SUR # 42 B - 14 IN 1610')])"));
		ActionsUtil.objetosPut("nolineafijacontelefono",    By.xpath("((//*[@id='lines'])//a[not(contains(.,'CL 65 SUR # 42 B - 14 IN 1610'))])"));
		ActionsUtil.objetosPut("lineafijawifi",             By.xpath("((//*[@id='lines'])//a[contains(.,'CL 3 B # 79 B - 28 IN 502')])"));
		ActionsUtil.objetosPut("nolineafijawifi",           By.xpath("((//*[@id='lines'])//a[not(contains(.,'CL 3 B # 79 B - 28 IN 502'))])"));
		ActionsUtil.objetosPut("lineafijasintelevision",    By.xpath("((//*[@id='lines'])//a[contains(.,'MZ 19 CS 4 PISO 2')])"));
		ActionsUtil.objetosPut("nolineafijasintelevision",  By.xpath("((//*[@id='lines'])//a[not(contains(.,'MZ 19 CS 4 PISO 2'))])"));
		ActionsUtil.objetosPut("lineahibrido2", 			By.xpath("((//*[@id='lines'])//a[contains(.,'3148588733')])"));
		ActionsUtil.objetosPut("nolineahibrido2",           By.xpath("((//*[@id='lines'])//a[not(contains(.,'3148588733'))])"));
		ActionsUtil.objetosPut("lineahibrido3", 			By.xpath("((//*[@id='lines'])//a[contains(.,'3113753630')])"));
		ActionsUtil.objetosPut("nolineahibrido3",           By.xpath("((//*[@id='lines'])//a[not(contains(.,'3113753630'))])"));
		/*----------------------------------------------------------------------------------------------------------*/
		/*--------------------------------------- menu options -----------------------------------------------------*/
		ActionsUtil.objetosPut("resumen", 					By.xpath("(*//a[contains(.,'Resumen')])"));
		ActionsUtil.objetosPut("facturacion", 				By.xpath("//*[contains(@href,'/movil/facturacion')]|//*[contains(@href,'/hogar/facturacion')]"));
		ActionsUtil.objetosPut("saldos", 					By.xpath("//*[contains(@href,'/movil/saldos')]"));
		ActionsUtil.objetosPut("servicios",					By.xpath("//*[contains(@href,'/hogar/servicios')]"));
		ActionsUtil.objetosPut("serviciosmovil",			By.xpath("//*[contains(@href,'/movil/servicios')]"));
	    ActionsUtil.objetosPut("administrarservicios", 		By.xpath("//*[contains(@href,'/miscuentas')]"));
	    ActionsUtil.objetosPut("consultapqr", 				By.xpath("//*[contains(@href,'/mis-pqr')]"));
	    ActionsUtil.objetosPut("mejoraplan", 				By.xpath("//*[contains(@href,'/movil/mejora-tu-plan')]"));
	    ActionsUtil.objetosPut("soportetecnico", 			By.xpath("//*[contains(@href,'/movil/soporte-tecnico')]"));
	    ActionsUtil.objetosPut("visitatecnica",             By.xpath("//*[contains(@href,'/hogar/agendamiento')]"));
	    ActionsUtil.objetosPut("micuentamovil",             By.xpath("//a[@href='/']"));
	    ActionsUtil.objetosPut("compras",                   By.xpath("//*[contains(@href,'/compras')]"));
	    ActionsUtil.objetosPut("ofertas",                   By.xpath("//*[contains(@href,'/ofertas')]"));
	    ActionsUtil.objetosPut("premiummovil",              By.xpath("//*[contains(@href,'/movil/premium')]"));
	    /*-------------------------- mensajes de confirmacion y de errores -----------------------------------------*/
	    ActionsUtil.objetosPut("mensajeconfirmacion", 		By.xpath("/html/body/div[3]/div[1]/div/div/div/div[2]"));
	    /*------------------------------------------- dmz ----------------------------------------------------------*/
	    ActionsUtil.objetosPut("productointernetdetalles",  By.xpath("//*[@class='product internet']//*[@id='action_Detalles']"));
	    ActionsUtil.objetosPut("cambiardmzdelwifi",     	By.xpath("//*[contains(@href,'/hogar/servicios/cambiar_dmz_red_wifi/')]"));
	    ActionsUtil.objetosPut("ingresaripdmz",     		By.xpath("//*[@id='edit-ipdmz']"));
	    ActionsUtil.objetosPut("cambiarcontrasenawifi",     By.xpath("//*[@id='main-content']/div[2]/div/div/section[2]/div/div/div[2]/a"));
	    /*----------------------------------------------------------------------------------------------------------*/
	    ActionsUtil.objetosPut("ok", 						By.id("edit-submit"));
	    ActionsUtil.objetosPut("nuevacontrasenawifi", 		By.id("edit-password"));
		
		ActionsUtil.objetosPut("correoelectronicofijo", 	By.id("edit-email"));
		ActionsUtil.objetosPut("conmicorreo", 		    	By.id("addNew"));
		ActionsUtil.objetosPut("cambiarmiplan", 			By.id("action_Cambiar mi plan"));
		ActionsUtil.objetosPut("pqrune", 					By.id("iframePQR"));
		ActionsUtil.objetosPut("agregartarjeta", 			By.id("action_Agregar tarjeta"));
		ActionsUtil.objetosPut("modificarfacturacion", 		By.id("action_Modificar"));
		ActionsUtil.objetosPut("pagarfactura", 				By.id("action_Pagar"));
	    ActionsUtil.objetosPut("centrodeayuda", 			By.id("action_CENTRO DE AYUDA"));
	    ActionsUtil.objetosPut("tienda", 					By.id("action_TIENDAS"));
	    ActionsUtil.objetosPut("tiendas", 					By.xpath("/html/body/content/div[2]/div/section[1]/div/div/h3"));
	    ActionsUtil.objetosPut("recargarmicuenta", 			By.id("action_Recargar"));
	    ActionsUtil.objetosPut("transferir", 				By.id("action_Transferir"));
	    ActionsUtil.objetosPut("ultimafacturapdf", 			By.id("action_Última factura PDF"));
	    ActionsUtil.objetosPut("historicoultimafacturapdf", By.xpath("(//*[@class='historial-factura']//a[@href])[1]"));
	    ActionsUtil.objetosPut("activatufacturaelectronica",By.id("action_Activa tu factura digital"));
	    ActionsUtil.objetosPut("montoacompartir", 			By.id("edit-value-transfer"));
	    ActionsUtil.objetosPut("numerodeldestinatario", 	By.id("edit-line-transfer"));
	    ActionsUtil.objetosPut("numerodocumento", 			By.id("edit-document-number"));
		ActionsUtil.objetosPut("usuario", 					By.xpath("//*[@id='top_menu_aside']/nav/ul/li/a"));
		ActionsUtil.objetosPut("cerrarsesion", 				By.xpath("//*[@id='top_menu_aside']/nav/ul/li/ul/li[2]/a"));
		ActionsUtil.objetosPut("planes", 					By.xpath("//*[@id='main-content']/div[2]"));
		ActionsUtil.objetosPut("cambiarmiclave", 			By.xpath("//*[@id='main-content']/div[2]/div[7]/div/div/div/div/div[2]/a"));
		ActionsUtil.objetosPut("productoscontratados", 	  	By.xpath("//*[@id='main-content']/div[2]/div/div/section/div/div/div"));
	    ActionsUtil.objetosPut("agregartarjetadecredito", 	By.xpath("//*[@id='main-content']/div[2]/div/div/section[2]/div/h2"));
		ActionsUtil.objetosPut("pqrtigo", 					By.xpath("//*[@id='formInicioPqr:panelBotonesInicio']/thead/tr/th/span"));
		ActionsUtil.objetosPut("mejorarplan", 				By.xpath("//*[@id='main-content']/div[2]/div[1]/div/section[2]/div/div/div[2]/div/span/h3"));
		ActionsUtil.objetosPut("detalleplan", 				By.xpath("//*[@id='main-content']/div[2]/div[1]/div/section[2]/div/div/div[2]/div/span/p"));
		ActionsUtil.objetosPut("ingresatudocumento", 		By.xpath("//*[@id='document']"));
		ActionsUtil.objetosPut("tipoul", 					By.xpath("//*[@id='t_document']/div/div/ul"));
		ActionsUtil.objetosPut("tipoulcc", 					By.xpath("//*[@id='t_document']/div/div/ul/li[1]"));
		ActionsUtil.objetosPut("tipoulce", 					By.xpath("//*[@id='t_document']/div/div/ul/li[2]"));
		ActionsUtil.objetosPut("tipoulnit", 				By.xpath("//*[@id='t_document']/div/div/ul/li[3]"));
		ActionsUtil.objetosPut("tipoulps", 					By.xpath("//*[@id='t_document']/div/div/ul/li[4]"));
		ActionsUtil.objetosPut("tipodocumentomitigo", 		By.xpath("//*[@id='t_document']/div/div/input"));
		ActionsUtil.objetosPut("consultar", 				By.xpath("//*[@id='findagenda']/div[2]/div[2]/button"));
		ActionsUtil.objetosPut("mensajeerrordocumento", 	By.xpath("//*[@id='query-container']/section/div[1]/span[2]"));
		ActionsUtil.objetosPut("opcionesdeconsulta", 		By.xpath("//*[@id='t_choose']/div/div/input"));
	    ActionsUtil.objetosPut("visita", 		        	By.xpath("/html/body/div[3]/div[2]/div/section/div/div[2]/div[8]/div/section/div/div/div/section/div/form/div[1]/div[2]/div[1]/div/div/div/ul/li[2]"));
		ActionsUtil.objetosPut("visitaspendientes", 		By.xpath("//*[@id='schedule-visits-container']/div/div[1]/div/p"));
		ActionsUtil.objetosPut("sic", 						By.xpath("//*[@id='contenido_medio']/div[1]/h1"));
	    ActionsUtil.objetosPut("comprar", 					By.xpath("//*[@id='block-bannerdepromocionesrecargasypaquetes']/div/div[2]/div[1]/div[1]/div/li/div/a"));
	    ActionsUtil.objetosPut("personalizaredwifi", 		By.xpath("//*[@data-link-action='personaliza tu red wifi banner']"));
	    ActionsUtil.objetosPut("repone", 					By.xpath("//*[@id='group-header-0']/div[1]/div/div/h2/span"));
	    ActionsUtil.objetosPut("documento", 				By.xpath("//*[@id='edit-container']/div[1]/div/div/div"));
	    ActionsUtil.objetosPut("cc", 						By.xpath("//*[@id='edit-container']/div[1]/div/div/div/ul/li[1]"));
	    ActionsUtil.objetosPut("impresa", 					By.xpath("//*[@id='edit-container']/div[3]/label"));
	    ActionsUtil.objetosPut("electronica", 				By.xpath("//*[@id='edit-container']/div[1]/label"));
	    ActionsUtil.objetosPut("confirmartransferencia", 	By.xpath("//*[contains(@id,'edit-next--')]"));
	    ActionsUtil.objetosPut("pagartufactura", 			By.xpath("//*[@id='main-content']/section/div/div/h2"));
	    ActionsUtil.objetosPut("menuinferior", 				By.xpath("//*[@id='main-content']/div[2]/div[9]/div/div/div/div"));
	    ActionsUtil.objetosPut("consultaramiasesor", 		By.xpath("//*[@id='asesor-container']/section/div/a"));
		ActionsUtil.objetosPut("realizarregistrodeequipo", 	By.xpath("/html/body/content/div[2]/div/div/section/div/div/div/div/div/div/a"));
	    ActionsUtil.objetosPut("referenciadepago",          By.xpath("((//*[@data-block-action='Billing'])//*[@class='title' and contains(text(),'Referencia de pago:')])/..//*[@class='value ng-binding']"));
	    ActionsUtil.objetosPut("consumos",                  By.xpath("//*[contains(@href,'consumos')]"));
	    ActionsUtil.objetosPut("fechayhoradatos",           By.xpath("//*[contains(text(),'Datos')]/..//*[contains(text(),'Fecha y Hora')]"));
	    ActionsUtil.objetosPut("diadatos", 	                By.xpath("//*[contains(text(),'Datos')]/..//*[contains(text(),'Día')]"));
	    ActionsUtil.objetosPut("consumodatos", 	            By.xpath("//*[contains(text(),'Datos')]/..//*[contains(text(),'Consumo')]"));
	    ActionsUtil.objetosPut("consultarllamadas",         By.xpath("//*[@id='main-content']/div[2]/div[3]/div/section[2]/div/h2"));
	    ActionsUtil.objetosPut("fechainicialllamadas",      By.id("edit-date-from"));
	    ActionsUtil.objetosPut("fechainicialmensajes",      By.id("edit-date-from--2"));
	    ActionsUtil.objetosPut("fechafinalllamadas",        By.id("edit-date-till"));
	    ActionsUtil.objetosPut("fechafinalmensajes",        By.id("edit-date-till--2"));
	    ActionsUtil.objetosPut("diadelcalendariollamadas",  By.xpath("/html/body/div[4]/div/div[1]/div[3]/div[1]/table/tbody/tr[3]/td[2]"));
	    ActionsUtil.objetosPut("diadelcalendariomensajes",  By.xpath("/html/body/div[5]/div/div[1]/div[3]/div[1]/table/tbody/tr[3]/td[2]"));
	    ActionsUtil.objetosPut("diadelcalendariofinalllamadas", By.xpath("/html/body/div[6]/div/div/div[3]/div[1]/table/tbody/tr[4]/td[5]"));
	    ActionsUtil.objetosPut("diadelcalendariofinalmensajes", By.xpath("/html/body/div[7]/div/div/div[3]/div[1]/table/tbody/tr[4]/td[5]"));
	    ActionsUtil.objetosPut("okfecha",                   By.xpath("//*[contains(@class,'dtp-btn-ok')]"));
	    ActionsUtil.objetosPut("okfechafinal",              By.xpath("/html/body/div[6]/div/div[2]/button[4]"));
	    ActionsUtil.objetosPut("okfechafinalmensajes",      By.xpath("/html/body/div[7]/div/div[2]/button[4]"));
	    ActionsUtil.objetosPut("verllamadas",               By.id("edit-send"));
	    ActionsUtil.objetosPut("vermensajes",               By.id("edit-send--2"));
	    ActionsUtil.objetosPut("consultarmensajes",         By.xpath("//*[@id='main-content']/div[2]/div[3]/div/section[3]/div/h2"));
	    ActionsUtil.objetosPut("fechayhorallamadas",        By.xpath("//*[@id='cedf447c-b504-43e4-8eb8-9d2a9df6e88a']/table/thead/tr/th[1]/div"));
	    ActionsUtil.objetosPut("fechayhoramensajes",        By.xpath("//*[contains(text(),'Mensajes')]/..//*[contains(text(),'Fecha y Hora')]"));
	    ActionsUtil.objetosPut("destinollamadas",           By.xpath("//*[@id='cedf447c-b504-43e4-8eb8-9d2a9df6e88a']/table/thead/tr/th[2]/div"));
	    ActionsUtil.objetosPut("destinomensajes",           By.xpath("//*[contains(text(),'Mensajes')]/..//*[contains(text(),'Destino')]"));
	    ActionsUtil.objetosPut("duracionllamadas",          By.xpath("//*[@id='cedf447c-b504-43e4-8eb8-9d2a9df6e88a']/table/thead/tr/th[3]/div"));
	    ActionsUtil.objetosPut("mesanteriorfechainicial",   By.xpath("/html/body/div[4]/div/div/div[1]/div[1]/div[1]"));
	    ActionsUtil.objetosPut("mesanteriorfechafinal",     By.xpath("/html/body/div[6]/div/div[1]/div[1]/div[1]/div[1]"));
	    ActionsUtil.objetosPut("productotelevisiondetalles",By.xpath("//*[@class='product television']//*[@id='action_Detalles']"));
	    ActionsUtil.objetosPut("planproducto",              By.xpath("//*[@id='main-content']/div[2]/div/div/section[2]/div/div/div[1]/div/div[1]/div[2]/div/div[1]/span"));
	    ActionsUtil.objetosPut("numerosuscripcionproducto", By.xpath("//*[@id='main-content']/div[2]/div/div/section[2]/div/div/div[1]/div/div[1]/div[2]/div/div[2]/span"));
	    ActionsUtil.objetosPut("direccionubicacionproducto",By.xpath("//*[@id='main-content']/div[2]/div/div/section[2]/div/div/div[1]/div/div[2]/div/div[1]/span"));
	    ActionsUtil.objetosPut("informaciondedispositivos", By.xpath("//*[@id='main-content']/div[2]/div/div/section[2]/div/div/div[1]/div/span"));
	    ActionsUtil.objetosPut("productotelefoniadetalles", By.xpath("//*[@class='product telefonia']//*[@id='action_Detalles']"));
	    ActionsUtil.objetosPut("historicodeconsumo",        By.xpath("//*[contains(@href,'/hogar/servicios/historico/consumo/')]"));
	    ActionsUtil.objetosPut("estadocadapqr",	 			By.xpath("//*[@id='pqr-container']//*[@ng-repeat='pqr in pqrs']"));
	    ActionsUtil.objetosPut("estadospqrs",	 			By.xpath("//*[@id='pqr-container']"));
	    ActionsUtil.objetosPut("detalleconsumo",            By.xpath("//*[@id='table_group_month']"));
	    ActionsUtil.objetosPut("verdetalle",                By.xpath("//*[@id='table_group_month']//*[contains(@value,'Ver Detalle')]"));
	    ActionsUtil.objetosPut("fechaconsumo",              By.xpath("//*[@id='table_group_day']/form/div[1]/table/tbody/tr[1]/td[1]/div/span"));
	    ActionsUtil.objetosPut("cambiarcanalwifi",          By.xpath("//*[contains(@href,'/hogar/servicios/cambiar_canal_wifi/')]"));
	    ActionsUtil.objetosPut("nuevocanal",                By.xpath("//*[@id='home-change-channel-network-form']/div[1]/div/div/input"));
	    ActionsUtil.objetosPut("canal3",                    By.xpath("/html/body/div[3]/div[2]/div/section/div/section/div/div/form/div[1]/div/div/ul/li[4]"));
	    ActionsUtil.objetosPut("canalautomatico",           By.xpath("/html/body/div[3]/div[2]/div/section/div/section/div/div/form/div[1]/div/div/ul/li[1]"));
	    ActionsUtil.objetosPut("mensajecambiocanal",        By.xpath("/html/body/div[3]/div[1]/div/div/div/div[2]"));
	    ActionsUtil.objetosPut("cambiarnombredelaredwifiurl",By.xpath("//*[contains(@href,'/hogar/servicios/cambiar_nombre_red_wifi/')]"));
	    ActionsUtil.objetosPut("cambiarnombredelaredwifi",  By.id("edit-ssid"));
	    ActionsUtil.objetosPut("numerodecontrato",  		By.xpath("(//*[@id='account-mobile-selector']|//*[@id='block-accountsblock-2'])//*[@class='line']"));
	    ActionsUtil.objetosPut("mensajecard",               By.xpath("//*[@id='schedule-visits-container']/div/div/div/div[1]/div/p"));
	    ActionsUtil.objetosPut("mensajeinformacion",        By.xpath("/html/body/div[3]/div[1]/div/div/div/p"));
	    ActionsUtil.objetosPut("mensajeinformacioncolorfondo", By.xpath("/html/body/div[3]/div[1]/div/div"));
	    ActionsUtil.objetosPut("centrodeayudafijo", 		By.xpath("//*[@id='schedule-visits-container']/div[2]/div/div/div[2]/div[2]/a"));
	    ActionsUtil.objetosPut("chatonline",                By.xpath("/html/body/div[1]/div/div/div[2]/div/div[2]/div[1]"));
	    ActionsUtil.objetosPut("chatenlinea",  	            By.xpath("//*[@id='schedule-visits-container']/div[2]/div/div/div[2]/div[3]/a"));
	    ActionsUtil.objetosPut("volveralinicio",            By.xpath("//*[@id='schedule-visits-container']/div/div/div/div[1]/div/p"));
	    ActionsUtil.objetosPut("ayuda", 	                By.xpath("//*[@id='Embed']/button"));
		ActionsUtil.objetosPut("nombreserviciotvtradicional",By.xpath("//*[contains(text(),'Tradicional')]"));
		ActionsUtil.objetosPut("nombreserviciotvonetv",     By.xpath("//*[contains(text(),'ONEtv')]"));
	    ActionsUtil.objetosPut("numeroserviciotvonetv",     By.xpath("//*[@id='main-content']/div[2]/div[1]/div/section/div/div/div/div[1]/div[2]/div/div[2]/div/span[2]"));
	    ActionsUtil.objetosPut("numeroserviciotvtradicional",By.xpath("//*[@id='main-content']/div[2]/div[1]/div/section/div/div/div/div[1]/div[1]/div/div[2]/div/span[2]"));
	    ActionsUtil.objetosPut("estadoserviciotvonetv",     By.xpath("//*[@id='main-content']/div[2]/div[1]/div/section/div/div/div/div[1]/div[2]/div/div[2]/div/span[3]"));
	    ActionsUtil.objetosPut("estadoserviciotvtradicional",By.xpath("//*[@id='main-content']/div[2]/div[1]/div/section/div/div/div/div[1]/div[1]/div/div[2]/div/span[3]"));
	    ActionsUtil.objetosPut("television",                By.xpath("//*[@id='main-content']/div[2]/div/div/section[2]/div/div/div[1]/div/div[1]/h2"));
	    ActionsUtil.objetosPut("diagnosticarfallas",        By.xpath("/html/body/div[3]/div[2]/div/section/div/div[2]/div[1]/div/section/div/div/div/div[1]/div[2]/div/div[2]/div/div[2]"));
	    ActionsUtil.objetosPut("modaldiagnosticofallas",    By.xpath("//*[@id='modal-diagnosis']/div[1]/div/h4"));
	    ActionsUtil.objetosPut("miinformacion",             By.xpath("//*[@class='block-title']"));
	    ActionsUtil.objetosPut("nombremovil",               By.xpath("//*[@id='main-content']/div[2]/div[1]/div/section[1]/div/div/div/div[1]/div"));
	    ActionsUtil.objetosPut("documentomovil",            By.xpath("//*[@id='main-content']/div[2]/div[1]/div/section[1]/div/div/div/div[2]/div"));
	    ActionsUtil.objetosPut("direccionmovil",            By.xpath("//*[@id='main-content']/div[2]/div[1]/div/section[1]/div/div/div/div[3]/div"));
	    ActionsUtil.objetosPut("departamentomovil",         By.xpath("//*[@id='main-content']/div[2]/div[1]/div/section[1]/div/div/div/div[4]/div"));
	    ActionsUtil.objetosPut("ciudadmovil",               By.xpath("//*[@id='main-content']/div[2]/div[1]/div/section[1]/div/div/div/div[5]/div"));
	    ActionsUtil.objetosPut("correoelectronicomovil",    By.xpath("//*[@id='main-content']/div[2]/div[1]/div/section[1]/div/div/div/div[6]/div"));
	    ActionsUtil.objetosPut("telefonomovil",             By.xpath("//*[@id='main-content']/div[2]/div[1]/div/section[1]/div/div/div/div[7]/div"));
	    ActionsUtil.objetosPut("miequipoymisimcard",        By.xpath("//*[@id='main-content']/div[2]/div[2]/div/section[1]/div/h2"));
	    ActionsUtil.objetosPut("imeimovil",                 By.xpath("//*[@id='main-content']/div[2]/div[2]/div/section[1]/div/div/div/div[2]/div[1]/div"));
	    ActionsUtil.objetosPut("imsimovil",                 By.xpath("//*[@id='main-content']/div[2]/div[2]/div/section[1]/div/div/div/div[2]/div[2]/div"));
	    ActionsUtil.objetosPut("estadomovil",               By.xpath("//*[@id='main-content']/div[2]/div[2]/div/section[1]/div/div/div/div[2]/div[3]/div"));
	    ActionsUtil.objetosPut("datosfacturacion",          By.xpath("//*[@id='main-content']/section/div/div/h2"));
	    ActionsUtil.objetosPut("numero",                    By.xpath("//*[@id='edit-document-number']"));
	    
	    ActionsUtil.objetosPut("saldo",                     By.xpath("//*[@id='main-content']/div[2]/div[1]/div/section[1]/div/h2"));
	    ActionsUtil.objetosPut("saldocuenta",               By.xpath("//*[@id='main-content']/div[2]/div[1]/div/section[1]/div/div/div[1]/div[1]/span"));
	    ActionsUtil.objetosPut("buzon",                     By.xpath("//*[@id='main-content']/div[2]/div[2]/div/section[3]/div/div/div/div[2]/h2"));
	    ActionsUtil.objetosPut("adelanta",                  By.xpath("//*[@id='main-content']/div[2]/div[2]/div/section[3]/div/div/div/div[1]/h2"));
	    ActionsUtil.objetosPut("activaturoaming",           By.xpath("//*[@id='main-content']/div[2]/div[2]/div/section[4]/div/h2"));
	    ActionsUtil.objetosPut("miplanmovil",               By.xpath("//*[@id='main-content']/div[2]/div[1]/div/section[1]/div/h2"));
	    ActionsUtil.objetosPut("nombreplan",                By.xpath("//*[@id='main-content']/div[2]/div[1]/div/section[1]/div/div/div[1]/p"));
	    ActionsUtil.objetosPut("internetplan",              By.xpath("//*[@id='main-content']/div[2]/div[1]/div/section[1]/div/div/div[2]/div/div/div/div/div[1]/div[1]/div[3]"));
	    ActionsUtil.objetosPut("minutosplan",               By.xpath("//*[@id='main-content']/div[2]/div[1]/div/section[1]/div/div/div[2]/div/div/div/div/div[1]/div[2]/div/div[3]"));
	    ActionsUtil.objetosPut("mensajesplan",              By.xpath("//*[@id='main-content']/div[2]/div[1]/div/section[1]/div/div/div[2]/div/div/div/div/div[1]/div[3]/div/div[3]"));
	    ActionsUtil.objetosPut("cargobasicoplan",           By.xpath("//*[@id='main-content']/div[2]/div[1]/div/section[1]/div/div/div[2]/div/div/div/div/div[2]/div[1]"));    
	    ActionsUtil.objetosPut("lineasasociadas",           By.xpath("//*[@id='edit-lines']"));
	    ActionsUtil.objetosPut("paquetesdisponibles",       By.xpath("//*[@id='main-content']/div[2]/div/div/section/div/div/div[2]/div/div/div[2]/div[1]"));	
	    ActionsUtil.objetosPut("vercontrato",               By.xpath("//*[@id='edit-url']"));
	    ActionsUtil.objetosPut("paquetesmicuenta",          By.xpath("//*[@id='main-content']/div[2]/div[1]/div/section[1]/div"));
	    ActionsUtil.objetosPut("amazonprimevideo",          By.xpath("//*[@id='main-content']/div[2]/div[2]/div/section/div/div/div/div[1]/div[1]/h2"));
	    ActionsUtil.objetosPut("deezer",                    By.xpath("//*[@id='main-content']/div[2]/div[3]/div/section/div/div/div/div/div[1]/h2"));
	    ActionsUtil.objetosPut("saldoendinero",             By.xpath("//*[@id='main-content']/div[2]/div[1]/div/section[2]/div/h2"));
	    ActionsUtil.objetosPut("reponetusim1",              By.xpath("//*[@id='main-content']/div[2]/div[1]/div/div/div/section/div/h2"));
	    ActionsUtil.objetosPut("nuevalinea1",               By.xpath("//*[@id='main-content']/div[2]/div[1]/div/div/div/section/div/h2"));
	    ActionsUtil.objetosPut("contratopdf",               By.xpath("//*[contains(@src,'https://felec.computec.com/DescargaTigoDoc/servlet/SrvConsultaTigoDoc?tokenWs=')]"));
	    ActionsUtil.objetosPut("conocemasdeezer",           By.xpath("//*[@id='main-content']/div[2]/div[3]/div/section/div/div/div/p/a"));
	    ActionsUtil.objetosPut("conocemasamazon",           By.xpath("//*[@id='main-content']/div[2]/div[2]/div/section/div/div/div/p/a"));
	    ActionsUtil.objetosPut("configurarsmartapps",       By.xpath("//*[@id='action_Configurar']"));
	    ActionsUtil.objetosPut("abrirdeezer",               By.id("action_Abrir deezer"));
	    ActionsUtil.objetosPut("activardeezer",             By.xpath("//*[@id='main-content']/div[2]/div[3]/div/section/div/div/div/div[2]/a")); 
	    ActionsUtil.objetosPut("activaramazon",             By.xpath("//*[@id='main-content']/div[2]/div[2]/div/section/div/div/div/div[2]/a"));
	    ActionsUtil.objetosPut("iconoamazon",               By.xpath("//*[@id='main-content']/section/div/div/div[1]/div/div"));
	    ActionsUtil.objetosPut("yaactivastedeezer",         By.xpath("//*[@id='main-content']/section/div/div/h2"));
	    ActionsUtil.objetosPut("desactivardeezer",          By.id("action_Desactivar"));
	    ActionsUtil.objetosPut("desactivar2deezer",         By.xpath("//*[@id='modal-Deezer']/div[2]/div[1]/a"));
	    ActionsUtil.objetosPut("regresardeezer",            By.xpath("//*[@id='main-content']/section/section/div/a"));
	    ActionsUtil.objetosPut("continuaramazon",           By.xpath("//*[@id='main-content']/section/div/div/div[6]/a"));
	    ActionsUtil.objetosPut("bloqueodeequipoysim",       By.xpath("//*[@id='action_Bloqueo de equipo y sim']"));
	    ActionsUtil.objetosPut("bloqueodeequipoysimcard",   By.xpath("//*[@id='blocked-sim-form']/div/h2"));
	    ActionsUtil.objetosPut("continuarbloqueo",          By.xpath("//*[@id='edit-next']"));
	    ActionsUtil.objetosPut("departamentobloqueo",       By.xpath("(//input[@class='select-dropdown'])[1]"));
	    ActionsUtil.objetosPut("cundinamarca",              By.xpath("//li[contains(.,'Cundinamarca')]"));
	    ActionsUtil.objetosPut("ciudadbloqueo", 	        By.xpath("(//input[@class='select-dropdown'])[2]")); 
	    ActionsUtil.objetosPut("bogota",                    By.xpath("//li[contains(.,'Bogotá')]"));
	    ActionsUtil.objetosPut("direccionaproximada",       By.xpath("(//input[@class='form-text required form-type-textfield form-control'])[1]"));
	    ActionsUtil.objetosPut("descripciondeloshechos",    By.xpath("(//input[@class='form-text required form-type-textfield form-control'])[2]"));
	    ActionsUtil.objetosPut("robo", 						By.xpath("//*[@id='edit-type-block']/div[2]/label"));
	    ActionsUtil.objetosPut("siviolenciarobo",			By.xpath("/html/body/div[3]/div[2]/div/section/div/div[2]/div/div/section/div/div/div/form/div/div[9]/fieldset/div/div/div[1]/label"));
	    ActionsUtil.objetosPut("sipresentaronarmas",		By.xpath("/html/body/div[3]/div[2]/div/section/div/div[2]/div/div/section/div/div/div/form/div/div[10]/fieldset/div/div/div[1]/label"));
	    ActionsUtil.objetosPut("tipoarma",					By.xpath("/html/body/div[3]/div[2]/div/section/div/div[2]/div/div/section/div/div/div/form/div/div[11]/div/div/div/div"));
	    ActionsUtil.objetosPut("armablanca", 				By.xpath("/html/body/div[3]/div[2]/div/section/div/div[2]/div/div/section/div/div/div/form/div/div[11]/div/div/div/div/ul/li[2]"));
	    ActionsUtil.objetosPut("descripcionhechosrobo", 	By.xpath("/html/body/div[3]/div[2]/div/section/div/div[2]/div/div/section/div/div/div/form/div/div[12]/div/input"));	    
	    ActionsUtil.objetosPut("historialdefacturacion",    By.xpath("//*[@id='main-content']/div[2]/div[3]/div/section/div/h2"));
	    ActionsUtil.objetosPut("primeritemcondetalle",      By.xpath("(//*[@class='btn-details collapsed'])[1]"));
	    ActionsUtil.objetosPut("numerolinea",               By.id("num_lin"));
	    ActionsUtil.objetosPut("realizaloahora",            By.xpath("/html/body/content/div[2]/div/div/section/div/div/div/div/div/div/a"));
	  
	    ActionsUtil.objetosPut("recaptcha",					By.xpath("//*[@id='recaptcha-anchor']/div[5]"));
	}
	
}