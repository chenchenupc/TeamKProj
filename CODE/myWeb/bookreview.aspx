<%@ Page Title="" Language="C#" MasterPageFile="~/adminSite.master" AutoEventWireup="true" CodeFile="bookreview.aspx.cs" Inherits="roomreview" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p>
        <asp:GridView ID="gvcourse" runat="server" AutoGenerateColumns="False"  OnRowDataBound="gvclass_RowDataBound"
                        Width="845px" OnRowCommand="gvcourse_RowCommand" 
            CellPadding="4" ForeColor="#333333" GridLines="None" style="margin-left: 43px">
                        <AlternatingRowStyle BackColor="White" />
                        <Columns>
                        <asp:BoundField DataField="bookid" HeaderText="预约编号">
                                <ItemStyle HorizontalAlign="Center" />
                            </asp:BoundField>
                            <asp:BoundField DataField="roomid" HeaderText="会议室地点">
                                <ItemStyle HorizontalAlign="Center" />
                            </asp:BoundField>
                            <asp:BoundField DataField="username" HeaderText="申请人">
                                <ItemStyle HorizontalAlign="Center" />
                            </asp:BoundField>
                            <asp:BoundField DataField="adminname" HeaderText="审核人" ReadOnly="True">
                                <ItemStyle HorizontalAlign="Center" />
                            </asp:BoundField>
                            <asp:BoundField DataField="review" HeaderText="是否通过审核">
                                <ItemStyle HorizontalAlign="Center" />
                            </asp:BoundField>
                            <asp:BoundField DataField="begintime" HeaderText="会议开始时间">
                                <ItemStyle HorizontalAlign="Center" />
                            </asp:BoundField>
                            <asp:BoundField DataField="endtime" HeaderText="会议结束时间">
                                <ItemStyle HorizontalAlign="Center" />
                            </asp:BoundField>
                
                            <asp:TemplateField HeaderText="审核">
                              <ItemTemplate>
                              <asp:Button ID="Button1" runat="server" CommandArgument='<%#Eval("bookid") %>'
                                        Text='审核'/>
                              </ItemTemplate>
                            </asp:TemplateField>
                        </Columns>
                        
                        <EditRowStyle BackColor="#2461BF" />
                        <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                        <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                        <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                        <RowStyle BackColor="#EFF3FB" />
                        <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                        <SortedAscendingCellStyle BackColor="#F5F7FB" />
                        <SortedAscendingHeaderStyle BackColor="#6D95E1" />
                        <SortedDescendingCellStyle BackColor="#E9EBEF" />
                        <SortedDescendingHeaderStyle BackColor="#4870BE" />
                        
                    </asp:GridView>
        <br />
    </p>
</asp:Content>

