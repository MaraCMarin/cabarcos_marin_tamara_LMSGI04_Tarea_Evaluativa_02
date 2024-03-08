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
                <!-- Aquí creo la tabla para lo que nos pide -->
                <main class="principal">
                    <table>
                        <tr><th>PARTIDO</th><th>FECHA</th><th>RESULTADO</th></tr>
                        <xsl:apply-templates select="partido/lugar[@ciudad='Lima']"/>
                    </table>
                </main>
                
                <footer>
                    <address>&#169; Desarrollado por info@birt.eus</address>
                </footer>
            </body>
        </html>
    </xsl:template>
    <!-- Le indico que datos obtener -->
    <xsl:template match="lugar[@ciudad='Lima']">
        <tr>
            <td><xsl:value-of select="."/></td>
            <td><xsl:value-of select="../fecha"/></td>
            <td>
                <xsl:value-of select="../equipos/local/@puntuacion"/>
                <xsl:text> - </xsl:text>
                <xsl:value-of select="../equipos/visitante/@puntuacion"/>
            </td>       
        </tr>
    </xsl:template>
</xsl:stylesheet>