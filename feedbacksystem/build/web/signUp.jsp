<%-- 
    Document   : signUp
    Created on : 08-Mar-2014, 13:32:49
    Author     : Girjesh
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Reistration</title>
         <link href="images/IpsLogo.jpg" rel="shortcut icon" type="image/x-icon"/>
          <style>
        input[type="text"] {
                     -webkit-border-radius: 2px;
                     -moz-border-radius: 5px;
                      border-radius: 5px;
                      border-color: #005F9D;
                      width: 180px;
                      height:30px;
                   
                      font-size: 20px;
                           }
            #fsignup {
                    
                    color: white;                  
                    border-radius: 8px;
                    border-color: #21b721;
                    background-color: #006699;
                    font-size: 20px;
                    margin-top: 20px;
   
                }  
                
            #cosignup {
                    
                    color: white;                  
                    border-radius: 8px;
                    border-color: #005F9D;
                    background-color: #006699;
                    font-size: 20px;
                    margin-top: 20px;
                }  
             #slect{
                          
                           border-color: #005F9D;
                           width: 180px;
                           height:30px;
                           font-size: 18px;
                           border :10px;
                           border-color: #005F9D;
                    }
              #depsignup{
                    
                    color: white;                  
                    border-radius: 8px;
                    border-color: #005F9D;
                    background-color:#006699;
                    font-size: 20px;
                    margin-top: 20px;
   
                }  
                 #presignup{
                    
                    color: white;                  
                    border-radius: 8px;
                    border-color: #005F9D;
                    background-color: #006699;
                    font-size: 20px;
                    margin-top: 40px;
                    align: center;
                } 
                
                    /* Set the size and font of the tab widget */
.tabGroup {
    font: 10pt arial, verdana;
    width: 600px;
}
 
/* Configure the radio buttons to hide off screen */
.tabGroup > input[type="radio"] {
    position: absolute;
    left:-100px;
    top:-100px;
}
 
/* Configure labels to look like tabs */
.tabGroup > input[type="radio"] + label {
    /* inline-block such that the label can be given dimensions */
    display: inline-block;
    color:white;
    /* A nice curved border around the tab */
    border: 1px solid black;
    border-radius: 5px 5px 0 0;
    -moz-border-radius: 5px 5px 0 0;
    -webkit-border-radius: 5px 5px 0 0;
     
    /* the bottom border is handled by the tab content div */
    border-bottom: 0;
 
    /* Padding around tab text */
    padding: 5px 10px;
 
    /* Set the background color to default gray (non-selected tab) */
   background: #006699;
}
 
/* Focused tabs need to be highlighted as such */
.tabGroup > input[type="radio"]:focus + label {
    border:1px solid #005F9D;
    color: black;
}
 
/* Checked tabs must be white with the bottom border removed */
.tabGroup  input[type="radio"]:checked + label {
    background-color:white;
    font-weight: bold;
    border-bottom: 1px solid white;
    margin-bottom: -1px;
    color: black;
}
 
/* The tab content must fill the widgets size and have a nice border */
.tabGroup > div {
    display: none;
    border: 1px solid black;
    background-color: white;
    padding: 10px 10px;
    overflow: auto;
    width: 500px;
    border-radius: 5px 5px 5px 5px;
    -moz-border-radius: 5px 5px 5px 5px;
    -webkit-border-radius: 5px 5px 5px 5px;
}
 
/* This matchs tabs displaying to thier associated radio inputs */
.tab1:checked ~ .tab1, .tab2:checked ~ .tab2, .tab3:checked ~ .tab3,.tab4:checked ~ .tab4 {
    display: block;
}

                
       </style> 
       <script language="javascript" type="text/Javascript">
         function hello()
         {
    	  var np=document.forms["form1"]["pass"].value;
          var cnp=document.forms["form1"]["cpass"].value;
	     if (np==null || np==""||cnp==null || cnp=="")
  	     {
  		alert("password must be filled out....!!!!");
  		return false;
  	     }
              else 
              if(cnp!=np)
                  {
                    alert("password not matched....!!!!");
  		return false;
                  }
               else{ //alert("please enter correct, current password");
                        return true;
                     }
         }
	
