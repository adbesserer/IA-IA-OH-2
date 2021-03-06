;********************************************************************************************************************
;********************************************************************************************************************
;                               - - P R Á C T I C A   D E   I A   2 - -
;   Alumnos:
;       Alejandro Dominguez Besserer
;       Miguel Ángel Muñoz
;       Adrià Munuera _
;********************************************************************************************************************
;********************************************************************************************************************


;********************************************************************************************************************
;
;                                   - - O N T O L O G Í A - -
;
;********************************************************************************************************************


(defclass %3ACLIPS_TOP_LEVEL_SLOT_CLASS "Fake class to save top-level slot information"
    (is-a USER)
    (role abstract)
    (single-slot tiene_alcohol
        (type SYMBOL)
        (allowed-values FALSE TRUE)
;+      (cardinality 1 1)
        (create-accessor read-write))
    (single-slot bebida
        (type STRING)
;+      (cardinality 1 1)
        (create-accessor read-write))
    (single-slot nombre_del_plato
        (type STRING)
;+      (cardinality 1 1)
        (create-accessor read-write))
    (single-slot postre
        (type INSTANCE)
;+      (allowed-classes)
;+      (cardinality 1 1)
        (create-accessor read-write))
    (multislot platos_del_origen
        (type INSTANCE)
;+      (allowed-classes Plato)
;+      (inverse-slot origen_del_plato)
        (create-accessor read-write))
    (single-slot precioPorPersona
        (type INSTANCE)
;+      (allowed-classes)
;+      (cardinality 1 1)
        (create-accessor read-write))
    (single-slot picante
        (type SYMBOL)
        (allowed-values FALSE TRUE)
;+      (cardinality 1 1)
        (create-accessor read-write))
    (single-slot primero
        (type INSTANCE)
;+      (allowed-classes)
;+      (cardinality 1 1)
        (create-accessor read-write))
    (single-slot intervaloMax
        (type FLOAT)
;+      (cardinality 1 1)
        (create-accessor read-write))
    (multislot estilo_del_plato
        (type INSTANCE)
;+      (allowed-classes EstiloCocina)
        (cardinality 1 ?VARIABLE)
;+      (inverse-slot platos_del_estilo)
        (create-accessor read-write))
    (multislot bebidas
        (type INSTANCE)
;+      (allowed-classes Bebida)
        (cardinality 1 ?VARIABLE)
        (create-accessor read-write))
    (single-slot intervaloMin
        (type FLOAT)
;+      (cardinality 1 1)
        (create-accessor read-write))
    (single-slot origen_del_plato
        (type INSTANCE)
;+      (allowed-classes Origen)
;+      (cardinality 1 1)
;+      (inverse-slot platos_del_origen)
        (create-accessor read-write))
    (multislot platos_con_ingrediente
        (type INSTANCE)
;+      (allowed-classes Plato)
        (cardinality 1 ?VARIABLE)
;+      (inverse-slot ingredientes_del_plato)
        (create-accessor read-write))
    (multislot temporada_del_plato
        (type INSTANCE)
;+      (allowed-classes Temporada)
        (cardinality 1 ?VARIABLE)
;+      (inverse-slot platos_de_temporada)
        (create-accessor read-write))
    (single-slot origen
        (type STRING)
;+      (cardinality 1 1)
        (create-accessor read-write))
    (single-slot origen_plato
        (type INSTANCE)
;+      (allowed-classes Origen)
;+      (cardinality 0 1)
        (create-accessor read-write))
    (multislot compatible
        (type INSTANCE)
;+      (allowed-classes Plato)
        (cardinality 1 ?VARIABLE)
        (create-accessor read-write))
    (multislot platos_del_tipo
        (type INSTANCE)
;+      (allowed-classes Plato)
        (cardinality 1 ?VARIABLE)
;+      (inverse-slot tipo_de_comida)
        (create-accessor read-write))
    (single-slot orden_del_plato
        (type SYMBOL)
        (allowed-values Primero Segundo Postre Primero%2FSegundo)
;+      (cardinality 1 1)
        (create-accessor read-write))
    (single-slot valor
        (type FLOAT)
;+      (cardinality 1 1)
        (create-accessor read-write))
    (multislot tipo_de_comida
        (type INSTANCE)
;+      (allowed-classes Tipo)
;+      (inverse-slot platos_del_tipo)
        (create-accessor read-write))
    (single-slot estilo_cocina
        (type STRING)
;+      (cardinality 1 1)
        (create-accessor read-write))
    (single-slot ingrediente
        (type STRING)
;+      (cardinality 1 1)
        (create-accessor read-write))
    (single-slot segundo
        (type INSTANCE)
;+      (allowed-classes)
;+      (cardinality 1 1)
        (create-accessor read-write))
    (multislot platos_del_estilo
        (type INSTANCE)
;+      (allowed-classes Plato)
        (cardinality 1 ?VARIABLE)
;+      (inverse-slot estilo_del_plato)
        (create-accessor read-write))
    (single-slot caliente
        (type SYMBOL)
        (allowed-values FALSE TRUE)
;+      (cardinality 1 1)
        (create-accessor read-write))
    (multislot ingredientes_del_plato
        (type INSTANCE)
;+      (allowed-classes Ingrediente)
        (cardinality 1 ?VARIABLE)
;+      (inverse-slot platos_con_ingrediente)
        (create-accessor read-write))
    (single-slot temporada
        (type STRING)
;+      (cardinality 1 1)
        (create-accessor read-write))
    (single-slot precio
        (type FLOAT)
        (range 0.0 100.0)
;+      (cardinality 1 1)
        (create-accessor read-write))
    (single-slot tipo
        (type STRING)
;+      (cardinality 1 1)
        (create-accessor read-write))
    (single-slot con_gas
        (type SYMBOL)
        (allowed-values FALSE TRUE)
;+      (cardinality 1 1)
        (create-accessor read-write))
    (multislot epoca
        (type INSTANCE)
;+      (allowed-classes Temporada)
        (create-accessor read-write))
    (multislot inverse_of_platos_de_temporada
        (type INSTANCE)
;+      (allowed-classes Tipo Ingrediente Temporada Origen EstiloCocina)
        (create-accessor read-write))
    (single-slot complejo
        (type SYMBOL)
        (allowed-values FALSE TRUE)
;+      (cardinality 1 1)
        (create-accessor read-write))
    (single-slot esComidaFamiliar
        (type SYMBOL)
        (allowed-values FALSE TRUE)
;+      (cardinality 1 1)
        (create-accessor read-write))
    (multislot platos_de_temporada
        (type INSTANCE)
;+      (allowed-classes Plato)
;+      (inverse-slot temporada_del_plato)
        (create-accessor read-write)))

