<xsl:stylesheet version="1.0"
                xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                xmlns:fo="http://www.w3.org/1999/XSL/Format"
                xmlns:fox="http://xmlgraphics.apache.org/fop/extensions">
    <xsl:attribute-set name="primary">
        <xsl:attribute name="color"><xsl:value-of select="$primary"/></xsl:attribute>
    </xsl:attribute-set>
    <xsl:attribute-set name="left-region">
        <xsl:attribute name="background-color"><xsl:value-of select="$primary_light"/></xsl:attribute>
        <xsl:attribute name="color">white</xsl:attribute>
    </xsl:attribute-set>
    <xsl:attribute-set name="left-content-title">
        <xsl:attribute name="background-color"><xsl:value-of select="$primary_light"/></xsl:attribute>
        <xsl:attribute name="color">white</xsl:attribute>
        <xsl:attribute name="font-size">20</xsl:attribute>
        <!--xsl:attribute name="text-decoration">underline</xsl:attribute-->
        <xsl:attribute name="margin-left">.2cm</xsl:attribute>
        <xsl:attribute name="margin-right">.1cm</xsl:attribute>
        <xsl:attribute name="margin-top">.5cm</xsl:attribute>
        <xsl:attribute name="margin-bottom">.1cm</xsl:attribute>
    </xsl:attribute-set>
    <xsl:attribute-set name="right-content-title">
        <xsl:attribute name="color"><xsl:value-of select="$primary_light"/></xsl:attribute>
        <xsl:attribute name="font-size">20</xsl:attribute>
        <xsl:attribute name="font-weight">700</xsl:attribute>
        <xsl:attribute name="margin-right">.3cm</xsl:attribute>
        <xsl:attribute name="margin-top">.8cm</xsl:attribute>
        <xsl:attribute name="margin-bottom">.1cm</xsl:attribute>
    </xsl:attribute-set>

    <xsl:attribute-set name="right-content-title-little-margin">
        <xsl:attribute name="color"><xsl:value-of select="$primary_light"/></xsl:attribute>
        <xsl:attribute name="font-size">20</xsl:attribute>
        <xsl:attribute name="font-weight">700</xsl:attribute>
        <xsl:attribute name="margin-right">.3cm</xsl:attribute>
        <xsl:attribute name="margin-top">.1cm</xsl:attribute>
        <xsl:attribute name="margin-bottom">.1cm</xsl:attribute>
    </xsl:attribute-set>

    <xsl:attribute-set name="right-content-subtitle">
        <xsl:attribute name="color"><xsl:value-of select="$primary_light"/></xsl:attribute>
        <xsl:attribute name="font-size">8</xsl:attribute>
        <xsl:attribute name="font-weight">700</xsl:attribute>
        <xsl:attribute name="margin-right">.3cm</xsl:attribute>
        <xsl:attribute name="margin-top">.2cm</xsl:attribute>
        <xsl:attribute name="margin-bottom">.1cm</xsl:attribute>
    </xsl:attribute-set>

    <xsl:attribute-set name="skill-text">
        <xsl:attribute name="font-size">8</xsl:attribute>
    </xsl:attribute-set>



    <xsl:attribute-set name="left-content">
        <xsl:attribute name="color">white</xsl:attribute>
        <xsl:attribute name="margin-left">.2cm</xsl:attribute>
        <xsl:attribute name="margin-right">.1cm</xsl:attribute>
    </xsl:attribute-set>
    <xsl:attribute-set name="text-with-light-background">
        <xsl:attribute name="background-color"><xsl:value-of select="$primary_background"/></xsl:attribute>
        <xsl:attribute name="color">black</xsl:attribute>
        <xsl:attribute name="font-size">9</xsl:attribute>
        <xsl:attribute name="margin-left">.2cm</xsl:attribute>
        <xsl:attribute name="margin-right">.1cm</xsl:attribute>
        <xsl:attribute name="padding-top">.2cm</xsl:attribute>

    </xsl:attribute-set>

    <xsl:attribute-set name="job-splitter">
        <xsl:attribute name="padding-top">.2cm</xsl:attribute>
        <xsl:attribute name="padding-bottom">.1cm</xsl:attribute>
    </xsl:attribute-set>

    <xsl:attribute-set name="job-splitter-line">
        <xsl:attribute name="padding-bottom">.05cm</xsl:attribute>
        <xsl:attribute name="background-color"><xsl:value-of select="$primary_light"/></xsl:attribute>
    </xsl:attribute-set>


    <xsl:attribute-set name="job-primary-no-border">
        <xsl:attribute name="margin-top">0cm</xsl:attribute>
        <xsl:attribute name="color"><xsl:value-of select="$primary"/></xsl:attribute>
        <xsl:attribute name="font-size">9</xsl:attribute>
    </xsl:attribute-set>

    <xsl:attribute-set name="job-primary">
        <xsl:attribute name="margin-top">.2cm</xsl:attribute>
        <xsl:attribute name="color"><xsl:value-of select="$primary"/></xsl:attribute>
        <xsl:attribute name="font-size">9</xsl:attribute>
    </xsl:attribute-set>

    <xsl:attribute-set name="job-paragraph">
        <xsl:attribute name="font-size">9</xsl:attribute>
        <xsl:attribute name="margin-left">.1cm</xsl:attribute>
    </xsl:attribute-set>
    <xsl:attribute-set name="job-paragraph-skill-header">
        <xsl:attribute name="font-weight">700</xsl:attribute>
    </xsl:attribute-set>



</xsl:stylesheet>