<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xs="http://www.w3.org/2001/XMLSchema"
    exclude-result-prefixes="xs"
    version="2.0">
    <xsl:output method="html" encoding="utf-8" indent="yes" />
    <xsl:key name="names" match="//*" use="local-name(.)"/>
    
    <xsl:template match="@*|node()">
        <xsl:copy>
            <xsl:apply-templates select="@*|node()"/>
        </xsl:copy>
    </xsl:template>
  <xsl:template match="/">
      
      <html lang="en">
          <head>
              <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
              <title>Interface de visualisation</title>
              <meta name="generator" content="Bootply"/>
              <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1"/>
              <script src="../js/jquery-1.11.3.min.js"></script>
              <link href="../css/bootstrap.min.css" rel="stylesheet"/>
              <link href="../css/styles.css" rel="stylesheet"/>
          </head>
          <body>
              <header class="navbar navbar-default navbar-static-top" role="banner">
                  <div class="container">
                      <div class="navbar-header"><button class="navbar-toggle" type="button" data-toggle="collapse" data-target=".navbar-collapse"><span class="sr-only">Toggle navigation</span><span class="icon-bar"></span><span class="icon-bar"></span><span class="icon-bar"></span></button><a href="/" class="navbar-brand">Interface de Visualisation</a></div>
                  </div>
              </header>
              <div class="container">
                  <div class="row">
                      <div class="col-md-3" id="leftCol">
                          <div class="well">
      <xsl:for-each select="//*[generate-id(.) = generate-id(key('names', local-name(.)))]">
      <xsl:variable name="annotationName">
          <xsl:value-of select="local-name()"/></xsl:variable>
      <input type="checkbox" name="vehicle" value="{$annotationName}"/>
      <span class="{$annotationName}" >
      <xsl:value-of select="$annotationName"/>
      </span>
      <br/>
      </xsl:for-each>
      
                          </div>
                      </div>
                      <div class="col-md-9">
      <xsl:apply-templates/>
                      </div>
                  </div>
              </div>
              <script src="../js/bootstrap.min.js"></script>
              <script src="../js/scripts.js"></script>
              <script src="../js/please.js"></script>
    <script>
            $( "input:checkbox" ).change(function() {
                if(this.checked){
                $("."+this.value).css('background-color', Please.make_color());
                }else{
                  $("."+this.value).css("background-color", "");
                }
               
            });
    </script>
          </body>
      </html>
      
  </xsl:template>
    <xsl:template match="//node()[name()!= '']">
        <xsl:variable name="nom">
            <xsl:value-of select="name(.)"/>
        </xsl:variable>
        <xsl:if test="name(.) = 'paragraph'">
        <xsl:element name="p">
            <xsl:attribute name="class"><xsl:value-of select="$nom"/></xsl:attribute>
            <xsl:apply-templates/>
        </xsl:element>
        </xsl:if>
        <xsl:if test="name(.) != 'paragraph'">
            <xsl:element name="span">
            <xsl:attribute name="class"><xsl:value-of select="$nom"/></xsl:attribute>
            <xsl:apply-templates/>
        </xsl:element>
        </xsl:if>
        
       
    </xsl:template>

                            
</xsl:stylesheet>