(defclass Plato "Un plato puede ser un primero, segundo o postre. Es el componente esencial del menu junto a la bebida, y contiene varios atributos que sirven para distinguir unos platos de otros."
    (is-a USER)
    (role concrete)
    (multislot tipo_de_comida
        (type INSTANCE)
;+      (allowed-classes Tipo)
        (create-accessor read-write))
    (multislot temporada_del_plato
        (type INSTANCE)
;+      (allowed-classes Temporada)
        (cardinality 1 ?VARIABLE)
        (create-accessor read-write))
    (single-slot precio
        (type FLOAT)
        (range 0.0 100.0)
;+      (cardinality 1 1)
        (create-accessor read-write))
    (single-slot picante
        (type SYMBOL)
        (allowed-values FALSE TRUE)
;+      (cardinality 1 1)
        (create-accessor read-write))
    (single-slot nombre_del_plato
        (type STRING)
;+      (cardinality 1 1)
        (create-accessor read-write))
    (single-slot caliente
        (type SYMBOL)
        (allowed-values FALSE TRUE)
;+      (cardinality 1 1)
        (create-accessor read-write))
    (single-slot orden_del_plato
        (type SYMBOL)
        (allowed-values Primero Segundo Postre Primero%2FSegundo)
;+      (cardinality 1 1)
        (create-accessor read-write))
    (single-slot origen_del_plato
        (type INSTANCE)
;+      (allowed-classes Origen)
;+      (cardinality 1 1)
        (create-accessor read-write))
    (multislot ingredientes_del_plato
        (type INSTANCE)
;+      (allowed-classes Ingrediente)
        (cardinality 1 ?VARIABLE)
        (create-accessor read-write))
    (multislot estilo_del_plato
        (type INSTANCE)
;+      (allowed-classes EstiloCocina)
        (cardinality 1 ?VARIABLE)
        (create-accessor read-write)))

(defclass Bebida "La bebida se trata a parte del plato, puede tener gas o alcohol, lo que la hace mas adecuada para diferentes tipos de menus"
    (is-a USER)
    (role concrete)
    (single-slot tiene_alcohol
        (type SYMBOL)
        (allowed-values FALSE TRUE)
;+      (cardinality 1 1)
        (create-accessor read-write))
    (single-slot precio
        (type FLOAT)
        (range 0.0 100.0)
;+      (cardinality 1 1)
        (create-accessor read-write))
    (single-slot bebida
        (type STRING)
;+      (cardinality 1 1)
        (create-accessor read-write))
    (single-slot con_gas
        (type SYMBOL)
        (allowed-values FALSE TRUE)
;+      (cardinality 1 1)
        (create-accessor read-write)))

(defclass Tipo "El tipo de comida, a diferencia del estilo, nos dice si un plato es vegetariano, si es marisco, si es adecuado para un menu infantil... Un plato puede ser de varios tipos"
    (is-a USER)
    (role concrete)
    (single-slot tipo
        (type STRING)
;+      (cardinality 1 1)
        (create-accessor read-write))
    (multislot platos_del_tipo
        (type INSTANCE)
;+      (allowed-classes Plato)
        (cardinality 1 ?VARIABLE)
        (create-accessor read-write)))

(defclass Ingrediente "Un plato esta compuesto de sus ingredientes, y nos puede interesar descartar o seleccionar platos en funcion de los elementos que contienen"
    (is-a USER)
    (role concrete)
    (single-slot ingrediente
        (type STRING)
;+      (cardinality 1 1)
        (create-accessor read-write))
    (multislot platos_con_ingrediente
        (type INSTANCE)
;+      (allowed-classes Plato)
        (cardinality 1 ?VARIABLE)
        (create-accessor read-write)))

(defclass Temporada "Los platos pueden ser mas adecuados para diferentes temporadas: por ejemplo, el gazpacho para el verano, o la escudella para el invierno."
    (is-a USER)
    (role concrete)
    (single-slot temporada
        (type STRING)
;+      (cardinality 1 1)
        (create-accessor read-write))
    (multislot platos_de_temporada
        (type INSTANCE)
;+      (allowed-classes Plato)
        (create-accessor read-write)))

(defclass Origen "El origen del plato es el pais o region de donde proviene, los clientes pueden pedir un menu de comida italiana o japonesa, por ejemplo."
    (is-a USER)
    (role concrete)
    (single-slot origen
        (type STRING)
;+      (cardinality 1 1)
        (create-accessor read-write))
    (multislot platos_del_origen
        (type INSTANCE)
;+      (allowed-classes Plato)
        (create-accessor read-write)))

(defclass EstiloCocina "El estilo de cocina representa cosas como si un plato es tradicional, moderno, de alta cocina, etc."
    (is-a USER)
    (role concrete)
    (single-slot estilo_cocina
        (type STRING)
;+      (cardinality 1 1)
        (create-accessor read-write))
    (multislot platos_del_estilo
        (type INSTANCE)
;+      (allowed-classes Plato)
        (cardinality 1 ?VARIABLE)
        (create-accessor read-write)))
;********************************************************************************************************************
;
;                                   - - I N S T A N C I A S - -
;
;********************************************************************************************************************

(definstances instancias

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
    (nombre_del_plato "Escalopa de foie gras al aceite de sauco")
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
    (nombre_del_plato "Tataki de atun")
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
    (nombre_del_plato "Salmon a la brasa")
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
    (precio 2.0)
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
    (nombre_del_plato "Cafe")
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

    (ingrediente "Cafe")
    (platos_con_ingrediente
        [CateringOnto_Class123]
        [CateringOnto_Class58]
        [CateringOnto_Class128]))

([CateringOnto_Class125] of  Tipo

    (platos_del_tipo
        [CateringOnto_Class123]
        [CateringOnto_Class58]
        [CateringOnto_Class128])
    (tipo "Cafe"))

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
    (nombre_del_plato "Escudella")
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
    (nombre_del_plato "Tarta de cafe")
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
    (precio 2.0)
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
    (precio 2.0)
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
    (precio 2.5)
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
    (precio 1.5)
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
    (nombre_del_plato "Tiramisu")
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
    (precio 1.5))

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
    (nombre_del_plato "Callos a la madrilenya")
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
    (precio 1.0))

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
    (precio 7.50)
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
    (nombre_del_plato "Acelgas con patatas y pinyones")
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
    (nombre_del_plato "Entrecot de buey con guarnicion")
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
    (precio 2.0)
    (tiene_alcohol TRUE))

([CateringOnto_Class200] of  Bebida

    (bebida "Zumo de fruta")
    (precio 2.0)
    (tiene_alcohol FALSE))

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
    (nombre_del_plato "Canapes variados")
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
    (nombre_del_plato "Ensalada cesar")
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
    (nombre_del_plato "Jamon iberico")
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
)

