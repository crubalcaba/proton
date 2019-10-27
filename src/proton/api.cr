module Proton
  module API
    extend self

    def client_create
      TDLib.td_json_client_create
    end

    def client_send(client, params)
      puts "Outgoing: " + params.to_pretty_json
      TDLib.td_json_client_send(client, params.to_json)
    end

    def client_execute(client, params)
      TDLib.td_json_client_execute(client, params.to_json)
    end

    def client_receive(client, timeout)
      update = TDLib.td_json_client_receive(client, timeout.to_f)
      if update
        update = String.new(update)
        Update.from_json(update) if update
      end
    end

    def client_destroy(client)
      TDLib.td_json_client_destroy(client)
    end

    def set_log_verbosity_level(level)
      TDLib.td_set_log_verbosity_level(level)
    end

    def set_log_file_path(path)
      TDLib.td_set_log_file_path(path)
    end
  end
end
