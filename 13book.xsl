<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
    <xsl:output method="html"/>
    <xsl:template match="/">
        <html>
            <head>
                <title>book</title>
                
                <style>
                     table,th,td{
                        border:2px solid black;
                        text-align:center;
                        border-collapse:collapse;
                        padding:2px;
                       background-color:#ccffff;
                    }
                    .odd{
                     background-color:#00cccc;
                    }
                    th{
                     background-color:#cc0099;
                    }
                    
                    
                </style>
            </head>
            <body>
                <h1>BOOK DETAILS</h1>
                <table border="1">
                    <tr>
                        <th>BOOK ID</th>
                        <th>NAME</th>
                        <th>AUTHOR</th>
                        <th>PRICE</th>
                        <th>YEAR</th>
                    </tr>
                    
                        <xsl:for-each select="books/book">
                            <tr>  
                                <td class="odd">
                                    <xsl:value-of select="bookid"/> 
                                </td>
                            
                                <td style="text-align:left;" >
                                    <xsl:value-of select="bname"/> 
                                </td>
                           
                                <td style="text-align:left;" class="odd">
                                    <xsl:value-of select="author"/> 
                                </td>
                                <td >
                                    <xsl:value-of select="price"/> 
                                </td>
                              
                                <td class="odd">
                                    <xsl:value-of select="year"/> 
                                </td>
                            </tr>
                           
                        </xsl:for-each>
                   
                </table>
            </body>
        </html>
    </xsl:template>

</xsl:stylesheet>
