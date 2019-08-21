<%@ control language="c#" inherits="ArenaWeb.Templates.Custom.Luminate.MembersResponsiveHome" CodeFile="LuminateMR-dramatic-home.ascx.cs" %>
<meta charset="utf-8">
<meta name="theme-color" content="#2D2D2D">

<link rel="stylesheet" href="https://use.typekit.net/wev7tsc.css">
<link rel="stylesheet" href="CSS\Luminate\NewMembersResponsive\LuminateMR_dramatic_home.css">

<div class="container-fluid" id="all-content">
    <div class="row header">
        <h1 id="title"><asp:Label ID="orgName" runat="server" /></h1>
        <asp:PlaceHolder ID="HeaderCell" runat="server" />
        <div class="row justift-content-center">
            <div class="col-4">
                <a href="#content">
                    <img id="downScroll" src="/Content/HtmlImages/Public/Images/General/WebSite/DownArrow.svg" alt="">
                </a>
            </div>
        </div>

    </div>
    <div class="row">
        <nav class="navbar navbar-default sticky-top siteNav">
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
            </nav>
    </div>
    <div id="row">
        <div class="col-12">
            <div class="main-top" id="pnMain" runat="server">
                <asp:Label ID="lblPageTitle" runat="server" CssClass="hidden-xs" />
                <asp:PlaceHolder ID="MainCell" runat="server" />
            </div>
        </div>
    </div>
    <div class="row">
        <div class="col-12">
            <div class="main-bot">
                <asp:PlaceHolder ID="MainBottomCell" runat="server" />
            </div>
        </div>
    </div>
    <div class="row">
        <div class="col-12">
            <div class="footer">
                <div class="container">
                    <asp:PlaceHolder ID="FooterCell" runat="server" />
                </div>
            </div>
        </div>
    </div>
</div>

<script type="text/javascript">
    $(document).ready(function(){
        $("a").on("click", function(event){
            if (this.hash !== "") {
                var hash = this.hash;
                $('html, body').animate({
                    scrollTop: $(hash).offset().top
                }, 500, function(){
                    window.location.hash = hash;
                });
            }
        });
    });
</script>