</script>     
        
        </head>
    <body>
          
<div  style=" margin-left:auto; margin-right:auto; width:1055px;">
            <%@include file="header.html" %>
            <h1> &nbsp;</h1>
            <center>
<div class="tabGroup">
        <input type="radio" name="tabGroup1" id="rad1" class="tab1" checked="checked"/>
        <label for="rad1">Co-ordinator</label>    
    <input type="radio" name="tabGroup1" id="rad3" class="tab3"/>
    <label for="rad3">Department Admin</label>
    <input type="radio" name="tabGroup1" id="rad4" class="tab4"/>
    <label for="rad4">Principal</label>

    <br>
    <%-- 
    co-ornator divison 
--%>

    <div class="tab1" >
                      <h1>&nbsp;</h1>
                      <form method="post" name="form1" action="registrationServlate?action=coordinator" onsubmit="return hello();"> 
                <table>
               <tr>
                   
                   <td colspan="2"><input type="text" name="userId" value="" autocomplete="off" Placeholder="User ID" /> </td>  </tr>
              <tr>
                  <td><input type="text" name="pass" value="" autocomplete="off" placeholder="password"  /></td> 
                  <td>
                      <input type="text" name="cpass" value="" autocomplete="off" placeholder="Confirm password"/></td>
              </tr>
               <tr>
                   <td colspan="2"><input type="text" name="deptId" value="" autocomplete="off" Placeholder="Department"/> </td>
         </tr>
              <tr>
                     
                  <td colspan="2"><input type="text" name="semId" value="" autocomplete="off" Placeholder="Semester"/> </td>
                  </tr>
                 <tr>
                     
                     <td colspan=""><input type="text" name="year" value="" autocomplete="off" Placeholder="Year" /> </td> 
                
                 
                 <td> <select id="slect" name="section">
                         <option>Section</option>
                             <option value="A">A</option>
                            <option value="B">B</option>                          
                         </select> 
                                    
                  </td>
                 </tr>
              <tr>
                  <td colspan="2" align="center"><button id="cosignup" type="submit" value="" name="cosignup" >Register</button></td>
              </tr>
                                                                 
                              </table>
                          </form>
    
    </div>

   <%-- 
    Depatment Admin division 
--%>
    <div class="tab3">
    <h1>&nbsp;</h1>
    <form method="post"  name="form1" action="registrationServlate?action=departmentadmin" onsubmit="return hello();"> 
       <table >
                           
           <tr><td></td>
               <td><input type="text" name="userId" value="" autocomplete="off" Placeholder="User ID" /></td> 
           </tr>
           <tr><td></td>
              <td><input type="text" name="pass" value="" autocomplete="off" placeholder="password"/>
              <td><input type="text" name="cpass" value="" autocomplete="off" placeholder="Confirm password"/></td>
          </tr>
         <tr><td></td>
             <td><input type="text" name="deptId" value="" autocomplete="off" Placeholder="Department"/> </td>
         </tr>
                                    
         <tr>
             <td colspan="3" align="center">
                 <button id="depsignup" type="submit" value="LOG IN" name="login" >Register</button>
             </td>
         </tr>
                                                                 
         </table>
    </form>
       
    
    
      
 </div>
<%-- 
    Principal Division 
--%>
    <div class="tab4">
        
     <h1>&nbsp;</h1>
     <form method="post" name="form1" action="registrationServlate?action=principal" onsubmit="return hello();"> 
        <table >
        <tr>
             <td></td>
             <td><input type="text" name="userId" value="" autocomplete="off" Placeholder="User ID" />
        <tr>
            <td ></td>
             <td><input type="text" name="pass" value="" autocomplete="off" placeholder="password"  /></td>
             <td ></td>
             <td><input type="text" name="cpass" value="" autocomplete="off" placeholder="Confirm password"  /></td>
        </tr>
       
        <tr>
          <td></td>
          <td colspan="3" align="center"><button id="presignup" type="submit" value="" name="login" >Register</button></td>
        </tr>
        </table>
   </form>
       
      
    </div>
</div>        
       
        <br>
        <div style="clear: both;">
        <%@include file="footer.html" %>
        </div>
            </center>
</div>
        
    </body>
</html>

