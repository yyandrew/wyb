class ChatsController < FayeRails::Controller
  channel '/chat/1' do
    subscribe do
      Rails.logger.debug "Received on #{channel}: #{inspect}"

      #created_at = if message['created_at'].present?
                     #Time.parse(message['created_at'])
                   #else
                     #Time.now
                   #end

      #ChatMessage.create(message: message['message'], created_at: created_at)
    end
  end
end
