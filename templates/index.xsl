<xsl:stylesheet version="2.0"
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xs="http://www.w3.org/2001/XMLSchema"
    exclude-result-prefixes="xs">
    
    <xsl:template match="/">
        <html>
            <head>
                <title>Liste</title>
                <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous" />
                <style type="text/css">
                    input[type="range"] {
                        width: 15em;
                    }
                </style>
            </head>
            <body>
                <div class="container">
                <h1>Check-list du militant insoumis</h1>

                <xsl:for-each select="/categories/categorie">
                    <h2><xsl:value-of select="./@nom" /></h2>
                    <ul>
                        <xsl:for-each select="./action">
                            <li>
                                <input type="checkbox" /> <xsl:copy-of select="." />
                                <xsl:if test="./@progression">
                                    <input type="range" value="0" max="{./@progression}" min="0" step="1" />
                                </xsl:if>
                            </li>
                        </xsl:for-each>
                    </ul>
                </xsl:for-each>        
                </div>

            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>
