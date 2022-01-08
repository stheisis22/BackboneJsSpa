﻿@using $rootnamespace$.Helpers
<div id="profile-dialog" class="modal hide fade">
  <div class="modal-header">
    <button type="button" class="close" data-dismiss="modal" aria-hidden="true" title="close">&times;</button>
    <h3>My Account</h3>
  </div>
  <div class="modal-body">
    <div class="modal-section">
      @Html.ClientView("ChangePassword")
    </div>
    <div class="modal-section">
      @Html.ClientView("SignOut")
    </div>
  </div>
</div>
