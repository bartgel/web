<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0"
                xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                xmlns:fo="http://www.w3.org/1999/XSL/Format"
                xmlns:fox="http://xmlgraphics.apache.org/fop/extensions">

    <xsl:template name="show-side-languages">
        <fo:block xsl:use-attribute-sets="left-content-title">
            <xsl:value-of select="cv/translations/languages[@lang=$language]"/>
        </fo:block>

        <xsl:for-each select="cv/languages/language">
            <fo:block xsl:use-attribute-sets="left-content">
                <xsl:value-of select="name[@lang=$language]"/>&#160;
                (<xsl:value-of select="niveau"/>)
            </fo:block>
        </xsl:for-each>
    </xsl:template>
</xsl:stylesheet>