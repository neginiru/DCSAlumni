﻿<%@ Page Title="" Language="C#" MasterPageFile="~/site1.master" AutoEventWireup="true" CodeFile="batch3.aspx.cs" Inherits="batch3" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder3" Runat="Server">
    <div>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:alumnidataConnectionString %>" >
            <SelectParameters>
                <asp:ControlParameter ControlID="ddlyear" Name="batch" PropertyName="SelectedValue" Type="Decimal" />
                <asp:ControlParameter ControlID="TextBox1" Name="name" PropertyName="Text" Type="String" />
            </SelectParameters>
        </asp:SqlDataSource>
        <table style="margin-left: 81px; height: 53px; font-family: Garamond; font-size: large; font-style: normal; color: #000080; width: 772px;">
            <tr>
                <td>
                    <b>Enter Name</b></td>
                <td style="width: 196px">
                    <asp:TextBox ID="TextBox1" 
                     runat="server" Height="19px" Width="187px" AutoPostBack="True" 
                     ></asp:TextBox>
                </td>
                <td>
                    <b>Enter Passing Year</b></td>
                <td>
                    <asp:DropDownList ID="ddlyear" runat="server" AutoPostBack="True" >
                    </asp:DropDownList>
                    <asp:Button ID="Button1" runat="server" ForeColor="#0033CC" 
                     onclick="Button1_Click" Text="Search" style="margin-left: 19px" />
                </td>
            </tr>
        </table>
        
    </div>
    </asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
       
                <table style="padding-left: 40px; margin-left: 40px; width: 142px;">
                <tr><td style="text-decoration:  none;color: #FFFFFF; height: 43px;">Passing Year</td></tr>
                <tr>
                <td ><a href="batch1.aspx" style="text-decoration:  none;color: #FFFFFF"">1992-2000</a><br />
                    </td></tr>
                <tr><td ><a href="batch2.aspx" style="text-decoration:  none;color: #FFFFFF"">2001-2006</a><br />
                    </td></tr>
                <tr><td><a href="batch4.aspx" style="text-decoration: none;color: #FFFFFF">2014-2017</a><br />
                </td></tr>
                   
                <tr><td>&nbsp;</td></tr>
                   
                <tr><td>&nbsp;</td></tr>
                   
                <tr><td>&nbsp;</td></tr>
                   
                <tr><td>&nbsp;</td></tr>
                   
                <tr><td>&nbsp;</td></tr>
                   
                <tr><td>&nbsp;</td></tr>
                   
                <tr><td style="height: 23px; color: #FFFFFF;"> <a href="datasubmit.aspx" style="text-decoration: none; color: #FFFFFF">Join Today</a></td></tr>
                   
                </table>
                            
            
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContentPlaceHolder1" Runat="Server">
    <div style=" width: 794px; margin-left: 30px; height: 1052px; margin-right: 27px; margin-bottom: 22px;">
        <div>
            <asp:ListView ID="lvCustomers" runat="server" GroupPlaceholderID="groupPlaceHolder1" ItemPlaceholderID="itemPlaceHolder1" OnPagePropertiesChanging="OnPagePropertiesChanging">
                <LayoutTemplate>
                    <table>
                        <asp:PlaceHolder runat="server" ID="groupPlaceHolder1"></asp:PlaceHolder>
                        <tr>
                            <td colspan = "3" align="center" >
                                <asp:DataPager ID="DataPager1" runat="server" PagedControlID="lvCustomers" PageSize="5">
                                    <Fields>
                                        <asp:NextPreviousPagerField ButtonType="Link" ShowFirstPageButton="false" ShowPreviousPageButton="true" ShowNextPageButton="false" />
                                        <asp:NumericPagerField ButtonType="Link" />
                                        <asp:NextPreviousPagerField ButtonType="Link" ShowNextPageButton="true" ShowLastPageButton="false" ShowPreviousPageButton = "false" />
                                    </Fields>
                                </asp:DataPager>
                            </td>
                        </tr>
                    </table>
                </LayoutTemplate>
                <GroupTemplate>
                    <tr>
                        <asp:PlaceHolder runat="server" ID="itemPlaceHolder1"></asp:PlaceHolder>
                    </tr>
                </GroupTemplate>
                <ItemTemplate>
                    <tr>
                        <td>
                            <div style="font-family: Garamond; font-size: medium; color: #808000; background-color: #FFFFFF; border: thin solid #808000; margin-left: 90px; margin-top: 5px; width: 600px; height: 170px; padding-top: 20px; padding-left: 20px;">
                                <table>
                                    <tr >
                                        <td>
                                            <table style="font-size: large">
                                                <tr>
                                                    <td style="width: 150px; font-weight: bold;">
                                                        Name</td>
                                                    <td style="width: 250px">
                                                        <%#Eval("name") %>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td style="width: 150px; font-weight: bold;">
                                                        Batch</td>
                                                    <td style="width: 200px">
                                                        <%#Eval("batch") %>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td style="width: 150px; font-weight: bold;">
                                                        Email</td>
                                                    <td style="width: 200px">
                                                        <%#Eval("email") %>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td style="width: 150px; font-weight: bold;">
                                                        Working At</td>
                                                    <td style="width: 200px">
                                                        <%#Eval("workplace") %>
                                                    </td>
                                                    <tr>
                                                        <td style="width: 150px; font-weight: bold;">
                                                            LinkedIn</td>
                                                        <td style="width: 200px; text-decoration:none;font-size:large;">
                                                            <a href="<%#Eval("link") %>" class="fa fa-linkedin"></a>
                                                        </td>
                                                    </tr>
                                            </table>
                                        </td>
                                        <td>
                                            <img src="images/<%#Eval("imagepath") %>" height=150px width=150px />
                                        </td>
                                    </tr>
                                </table>
                            </div>
                        </td>
                    </tr>
                </ItemTemplate>
            </asp:ListView>
    </div>

    
    </div>
</asp:Content>