;********************************************************************************************************************
;
; F I N   D E L   C Ó D I G O   D E   P R O T È G È - -
;
;********************************************************************************************************************

		
		
;;; Declaración de clases propias

(defclass Menu
    (is-a USER)
    (role concrete)
    (slot primer_plato
        (type INSTANCE)
        (create-accessor read-write))
    (slot segundo_plato
        (type INSTANCE)
        (create-accessor read-write))
    (slot postre
        (type INSTANCE)
        (create-accessor read-write))
    (multislot bebida
        (type INSTANCE)
        (create-accessor read-write))
    (slot precio
        (type FLOAT)
        (create-accessor read-write))
)

(defclass recomendacion 
    (is-a USER)
    (role concrete)
    (slot plato
        (type INSTANCE)
        (create-accessor read-write))
    (slot puntuacion
        (type INTEGER)
        (create-accessor read-write))
)

;;; Fin de la declaración de clases propias -----------
;;; ---------------------------------------------------


;;; Declaracion de modulos

(defmodule MAIN
    (export ?ALL)
)

(defmodule informacion_evento
    (import MAIN ?ALL)
    (export ?ALL)
)

;;; Fin de la declaracion de modulos ------------------
;;; ---------------------------------------------------


;;; Declaracion de mensajes

;;; Fin de la declaracion de mensajes -----------------
;;; ---------------------------------------------------


;;; Declaracion de templates

(deftemplate MAIN::Evento
    (slot evento_temporada (type INSTANCE))
    
    (multislot evento_tipo_personas (type INSTANCE))
    
    (slot maximo_precio (type FLOAT))
    (slot minimo_precio (type FLOAT))
    (slot numero_bebidaB (type SYMBOL) (allowed-values TRUE FALSE))
    (slot vinoB (type SYMBOL) (allowed-values TRUE FALSE))
    
    (multislot ingredientes_prohibidos (type INSTANCE))
    (multislot estilo_comida_preferente (type INSTANCE))
    (multislot pais_preferente (type INSTANCE))

    (slot comida_picanteB (type SYMBOL) (allowed-values TRUE FALSE))
    (slot comida_calienteB (type SYMBOL) (allowed-values TRUE FALSE))
    (slot comida_friaB (type SYMBOL) (allowed-values TRUE FALSE))
)

(deftemplate MAIN::Recomendacion_de_Menus
    (slot menubarato (type INSTANCE))
    (slot menumediano (type INSTANCE))
    (slot menucaro (type INSTANCE))
    (multislot menu_restringido (type INSTANCE))
)
(deftemplate MAIN::lista-de-platos
    (multislot recomendaciones (type INSTANCE))
)

(deftemplate MAIN::lista-de-platos-por-precio
    (multislot platos-baratos (type INSTANCE))
    (multislot platos-medianos (type INSTANCE))
    (multislot platos-caros (type INSTANCE))
)

(deftemplate MAIN::platos-baratos-hechos
    (slot Bool (type SYMBOL) (allowed-values TRUE FALSE))
)

(deftemplate MAIN::platos-medianos-hechos
    (slot Bool (type SYMBOL) (allowed-values TRUE FALSE))
)

;;; Fin de la declaracion de templates ----------------
;;; ---------------------------------------------------


;;; Declaracion de funciones

;;; Funcion para imprimir el texto que se le pase

;;; funcion para conseguir el plato con maxima puntuacion
(deffunction max-punts ($?lista)
    (bind ?max -1)
    (bind ?plato nil)
    (bind ?plato_aux nil)
    (if (not (eq (length ?lista) 0))
        then
        (bind ?firstRec (nth 1 ?lista))
        (bind ?plato (nth 1 ?lista))
        (bind ?max (send ?firstRec get-puntuacion))
        (bind ?plato_aux (send ?firstRec get-plato))
    )
    (progn$ (?aux $?lista)
        (bind ?plato_aux (send ?aux get-plato))
        (bind ?puntuacion (send ?aux get-puntuacion))
        (if (> ?puntuacion ?max)
            then 
            (bind ?max ?puntuacion)
            (bind ?plato ?aux)
        )
    )
    ?plato
    ;devuelve la recomendacion: plato y puntos
)



(deffunction MAIN::elegir-bebidas-una (?primero ?segundo ?postre ?alcohol ?vino ?frutas ?ninyos)
	(bind ?resultado "")
	(if (eq ?vino TRUE) 
		then (if (eq (send ?primero tienepescadobool) TRUE) 
				then (bind ?resultado "Vino Blanco") 
				else (if (eq (send ?segundo tienepescadobool) TRUE)
					then (bind ?resultado "Vino Blanco")
					else(if (or (eq (send ?primero tienecarnebool) TRUE)(eq (send ?segundo tienecarnebool) TRUE))
						then (bind ?resultado "Vino Tinto")
						else (bind ?resultado "Vino Rosado")	
					)
				)
			) 
		else (if (eq ?ninyos TRUE) 
				then (if (eq ?frutas TRUE) 
					then (bind ?resultado "Fanta") 
					else (bind ?resultado "Cola")
					) 
				else (if (eq ?alcohol TRUE) 
					then (bind ?resultado "Cerveza") 
					else (bind ?resultado "Agua")
					)
			)
	)
	return ?resultado
)

(deffunction MAIN::get-bebida-de-nombre (?nombre)
	(bind $?bebida (find-all-instances ((?inst Bebida)) TRUE))
	(bind ?result "")
	(progn$ (?var ?bebida)
		(if(eq (send ?var get-bebida) ?nombre)
			then(bind ?result ?var)
		)
	)
	return ?result 
)

(deffunction MAIN::pregunta_bool (?pregunta)
    (printout t crlf)
    (format t "%s " ?pregunta)
    (printout t "(Responda con un Si o un No)" crlf)
    (bind ?resp (read))
    (while
        (or (not (lexemep ?resp))(not (or (eq (lowcase ?resp) si) (eq (lowcase ?resp) no))))
        (printout t "Su respuesta ha de ser SI/NO." crlf)
        (printout t "Por favor, responda otra vez." crlf)
        (bind ?resp  (read))
    )

    (if
        (eq (lowcase ?resp) si)
        then (bind ?resp TRUE)
        else (bind ?resp FALSE)
    )
    ?resp
)

(deffunction MAIN::pregunta_int (?pregunta)
    (printout t crlf)
    (format t "%s " ?pregunta)
    (printout t "Responda con un numero." crlf)
    (bind ?resp (read))
    (while (lexemep ?resp)
    	(printout t "La respuesta ha de ser un numero." crlf)
    	(printout t "Responda de nuevo." crlf)
    	(bind ?resp (read))
    )
    ?resp
)

