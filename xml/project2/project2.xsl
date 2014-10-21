<?xml version="1.0" ?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:template match="/">
<html>
<head>
	<title>Project 2</title>
    <link href="project2.css" rel="stylesheet" type="text/css" />
</head>

<body>

	<p class="title">Exchange Information</p>
	<xsl:apply-templates select="exchanges/exchange[@role='S']">
		<xsl:sort select="name/lastName" order="ascending"/>
		<xsl:sort select="name/firstName" order="ascending"/>
		<xsl:sort select="name/initial" order="ascending"/>
	</xsl:apply-templates>	

</body>
</html>
</xsl:template>

<xsl:template match="exchanges/exchange">
	<table>
		<tr id="first">
			<td class="caption">
				Exchange Type:
			</td>
			<td>
				<xsl:value-of select="@role"/>
			</td>
			<td class="caption">
				Reference Number:
			</td>
			<td>
				<xsl:value-of select="@exID"/>
			</td>
		</tr>	
		<tr id="second">
			<td>
				Name (First, Middle, Last):	
			</td>
			<td>
				<xsl:value-of select="name/firstName"/>
			</td>
			<td>
				<xsl:value-of select="name/initial"/>
			</td>
			<td>
				<xsl:value-of select="name/lastName"/>
			</td>
		</tr>
		<tr>
			<td class="address">
				Street, Apartment:
			</td>
			<td>
				<xsl:value-of select="address/street"/>
			</td>
		</tr>
		<tr>
			<td class="address">
				City, State, Zip:
			</td>
			<td>
				<xsl:value-of select="address/city"/>
			</td>
			<td>
			<xsl:choose>
					<xsl:when test="address/state">
						<xsl:value-of select="address/state"/>
					</xsl:when>
					<xsl:otherwise>
						<xsl:value-of select="address/province"/>
					</xsl:otherwise>
				</xsl:choose>	
			</td>
			<td>
			<xsl:choose>
					<xsl:when test="address/zip">
						<xsl:value-of select="address/zip"/>
					</xsl:when>
					<xsl:otherwise>
						<xsl:value-of select="address/postalCode"/>
					</xsl:otherwise>
				</xsl:choose>	
			</td>			
		</tr>		
		<tr>
			<td class="address">
				Country:
			</td>
			<td>
				<xsl:value-of select="address/countryA"/>
			</td>
		</tr>
		<tr>
			<td class="address">
				Telephone:
			</td>
			<td>
				<xsl:value-of select="telephone"/>
			</td>
		</tr>
		<tr>
			<td class="address">
				Email Address:
			</td>
			<td>
				<xsl:value-of select="email"/>
			</td>
		</tr>
		<tr>
			<td colspan="4">
				<hr />
			</td>
		</tr>
		<tr>
			<td>
				Application Date <em>(mm dd yyyy):</em>
			</td>
			<td>
				<xsl:value-of select="appDate"/>
			</td>
			<td>
				Available Date <em>(mm dd yyyy):</em>
			</td>
			<td>
				<xsl:value-of select="availDate"/>
			</td>
		</tr>
		<tr>
			<td>
				Birth Country:
			</td>
			<td>
				<xsl:value-of select="birthCountry"/>
			</td>
			<td>
				Birth Date <em>(mm dd yyyy):</em>
			</td>
			<td>
				<xsl:value-of select="dob"/>
			</td>
		</tr>
		<tr>
			<td>
				Age:
			</td>
			<td>
				<xsl:value-of select="age"/>
			</td>
			<td>
				Gender:
			</td>
			<td>
				<xsl:value-of select="gender"/>
			</td>
		</tr>
		<tr>
			<td colspan="4">
				<hr />
			</td>
		</tr>
		<tr>
			<td>
				School Name:
			</td>
		    <td>
		    	<xsl:value-of select="school"/>
		    </td>
		</tr>	
		<tr>
			<td>
				School Address:
			</td>
		    <td>
		    	<xsl:value-of select="schoolAddress/street"/>
		    </td>
		</tr>
		<tr>
			<td>
				City, State, Zip:
			</td>
		    <td>
		    	<xsl:value-of select="schoolAddress/city"/>
		    </td>
		    <td>
			<xsl:choose>
					<xsl:when test="schoolAddress/state">
						<xsl:value-of select="schoolAddress/state"/>
					</xsl:when>
					<xsl:otherwise>
						<xsl:value-of select="schoolAddress/province"/>
					</xsl:otherwise>
				</xsl:choose>		    	
		    </td>
		    <td>
			<xsl:choose>
					<xsl:when test="schoolAddress/zip">
						<xsl:value-of select="schoolAddress/zip"/>
					</xsl:when>
					<xsl:otherwise>
						<xsl:value-of select="schoolAddress/postalCode"/>
					</xsl:otherwise>
				</xsl:choose>		    	
		    </td>
		</tr>
		<tr>
			<td>
				Year in School:
			</td>
		    <td>
		    	<xsl:value-of select="yearInSchool"/>
		    </td>
		</tr>
		<tr>
			<td colspan="4">
				<hr />
			</td>
		</tr>
		<tr>
			<td>
				Mother's Name (Last, First, Middle):
			</td>
			<td>
				<xsl:value-of select="nameMother/lastName"/>				
			</td>
			<td>
				<xsl:value-of select="nameMother/firstName"/>
			</td>
			<td>
				<xsl:value-of select="nameMother/initial"/>
			</td>
		</tr>	
		<tr>
			<td>
				Father's Name (Last, First, Middle):
			</td>
			<td>
				<xsl:value-of select="nameFather/lastName"/>
			</td>
			<td>
				<xsl:value-of select="nameFather/firstName"/>
			</td>
			<td>
				<xsl:value-of select="nameFather/initial"/>
			</td>
		</tr>
		<tr>
			<td>
				Emergency Telephone:
			</td>
			<td>
				<xsl:value-of select="telephoneEmergency"/>
			</td>
		</tr>
		<tr>
			<td>
				Fee Paid:
			</td>
			<td>
				<xsl:value-of select="feePaid"/>
			</td>
			<td>
				Currency:
			</td>
			<td>
				<xsl:value-of select="feePaid/@currency"/>
			</td>
		</tr>	
		<tr>
			<td>
				Essay:
			</td>
			<td colspan="3">
				<xsl:value-of select="essay"/>
			</td>
		</tr>
		<tr>
			<td colspan="4">
				<hr />
			</td>	
		</tr>
	<xsl:for-each select="languages/language">
		<xsl:sort select="@fluency" data-type="number" order="descending"/>
		<tr>
			<td>
				Fluency (1=none, 4=fluent):
			</td>
			<td>
				<xsl:value-of select="@fluency"/>
			</td>
			<td>
				Language:
			</td>
			<td>
				<xsl:value-of select="."/>
			</td>
		</tr>			
	</xsl:for-each>		
		<tr>
			<td colspan="4">
				<hr />
			</td>		
		</tr>	
	<xsl:for-each select="countryChoices/country">
		<xsl:sort select="@preference" data-type="number" order="ascending"/>
		<tr>
			<td>
				Priority (1=high, 5=low):
			</td>
			<td>
				<xsl:value-of select="@preference"/>
			</td>
			<td>
				Country Choice:
			</td>
			<td>
				<xsl:value-of select="."/>
			</td>
		</tr>	
	</xsl:for-each>															
	</table>
</xsl:template>
</xsl:stylesheet>