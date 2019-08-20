<%@ control language="c#" inherits="ArenaWeb.Templates.MembersResponsive, Arena" %>
<meta charset="utf-8">
<meta name="theme-color" content="#2D2D2D">

<link rel="stylesheet" href="CSS\Luminate\NewMembersResponsive\LuminateMR-dramatic-homeome.css">

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

    <div id="content">
        <div class="main-top" id="pnMain" runat="server">
            <asp:Label ID="lblPageTitle" runat="server" CssClass="hidden-xs" />
            <asp:PlaceHolder ID="MainCell" runat="server" />
        </div>
        <div class="main-bot">
            <asp:PlaceHolder ID="MainBottomCell" runat="server" />
        </div>

        <div class="footer">
            <div class="container">
                <asp:PlaceHolder ID="FooterCell" runat="server" />
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



<div class="hidden" runat="server" visible="false">
    <h1>Hello World!!</h1>
    <div id="pnRight" runat="server">
        <asp:PlaceHolder ID="RightCell" runat="server" />
    </div>

    <div id="pnBottom" runat="server">
        <div id="pnBottomLeft" runat="server">
            <asp:PlaceHolder ID="BottomLeftCell" runat="server" />
        </div>
        <div id="pnBottomMiddle" runat="server">
            <asp:PlaceHolder ID="BottomMiddleCell" runat="server" />
        </div>
        <div id="pnBottomRight" runat="server">
            <asp:PlaceHolder ID="BottomRightCell" runat="server" />
        </div>
    </div>
</div>