(deffunction MAIN::pregunta_string (?pregunta $?posibles)
    (printout t crlf)
    (printout t ?pregunta crlf)
    (printout t "(Elija escribiendo con el numero correspondiente)" crlf)
    (progn$ (?var ?posibles)
        (bind ?out (format nil "    %d. %s" ?var-index ?var))
        (printout t ?out crlf)
    )

    (printout t "Su respuesta: ")
    (bind ?resp (read))
    (while
        (or (lexemep ?resp) (or (> ?resp (length $?posibles)) (< ?resp 1)))
        (printout t "Su respuesta ha de ser una de las opciones." crlf)
        (printout t "Por favor, responda otra vez." crlf)
        (bind ?resp (read))
    )

    (bind
        ?resp
        (nth ?resp ?posibles)
    )
    ?resp
)

(deffunction MAIN::pregunta_multiple (?pregunta $?posibles)
    (printout t crlf)
    (printout t ?pregunta crlf)
    (printout t "(Elija escribiendo con los numeros correspondientes)" crlf)
    (progn$ (?var ?posibles)
        (bind ?out (format nil "    %d. %s" ?var-index ?var))
        (printout t ?out crlf)
    )

    (printout t "Separe sus respuestas con un espacio." crlf)
    (printout t "Sus opciones: ")
    (bind ?resp (readline))
    (bind $?num (explode$ ?resp))
    (bind $?listado (create$ ))
    (progn$ (?var ?num)
        (if (and
            (integerp ?var) 
            (and (>= ?var 1) (<= ?var (length ?posibles)))
            )
            then
            (if (not (member$ ?var ?listado))
                then
                (bind ?value (nth ?var $?posibles))
                (bind
                    $?listado
                    (insert$ ?listado (+ (length$ ?listado) 1) ?value)
                )
            )
        )
    )
    ?listado
)

(deffunction takeAllIngredientes ()
    (bind $?ing (find-all-instances ((?i Ingrediente)) TRUE))
    (bind $?nIng (create$ ))
    (loop-for-count (?i 1 (length$ $?ing)) do
        (bind ?curr-ing (nth$ ?i ?ing))
        (bind ?nameIng (send ?curr-ing get-ingrediente))

        (bind $?nIng (insert$ $?nIng (+ (length$ $?nIng) 1) ?nameIng))
    )
    ?nIng
)

(deffunction separar_por_precio ($?x)
    (bind $?platos ?x)
    (bind $?platoB (create$ ))
    (bind $?platoM (create$ ))
    (bind $?platoC (create$ ))

    (loop-for-count (?i 1 (length$ $?platos)) do
        (bind ?curr-pl (nth$ ?i ?platos))
        (bind ?curr-pl2 (send ?curr-pl get-plato))
        (bind ?prec (send ?curr-pl2 get-precio))
        (if (< ?prec 8.0)
            then (bind $?platoB (insert$ $?platoB (+ (length$ $?platoB) 1) ?curr-pl))
            else (if (< ?prec 18.0)
                then (bind $?platoM (insert$ $?platoM (+ (length$ $?platoM) 1) ?curr-pl))
                else (bind $?platoC (insert$ $?platoC (+ (length$ $?platoC) 1) ?curr-pl))
                )
        )
    )

    (assert (lista-de-platos-por-precio
        (platos-baratos ?platoB)
        (platos-medianos ?platoM)
        (platos-caros ?platoC)
    ))
)

(deffunction takePrimerPlato ($?platR)

	(bind $?platos ?platR)
	(bind $?respP(create$ ))


	(loop-for-count (?i 1 (length$ $?platos))
		(bind ?curr-pl (nth$ ?i ?platos))
		(bind ?curr-pl2 (send ?curr-pl get-plato))
		(bind ?kindpl (send ?curr-pl2 get-orden_del_plato))

		(if (or (eq ?kindpl Primero) (eq ?kindpl Primero%2FSegundo))
			then (bind $?respP (insert$ $?respP (+ (length$ $?respP) 1) ?curr-pl))
		)
	)
	?respP
)

(deffunction takeSegundoPlato (?pp $?platR)

	(bind $?platos ?platR)
	(bind $?respS (create$ ))
	(loop-for-count (?i 1 (length$ $?platos))
		(bind ?curr-pl (nth$ ?i ?platos))
		(bind ?curr-pl2 (send ?curr-pl get-plato))
		(bind ?kindpl (send ?curr-pl2 get-orden_del_plato))

		(if (and (or (eq ?kindpl Segundo) (eq ?kindpl Primero%2FSegundo)) (not (eq ?curr-pl2 ?pp)))
			then (bind $?respS (insert$ $?respS (+ (length$ $?respS) 1) ?curr-pl))
		)
	)
	?respS
)

(deffunction takePostre ($?platR)

	(bind $?platos ?platR)
	(bind $?resp (create$ ))
	(loop-for-count (?i 1 (length$ $?platos))
		(bind ?curr-pl (nth$ ?i ?platos))
		(bind ?curr-pl2 (send ?curr-pl get-plato))
		(bind ?kindpl (send ?curr-pl2 get-orden_del_plato))
		(if (eq ?kindpl Postre)
			then (bind $?resp (insert$ $?resp (+ (length$ $?resp) 1) ?curr-pl))
		)
	)
	?resp
)

;;; Fin de la declaracion de funciones ----------------
;;; ---------------------------------------------------



;;; - - - Declaracion de reglas y facts - - -

(defrule MAIN::initialRule "Regla inicial"
    (declare (salience 10))
    =>
    (printout t "***********************************************************************" crlf)
    (printout t "*                                                                     *" crlf)
    (printout t "*   Welcome to the intelligent catering system of the 20th century!   *" crlf)
    (printout t "*            世紀の知的なケータリング システムへようこそ!             *" crlf)
    (printout t "*                                                                     *" crlf)
    (printout t "*                  - - - R I C O   R I C O ™ - - -                    *" crlf)
    (printout t "*                                                                     *" crlf)
    (printout t "***********************************************************************" crlf)
	(assert (formulario))
)

