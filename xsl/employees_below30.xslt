<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output method="html" indent="yes"/>
    <!-- Template to display the details of employees aged below 30 yrs -->
     <xsl:template match="employees">
        <html>
            <head>
                <title>ADSE Employee Details</title>
                <!-- link to the external employee CSS -->
                <link rel="stylesheet" type="text/css" href="employee.css"/>
            </head>
            <body>
                <h1 class="page-heading"><span class="page-heading-underline">ADSE 2501 Employee Aged Below 30 Years</span></h1>
                <!-- Use a table to display the employee details -->
                 <table class="data-table" border="1">
                    <tr>
                        <th>name</th>
                        <th>age</th>
                        <th>language</th>
                        <th>Department</th>
                        <th>Salary</th>
                    </tr>
                    <xsl:for-each select="employee">
                        <xsl:if test="age &lt; 30">
                        <tr>
                            <td>
                             <!--get the employee's name  -->
                                <xsl:value-of select="name"/>
                            </td>
                            <td>
                             <!--get the employee's age  -->
                             
                                <xsl:value-of select="age"/>
                             
                            </td>
                            <td>
                                <!-- get employee's department -->
                                 <xsl:value-of select="department"/>
                            </td>
                            <td>
                                <!-- get employee's language -->
                                 <xsl:value-of select="language"/>
                            </td>
                            <td>
                                <!-- get employee's salary -->
                                 <xsl:value-of select="salary"/>
                            </td>
                        </tr>  
                        </xsl:if>
                    </xsl:for-each>
                 </table>
            </body>
        </html>
     </xsl:template>
</xsl:stylesheet>