<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ExcelUpload.aspx.cs" Inherits="KM.ExcelUpload" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h3>Import / Export database data from/to Excel.</h3>
    <div>
        <table>
            <tr>
                <td>Select File : </td>
                <td>
                    <asp:fileupload id="FileUpload1" runat="server" />
                </td>
                <td>
                    <asp:button id="btnImport" runat="server" text="Import Data" onclick="btnImport_Click" />
                </td>
            </tr>
        </table>
        <div>
            <br />
            <asp:label id="lblMessage" runat="server" font-bold="true" />
            <br />
            <asp:gridview id="gvData" runat="server" autogeneratecolumns="false">
                <EmptyDataTemplate>
                    <div style="padding: 10px">
                        Data not found!
                    </div>
                </EmptyDataTemplate>
                <Columns>
                    <asp:BoundField HeaderText="Employee ID" DataField="ID" />
                    <asp:BoundField HeaderText="FULL NAME" DataField="FULL_NAME" />
                    <asp:BoundField HeaderText="ROLES" DataField="ROLES" />
                    
                    <%--<asp:BoundField HeaderText="SKILL1" DataField="SKILL1" />
                    <asp:BoundField HeaderText="LEVEL1" DataField="LEVEL1" />
                    <asp:BoundField HeaderText="SKILL2" DataField="SKILL2" />
                    <asp:BoundField HeaderText="LEVEL2" DataField="LEVEL2" />
                    <asp:BoundField HeaderText="SKILL3" DataField="SKILL3" />
                    <asp:BoundField HeaderText="LEVEL3" DataField="LEVEL3" />

                    <asp:BoundField HeaderText="P1_NAME" DataField="P1_NAME" />
                    <asp:BoundField HeaderText="P1_SKILL" DataField="P1_SKILL" />
                    <asp:BoundField HeaderText="P1_LEVEL" DataField="P1_LEVEL" />
                    <asp:BoundField HeaderText="P2_NAME" DataField="P2_NAME" />
                    <asp:BoundField HeaderText="P2_SKILL" DataField="P2_SKILL" />
                    <asp:BoundField HeaderText="P2_LEVEL" DataField="P2_LEVEL" />
                    <asp:BoundField HeaderText="P3_NAME" DataField="P3_NAME" />
                    <asp:BoundField HeaderText="P3_SKILL" DataField="P3_SKILL" />
                    <asp:BoundField HeaderText="P3_LEVEL" DataField="P3_LEVEL" />--%>
                    
                </Columns>
            </asp:gridview>

            <%--<asp:GridView ID="GridView1" runat="server" HorizontalAlign="Center" CellPadding="100" Font-Size="Medium" ForeColor="#333333" GridLines="None" Width="50%" CssClass="tableview">
            <AlternatingRowStyle BackColor="White" HorizontalAlign="Center" Font-Size="small" ForeColor="#284775" />
            <EditRowStyle Font-Size="small" BackColor="#999999" />
            <FooterStyle Font-Size="small" BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
            <HeaderStyle Font-Size="small" BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
            <PagerStyle Font-Size="small" BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle Font-Size="small" BackColor="#F7F6F3" ForeColor="#333333" />
            <SelectedRowStyle Font-Size="small" BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
            <SortedAscendingCellStyle Font-Size="small" BackColor="#E9E7E2" />
            <SortedAscendingHeaderStyle Font-Size="small" BackColor="#506C8C" />
            <SortedDescendingCellStyle Font-Size="small" BackColor="#FFFDF8" />
            <SortedDescendingHeaderStyle Font-Size="small" BackColor="#6F8DAE" />
        </asp:GridView>--%>

            <br />
            <%--<asp:Button ID="btnExport" runat="server" Text="Export Data" OnClick="btnExport_Click" />--%>
        </div>
    </div>

</asp:Content>
