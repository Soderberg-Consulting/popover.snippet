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
	
	<xsl:template match="table[@class='popover']" mode="copy">
		<a 
		   href="javascript:void(0)" 
		   data-toggle="popover" 
		   data-trigger="focus" 
		   data-placement="{tbody/tr/td/select/@name}" 
		   data-content="{tbody/tr/td[@class='popover-content']}"
		   data-original-title="{tbody/tr/td[@class='popover-header']}" 
		>
			<xsl:value-of select="tbody/tr/td[@class='popover-link']"/>
		</a>
		<script>$(function(){$('[data-toggle="popover"]').popover()})</script>
	</xsl:template>
	
	<!-- ========== END POPOVER ========== -->

</xsl:stylesheet>
