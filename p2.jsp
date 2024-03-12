<%-- 
    Document   : p2
    Created on : Feb 15, 2022, 1:50:12 PM
    Author     : windows
--%>
<%@page import="dataset.AESDecryption"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title><script type="text/javascript" src="js/general.js"></script>
  <script language="JavaScript" src="js/security.js"></script><link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<style>
body {
  font-family: Arial, Helvetica, sans-serif;
}

.navbar {
  overflow: hidden;

  background-color: #333;
}

.navbar a {
  float: left;
  font-size: 16px;
  color: white;
  text-align: center;
  padding: 14px 16px;
  text-decoration: none;
}

.dropdown {
  float: left;
  overflow: hidden;
}

.dropdown .dropbtn {
  font-size: 18px;  
  font-weight: bold;
  border: none;
  outline: none;
  color: white;
  padding: 14px 16px;
  background-color: inherit;
  font-family: inherit;
  margin: 0;
}

.navbar a:hover, .dropdown:hover .dropbtn {
  background-color: red;
}

.dropdown-content {
  display: none;
  position: absolute;
  background-color: #f9f9f9;
  min-width: 160px;
  box-shadow: 0px 8px 16px 0px rgba(0,0,0,0.2);
  z-index: 1;
}

.dropdown-content a {
  float: none;
  color: black;
  padding: 12px 16px;
  text-decoration: none;
  display: block;
  text-align: left;
}
.active {
  background-color: red;
  color: white;
}
.dropdown-content a:hover {
  background-color: #ddd;
}

