<%-- 
    Document   : epharmarcy
    Created on : 8 Mar, 2024, 10:56:02 PM
    Author     : Win11
--%>

<%@page import="dataset.AESDecryption"%>
<%@page import="java.util.Arrays"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Date"%>
<%@page import="java.lang.String"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" import="block.Block"%>
<%@ page language="java" import="block.Transaction"%>
<%@page import="java.io.FileReader"%>
<%@page import="java.io.BufferedReader"%>
<%@page import="java.io.File"%>
<%@page import="java.util.ArrayList"%>
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
.style13 {
	color: #000000;
	font-weight: bold;
}
.style14 {color: #000000}
.style17 {
	color: #339966;
	font-size: 18px;
	font-weight: bold;
}
.style18 {
	color: #336600;
	font-weight: bold;
	font-size: 24px;
}
.style23 {color: #336600; font-weight: bold; font-size: 18px; }
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
                <td width="233"><img src="image/1_4.jpg" height="131"/></td>
                <td width="707" align="center"><span class="style23">A DATA INTEGRITY AND RELIABLE AUTHENTICATION SCHEME FOR STORING AND RETRIEVAL OF SENSITIVE HEALTH CARE RECORDS IN CLOUD</span></td>
              </tr>
            </table></td>
          </tr>
          <tr>
            <td><div class="navbar">
  <a href="emergency.jsp"  class="active">Home</a>
   <div class="dropdown">
    <button class="dropbtn" disabled="true">Patient Request
      <i class="fa fa-caret-down"></i>
    </button>
    <div class="dropdown-content">
    <a href="erequest.jsp">Emergency Request</a>
   <a href="estatus.jsp">Request Status</a>
   
    </div>
  </div> 
 
  <div class="dropdown">
    <button class="dropbtn" disabled="true">Patient Details
      <i class="fa fa-caret-down"></i>
    </button>
    <div class="dropdown-content">
     <a href="epharmacy.jsp">Pharmacy Information</a>
     <a href="etest.jsp">Test Information</a>
      
    </div>
  </div>   
  <a href="login.jsp">Log_out</a>
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
        <td height="376"  align="center"><table width="933" border="0" align="center">
                      <tr>
                        <td width="927"><table align="center" width="297" height="83" border="0" cellpadding="1" cellspacing="1">
          <tr>
            <td height="111"><table width="297" height="95" border="0" cellpadding="1" cellspacing="1" align="center">
              
              	   
          <tr>
            <td width="139"><strong>USER ID </strong></td>
            <td width="267"><strong>
              <label></label>
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
            </table></td>
          </tr>
        </table><table width="927" border="0">
                      <tr>
                        <td width="921"><%if(request.getParameter("View")!=null){%> <% int index=0;
	try
	{  
       
	  HttpSession so = request.getSession(true);

               String a11=request.getParameter("a1");
           String url = "jdbc:mysql://localhost:3306/phr";
            Class.forName("com.mysql.jdbc.Driver");
            Connection con = DriverManager.getConnection(url, "root", "root");
		Statement st=con.createStatement();Statement smt = con.createStatement();
            Statement smt1 = con.createStatement();
            Statement smt2 = con.createStatement();
            Statement smt3 = con.createStatement();
            Statement smt4 = con.createStatement();
            Statement smt5 = con.createStatement();
            Statement smt6 = con.createStatement();
            Statement smt7 = con.createStatement();
            Statement smt8 = con.createStatement();
            Statement smt9 = con.createStatement();
              String f11="",f12="";
               String r1="",r2="",r3="",r4="",r5="";
                  Date date = new Date();
SimpleDateFormat sdf;
 SimpleDateFormat sdf1;
sdf1 = new SimpleDateFormat("yyyy-M-dd");
sdf = new SimpleDateFormat("yyyy-M-dd hh:mm:ss");
 f11=sdf.format(date);
 f12=sdf1.format(date);
   int vv=0,vv1=0,flag=0,f=0;
   
              AESDecryption dsc=new AESDecryption();
                                String st1="",st2="";
                       
		ResultSet rs = st.executeQuery("select * from dpharmacy where uid=(select userid from erequest where userid='"+a11+"')");
		if(rs!=null){
			 
                                 
    %>
   
   
                            <table width="883" border="0" align="center">
              <tr>
                <td width="877"><table width="877" height="43" border="3" >
   <tr>
      <td width="59" height="33" ><div align="center" class="style21 style3 style14"><strong>TId</strong></div></td>
      <td width="96"><div align="center" class="style21 style3 style14"><strong>User Id </strong></div></td>
      <td width="134"><div align="center" class="style21 style3 style14"><strong> Name </strong></div></td>
	  <td width="92"><div align="center" class="style21 style3 style14"><strong>Reason</strong></div></td>
      <td width="107"><div align="center" class="style21 style3 style14"><strong>Subdate</strong></div></td>
	    <td width="144"><div align="center" class="style21 style3 style14"><strong>Specialist</strong></div></td>
      <td width="195"><div align="center" class="style21 style3 style14"><strong>Confirm</strong></div></td>
    </tr>
	
	</table></td>
              </tr>
              <tr>
                <td><table width="875" border="1"  align=center>

   
	 <%  
                                       
			
                              
                                       
                                        while(rs.next())
		{st1=rs.getString(4);
                            st2=rs.getString(5);
                         
                        
          

          
                                
                                
						
	 %>
    <tr>
      <td width="59" >   
        
              <div align="center">
              <%=rs.getString(1)%>
               </div></td>
               <td width="99"><div align="center"><%=dsc.toDeycrypt(rs.getString(5))%></div></td>
               <td width="133"><div align="center"><%=dsc.toDeycrypt(rs.getString(6))%></div></td>
        <td width="93"><div align="center"><%=dsc.toDeycrypt(rs.getString(8))%></div></td>
      <td width="102"><div align="center"><%=dsc.toDeycrypt(rs.getString(7))%></div></td>
	         <td width="150"><div align="center"><%=dsc.toDeycrypt(rs.getString(9))%></div></td>
      <td width="193"><div align="center"><%=dsc.toDeycrypt(rs.getString(10))%></div></td>
    <%
  												
                }									%>
    No items found....!
    <%
													
                    
        }}
	catch (Exception e) {
		out.println(e);
	}
	%>
    </table></td>
              </tr>
            </table>
			<%}%>
			
			
			</td>
                      </tr>
                      <tr>
                        <td></td>
                      </tr>
                    </table></td>
                      </tr>
                      <tr>
                        <td></td>
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