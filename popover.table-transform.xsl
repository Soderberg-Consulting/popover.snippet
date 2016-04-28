<?xml version="1.0" encoding="utf-8"?>
<!DOCTYPE xsl:stylesheet>

<xsl:stylesheet version="3.0" 
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xs="http://www.w3.org/2001/XMLSchema"
    xmlns:ou="http://omniupdate.com/XSL/Variables"
    xmlns:fn="http://omniupdate.com/XSL/Functions"
    xmlns:ouc="http://omniupdate.com/XSL/Variables"
    exclude-result-prefixes="ou xsl xs fn ouc">

        <!-- ========== START POPOVER ========== -->

        <!-- escape popover-content html tags and attributes using html entities -->
        <xsl:template match="tbody/tr/td[@class='popover-content']//*">

                <!-- loop through all attributes and construct key:value pairs -->
                <xsl:variable name="tagAttributes">
                        <xsl:for-each select="@*">
                                <xsl:value-of select="local-name()"/>=&quot;<xsl:value-of select="."/>&quot;
                        </xsl:for-each>
                </xsl:variable>

                <!-- escape opening tag -->
                <xsl:choose>

                        <!-- if attributes exist, then include $tagAttributes -->
                        <xsl:when test="$tagAttributes != ''">
                                <xsl:copy-of select="concat('&lt;',name(),' ',$tagAttributes,'&gt;')"/>
                        </xsl:when>

                        <!-- else, just escape opening tag -->
                        <xsl:otherwise>
                                <xsl:copy-of select="concat('&lt;',name(),'&gt;')"/>
                        </xsl:otherwise>

                </xsl:choose>

                <xsl:apply-templates/>

                <!-- escape closing tag -->
                <xsl:copy-of select="concat('&lt;/',name(),'&gt;')"/>

        </xsl:template>

        <!-- generate popover html -->
        <xsl:template match="table[@class='popover']" mode="copy">

                <!-- link for the popover -->
                <a 
                   href="javascript:void(0)" 
                   data-toggle="popover" 
                   data-trigger="focus" 
                   data-placement="{tbody/tr/td/select/@name}" 
                   data-original-title="{tbody/tr/td[@class='popover-header']}" 
                >

                        <!-- create data-content attribute with nested html tags -->
                        <xsl:attribute name="data-content">
                                <xsl:apply-templates select="tbody/tr/td[@class='popover-content']"/>
                        </xsl:attribute>

                        <!-- text of the popover link -->
                        <xsl:value-of select="tbody/tr/td[@class='popover-link']"/>

                </a>

                <!-- activate the popover -->
                <script>$(function(){$('[data-toggle="popover"]').popover({html:true})})</script>

        </xsl:template>

        <!-- ========== END POPOVER ========== -->

</xsl:stylesheet>
