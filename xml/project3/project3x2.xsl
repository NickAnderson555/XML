<?xml version="1.0" ?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:output method="text"/>
<xsl:variable name='newline'><xsl:text>
</xsl:text></xsl:variable>
<xsl:template match="exchanges">
	<xsl:for-each select="exchange">
		<xsl:value-of select="format-number(substring(@exID,2), '00000000')"/>
		<xsl:value-of select="substring(concat(name/lastName, '                    '), 1, 20)"/>
		<xsl:value-of select="substring(concat(name/firstName, '               '), 1, 15)"/>
		<xsl:value-of select="substring(concat(name/initial, ' '), 1, 1)"/>
		<xsl:value-of select="substring(concat(address/street, '                         '), 1, 25)"/>
		<xsl:value-of select="substring(concat(address/apartment, '            '), 1, 12)"/>
		<xsl:value-of select="substring(concat(address/city, '                                   '), 1, 35)"/>
		<xsl:value-of select="substring(concat(address/state, '               '), 1, 15)"/>
		<xsl:value-of select="substring(concat(address/zip, '          '), 1, 10)"/>
		<xsl:value-of select="substring(concat(addres/countryA, '                              '), 1, 30)"/>
		<xsl:value-of select="substring(concat(translate(telephone, '()- ', ''), '          '), 1, 10)"/>
		<xsl:value-of select="substring(concat(email, '                              '), 1, 30)"/>
		<xsl:value-of select="concat(format-number(appDate/month, '00'), format-number(appDate/day, '00'), appDate/year)"/>
		<xsl:value-of select="concat(format-number(availDate/month, '00'), format-number(availDate/day, '00'), availDate/year)"/>
	<xsl:choose>
			<xsl:when test="@role='T'">
				<xsl:text>00000000</xsl:text>
			</xsl:when>
			<xsl:otherwise>
				<xsl:value-of select="concat(format-number(dob/month, '00'), format-number(dob/day, '00'), dob/year)"/>
			</xsl:otherwise>
	</xsl:choose>
		<xsl:value-of select="substring(concat(birthCountry, '                              '), 1, 30)"/>
	<xsl:choose>
			<xsl:when test="@role='T'">
				<xsl:text>00</xsl:text>
			</xsl:when>
			<xsl:otherwise>		
		<xsl:value-of select="age"/>
			</xsl:otherwise>
	</xsl:choose>			
		<xsl:value-of select="gender"/>
		<xsl:value-of select="substring(concat(school, '                                   '), 1, 35)"/>
		<xsl:value-of select="substring(concat(yearInSchool, '         '), 1, 9)"/>
		<xsl:value-of select="substring(concat(translate(telephoneEmergency, '()- ', ''), '          '), 1, 10)"/>
		<xsl:value-of select="format-number(feePaid, '000000.00')"/>
		<xsl:value-of select="feePaid/@currency"/>
		<xsl:value-of select="substring(concat(nameMother/lastName, ', ', nameMother/firstName, ', ', nameMother/initial, '                              '), 1, 30)"/>
		<xsl:value-of select="substring(concat(nameFather/lastName, ', ', nameFather/firstName, ', ', nameFather/initial, '                              '), 1, 30)"/>
		<xsl:value-of select="$newline"/>
</xsl:for-each>
</xsl:template>

</xsl:stylesheet>