(defrule formularioEvento
    (formulario)
    =>
    
;;;;Pregunta unica respuesta de multiple opcion
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

    (bind ?seasons (create$ "Otonyo" "Invierno" "Primavera" "Verano"))
    (bind
        ?respuestaEstacion
        (pregunta_string "¿En que epoca del anyo se celebrara el evento?" ?seasons)
    )


;;;;Pregunta multiple respuesta
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
    (bind ?respuestaPersonasEspeciales "")
    (bind ?espPeople (create$ "Vegetariano" "Infantil" "Abstemios del alcohol"))
    (if (eq (pregunta_bool "¿Habrá algún niño, algun abstemio del alcohol o algun invitado que prefiera comida vegetariana?") TRUE)
        then (bind
        	?respuestaPersonasEspeciales
            (pregunta_multiple "Cuales de las siguientes personas atenderan al evento?" ?espPeople)
        )
    )

;;;;Pregunta Integer
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

    (bind ?respuestaMaxPrecio(pregunta_int "¿Cual es el precio maximo que deberia tener el menu?"))

;;;;Pregunta Integer
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

    (bind ?respuestaMinPrecio(pregunta_int "¿Cual es el precio minimo que deberia tener el menu?"))
    
;;;;Pregunta unica respuesta de multiple opción
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

    (bind ?nbebidas (create$ "Una bebida para todo el menú." "Una bebida por plato."))
    (bind
        ?respuestaBebida
        (pregunta_string "¿Prefiere usted una sola bebida para toda la comida, o una adecuada para cada plato?" ?nbebidas)
    )

;;;;Pregunta booleana
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
    
    (bind ?respuestaVino (pregunta_bool "¿Le gustaria que se sirviera vino?"))

;;;;Pregunta multiple respuesta
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
    (bind ?respuestaIngredientes "")
    (if (eq (pregunta_bool "¿Hay algun ingrediente que deberiamos no usar?") TRUE)
        then (bind
            ?respuestaIngredientes
            (pregunta_multiple "¿Cuales son estos ingredientes?" (takeAllIngredientes))
        )
    )
;;;;Pregunta multiple respuesta
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

    (bind ?styles (create$ "Tradicional" "Moderno" "Rapida" "Alta Cocina"))
    (bind ?respuestaEstiloCocina "")
    (if (eq (pregunta_bool "¿Hay algun estilo de comida que se prefiera?") TRUE)
        then (bind
            ?respuestaEstiloCocina
            (pregunta_multiple "Elija pues entre los siguentes: " ?styles)
        )
    )

;;;;Pregunta multiple respuesta
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

    (bind ?ctries (create$ "Espanya" "Francia" "Internacional" "Italia" "Japon" "Mexico" "USA"))
    (bind ?respuestaPais "")
    (if (eq (pregunta_bool "¿Prefiere usted recetas originales de algun pais en especial?") TRUE)
        then
            (bind
                ?respuestaPais
                (pregunta_multiple "Elija pues entre los siguientes: " ?ctries)
            )
    )

;;;;Pregunta booleana
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

    (bind ?respuestaPicante(pregunta_bool "¿Le gusta la comida picante?"))

;;;;Pregunta booleana
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
    
    (bind ?respuestaCaliente(pregunta_bool "¿Quiere que se sirvan platos calientes?"))

;;;;Pregunta booleana
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
    
    (bind ?respuestaFrio(pregunta_bool "¿Quiere que se sirvan platos fríos?"))


;;;;                             A S S E R T S
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

    (assert (Evento 
        (evento_temporada ?respuestaEstacion)
        (evento_tipo_personas ?respuestaPersonasEspeciales)
        (maximo_precio ?respuestaMaxPrecio)
        (minimo_precio ?respuestaMinPrecio)
        (numero_bebidaB ?respuestaBebida)
        (vinoB ?respuestaVino)
        (ingredientes_prohibidos ?respuestaIngredientes)
        (estilo_comida_preferente ?respuestaEstiloCocina)
        (pais_preferente ?respuestaPais)
        (comida_picanteB ?respuestaPicante)
        (comida_calienteB ?respuestaCaliente)
        (comida_friaB ?respuestaFrio)
    ))  
)


(defrule f2
	(Evento (evento_tipo_personas $?respuestaPersonasEspeciales)(maximo_precio ?maxPrecio)(minimo_precio ?minPrecio)(evento_temporada ?temporada)(comida_picanteB ?picante)(comida_friaB ?fria)(comida_calienteB ?caliente)(estilo_comida_preferente $?estilo_comida_preferente)(ingredientes_prohibidos $?ingredientes_prohibidos)(pais_preferente $?pais_preferente))
	=>
	(bind $?platos (find-all-instances ((?inst Plato)) TRUE))
	(bind ?recomendations(create$ ))
	(loop-for-count (?i 1 (length$ $?platos)) do
		(bind ?res 0)
		(bind ?res (send (nth$ ?i ?platos) asignar-puntuacion-plato ?temporada ?maxPrecio ?minPrecio ?picante ?fria ?caliente))
		(bind ?res (+ ?res (send (nth$ ?i ?platos) asignar-puntuacion-plato-comida-pref $?estilo_comida_preferente)))
		(bind ?res (+ ?res (send (nth$ ?i ?platos) asignar-puntuacion-plato-ing-proh $?ingredientes_prohibidos)))
		(bind ?res (+ ?res (send (nth$ ?i ?platos) asignar-puntuacion-plato-pais-pref $?pais_preferente)))
		(bind ?res (+ ?res (send (nth$ ?i ?platos) asignar-puntuacion-plato-tipo $?respuestaPersonasEspeciales)))
		(bind ?name (sym-cat R**(send (nth$ ?i ?platos) get-nombre_del_plato)))
		(bind ?aux (make-instance ?name of recomendacion(plato (nth$ ?i ?platos))(puntuacion ?res)))
		(bind $?recomendations (insert$ ?recomendations 1 ?aux))
	)

	(assert (lista-de-platos
	    (recomendaciones $?recomendations)
	))
	(separar_por_precio $?recomendations)
)

