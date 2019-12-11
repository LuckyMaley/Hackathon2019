<%@ Page Title="Home" Language="vb" MasterPageFile="SiteDoc.Master" AutoEventWireup="true" CodeBehind="DefaultDoc.aspx.vb" %>


<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="Server">
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <style type="text/css">
        .style2
        {
            
            height: 350px;
            width:200px;
        }
        </style>
</asp:Content>
<asp:content id="Content2" contentplaceholderid="MainContent" runat="Server">
    <div class="container" style="height: auto; width: 100%;" align="center">
    
        <div class="slide" style="width: 100%" align="center">
            <div class="row">
                <div class="container-fluid">
                    <div class="row">
                        <div id="carousel-example-generic" class="carousel slide" data-ride="carousel">
                        
                            <ol class="carousel-indicators">
                                <li data-target="#carousel-example-generic" data-slide-to="0" class="active"></li>
                                <li data-target="#carousel-example-generic" data-slide-to="1"></li>
                                <li data-target="#carousel-example-generic" data-slide-to="2"></li>
                                <li data-target="#carousel-example-generic" data-slide-to="3"></li>
                            </ol>
                            <div class="carousel-inner" align="center">
                                <div class="item active">
                                    <img src="../../Resources/hackathon-2019a.jpg" width="100%" alt="First slide" />
                                </div>
                                <div class="item">
                                    <img src="../../Resources/HB11-15.png" width="100%" alt="Second slide" />
                                </div>
                                <div class="item">
                                    <img src="../../Resources/HB18-22.png" width="100%" alt="Third slide" />
                                </div>
                                <div class="item">
                                    <img src="../../Resources/HB-25-29.png" width="100%" alt="Fourth slide" />
                                </div>
                            </div>
                            <a class="left carousel-control" href="#carousel-example-generic" data-slide="prev">
                                <span class="glyphicon glyphicon-chevron-left"></span></a><a class="right carousel-control"
                                    href="#carousel-example-generic" data-slide="next"><span class="glyphicon glyphicon-chevron-right">
                                    </span></a>
                        </div>
                    </div>
                </div>
            </div></div>
            <div id="push">
            </div>
            <br />
            
             <b align="center" style="font-size: xx-large; width: 100%;">Some information about us below </b>
             <hr />
    <br />
    <br />
    


    
         <b style="font-size: x-large; width: 100%;">
         Vision:
         <br />
         Optimal health for all persons in KwaZulu-Natal.
         <br /></b> 
         <br /><b id ="di" style="font-size: x-large">
         Mission: 
         <br />
         To develop and implement a sustainable, coordinated, integrated and comprehensive health system at all levels, based on the Primary Health Care approach through the District Health System, to ensure universal access to health care
</b>
<br />
<b id ="B1" style="font-size: x-large"><br />
Core Values:<br />
Trustworthiness, honesty and integrity <br />
Open communication, transparency and consultation
Professionalism, accountability and commitment to excellence
Loyalty and compassion <br />
Continuous learning, amenable to change and innovation
Fighting Disease, Fighting Poverty, Giving Hope. 
              </b>

              
    

     
     
        <br />
               
                
<br />
<div  align="center" style="background-color: #009933">
    <form action="#" id="newsletter">
               <h1>signup for the daily newsLetter </h1>   <br/>
                    <asp:label runat="server" ID="Label1"></asp:label>
                    <br />
                 <asp:textbox   runat="server"  ID="tbEmailHome" Height="42px" Width="276px"></asp:textbox>
               <asp:Button runat="server" text="Subscribe" ID="btnEmail" Height="49px"  CssClass="btn" />
</form>
               
          </div>
</div>

</asp:content>
