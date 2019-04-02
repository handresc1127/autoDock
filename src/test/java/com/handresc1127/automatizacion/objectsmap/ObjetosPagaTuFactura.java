package com.handresc1127.automatizacion.objectsmap;

import org.openqa.selenium.By;

import com.handresc1127.automatizacion.utilities.ActionsUtil;

public class ObjetosPagaTuFactura {

	public ObjetosPagaTuFactura() {
		/*------------------------------------------- AUTENTICACION DRUPAL ---------------------------------------------------*/
		ActionsUtil.objetosPut("userdupaltransacciones",By.id("edit-name"));
		ActionsUtil.objetosPut("passdupaltransacciones",By.id("edit-pass"));
		/*------------------------------------------- {PANTALLA INICIAL ---------------------------------------------------*/
		ActionsUtil.objetosPut("hogar",               	By.xpath("//*[@id='edit-radios']/div[1]/label"));
		ActionsUtil.objetosPut("movil",               	By.xpath("//*[@id='edit-radios']/div[2]/label"));
		ActionsUtil.objetosPut("numerodedocumento",   	By.id("edit-document"));
		ActionsUtil.objetosPut("tulineatigo",         	By.id("edit-candidate-number"));
		ActionsUtil.objetosPut("labelerrordocumento", 	By.xpath("//*[@id='content_left_home_unified']/div/span"));
		ActionsUtil.objetosPut("labelerrorcelular",   	By.xpath("//*[@id='content_left_mobile_unified']/div/div/span"));
		ActionsUtil.objetosPut("labelerrorcorreo",    	By.xpath("//*[@id='content_right_mobile_unified']/div/div[1]/span"));
		ActionsUtil.objetosPut("labelerrorcorreoh",   	By.xpath("//*[@id='content_right_home_unified']/div/span"));
		ActionsUtil.objetosPut("consultarh",          	By.id("edit-consult-home"));
		ActionsUtil.objetosPut("seleccionmediodepago",	By.id("tigoune-payment-method-title"));
		ActionsUtil.objetosPut("consultarm",          	By.id("edit-consult-mobile"));
		ActionsUtil.objetosPut("consultarhclic",      	By.xpath("//*[@id='edit-consult-home' and (not(@disabled='disabled'))]"));
		ActionsUtil.objetosPut("consultarmclic",      	By.xpath("//*[@id='edit-consult-mobile' and (not(@disabled='disabled'))]"));
		ActionsUtil.objetosPut("lineasinfacturas",    	By.xpath("//*[@id='alert_main' and @style='display: block;']"));
		ActionsUtil.objetosPut("listfacturas",        	By.xpath("//*[@id='content_list_invoices']"));
		ActionsUtil.objetosPut("correoelectronicom",  	By.id("edit-email-mobile"));
		ActionsUtil.objetosPut("correoelectronicoh",  	By.id("edit-email-home"));
		ActionsUtil.objetosPut("mensajedeerrormsisdn",	By.xpath("//*[@id='content_left_forms_unified']/div/div[1]/span"));
		ActionsUtil.objetosPut("tipodedocumento",     	By.id("edit-document-type"));
		ActionsUtil.objetosPut("tarjetadecredito",    	By.xpath("//*[@id='payment-method-type-label-credit-payu' or @id='pm-VISA']"));
		ActionsUtil.objetosPut("numerodetarjeta",     	By.xpath("//*[@id='edit-cardnumber' or @id='ccNumber']"));
		ActionsUtil.objetosPut("debitobancariopse",   	By.xpath("//*[@id='payment-method-type-label-debit-payu' and @class='tigoune-card-header']|//*[@id='pm-PSE']"));	
		ActionsUtil.objetosPut("primerpagototal",     	By.xpath("(//*[@id='content_list_invoices']//*[contains(@id,'btn')])[1]"));
		ActionsUtil.objetosPut("title-detail",        	By.id("title-detail"));
		ActionsUtil.objetosPut("numerodelproducto",   	By.xpath("(//*[@class='tigoune-payment-content-values cardial-invioce']//*[@class='value'])[2]"));
		ActionsUtil.objetosPut("fechalimitedepago",   	By.xpath("(//*[@class='tigoune-payment-content-values cardial-invioce']//*[@class='value'])[3]"));
		ActionsUtil.objetosPut("referentedepago",     	By.xpath("(//*[@class='tigoune-payment-content-values cardial-invioce']//*[@class='value'])[4]"));
		ActionsUtil.objetosPut("valorapagar",         	By.xpath("(//*[@class='tigoune-payment-content-values cardial-invioce']//*[@class='value'])[1]"));
		ActionsUtil.objetosPut("cancelarnequi",       	By.id("tigoune-nequi-button-cancel"));
		ActionsUtil.objetosPut("formapagoseleccionada",	By.xpath("//*[@class='tigoune-card actived']"));
		ActionsUtil.objetosPut("formasdepago",        	By.xpath("//*[@id='payment_method']/div"));
		ActionsUtil.objetosPut("numerocuotas",        	By.id("edit-cardnumber-quota"));
		ActionsUtil.objetosPut("titulofacturasmoviles", By.xpath("//*[@id='block-tigo-theme-content']|//*[@id='primary-content']/div[1]"));
		ActionsUtil.objetosPut("tieneonotienefacturas",	By.xpath("//*[@id='content_list_invoices' or @id='payment-method-type-label-credit-payu' or (@id='alert_main' and @style='display: block;')]"));
		ActionsUtil.objetosPut("movil_msisdnconfacturas",By.id("payment-method-type-label-credit-payu"));
		ActionsUtil.objetosPut("movil_msisdnsinfacturas",By.id("payment-method-type-label-credit-payu"));
		ActionsUtil.objetosPut("hogar_numdocumentoconfacturas",By.xpath("(//*[@class='item-group-detail invoice-actions'])[1]"));
		ActionsUtil.objetosPut("hogar_numdocumentosinfacturas",By.xpath("//*[@class='content_alert']"));
		ActionsUtil.objetosPut("hogar_numdocumentoconunafactura", By.id("title-detail"));
		ActionsUtil.objetosPut("celularcomprador",    	By.xpath("//*[@id='edit-buyer-phone' or @id='contactPhone']"));
		ActionsUtil.objetosPut("detallesfactura",     	By.xpath("//*[@id='block-tigo-theme-content']/div/div[3]/div/div[2]/div[2]/div[1]/span"));
		ActionsUtil.objetosPut("regresar",            	By.xpath("//*[@id='tigoune-option-return']"));
		ActionsUtil.objetosPut("titulodetalles",      	By.xpath("//*[@class='transaction-details']|//*[contains(id,'edit-submit')]|//*[@id='panel-response-page']|//*[@id='title-detail']"));
		ActionsUtil.objetosPut("continuarpagoexitoso",	By.xpath("//*[@id='block-ofreceeldetalledelatransaccionderecarga']/div/div[1]/div/div[1]|//*[@id='response_button_continue']/span"));
		ActionsUtil.objetosPut("mensajeexitoso",      	By.xpath("//*[@id='block-ofreceeldetalledelatransaccionderecarga']/div/div[2]/div/div[1]/div[1]/h4"));
		ActionsUtil.objetosPut("mensajecancelado",  	By.xpath("//*[@id='page']/div[1]/div/div/div/div"));
		ActionsUtil.objetosPut("mensajetransaccion",  	By.xpath("//*[@id='page']/div[1]/div/div/div"));
		ActionsUtil.objetosPut("descargarcomprobante",	By.xpath("//*[@id='block-ofreceeldetalledelatransaccionderecarga']/div/div[2]/div/div[1]/div[2]/p|//*[@id='details-transaction']/div[2]/div[3]/div[1]/div/a|//*[@id='response_button_download']/span[2]"));
		ActionsUtil.objetosPut("mensajedepago",       	By.xpath("//*[@id='gateway-alert-content']"));
		ActionsUtil.objetosPut("mensajefallidopse", 	By.xpath("//*[@id='main_message']/p/span[2]"));
		ActionsUtil.objetosPut("pagoexitoso",			By.xpath("//*[@id='page']/div[1]/div/div/div"));
		
		/*------------------------------------------- TARJETA DE CREDITO ---------------------------------------------------*/
		ActionsUtil.objetosPut("iconotarjeta",        	By.xpath("//*[@id='ico_card']"));
		ActionsUtil.objetosPut("cvv",                 	By.xpath("//*[@id='edit-cvc' or @id='securityCodeAux_']"));
		ActionsUtil.objetosPut("mm",                  	By.xpath("//*[@id='edit-buyer-card-month-expiration' or @id='expirationDateMonth']"));
		ActionsUtil.objetosPut("aa",                  	By.xpath("//*[@id='edit-buyer-card-year-expiration' or @id='expirationDateYear']"));
		ActionsUtil.objetosPut("nombre",              	By.xpath("//*[@id='edit-ccname' or @id='cc_fullName']"));
		ActionsUtil.objetosPut("tipocc",              	By.xpath("//*[@id='edit-buyer-document-type--2' or @id='select-document-type']"));
		ActionsUtil.objetosPut("numerodedocumentotc", 	By.xpath("//*[@id='edit-buyer-document--2' or @id='cc_dniNumber']"));
		ActionsUtil.objetosPut("autorizoestatarjetaparafuturospagos", By.xpath("//*[@id='edit-authorized']/div/div/label[1]|//*[@name='deviceRegister']"));
		ActionsUtil.objetosPut("mensajetokenizacion", 	By.xpath("//*[@id='tigoune_credit_card_franchise']"));
		ActionsUtil.objetosPut("tokenizar",           	By.xpath("//*[@id='edit-submit--3']"));
		ActionsUtil.objetosPut("botonpagarf",         	By.xpath("//*[@id='btn_payment']"));
		ActionsUtil.objetosPut("botonpagar2",         	By.xpath("//*[@id='content_958595759-96']/div[2]/div/div[2]/div[2]/button"));
		ActionsUtil.objetosPut("botoneliminartc",     	By.xpath("/html/body/div[1]/div/div/div[2]/div/main/section/div/div/div/div[4]/div[3]/div[2]/form/div[6]/fieldset/div/div/div/div[6]/span"));
		ActionsUtil.objetosPut("smsconotp",           	By.xpath("//*[@id='tigoune-otp-step2']/div[1]/div"));
		ActionsUtil.objetosPut("codigootpeliminacion",	By.xpath("//*[@id='delete_token_new_device_tigoune-otp-code']"));
		ActionsUtil.objetosPut("continuareliminaciontc",By.xpath("//*[@id='tigoune-otp-step2']/div[2]/div[5]/a[2])"));		
		ActionsUtil.objetosPut("pagocontoken",        	By.xpath("//*[@id='tigoune-tokenization-list-cards']/div/div[1]/div/span"));
		ActionsUtil.objetosPut("2022",               	By.xpath("//*[@id='edit-buyer-card-year-expiration']/option[5] |//*[@id='expirationDateYear']/option[5]"));
        ActionsUtil.objetosPut("pagartc",             	By.xpath("//*[@id='edit-submit--4']|//*[@id='buyer_data_button_pay']"));
		//ActionsUtil.objetosPut("correotoken",         	By.id("identifierId"));                       
		//ActionsUtil.objetosPut("contrasenatoken",     	By.xpath("//*[@id='password']/div[1]/div/div[1]/input"));
		ActionsUtil.objetosPut("ultimocorreo",        	By.xpath("//*[@id=':2t']"));
		ActionsUtil.objetosPut("smsotp",              By.xpath("//*[@id=':f6']/center/div/table[2]/tbody/tr[4]/td/table/tbody/tr[2]/td/h1/text()"));
		ActionsUtil.objetosPut("ingresogmail",        By.xpath("/html/body/nav/div/a[2]"));
		/*-------------------------------------------------- PSE -----------------------------------------------------------*/
		ActionsUtil.objetosPut("banco",               By.xpath("//*[@id='edit-bank']|//*[@id='select-banks-pse']"));
		ActionsUtil.objetosPut("tipodepersona",       By.xpath("//*[@id='edit-buyer-type-person']|//*[@id='select-type-customer']"));
		ActionsUtil.objetosPut("nombresyapellidos",   By.xpath("//*[@id='edit-buyer-name']|//*[@id='fullName']"));
		ActionsUtil.objetosPut("numerodetelefono",    By.xpath("//*[@id='contactPhone']|//*[@id='edit-buyer-document']"));
		ActionsUtil.objetosPut("tipod",               By.id("edit-buyer-document-type"));
		ActionsUtil.objetosPut("numerodedocumentod",  By.xpath("//*[@id='edit-buyer-document']|//*[@id='input-number-document']"));
		ActionsUtil.objetosPut("emailpse",            By.xpath("//*[@id='ePNEMail']|//*[@id='PNEMail']"));
		ActionsUtil.objetosPut("pagard",              By.id("edit-submit"));
		ActionsUtil.objetosPut("pagar",               By.xpath("//*[@id='edit-open-modal']"));
		ActionsUtil.objetosPut("iralbanco",           By.xpath("//*[contains(@id,'btnSeguir')]"));
		ActionsUtil.objetosPut("debug",               By.id("btnDebug"));
		ActionsUtil.objetosPut("bankprocessdate",     By.id("txtBankProcessDate"));
		ActionsUtil.objetosPut("authorizationid",     By.id("txtAuthorizationID"));
		ActionsUtil.objetosPut("return",              By.id("btnReturnToPPE"));
		ActionsUtil.objetosPut("cancelarformadepago", By.xpath("//*[contains(@id,'edit-cancel')]"));
		ActionsUtil.objetosPut("msgerrortc",          By.xpath("//*[@id='image-credit_card']//*[contains(@class,'error')]"));
		ActionsUtil.objetosPut("irabanco",            By.xpath("//*[@id='btnSeguir']"));
		ActionsUtil.objetosPut("call",                By.id("btnCall"));
		ActionsUtil.objetosPut("transactionstate",    By.id("ddTransactionState"));
		ActionsUtil.objetosPut("pagopse",             By.xpath("//*[@id='edit-submit--2']|//*[@id=\"button-send-pse-form\"]/span"));
		
		
		/*----------------------------------- CONFIRMACION TRANSACCION ----------------------------------------------------*/
		ActionsUtil.objetosPut("detallestransaccion", By.id("details-transaction"));
	}

}