(defrule getMenuBarato
	?lpp <- (lista-de-platos-por-precio(platos-baratos $?pb))
	(Evento (evento_temporada ?respuestaEstacion)(evento_tipo_personas $?respuestaPersonasEspeciales)(maximo_precio ?respuestaMaxPrecio)(minimo_precio ?respuestaMinPrecio)(numero_bebidaB ?respuestaBebida)(vinoB ?respuestaVino)(ingredientes_prohibidos $?respuestaIngredientes)(estilo_comida_preferente $?respuestaEstiloCocina)(pais_preferente $?respuestaPais)(comida_picanteB ?respuestaPicante)(comida_calienteB ?respuestaCaliente)(comida_friaB ?respuestaFrio))
    =>
	(bind ?pp (max-punts (takePrimerPlato $?pb)))
	(bind ?sep (max-punts (takeSegundoPlato (send ?pp get-plato) $?pb)))
	(bind ?po (max-punts (takePostre $?pb)))
	(bind ?alcohol TRUE)
	(bind ?ninyos FALSE)
	(progn$ (?varAbs ?respuestaPersonasEspeciales)
		(if(eq ?varAbs "Abstemios del alcohol")
			then (bind ?alcohol FALSE)
			else (if(eq ?varAbs "Infantil") then (bind ?ninyos TRUE))
		)
	)
	(bind ?frutas TRUE)
	(progn$ (?varfruita ?respuestaIngredientes)
		(if (eq ?varfruita "Fruta")
			then  (bind ?frutas FALSE)
		)
	)
	(bind ?varias TRUE)
	(if(eq ?respuestaBebida "Una bebida para todo el menú.")
		then (bind ?varias FALSE)
	)
	(bind ?primerPlato (send ?pp get-plato))
	(bind ?segundoPlato (send ?sep get-plato))
	(bind ?postre (send ?po get-plato))
	(bind $?bebidas (create$ ))
	(if (eq ?varias TRUE)
		then (bind ?resV1 (elegir-bebidas-una ?primerPlato ?primerPlato ?primerPlato ?alcohol ?respuestaVino ?frutas ?ninyos))
			(bind ?resV2 (elegir-bebidas-una ?segundoPlato ?segundoPlato ?segundoPlato ?alcohol ?respuestaVino ?frutas ?ninyos))
			(bind ?resV3 "Agua")
			(if (eq ?ninyos TRUE)
				then (if (eq ?frutas TRUE)
						then (bind ?resV3 "Zumo de fruta")
					)
				else (if (eq ?alcohol TRUE)
						then (bind ?resV3 "Champagne")	
					  )
			) 
			(bind ?resV1 (get-bebida-de-nombre ?resV1))
			(bind ?resV2 (get-bebida-de-nombre ?resV2))
			(bind ?resV3 (get-bebida-de-nombre ?resV3))
			(bind $?bebidas (insert$ ?bebidas 1 ?resV3))
			(bind $?bebidas (insert$ ?bebidas 1 ?resV2))
			(bind $?bebidas (insert$ ?bebidas 1 ?resV1))
		else (bind ?res1 (elegir-bebidas-una ?primerPlato ?segundoPlato ?postre ?alcohol ?respuestaVino ?frutas ?ninyos))
			(bind ?res1 (get-bebida-de-nombre ?res1))
			(bind $?bebidas (insert$ ?bebidas 1 ?res1))
	)
	(bind ?meba (make-instance menuB of Menu
			(primer_plato (send ?pp get-plato))
			(segundo_plato (send ?sep get-plato))
			(postre (send ?po get-plato))
			(bebida $?bebidas)
	))
    (assert (Recomendacion_de_Menus
        (menubarato ?meba)
		(menumediano ?meba)
		(menucaro ?meba)
	))
	(assert (platos-baratos-hechos
		(Bool TRUE)
	))
	(send ?pp put-puntuacion -10000)
	(send ?sep put-puntuacion -10000)
	(send ?po put-puntuacion -10000)
)

(defrule getMenuMediano
	(lista-de-platos-por-precio(platos-baratos $?pb)(platos-medianos $?pm))
	?rdm <- (Recomendacion_de_Menus)
	(platos-baratos-hechos)
	(Evento (evento_temporada ?respuestaEstacion)(evento_tipo_personas $?respuestaPersonasEspeciales)(maximo_precio ?respuestaMaxPrecio)(minimo_precio ?respuestaMinPrecio)(numero_bebidaB ?respuestaBebida)(vinoB ?respuestaVino)(ingredientes_prohibidos $?respuestaIngredientes)(estilo_comida_preferente $?respuestaEstiloCocina)(pais_preferente $?respuestaPais)(comida_picanteB ?respuestaPicante)(comida_calienteB ?respuestaCaliente)(comida_friaB ?respuestaFrio))
    =>
    (bind $?tc (create$ ))

    (loop-for-count (?i 1 (length$ $?pb))
        (bind ?curr-pl (nth$ ?i ?pb))
        (bind $?tc (insert$ $?tc (+ (length$ $?tc) 1) ?curr-pl))
    )
    (loop-for-count (?i 1 (length$ $?pm))
        (bind ?curr-pl (nth$ ?i ?pm))
        (bind $?tc (insert$ $?tc (+ (length$ $?tc) 1) ?curr-pl))
    )
    (bind ?pp (max-punts (takePrimerPlato $?tc)))
    
    (bind ?sep (max-punts (takeSegundoPlato (send ?pp get-plato) $?tc)))
    
    (bind ?po (max-punts (takePostre $?tc)))
	(bind ?alcohol TRUE)
	(bind ?ninyos FALSE)
	(progn$ (?varAbs ?respuestaPersonasEspeciales)
		(if(eq ?varAbs "Abstemios del alcohol")
			then (bind ?alcohol FALSE)
			else (if(eq ?varAbs "Infantil") then (bind ?ninyos TRUE))
		)
	)
	(bind ?frutas TRUE)
	(progn$ (?varfruita ?respuestaIngredientes)
		(if (eq ?varfruita "Fruta")
			then  (bind ?frutas FALSE)
		)
	)
	(bind ?varias TRUE)
	(if(eq ?respuestaBebida "Una bebida para todo el menú.")
		then (bind ?varias FALSE)
	)
	(bind ?primerPlato (send ?pp get-plato))
	(bind ?segundoPlato (send ?sep get-plato))
	(bind ?postre (send ?po get-plato))
	(bind $?bebidas (create$ ))
	(if (eq ?varias TRUE)
		then (bind ?resV1 (elegir-bebidas-una ?primerPlato ?primerPlato ?primerPlato ?alcohol ?respuestaVino ?frutas ?ninyos))
			(bind ?resV2 (elegir-bebidas-una ?segundoPlato ?segundoPlato ?segundoPlato ?alcohol ?respuestaVino ?frutas ?ninyos))
			(bind ?resV3 "Agua")
			(if (eq ?ninyos TRUE)
				then (if (eq ?frutas TRUE)
						then (bind ?resV3 "Zumo de fruta")
					)
				else (if (eq ?alcohol TRUE)
						then (bind ?resV3 "Champagne")	
					  )
			) 
			(bind ?resV1 (get-bebida-de-nombre ?resV1))
			(bind ?resV2 (get-bebida-de-nombre ?resV2))
			(bind ?resV3 (get-bebida-de-nombre ?resV3))
			(bind $?bebidas (insert$ ?bebidas 1 ?resV3))
			(bind $?bebidas (insert$ ?bebidas 1 ?resV2))
			(bind $?bebidas (insert$ ?bebidas 1 ?resV1))
		else (bind ?res1 (elegir-bebidas-una ?primerPlato ?segundoPlato ?postre ?alcohol ?respuestaVino ?frutas ?ninyos))
			(bind ?res1 (get-bebida-de-nombre ?res1))
			(bind $?bebidas (insert$ ?bebidas 1 ?res1))
	)
    (bind $?meme (make-instance menuM of Menu
            (primer_plato (send ?pp get-plato))
            (segundo_plato (send ?sep get-plato))
            (postre (send ?po get-plato))
			(bebida $?bebidas)
    ))
	(modify ?rdm (menumediano ?meme))
	(retract 6)
	(assert (platos-medianos-hechos
		(Bool TRUE)
	))
	(send ?pp put-puntuacion -10000)
	(send ?sep put-puntuacion -10000)
	(send ?po put-puntuacion -10000)
)

