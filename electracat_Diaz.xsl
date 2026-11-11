<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    
    <xsl:output method="html" encoding="UTF-8"/>
    <xsl:template match="/">
        <html>
            <head>
                <meta charset="UTF-8"/>
                <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
                <meta name="author" content="Andres Diaz for bewsystems by anondiaz" />
                <meta name="description" content="Xarxa de punts de recàrrega per a vehicles elèctrics" />
                <meta name="keywords" content="ElectraCat, punts de recàrrega, vehicles elèctrics" />
                <title>ElectraCat - Xarxa de Recàrrega</title>
                <link rel="stylesheet" href="CSS/styles.css" />
            </head>
            <body>
                <header>
                    <div class="contenidor capcalera">
                        <img src="imatges/logoIoc.jpg" alt="Logotip de l'IOC"/>
                        <h1>ElectraCat - Xarxa de Recàrrega</h1>
                    </div>
                </header>
                <nav>
                    <ul class="contenidor">
                        <li><a href="index.html">Portada</a></li>
                        <li><a href="electracat_Diaz.xml">Punts de recàrrega XSL</a></li>
                        <li><a href="fitxes.html">Fitxes</a></li>
                    </ul>
                </nav>
                <main class="contenidor">
                    <section>
                        <h2>Llistat de punts de recàrrega</h2>
                        <div class="taula-contenidor">
                            <table>
                                <thead>
                                    <tr>
                                        <th scope="col">ID</th>
                                        <th scope="col">Responsable</th>
                                        <th scope="col">Codi operador</th>
                                        <th scope="col">Tipus</th>
                                        <th scope="col">Nom</th>
                                        <th scope="col">Ubicació</th>
                                        <th scope="col">Data</th>
                                        <th scope="col">Places</th>
                                        <th scope="col">Disponibles</th>
                                        <th scope="col">Destacat</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <xsl:apply-templates select="puntsRecarrega/puntRecarrega"/>
                                </tbody>
                            </table>
                        </div>
                    </section>
                    <p class="tornar-portada">
    <a href="index.html">← Tornar a la portada</a>
</p>
                </main>
                <footer>
                    <p>Andres Diaz · DAW · M0373 Llenguatges de marques · 2026/27 S1</p>
                </footer>
            </body>
        </html>
    </xsl:template>
    <xsl:template match="puntRecarrega">
                    <tr>
                        <xsl:if test="@DESTACAT = 'sí'">
                            <xsl:attribute name="class">destacat</xsl:attribute>
                        </xsl:if>
                        <td><xsl:value-of select="@id"/></td>
                        <td><xsl:value-of select="RESPONSABLE"/></td>
                        <td><xsl:value-of select="CODI_OPERADOR"/></td>
                        <td><xsl:value-of select="TIPUS"/></td>
                        <td><xsl:value-of select="NOM"/></td>
                        <td><xsl:value-of select="UBICACIO"/></td>
                        <td><xsl:value-of select="DATA"/></td>
                        <td><xsl:value-of select="PLACES"/></td>
                        <td><xsl:value-of select="DISPONIBLES"/></td>
                        <td><xsl:value-of select="@DESTACAT"/></td>
                    </tr>
    </xsl:template>

</xsl:stylesheet>