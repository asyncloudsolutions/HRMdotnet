<%@ Page Title="" Language="C#" MasterPageFile="~/hrm.Master" AutoEventWireup="true" CodeBehind="Experience.aspx.cs" Inherits="hrmportal.Experience" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">    
<divstyle="width: 90%; margin-right: 5%; margin-left: 5%; text-align: center">

            <asp:ScriptManagerrunat="server"ID="ScriptManager1"/>

 

            <h1>Grid View System</h1>

 

            <asp:UpdatePanelID="upCrudGrid"runat="server">

                <ContentTemplate>

                    <asp:GridViewID="grdvCrudOperation"runat="server"Width="940px"HorizontalAlign="Center"

                        OnRowCommand="GridView1_RowCommand"AutoGenerateColumns="false"AllowPaging="true"

                        DataKeyNames="ID"CssClass="table table-hover table-striped">

                        <Columns>

                            <asp:ButtonField CommandName="detail"ControlStyle-CssClass="btn btn-info"ButtonType="Button"Text="Detail"HeaderText="Detailed View">

                                <ControlStyleCssClass="btn btn-info"></ControlStyle>

                            </asp:ButtonField>

                            <asp:ButtonField CommandName="editRecord"ControlStyle-CssClass="btn btn-info"ButtonType="Button"Text="Edit"HeaderText="Edit Record">

                                <ControlStyleCssClass="btn btn-info"></ControlStyle>

                            </asp:ButtonField>

                            <asp:ButtonField CommandName="deleteRecord"ControlStyle-CssClass="btn btn-info"ButtonType="Button"Text="Delete"HeaderText="Delete Record">

                                <ControlStyleCssClass="btn btn-info"></ControlStyle>

                            </asp:ButtonField>

                            <asp:BoundField DataField="ID"HeaderText="ID"/>

                            <asp:BoundField DataField="Name"HeaderText="Name"/>

                            <asp:BoundField DataField="EmailID"HeaderText="EmailID"/>

                            <asp:BoundField DataField="Address"HeaderText="Address"/>

                            <asp:BoundField DataField="Contact"HeaderText="Contact NO"/>

                        </Columns>

                    </asp:GridView>

                    <asp:ButtonID="btnAdd"runat="server"Text="Add New Record"CssClass="btn btn-info"OnClick="btnAdd_Click"/>

                </ContentTemplate>

                <Triggers>

                </Triggers>

            </asp:UpdatePanel>

 

            <divid="detailModal" class="modal hide fade"tabindex="-1"role="dialog"aria-labelledby="myModalLabel"aria-hidden="true">

                <divclass="modal-header">

                    <buttontype="button" class="close"data-dismiss="modal"aria-hidden="true">×</button>

                    <h3id="myModalLabel">Details</h3>

                </div>

                <divclass="modal-body">

                    <asp:UpdatePanelID="UpdatePanel2"runat="server">

                        <ContentTemplate>

                            <asp:DetailsView ID="DetailsView1"runat="server"CssClass="table table-bordered table-hover"BackColor="White"ForeColor="Black"FieldHeaderStyle-Wrap="false"FieldHeaderStyle-Font-Bold="true"FieldHeaderStyle-BackColor="LavenderBlush"FieldHeaderStyle-ForeColor="Black"BorderStyle="Groove"AutoGenerateRows="False">

                                <Fields>

                                    <asp:BoundField DataField="Name"HeaderText="Name"/>

                                    <asp:BoundField DataField="EmailID"HeaderText="EmailID"/>

                                    <asp:BoundField DataField="Address"HeaderText="Address"/>

                                    <asp:BoundField DataField="Contact"HeaderText="Contact NO"/>

                                </Fields>

                            </asp:DetailsView>

                        </ContentTemplate>

                        <Triggers>

                            <asp:AsyncPostBackTrigger ControlID="grdvCrudOperation"EventName="RowCommand"/>

                            <asp:AsyncPostBackTrigger ControlID="btnAdd"EventName="Click"/>

                        </Triggers>

                    </asp:UpdatePanel>

                    <divclass="modal-footer">

                        <buttonclass="btn btn-info"data-dismiss="modal"aria-hidden="true">Close</button>

                    </div>

                </div>

            </div>

 

            <divid="editModal" class="modal hide fade"tabindex="-1"role="dialog"aria-labelledby="editModalLabel"aria-hidden="true">

                <divclass="modal-header">

                    <buttontype="button" class="close"data-dismiss="modal"aria-hidden="true">×</button>

                    <h3id="editModalLabel">Edit Record</h3>

                </div>

                <asp:UpdatePanelID="upEdit"runat="server">

                    <ContentTemplate>

                        <divclass="modal-body">

                            <asp:HiddenField ID="HfUpdateID"runat="server"/>

                            <tableclass="table">

                                <tr>

                                    <td>Name : </td>

                                    <td>

                                        <asp:TextBox ID="txtNameUpdate"runat="server"></asp:TextBox></td>

                                    <td>

                                </tr>

                                <tr>

                                    <td>EmailID</td>

                                    <td>

                                        <asp:TextBox ID="txtEmailIDUpdate"runat="server"></asp:TextBox></td>

                                </tr>

                                <tr>

                                    <td>Address</td>

                                    <td>

                                        <asp:TextBox ID="txtAddressUpdate"runat="server"></asp:TextBox></td>

                                </tr>

                                <tr>

                                    <td>Contact No</td>

                                    <td>

                                        <asp:TextBox ID="txtContactUpdate"runat="server"></asp:TextBox></td>

                                </tr>

                            </table>

                        </div>

                        <divclass="modal-footer">

                            <asp:Label ID="lblResult"Visible="false"runat="server"></asp:Label>

                            <asp:Button ID="btnSave"runat="server"Text="Update"CssClass="btn btn-info"OnClick="btnSave_Click"/>

                            <buttonclass="btn btn-info"data-dismiss="modal"aria-hidden="true">Close</button>

                        </div>

                    </ContentTemplate>

                    <Triggers>

                        <asp:AsyncPostBackTrigger ControlID="grdvCrudOperation"EventName="RowCommand"/>

                        <asp:AsyncPostBackTrigger ControlID="btnSave"EventName="Click"/>

                    </Triggers>

                </asp:UpdatePanel>

            </div>

 

            <divid="addModal" class="modal hide fade"tabindex="-1"role="dialog"aria-labelledby="addModalLabel"aria-hidden="true">

                <divclass="modal-header">

                    <buttontype="button" class="close"data-dismiss="modal"aria-hidden="true">×</button>

                    <h3id="addModalLabel">Add New Record</h3>

                </div>

                <asp:UpdatePanelID="upAdd"runat="server">

                    <ContentTemplate>

                        <divclass="modal-body">

                            <tableclass="table table-bordered table-hover">

                                <tr>

                                    <td>Name : </td>

                                    <td>

                                        <asp:TextBox ID="txtNameAdd"runat="server"></asp:TextBox></td>

                                </tr>

                                <tr>

                                    <td>EmailID :</td>

                                    <td>

                                        <asp:TextBox ID="txtEmailIDAdd"runat="server"></asp:TextBox></td>

                                </tr>

                                <tr>

                                    <td>Address:</td>

                                    <td>

                                        <asp:TextBox ID="txtAddressAdd"runat="server"></asp:TextBox></td>

                                </tr>

                                <tr>

                                    <td>Contact No:</td>

                                    <td>

                                        <asp:TextBox ID="txtContactAdd"runat="server"></asp:TextBox></td>

                                </tr>

                            </table>

                        </div>

                        <divclass="modal-footer">

                            <asp:Button ID="btnAddRecord"runat="server"Text="Add"CssClass="btn btn-info"OnClick="btnAddRecord_Click"/>

                            <buttonclass="btn btn-info"data-dismiss="modal"aria-hidden="true">Close</button>

                        </div>

                    </ContentTemplate>

                    <Triggers>

                        <asp:AsyncPostBackTrigger ControlID="btnAddRecord"EventName="Click"/>

                    </Triggers>

                </asp:UpdatePanel>

            </div>

 

            <divid="deleteModal" class="modal hide fade"tabindex="-1"role="dialog"aria-labelledby="delModalLabel"aria-hidden="true">

                <divclass="modal-header">

                    <buttontype="button" class="close"data-dismiss="modal"aria-hidden="true">×</button>

                    <h3id="delModalLabel">Delete Record</h3>

                </div>

                <asp:UpdatePanelID="upDel"runat="server">

                    <ContentTemplate>

                        <divclass="modal-body">

                            Are you sure you want to delete the record?

                            <asp:HiddenField ID="HfDeleteID"runat="server"/>

                        </div>

                        <divclass="modal-footer">

                            <asp:Button ID="btnDelete"runat="server"Text="Delete"CssClass="btn btn-info"OnClick="btnDelete_Click"/>

                            <buttonclass="btn btn-info"data-dismiss="modal"aria-hidden="true">Cancel</button>

                        </div>

                    </ContentTemplate>

                    <Triggers>

                        <asp:AsyncPostBackTrigger ControlID="btnDelete"EventName="Click"/>

                    </Triggers>

                </asp:UpdatePanel>

            </div>

 

        </div>
</asp:Content>
