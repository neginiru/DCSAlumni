<%@ Page Title="" Language="C#" MasterPageFile="~/site.master" AutoEventWireup="true" CodeFile="datasubmit.aspx.cs" Inherits="datasubmit" %>
<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="ajaxToolkit" %>



<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
         
                <table style="padding-left: 40px; margin-left: 31px;">
                <tr><td style="text-decoration:  none;color: #FFFFFF">Passing Year</td></tr>
                <tr>
                <td style="height: 23px; color: #FFFFFF;"><a href="batch1.aspx" style="text-decoration:  none;color: #FFFFFF"">1992-2000</a><br />
                    </td></tr>
                <tr><td style="height: 23px; color: #FFFFFF;"><a href="batch2.aspx" style="text-decoration:  none;color: #FFFFFF"">2001-2006</a><br />
                    </td></tr>
                <tr><td><a href="batch3.aspx" style="text-decoration: none;color: #FFFFFF">2007-2013</a><br />
                </td></tr>
                <tr><td><a href="batch4.aspx" style="text-decoration: none;color: #FFFFFF">2014-2017</a><br />
                </td></tr>
               
                   
               
                   
                </table>

</asp:Content>


<asp:Content ID="Content2" ContentPlaceHolderID="MainContentPlaceHolder1" Runat="Server"> 
    <style type="text/css">
   .graystyle
   {
       color:Gray;
   }
    .style18
    {
        text-align: left;
        width: 164px;
        height: 23px;
    }
    .style19
    {
        width: 276px;
        height: 23px;
    }
    .style20
    {
        text-align: left;
        height: 23px;
    }
    .style21
    {
            text-align: left;
            width: 199px;
        }
    .style22
    {
        height: 30px;
        width: 276px;
    }
    .style23
    {
        width: 276px;
    }
    .style25
    {
        color: #FF0000;
    }
    .style26
    {
        text-align: left;
        width: 164px;
        height: 44px;
    }
    .style27
    {
        width: 276px;
        height: 44px;
    }
    .style28
    {
        text-align: left;
        height: 44px;
    }
        .style35
        {
            width: 199px;
            text-align: left;
            height: 44px;
        }
        .style36
        {
            width: 199px;
            text-align: left;
            height: 23px;
        }
        .style58
        {
            width: 276px;
            color: #003300;
        }
   </style>   
   
    <div style="  border: 2px inset #008080; width: 855px; margin-left: 25px; background-color: #FFFFFF; ">&nbsp;
    
                <table style=" margin-right: 0px;  background-color: #FFFFFF; height: 453px; margin-left: 71px; width: 680px;" 
                    frame="below">
                    <tr>
                        <td class="style21" style="padding-left: 20px; color: #0000FF;">&nbsp;</td>
                        <td class="style58"  style="text-align: center; vertical-align: middle; "> <strong>
                            Join As Alumni</strong></td>
                        <td class="style8" style="color: #800000;">&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="style21" style="padding-left: 20px; color: #0000FF;">Name<span class="style25"> *</span></td>
                        <td class="style23" style="text-align: center; vertical-align: middle; ">
                            <asp:TextBox ID="TextBox1" runat="server" Width="224px" BorderColor="#99FFCC" BorderWidth="1px" Height="25px"></asp:TextBox>
                            <ajaxToolkit:TextBoxWatermarkExtender ID="TextBox1_TextBoxWatermarkExtender" runat="server" BehaviorID="TextBox1_TextBoxWatermarkExtender" 
                                                                 TargetControlID="TextBox1" WatermarkText="Enter Full Name " WatermarkCssClass="graystyle" />  </td>                                                                                                                                       
                        <td class="style8" style="color: #800000;">
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="This field can not be Empty" 
                                                                 ForeColor="#CC0000"></asp:RequiredFieldValidator> <br />  </td>        
                    </tr>
                    <tr>
                        <td class="style21" style="padding-left: 20px; color: #0000FF;">Batch<span class="style25"> *</span></td>
                        <td class="style23" style="text-align: center; vertical-align: middle; ">
                            <asp:ScriptManager ID="ScriptManager2" runat="server"> </asp:ScriptManager>
                                <asp:TextBox ID="TextBox4" runat="server" Width="222px" BorderColor="#99FFCC" BorderWidth="1px" Height="25px"></asp:TextBox>
                            <ajaxToolkit:DropDownExtender ID="TextBox4_DropDownExtender" runat="server"  BehaviorID="TextBox4_DropDownExtender" DynamicServicePath="" 
                                                            TargetControlID="TextBox4"> </ajaxToolkit:DropDownExtender>     
                            <ajaxToolkit:TextBoxWatermarkExtender ID="TextBox4_TextBoxWatermarkExtender" runat="server" BehaviorID="TextBox4_TextBoxWatermarkExtender" 
                                                            TargetControlID="TextBox4" WatermarkCssClass="graystyle"  WatermarkText="Passing Year" />     </td>     
                        <td class="style8" style="color: #800000;">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Enter Passing year" ControlToValidate="TextBox4" 
                                                            ForeColor="#CC0000"></asp:RequiredFieldValidator></td>
                    
                    </tr>
                    <tr>
                        <td class="style21" style="padding-left: 20px; color: #0000FF;">Email<span class="style25"> *</span></td>
                        <td class="style23" style="text-align: center; vertical-align: middle; ">
                            <asp:TextBox ID="TextBox3" runat="server" Width="224px" BorderColor="#99FFCC" BorderWidth="1px" Height="25px"></asp:TextBox></td>
                        <td class="style8" style="color: #800000;"><br />
                            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TextBox3" ErrorMessage="Please enter valid Email id" 
                                ForeColor="#CC0000" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator></td>
                     </tr>
                     <tr>
                         <td class="style21" style="padding-left: 20px; color: #0000FF;">LinkedIn </td>
                         <td class="style23" style="text-align: center; vertical-align: middle; ">
                            <asp:TextBox ID="TextBox6" runat="server" Width="224px" BorderColor="#99FFCC" BorderWidth="1px" Height="25px"></asp:TextBox> </td>
                         <td class="style8" style="color: #800000;"> &nbsp;</td>
                        
                    </tr>
                    <tr>
                        <td class="style21" style="padding-left: 20px; color: #0000FF;">Presently Working At</td>
                        <td class="style23" style="text-align: center; vertical-align: middle; "><asp:TextBox ID="TextBox5" runat="server" Width="221px" BorderColor="#99FFCC" BorderWidth="1px" Height="25px"></asp:TextBox> </td>
                        <td class="style8" style="color: #800000;"><br /><br /> </td>
                    </tr>
                    <tr>
                        <td class="style35" 
                            style="padding-left: 20px; color: #0000FF;">
                            Campus Placement At</td>
                        <td class="style27" 
                            style="text-align: center; vertical-align: middle; ">
                            <ajaxToolkit:ComboBox ID="ComboBox1" runat="server" 
                                AutoCompleteMode="SuggestAppend" Width="200px">
                                <asp:ListItem>Infosys</asp:ListItem>
                                <asp:ListItem Value="Accenture"></asp:ListItem>
                                <asp:ListItem Value="Quark"></asp:ListItem>
                                <asp:ListItem Value="Sufi"></asp:ListItem>
                                <asp:ListItem Value="Net Solution"></asp:ListItem>
                                <asp:ListItem Value="Webner"></asp:ListItem>
                                <asp:ListItem Value="Wipro"></asp:ListItem>
                                <asp:ListItem Value="innov8"></asp:ListItem>
                                <asp:ListItem Value="Smater.codes"></asp:ListItem>
                            </ajaxToolkit:ComboBox>
                        </td>
                        <td class="style28" style="color: #800000;">
                            <br />
                            <br />
                        </td>
                </tr>
                <tr>
                        <td class="style36" style="padding-left: 20px; color: #0000FF;">Upload Your Picture<span class="style25"> *</span></td>
                        <td class="style19" 
                            style="text-align: center; vertical-align: middle; ">
                            <br />
                            <asp:FileUpload ID="FileUpload1" runat="server" />
                            </td>
                        <td class="style20" style="color: #800000;">
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="FileUpload1" ErrorMessage="Upload photo" ForeColor="#CC0000">Please upload photo</asp:RequiredFieldValidator>
                            </td>
                </tr>
                <tr>
                        <td class="style21" 
                        
                            style="padding-left: 20px; color: #0000FF;">
                            </td>
                        <td class="style22" 
                        
                        
                        
                            style="text-align: center; vertical-align: middle; ">
                            <asp:Button ID="Button1" runat="server" Text="Submit" 
                                onclick="Button1_Click"  />
                            <ajaxToolkit:ConfirmButtonExtender ID="Button1_ConfirmButtonExtender" 
                                runat="server" BehaviorID="Button1_ConfirmButtonExtender" 
                                ConfirmOnFormSubmit="True" ConfirmText="Are you sure you want to Submit" 
                                TargetControlID="Button1" />
                        </td>
                        <td class="style8" style="color: #800000;">
                            </td>
                </tr>
                <tr>
                        <td class="style21" style="padding-left: 20px; color: #0000FF;"> &nbsp;</td>
                        <td class="style23" style="text-align: center; vertical-align: middle; "><asp:Label ID="Label1" runat="server" ></asp:Label>&nbsp;</td>
                        <td class="style8" style="color: #800000;">&nbsp;</td>
                </tr>        
               </table>   
           
   </div> 
</asp:Content>

 