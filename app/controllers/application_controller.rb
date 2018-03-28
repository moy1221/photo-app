class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :authenticate_user!

  def fading_flash_message(text, seconds=3)
    text +
        <<-EOJS
      <script type='text/javascript'>
        Event.observe(window, 'load',function() { 
          setTimeout(function() {
            message_id = $('notice') ? 'notice' : 'warning';
            new Effect.Fade(message_id);
          }, #{seconds*1000});
        }, false);
      </script>
    EOJS
  end
end
