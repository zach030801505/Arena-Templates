<%@ control language="c#" inherits="ArenaWeb.Templates.MembersResponsive, Arena" %>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">


<!--[if lt IE 9]>
	<script src="//oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.min.js"></script>
	<script src="//oss.maxcdn.com/libs/respond.js/1.3.0/respond.min.js"></script>
	<![endif]-->

<link href="//fonts.googleapis.com/css?family=Roboto:300,400,700,300italic,400italic,700italic" rel="stylesheet" type="text/css">
<link rel="stylesheet" href="CSS\Luminate\MembersResponsive\MembersResponsive.css">

<div class="header">
    <div class="container-fluid">
         <h1>
            <asp:Label ID="orgName" runat="server" /></h1>
            <asp:PlaceHolder ID="HeaderCell" runat="server" />
            <nav class="navbar navbar-default siteNav">
                <div class="container">
                    <div class="container-fluid">
                        <div class="navbar-header">
                            <a class="navbar-brand hidden-sm hidden-md hidden-lg">
                                <asp:Label ID="lblNavTitle" runat="server" /></a>
                            <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#top-nav">
                                <span class="sr-only">Toggle navigation</span>
                                <span class="icon-bar"></span>
                                <span class="icon-bar"></span>
                                <span class="icon-bar"></span>
                            </button>
                        </div>

                        <div class="collapse navbar-collapse" id="top-nav">
                             <asp:PlaceHolder ID="NavCell" runat="server" />
                        </div>
                    </div>
                </div>
            </nav>

    </div>
</div>



<div class="main-top">
    <div class="container">
        <div class="row">
            <div class="col-sm-9" id="pnMain" runat="server">
                <div class="content">
                    <h2>
                        <asp:Label ID="lblPageTitle" runat="server" CssClass="hidden-xs" /></h2>
                    <asp:PlaceHolder ID="MainCell" runat="server" />
                </div>
            </div>

            <div class="col-sm-3" id="pnRight" runat="server">
                <div class="sidebar sidebar-right">
                    <asp:PlaceHolder ID="RightCell" runat="server" />
                </div>
            </div>
        </div>
        <div class="row">
            <div class="col-xs-12 text-center">
                <asp:PlaceHolder ID="MainBottomCell" runat="server" />
            </div>
        </div>
    </div>
</div>

<div class="main-bot" id="pnBottom" runat="server">
    <div class="container">
        <div class="row">
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
    <div class="container">
        <asp:PlaceHolder ID="FooterCell" runat="server" />
    </div>
</div>
