<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="ShoppingList._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <div>



    </div>

    <div class="row">
        <div class="col-md-4">
            <h2>Current List</h2>
             <asp:ListBox ID="uxListBox1" runat="server" SelectionMode="multiple" OnSelectedIndexChanged="uxListBox1_SelectedIndexChanged" Width="237px" class="block-center liststyle" />

        </div>
        <div class="col-md-4" class="text-center block-center">
            <h2>Add Item</h2>

                <asp:TextBox ID="TextBoxItem" runat="server" OnTextChanged="TextBoxItem_TextChanged" Width="189px"></asp:TextBox>
                <asp:Button id="SubmitNewItem" runat="server" Text=" Enter " OnClick="SubmitNewItem_Click"  />

            <h2>Transfer</h2>
                    <asp:Button id="uxLeftBtn" runat="server" OnClick="MoveLeft" Text=" ◄ " />
                    <asp:Button id="uxRightBtn" runat="server" OnClick="MoveRight" Text=" ► "  />
            <h2>Move</h2>
                    <asp:Button id="uxMoveUp" runat="server" OnClick="MoveUp" Text="▲" />
                    <asp:Button id="uxMoveDown" runat="server" OnClick="MoveDown" Text=" ▼ "  />
        </div>
        <div class="col-md-4">
            <h2>New List</h2>
             <asp:ListBox ID="uxListBox2" runat="server" SelectionMode="multiple" OnSelectedIndexChanged="uxListBox2_SelectedIndexChanged" Width="237px" class="block-center liststyle" />
        </div>
    </div>

</asp:Content>
