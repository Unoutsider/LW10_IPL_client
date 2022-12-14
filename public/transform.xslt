<?xml version="1.0" encoding="ISO-8859-1"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  <xsl:template match="/">
    <html>
      <head>
        <style>
          .table {
          	border: none;
          	margin-bottom: 20px;
          	border-collapse: separate;
          }
          .table thead th {
          	font-weight: bold;
          	text-align: left;
          	border: none;
          	padding: 10px 15px;
          	background: #EDEDED;
          	font-size: 14px;
          	border-top: 1px solid #ddd;
          }
          .table tr th:first-child, .table tr td:first-child {
          	border-left: 1px solid #ddd;
          }
          .table tr th:last-child, .table tr td:last-child {
          	border-right: 1px solid #ddd;
          }
          .table thead tr th:first-child {
          	border-radius: 20px 0 0 0;
          }
          .table thead tr th:last-child {
          	border-radius: 0 20px 0 0;
          }
          .table tbody td {
          	text-align: left;
          	border: none;
          	padding: 10px 15px;
          	font-size: 14px;
          	vertical-align: top;
          }
          .table tbody tr:nth-child(even) {
          	background: #F8F8F8;
          }
          .table tbody tr:last-child td{
          	border-bottom: 1px solid #ddd;
          }
          .table tbody tr:last-child td:first-child {
          	border-radius: 0 0 0 20px;
          }
          .table tbody tr:last-child td:last-child {
          	border-radius: 0 0 20px 0;
          }
        </style>
      </head>
      <body>
        <h2>Result</h2>
        <table class = "table">
          <thead>
          <tr>
            <th>Sequence</th>
            <th>SubSequences</th>
            <th>MaxSequence</th>
          </tr>
        </thead>
          <xsl:for-each select="hash">
            <tbody>
            <tr>
              <td><xsl:value-of select="seq"/></td>
              <td><xsl:value-of select="subseq"/></td>
              <td><xsl:value-of select="maxseq"/></td>
            </tr>
          </tbody>
          </xsl:for-each>
        </table>
      </body>
    </html>
  </xsl:template>
</xsl:stylesheet>
