package com.handresc1127.automatizacion.objectsmap;

import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
import java.util.HashMap;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import com.handresc1127.automatizacion.utilities.ActionsUtil;

public final class DatosNegocio {
	
	private static final Logger LOGGER = LoggerFactory.getLogger(DatosNegocio.class);
	private DatosNegocio() {
	    throw new IllegalStateException("Utility class");
	  }
	
	private static final HashMap<String, String> datosDelNegocio = new HashMap<>();
	
	static {
		Calendar now = Calendar.getInstance();
		dataPut("paginapagodefacturas", ActionsUtil.getProperty("baseURL1"));
		dataPut("paginapaquetes", ActionsUtil.getProperty("baseURL1"));
		dataPut("paginamicuentatigo", ActionsUtil.getProperty("baseURL2"));
		dataPut("paginamicuentaempresas", ActionsUtil.getProperty("baseURL1"));
		dataPut("movil_msisdnconfacturas", "3043878232");
		dataPut("movil_msisdnsinfacturas", "3003588240");
		dataPut("hogar_numdocumentoconfacturas", "552716");
		dataPut("hogar_numdocumentosinfacturas", "71770656");
		dataPut("hogar_numdocumentoconunafactura", "71980749");
		dataPut("msisdncondeuda", "3003174583");
		dataPut("msisdnsindeuda", "3008913170");
		dataPut("thismm()", String.valueOf(now.get(Calendar.MONTH) + 1));
		dataPut("thisyyyy()", String.valueOf(now.get(Calendar.YEAR)));
		now.add(Calendar.MONTH, 1);
		dataPut("nextmm()", String.valueOf(now.get(Calendar.MONTH) + 1));
		now = Calendar.getInstance();
		now.add(Calendar.YEAR, 1);
		dataPut("nextyyyy()", String.valueOf(now.get(Calendar.YEAR)));
		dataPut("today()", "01/01/2019");
		Date date = now.getTime();             
		SimpleDateFormat format1 = new SimpleDateFormat("dd/MM/yyyy");          
		String inActiveDate = null;
		try {
		    inActiveDate = format1.format(date);
		    dataPut("today()", inActiveDate);
		} catch (Exception e) {
			LOGGER.error("Excepcion dato today(): ", e);
		}
		dataPut("currentpath",System.getProperty("user.dir"));
		
		
		dataPut("numerounico()", "201901010000");
		SimpleDateFormat format2 = new SimpleDateFormat("yyyyMMddHHmm");          
		String ahoraDateTime = null;
		try {
			ahoraDateTime = format2.format(date);
			dataPut("numerounico()", ahoraDateTime);
		} catch (Exception e) {
			LOGGER.error("Excepcion dato ahoraDateTime(): ", e);
		}
	}
	
	public static String dataGet(String keyData) {
		String retorno = datosDelNegocio.get(ActionsUtil.textoMinusculasSinEspacios(keyData));
		if (retorno == null)
			retorno = keyData;
		return retorno;
	}

	public static void dataPut(String key, String value){
		datosDelNegocio.put(ActionsUtil.textoMinusculasSinEspacios(key),value);
	}
	
}
