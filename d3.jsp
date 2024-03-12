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
    <body bgcolor="#CCCCCC"><form action="d3" method="post">
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
  <a href="doctor.jsp" class="active">Home</a>
  <div class="dropdown">
    <button class="dropbtn" disabled="true">Patient Details 
      <i class="fa fa-caret-down"></i>
    </button>
    <div class="dropdown-content">
      <a href="custinform.jsp">Prescription Information</a>
      <a href="testinform.jsp">Test Information Details</a>
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
          <p> <span class="style10">Success Stories | Mankarious</span></p></td>
  </tr>
</table>
</td>
      </tr>
      <tr>
        <td height="376"  align="center"><table width="961" height="368" border="0">
  <tr>
    <td width="147" height="342">&nbsp;</td>
    <td width="631"><table width="630" border="0" align="center">
          <tr>
            <td width="624" height="38" align="center"><span class="style20"><strong>PATIENT DISEASE REGISTRATION </strong></span></td>
          </tr>
          <tr>
            <td  align="center">
              <table width="427" border="0" align="center">
			  
			  
			  
			  
			            <tr>
			              <td width="167" height="38"><strong>Name <span class="style19">*</span></strong></td>
			              <td width="250"><div align="left">
			                <input name="a1" type="text" id="a1" class="displayValue" maxlength="15" style="width:180px"  onKeyPress="return name_val(event);return nospecialcharacters();" onChange="return val_zero('a1','err_a1');"     onblur="return txt_empty('a1','err_a1','Name Should Not Be Blank');" />
		                  &nbsp;&nbsp;&nbsp;<span id="err_a1"></span> </div></td>
		              </tr>
        
          <tr>
            <td height="42"><strong>Date of Birth<span class="style19"> *</span></strong></td>
            <td><label>
                    <div align="left">
                      <input type="text" style="width:180px" id="birthdate" name="birthdate" class="displayValue"  readonly="true" onChange="return val_zero('birthdate','err_birthdate');" 
 onblur="calculateAge('birthdate','age','true')"/>  
                      <a href="javascript:NewCssCal('birthdate','ddmmyyyy')"><img src="image/cal.jpg" alt="" width="25" height="21" /></a>
                               <span id="err_birthdate"></span>                            </div>
            </label></td>
          </tr>
		    <tr>
            <td height="39"><strong>Age <span class="style19">*</span></strong></td>
            <td><label>
                    <div align="left">
  <input type="text" name="age" id="age" class="displayValue" maxlength="10"  style="width:180px" onKeyPress="return numbersonly();" onChange="return val_zero('age','err_age');" 
											onblur="return val_mobile('age','err_age');" />
  &nbsp;&nbsp;&nbsp;<span id="err_age"></span>                            </div>
            </label></td>
          </tr>
         <tr>
            <td height="36"><strong>Zipcode <span class="style19">*</span></strong></td>
            <td><label>
              <div align="left">
                <input type="text" name="a2" id="a2" class="displayValue" maxlength="10"  style="width:180px" onKeyPress="return numbersonly();" onChange="return val_zero('a2','err_a2');" 
											onblur="return val_mobile('a2','err_a2');" />
                &nbsp;&nbsp;&nbsp;<span id="err_a2"></span>                </div>
            </label></td>
          </tr>
          <tr>
            <td height="62"><strong>Disease</strong><strong><span class="style19"> *</span></strong></td>
            <td><label>
              <div align="left">
  <input name="a3" type="text" class="displayValue" id="a3" style="width:180px" onBlur="return txt_empty('a3','err_a3','Address Should Not Be Blank');" onChange="return val_zero('a3','err_a3');" value="">
  &nbsp;&nbsp;<span id="err_a3"></span>                </div>
            </label></td>
          </tr>
           <tr>
            <td height="36"><strong>Mobile <span class="style19">*</span></strong></td>
            <td><label>
              <div align="left">
                <input type="text" name="a4" id="a4" class="displayValue" maxlength="10"  style="width:180px" onKeyPress="return numbersonly();" onChange="return val_zero('a4','err_a4');" 
											onblur="return val_mobile('a4','err_a4');" />
                &nbsp;&nbsp;&nbsp;<span id="err_a4"></span>                </div>
            </label></td>
          </tr>
		   <tr>
            <td height="38"><strong>Email <span class="style19">*</span></strong></td>
            <td><label>
              <div align="left">
  <input name="a5" id="a5" type="text" maxlength="20"  class="displayValue" style="width:180px" onChange="return val_zero('a5','err_a5');"  onblur="return val_email1('a5','err_a5');"/>
  &nbsp;&nbsp;&nbsp;<span id="err_a5"></span>                </div>
            </label></td>
          </tr>
            <tr>
            <td height="38"><strong>Pancard <span class="style19">*</span></strong></td>
            <td><label>
              <div align="left">
  <input name="a6" id="a6" type="text" maxlength="20"  class="displayValue" style="width:180px" onChange="return val_zero('a6','err_a6');"  onblur="return val_email1('a6','err_a6');"/>
  &nbsp;&nbsp;&nbsp;<span id="err_a6"></span>                </div>
            </label></td>
          </tr>
             <tr>
            <td height="52"><strong>Address</strong><strong><span class="style19"> *</span></strong></td>
            <td><label>
              <div align="left">
  <textarea name="a7" class="displayValue" id="a7" style="width:180px" onBlur="return txt_empty('a7','err_a7','Address Should Not Be Blank');" onChange="return val_zero('a7','err_a7');"></textarea>
  &nbsp;&nbsp;<span id="err_a7"></span>                </div>
            </label></td>
          </tr>
              <tr>
            <td height="34"><strong>Sex</strong><strong><span class="style19"> *</span></strong></td>
            <td><select name="a8">
              <option value="Select the Sex">Select the Sex</option>
              <option value="Male">Male</option>
              <option value="Female">Female</option>
            </select></td>
          </tr>
          <tr>
            <td>&nbsp;</td>
            <td><label>
              <div align="left">
  <input type="submit" name="Save" value="Submit" class="buttons" onClick="return validatePage('a1|a2|a3|birthdate|age|a2|a5|a6|a7','err_a1|err_a2|err_a3|err_birthdate|err_age|err_a2|err_a5|err_a6|err_a7','Should Not Be Blank|Should Not Be Blank|Should Not Be Blank|Should Not Be Blank|Should Not Be Blank|Should Not Be Blank|Should Not Be Blank|Should Not Be Blank');"  />
  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <input type="submit" name="Cancel" value="Cancel">
                </div>
            </label></td>
          </tr>
                </table>
				<strong></strong><br><br></td>
          </tr>
        </table></td>
	<td width="169">&nbsp;</td>
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
