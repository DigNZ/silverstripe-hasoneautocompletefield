<div id="$HolderID" class="form-group field<% if $extraClass %> $extraClass<% end_if %>"  data-default-text="$defaultText" data-autocomplete-delay="$getAutocompleteDelay">
    <% if $Title %>
        <label for="$ID" id="title-$ID" class="form__field-label">$Title</label>
    <% end_if %>
    <div class="form__field-holder<% if not $Title %> form__field-holder--no-label<% end_if %>">
        <% loop $Field.FieldList %>
			$Field
		<% end_loop %>
	
        <%-- TODO: change $MessageType to match Bootstraps alert types, e.g. alert-info, alert-danger etc --%>
        <% if $Message %><p class="alert $MessageType" role="alert" id="message-$ID">$Message</p><% end_if %>
        <% if $Description %><p class="form__field-description form-text" id="describes-$ID">$Description</p><% end_if %>
    </div>
    <% if $RightTitle %><p class="form__field-extra-label" id="extra-label-$ID">$RightTitle</p><% end_if %>
</div>
