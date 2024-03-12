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
  <script language="JavaScript" src="js/security.js"></script>
<link rel="stylesheet" type="text/css" href="style.css" />
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
        <style type="text/css">
<!--
.style12 {
	color: #FFFFFF;
	font-weight: bold;
	font-size: 16px;
	font-style: italic;
}
.style14 {color: #000000}
.style18 {
	color: #336600;
	font-weight: bold;
	font-size: 24px;
}
.style23 {color: #336600; font-weight: bold; font-size: 18px; }
-->
        </style>
</head>
    <body bgcolor="#CCCCCC"><form action="testinform" method="post">
    <table width="966" border="0" align="center" bgcolor="#FFFFFF">
      <tr>
        <td width="960"><table width="956" border="0">
          <tr>
            <td width="950"><table width="950" border="0">
              <tr>
                <td width="292"><img src="image/1_4.jpg" height="131"/></td>
                <td width="648"><div align="center"><span class="style23">A DATA INTEGRITY AND RELIABLE AUTHENTICATION SCHEME FOR STORING AND RETRIEVAL OF SENSITIVE HEALTH CARE RECORDS IN CLOUD</span></div></td>
              </tr>
            </table></td>
          </tr>
         <tr>
            <td height="75"><div class="navbar">
  <a href="doctor.jsp">Home</a>
  <div class="dropdown">
    <button class="dropbtn" disabled="true">Patient Details 
      <i class="fa fa-caret-down"></i>
    </button>
    <div class="dropdown-content">
      <a href="custinform.jsp">Prescription Information</a>
      <a href="testinform.jsp" class="active">Test Information Details</a>
	   <a href="d1.jsp">Diagnosis Details</a>
        <a href="dtest.jsp">Booked Conform</a>
    </div>
  </div>   <div class="dropdown">
    <button class="dropbtn" disabled="true">Doctor Report<i class="fa fa-caret-down"></i>
    </button>
    <div class="dropdown-content">
      <a href="doctortestprescribe.jsp">Test</a>
      <a href="pharmacy.jsp">Prescription</a>
	 <a href="denter.jsp">Diagnosis</a>
	  <a href="d3.jsp">Disease</a>
	    <a href="d8.jsp">Disease Report</a>
    </div>
  </div> 
 

  <a href="dcpass.jsp">Change_Password</a>
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
          <p>&nbsp;</p></td>
  </tr>
</table>
</td>
      </tr>
      <tr>
        <td height="376"  align="center"><table width="956" height="404" border="0">
         
          <tr>
            <td height="366"><table width="933" border="0" align="center">
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
                        <td width="921"><%if(request.getParameter("View")!=null){%>
                            <table width="929" border="0" align="center">
              <tr>
                <td width="923"><table width="923" height="43" border="3" >
   <tr>
      <td width="50" height="33" ><div align="center" class="style21 style3 style19 style14"><strong>TId</strong></div></td>
      <td width="62"><div align="center" class="style21 style3 style19 style14"><strong>User Id </strong></div></td>
     
	  <td width="92"><div align="center" class="style21 style3 style19 style14"><strong>Reason</strong></div></td>
      <td width="77"><div align="center" class="style21 style3 style19 style14"><strong>Subdate</strong></div></td>
	    <td width="112"><div align="center" class="style21 style3 style19 style14"><strong>Test detail</strong></div></td>
		<td width="78"><div align="center" class="style21 style3 style19 style14"><strong>Status</strong></div></td>
		<td width="132"><div align="center" class="style21 style3 style19 style14"><strong>Lab Description</strong></div></td>
		<td width="171"><div align="center" class="style21 style3 style19 style14"><strong>Photo</strong></div></td>
    </tr>
	
	</table></td>
              </tr>
              <tr>
                <td><table width="918" border="1"  align=center>

    <% int index=0;
	try
	{  
            //AESDecryption dec=new AESDecryption();
	 HttpSession so = request.getSession(true);

          String url = "jdbc:mysql://localhost:3306/phr";
            Class.forName("com.mysql.jdbc.Driver");
            Connection con = DriverManager.getConnection(url, "root", "root");
		Statement st=con.createStatement();Statement smt1 = con.createStatement();
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
   int vv=0,vv1=0,flag=0;
   
                    ResultSet rs3 = smt3.executeQuery("select * from doctor where did='"+so.getAttribute("un") +"' ");
				while (rs3.next()) {
                              
                                   r3=rs3.getString(1);
                                   r4=rs3.getString(2);
                                  r5=rs3.getString(6);
				} 
                                       
			
                                
                                     ResultSet rs2 = smt3
           
			.executeQuery("select COUNT(distinct patientid)  from searchblock where doctorid='"+so.getAttribute("un") +"' and specialist='" + r5 + "' and fdate='"+f12+"' ");
				
                                    if (rs2.next()) {
                              vv=Integer.parseInt(rs2.getString(1));
                              if(vv<100){
                                  flag=1;
                                 
                              }
                                 } 
                                String st1="",st2="";
                                if(flag==1){
		ResultSet rs = st.executeQuery("select * from dtest where uid='"+request.getParameter("a1")+"'");
		if(rs!=null)
			{%>
   
    <% while(rs.next())
		{
                    st1=rs.getString(4);
                            st2=rs.getString(5);
                              Transaction transaction1 = new Transaction(st1, st2, 1000L);
  Transaction transaction2 = new Transaction(request.getParameter("a1"), st2, 1000L);
//        Transaction transaction3 = new Transaction(vname, vpass, 1000L);
//        Transaction transaction4 = new Transaction(vname, vpass, 150L);
int sts=0;
        Block firstBlock = new Block(0, Arrays.asList(transaction1, transaction2));
   sts=smt9.executeUpdate("insert into searchblock values('"+firstBlock.hashCode()+"','"+transaction1+"','" + r3 + "','" + r4 + "','" + r5 + "','" + request.getParameter("a1") + "','"+st2+"','"+f11+"','"+f12+"','Test information')");
	 %>
	
    <tr>
      <td width="46" >   
        
              <div align="center">
              <%=rs.getString(1)%>
               </div></td>
               <td width="63"><div align="center"><%=rs.getString(5)%></div></td>
               
        <td width="94"><div align="center"><%=rs.getString(7)%></div></td>
      <td width="77"><div align="center"><%=rs.getString(8)%></div></td>
	         <td width="111"><div align="center"><%=rs.getString(9)%></div></td>
      <td width="77"><div align="center"><%=rs.getString(11)%></div></td>
	         <td width="133"><div align="center"><%=rs.getString(12)%></div></td>
			  <td width="172"><div align="center"><img src="Lab/<%=rs.getString(1)%>.jpg" width="140" height="124" /></div></td>
    <%
  index++;
													}
													} else 
													{
													%>
    No items found....!
    <%
													}}
													}
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
        </table></td>
      </tr>
          <tr>
        <td>&nbsp;</td>
      </tr>
    </table>
    
</form>
    </body>
</html>
