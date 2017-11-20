<%@ Page Language="C#" AutoEventWireup="true" EnableViewStateMac="false"CodeFile="getThesisForm.aspx.cs" Inherits="getThesisForm" %>



<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>

    <div id="th">
        <form runat="server" action="addTh.aspx">
            <div class="form-group">
                <label for="title">Title</label>
                <input type="text" class="form-control" name="title" id="title" placeholder="Enter Title">
            </div>
            <div class="form-group">
                <label for="stdname">Name of The students</label>
                <input type="text" class="form-control" name="stdname" id="stdname" placeholder="Enter Name of The Students">
            </div>
            <div class="form-group">
                <label for="stdroll">Roll of The students</label>
                <input type="text" class="form-control" name="stdroll" id="stdroll" placeholder="Enter Roll of The Students">
            </div>
            <div class="form-group">
                <label for="supervisor">Name of The Supervisor</label>
                <input type="text" class="form-control" name="supervisor" id="supervisor" placeholder="Enter Name of Supervisor">
            </div>
            <button type="submit" class="btn btn-default">Submit</button>
        </form>
        <asp:Label ID="Label1" runat="server" Text=""></asp:Label>
    </div>

</body>
</html>
