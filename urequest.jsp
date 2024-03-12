<%-- 
    Document   : urequest
    Created on : 8 Mar, 2024, 11:59:31 PM
    Author     : Win11
--%>


<%@page import="dataset.AesEncryption"%>
<%@page import="dataset.AESDecryption"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Date"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <style type="text/css">
<!--
.style12 {
	color: #FFFFFF;
	font-weight: bold;
	font-size: 24px;
	font-style: italic;
}
.style14 {color: #000000}
.style18 {
	color: #336600;
	font-weight: bold;
	font-size: 24px;
}
-->
        </style><script type="text/javascript" src="js/datetimepicker_css.js"></script>
		<script type="text/javascript" src="js/general.js"></script>
  <script language="JavaScript" src="js/security.js"></script>
<link rel="stylesheet" type="text/css" href="style.css" /><link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
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
  font-size: 16px;  
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

.dropdown-content a:hover {
  background-color: #ddd;
}

.dropdown:hover .dropdown-content {
  display: block;
}
</style><link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
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
  font-size: 16px;  
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
.active {
  background-color: red;
  color: white;
}
.dropdown-content a {
  float: none;
  color: black;
  padding: 12px 16px;
  text-decoration: none;
  display: block;
  text-align: left;
}

.dropdown-content a:hover {
  background-color: #ddd;
}

.dropdown:hover .dropdown-content {
  display: block;
}
.style23 {color: #336600; font-weight: bold; font-size: 18px; }
</style>
</head>
    <body bgcolor="#CCCCCC"> <form action="v1" method="post">
	   <%
   String ok="";
      String ok1="";  String ok2="";
   String msg="",msg1="";
      String a1="";
	  String a2="";
	  String a3="";        
   	  String a4=""; 
	  		  String a5="";  
			   String a6=""; 
			   ok=(String)request.getAttribute("ok");
			   ok1=(String)request.getAttribute("ok1");
                              ok2=(String)request.getAttribute("ok2");
     String un="";
       if(ok2!=null)
   {
 
	 msg=(String)request.getAttribute("msg");
   }
   if(ok!=null)
   {
  a1=(String)request.getAttribute("a1");
  a2=(String)request.getAttribute("a2");
    a3=(String)request.getAttribute("a3");
	 a4=(String)request.getAttribute("a4");
	 msg=(String)request.getAttribute("msg");
   }
    if(ok1!=null)
   {
  msg1=(String)request.getAttribute("msg1");
	 a5=(String)request.getAttribute("aa");
	  a6=(String)request.getAttribute("aa1");
   }
    %>
    <table width="966" border="0" align="center" bgcolor="#FFFFFF">
      <tr>
        <td width="960"><table width="960" border="0">
          <tr>
            <td width="954"><table width="950" border="0">
              <tr>
                <td width="292"><img src="image/1_4.jpg" height="131"/></td>
                <td width="648"><div align="center"><span class="style23">A DATA INTEGRITY AND RELIABLE AUTHENTICATION SCHEME FOR STORING AND RETRIEVAL OF SENSITIVE HEALTH CARE RECORDS IN CLOUD</span></div></td>
              </tr>
            </table></td>
          </tr>
          <tr>
            <td><div class="navbar">
  <a href="user.jsp">Home</a>
  <a href="custtest.jsp">Test_Detail</a>
 <a href="cusinform.jsp"><strong>Pharmacy</a>
 <a href="tokenbooking.jsp">Token booking</a>
<a href="ctoken.jsp">Token Confirm </a> 
<a href="urequest.jsp" class="active">Request </a> 
<a href="ucpass.jsp">Password</a>
  <a href="login.jsp">Log_out </a>
 </div></td>
          </tr>
        </table></td>
      </tr>
      <tr>
        <td height="260" background="image/article4.png"><table width="960" border="0">
  <tr>
    <td width="355" height="259">&nbsp;</td>
    <td width="595"><p>&nbsp;</p>
      <p><span class="style12">The clinical summary is a valuable communication tool that supports continuity of patient care by providing relevant and actionable information.</span></p>
      <br><br>
	  <br>
          <p>&nbsp;</p></td>
  </tr>
</table>

      </tr>
      <tr><%
HttpSession so = request.getSession(true);
%>
<td height="282"><p class="style34"></p>
          <table width="966" border="0" align="center">
      <tr>
        <td></td>
      </tr>
      <tr>
        <td width="960" height="114"><table width="931" border="0" align="center">
            <tr>
              <td width="925"><table width="936" height="33" border="0">
                  <tr>
                    <td width="112"><div align="center"><strong>SELECT </strong></div></td>
                    <td width="121"><div align="center"><strong>EID </strong></div></td>
                    <td width="162"><div align="center"><strong>USER ID</strong></div></td>
                    <td width="180"><div align="center"><strong> NAME </strong></div></td>
                    <td width="177"><div align="center"><strong>DESCRIPTION</strong></div></td>
                    <td width="158"><div align="center"><strong>DATE </strong></div></td>
                  </tr>
              </table></td>
            </tr>
            <tr>
              <td><table width="940" height="33" border="0">
                  <% AESDecryption dsc=new AESDecryption();
	try
	{  
            String a11=null;
             	   
 System.out.println(a11);
		int flag=0;
		String url="jdbc:mysql://localhost:3306/phr";
		Class.forName("com.mysql.jdbc.Driver");
		Connection con=DriverManager.getConnection(url,"root","root");
		Statement st=con.createStatement();
		ResultSet rs = st.executeQuery("select * from erequest where status='' ");

    while(rs.next())
		{						
	 %>
                <tr>
                    <td width="115"><div align="center">
                        <input name="b" type="radio" value="<%=rs.getString(1)%>">
                    </div></td>
                  <td width="122"><div align="center"><%=rs.getString(1)%></div></td>
                  <td width="159"><div align="center"><%=rs.getString(2)%></div></td>
                  <td width="180"><div align="center"><%=dsc.toDeycrypt(rs.getString(3))%></div></td>
                  <td width="179"><div align="center"><%=dsc.toDeycrypt(rs.getString(4))%></div></td>
                  <td width="159"><div align="center"><%=rs.getString(5)%></div></td>
                </tr>
                  <%
 
													
													} 
													}
	catch (Exception e) {
		out.println(e);
	}
	%>
              </table></td>
            </tr>
        </table></td>
      </tr>
      <tr>
        <td align="center"><table width="683" border="0" align="center">
            <tr>
              <td width="499">&nbsp;</td>
            </tr>
            <tr align="center">
              <td><label>
                <input type="submit" name="t1" value="Accept">
                &nbsp;&nbsp;&nbsp;&nbsp;
                <input type="submit" name="t2" value="Denied">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
               
              </label></td>
            </tr>
            <tr>
              <td>&nbsp;</td>
            </tr>
          </table>
            <p><%=msg%></p>
          <p>&nbsp;</p></td>
      </tr>
    </table>
          <p>&nbsp;</p></td>
      </tr>
         
    </table>
    
</form>
    </body>
</html>
