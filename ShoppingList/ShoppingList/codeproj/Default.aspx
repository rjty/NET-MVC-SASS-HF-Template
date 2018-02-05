<%@ Page Language="C#" AutoEventWireup="true"  CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>Untitled Page</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:ListBox ID="uxListBox1" runat="server" SelectionMode="multiple" />
        <asp:Button id="uxRightBtn" runat="server" OnClick="MoveRight" Text=" > " />
        <asp:Button id="uxLeftBtn" runat="server" OnClick="MoveLeft" Text=" < " />
        <asp:ListBox ID="uxListBox2" runat="server" SelectionMode="multiple" />
    </div>
    </form>
</body>
</html>
