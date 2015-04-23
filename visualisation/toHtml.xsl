<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xs="http://www.w3.org/2001/XMLSchema"
    exclude-result-prefixes="xs"
    version="2.0">
<xsl:output method="html" encoding="utf-8" indent="yes" />
    <!-- template racine -->
    <xsl:template match="/">
            <head>
		<title>Annotation Thématique</title>
                <link rel="stylesheet" type="text/css" href="main.css" />
            </head>
            <body>
                <h1>Visualisation des résultats d'annotation</h1>
               
                <div id="visualisation"><xsl:apply-templates select="//paragraph" /></div>
                <div id="annotationSet">
                    <ul>    
                        <xsl:if test="count(//Collections) &gt;0">
                        <li id="collections">Collections</li>
                        </xsl:if>
                        <xsl:if test="count(//CollectionsDetails) &gt;0">
                        <li id="collectionsDetails">CollectionsDetails</li>
                        </xsl:if>
                        <xsl:if test="count(//Legende) &gt;0">
                        <li id="legende">Legende</li>
                        </xsl:if>
                        <xsl:if test="count(//NatureMonnaie) &gt;0">
                        <li id="natureMonnaie">NatureMonnaie</li>
                        </xsl:if>
                        <xsl:if test="count(//Periode) &gt;0">
                        <li id="periode">Periode</li>
                        </xsl:if>
                        <xsl:if test="count(//PeriodeEmission) &gt;0">
                        <li id="periodeEmission">PeriodeEmission</li>
                        </xsl:if>     
                        <xsl:if test="count(//Tresors) &gt; 0">
                        <li id="tresors">Tresors</li>
                        </xsl:if>
                        <xsl:if test="count(//TresorsDetails) &gt; 0">
                        <li id="tresorsDetails">TresorsDetails</li>
                        </xsl:if>
                        <xsl:if test="count(//Trouvailles) &gt; 0">
                        <li id="trouvailles">Trouvailles</li>
                        </xsl:if>
                        <xsl:if test="count(//TrouvaillesDetails) &gt; 0">
                        <li>Trouvailles</li>
                        </xsl:if>
                    </ul>
                </div>
            </body>
    </xsl:template>
    <!-- template paragraph -->
    <xsl:template match="paragraph">
        <p><xsl:apply-templates /></p>
    </xsl:template>
    
    <!-- template collection -->
    <xsl:template match="Collections">
        <strong id="collections"><xsl:apply-templates /></strong>
    </xsl:template>
    
    <!-- template collection details -->
    <xsl:template match="CollectionsDetails">
        <strong id="collectionDetails"><xsl:apply-templates /></strong>
    </xsl:template>
    
    <!-- template legende -->
    <xsl:template match="Legende">
        <strong id="legende"><xsl:apply-templates /></strong>
    </xsl:template>
    
    <!-- template nature monnaie -->
    <xsl:template match="NatureMonnaie">
        <strong id="natureMonnaie"><xsl:apply-templates /></strong>
    </xsl:template>

    <!-- template periode -->
    <xsl:template match="Periode">
        <strong id="periode"><xsl:apply-templates /></strong>
    </xsl:template>
    
    <!-- template periode emission -->
    <xsl:template match="PeriodeEmission">
        <strong id="periodeEmission"><xsl:apply-templates /></strong>
    </xsl:template>
   
    <!-- template tresors --> 
    <xsl:template match="Tresors">
        <strong id="tresors"><xsl:apply-templates /></strong>
    </xsl:template>
    
    <!-- template tresors details --> 
    <xsl:template match="TresorsDetails">
        <strong id="tresors"><xsl:apply-templates /></strong>
    </xsl:template>

    <!-- template trouvailles -->
    <xsl:template match="Trouvailles">
        <strong id="trouvailles"><xsl:apply-templates /></strong>
    </xsl:template>
 
    <!-- template trouvailles details-->
    <xsl:template match="TrouvaillesDetails">
        <strong id="trouvaillesDetails"><xsl:apply-templates /></strong>
    </xsl:template>
</xsl:stylesheet>
