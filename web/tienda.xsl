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
                    <img src="../img/logotipo.png" alt="Reservas" />
                    <a href="tienda.xml">Tienda</a>
                    <a href="equipos.xml">Equipos</a>
                    <a href="partidos.xml">Partidos</a>
                </header>
                <main class="principal">
                    <!-- Apply-templates para darle formato -->
                    <xsl:apply-templates select="//articulo"/>
                </main>

                <footer>
                    <address>&#169; Desarrollado por info@birt.eus</address>
                </footer>
            </body>
        </html>
    </xsl:template>
					<!-- Aquí le damos forma a la clase articulo -->
    <xsl:template match="articulo">
        <section class="articulo">
            <h1><xsl:value-of select="precio"/></h1>
            <p>Nombre: <xsl:value-of select="nombre"/><img src="{./@foto}"/></p>
            <p>Comentarios: <xsl:value-of select="count(comentarios)"/>,<xsl:value-of select="comentarios" /></p>
        </section>
    </xsl:template>
</xsl:stylesheet>
