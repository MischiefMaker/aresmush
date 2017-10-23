module AresMUSH
  module Rooms
    class CharDisconnectedEventHandler      
      def on_event(event)
        client = event.client
        char = Character[event.char_id]
        if (char.is_guest?)
          Rooms.move_to(client, char, Game.master.welcome_room)
        end
      end  
    end
  end
end
