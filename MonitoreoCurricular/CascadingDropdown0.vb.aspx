<%@ Page Language="VB" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="cc1" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
  <title>Control Toolkit</title>
</head>
<body>
  <form id="form1" runat="server">
 
      
    <asp:ScriptManager ID="asm" runat="server" />
    <div>
    Vendor: <asp:DropDownList ID="VendorsList" runat="server" />
    </div>
    <cc1:CascadingDropDown ID="ccd1" runat="server"
        ServicePath="CascadingDropdown0.vb.asmx" 
        ServiceMethod="GetVendors" 
        TargetControlID="VendorsList" 
        PromptText="Please select a model"
        LoadingText="[Loading models...]"
        Category="Vendor" />
  </form>
</body>
</html>
