# ClientSideValidations Initializer

require 'client_side_validations/simple_form' if defined?(::SimpleForm)
require 'client_side_validations/formtastic'  if defined?(::Formtastic)

# Uncomment the following block if you want each input field to have the validation messages attached.
ActionView::Base.field_error_proc = Proc.new do |html_tag, instance|
  unless html_tag =~ /^<label/
    %{<div class="field_with_errors">#{html_tag}<p for="#{instance.send(:tag_id)}" class="help-block">#{instance.error_message.first}</p></div>}.html_safe
  else
    %{<div class="field_with_errors">#{html_tag}</div>}.html_safe
  end
end

