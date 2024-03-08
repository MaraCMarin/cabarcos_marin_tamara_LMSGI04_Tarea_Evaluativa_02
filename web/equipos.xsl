<?xml version="1.0" encoding='utf-8'?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:output method="html" doctype-system="about:legacy-compat" encoding="utf-8"/>
<xsl:template match='/'>
<html>
            <!-- Autor: Tamara Cabarcos Marin
			Asignatura: LMGSI
			Unidad: UD04
			Tarea: Tarea evaluativa 2 -->
	<head>
		<link href="../css/estilo.css" rel="stylesheet" type="text/css" />
		<meta name="description" content="Página principal" />
		<title>titulo de la web</title>
	</head>
	<body>
		<header>
			<img src= "../img/logotipo.png" alt= "Reservas" />
			<a href="tienda.xml">Tienda</a>
			<a href="equipos.xml">Equipos</a>
			<a href="partidos.xml">Partidos</a>
		</header>
		
		<main class="principal">
				<!-- Aquí selecciono al entrenador -->
				<a href="{club_voleibol/equipo[@categoria='Primera']/entrenador/url}" target="_blank">
				<h1><xsl:apply-templates select="/club_voleibol/equipo[@categoria='Primera']/entrenador/nombre"/></h1>
				</a>
				<!-- Aquí selecciono los que quiero filtrar -->
				<xsl:for-each select="club_voleibol/equipo/jugadores/jugador[@titular='si']">
					<p class="equipos"><xsl:value-of select="../../nombre"/>,<xsl:value-of select="nombre"/>,
					<xsl:value-of select="@camiseta"/></p>
				</xsl:for-each>
		</main>
		<footer>
			<address>&#169; Desarrollado por info@birt.eus</address>
		</footer>
	</body>
</html>
</xsl:template>
</xsl:stylesheet>