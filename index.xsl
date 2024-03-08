<?xml version="1.0" encoding='utf-8'?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:output method="html" doctype-system="about:legacy-compat" encoding="utf-8"/>
<xsl:template match='/club_voleibol'>
<html>
            <!-- Autor: Tamara Cabarcos Marin
			Asignatura: LMGSI
			Unidad: UD04
			Tarea: Tarea evaluativa 2 -->
	<head>
		<link href="./css/estilo.css" rel="stylesheet" type="text/css" />
		<meta charset="utf-8"/>
		<meta name="description" content="Página principal" />
		<title>titulo de la web</title>
	</head>

	<body>
		<header>
			<img src="img/logotipo.png" alt= "Reservas" />
			<a href="web/tienda.html">Tienda</a>
			<a href="web/equipos.html">Equipos</a>
			<a href="web/partidos.html">Partidos</a>
		</header>
		
		<main class="principal">
				<h1>TRABAJANDO CON PLANTILLAS XSLT</h1>
		</main>

		<footer>
			<address>&#169; Desarrollado por info@birt.eus</address>
		</footer>
	</body>
</html>
</xsl:template>
</xsl:stylesheet>