namespace ArenaWeb.Templates.Custom.Luminate
{
    using Arena.Portal;
    using System;
    using System.Web.UI;
    using System.Web.UI.HtmlControls;
    using System.Web.UI.WebControls;

    /// <summary>
    ///		Summary description for ArenaMain.
    /// </summary>
    public partial class MembersResponsive : PortalControl
    {
        #region Template Settings

        // Template Settings
        [ImageSetting("Page Icon", "Optional Image URL to use as the Icon for the page.  Default is '~/images/#.jpg' where # is the current Page ID.", false)]
        public string HeadingIconSetting { get { return CurrentPortalPage.Setting("HeadingIcon", "", false); } }

        [ImageSetting("Header Img", "The webpage head img, if blank it will be black", false)]
        public string HeadImgSetting { get { return CurrentPortalPage.Setting("HeadImg", "", false); } }

        [BooleanSetting("Bottom Area Dynamic Sizing", "Determines if Bottom Three columns (Left, Middle, Right) can dynamically resize due to where modules are added. Example, module in BottomLeft only would cause that Column to fill entire area", false, true)]
        public bool DynamicSizingSetting { get { return Convert.ToBoolean(CurrentPortalPage.Setting("DynamicSizing", "true", false)); } }

        #endregion

        #region Content Areas

        public PlaceHolder Header { get { return HeaderCell; } }
        public PlaceHolder Nav { get { return NavCell; } }
        public PlaceHolder Main { get { return MainCell; } }
        public PlaceHolder Right { get { return RightCell; } }
        public PlaceHolder MainBottom { get { return MainBottomCell; } }
        public PlaceHolder BottomLeft { get { return BottomLeftCell; } }
        public PlaceHolder BottomMiddle { get { return BottomMiddleCell; } }
        public PlaceHolder BottomRight { get { return BottomRightCell; } }
        public PlaceHolder Footer { get { return FooterCell; } }

        protected String BootstrapCSS = string.Empty;
        protected String BootstrapJS = string.Empty;

        #endregion

        protected void Page_Load(object sender, System.EventArgs e)
        {
            //phBreadCrumbs.Controls.Clear();
            //phBreadCrumbs.Controls.Add(new LiteralControl(CurrentPortalPage.BreadCrumbs.ToString()));

            AddMetaTag("viewport", "width=device-width, initial-scale=1");
            orgName.Text = CurrentOrganization.Name;


			//BasePage.AddCssLink(this.Page, CurrentPortal.BootstrapCSSInclude);
            BasePage.AddCssLink(this.Page, "https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css");
            //BasePage.AddCssLink(this.Page, "css/bootstrap-social.css");

			//BasePage.AddJavascriptInclude(this.Page, CurrentPortal.BootstrapJSInclude);
			//BasePage.AddJavascriptInclude(this.Page, "Include/MembersResponsive/bootstrap-hover-dropdown.min.js");
			//BasePage.AddJavascriptInclude(this.Page, "Include/MembersResponsive/jquery.matchHeight-min.js");
			//BasePage.AddJavascriptInclude(this.Page, "Include/MembersResponsive/template.js");
            BasePage.AddJavascriptInclude(this.Page, "https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js");
            BasePage.AddJavascriptInclude(this.Page, "https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js");
            BasePage.AddJavascriptInclude(this.Page, "https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js");
		}

        protected override void Render(HtmlTextWriter writer)
        {

            lblPageTitle.Text = this.Title;
            lblPageTitle.Visible = true;

            //phBreadCrumbs.Visible = (ShowBreadCrumbsSetting.ToLower() != "false");

            if ((BottomRight.Controls.Count == 0) & (BottomMiddle.Controls.Count == 0) & (BottomLeft.Controls.Count == 0))
            {
                pnBottom.Visible = false;
            }

            if (DynamicSizingSetting)
                SetBottomColumnSizes();

            if (RightCell.Controls.Count == 0)
            {
                pnRight.Visible = false;
                pnMain.Attributes.Add("class", "col-sm-12");
            }

            base.Render(writer);
        }

        private void SetBottomColumnSizes()
        {
            bool leftSide = BottomLeft.Controls.Count != 0;
            bool middle = BottomMiddle.Controls.Count != 0;
            bool rightSide = BottomRight.Controls.Count != 0;

            if (leftSide & middle & rightSide)
            {
                pnBottomLeft.Attributes.Add("class", "col-sm-4");
                pnBottomMiddle.Attributes.Add("class", "col-sm-4");
                pnBottomRight.Attributes.Add("class", "col-sm-4");
            }
            else if (leftSide & !middle & !rightSide)
            {
                pnBottomLeft.Attributes.Add("class", "col-sm-12");
                pnBottomMiddle.Visible = false;
                pnBottomRight.Visible = false;
            }
            else if (leftSide & middle & !rightSide)
            {
                pnBottomLeft.Attributes.Add("class", "col-sm-6");
                pnBottomMiddle.Attributes.Add("class", "col-sm-6");
                pnBottomRight.Visible = false;
            }
            else if (leftSide & !middle & rightSide)
            {
                pnBottomLeft.Attributes.Add("class", "col-sm-6");
                pnBottomMiddle.Visible = false;
                pnBottomRight.Attributes.Add("class", "col-sm-6");
            }
            else if (!leftSide & middle & !rightSide)
            {
                pnBottomLeft.Visible = false;
                pnBottomMiddle.Attributes.Add("class", "col-sm-12");
                pnBottomRight.Visible = false;
            }
            else if (!leftSide & middle & rightSide)
            {
                pnBottomLeft.Visible = false;
                pnBottomMiddle.Attributes.Add("class", "col-sm-6");
                pnBottomRight.Attributes.Add("class", "col-sm-6");
            }
            else if (!leftSide & !middle & rightSide)
            {
                pnBottomLeft.Visible = false;
                pnBottomMiddle.Visible = false;
                pnBottomRight.Attributes.Add("class", "col-sm-12");
            }


        }

        protected void AddMetaTag(string metaName, string metaValue)
        {
            HtmlMeta child = new HtmlMeta();
            child.Name = metaName;
            child.Content = metaValue;
            Page.Header.Controls.AddAt(0, child);
            Page.Header.Controls.AddAt(0, new LiteralControl("\n\t\t"));
        }

        #region Web Form Designer generated code
        override protected void OnInit(EventArgs e)
        {
            //
            // CODEGEN: This call is required by the ASP.NET Web Form Designer.
            //
            InitializeComponent();
            base.OnInit(e);
        }

        /// <summary>
        ///		Required method for Designer support - do not modify
        ///		the contents of this method with the code editor.
        /// </summary>
        private void InitializeComponent()
        {
        }
        #endregion

    }
}