(defrule getMenuCaro
    (lista-de-platos-por-precio (platos-baratos $?pb) (platos-medianos $?pm) (platos-caros $?pc))
   	?rdm <- (Recomendacion_de_Menus)
	(platos-medianos-hechos)
	(Evento (evento_temporada ?respuestaEstacion)(evento_tipo_personas $?respuestaPersonasEspeciales)(maximo_precio ?respuestaMaxPrecio)(minimo_precio ?respuestaMinPrecio)(numero_bebidaB ?respuestaBebida)(vinoB ?respuestaVino)(ingredientes_prohibidos $?respuestaIngredientes)(estilo_comida_preferente $?respuestaEstiloCocina)(pais_preferente $?respuestaPais)(comida_picanteB ?respuestaPicante)(comida_calienteB ?respuestaCaliente)(comida_friaB ?respuestaFrio))
    =>
    (bind $?tc (create$ ))

    (loop-for-count (?i 1 (length$ $?pb))
        (bind ?curr-pl (nth$ ?i ?pb))
        (bind $?tc (insert$ $?tc (+ (length$ $?tc) 1) ?curr-pl))
    )
    (loop-for-count (?i 1 (length$ $?pm))
        (bind ?curr-pl (nth$ ?i ?pm))
        (bind $?tc (insert$ $?tc (+ (length$ $?tc) 1) ?curr-pl))
    )
    (loop-for-count (?i 1 (length$ $?pc))
        (bind ?curr-pl (nth$ ?i ?pc))
        (bind $?tc (insert$ $?tc (+ (length$ $?tc) 1) ?curr-pl))
    )

    (bind ?pp (max-punts (takePrimerPlato $?tc)))
    
    (bind ?sep (max-punts (takeSegundoPlato (send ?pp get-plato) $?tc)))
    
    (bind ?po (max-punts (takePostre $?tc)))
	(bind ?alcohol TRUE)
	(bind ?ninyos FALSE)
	(progn$ (?varAbs ?respuestaPersonasEspeciales)
		(if(eq ?varAbs "Abstemios del alcohol")
			then (bind ?alcohol FALSE)
			else (if(eq ?varAbs "Infantil") then (bind ?ninyos TRUE))
		)
	)
	(bind ?frutas TRUE)
	(progn$ (?varfruita ?respuestaIngredientes)
		(if (eq ?varfruita "Fruta")
			then  (bind ?frutas FALSE)
		)
	)
	(bind ?varias TRUE)
	(if(eq ?respuestaBebida "Una bebida para todo el menú.")
		then (bind ?varias FALSE)
	)
	(bind ?primerPlato (send ?pp get-plato))
	(bind ?segundoPlato (send ?sep get-plato))
	(bind ?postre (send ?po get-plato))
	(bind $?bebidas (create$ ))
	(if (eq ?varias TRUE)
		then (bind ?resV1 (elegir-bebidas-una ?primerPlato ?primerPlato ?primerPlato ?alcohol ?respuestaVino ?frutas ?ninyos))
			(bind ?resV2 (elegir-bebidas-una ?segundoPlato ?segundoPlato ?segundoPlato ?alcohol ?respuestaVino ?frutas ?ninyos))
			(bind ?resV3 "Agua")
			(if (eq ?ninyos TRUE)
				then (if (eq ?frutas TRUE)
						then (bind ?resV3 "Zumo de fruta")
					)
				else (if (eq ?alcohol TRUE)
						then (bind ?resV3 "Champagne")	
					  )
			) 
			(bind ?resV1 (get-bebida-de-nombre ?resV1))
			(bind ?resV2 (get-bebida-de-nombre ?resV2))
			(bind ?resV3 (get-bebida-de-nombre ?resV3))
			(bind $?bebidas (insert$ ?bebidas 1 ?resV3))
			(bind $?bebidas (insert$ ?bebidas 1 ?resV2))
			(bind $?bebidas (insert$ ?bebidas 1 ?resV1))
		else (bind ?res1 (elegir-bebidas-una ?primerPlato ?segundoPlato ?postre ?alcohol ?respuestaVino ?frutas ?ninyos))
			(bind ?res1 (get-bebida-de-nombre ?res1))
			(bind $?bebidas (insert$ ?bebidas 1 ?res1))
	)
    (bind ?meca (make-instance menuC of Menu
            (primer_plato (send ?pp get-plato))
            (segundo_plato (send ?sep get-plato))
            (postre (send ?po get-plato))
			(bebida $?bebidas)
    ))
	(modify ?rdm (menucaro ?meca))
	(retract 8)
)


(defrule presentar
    (Recomendacion_de_Menus (menubarato ?mb) (menumediano ?mm) (menucaro ?mc))
	(Evento (maximo_precio ?respuestaMaxPrecio)(minimo_precio ?respuestaMinPrecio))
    =>
    (printout t "******************************************" crlf)
    (printout t "*                                        *" crlf)
    (printout t "*   - - M E N U   E C O N O M I C O - -  *" crlf)
    (printout t "*                                        *" crlf)
    (printout t "******************************************" crlf)
    (send ?mb imprimir ?respuestaMinPrecio ?respuestaMaxPrecio)

    (printout t "******************************************" crlf)
    (printout t "*                                        *" crlf)
    (printout t "*      - - M E N U   M E D I O - -       *" crlf)
    (printout t "*                                        *" crlf)
    (printout t "******************************************" crlf)
    (send ?mm imprimir ?respuestaMinPrecio ?respuestaMaxPrecio)

    (printout t "******************************************" crlf)
    (printout t "*                                        *" crlf)
    (printout t "*        - - M E N U   C A R O - -       *" crlf)
    (printout t "*                                        *" crlf)
    (printout t "******************************************" crlf)
    (send ?mc imprimir ?respuestaMinPrecio ?respuestaMaxPrecio)
)
;;;;;DEMASES MENUS
(defmessage-handler MAIN::Menu calcular-precio ()
	(bind ?precio 0)
	(bind ?precio (+ ?precio (send ?self:primer_plato get-precio)))
	(bind ?precio (+ ?precio (send ?self:segundo_plato get-precio)))
	(bind ?precio (+ ?precio (send ?self:postre get-precio)))
	(progn$ (?bebidaN ?self:bebida)
		(bind ?precio (+ ?precio (send ?bebidaN get-precio)))
	)
)

