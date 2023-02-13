<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0"
                xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                xmlns:fo="http://www.w3.org/1999/XSL/Format"
                xmlns:fox="http://xmlgraphics.apache.org/fop/extensions">

    <xsl:template name="show-basic-header">
        <fo:block font-weight="bold" font-size="30px" margin-top=".5cm">
            <fo:inline xsl:use-attribute-sets="primary"><xsl:value-of select="cv/personal/lastname"/></fo:inline>
            &#160;<xsl:value-of select="cv/personal/firstname"/>
        </fo:block>
        <fo:block font-weight="bold" font-size="24px">
        <xsl:value-of select="cv/jobs/job[1]/title[@lang=$language]"/>
    </fo:block>
    </xsl:template>

</xsl:stylesheet>