<xsl:stylesheet version="2.0"
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xs="http://www.w3.org/2001/XMLSchema"
    exclude-result-prefixes="xs">
    
    <xsl:template match="/">
        <html>
            <head>
                <link href="/elements/favicon-apple-touch-icon.png" sizes="180x180" rel="apple-touch-icon">
                <link sizes="32x32" href="/elements/favicon-32x32.png" type="image/png" rel="icon">
                <link sizes="16x16" href="/elements/favicon-16x16.png" type="image/png" rel="icon">
                <link color="#0198b5" href="/elements/favicon-safari-pinned-tab.svg" rel="mask-icon">
                <meta content="#ffffff" name="theme-color">
                <meta content="Portail insoumis" name="apple-mobile-web-app-title">
                <meta content="Portail insoumis" name="application-name">
                <meta charset="utf-8">
                <link href="/includes/manifest.json" rel="manifest">
                <meta content="Portail insoumis" property="og:title">
                <meta content="website" property="og:type">
                <meta content="https://checklist.insoumis.online/" property="og:url">
                <meta content="http://checklist.insoumis.online/elements/open-graph.jpg" property="og:image">
                <title>Checklist du militant Insoumis</title>
                <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous" />
                <style type="text/css">
                    input[type="range"] {
                      width: 15em;
                    }
                    
                    ol.actions li div {
                      display: table-cell;
                      vertical-align: middle;
                    }
                </style>
            </head>
            <body>
                <div class="container">
                    
                <h1>Check-list du militant insoumis</h1>
                
                <xsl:for-each select="/categories/categorie">
                    <h2><xsl:value-of select="./@nom" /></h2>
                    <ol class="actions">
                        <xsl:for-each select="./action">
                            <li>
                                <div>
                                    <input type="checkbox" /> <span class="action"><xsl:copy-of select="." /></span>
                                    <xsl:if test="./@progression">
                                        <input type="range" value="0" max="{./@progression}" min="0" step="1" />
                                    </xsl:if>
                                </div>
                            </li>
                        </xsl:for-each>
                    </ol>
                </xsl:for-each>
                
                </div>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>
