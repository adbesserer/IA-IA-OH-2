;********************************************************************************************************************
;********************************************************************************************************************
;								- - P R Á C T I C A   D E   I A   2 - -
;	Alumnos:
;		Alejandro Domínguez Besserer
;		Miguel Ángel Muñoz
;		Adrià Munuera _
;********************************************************************************************************************
;********************************************************************************************************************


;********************************************************************************************************************
;
;									- - O N T O L O G Í A - -
;
;********************************************************************************************************************



(defclass %3ACLIPS_TOP_LEVEL_SLOT_CLASS "Fake class to save top-level slot information"
	(is-a USER)
	(role abstract)
	(single-slot tiene_alcohol
		(type SYMBOL)
		(allowed-values FALSE TRUE)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(single-slot bebida
		(type STRING)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(single-slot nombre_del_plato
		(type STRING)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(single-slot postre
		(type INSTANCE)
;+		(allowed-classes)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(multislot platos_del_origen
		(type INSTANCE)
;+		(allowed-classes Plato)
;+		(inverse-slot origen_del_plato)
		(create-accessor read-write))
	(single-slot precioPorPersona
		(type INSTANCE)
;+		(allowed-classes)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(single-slot picante
		(type SYMBOL)
		(allowed-values FALSE TRUE)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(single-slot primero
		(type INSTANCE)
;+		(allowed-classes)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(single-slot intervaloMax
		(type FLOAT)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(multislot estilo_del_plato
		(type INSTANCE)
;+		(allowed-classes EstiloCocina)
		(cardinality 1 ?VARIABLE)
;+		(inverse-slot platos_del_estilo)
		(create-accessor read-write))
	(multislot bebidas
		(type INSTANCE)
;+		(allowed-classes Bebida)
		(cardinality 1 ?VARIABLE)
		(create-accessor read-write))
	(single-slot intervaloMin
		(type FLOAT)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(single-slot origen_del_plato
		(type INSTANCE)
;+		(allowed-classes Origen)
;+		(cardinality 1 1)
;+		(inverse-slot platos_del_origen)
		(create-accessor read-write))
	(multislot platos_con_ingrediente
		(type INSTANCE)
;+		(allowed-classes Plato)
		(cardinality 1 ?VARIABLE)
;+		(inverse-slot ingredientes_del_plato)
		(create-accessor read-write))
	(multislot temporada_del_plato
		(type INSTANCE)
;+		(allowed-classes Temporada)
		(cardinality 1 ?VARIABLE)
;+		(inverse-slot platos_de_temporada)
		(create-accessor read-write))
	(single-slot origen
		(type STRING)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(single-slot origen_plato
		(type INSTANCE)
;+		(allowed-classes Origen)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(multislot compatible
		(type INSTANCE)
;+		(allowed-classes Plato)
		(cardinality 1 ?VARIABLE)
		(create-accessor read-write))
	(multislot platos_del_tipo
		(type INSTANCE)
;+		(allowed-classes Plato)
		(cardinality 1 ?VARIABLE)
;+		(inverse-slot tipo_de_comida)
		(create-accessor read-write))
	(single-slot orden_del_plato
		(type SYMBOL)
		(allowed-values Primero Segundo Postre Primero%2FSegundo)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(single-slot valor
		(type FLOAT)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(multislot tipo_de_comida
		(type INSTANCE)
;+		(allowed-classes Tipo)
;+		(inverse-slot platos_del_tipo)
		(create-accessor read-write))
	(single-slot estilo_cocina
		(type STRING)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(single-slot ingrediente
		(type STRING)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(single-slot segundo
		(type INSTANCE)
;+		(allowed-classes)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(multislot platos_del_estilo
		(type INSTANCE)
;+		(allowed-classes Plato)
		(cardinality 1 ?VARIABLE)
;+		(inverse-slot estilo_del_plato)
		(create-accessor read-write))
	(single-slot caliente
		(type SYMBOL)
		(allowed-values FALSE TRUE)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(multislot ingredientes_del_plato
		(type INSTANCE)
;+		(allowed-classes Ingrediente)
		(cardinality 1 ?VARIABLE)
;+		(inverse-slot platos_con_ingrediente)
		(create-accessor read-write))
	(single-slot temporada
		(type STRING)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(single-slot precio
		(type FLOAT)
		(range 0.0 %3FVARIABLE)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(single-slot tipo
		(type STRING)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(single-slot con_gas
		(type SYMBOL)
		(allowed-values FALSE TRUE)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(multislot epoca
		(type INSTANCE)
;+		(allowed-classes Temporada)
		(create-accessor read-write))
	(multislot inverse_of_platos_de_temporada
		(type INSTANCE)
;+		(allowed-classes Tipo Ingrediente Temporada Origen EstiloCocina)
		(create-accessor read-write))
	(single-slot complejo
		(type SYMBOL)
		(allowed-values FALSE TRUE)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(single-slot esComidaFamiliar
		(type SYMBOL)
		(allowed-values FALSE TRUE)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(multislot platos_de_temporada
		(type INSTANCE)
;+		(allowed-classes Plato)
;+		(inverse-slot temporada_del_plato)
		(create-accessor read-write)))

(defclass Plato "Un plato puede ser un primero, segundo o postre. Es el componente esencial del menú junto a la bebida, y contiene varios atributos que sirven para distinguir unos platos de otros."
	(is-a USER)
	(role concrete)
	(multislot tipo_de_comida
		(type INSTANCE)
;+		(allowed-classes Tipo)
		(create-accessor read-write))
	(multislot temporada_del_plato
		(type INSTANCE)
;+		(allowed-classes Temporada)
		(cardinality 1 ?VARIABLE)
		(create-accessor read-write))
	(single-slot precio
		(type FLOAT)
		(range 0.0 %3FVARIABLE)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(single-slot picante
		(type SYMBOL)
		(allowed-values FALSE TRUE)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(single-slot nombre_del_plato
		(type STRING)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(single-slot caliente
		(type SYMBOL)
		(allowed-values FALSE TRUE)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(single-slot orden_del_plato
		(type SYMBOL)
		(allowed-values Primero Segundo Postre Primero%2FSegundo)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(single-slot origen_del_plato
		(type INSTANCE)
;+		(allowed-classes Origen)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(multislot ingredientes_del_plato
		(type INSTANCE)
;+		(allowed-classes Ingrediente)
		(cardinality 1 ?VARIABLE)
		(create-accessor read-write))
	(multislot estilo_del_plato
		(type INSTANCE)
;+		(allowed-classes EstiloCocina)
		(cardinality 1 ?VARIABLE)
		(create-accessor read-write)))

(defclass Bebida "La bebida se trata a parte del plato, puede tener gas o alcohol, lo que la hace más adecuada para diferentes tipos de menús"
	(is-a USER)
	(role concrete)
	(single-slot tiene_alcohol
		(type SYMBOL)
		(allowed-values FALSE TRUE)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(single-slot precio
		(type FLOAT)
		(range 0.0 %3FVARIABLE)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(single-slot bebida
		(type STRING)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(single-slot con_gas
		(type SYMBOL)
		(allowed-values FALSE TRUE)
;+		(cardinality 1 1)
		(create-accessor read-write)))

(defclass Tipo "El tipo de comida, a diferencia del estilo, nos dice si un plato es vegetariano, si es marisco, si es adecuado para un menú infantil... Un plato puede ser de varios tipos"
	(is-a USER)
	(role concrete)
	(single-slot tipo
		(type STRING)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(multislot platos_del_tipo
		(type INSTANCE)
;+		(allowed-classes Plato)
		(cardinality 1 ?VARIABLE)
		(create-accessor read-write)))

(defclass Ingrediente "Un plato esta compuesto de sus ingredientes, y nos puede interesar descartar o seleccionar platos en función de los elementos que contienen"
	(is-a USER)
	(role concrete)
	(single-slot ingrediente
		(type STRING)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(multislot platos_con_ingrediente
		(type INSTANCE)
;+		(allowed-classes Plato)
		(cardinality 1 ?VARIABLE)
		(create-accessor read-write)))

(defclass Temporada "Los platos pueden ser más adecuados para diferentes temporadas: por ejemplo, el gazpacho para el verano, o la escudella para el invierno."
	(is-a USER)
	(role concrete)
	(single-slot temporada
		(type STRING)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(multislot platos_de_temporada
		(type INSTANCE)
;+		(allowed-classes Plato)
		(create-accessor read-write)))

(defclass Origen "El origen del plato es el país o región de donde proviene, los clientes pueden pedir un menú de comida italiana o japonesa, por ejemplo."
	(is-a USER)
	(role concrete)
	(single-slot origen
		(type STRING)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(multislot platos_del_origen
		(type INSTANCE)
;+		(allowed-classes Plato)
		(create-accessor read-write)))

(defclass EstiloCocina "El estilo de cocina representa cosas como si un plato es tradicional, moderno, de alta cocina, etc."
	(is-a USER)
	(role concrete)
	(single-slot estilo_cocina
		(type STRING)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(multislot platos_del_estilo
		(type INSTANCE)
;+		(allowed-classes Plato)
		(cardinality 1 ?VARIABLE)
		(create-accessor read-write)))



;********************************************************************************************************************
;
;									- - I N S T A N C I A S - -
;
;********************************************************************************************************************


([CateringOnto_Class1] of  Bebida

	(bebida "Agua")
	(precio 1.0))

([CateringOnto_Class10] of  EstiloCocina

	(estilo_cocina "Moderna")
	(platos_del_estilo
		[CateringOnto_Class46]
		[CateringOnto_Class58]
		[CateringOnto_Class71]
		[CateringOnto_Class74]
		[CateringOnto_Class79]
		[CateringOnto_Class82]
		[CateringOnto_Class86]
		[CateringOnto_Class87]
		[CateringOnto_Class90]
		[CateringOnto_Class94]
		[CateringOnto_Class95]
		[CateringOnto_Class107]
		[CateringOnto_Class117]
		[CateringOnto_Class119]
		[CateringOnto_Class122]
		[CateringOnto_Class128]))

([CateringOnto_Class100] of  Tipo

	(platos_del_tipo
		[CateringOnto_Class93]
		[CateringOnto_Class92]
		[CateringOnto_Class86]
		[CateringOnto_Class71]
		[CateringOnto_Class97]
		[CateringOnto_Class98]
		[CateringOnto_Class99]
		[CateringOnto_Class115])
	(tipo "pica pica"))

([CateringOnto_Class101] of  Plato

	(estilo_del_plato [CateringOnto_Class9])
	(ingredientes_del_plato
		[CateringOnto_Class21]
		[CateringOnto_Class20])
	(nombre_del_plato "Pan con tomate")
	(orden_del_plato Primero)
	(origen_del_plato [CateringOnto_Class23])
	(precio 3.0)
	(temporada_del_plato
		[CateringOnto_Class29]
		[CateringOnto_Class28]
		[CateringOnto_Class26]
		[CateringOnto_Class27]))

([CateringOnto_Class102] of  Plato

	(caliente TRUE)
	(estilo_del_plato [CateringOnto_Class9])
	(ingredientes_del_plato
		[CateringOnto_Class70]
		[CateringOnto_Class72])
	(nombre_del_plato "Tortilla de patatas")
	(orden_del_plato Primero)
	(origen_del_plato [CateringOnto_Class23])
	(precio 8.0)
	(temporada_del_plato
		[CateringOnto_Class29]
		[CateringOnto_Class28]
		[CateringOnto_Class26]
		[CateringOnto_Class27])
	(tipo_de_comida [CateringOnto_Class40]))

([CateringOnto_Class103] of  Plato

	(estilo_del_plato [CateringOnto_Class11])
	(ingredientes_del_plato [CateringOnto_Class14])
	(nombre_del_plato "Carpaccio de Wagyu de Kobe")
	(orden_del_plato Primero%2FSegundo)
	(origen_del_plato [CateringOnto_Class25])
	(precio 45.5)
	(temporada_del_plato
		[CateringOnto_Class29]
		[CateringOnto_Class28]
		[CateringOnto_Class26]
		[CateringOnto_Class27])
	(tipo_de_comida [CateringOnto_Class39]))

([CateringOnto_Class104] of  Plato

	(caliente TRUE)
	(estilo_del_plato [CateringOnto_Class11])
	(ingredientes_del_plato [CateringOnto_Class105])
	(nombre_del_plato "Escalopa de foie gras al aceite de saúco")
	(orden_del_plato Primero%2FSegundo)
	(origen_del_plato [CateringOnto_Class57])
	(precio 28.0)
	(temporada_del_plato
		[CateringOnto_Class29]
		[CateringOnto_Class28]
		[CateringOnto_Class26]
		[CateringOnto_Class27])
	(tipo_de_comida [CateringOnto_Class39]))

([CateringOnto_Class105] of  Ingrediente

	(ingrediente "Pato")
	(platos_con_ingrediente
		[CateringOnto_Class104]
		[CateringOnto_Class106]))

([CateringOnto_Class106] of  Plato

	(caliente TRUE)
	(estilo_del_plato [CateringOnto_Class11])
	(ingredientes_del_plato
		[CateringOnto_Class13]
		[CateringOnto_Class105])
	(nombre_del_plato "Canelones de magret de pato con foie gras")
	(orden_del_plato Primero%2FSegundo)
	(origen_del_plato [CateringOnto_Class49])
	(precio 17.5)
	(temporada_del_plato
		[CateringOnto_Class29]
		[CateringOnto_Class28]
		[CateringOnto_Class26]
		[CateringOnto_Class27])
	(tipo_de_comida [CateringOnto_Class39]))

([CateringOnto_Class107] of  Plato

	(estilo_del_plato [CateringOnto_Class10])
	(ingredientes_del_plato [CateringOnto_Class47])
	(nombre_del_plato "Tataki de atún")
	(orden_del_plato Primero%2FSegundo)
	(origen_del_plato [CateringOnto_Class25])
	(precio 19.0)
	(temporada_del_plato
		[CateringOnto_Class29]
		[CateringOnto_Class28]
		[CateringOnto_Class26]
		[CateringOnto_Class27])
	(tipo_de_comida [CateringOnto_Class38]))

([CateringOnto_Class108] of  Plato

	(caliente TRUE)
	(estilo_del_plato [CateringOnto_Class9])
	(ingredientes_del_plato
		[CateringOnto_Class47]
		[CateringOnto_Class20])
	(nombre_del_plato "Bacalao al pil pil")
	(orden_del_plato Segundo)
	(origen_del_plato [CateringOnto_Class23])
	(precio 14.5)
	(temporada_del_plato
		[CateringOnto_Class29]
		[CateringOnto_Class28]
		[CateringOnto_Class26]
		[CateringOnto_Class27])
	(tipo_de_comida [CateringOnto_Class38]))

([CateringOnto_Class109] of  Plato

	(caliente TRUE)
	(estilo_del_plato [CateringOnto_Class9])
	(ingredientes_del_plato [CateringOnto_Class110])
	(nombre_del_plato "Conejo a la brasa con alioli")
	(orden_del_plato Segundo)
	(origen_del_plato [CateringOnto_Class57])
	(precio 8.0)
	(temporada_del_plato
		[CateringOnto_Class29]
		[CateringOnto_Class28]
		[CateringOnto_Class26]
		[CateringOnto_Class27])
	(tipo_de_comida [CateringOnto_Class39]))

([CateringOnto_Class11] of  EstiloCocina

	(estilo_cocina "Alta Cocina")
	(platos_del_estilo
		[CateringOnto_Class54]
		[CateringOnto_Class55]
		[CateringOnto_Class85]
		[CateringOnto_Class103]
		[CateringOnto_Class104]
		[CateringOnto_Class106]))

([CateringOnto_Class110] of  Ingrediente

	(ingrediente "Conejo")
	(platos_con_ingrediente [CateringOnto_Class109]))

([CateringOnto_Class111] of  Plato

	(caliente TRUE)
	(estilo_del_plato [CateringOnto_Class9])
	(ingredientes_del_plato [CateringOnto_Class15])
	(nombre_del_plato "butifarra a la brasa con alioli")
	(orden_del_plato Segundo)
	(origen_del_plato [CateringOnto_Class57])
	(precio 9.0)
	(temporada_del_plato
		[CateringOnto_Class29]
		[CateringOnto_Class28]
		[CateringOnto_Class26]
		[CateringOnto_Class27])
	(tipo_de_comida [CateringOnto_Class39]))

([CateringOnto_Class112] of  Plato

	(caliente TRUE)
	(estilo_del_plato [CateringOnto_Class9])
	(ingredientes_del_plato [CateringOnto_Class14])
	(nombre_del_plato "Churrasco a la brasa con chimichurri")
	(orden_del_plato Segundo)
	(origen_del_plato [CateringOnto_Class57])
	(precio 8.0)
	(temporada_del_plato
		[CateringOnto_Class29]
		[CateringOnto_Class28]
		[CateringOnto_Class26]
		[CateringOnto_Class27])
	(tipo_de_comida [CateringOnto_Class39]))

([CateringOnto_Class113] of  Plato

	(caliente TRUE)
	(estilo_del_plato [CateringOnto_Class9])
	(ingredientes_del_plato [CateringOnto_Class16])
	(nombre_del_plato "Pollo a la brasa")
	(orden_del_plato Segundo)
	(origen_del_plato [CateringOnto_Class57])
	(precio 6.0)
	(temporada_del_plato
		[CateringOnto_Class29]
		[CateringOnto_Class28]
		[CateringOnto_Class26]
		[CateringOnto_Class27])
	(tipo_de_comida [CateringOnto_Class39]))

([CateringOnto_Class114] of  Plato

	(caliente TRUE)
	(estilo_del_plato [CateringOnto_Class9])
	(ingredientes_del_plato [CateringOnto_Class47])
	(nombre_del_plato "Salmón a la brasa")
	(orden_del_plato Segundo)
	(origen_del_plato [CateringOnto_Class57])
	(precio 8.0)
	(temporada_del_plato
		[CateringOnto_Class29]
		[CateringOnto_Class28]
		[CateringOnto_Class26]
		[CateringOnto_Class27])
	(tipo_de_comida [CateringOnto_Class38]))

([CateringOnto_Class115] of  Plato

	(caliente TRUE)
	(estilo_del_plato [CateringOnto_Class12])
	(ingredientes_del_plato [CateringOnto_Class72])
	(nombre_del_plato "Bravas")
	(orden_del_plato Primero)
	(origen_del_plato [CateringOnto_Class23])
	(picante TRUE)
	(precio 4.5)
	(temporada_del_plato
		[CateringOnto_Class29]
		[CateringOnto_Class28]
		[CateringOnto_Class26]
		[CateringOnto_Class27])
	(tipo_de_comida [CateringOnto_Class100]))

([CateringOnto_Class116] of  Bebida

	(bebida "Cerveza")
	(con_gas TRUE)
	(precio 3.0)
	(tiene_alcohol TRUE))

([CateringOnto_Class117] of  Plato

	(caliente TRUE)
	(estilo_del_plato [CateringOnto_Class10])
	(ingredientes_del_plato
		[CateringOnto_Class60]
		[CateringOnto_Class70]
		[CateringOnto_Class19]
		[CateringOnto_Class118])
	(nombre_del_plato "Tarta de chocolate")
	(orden_del_plato Postre)
	(origen_del_plato [CateringOnto_Class57])
	(precio 4.0)
	(temporada_del_plato
		[CateringOnto_Class29]
		[CateringOnto_Class28]
		[CateringOnto_Class26]
		[CateringOnto_Class27])
	(tipo_de_comida
		[CateringOnto_Class61]
		[CateringOnto_Class40]))

([CateringOnto_Class118] of  Ingrediente

	(ingrediente "Chocolate")
	(platos_con_ingrediente
		[CateringOnto_Class117]
		[CateringOnto_Class119]))

([CateringOnto_Class119] of  Plato

	(caliente TRUE)
	(estilo_del_plato [CateringOnto_Class10])
	(ingredientes_del_plato
		[CateringOnto_Class118]
		[CateringOnto_Class60]
		[CateringOnto_Class20])
	(nombre_del_plato "Tarta vegetariana")
	(orden_del_plato Postre)
	(origen_del_plato [CateringOnto_Class57])
	(precio 4.5)
	(temporada_del_plato
		[CateringOnto_Class29]
		[CateringOnto_Class28]
		[CateringOnto_Class26]
		[CateringOnto_Class27])
	(tipo_de_comida
		[CateringOnto_Class61]
		[CateringOnto_Class37]))

([CateringOnto_Class12] of  EstiloCocina

	(estilo_cocina "Rapida")
	(platos_del_estilo
		[CateringOnto_Class41]
		[CateringOnto_Class64]
		[CateringOnto_Class65]
		[CateringOnto_Class69]
		[CateringOnto_Class115]))

([CateringOnto_Class120] of  Plato

	(estilo_del_plato [CateringOnto_Class9])
	(ingredientes_del_plato
		[CateringOnto_Class70]
		[CateringOnto_Class19])
	(nombre_del_plato "Crema catalana")
	(orden_del_plato Postre)
	(origen_del_plato [CateringOnto_Class23])
	(precio 3.5)
	(temporada_del_plato
		[CateringOnto_Class29]
		[CateringOnto_Class28]
		[CateringOnto_Class26]
		[CateringOnto_Class27])
	(tipo_de_comida
		[CateringOnto_Class61]
		[CateringOnto_Class40]))

([CateringOnto_Class121] of  Plato

	(caliente TRUE)
	(estilo_del_plato [CateringOnto_Class9])
	(ingredientes_del_plato
		[CateringOnto_Class15]
		[CateringOnto_Class20]
		[CateringOnto_Class19])
	(nombre_del_plato "Macarrones a la carbonara")
	(orden_del_plato Primero%2FSegundo)
	(origen_del_plato [CateringOnto_Class22])
	(precio 6.0)
	(temporada_del_plato
		[CateringOnto_Class29]
		[CateringOnto_Class28]
		[CateringOnto_Class26]
		[CateringOnto_Class27])
	(tipo_de_comida
		[CateringOnto_Class39]
		[CateringOnto_Class40]))

([CateringOnto_Class122] of  Plato

	(estilo_del_plato [CateringOnto_Class10])
	(ingredientes_del_plato [CateringOnto_Class47])
	(nombre_del_plato "Dorada a la sal")
	(orden_del_plato Primero%2FSegundo)
	(origen_del_plato [CateringOnto_Class57])
	(precio 11.5)
	(temporada_del_plato
		[CateringOnto_Class29]
		[CateringOnto_Class28]
		[CateringOnto_Class26]
		[CateringOnto_Class27])
	(tipo_de_comida [CateringOnto_Class38]))

([CateringOnto_Class123] of  Plato

	(caliente TRUE)
	(estilo_del_plato [CateringOnto_Class9])
	(ingredientes_del_plato
		[CateringOnto_Class124]
		[CateringOnto_Class19])
	(nombre_del_plato "Café")
	(orden_del_plato Postre)
	(origen_del_plato [CateringOnto_Class57])
	(precio 1.0)
	(temporada_del_plato
		[CateringOnto_Class29]
		[CateringOnto_Class28]
		[CateringOnto_Class26]
		[CateringOnto_Class27])
	(tipo_de_comida [CateringOnto_Class125]))

([CateringOnto_Class124] of  Ingrediente

	(ingrediente "Café")
	(platos_con_ingrediente
		[CateringOnto_Class123]
		[CateringOnto_Class58]
		[CateringOnto_Class128]))

([CateringOnto_Class125] of  Tipo

	(platos_del_tipo
		[CateringOnto_Class123]
		[CateringOnto_Class58]
		[CateringOnto_Class128])
	(tipo "Café"))

([CateringOnto_Class126] of  Plato

	(caliente TRUE)
	(estilo_del_plato [CateringOnto_Class9])
	(ingredientes_del_plato [CateringOnto_Class15])
	(nombre_del_plato "Pies de cerdo a la brasa")
	(orden_del_plato Primero%2FSegundo)
	(origen_del_plato [CateringOnto_Class23])
	(precio 8.0)
	(temporada_del_plato
		[CateringOnto_Class29]
		[CateringOnto_Class28]
		[CateringOnto_Class26]
		[CateringOnto_Class27])
	(tipo_de_comida [CateringOnto_Class39]))

([CateringOnto_Class127] of  Plato

	(caliente TRUE)
	(estilo_del_plato [CateringOnto_Class9])
	(ingredientes_del_plato
		[CateringOnto_Class15]
		[CateringOnto_Class14]
		[CateringOnto_Class51]
		[CateringOnto_Class16]
		[CateringOnto_Class20])
	(nombre_del_plato "Escudella i carn d'olla")
	(orden_del_plato Primero%2FSegundo)
	(origen_del_plato [CateringOnto_Class23])
	(precio 9.0)
	(temporada_del_plato
		[CateringOnto_Class29]
		[CateringOnto_Class28]
		[CateringOnto_Class26]
		[CateringOnto_Class27])
	(tipo_de_comida [CateringOnto_Class39]))

([CateringOnto_Class128] of  Plato

	(caliente TRUE)
	(estilo_del_plato [CateringOnto_Class10])
	(ingredientes_del_plato
		[CateringOnto_Class124]
		[CateringOnto_Class18]
		[CateringOnto_Class60]
		[CateringOnto_Class70]
		[CateringOnto_Class19])
	(nombre_del_plato "Tarta de café")
	(orden_del_plato Postre)
	(origen_del_plato [CateringOnto_Class22])
	(precio 3.5)
	(temporada_del_plato
		[CateringOnto_Class29]
		[CateringOnto_Class28]
		[CateringOnto_Class26]
		[CateringOnto_Class27])
	(tipo_de_comida
		[CateringOnto_Class125]
		[CateringOnto_Class61]))

([CateringOnto_Class129] of  Plato

	(caliente FALSE)
	(estilo_del_plato [CateringOnto_Class9])
	(ingredientes_del_plato
		[CateringOnto_Class70]
		[CateringOnto_Class21]
		[CateringOnto_Class20]
		[CateringOnto_Class15])
	(nombre_del_plato "Salmorejo andaluz")
	(orden_del_plato Primero)
	(origen_del_plato [CateringOnto_Class23])
	(precio 7.5)
	(temporada_del_plato
		[CateringOnto_Class26]
		[CateringOnto_Class27])
	(tipo_de_comida [CateringOnto_Class39]))

([CateringOnto_Class13] of  Ingrediente

	(ingrediente "Pasta")
	(platos_con_ingrediente
		[CateringOnto_Class44]
		[CateringOnto_Class87]
		[CateringOnto_Class91]
		[CateringOnto_Class106]))

([CateringOnto_Class14] of  Ingrediente

	(ingrediente "Carne de vaca")
	(platos_con_ingrediente
		[CateringOnto_Class41]
		[CateringOnto_Class79]
		[CateringOnto_Class84]
		[CateringOnto_Class85]
		[CateringOnto_Class86]
		[CateringOnto_Class91]
		[CateringOnto_Class103]
		[CateringOnto_Class112]
		[CateringOnto_Class127]))

([CateringOnto_Class15] of  Ingrediente

	(ingrediente "Carne de Cerdo")
	(platos_con_ingrediente
		[CateringOnto_Class50]
		[CateringOnto_Class52]
		[CateringOnto_Class62]
		[CateringOnto_Class63]
		[CateringOnto_Class69]
		[CateringOnto_Class71]
		[CateringOnto_Class73]
		[CateringOnto_Class80]
		[CateringOnto_Class84]
		[CateringOnto_Class86]
		[CateringOnto_Class88]
		[CateringOnto_Class53]
		[CateringOnto_Class97]
		[CateringOnto_Class98]
		[CateringOnto_Class111]
		[CateringOnto_Class121]
		[CateringOnto_Class126]
		[CateringOnto_Class127]
		[CateringOnto_Class129]))

([CateringOnto_Class16] of  Ingrediente

	(ingrediente "Pollo")
	(platos_con_ingrediente
		[CateringOnto_Class64]
		[CateringOnto_Class84]
		[CateringOnto_Class86]
		[CateringOnto_Class92]
		[CateringOnto_Class95]
		[CateringOnto_Class113]
		[CateringOnto_Class127]))

([CateringOnto_Class18] of  Ingrediente

	(ingrediente "Arroz")
	(platos_con_ingrediente
		[CateringOnto_Class46]
		[CateringOnto_Class83]
		[CateringOnto_Class84]
		[CateringOnto_Class87]
		[CateringOnto_Class92]
		[CateringOnto_Class128]))

([CateringOnto_Class19] of  Ingrediente

	(ingrediente "Leche")
	(platos_con_ingrediente
		[CateringOnto_Class55]
		[CateringOnto_Class65]
		[CateringOnto_Class92]
		[CateringOnto_Class93]
		[CateringOnto_Class117]
		[CateringOnto_Class120]
		[CateringOnto_Class121]
		[CateringOnto_Class123]
		[CateringOnto_Class58]
		[CateringOnto_Class128]))

([CateringOnto_Class2] of  Bebida

	(bebida "Vino Blanco")
	(precio 2.5)
	(tiene_alcohol TRUE))

([CateringOnto_Class20] of  Ingrediente

	(ingrediente "Verduras")
	(platos_con_ingrediente
		[CateringOnto_Class41]
		[CateringOnto_Class44]
		[CateringOnto_Class43]
		[CateringOnto_Class48]
		[CateringOnto_Class56]
		[CateringOnto_Class62]
		[CateringOnto_Class63]
		[CateringOnto_Class74]
		[CateringOnto_Class75]
		[CateringOnto_Class79]
		[CateringOnto_Class83]
		[CateringOnto_Class84]
		[CateringOnto_Class86]
		[CateringOnto_Class88]
		[CateringOnto_Class87]
		[CateringOnto_Class90]
		[CateringOnto_Class91]
		[CateringOnto_Class94]
		[CateringOnto_Class95]
		[CateringOnto_Class96]
		[CateringOnto_Class101]
		[CateringOnto_Class108]
		[CateringOnto_Class119]
		[CateringOnto_Class121]
		[CateringOnto_Class127]
		[CateringOnto_Class129]))

([CateringOnto_Class21] of  Ingrediente

	(ingrediente "Pan")
	(platos_con_ingrediente
		[CateringOnto_Class41]
		[CateringOnto_Class63]
		[CateringOnto_Class74]
		[CateringOnto_Class80]
		[CateringOnto_Class86]
		[CateringOnto_Class92]
		[CateringOnto_Class93]
		[CateringOnto_Class101]
		[CateringOnto_Class129]))

([CateringOnto_Class22] of  Origen

	(origen "Italia")
	(platos_del_origen
		[CateringOnto_Class44]
		[CateringOnto_Class58]
		[CateringOnto_Class65]
		[CateringOnto_Class90]
		[CateringOnto_Class91]
		[CateringOnto_Class121]
		[CateringOnto_Class128]
		[CateringOnto_Class63]))

([CateringOnto_Class23] of  Origen

	(origen "Espanya")
	(platos_del_origen
		[CateringOnto_Class43]
		[CateringOnto_Class50]
		[CateringOnto_Class52]
		[CateringOnto_Class56]
		[CateringOnto_Class62]
		[CateringOnto_Class68]
		[CateringOnto_Class71]
		[CateringOnto_Class73]
		[CateringOnto_Class75]
		[CateringOnto_Class83]
		[CateringOnto_Class84]
		[CateringOnto_Class88]
		[CateringOnto_Class93]
		[CateringOnto_Class97]
		[CateringOnto_Class98]
		[CateringOnto_Class101]
		[CateringOnto_Class102]
		[CateringOnto_Class108]
		[CateringOnto_Class115]
		[CateringOnto_Class120]
		[CateringOnto_Class126]
		[CateringOnto_Class127]
		[CateringOnto_Class129]))

([CateringOnto_Class24] of  Origen

	(origen "USA")
	(platos_del_origen
		[CateringOnto_Class41]
		[CateringOnto_Class64]
		[CateringOnto_Class69]
		[CateringOnto_Class79]))

([CateringOnto_Class25] of  Origen

	(origen "Japon")
	(platos_del_origen
		[CateringOnto_Class46]
		[CateringOnto_Class103]
		[CateringOnto_Class107]))

([CateringOnto_Class26] of  Temporada

	(platos_de_temporada
		[CateringOnto_Class41]
		[CateringOnto_Class44]
		[CateringOnto_Class46]
		[CateringOnto_Class43]
		[CateringOnto_Class48]
		[CateringOnto_Class54]
		[CateringOnto_Class55]
		[CateringOnto_Class56]
		[CateringOnto_Class58]
		[CateringOnto_Class63]
		[CateringOnto_Class64]
		[CateringOnto_Class68]
		[CateringOnto_Class69]
		[CateringOnto_Class71]
		[CateringOnto_Class73]
		[CateringOnto_Class74]
		[CateringOnto_Class75]
		[CateringOnto_Class77]
		[CateringOnto_Class79]
		[CateringOnto_Class80]
		[CateringOnto_Class83]
		[CateringOnto_Class84]
		[CateringOnto_Class85]
		[CateringOnto_Class86]
		[CateringOnto_Class88]
		[CateringOnto_Class87]
		[CateringOnto_Class90]
		[CateringOnto_Class91]
		[CateringOnto_Class92]
		[CateringOnto_Class93]
		[CateringOnto_Class94]
		[CateringOnto_Class95]
		[CateringOnto_Class96]
		[CateringOnto_Class97]
		[CateringOnto_Class98]
		[CateringOnto_Class99]
		[CateringOnto_Class101]
		[CateringOnto_Class102]
		[CateringOnto_Class103]
		[CateringOnto_Class104]
		[CateringOnto_Class106]
		[CateringOnto_Class107]
		[CateringOnto_Class108]
		[CateringOnto_Class109]
		[CateringOnto_Class111]
		[CateringOnto_Class112]
		[CateringOnto_Class113]
		[CateringOnto_Class114]
		[CateringOnto_Class115]
		[CateringOnto_Class117]
		[CateringOnto_Class119]
		[CateringOnto_Class120]
		[CateringOnto_Class121]
		[CateringOnto_Class122]
		[CateringOnto_Class123]
		[CateringOnto_Class126]
		[CateringOnto_Class127]
		[CateringOnto_Class128]
		[CateringOnto_Class129])
	(temporada "Primavera"))

([CateringOnto_Class27] of  Temporada

	(platos_de_temporada
		[CateringOnto_Class44]
		[CateringOnto_Class46]
		[CateringOnto_Class43]
		[CateringOnto_Class48]
		[CateringOnto_Class54]
		[CateringOnto_Class55]
		[CateringOnto_Class56]
		[CateringOnto_Class58]
		[CateringOnto_Class63]
		[CateringOnto_Class64]
		[CateringOnto_Class65]
		[CateringOnto_Class68]
		[CateringOnto_Class69]
		[CateringOnto_Class71]
		[CateringOnto_Class73]
		[CateringOnto_Class74]
		[CateringOnto_Class75]
		[CateringOnto_Class77]
		[CateringOnto_Class79]
		[CateringOnto_Class80]
		[CateringOnto_Class82]
		[CateringOnto_Class83]
		[CateringOnto_Class84]
		[CateringOnto_Class85]
		[CateringOnto_Class86]
		[CateringOnto_Class88]
		[CateringOnto_Class87]
		[CateringOnto_Class90]
		[CateringOnto_Class91]
		[CateringOnto_Class92]
		[CateringOnto_Class93]
		[CateringOnto_Class94]
		[CateringOnto_Class95]
		[CateringOnto_Class96]
		[CateringOnto_Class97]
		[CateringOnto_Class98]
		[CateringOnto_Class99]
		[CateringOnto_Class101]
		[CateringOnto_Class102]
		[CateringOnto_Class103]
		[CateringOnto_Class104]
		[CateringOnto_Class106]
		[CateringOnto_Class107]
		[CateringOnto_Class108]
		[CateringOnto_Class109]
		[CateringOnto_Class111]
		[CateringOnto_Class112]
		[CateringOnto_Class113]
		[CateringOnto_Class114]
		[CateringOnto_Class115]
		[CateringOnto_Class117]
		[CateringOnto_Class119]
		[CateringOnto_Class120]
		[CateringOnto_Class121]
		[CateringOnto_Class122]
		[CateringOnto_Class123]
		[CateringOnto_Class126]
		[CateringOnto_Class127]
		[CateringOnto_Class128]
		[CateringOnto_Class129])
	(temporada "Verano"))

([CateringOnto_Class28] of  Temporada

	(platos_de_temporada
		[CateringOnto_Class41]
		[CateringOnto_Class44]
		[CateringOnto_Class46]
		[CateringOnto_Class50]
		[CateringOnto_Class52]
		[CateringOnto_Class54]
		[CateringOnto_Class55]
		[CateringOnto_Class56]
		[CateringOnto_Class58]
		[CateringOnto_Class62]
		[CateringOnto_Class63]
		[CateringOnto_Class64]
		[CateringOnto_Class68]
		[CateringOnto_Class69]
		[CateringOnto_Class71]
		[CateringOnto_Class73]
		[CateringOnto_Class74]
		[CateringOnto_Class75]
		[CateringOnto_Class77]
		[CateringOnto_Class79]
		[CateringOnto_Class80]
		[CateringOnto_Class83]
		[CateringOnto_Class84]
		[CateringOnto_Class85]
		[CateringOnto_Class86]
		[CateringOnto_Class88]
		[CateringOnto_Class87]
		[CateringOnto_Class90]
		[CateringOnto_Class91]
		[CateringOnto_Class92]
		[CateringOnto_Class93]
		[CateringOnto_Class94]
		[CateringOnto_Class95]
		[CateringOnto_Class96]
		[CateringOnto_Class97]
		[CateringOnto_Class98]
		[CateringOnto_Class99]
		[CateringOnto_Class101]
		[CateringOnto_Class102]
		[CateringOnto_Class103]
		[CateringOnto_Class104]
		[CateringOnto_Class106]
		[CateringOnto_Class107]
		[CateringOnto_Class108]
		[CateringOnto_Class109]
		[CateringOnto_Class111]
		[CateringOnto_Class112]
		[CateringOnto_Class113]
		[CateringOnto_Class114]
		[CateringOnto_Class115]
		[CateringOnto_Class117]
		[CateringOnto_Class119]
		[CateringOnto_Class120]
		[CateringOnto_Class121]
		[CateringOnto_Class122]
		[CateringOnto_Class123]
		[CateringOnto_Class126]
		[CateringOnto_Class127]
		[CateringOnto_Class128])
	(temporada "Otonyo"))

([CateringOnto_Class29] of  Temporada

	(platos_de_temporada
		[CateringOnto_Class41]
		[CateringOnto_Class44]
		[CateringOnto_Class46]
		[CateringOnto_Class50]
		[CateringOnto_Class52]
		[CateringOnto_Class53]
		[CateringOnto_Class54]
		[CateringOnto_Class55]
		[CateringOnto_Class56]
		[CateringOnto_Class58]
		[CateringOnto_Class62]
		[CateringOnto_Class63]
		[CateringOnto_Class64]
		[CateringOnto_Class68]
		[CateringOnto_Class69]
		[CateringOnto_Class71]
		[CateringOnto_Class73]
		[CateringOnto_Class74]
		[CateringOnto_Class75]
		[CateringOnto_Class77]
		[CateringOnto_Class79]
		[CateringOnto_Class80]
		[CateringOnto_Class83]
		[CateringOnto_Class84]
		[CateringOnto_Class85]
		[CateringOnto_Class86]
		[CateringOnto_Class88]
		[CateringOnto_Class87]
		[CateringOnto_Class90]
		[CateringOnto_Class91]
		[CateringOnto_Class92]
		[CateringOnto_Class93]
		[CateringOnto_Class94]
		[CateringOnto_Class95]
		[CateringOnto_Class96]
		[CateringOnto_Class97]
		[CateringOnto_Class98]
		[CateringOnto_Class99]
		[CateringOnto_Class101]
		[CateringOnto_Class102]
		[CateringOnto_Class103]
		[CateringOnto_Class104]
		[CateringOnto_Class106]
		[CateringOnto_Class107]
		[CateringOnto_Class108]
		[CateringOnto_Class109]
		[CateringOnto_Class111]
		[CateringOnto_Class112]
		[CateringOnto_Class113]
		[CateringOnto_Class114]
		[CateringOnto_Class115]
		[CateringOnto_Class117]
		[CateringOnto_Class119]
		[CateringOnto_Class120]
		[CateringOnto_Class121]
		[CateringOnto_Class122]
		[CateringOnto_Class123]
		[CateringOnto_Class126]
		[CateringOnto_Class127]
		[CateringOnto_Class128])
	(temporada "Invierno"))

([CateringOnto_Class3] of  Bebida

	(bebida "Vino Tinto")
	(precio 3.0)
	(tiene_alcohol TRUE))

([CateringOnto_Class37] of  Tipo

	(platos_del_tipo
		[CateringOnto_Class43]
		[CateringOnto_Class48]
		[CateringOnto_Class74]
		[CateringOnto_Class75]
		[CateringOnto_Class84]
		[CateringOnto_Class94]
		[CateringOnto_Class96]
		[CateringOnto_Class119])
	(tipo "Vegetariano"))

([CateringOnto_Class38] of  Tipo

	(platos_del_tipo
		[CateringOnto_Class46]
		[CateringOnto_Class54]
		[CateringOnto_Class55]
		[CateringOnto_Class56]
		[CateringOnto_Class68]
		[CateringOnto_Class83]
		[CateringOnto_Class90]
		[CateringOnto_Class93]
		[CateringOnto_Class86]
		[CateringOnto_Class107]
		[CateringOnto_Class108]
		[CateringOnto_Class114]
		[CateringOnto_Class122])
	(tipo "Marisco y Pescado"))

([CateringOnto_Class39] of  Tipo

	(platos_del_tipo
		[CateringOnto_Class41]
		[CateringOnto_Class44]
		[CateringOnto_Class50]
		[CateringOnto_Class52]
		[CateringOnto_Class53]
		[CateringOnto_Class62]
		[CateringOnto_Class63]
		[CateringOnto_Class64]
		[CateringOnto_Class69]
		[CateringOnto_Class73]
		[CateringOnto_Class79]
		[CateringOnto_Class80]
		[CateringOnto_Class85]
		[CateringOnto_Class88]
		[CateringOnto_Class91]
		[CateringOnto_Class95]
		[CateringOnto_Class92]
		[CateringOnto_Class86]
		[CateringOnto_Class71]
		[CateringOnto_Class97]
		[CateringOnto_Class98]
		[CateringOnto_Class103]
		[CateringOnto_Class104]
		[CateringOnto_Class106]
		[CateringOnto_Class109]
		[CateringOnto_Class111]
		[CateringOnto_Class112]
		[CateringOnto_Class113]
		[CateringOnto_Class121]
		[CateringOnto_Class126]
		[CateringOnto_Class127]
		[CateringOnto_Class129])
	(tipo "Carne"))

([CateringOnto_Class4] of  Bebida

	(bebida "Champagne")
	(con_gas TRUE)
	(precio 2.0)
	(tiene_alcohol TRUE))

([CateringOnto_Class40] of  Tipo

	(platos_del_tipo
		[CateringOnto_Class41]
		[CateringOnto_Class44]
		[CateringOnto_Class63]
		[CateringOnto_Class64]
		[CateringOnto_Class65]
		[CateringOnto_Class69]
		[CateringOnto_Class74]
		[CateringOnto_Class77]
		[CateringOnto_Class79]
		[CateringOnto_Class80]
		[CateringOnto_Class82]
		[CateringOnto_Class88]
		[CateringOnto_Class96]
		[CateringOnto_Class92]
		[CateringOnto_Class86]
		[CateringOnto_Class102]
		[CateringOnto_Class117]
		[CateringOnto_Class120]
		[CateringOnto_Class121])
	(tipo "Infantil"))

([CateringOnto_Class41] of  Plato

	(caliente TRUE)
	(estilo_del_plato [CateringOnto_Class12])
	(ingredientes_del_plato
		[CateringOnto_Class21]
		[CateringOnto_Class20]
		[CateringOnto_Class14])
	(nombre_del_plato "Hamburguesa")
	(orden_del_plato Segundo)
	(origen_del_plato [CateringOnto_Class24])
	(precio 10.0)
	(temporada_del_plato
		[CateringOnto_Class28]
		[CateringOnto_Class29]
		[CateringOnto_Class26]
		[CateringOnto_Class28])
	(tipo_de_comida
		[CateringOnto_Class39]
		[CateringOnto_Class40]))

([CateringOnto_Class43] of  Plato

	(estilo_del_plato [CateringOnto_Class9])
	(ingredientes_del_plato [CateringOnto_Class20])
	(nombre_del_plato "Gazpacho")
	(orden_del_plato Primero)
	(origen_del_plato [CateringOnto_Class23])
	(precio 10.0)
	(temporada_del_plato
		[CateringOnto_Class26]
		[CateringOnto_Class27])
	(tipo_de_comida [CateringOnto_Class37]))

([CateringOnto_Class44] of  Plato

	(caliente TRUE)
	(estilo_del_plato [CateringOnto_Class9])
	(ingredientes_del_plato
		[CateringOnto_Class13]
		[CateringOnto_Class20]
		[CateringOnto_Class45])
	(nombre_del_plato "Spaghetti bolognese")
	(orden_del_plato Primero%2FSegundo)
	(origen_del_plato [CateringOnto_Class22])
	(precio 8.0)
	(temporada_del_plato
		[CateringOnto_Class29]
		[CateringOnto_Class28]
		[CateringOnto_Class26]
		[CateringOnto_Class27])
	(tipo_de_comida
		[CateringOnto_Class40]
		[CateringOnto_Class39]))

([CateringOnto_Class45] of  Ingrediente

	(ingrediente "Queso")
	(platos_con_ingrediente
		[CateringOnto_Class44]
		[CateringOnto_Class55]
		[CateringOnto_Class86]
		[CateringOnto_Class87]
		[CateringOnto_Class95]
		[CateringOnto_Class99]))

([CateringOnto_Class46] of  Plato

	(estilo_del_plato [CateringOnto_Class10])
	(ingredientes_del_plato
		[CateringOnto_Class47]
		[CateringOnto_Class18])
	(nombre_del_plato "Tabla de Sushi")
	(orden_del_plato Primero)
	(origen_del_plato [CateringOnto_Class25])
	(precio 20.0)
	(temporada_del_plato
		[CateringOnto_Class29]
		[CateringOnto_Class28]
		[CateringOnto_Class26]
		[CateringOnto_Class27])
	(tipo_de_comida [CateringOnto_Class38]))

([CateringOnto_Class47] of  Ingrediente

	(ingrediente "Pescado")
	(platos_con_ingrediente
		[CateringOnto_Class46]
		[CateringOnto_Class54]
		[CateringOnto_Class55]
		[CateringOnto_Class56]
		[CateringOnto_Class68]
		[CateringOnto_Class83]
		[CateringOnto_Class86]
		[CateringOnto_Class90]
		[CateringOnto_Class93]
		[CateringOnto_Class107]
		[CateringOnto_Class108]
		[CateringOnto_Class114]
		[CateringOnto_Class122]))

([CateringOnto_Class48] of  Plato

	(estilo_del_plato [CateringOnto_Class9])
	(ingredientes_del_plato [CateringOnto_Class20])
	(nombre_del_plato "Vichyssoise")
	(orden_del_plato Primero)
	(origen_del_plato [CateringOnto_Class49])
	(precio 12.0)
	(temporada_del_plato
		[CateringOnto_Class26]
		[CateringOnto_Class27])
	(tipo_de_comida [CateringOnto_Class37]))

([CateringOnto_Class49] of  Origen

	(origen "Francia")
	(platos_del_origen
		[CateringOnto_Class48]
		[CateringOnto_Class53]
		[CateringOnto_Class54]
		[CateringOnto_Class55]
		[CateringOnto_Class82]
		[CateringOnto_Class85]
		[CateringOnto_Class96]
		[CateringOnto_Class106]))

([CateringOnto_Class5] of  Bebida

	(bebida "Cola")
	(con_gas TRUE)
	(precio 2.0)
	(tiene_alcohol FALSE))

([CateringOnto_Class50] of  Plato

	(caliente TRUE)
	(estilo_del_plato [CateringOnto_Class9])
	(ingredientes_del_plato
		[CateringOnto_Class51]
		[CateringOnto_Class15])
	(nombre_del_plato "Lentejas con chorizo")
	(orden_del_plato Segundo)
	(origen_del_plato [CateringOnto_Class23])
	(picante FALSE)
	(precio 12.0)
	(temporada_del_plato
		[CateringOnto_Class29]
		[CateringOnto_Class28])
	(tipo_de_comida [CateringOnto_Class39]))

([CateringOnto_Class51] of  Ingrediente

	(ingrediente "Legumbres")
	(platos_con_ingrediente
		[CateringOnto_Class50]
		[CateringOnto_Class52]
		[CateringOnto_Class62]
		[CateringOnto_Class73]
		[CateringOnto_Class84]
		[CateringOnto_Class86]
		[CateringOnto_Class127]))

([CateringOnto_Class52] of  Plato

	(caliente TRUE)
	(estilo_del_plato [CateringOnto_Class9])
	(ingredientes_del_plato
		[CateringOnto_Class51]
		[CateringOnto_Class15])
	(nombre_del_plato "Fabada")
	(orden_del_plato Segundo)
	(origen_del_plato [CateringOnto_Class23])
	(precio 13.0)
	(temporada_del_plato
		[CateringOnto_Class29]
		[CateringOnto_Class28])
	(tipo_de_comida [CateringOnto_Class39]))

([CateringOnto_Class53] of  Plato

	(caliente TRUE)
	(estilo_del_plato [CateringOnto_Class9])
	(ingredientes_del_plato
		[CateringOnto_Class15]
		[CateringOnto_Class72])
	(nombre_del_plato "Andouillete de Troyes con patatas")
	(orden_del_plato Segundo)
	(origen_del_plato [CateringOnto_Class49])
	(precio 14.0)
	(temporada_del_plato [CateringOnto_Class29])
	(tipo_de_comida [CateringOnto_Class39]))

([CateringOnto_Class54] of  Plato

	(caliente TRUE)
	(estilo_del_plato [CateringOnto_Class11])
	(ingredientes_del_plato [CateringOnto_Class47])
	(nombre_del_plato "Langosta con caviar y cosas pijas")
	(orden_del_plato Segundo)
	(origen_del_plato [CateringOnto_Class49])
	(precio 34.0)
	(temporada_del_plato
		[CateringOnto_Class29]
		[CateringOnto_Class28]
		[CateringOnto_Class26]
		[CateringOnto_Class27])
	(tipo_de_comida [CateringOnto_Class38]))

([CateringOnto_Class55] of  Plato

	(caliente TRUE)
	(estilo_del_plato [CateringOnto_Class11])
	(ingredientes_del_plato
		[CateringOnto_Class19]
		[CateringOnto_Class47]
		[CateringOnto_Class45])
	(nombre_del_plato "Ostras gratinadas en muselina de cava")
	(orden_del_plato Primero%2FSegundo)
	(origen_del_plato [CateringOnto_Class49])
	(precio 22.0)
	(temporada_del_plato
		[CateringOnto_Class29]
		[CateringOnto_Class28]
		[CateringOnto_Class26]
		[CateringOnto_Class27])
	(tipo_de_comida [CateringOnto_Class38]))

([CateringOnto_Class56] of  Plato

	(caliente TRUE)
	(estilo_del_plato [CateringOnto_Class9])
	(ingredientes_del_plato
		[CateringOnto_Class47]
		[CateringOnto_Class20])
	(nombre_del_plato "Gambas al ajillo")
	(orden_del_plato Primero)
	(origen_del_plato [CateringOnto_Class23])
	(picante TRUE)
	(precio 12.0)
	(temporada_del_plato
		[CateringOnto_Class29]
		[CateringOnto_Class28]
		[CateringOnto_Class26]
		[CateringOnto_Class27])
	(tipo_de_comida [CateringOnto_Class38]))

([CateringOnto_Class57] of  Origen

	(origen "Internacional")
	(platos_del_origen
		[CateringOnto_Class74]
		[CateringOnto_Class77]
		[CateringOnto_Class86]
		[CateringOnto_Class87]
		[CateringOnto_Class92]
		[CateringOnto_Class94]
		[CateringOnto_Class99]
		[CateringOnto_Class104]
		[CateringOnto_Class109]
		[CateringOnto_Class111]
		[CateringOnto_Class112]
		[CateringOnto_Class113]
		[CateringOnto_Class114]
		[CateringOnto_Class117]
		[CateringOnto_Class119]
		[CateringOnto_Class122]
		[CateringOnto_Class123]))

([CateringOnto_Class58] of  Plato

	(caliente TRUE)
	(estilo_del_plato [CateringOnto_Class10])
	(ingredientes_del_plato
		[CateringOnto_Class59]
		[CateringOnto_Class19]
		[CateringOnto_Class60]
		[CateringOnto_Class67]
		[CateringOnto_Class124])
	(nombre_del_plato "Tiramisú")
	(orden_del_plato Postre)
	(origen_del_plato [CateringOnto_Class22])
	(precio 5.0)
	(temporada_del_plato
		[CateringOnto_Class29]
		[CateringOnto_Class28]
		[CateringOnto_Class26]
		[CateringOnto_Class27])
	(tipo_de_comida
		[CateringOnto_Class61]
		[CateringOnto_Class125]))

([CateringOnto_Class59] of  Ingrediente

	(ingrediente "Licores")
	(platos_con_ingrediente [CateringOnto_Class58]))

([CateringOnto_Class6] of  Bebida

	(bebida "Fanta")
	(con_gas TRUE)
	(precio 2.0))

([CateringOnto_Class60] of  Ingrediente

	(ingrediente "Harina")
	(platos_con_ingrediente
		[CateringOnto_Class77]
		[CateringOnto_Class88]
		[CateringOnto_Class117]
		[CateringOnto_Class119]
		[CateringOnto_Class58]
		[CateringOnto_Class128]))

([CateringOnto_Class61] of  Tipo

	(platos_del_tipo
		[CateringOnto_Class65]
		[CateringOnto_Class77]
		[CateringOnto_Class82]
		[CateringOnto_Class117]
		[CateringOnto_Class119]
		[CateringOnto_Class120]
		[CateringOnto_Class58]
		[CateringOnto_Class128])
	(tipo "Dulce"))

([CateringOnto_Class62] of  Plato

	(caliente TRUE)
	(estilo_del_plato [CateringOnto_Class9])
	(ingredientes_del_plato
		[CateringOnto_Class15]
		[CateringOnto_Class51]
		[CateringOnto_Class20])
	(nombre_del_plato "Callos a la madrileña")
	(orden_del_plato Segundo)
	(origen_del_plato [CateringOnto_Class23])
	(picante TRUE)
	(precio 12.0)
	(temporada_del_plato
		[CateringOnto_Class29]
		[CateringOnto_Class28])
	(tipo_de_comida [CateringOnto_Class39]))

([CateringOnto_Class63] of  Plato

	(caliente TRUE)
	(estilo_del_plato [CateringOnto_Class9])
	(ingredientes_del_plato
		[CateringOnto_Class21]
		[CateringOnto_Class15]
		[CateringOnto_Class20])
	(nombre_del_plato "Pizza Margarita")
	(orden_del_plato Primero%2FSegundo)
	(origen_del_plato [CateringOnto_Class22])
	(precio 10.0)
	(temporada_del_plato
		[CateringOnto_Class29]
		[CateringOnto_Class28]
		[CateringOnto_Class26]
		[CateringOnto_Class27])
	(tipo_de_comida
		[CateringOnto_Class40]
		[CateringOnto_Class39]))

([CateringOnto_Class64] of  Plato

	(caliente TRUE)
	(estilo_del_plato [CateringOnto_Class12])
	(ingredientes_del_plato [CateringOnto_Class16])
	(nombre_del_plato "Nuggets con catsup")
	(orden_del_plato Segundo)
	(origen_del_plato [CateringOnto_Class24])
	(precio 8.0)
	(temporada_del_plato
		[CateringOnto_Class29]
		[CateringOnto_Class28]
		[CateringOnto_Class26]
		[CateringOnto_Class27])
	(tipo_de_comida
		[CateringOnto_Class39]
		[CateringOnto_Class40]))

([CateringOnto_Class65] of  Plato

	(estilo_del_plato [CateringOnto_Class12])
	(ingredientes_del_plato
		[CateringOnto_Class19]
		[CateringOnto_Class67])
	(nombre_del_plato "Helado")
	(orden_del_plato Postre)
	(origen_del_plato [CateringOnto_Class22])
	(precio 2.0)
	(temporada_del_plato [CateringOnto_Class27])
	(tipo_de_comida
		[CateringOnto_Class40]
		[CateringOnto_Class61]))

([CateringOnto_Class67] of  Ingrediente

	(ingrediente "Azucar")
	(platos_con_ingrediente
		[CateringOnto_Class65]
		[CateringOnto_Class58]))

([CateringOnto_Class68] of  Plato

	(caliente TRUE)
	(estilo_del_plato [CateringOnto_Class9])
	(ingredientes_del_plato [CateringOnto_Class47])
	(nombre_del_plato "Calamares rellenos")
	(orden_del_plato Primero%2FSegundo)
	(origen_del_plato [CateringOnto_Class23])
	(precio 12.5)
	(temporada_del_plato
		[CateringOnto_Class29]
		[CateringOnto_Class28]
		[CateringOnto_Class26]
		[CateringOnto_Class27])
	(tipo_de_comida [CateringOnto_Class38]))

([CateringOnto_Class69] of  Plato

	(caliente TRUE)
	(estilo_del_plato [CateringOnto_Class12])
	(ingredientes_del_plato
		[CateringOnto_Class70]
		[CateringOnto_Class15])
	(nombre_del_plato "Huevos fritos con bacon")
	(orden_del_plato Primero%2FSegundo)
	(origen_del_plato [CateringOnto_Class24])
	(precio 7.5)
	(temporada_del_plato
		[CateringOnto_Class29]
		[CateringOnto_Class28]
		[CateringOnto_Class26]
		[CateringOnto_Class27])
	(tipo_de_comida
		[CateringOnto_Class40]
		[CateringOnto_Class39]))

([CateringOnto_Class7] of  Bebida

	(bebida "Agua con gas")
	(con_gas TRUE)
	(precio 1.2))

([CateringOnto_Class70] of  Ingrediente

	(ingrediente "Huevos")
	(platos_con_ingrediente
		[CateringOnto_Class69]
		[CateringOnto_Class71]
		[CateringOnto_Class85]
		[CateringOnto_Class86]
		[CateringOnto_Class88]
		[CateringOnto_Class87]
		[CateringOnto_Class96]
		[CateringOnto_Class102]
		[CateringOnto_Class117]
		[CateringOnto_Class120]
		[CateringOnto_Class128]
		[CateringOnto_Class129]))

([CateringOnto_Class71] of  Plato

	(caliente TRUE)
	(estilo_del_plato [CateringOnto_Class10])
	(ingredientes_del_plato
		[CateringOnto_Class70]
		[CateringOnto_Class15]
		[CateringOnto_Class72])
	(nombre_del_plato "Huevos estrellados")
	(orden_del_plato Primero)
	(origen_del_plato [CateringOnto_Class23])
	(precio 10.0)
	(temporada_del_plato
		[CateringOnto_Class29]
		[CateringOnto_Class28]
		[CateringOnto_Class26]
		[CateringOnto_Class27])
	(tipo_de_comida
		[CateringOnto_Class39]
		[CateringOnto_Class100]))

([CateringOnto_Class72] of  Ingrediente

	(ingrediente "Patatas")
	(platos_con_ingrediente
		[CateringOnto_Class71]
		[CateringOnto_Class75]
		[CateringOnto_Class86]
		[CateringOnto_Class53]
		[CateringOnto_Class102]
		[CateringOnto_Class115]))

([CateringOnto_Class73] of  Plato

	(caliente TRUE)
	(estilo_del_plato [CateringOnto_Class9])
	(ingredientes_del_plato
		[CateringOnto_Class15]
		[CateringOnto_Class51])
	(nombre_del_plato "Butifarra amb mongetes")
	(orden_del_plato Segundo)
	(origen_del_plato [CateringOnto_Class23])
	(precio 11.0)
	(temporada_del_plato
		[CateringOnto_Class29]
		[CateringOnto_Class28]
		[CateringOnto_Class26]
		[CateringOnto_Class27])
	(tipo_de_comida [CateringOnto_Class39]))

([CateringOnto_Class74] of  Plato

	(caliente TRUE)
	(estilo_del_plato [CateringOnto_Class10])
	(ingredientes_del_plato
		[CateringOnto_Class21]
		[CateringOnto_Class20])
	(nombre_del_plato "Hamburguesa vegetariana")
	(orden_del_plato Segundo)
	(origen_del_plato [CateringOnto_Class57])
	(precio 8.5)
	(temporada_del_plato
		[CateringOnto_Class29]
		[CateringOnto_Class28]
		[CateringOnto_Class26]
		[CateringOnto_Class27])
	(tipo_de_comida
		[CateringOnto_Class40]
		[CateringOnto_Class37]))

([CateringOnto_Class75] of  Plato

	(caliente TRUE)
	(estilo_del_plato [CateringOnto_Class9])
	(ingredientes_del_plato
		[CateringOnto_Class76]
		[CateringOnto_Class72]
		[CateringOnto_Class20])
	(nombre_del_plato "Acelgas con patatas y piñones")
	(orden_del_plato Primero)
	(origen_del_plato [CateringOnto_Class23])
	(precio 8.0)
	(temporada_del_plato
		[CateringOnto_Class29]
		[CateringOnto_Class28]
		[CateringOnto_Class26]
		[CateringOnto_Class27])
	(tipo_de_comida [CateringOnto_Class37]))

([CateringOnto_Class76] of  Ingrediente

	(ingrediente "Frutos secos")
	(platos_con_ingrediente
		[CateringOnto_Class75]
		[CateringOnto_Class86]
		[CateringOnto_Class94]))

([CateringOnto_Class77] of  Plato

	(caliente TRUE)
	(estilo_del_plato [CateringOnto_Class9])
	(ingredientes_del_plato
		[CateringOnto_Class60]
		[CateringOnto_Class78])
	(nombre_del_plato "Tarta de manzana")
	(orden_del_plato Postre)
	(origen_del_plato [CateringOnto_Class57])
	(precio 4.5)
	(temporada_del_plato
		[CateringOnto_Class29]
		[CateringOnto_Class28]
		[CateringOnto_Class26]
		[CateringOnto_Class27])
	(tipo_de_comida
		[CateringOnto_Class61]
		[CateringOnto_Class40]))

([CateringOnto_Class78] of  Ingrediente

	(ingrediente "Fruta")
	(platos_con_ingrediente
		[CateringOnto_Class77]
		[CateringOnto_Class82]
		[CateringOnto_Class86]))

([CateringOnto_Class79] of  Plato

	(caliente TRUE)
	(estilo_del_plato [CateringOnto_Class10])
	(ingredientes_del_plato
		[CateringOnto_Class14]
		[CateringOnto_Class20])
	(nombre_del_plato "Entrecot de buey con guarnición")
	(orden_del_plato Segundo)
	(origen_del_plato [CateringOnto_Class24])
	(precio 19.5)
	(temporada_del_plato
		[CateringOnto_Class29]
		[CateringOnto_Class28]
		[CateringOnto_Class26]
		[CateringOnto_Class27])
	(tipo_de_comida
		[CateringOnto_Class39]
		[CateringOnto_Class40]))

([CateringOnto_Class8] of  Bebida

	(bebida "Vino Rosado")
	(precio 3.0)
	(tiene_alcohol TRUE))

([CateringOnto_Class80] of  Plato

	(caliente TRUE)
	(estilo_del_plato [CateringOnto_Class9])
	(ingredientes_del_plato
		[CateringOnto_Class21]
		[CateringOnto_Class15])
	(nombre_del_plato "Fajitas mexicanas")
	(orden_del_plato Primero%2FSegundo)
	(origen_del_plato [CateringOnto_Class81])
	(picante TRUE)
	(precio 11.0)
	(temporada_del_plato
		[CateringOnto_Class29]
		[CateringOnto_Class28]
		[CateringOnto_Class26]
		[CateringOnto_Class27])
	(tipo_de_comida
		[CateringOnto_Class39]
		[CateringOnto_Class40]))

([CateringOnto_Class81] of  Origen

	(origen "Mexico")
	(platos_del_origen
		[CateringOnto_Class80]
		[CateringOnto_Class95]))

([CateringOnto_Class82] of  Plato

	(estilo_del_plato [CateringOnto_Class10])
	(ingredientes_del_plato [CateringOnto_Class78])
	(nombre_del_plato "Sorbete de frutas de temporada")
	(orden_del_plato Postre)
	(origen_del_plato [CateringOnto_Class49])
	(precio 3.5)
	(temporada_del_plato [CateringOnto_Class27])
	(tipo_de_comida
		[CateringOnto_Class61]
		[CateringOnto_Class40]))

([CateringOnto_Class83] of  Plato

	(caliente TRUE)
	(estilo_del_plato [CateringOnto_Class9])
	(ingredientes_del_plato
		[CateringOnto_Class18]
		[CateringOnto_Class47]
		[CateringOnto_Class20])
	(nombre_del_plato "Paella Marinera")
	(orden_del_plato Segundo)
	(origen_del_plato [CateringOnto_Class23])
	(precio 16.0)
	(temporada_del_plato
		[CateringOnto_Class29]
		[CateringOnto_Class28]
		[CateringOnto_Class26]
		[CateringOnto_Class27])
	(tipo_de_comida [CateringOnto_Class38]))

([CateringOnto_Class84] of  Plato

	(caliente TRUE)
	(estilo_del_plato [CateringOnto_Class9])
	(ingredientes_del_plato
		[CateringOnto_Class14]
		[CateringOnto_Class15]
		[CateringOnto_Class16]
		[CateringOnto_Class51]
		[CateringOnto_Class18]
		[CateringOnto_Class20])
	(nombre_del_plato "Paella Valenciana")
	(orden_del_plato Primero%2FSegundo)
	(origen_del_plato [CateringOnto_Class23])
	(precio 15.0)
	(temporada_del_plato
		[CateringOnto_Class29]
		[CateringOnto_Class28]
		[CateringOnto_Class26]
		[CateringOnto_Class27])
	(tipo_de_comida [CateringOnto_Class37]))

([CateringOnto_Class85] of  Plato

	(caliente TRUE)
	(estilo_del_plato [CateringOnto_Class11])
	(ingredientes_del_plato
		[CateringOnto_Class14]
		[CateringOnto_Class70])
	(nombre_del_plato "Steak tartare")
	(orden_del_plato Primero%2FSegundo)
	(origen_del_plato [CateringOnto_Class49])
	(picante TRUE)
	(precio 18.5)
	(temporada_del_plato
		[CateringOnto_Class29]
		[CateringOnto_Class28]
		[CateringOnto_Class26]
		[CateringOnto_Class27])
	(tipo_de_comida [CateringOnto_Class39]))

([CateringOnto_Class86] of  Plato

	(caliente FALSE)
	(estilo_del_plato [CateringOnto_Class10])
	(ingredientes_del_plato
		[CateringOnto_Class15]
		[CateringOnto_Class14]
		[CateringOnto_Class78]
		[CateringOnto_Class76]
		[CateringOnto_Class70]
		[CateringOnto_Class51]
		[CateringOnto_Class21]
		[CateringOnto_Class72]
		[CateringOnto_Class47]
		[CateringOnto_Class16]
		[CateringOnto_Class45]
		[CateringOnto_Class20])
	(nombre_del_plato "Canapés variados")
	(orden_del_plato Primero)
	(origen_del_plato [CateringOnto_Class57])
	(precio 10.0)
	(temporada_del_plato
		[CateringOnto_Class29]
		[CateringOnto_Class28]
		[CateringOnto_Class26]
		[CateringOnto_Class27])
	(tipo_de_comida
		[CateringOnto_Class39]
		[CateringOnto_Class40]
		[CateringOnto_Class38]
		[CateringOnto_Class100]))

([CateringOnto_Class87] of  Plato

	(estilo_del_plato [CateringOnto_Class10])
	(ingredientes_del_plato
		[CateringOnto_Class18]
		[CateringOnto_Class70]
		[CateringOnto_Class13]
		[CateringOnto_Class45]
		[CateringOnto_Class20])
	(nombre_del_plato "Ensalada de pasta")
	(orden_del_plato Primero)
	(origen_del_plato [CateringOnto_Class57])
	(precio 6.5)
	(temporada_del_plato
		[CateringOnto_Class29]
		[CateringOnto_Class28]
		[CateringOnto_Class26]
		[CateringOnto_Class27])
	(tipo_de_comida [CateringOnto_Class89]))

([CateringOnto_Class88] of  Plato

	(caliente TRUE)
	(estilo_del_plato [CateringOnto_Class9])
	(ingredientes_del_plato
		[CateringOnto_Class15]
		[CateringOnto_Class60]
		[CateringOnto_Class70]
		[CateringOnto_Class20])
	(nombre_del_plato "Empanada Gallega")
	(orden_del_plato Primero)
	(origen_del_plato [CateringOnto_Class23])
	(precio 8.0)
	(temporada_del_plato
		[CateringOnto_Class29]
		[CateringOnto_Class28]
		[CateringOnto_Class26]
		[CateringOnto_Class27])
	(tipo_de_comida
		[CateringOnto_Class39]
		[CateringOnto_Class40]))

([CateringOnto_Class89] of  Tipo

	(platos_del_tipo
		[CateringOnto_Class87]
		[CateringOnto_Class90]
		[CateringOnto_Class94]
		[CateringOnto_Class95])
	(tipo "Ensalada"))

([CateringOnto_Class9] of  EstiloCocina

	(estilo_cocina "Tradicional")
	(platos_del_estilo
		[CateringOnto_Class44]
		[CateringOnto_Class43]
		[CateringOnto_Class48]
		[CateringOnto_Class50]
		[CateringOnto_Class52]
		[CateringOnto_Class53]
		[CateringOnto_Class56]
		[CateringOnto_Class62]
		[CateringOnto_Class63]
		[CateringOnto_Class68]
		[CateringOnto_Class73]
		[CateringOnto_Class75]
		[CateringOnto_Class77]
		[CateringOnto_Class80]
		[CateringOnto_Class83]
		[CateringOnto_Class84]
		[CateringOnto_Class88]
		[CateringOnto_Class91]
		[CateringOnto_Class92]
		[CateringOnto_Class93]
		[CateringOnto_Class96]
		[CateringOnto_Class97]
		[CateringOnto_Class98]
		[CateringOnto_Class99]
		[CateringOnto_Class101]
		[CateringOnto_Class102]
		[CateringOnto_Class108]
		[CateringOnto_Class109]
		[CateringOnto_Class111]
		[CateringOnto_Class112]
		[CateringOnto_Class113]
		[CateringOnto_Class114]
		[CateringOnto_Class120]
		[CateringOnto_Class121]
		[CateringOnto_Class123]
		[CateringOnto_Class126]
		[CateringOnto_Class127]
		[CateringOnto_Class129]))

([CateringOnto_Class90] of  Plato

	(estilo_del_plato [CateringOnto_Class10])
	(ingredientes_del_plato
		[CateringOnto_Class47]
		[CateringOnto_Class20])
	(nombre_del_plato "Ensalada de ventresca y tomates")
	(orden_del_plato Primero)
	(origen_del_plato [CateringOnto_Class22])
	(precio 11.5)
	(temporada_del_plato
		[CateringOnto_Class29]
		[CateringOnto_Class28]
		[CateringOnto_Class26]
		[CateringOnto_Class27])
	(tipo_de_comida
		[CateringOnto_Class89]
		[CateringOnto_Class38]))

([CateringOnto_Class91] of  Plato

	(caliente TRUE)
	(estilo_del_plato [CateringOnto_Class9])
	(ingredientes_del_plato
		[CateringOnto_Class14]
		[CateringOnto_Class13]
		[CateringOnto_Class20])
	(nombre_del_plato "Canelones de carne")
	(orden_del_plato Primero%2FSegundo)
	(origen_del_plato [CateringOnto_Class22])
	(precio 8.0)
	(temporada_del_plato
		[CateringOnto_Class29]
		[CateringOnto_Class28]
		[CateringOnto_Class26]
		[CateringOnto_Class27])
	(tipo_de_comida [CateringOnto_Class39]))

([CateringOnto_Class92] of  Plato

	(caliente TRUE)
	(estilo_del_plato [CateringOnto_Class9])
	(ingredientes_del_plato
		[CateringOnto_Class18]
		[CateringOnto_Class19]
		[CateringOnto_Class21]
		[CateringOnto_Class16])
	(nombre_del_plato "Croquetas de pollo")
	(orden_del_plato Primero)
	(origen_del_plato [CateringOnto_Class57])
	(precio 6.5)
	(temporada_del_plato
		[CateringOnto_Class29]
		[CateringOnto_Class28]
		[CateringOnto_Class26]
		[CateringOnto_Class27])
	(tipo_de_comida
		[CateringOnto_Class39]
		[CateringOnto_Class40]
		[CateringOnto_Class100]))

([CateringOnto_Class93] of  Plato

	(caliente TRUE)
	(estilo_del_plato [CateringOnto_Class9])
	(ingredientes_del_plato
		[CateringOnto_Class19]
		[CateringOnto_Class21]
		[CateringOnto_Class47])
	(nombre_del_plato "Croquetas de bacalao")
	(orden_del_plato Primero)
	(origen_del_plato [CateringOnto_Class23])
	(precio 6.5)
	(temporada_del_plato
		[CateringOnto_Class29]
		[CateringOnto_Class28]
		[CateringOnto_Class26]
		[CateringOnto_Class27])
	(tipo_de_comida
		[CateringOnto_Class38]
		[CateringOnto_Class100]))

([CateringOnto_Class94] of  Plato

	(estilo_del_plato [CateringOnto_Class10])
	(ingredientes_del_plato
		[CateringOnto_Class76]
		[CateringOnto_Class20])
	(nombre_del_plato "Ensalada vegetariana")
	(orden_del_plato Primero)
	(origen_del_plato [CateringOnto_Class57])
	(precio 8.0)
	(temporada_del_plato
		[CateringOnto_Class29]
		[CateringOnto_Class28]
		[CateringOnto_Class26]
		[CateringOnto_Class27])
	(tipo_de_comida
		[CateringOnto_Class89]
		[CateringOnto_Class37]))

([CateringOnto_Class95] of  Plato

	(caliente FALSE)
	(estilo_del_plato [CateringOnto_Class10])
	(ingredientes_del_plato
		[CateringOnto_Class16]
		[CateringOnto_Class45]
		[CateringOnto_Class20])
	(nombre_del_plato "Ensalada césar")
	(orden_del_plato Primero)
	(origen_del_plato [CateringOnto_Class81])
	(precio 8.0)
	(temporada_del_plato
		[CateringOnto_Class29]
		[CateringOnto_Class28]
		[CateringOnto_Class26]
		[CateringOnto_Class27])
	(tipo_de_comida
		[CateringOnto_Class39]
		[CateringOnto_Class89]))

([CateringOnto_Class96] of  Plato

	(estilo_del_plato [CateringOnto_Class9])
	(ingredientes_del_plato
		[CateringOnto_Class70]
		[CateringOnto_Class20])
	(nombre_del_plato "Ensaladilla rusa")
	(orden_del_plato Primero)
	(origen_del_plato [CateringOnto_Class49])
	(picante FALSE)
	(precio 6.5)
	(temporada_del_plato
		[CateringOnto_Class29]
		[CateringOnto_Class28]
		[CateringOnto_Class26]
		[CateringOnto_Class27])
	(tipo_de_comida
		[CateringOnto_Class37]
		[CateringOnto_Class40]))

([CateringOnto_Class97] of  Plato

	(estilo_del_plato [CateringOnto_Class9])
	(ingredientes_del_plato [CateringOnto_Class15])
	(nombre_del_plato "Jamón ibérico")
	(orden_del_plato Primero)
	(origen_del_plato [CateringOnto_Class23])
	(precio 7.5)
	(temporada_del_plato
		[CateringOnto_Class29]
		[CateringOnto_Class28]
		[CateringOnto_Class26]
		[CateringOnto_Class27])
	(tipo_de_comida
		[CateringOnto_Class39]
		[CateringOnto_Class100]))

([CateringOnto_Class98] of  Plato

	(estilo_del_plato [CateringOnto_Class9])
	(ingredientes_del_plato [CateringOnto_Class15])
	(nombre_del_plato "Tabla de embutidos")
	(orden_del_plato Primero)
	(origen_del_plato [CateringOnto_Class23])
	(picante TRUE)
	(precio 7.5)
	(temporada_del_plato
		[CateringOnto_Class29]
		[CateringOnto_Class28]
		[CateringOnto_Class26]
		[CateringOnto_Class27])
	(tipo_de_comida
		[CateringOnto_Class39]
		[CateringOnto_Class100]))

([CateringOnto_Class99] of  Plato

	(estilo_del_plato [CateringOnto_Class9])
	(ingredientes_del_plato [CateringOnto_Class45])
	(nombre_del_plato "Tabla de quesos")
	(orden_del_plato Primero)
	(origen_del_plato [CateringOnto_Class57])
	(precio 8.0)
	(temporada_del_plato
		[CateringOnto_Class29]
		[CateringOnto_Class28]
		[CateringOnto_Class26]
		[CateringOnto_Class27])
	(tipo_de_comida
		[CateringOnto_Class100]
		[CateringOnto_Class100]))


;********************************************************************************************************************
;
;							- - F I N   D E L   C Ó D I G O   D E   P R O T È G È - -
;
;********************************************************************************************************************