Rack::MiniProfiler.config.start_hidden = true

Rack::MiniProfiler.config.authorization_mode = :whitelist
Rack::MiniProfiler.config.storage = Rack::MiniProfiler::MemoryStore