(defmessage-handler MAIN::Menu imprimir (?min ?max)
   (bind ?primero (send ?self:primer_plato get-nombre_del_plato))
   (bind ?segundo (send ?self:segundo_plato get-nombre_del_plato))
   (bind ?postre (send ?self:postre get-nombre_del_plato))
   (printout t "--------------------------------------------------" crlf)
   (printout t "Primer plato: " crlf)
   (format t "     %s" ?primero)
   (printout t crlf)
   (printout t "Segundo plato: " crlf)
   (format t "     %s" ?segundo)
   (printout t crlf)
   (printout t "Postre: " crlf)
   (format t "     %s" ?postre)
   (printout t crlf)
   (printout t "Bebida(s): " crlf)
   (progn$ (?aux $?self:bebida)
   		(format t "     %s" (send ?aux get-bebida))
   		(printout t crlf)
   )
   (bind ?precioFinal (send ?self calcular-precio))
   (send ?self put-precio ?precioFinal)
   (printout t "--------------------------------------------------" crlf)
   (format t "El menú le saldra por un total de: %f" ?precioFinal)
   (printout t crlf)
   (if (or (< ?precioFinal ?min) (> ?precioFinal ?max))
   	then (printout t "El catering Rico Rico le ofrece esta opción, no está ajustada totalmente a sus requisitios, mas es la mejor disponible." crlf)
   )
   (printout t  crlf)  
)


(defmessage-handler MAIN::Plato tienepescadobool ()
	(bind ?resultado FALSE)
	(progn$ (?var ?self:ingredientes_del_plato)
		(bind ?x (send ?var get-ingrediente))
		(if (eq ?x "Pescado") then (bind ?resultado TRUE))
	)
	(progn$ (?var2 ?self:tipo_de_comida)
		(bind ?x (send ?var2 get-tipo))
		(if (eq ?x "Marisco y Pescado") then (bind ?resultado TRUE))
	)
	return ?resultado
)

(defmessage-handler MAIN::Plato tienecarnebool ()
	(bind ?resultado FALSE)
	(progn$ (?var ?self:ingredientes_del_plato)
		(bind ?x (send ?var get-ingrediente))
		(if (or (or (eq ?x "Pato") (eq ?x "Conejo")) (or (eq ?x "Pato") (eq ?x "Conejo"))) then (bind ?resultado TRUE))
	)
	(progn$ (?var2 ?self:tipo_de_comida)
		(bind ?x (send ?var2 get-tipo))
		(if (eq ?x "Carne") then (bind ?resultado TRUE))
	)
	return ?resultado
)

(defmessage-handler MAIN::Plato asignar-puntuacion-plato-comida-pref ($?estilo_comida_preferente)
	(bind ?resultado 0)
	(progn$ (?a ?self:estilo_del_plato)
		(progn$ (?b $?estilo_comida_preferente)
			(if (eq (send ?a get-estilo_cocina) ?b) then 
				(bind ?resultado (+ ?resultado 60))
			)
		)
	)
	return ?resultado
)

(defmessage-handler MAIN::Plato asignar-puntuacion-plato-tipo ($?evento_tipo_personas)
	tipo_de_comida
	(bind ?resultado 0)
	(progn$ (?i ?self:tipo_de_comida)
		(progn$ (?j $?evento_tipo_personas)
			(if(eq (send ?i get-tipo) ?j) then
				(bind ?resultado (+ ?resultado 80))
			)
			(if (eq ?j "Vegetariano")
				then (if (eq (send ?self tienecarnebool) TRUE)
						then (bind ?resultado (- ?resultado 1000))
						else (bind ?resultado (+ ?resultado 500))
					)
			)
		)
	)
	return ?resultado
)

(defmessage-handler MAIN::Plato asignar-puntuacion-plato-ing-proh ($?ingredientes_prohibidos)
	(bind ?resultado 0)
	(progn$ (?i ?self:ingredientes_del_plato)
		(progn$ (?j $?ingredientes_prohibidos)
			(if(eq (send ?i get-ingrediente) ?j) then 
				(bind ?resultado (- ?resultado 1000))
			)
		)
	)
	return ?resultado
)

(defmessage-handler MAIN::Plato asignar-puntuacion-plato-pais-pref ($?pais_preferente)
	(bind ?resultado 0)
	(progn$ (?w $?pais_preferente)
		(if (eq ?w (send ?self:origen_del_plato get-origen)) then
			(bind ?resultado (+ ?resultado 70))
		) 
	)
	return ?resultado
)

(defmessage-handler MAIN::Plato asignar-puntuacion-plato (?evento_temporada ?maximo_precio ?minimo_precio ?comida_picante ?comida_friaB ?comida_calienteB)
	(bind ?resultado 0)
	(progn$ (?temp ?self:temporada_del_plato)
		(if(eq ?evento_temporada (send ?temp get-temporada)) then 
			(bind ?resultado (+ ?resultado 50))
		)
	)
	(progn$ (?temporada ?self:temporada_del_plato)
		(if(eq ?evento_temporada ?temporada) then 
			(bind ?resultado (+ ?resultado 20))
		)
	)
	(if(<= (float ?minimo_precio) ?self:precio) then
		(bind ?resultado (+ ?resultado 5)) 
	)
	(if(> (float ?maximo_precio) ?self:precio) then
		(bind ?resultado (+ ?resultado 10)) 
		else (bind ?resultado (- ?resultado 1000))
	);;<18, >18
	(if(< 8 ?self:precio)
		then(if(< 18 ?self:precio)
				then (bind ?resultado (+ ?resultado 150)) 
				else (bind ?resultado (+ ?resultado 50)) 	
			) 
	)
	(if(eq ?comida_picante TRUE) 
	then 
	 	(if(eq ?self:picante TRUE)
			 then (bind ?resultado (+ ?resultado 10)) 
		)
	else
	 	(if(eq ?self:picante TRUE)
			 then (bind ?resultado (- ?resultado 1000)) 
			 else (bind ?resultado (+ ?resultado 10))
		)
	)
	(if (and (eq ?self:caliente FALSE) (eq ?comida_friaB TRUE))
		then (bind ?resultado (+ ?resultado 30))
	)
	(if (and (eq ?self:caliente TRUE) (eq ?comida_calienteB TRUE))
		then (bind ?resultado (+ ?resultado 30))
	)
	return ?resultado
)

;;; Modulo de presentación del resultado --------------

;;; Fin de la declaracion de reglas y facts -----------
;;; ---------------------------------------------------

