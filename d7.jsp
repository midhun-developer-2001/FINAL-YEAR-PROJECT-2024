<%-- 
    Document   : d8
    Created on : Mar 20, 2022, 3:43:24 PM
    Author     : windows
--%>

<%@page import="dataset.AESDecryption"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Date"%>
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
            <td width="954"><table width="956" border="0">
              <tr>
                <td width="255"><img src="image/1_4.jpg" height="131"/></td>
                <td width="691" align="center"><span class="style23">A DATA INTEGRITY AND RELIABLE AUTHENTICATION SCHEME FOR STORING AND RETRIEVAL OF SENSITIVE HEALTH CARE RECORDS IN CLOUD </span></td>
              </tr>
            </table></td>
          </tr>
          <tr>
            <td><div class="navbar">
  <a href="admin.jsp"  class="active">Home</a>
   <div class="dropdown">
    <button class="dropbtn" disabled="true">Patient Details
      <i class="fa fa-caret-down"></i>
    </button>
    <div class="dropdown-content">
    <a href="patientinform.jsp">Patient Details</a>
   <a href="atest.jsp">Patient Test Details</a>
   <a href="apharmacy.jsp">Patient Pharmacy Details</a>
    </div>
  </div> 
 
  <div class="dropdown">
    <button class="dropbtn" disabled="true">Master Screen 
      <i class="fa fa-caret-down"></i>
    </button>
    <div class="dropdown-content">
     <a href="pharmacydescribtion.jsp">Add Pharmacy Information</a>
     <a href="testprescribed.jsp">Add Test Information</a>
      
    </div>
  </div>   <div class="dropdown">
    <button class="dropbtn" disabled="true">Registration<i class="fa fa-caret-down"></i>
    </button>
    <div class="dropdown-content">
	<a href="hospital.jsp">Hospital Register</a>
      <a href="dregister.jsp">Doctor Register</a>
      <a href="lregister.jsp">Worker Register</a>
   
    </div>
	
  </div>   <div class="dropdown">
    <button class="dropbtn" input type="hidden">Disease</button>
    <div class="dropdown-content">
      <a href="d4.jsp">Generalization</a>
	  <a href="d5.jsp">Bucketization</a>
	   <a href="d6.jsp">Slicing</a>
	    <a href="d7.jsp">K-Anonymity</a>
		
    </div>
	
  </div><a href="login.jsp">Log_out</a>
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
        <td height="376"  align="center"><table width="921" border="1" align="center">
          <tr>
            <td width="915" height="23">M-ADVERSITY
              <table width="904" border="1" align="center">
              <tr>
                <td width="892"><table width="904" height="22" border="0" align="center"> 
                  <tr>
                  
                    <td width="168" align="center">AGE</td>
                    <td width="252" align="center">SEX</td>
                    <td width="236" align="center">ZIPCODE</td>
                     <td width="230" align="center">DISEASE</td>

                  </tr>
                </table></td>
              </tr>
              <tr>
                <td><table width="902" border="0"><% int index=0;
	try
	{  
           
	

               String a11=request.getParameter("a1");
               String url="jdbc:mysql://localhost:3306/phr";
		Class.forName("com.mysql.jdbc.Driver");
		Connection con=DriverManager.getConnection(url,"root","root");
		Statement st=con.createStatement();	Statement st1=con.createStatement();Statement st2=con.createStatement();
                int v1=st2.executeUpdate("truncate  pro1");
		ResultSet rs = st.executeQuery("select id , IF(REPLACE(age, 'F', '')<54, '20-60', '20-60') AS AGE  ,RPAD(RPAD(sex,0,'*'),1,'*') AS SEX,RPAD(RPAD(zipcode,0,'*'),5,'*') AS ZIPCODE,disease AS DISEASE from microdata WHERE AGE<30 order by age , zipcode asc");
		if(rs!=null)
			{
                            while(rs.next())
		{		
		int v=st1.executeUpdate("insert into pro1 values ('"+rs.getString(1)+"','"+rs.getString(2)+"','"+rs.getString(3)+"','"+rs.getString(4)+"','"+rs.getString(5)+"')");
	 %>
                  <tr>
                    <td width="46" align="center"> <%=rs.getString(2)%></td>
                    <td width="67" align="center"> <%=rs.getString(3)%></td>
                    <td width="60" align="center"> <%=rs.getString(4)%></td>
                        <td width="60" align="center"> <%=rs.getString(5)%></td>
                
                  </tr> <%
 
													}} else 
													{
													%>
    No items found....!
    <%
													}
														ResultSet rs1 = st.executeQuery("select id , IF(REPLACE(age, 'F', '')<54, '20-60', '20-60') AS AGE  ,RPAD(RPAD(sex,0,'*'),1,'*') AS SEX,RPAD(RPAD(zipcode,4,'*'),5,'*') AS ZIPCODE,disease AS DISEASE from microdata WHERE AGE BETWEEN 30 AND 54 order by age , zipcode asc");
		if(rs1!=null)
			{
   
    while(rs1.next())
		{
                    int v=st1.executeUpdate("insert into pro1 values ('"+rs1.getString(1)+"','"+rs1.getString(2)+"','"+rs1.getString(3)+"','"+rs1.getString(4)+"','"+rs1.getString(5)+"')");
	 %>
                 <tr>
                    <td width="46" align="center"> <%=rs1.getString(2)%></td>
                    <td width="67" align="center"> <%=rs1.getString(3)%></td>
                    <td width="60" align="center"> <%=rs1.getString(4)%></td>
                        <td width="60" align="center"> <%=rs1.getString(5)%></td>
                
                  </tr> <%}
    } else 
													{
													%>
    No items found....!
    <%
													}
    	ResultSet rs2 = st.executeQuery("select id , IF(REPLACE(age, 'F', '')<54, '20-60', '20-60') AS AGE  ,RPAD(RPAD(sex,0,'*'),1,'*') AS SEX,RPAD(RPAD(zipcode,3,'*'),5,'*') AS ZIPCODE,disease AS DISEASE from microdata WHERE AGE BETWEEN 55 AND 70 order by age , zipcode asc");
		if(rs2!=null)
			{
   
    while(rs2.next())
		{
                    int v=st1.executeUpdate("insert into pro1 values ('"+rs2.getString(1)+"','"+rs2.getString(2)+"','"+rs2.getString(3)+"','"+rs2.getString(4)+"','"+rs2.getString(5)+"')");
	 %>
                 <tr>
                    <td width="46" align="center"> <%=rs2.getString(2)%></td>
                    <td width="67" align="center"> <%=rs2.getString(3)%></td>
                    <td width="60" align="center"> <%=rs2.getString(4)%></td>
                        <td width="60" align="center"> <%=rs2.getString(5)%></td>
                
                  </tr> <%}
													} else 
													{
													%>
    No items found....!
    <%
													}
        }
													
       catch (Exception e) {
	e.printStackTrace();
        
	}
	%>
                </table></td>
              </tr>
            </table></td>
          </tr>
          <tr>
            <td></td>
          </tr>
           <tr>
            <td height="23">M-PRIVACY
              <table width="904" border="1" align="center">
              <tr>
                <td width="892"><table width="904" height="22" border="0" align="center"> 
                  <tr>
                   
                    <td width="154" align="center">AGE</td>
                    <td width="222" align="center">SEX</td>
                    <td width="216" align="center">ZIPCODE</td>
                     <td width="284" align="center">DISEASE</td>
                    </tr>
                </table></td>
              </tr>
              <tr>
                <td><table width="902" border="0"><% 
	try
	{  
           
	

               String a11=request.getParameter("a1");
               String url="jdbc:mysql://localhost:3306/phr";
		Class.forName("com.mysql.jdbc.Driver");
		Connection con=DriverManager.getConnection(url,"root","root");
		Statement st=con.createStatement();Statement st1=con.createStatement();
		ResultSet rs = st.executeQuery("select IF(REPLACE(age, 'F', '')<30, '20-30', '30-54') AS AGE  ,RPAD(RPAD(sex,0,'*'),1,'*') AS SEX,RPAD(RPAD(zipcode,0,'*'),5,'*') AS ZIPCODE,SUBSTRING(disease,1,4 ) AS DISEASE from microdata WHERE AGE<54 order by age , zipcode asc");
		if(rs!=null)
			{%>
   
    <% while(rs.next())
		{						
	 %>
                  <tr>
                    <td width="159"  align="center"> <%=rs.getString(1)%></td>
                    <td width="227"  align="center"> <%=rs.getString(2)%></td>
                    <td width="220" align="center"> <%=rs.getString(3)%></td>
                    <td width="278" align="center"> <%=rs.getString(4)%></td>
                   
                  </tr> <%
 								}			} else 
													{
													%>
    No items found....!
    <%
													}
													ResultSet rs1 = st1.executeQuery("select  IF(REPLACE(age, 'F', '')<70, '55-70', '71-90') AS AGE  ,RPAD(RPAD(sex,0,'*'),1,'*') AS SEX,RPAD(RPAD(zipcode,0,'*'),5,'*') AS ZIPCODE,SUBSTRING(disease,1,4 ) AS DISEASE from microdata WHERE AGE>=54 order by age , zipcode asc");
		if(rs1!=null)
			{%>
   
    <% while(rs1.next())
		{						
	 %>
                  <tr>
                    <td width="159"  align="center"> <%=rs1.getString(1)%></td>
                    <td width="227" align="center"> <%=rs1.getString(2)%></td>
                    <td width="220" align="center"> <%=rs1.getString(3)%></td>
                    <td width="278" align="center"> <%=rs1.getString(4)%></td>
                   
                  </tr> <%
 
													}
													} else 
													{
													%>
    No items found....!
    <%
													}
													}
        catch (Exception e) {
		e.printStackTrace();
	}
	%>
                </table></td>
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
