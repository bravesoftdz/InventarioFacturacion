ŕ˝      ]       2Numero     ORIGIN I "Facturas"."Numero" 
FIELDPROPS    DisplayFormat'F'0000000000 Proceso I    WIDTH   ORIGIN I "Facturas"."Proceso" Nombre_Cliente I    WIDTH  d ORIGIN I "Facturas"."Nombre_Cliente" 	Condicion I    WIDTH   ORIGIN I "Facturas"."Condicion" Fecha     ORIGIN I "Facturas"."Fecha" Hora     ORIGIN I "Facturas"."Hora" Concepto_Factura I    WIDTH  d ORIGIN I "Facturas"."Concepto_Factura" 
Referencia I    WIDTH   ORIGIN I "Facturas"."Referencia" SubTotal     DECIMALS   WIDTH   ORIGIN I "Facturas"."SubTotal" 
FIELDPROPS    currency	 Total_Costo     DECIMALS   WIDTH   ORIGIN I "Facturas"."Total_Costo" 
FIELDPROPS    currency	 	TotalNeto     DECIMALS   WIDTH   ORIGIN I "Facturas"."TotalNeto" 
FIELDPROPS    currency	 
Comentario I    WIDTH  ˙ ORIGIN I "Facturas"."Comentario" Fecha_Validacion     ORIGIN I "Facturas"."Fecha_Validacion" Fecha_Cierre     ORIGIN I "Facturas"."Fecha_Cierre" Usuario I    WIDTH  d ORIGIN I "Facturas"."Usuario" Validado     ORIGIN I "Facturas"."Validado" Cerrado     ORIGIN I "Facturas"."Cerrado" Impuesto_Global     DECIMALS   WIDTH   ORIGIN I "Facturas"."Impuesto_Global" 
FIELDPROPS    DisplayFormat#,#0.00 Valor_Impuesto     DECIMALS   WIDTH   ORIGIN I "Facturas"."Valor_Impuesto" 
FIELDPROPS    currency	 Valor_Impuesto_Detalle     DECIMALS   WIDTH   ORIGIN I$ "Facturas"."Valor_Impuesto_Detalle" 
FIELDPROPS    currency	 Total_Impuesto     DECIMALS   WIDTH   ORIGIN I "Facturas"."Total_Impuesto" 
FIELDPROPS    currency	 Descuento_Global     DECIMALS   WIDTH   ORIGIN I "Facturas"."Descuento_Global" 
FIELDPROPS    DisplayFormat#,#0.00 Valor_Descuento     DECIMALS   WIDTH   ORIGIN I "Facturas"."Valor_Descuento" 
FIELDPROPS    currency	 Valor_Descuento_Detalle     DECIMALS   WIDTH   ORIGIN I% "Facturas"."Valor_Descuento_Detalle" 
FIELDPROPS    currency	 Total_Descuento     DECIMALS   WIDTH   ORIGIN I "Facturas"."Total_Descuento" 
FIELDPROPS    currency	 Terminos     ORIGIN I "Facturas"."Terminos" Vencimiento     ORIGIN I "Facturas"."Vencimiento" Pagado     DECIMALS   WIDTH   ORIGIN I "Facturas"."Pagado" 
FIELDPROPS    currency	 	Pendiente     DECIMALS   WIDTH   ORIGIN I "Facturas"."Pendiente" 
FIELDPROPS    currency	 
UltimoPago     ORIGIN I "Facturas"."UltimoPago" Total_Efectivo_Recibido     DECIMALS   WIDTH   ORIGIN I% "Facturas"."Total_Efectivo_Recibido" 
FIELDPROPS    currency	 Total_Efectivo_Devuelto     DECIMALS   WIDTH   ORIGIN I% "Facturas"."Total_Efectivo_Devuelto" 
FIELDPROPS    currency	 Cliente I    WIDTH   ORIGIN I "Facturas"."Cliente" Status I    WIDTH   ORIGIN I "Facturas"."Status" Tipo_Factura I    WIDTH   ORIGIN I "Facturas"."Tipo_Factura" Tipo_NCF I    WIDTH   ORIGIN I "Facturas"."Tipo_NCF" NCF I    WIDTH  d ORIGIN I "Facturas"."NCF" Vendedor I    WIDTH   ORIGIN I "Facturas"."Vendedor" Nombre_Vendedor I    WIDTH  d ORIGIN I "Facturas"."Nombre_Vendedor" qrDetalle_Pago_Factura     Proceso I    WIDTH   ORIGIN I! "Detalle_Pago_Factura"."Proceso" 
Forma_Pago     ORIGIN I$ "Detalle_Pago_Factura"."Forma_Pago" Fecha     ORIGIN I "Detalle_Pago_Factura"."Fecha" Hora     ORIGIN I "Detalle_Pago_Factura"."Hora" Tasa     DECIMALS   WIDTH   ORIGIN I "Detalle_Pago_Factura"."Tasa" 
FIELDPROPS    currency	 Valor_Recibido     DECIMALS   WIDTH   ORIGIN I( "Detalle_Pago_Factura"."Valor_Recibido" 
FIELDPROPS    currency	 Valor_Recibido_Local     DECIMALS   WIDTH   ORIGIN I. "Detalle_Pago_Factura"."Valor_Recibido_Local" 
FIELDPROPS    currency	 Valor_Devolver     DECIMALS   WIDTH   ORIGIN I( "Detalle_Pago_Factura"."Valor_Devolver" 
FIELDPROPS    currency	 Valor_Devolver_Local     DECIMALS   WIDTH   ORIGIN I. "Detalle_Pago_Factura"."Valor_Devolver_Local" 
FIELDPROPS    currency	 Numero_Banco     ORIGIN I& "Detalle_Pago_Factura"."Numero_Banco" Numero_Documento I    WIDTH   ORIGIN I* "Detalle_Pago_Factura"."Numero_Documento" Numero_Aprobacion I    WIDTH   ORIGIN I+ "Detalle_Pago_Factura"."Numero_Aprobacion" Mes_Vencimiento     ORIGIN I) "Detalle_Pago_Factura"."Mes_Vencimiento" MINVALUE      MAXVALUE     
FIELDPROPS    DisplayFormat00MaxValue Ano_Vencimiento     ORIGIN I) "Detalle_Pago_Factura"."Ano_Vencimiento" 
FIELDPROPS    DisplayFormat0000 Tipo_Documento I    WIDTH  d ORIGIN I( "Detalle_Pago_Factura"."Tipo_Documento" Es_Efectivo     ORIGIN I% "Detalle_Pago_Factura"."Es_Efectivo" Requiere_Documento     ORIGIN I, "Detalle_Pago_Factura"."Requiere_Documento" Requiere_Vencimiento     ORIGIN I. "Detalle_Pago_Factura"."Requiere_Vencimiento" Requiere_Aprobacion     ORIGIN I- "Detalle_Pago_Factura"."Requiere_Aprobacion" 	Pendiente     DECIMALS   WIDTH   ORIGIN I# "Detalle_Pago_Factura"."Pendiente" 
FIELDPROPS    currency	  BDEDEFAULT_X K L            C ˙˙
 0    %                             đ?Forma_Pago BDEDEFAULT_X K F            = ˙˙
 0    %                             đ?Tasa BDEDEFAULT_X K Q            H ˙˙
 0    %            	          	 Efectivo Tipo_Documento BDEDEFAULT_X K G            > ˙˙
 0    %                         Es_Efectivo BDEDEFAULT_X K N            E ˙˙
 0    %                         Requiere_Documento BDEDEFAULT_X K P            G ˙˙
 0    %                         Requiere_Vencimiento BDEDEFAULT_X K O            F ˙˙
 0    %                         Requiere_Aprobacion qrDetalles_Factura      Proceso I    WIDTH   ORIGIN I "Detalles_Factura"."Proceso" Codigo I    WIDTH   ORIGIN I "Detalles_Factura"."Codigo" Codigo_Real I    WIDTH   ORIGIN I! "Detalles_Factura"."Codigo_Real" 	Secuencia     ORIGIN I "Detalles_Factura"."Secuencia" 
FIELDPROPS    DisplayFormat#,#0 Descripcion I    WIDTH  d ORIGIN I! "Detalles_Factura"."Descripcion" 	Categoria     ORIGIN I "Detalles_Factura"."Categoria" 
Fabricante     ORIGIN I  "Detalles_Factura"."Fabricante" Departamento     ORIGIN I" "Detalles_Factura"."Departamento" Tipo_Producto     ORIGIN I# "Detalles_Factura"."Tipo_Producto" Costo     DECIMALS   WIDTH   ORIGIN I "Detalles_Factura"."Costo" 
FIELDPROPS    currency	 Precio_Real     DECIMALS   WIDTH   ORIGIN I! "Detalles_Factura"."Precio_Real" 
FIELDPROPS    currency	 Precio_Venta     DECIMALS   WIDTH   ORIGIN I" "Detalles_Factura"."Precio_Venta" 
FIELDPROPS    currency	 Cantidad     DECIMALS   WIDTH   ORIGIN I "Detalles_Factura"."Cantidad" 
FIELDPROPS    DisplayFormat#,#0.00 Total_Costo     DECIMALS   WIDTH   ORIGIN I! "Detalles_Factura"."Total_Costo" 
FIELDPROPS    currency	 Total_Precio     DECIMALS   WIDTH   ORIGIN I" "Detalles_Factura"."Total_Precio" 
FIELDPROPS    currency	 Precio_Minimo     DECIMALS   WIDTH   ORIGIN I# "Detalles_Factura"."Precio_Minimo" 
FIELDPROPS    currency	 Fecha     ORIGIN I "Detalles_Factura"."Fecha" Hora     ORIGIN I "Detalles_Factura"."Hora" Usuario I    WIDTH  d ORIGIN I "Detalles_Factura"."Usuario" Mes     ORIGIN I "Detalles_Factura"."Mes" MINVALUE      MAXVALUE     
FIELDPROPS    MaxValue Ano     ORIGIN I "Detalles_Factura"."Ano" 
FIELDPROPS    DisplayFormat0000 Cliente I    WIDTH   ORIGIN I "Detalles_Factura"."Cliente" Impuesto     DECIMALS   WIDTH   ORIGIN I "Detalles_Factura"."Impuesto" 
FIELDPROPS    DisplayFormat#,#0.00 	Descuento     DECIMALS   WIDTH   ORIGIN I "Detalles_Factura"."Descuento" 
FIELDPROPS    DisplayFormat#,#0.00 Valor_Impuesto     DECIMALS   WIDTH   ORIGIN I$ "Detalles_Factura"."Valor_Impuesto" 
FIELDPROPS    currency	 Valor_Descuento     DECIMALS   WIDTH   ORIGIN I% "Detalles_Factura"."Valor_Descuento" 
FIELDPROPS    currency	 Total_Impuesto     DECIMALS   WIDTH   ORIGIN I$ "Detalles_Factura"."Total_Impuesto" 
FIELDPROPS    currency	 Total_Descuento     DECIMALS   WIDTH   ORIGIN I% "Detalles_Factura"."Total_Descuento" 
FIELDPROPS    currency	 Cantidad_Devuelto     DECIMALS   WIDTH   ORIGIN I' "Detalles_Factura"."Cantidad_Devuelto" Tipo_Precio I    WIDTH   ORIGIN I! "Detalles_Factura"."Tipo_Precio" 	Contenido     DECIMALS   WIDTH   ORIGIN I "Detalles_Factura"."Contenido" 
FIELDPROPS    DisplayFormat#,0 Registro     ORIGIN I "Detalles_Factura"."Registro" 
 BDEDOMAIN_X K g   &       Debe introducir un Código de Producto  8 ˙˙
 0                           Codigo  BDEDEFAULT_X K K            B ˙˙
 0    %                             đ?Categoria BDEDEFAULT_X K L            C ˙˙
 0    %                             đ?Fabricante BDEDEFAULT_X K N            E ˙˙
 0    %                             đ?Departamento BDEDEFAULT_X K O       	     F ˙˙
 0    %                     	        đ?Tipo_Producto BDEDEFAULT_X K J            A ˙˙
 0    %                             đ?Cantidad BDEDEFAULT_X K K            B ˙˙
 0    %                               Descuento BDEDEFAULT_X K S            J ˙˙
 0    %                               Cantidad_Devuelto BDEDEFAULT_X K K            B ˙˙
 0    %                             đ?Contenido BDEDEFAULT_X K J             A ˙˙
 0    %                                Registro  MD_FIELDLINKS     (   MD_FIELDLINKS     )   BDEDEFAULT_X K H            ? ˙˙
 0    %                               Numero BDEDEFAULT_X K K            B ˙˙
 0    %                       Contado Condicion BDEDEFAULT_X K J       	     A ˙˙
 0    %                     	          SubTotal BDEDEFAULT_X K M       
     D ˙˙
 0    %                     "          Total_Costo BDEDEFAULT_X K K            B ˙˙
 0    %                     
          TotalNeto BDEDEFAULT_X K Q            H ˙˙
 0    %                               Impuesto_Global BDEDEFAULT_X K P            G ˙˙
 0    %                               Valor_Impuesto BDEDEFAULT_X K X            O ˙˙
 0    %                               Valor_Impuesto_Detalle BDEDEFAULT_X K P            G ˙˙
 0    %                               Total_Impuesto BDEDEFAULT_X K R            I ˙˙
 0    %                               Descuento_Global BDEDEFAULT_X K Q            H ˙˙
 0    %                               Valor_Descuento BDEDEFAULT_X K Y            P ˙˙
 0    %                               Valor_Descuento_Detalle BDEDEFAULT_X K Q            H ˙˙
 0    %                               Total_Descuento BDEDEFAULT_X K J            A ˙˙
 0    %                             đ?Terminos BDEDEFAULT_X K H            ? ˙˙
 0    %                               Pagado BDEDEFAULT_X K K            B ˙˙
 0    %                               Pendiente BDEDEFAULT_X K Y            P ˙˙
 0    %                               Total_Efectivo_Recibido BDEDEFAULT_X K Y             P ˙˙
 0    %                                Total_Efectivo_Devuelto BDEDEFAULT_X K O       !     F ˙˙
 0    %                       000-0000000-0 Cliente BDEDOMAIN_X K n   ,   !    Debe Seleccionar un Cliente para la Factura  9 ˙˙
 0                           Cliente  BDEDEFAULT_X K H       "     ? ˙˙
 0    %                     !  ABIERTO Status BDEDEFAULT_X K N       #     E ˙˙
 0    %                     #  Detalle Tipo_Factura BDEDEFAULT_X K D       &     ; ˙˙
 0    %                     &  - Vendedor BDEDEFAULT_X K K       '     B ˙˙
 0    %                     '  - Nombre_Vendedor    @     W   GUMBS-10.33.25-863802379CORAL CANOAContadoG. žC*Factura de Fecha 08/Mar/2007 - CORAL CANOA-    Y                       Y       GUMBS                                                                                                       G.     Y                       Y                   213ABIERTODetalle02--      P GUMBS-10.33.25-863802379   G. žC         4                                                     Efectivo                       P GUMBS-10.33.25-863802379   G. žC    4                Y           Y                             Efectivo                      P GUMBS-10.33.25-863802379   G. žC                Y             Y                                         Efectivo                        P GUMBS-10.33.25-863802379   G. žC                                                                                   Efectivo                                @  GUMBS-10.33.25-863802379123123Č  TEST - - ASDA SDA                 s     s      Y     Y       Y     Y                               Y     Y       P     P   G. žCGUMBS213                                                                                          Detalle Contado            2   