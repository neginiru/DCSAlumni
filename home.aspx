<%@ Page Title="" Language="C#" MasterPageFile="~/site.master" AutoEventWireup="true" CodeFile="home.aspx.cs" Inherits="home" %>


<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
   
                <table style="margin-left: 68px; width: 90px;">
                <tr><td style="color: #FFFFFF;">Passing Year</td></tr>
                <tr>
                <td ><a href="batch1.aspx" style="text-decoration:  none;color: #FFFFFF"">1992-2000</a><br />
                    </td></tr>
                <tr><td ><a href="batch2.aspx" style="text-decoration:  none;color: #FFFFFF"">2001-2006</a><br />
                    </td></tr>
                <tr><td><a href="batch3.aspx" style="text-decoration: none;color: #FFFFFF">2007-2013</a><br />
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
<asp:Content ID="Content1" ContentPlaceHolderID="MainContentPlaceHolder1" Runat="Server">
    <div style="padding: 5px; margin: 0px 5px 4px 27px; vertical-align: top; background-color: #FFFFFF;border: thin inset #C0C0C0;  width: 939px; height: 527px;">
            <asp:ScriptManager ID="ScriptManager1" runat="server">
            </asp:ScriptManager>
            <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                <ContentTemplate>
                    <asp:Timer ID="Timer1" runat="server" Interval="5000" ontick="Timer1_Tick">
                    </asp:Timer>
                    <table style=" margin: 10px 10px 0px 31px; padding: 10px; height: 338px; width: 875px;">
                    <tr><td><br />
                        <asp:Image ID="Image1" runat="server" BorderStyle="Outset" BorderWidth="1px" 
                            Height="246px" Width="818px" 
                            style="margin-left: 23px; margin-bottom: 0px" />
                        <br />
                        </td>
                        </tr>
                    <tr><td 
                                style="text-align: justify; font-family: Garamond; font-weight: bold;">
                            
                                <b style="font-family: Garamond">
                                <br  />
                                The Department is 
                                running Master of Computer Applications (MCA) (3 year full time course) and was 
                                initiated in 1992-93. Two courses of (i) Bachelors of Science (Honors School) in 
                                Computer Science (ii) Masters of Science (Honors School) in Computer Science 
                                have been introduced from year 2001 and year 2004, respectively. Admissions are 
                                held through an annual entrance test conducted by the Panjab University. Ph.D. 
                                program has been started from year 2005. The students at the Department have the 
                                unique opportunity of working in various development environments like MS-DOS, 
                                LINUX, MS Windows(9x/XP/NT/2000 / vista / 7). The students also have the 
                                opportunity to work on Internet development tools among other Visual and 
                                Non-Visual ones. The department has its own library with over 2700 books for 
                                exclusive use of the students and the faculty. The library has separate magazine 
                                and journal sections. Various computer journals are available online through the 
                                University Library.</b><br />
                            
                            </td>
                        </tr>
                    </table>
 
                </ContentTemplate>

            </asp:UpdatePanel>

      </div>
           
</asp:Content>

