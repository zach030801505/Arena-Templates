<%@ control language="c#" inherits="ArenaWeb.Templates.Custom.Luminate.MembersResponsive" CodeFile="LuminateMR-dramatic.ascx.cs" %>
<meta charset="utf-8">
<meta name="theme-color" content="#2D2D2D">

<link rel="stylesheet" href="https://use.typekit.net/wev7tsc.css">
<link rel="stylesheet" href="CSS\Luminate\NewMembersResponsive\LuminateMR_dramatic.css">


<nav class="navbar navbar-expand-md navbar-dark bg-dark sticky-top">
    <a class="navbar-brand hidden-sm hidden-md hidden-lg">
        <asp:Label ID="orgName" runat="server" />
    </a>
    <button type="button" class="navbar-toggler" data-toggle="collapse" data-target="#top-nav" aria-controls="top-nav" aria-expanded="false" aria-label="Toggle navigation" width="100%" height="100%">
        <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="top-nav">
        <asp:PlaceHolder ID="NavCell" runat="server" />
    </div>
</nav>

<div class="container-fluid mr-0 ml-0">
    <div class="row mr-0">
        <div class="col header" style="
            background-image: url('<%= HeadImgSetting %>');
            background-color: black;
            background-size: cover;
            background-repeat: no-repeat;
            background-position: center;
        ">
            <h1 id="title"><asp:Label ID="lblPageTitle" runat="server" /></h1>
            <asp:PlaceHolder ID="HeaderCell" runat="server" />
        </div>
    </div>
</div>

<div class="main-top">
    <div class="container-fluid mr-0 ml-0">
        <div class="row mr-0">
            <div class="col-sm-9" style="padding-right:0;" id="pnMain" runat="server">
                <div class="content">
                    <asp:PlaceHolder ID="MainCell" runat="server" />
                </div>
            </div>

            <div class="col-sm-3" id="pnRight" runat="server">
                <div class="sidebar sidebar-right">
                    <asp:PlaceHolder ID="RightCell" runat="server" />
                </div>
            </div>
        </div>
        <div class="row mr-0">
            <div class="col-xs-12 text-center">
                <asp:PlaceHolder ID="MainBottomCell" runat="server" />
            </div>
        </div>
    </div>
</div>

<div class="main-bot" id="pnBottom" runat="server">
    <div class="container-fluid mr-0 ml-0">
        <div class="row mr-0">
            <div class="col-sm-4" id="pnBottomLeft" runat="server">
                <div class="col">
                    <asp:PlaceHolder ID="BottomLeftCell" runat="server" />
                </div>
            </div>
            <div class="col-sm-4" id="pnBottomMiddle" runat="server">
                <div class="col">
                    <asp:PlaceHolder ID="BottomMiddleCell" runat="server" />
                </div>
            </div>
            <div class="col-sm-4" id="pnBottomRight" runat="server">
                <div class="col">
                    <asp:PlaceHolder ID="BottomRightCell" runat="server" />
                </div>
            </div>
        </div>
    </div>
</div>

<div class="footer">
    <div class="container-fluid mr-0 ml-0">
        <div class="row mr-0">
            <div class="col-12">
                <asp:PlaceHolder ID="FooterCell" runat="server" />
            </div>
        </div>
    </div>
</div>
