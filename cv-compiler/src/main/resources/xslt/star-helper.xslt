<xsl:stylesheet version="1.0"
                xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                xmlns:fo="http://www.w3.org/1999/XSL/Format"
                xmlns:fox="http://xmlgraphics.apache.org/fop/extensions">

    <xsl:template name="show-black-star">
        <fo:instream-foreign-object xmlns:svg="http://www.w3.org/2000/svg">
            <svg xmlns="http://www.w3.org/2000/svg" height="10" viewBox="0 0 20 20" width="10">
                <path d="M0 0h24v24H0z" fill="none"/>
                <path d="M12 17.27L18.18 21l-1.64-7.03L22 9.24l-7.19-.61L12 2 9.19 8.63 2 9.24l5.46 4.73L5.82 21z"/>
            </svg>
        </fo:instream-foreign-object>
    </xsl:template>

    <xsl:template name="show-white-star">
        <fo:instream-foreign-object xmlns:svg="http://www.w3.org/2000/svg">
            <svg xmlns="http://www.w3.org/2000/svg" height="10" viewBox="0 0 20 20" width="10">
                <path d="M0 0h24v24H0z" fill="none"/>
                <path fill="white" d="M12 17.27L18.18 21l-1.64-7.03L22 9.24l-7.19-.61L12 2 9.19 8.63 2 9.24l5.46 4.73L5.82 21z"/>
             </svg>
        </fo:instream-foreign-object>
    </xsl:template>

</xsl:stylesheet>