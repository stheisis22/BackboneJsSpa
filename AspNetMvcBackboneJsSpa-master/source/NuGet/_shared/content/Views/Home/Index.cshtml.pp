﻿@using System.Web.Optimization
@using $rootnamespace$.Helpers
@section Navigation {
  @Html.Partial("Navigation")
}
<div class="container-fluid">
  <div class="row-fluid">
    <div id="container" class="span12" role="main">
      @{ Html.IncludeClientViews(); }
    </div>
  </div>
  <script id="page-template" type="text/html">
    <h2 class="page-header">{{title}}</h2>
    <div>{{content}}</div>
  </script>
</div>
@section Scripts {
  @Scripts.Render("~/bundles/backbone", "~/bundles/application")
  <script>
    app = Application;
    app.clientUrlPrefix = '@Html.Raw(Url.ClientUrlPrefix())';
    app.serverUrlPrefix = '@Html.Raw(Url.ApiUrlPrefix())';
    jQuery(function() {
      app.start({
        userSignnedIn: @Html.Raw(Request.IsAuthenticated.ToString().ToLowerInvariant())
      });
    });
  </script>
}
