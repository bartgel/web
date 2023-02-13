<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0"
                xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                xmlns:fo="http://www.w3.org/1999/XSL/Format"
                xmlns:fox="http://xmlgraphics.apache.org/fop/extensions">

    <xsl:template name="show-profile-picture">
        <fo:block xsl:use-attribute-sets="left-content" margin-top="1cm"  text-align="center">
            <fo:external-graphic height="150px" width="150px" content-height="150px"
                                 content-width="150px" src="url('src/main/resources/img/logo/profile.png')">
            </fo:external-graphic>
        </fo:block>
    </xsl:template>

    <xsl:template name="show-profile-picture2">
        <fo:block xsl:use-attribute-sets="left-content" margin-top="1cm"  text-align="center">
            <fo:external-graphic height="150px" width="150px" content-height="150px"
                                 content-width="150px" src="url('src/main/resources/img/logo/profile2.png')">
            </fo:external-graphic>
        </fo:block>
    </xsl:template>


    <xsl:template name="show-profile-picture3">
        <fo:block xsl:use-attribute-sets="left-content" margin-top="1cm"  text-align="center">
            <fo:external-graphic height="150px" width="150px" content-height="150px"
                                 content-width="150px" src="url('src/main/resources/img/logo/profile3.png')">
            </fo:external-graphic>
        </fo:block>
    </xsl:template>

    <xsl:template name="show-profile-picture5">
        <fo:block xsl:use-attribute-sets="left-content" margin-top="1cm"  text-align="center">
            <fo:external-graphic height="150px" width="150px" content-height="150px"
                                 content-width="150px" src="url('src/main/resources/img/logo/profile5.png')">
            </fo:external-graphic>
        </fo:block>
    </xsl:template>

    <xsl:template name="show-profile-picture6">
        <fo:block xsl:use-attribute-sets="left-content" margin-top="1cm"  text-align="center">
            <fo:external-graphic height="150px" width="150px" content-height="150px"
                                 content-width="150px" src="url('src/main/resources/img/logo/profile6.png')">
            </fo:external-graphic>
        </fo:block>
    </xsl:template>

    <xsl:template name="show-profile-picture4">
        <fo:block xsl:use-attribute-sets="left-content" margin-top="1cm"  text-align="center">
            <fo:external-graphic height="150px" width="150px" content-height="150px"
                                 content-width="150px" src="url('src/main/resources/img/logo/profile4.png')">
            </fo:external-graphic>
        </fo:block>
    </xsl:template>


    <xsl:template name="show-personal-info">
        <fo:block xsl:use-attribute-sets="left-content-title">
            <xsl:value-of select="cv/translations/personal[@lang=$language]"/>
        </fo:block>

        <fo:block xsl:use-attribute-sets="left-content">
            <fo:instream-foreign-object xmlns:svg="http://www.w3.org/2000/svg">
                <svg:svg xmlns="http://www.w3.org/2000/svg" height="10" viewBox="0 0 24 24" width="10" >
                    <svg:path  d="M0 0h24v24H0z" fill="none"/>
                    <svg:path stroke="white" fill="#5f5fc4" d="M20 4H4c-1.1 0-1.99.9-1.99 2L2 18c0 1.1.9 2 2 2h16c1.1 0 2-.9 2-2V6c0-1.1-.9-2-2-2zm0 14H4V8l8 5 8-5v10zm-8-7L4 6h16l-8 5z"/>
                </svg:svg>
            </fo:instream-foreign-object>&#160;
            <fo:basic-link external-destination="url('mailto:{cv/personal/email}')" text-decoration="underline">
                <xsl:value-of select="cv/personal/email"/>
            </fo:basic-link>
        </fo:block>

        <fo:block xsl:use-attribute-sets="left-content">
            <fo:instream-foreign-object xmlns:svg="http://www.w3.org/2000/svg">
                <svg:svg xmlns="http://www.w3.org/2000/svg" height="10" viewBox="0 0 24 24" width="10">
                    <svg:path d="M0 0h24v24H0z" fill="none"/>
                    <svg:path stroke="white" fill="#5f5fc4" d="M17 1.01L7 1c-1.1 0-1.99.9-1.99 2v18c0 1.1.89 2 1.99 2h10c1.1 0 2-.9 2-2V3c0-1.1-.9-1.99-2-1.99zM17 19H7V5h10v14z"/>
                </svg:svg>
            </fo:instream-foreign-object>&#160;
            <fo:basic-link external-destination="url('tel:{cv/personal/mobile}')" text-decoration="underline">
                <xsl:value-of select="cv/personal/mobile"/>
            </fo:basic-link>
        </fo:block>

        <fo:block xsl:use-attribute-sets="left-content">
            <fo:instream-foreign-object xmlns:svg="http://www.w3.org/2000/svg">
                <svg xmlns="http://www.w3.org/2000/svg" width="10" height="10" viewBox="0 0 24 24">
                    <path fill="white" d="M19 0h-14c-2.761 0-5 2.239-5 5v14c0 2.761 2.239 5 5 5h14c2.762 0 5-2.239 5-5v-14c0-2.761-2.238-5-5-5zm-11 19h-3v-11h3v11zm-1.5-12.268c-.966 0-1.75-.79-1.75-1.764s.784-1.764 1.75-1.764 1.75.79 1.75 1.764-.783 1.764-1.75 1.764zm13.5 12.268h-3v-5.604c0-3.368-4-3.113-4 0v5.604h-3v-11h3v1.765c1.396-2.586 7-2.777 7 2.476v6.759z"/>
                </svg>
            </fo:instream-foreign-object>&#160;
            <fo:basic-link external-destination="url('https://www.linkedin.com/in/bgeluykens/')" text-decoration="underline">linkedin.com/in/bgeluykens
            </fo:basic-link>
        </fo:block>


        <fo:block xsl:use-attribute-sets="left-content">
            <fo:instream-foreign-object xmlns:svg="http://www.w3.org/2000/svg">
                <svg:svg xmlns="http://www.w3.org/2000/svg" height="10" viewBox="0 0 24 24" width="10" >
                    <path stroke="white" fill="#5f5fc4" d="M12 2C8.13 2 5 5.13 5 9c0 5.25 7 13 7 13s7-7.75 7-13c0-3.87-3.13-7-7-7zm0 9.5c-1.38 0-2.5-1.12-2.5-2.5s1.12-2.5 2.5-2.5 2.5 1.12 2.5 2.5-1.12 2.5-2.5 2.5z"/>
                    <path d="M0 0h24v24H0z" fill="none"/>
                </svg:svg>
            </fo:instream-foreign-object>&#160;
            <xsl:value-of select="cv/personal/adress2[@lang=$language]"/>
        </fo:block>


        <fo:block xsl:use-attribute-sets="left-content">
            <fo:instream-foreign-object xmlns:svg="http://www.w3.org/2000/svg">
                <svg:svg xmlns="http://www.w3.org/2000/svg" height="10" viewBox="0 0 24 24" width="10" >

                    <svg:path d="M0 0h24v24H0z"  fill="none"/>
                    <svg:path stroke="white" fill="#5f5fc4" d="M12 6c1.11 0 2-.9 2-2 0-.38-.1-.73-.29-1.03L12 0l-1.71 2.97c-.19.3-.29.65-.29 1.03 0 1.1.9 2 2 2zm4.6 9.99l-1.07-1.07-1.08 1.07c-1.3 1.3-3.58 1.31-4.89 0l-1.07-1.07-1.09 1.07C6.75 16.64 5.88 17 4.96 17c-.73 0-1.4-.23-1.96-.61V21c0 .55.45 1 1 1h16c.55 0 1-.45 1-1v-4.61c-.56.38-1.23.61-1.96.61-.92 0-1.79-.36-2.44-1.01zM18 9h-5V7h-2v2H6c-1.66 0-3 1.34-3 3v1.54c0 1.08.88 1.96 1.96 1.96.52 0 1.02-.2 1.38-.57l2.14-2.13 2.13 2.13c.74.74 2.03.74 2.77 0l2.14-2.13 2.13 2.13c.37.37.86.57 1.38.57 1.08 0 1.96-.88 1.96-1.96V12C21 10.34 19.66 9 18 9z"/>

                </svg:svg>
            </fo:instream-foreign-object>&#160;
            <xsl:value-of select="cv/personal/birth"/>
        </fo:block>

        <fo:block xsl:use-attribute-sets="left-content">
            &#160;&#160;&#160;&#160;&#160;&#160;<xsl:value-of select="cv/personal/birthPlace[@lang=$language]"/>
        </fo:block>

    </xsl:template>
</xsl:stylesheet>