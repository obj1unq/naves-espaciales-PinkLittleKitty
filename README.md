# Naves Espaciales

En un futuro distante, donde las actividades se desarrollan en un ambiente interplanetario, nos piden construir un sistema que modele distintas naves y su comportamiento ante una amenaza.
Las naves

De las naves conocemos su velocidad, medida en kms/seg; y, por ahora, nos pidieron modelar los siguientes tipos:

(esta parte ya está resuelta en el repositorio que se provee, ir leyendo enunciado y código)

    Naves de carga: nos interesa saber la masa de la carga que está transportando, medida en kg. Se desea saber si la nave está sobrecargada, que sucede cuando su carga excede 100 toneladas; y si está excedida de velocidad. Sabemos de este tipo de naves que están excedidas de velocidad cuando viajan a más de 100.000 kms/seg. Cuando estas naves reciben una amenaza se deshacen de toda su carga, dejándola vacía.
    Naves de pasajeros: lleva consigo una determinada cantidad de pasajeros + 4 personas destinadas a ser personal de la nave. Cuando estas naves reciben una amenaza simplemente activan su alarma en caso de emergencia. Se desea conocer la velocidad máxima legal a la que puede viajar, que es de 300.000 kms/seg dividido la cantidad de personas dentro de la nave (pasajeros + personal de la nave), además se descuenta 200 kms/seg más si hay más de 100 pasajeros, por cuestiones de seguridad. Y saber si la nave está en peligro, que sucede cuando va más rápido que su velocidad máxima legal o la alarma en caso de emergencia está encendida.
    Naves de combate: pueden emitir mensajes y tiene 2 modos: en reposo o ataque. Su mejor característica es que pueden estar invisibles para los enemigos, lo que ocurre si viajan a menos de 10.000 kms/seg en modo reposo, o si no tienen las armas desplegadas cuando están en modo ataque. Al recibir una amenaza, si está en reposo emite el mensaje "¡RETIRADA!" y en modo ataque emite el mensaje "Enemigo encontrado" y despliega sus armas.

Extendiendo el dominio

Nos piden extender el sistema anterior para agregar nuevas funcionalidades.

    Hacer que todas las naves se puedan propulsar, esto aumenta su velocidad en 20.000 kms/seg, pero nunca puede superar los 300.000 kms/seg, siendo este su máximo alcanzable.

Testear que una nave de carga sin velocidad al propulsarse queda con una velocidad de 20.000 kms/seg. Y que una nave de pasajeros que viaja a 290.000 kms/seg al propulsarse queda viajando a 300.000 kms/seg.

    Aparecen un nuevo tipo de nave, las de carga de residuos radiactivos. Estas son como cualquier nave de carga común, solo que pueden sellarse al vacío para evitar desparramar residuos radioactivos por todo el espacio. Por esto mismo, al recibir una amenaza no deben liberar su carga, sino que frenan (reduciendo su velocidad a 0) dispuestos a entregar la nave.

Construir una nave que transporta 5.000 kg de residuos radiactivos sellados al vacío a 10.000 kms/seg y testear que al recibir una amenaza frenan pero su carga sigue siendo la misma.

    Hacer que todas las naves se puedan preparar para viajar. Esto hace que aumenten su velocidad 15.000 kms/seg (teniendo la restricción de la velocidad máxima posible de 300.000kms/s). Además de eso,

    las naves que cargan residuos radiactivos se cierran al vacío.
    y las de combate, si se encuentran en modo ataque emiten el mensaje "Volviendo a la base", mientras que si están en reposo emiten el mensaje "Saliendo en misión" y se ponen en modo ataque.

Testear que:

    Una nave de pasajeros que viaja a 290.000 kms/seg al prepararse para viajar queda con velocidad de 300.000 kms/seg.
    Una nave de residuos radiactivos sin velocidad y que no está sellada al prepararse para viajar queda con velocidad de 15.000 kms/seg y sellada al vacío.
    Una nave de combate en modo ataque sin velocidad al prepararse para viajar emite el mensaje "Volviendo a la base" y queda con velocidad de 15.000 kms/seg
    Una nave de combate en modo reposo sin velocidad al prepararse para viajar emite el mensaje "Saliendo en misión", queda en modo ataque y con velocidad de 15.000 kms/seg

    Hacer que una nave se encuentre con un enemigo. Esto les hace recibir una amenaza, sufriendo los efectos particulares de cada nave, y luego se propulsan para intentar escapar.

Testear que una nave de pasajeros sin velocidad al encontrarse con un enemigo queda con velocidad de 20.000 kms/seg y su alarma en caso de emergencia activada.

Para pensar: ¿Hace falta testear más casos?