.dropdown:hover .dropdown-content {
  display: block;
}
</style>
<link rel="stylesheet" type="text/css" href="style.css" />        <style type="text/css">
<!--
.style10 {color: #FFFFFF; font-weight: bold; font-size: 18px; }
.style12 {
	color: #FFFFFF;
	font-weight: bold;
	font-size:18px;
	font-style: italic;
}
.style18 {
	color: #336600;
	font-weight: bold;
	font-size: 24px;
}
.style20 {font-size: 12}
.style21 {
	font-size: 14px;
	color: #000000;
}
.style22 {font-size: 14; }
.style23 {color: #000000}
.style24 {color: #336600; font-weight: bold; font-size: 18px; }
-->
        </style>
</head>
    <body bgcolor="#CCCCCC"><form action="" method="post">
    <table width="966" border="0" align="center" bgcolor="#FFFFFF">
      <tr>
        <td width="960"><table width="960" border="0">
          <tr>
            <td width="954"><table width="950" border="0">
              <tr>
                <td width="224"><img src="image/1_4.jpg" height="131"/></td>
                <td width="716" align="center"><span class="style24">A DATA INTEGRITY AND RELIABLE AUTHENTICATION SCHEME FOR STORING AND RETRIEVAL OF SENSITIVE HEALTH CARE RECORDS IN CLOUD </span></td>
              </tr>
            </table></td>
          </tr>
          <tr>
            <td><div class="navbar">
  <a href="p1.jsp"  class="active">Home</a>
 <a href="p2.jsp">Patient Details</a>
 <a href="login5.jsp">Log_out</a>
</div></td>
          </tr>
        </table></td>
      </tr>
      <tr>
        <td height="260" background="image/article5.png"><table width="960" border="0">
  <tr>
    <td width="356" height="248">&nbsp;</td>
    <td width="596"><p>&nbsp;</p>
      <p><span class="style12">The clinical summary is a valuable communication tool that supports continuity of patient care by providing relevant and actionable information.</span></p>
      <br><br>
	  <br>
          <p> <span class="style10">Success Stories | Mankarious</span></p></td>
  </tr>
</table>
</td>
      </tr>
      <tr>
        <td height="376"  align="center"><table width="957" border="0">
          <tr>
            <td width="947" height="43" align="center">Pharmacy Details </td>
          </tr>
          <tr>
            <td height="328"><table width="889" border="0" align="center">
  <tr>
    <td width="883" height="28" align="center"><span class="style20 style23"><strong>
      <table width="365" height="95" border="0" cellpadding="1" cellspacing="1" align="center">
              
              	   
          <tr>
            <td width="106"><strong>Token ID </strong></td>
            <td width="252">
              
              <label>
              <input type="text" name="a1" id="a1" class="displayValue" maxlength="10"  style="width:180px"  onChange="return val_zero('a1','err_a1');" 
											onblur="return val_mobile('a1','err_a1');" />
                &nbsp;&nbsp;&nbsp;<span id="err_a1"></span>  
              </label></td>
      
          </tr>
         
                     
          <tr>
            <td>&nbsp;</td>
            <td><strong>
              <label></label>
            </strong></td></tr>
              <tr>
                <td height="37"><span class="style20">&nbsp;</span></td>
                <td><strong>
                   <input type="submit" name="View" value="Search" class="buttons" onClick="return validatePage('a1','err_a1','Should Not Be Blank');"  /> 
                  <input type="submit" name="Submit4" value="Cancel" id="label4" />
                </strong></td>
                </tr>
            </table></strong></span></td>
  </tr>
  <tr>
    <td height="110"><%if(request.getParameter("a1")!=null){%><table width="883" border="0" align="center">
              <tr>
                <td width="877"><table width="878" height="43" border="3" >
   <tr>
      <td width="62" height="33" class="style20" ><div align="center" class="style3 style20 style23"><strong>TId</strong></div></td>
      <td width="81" class="style20"><div align="center" class="style3 style20 style23"><strong>User Id </strong></div></td>
 
	  <td width="139" class="style20"><div align="center" class="style3 style20 style23"><strong>Prescription</strong></div></td>
      <td width="115" class="style20"><div align="center" class="style3 style20 style23"><strong>No of Tablet</strong></div></td>
	    <td width="109" class="style20"><div align="center" class="style3 style20 style23"><strong>Morning</strong></div></td>
      <td width="110" class="style20"><div align="center" class="style3 style20 style23"><strong>Afternoon</strong></div></td>
       <td width="109" class="style20"><div align="center" class="style3 style20 style23"><strong>Evening</strong></div></td>
      <td width="97" class="style20"><div align="center" class="style21 style3 style20"><strong>Night</strong></div></td>
    </tr>
	
	</table></td>
              </tr>
              <tr>
                <td><table width="874" border="1"  align=center>

    <% int index=0;
	try
	{   
AESDecryption dec=new AESDecryption();
            String a11=null;
             	   HttpSession so = request.getSession(true);
 System.out.println(a11);
		int flag=0;
		 String url = "jdbc:mysql://localhost:3306/phr";
            Class.forName("com.mysql.jdbc.Driver");
            Connection con = DriverManager.getConnection(url, "root", "root");
		Statement st=con.createStatement();
                System.out.println("select * from dpharmacy   where tid='"+request.getParameter("a1")+"'");
		ResultSet rs = st.executeQuery("select * from dpharmacy  where tid='"+request.getParameter("a1")+"'");
		if(rs!=null)
			{%>
   
    <% while(rs.next())
		{						
	 %>
	
    <tr>
      <td width="57" >   
        
              <div align="center" class="style22">
              <%=rs.getString(1)%>               </div></td>
      <td width="79"><div align="center" class="style22"><%=rs.getString(4)%></div></td>
     
    <td width="143"><div align="center" class="style22"><%=dec.toDeycrypt(rs.getString(8))%></div></td>
      <td width="123"><div align="center" class="style22"><%=dec.toDeycrypt(rs.getString(9))%></div></td>
	         <td width="105"><div align="center" class="style22"><%=dec.toDeycrypt(rs.getString(10))%></div></td>
      <td width="112"><div align="center" class="style22"><%=dec.toDeycrypt(rs.getString(11))%></div></td>
        <td width="104"><div align="center" class="style22"><%=dec.toDeycrypt(rs.getString(12))%></div></td>
      <td width="99"><div align="center" class="style22"><%=dec.toDeycrypt(rs.getString(13))%></div></td>
    <%
  index++;
													}
													} else 
													{
													%>
    No items found....!
    <%
													}
													}
	catch (Exception e) {
		out.println(e);
	}
	%><%
	String flag=(String)request.getAttribute("ss");
   String msg="";
		if(flag!=null)
	{
		msg=(String)request.getAttribute("msg");
		
	}
%>
  </table></td>
              </tr>
            </table><%}%></td>
  </tr>
</table></td>
          </tr>
        </table></td>
      </tr>
          <tr>
        <td>&nbsp;</td>
      </tr>
    </table>
    
</form>
    </body>
</html>