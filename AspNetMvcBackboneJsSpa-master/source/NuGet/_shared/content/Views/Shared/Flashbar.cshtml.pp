﻿@using $rootnamespace$.Infrastructure
@{ var flashMessages = new FlashMessages(ViewContext.Controller.TempData); }
@foreach (var flashMessage in flashMessages.Where(p =>
  !string.IsNullOrWhiteSpace(p.Key) &&
  !string.IsNullOrWhiteSpace(p.Value))) {
  <div class="alert alert-@flashMessage.Key.ToLowerInvariant() fade in flash-bar">
    <button type="button" class="close" data-dismiss="alert" title="close">&times;</button>
    @{
      var icon = string.Empty;
      switch (flashMessage.Key.ToLowerInvariant())
      {
        case "success":
          {
            icon = "icon-ok-sign";
            break;
          }
        case "error":
          {
            icon = "icon-warning-sign";
            break;
            
          }
        case "info":
          {
            icon = "icon-info-sign";
            break;
            
          }
      }
    };
    @if (!string.IsNullOrWhiteSpace(icon)) {
      <i class="@icon"></i>
    }
    <span>@Html.Raw(flashMessage.Value)</span>
  </div>
}
