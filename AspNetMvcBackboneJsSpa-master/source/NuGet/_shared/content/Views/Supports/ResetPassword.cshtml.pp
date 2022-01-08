﻿@using $rootnamespace$.Models
@model ResetPassword
@{ ViewBag.Title = "Reset Password"; }
<div class="container-fluid">
  <div class="row-fluid">
    <div id="container" class="span12" role="main">
      <h2 class="page-header">@ViewBag.Title</h2>
      <div>
        @using (Html.BeginForm()) {
          Html.EnableClientValidation(enabled: false);
          @Html.Partial("ValidationSummary")
          <div class="control-group">
            @Html.LabelFor(m => m.Password, new { @class = "control-label" })
            <div class="controls">
              <div class="input-prepend">
                <span class="add-on"><i class="icon-key"></i></span>
                @Html.EditorFor(m => m.Password)
              </div>
            </div>
          </div>
          <div class="control-group">
            @Html.LabelFor(m => m.ConfirmPassword, new { @class = "control-label" })
            <div class="controls">
              <div class="input-prepend">
                <span class="add-on"><i class="icon-key"></i></span>
                @Html.EditorFor(m => m.ConfirmPassword)
              </div>
            </div>
          </div>
          <div class="form-actions">
            @Html.AntiForgeryToken()
            <button type="submit" class="btn btn-primary">Submit</button>
            <a class="btn" href="@Url.Action("Index", "Home")">Cancel</a>
          </div>
        }
      </div>
    </div>
  </div>
</div>
