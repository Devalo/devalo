module SubscribesHelper

  def flash_notices
    if flash[:error]
      
      javascript_tag(
        '$(window).load(function(){
        $("#subscribe_modal_error").modal("show");
        });')
    elsif flash[:info]
      javascript_tag(
        '$(window).load(function(){
        $("#subscribe_modal_success").modal("show");
        });')
      
    end
  end
end



# <% flash.each do |message_type, message| %>
#        <div class="alert alert-<%= message_type %>"><%= message %></div>
#      <% end %>


#javascript_tag('console.log ("Noe gikk galt!!")')


       #content_tag('div', message,     class: "alert alert-<%= message_type %>")
#       content_tag("h2", q.name, :class => "title")