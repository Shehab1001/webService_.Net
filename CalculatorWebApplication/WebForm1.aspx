<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="CalculatorWebApplication.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    
    <style type="text/css">
        .auto-style1 {
            margin-left: 11px;
            border-radius:15px;
            -webkit-transition-duration:0.3s;
            transition-duration: 0.3s;
            -webkit-transition-property: box-shadow, transform;
            transition-property:box-shadow, transform;
        }
        .auto-style1:hover, .auto-style1:focus, .auto-style1:active{
            box-shadow: 0 0 8px rgba(0, 0, 0, 0.3);
            -webkit-transform: scale(1.1);
            transform:scale(1.1);
        }
        
        .auto-style2 {
            margin-left: 13px;
            border-radius:15px;
            -webkit-transition-duration:0.3s;
            transition-duration: 0.3s;
            -webkit-transition-property: box-shadow, transform;
            transition-property:box-shadow, transform;
        }
          .auto-style2:hover, .auto-style2:focus, .auto-style2:active{
            box-shadow: 0 0 8px rgba(0, 0, 0, 0.3);
            -webkit-transform: scale(1.1);
            transform:scale(1.1);
        }
        .auto-style3 {
            margin-left: 7px;
            border-radius:15px;
            -webkit-transition-duration:0.3s;
            transition-duration: 0.3s;
            -webkit-transition-property: box-shadow, transform;
            transition-property:box-shadow, transform;
            
        }
          .auto-style3:hover, .auto-style3:focus, .auto-style3:active{
            box-shadow: 0 0 8px rgba(0, 0, 0, 0.3);
            -webkit-transform: scale(1.1);
            transform:scale(1.1);
        }
        .auto-style4 {
            width: 212px;
            
            
        }
        .auto-style5 {
            height: 29px;
            width: 193px;
        }
        .auto-style6 {
            width: 212px;
            height: 29px;
          
        }
        .auto-style7 {
            margin-left: 0px;

          
        }
        .auto-style8 {
            width: 199px;
           border-radius:15px;
            -webkit-transition-duration:0.3s;
            transition-duration: 0.3s;
            -webkit-transition-property: box-shadow, transform;
            transition-property:box-shadow, transform;
        }

        .auto-style8:hover, .auto-style8:focus, .auto-style8:active{
            box-shadow: 0 0 8px rgba(0, 0, 0, 0.3);
            -webkit-transform: scale(1.1);
            transform:scale(1.1);
        }
        
        .auto-style9 {
            width: 193px;
        }
       
        
        .auto-style10 {
            width: 193px;
            height: 40px;
        }
        .auto-style11 {
            width: 212px;
            height: 40px;
        }
        .auto-style12 {
            width: 434px;
            height: 220px;
        }
        
       input[type=text]{
           border-color:#1CA7EC;
           border-radius: 5px;
       }
        
        .auto-style13 {
            width: 403px;
        }
        
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
           <table class="auto-style12">
               <caption style="font-size:17pt; font-family:Roboto; background-color:#1CA7EC; color:white; border-radius:5px" class="auto-style13"><strong>Area of Shapes</strong></caption> 
                <tr>
                   <td colspan="2">&nbsp;</td>
                   
               </tr>  
               <tr>
                    <td class="auto-style5">
                        <b style="font-family:Roboto">Length (Height): </b>
                     </td>
                    <td class="auto-style6">
                        <asp:TextBox ID="txtLen" runat="server" Width="186px" CssClass="auto-style7" Height="20px" OnTextChanged="txtLen_TextChanged"></asp:TextBox>

                    </td>
                </tr>
                <tr>
                    <td class="auto-style9">
                        <b style="font-family:Roboto">Width (Base):</b> 
                    </td>
                    <td class="auto-style4">
                        <asp:TextBox ID="txtWid" runat="server" Width="186px" Height="20px"></asp:TextBox>
                    </td>
                </tr>    
                <tr>
                    <td class="auto-style5">
                        <b style="font-family:Roboto;color:black">Radius:</b> 
                    </td>
                    <td class="auto-style6">
                        <asp:TextBox ID="txtRad" runat="server" Width="186px" CssClass="auto-style7" Height="20px"></asp:TextBox>
                    </td>
                </tr>
               <tr>
                   <td colspan="2">&nbsp;</td>
                   
               </tr>   
               <tr>
                   
                    <td class="auto-style10">
                        
                            <asp:Button ID="btnSquare" runat="server"  CssClass="auto-style8" Text="Square" Width="90px" OnClick="btnSquare_Click" Height="36px" Font-Bold="true" BackColor="#1CA7EC" BorderStyle="None" ForeColor="White" />
                             <asp:Button ID="btnRectangle" runat="server" Text="Rectangle" CssClass="auto-style1" Width="90px" OnClick="btnRectangle_Click" Height="36px" Font-Bold="true"  BackColor="#1CA7EC" BorderStyle="None" ForeColor="White"/>
                        
                        
                    </td>
                    <td class="auto-style11">
                        <asp:Button ID="btnTriangle" runat="server" Text="Triangle" CssClass="auto-style3" Width="90px" OnClick="btnTriangle_Click" Height="36px" Font-Bold="true"  BackColor="#1CA7EC" BorderStyle="None" ForeColor="White" />
                        <asp:Button ID="btnCircle" runat="server" Text="Circle" CssClass="auto-style2" Width="90px" OnClick="btnCircle_Click" Height="36px" Font-Bold="true"  BackColor="#1CA7EC" BorderStyle="None" ForeColor="White"/>  
                    </td>                   
                </tr> 
            </table>
        </div>
        
        <br />
         <b style="font-family:Roboto">Result (Area):   </b>&nbsp;&nbsp;&nbsp;<asp:Label ID="lblresult" runat="server" Text="_"></asp:Label>
        <br />
       <br />

        
        <asp:Button ID="cls" runat="server" Text="Reset" OnClick="cls_Click" style="background-color:red; font-weight:bold;border-style:none; border-radius:10px; color:white; font-size:8pt" Height="26px" Width="61px" CssClass="reset"/>

        
    </form>
</body>
</html>
