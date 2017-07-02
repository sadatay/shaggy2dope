Lita.configure do |config|

  # System

  ## Name
  config.robot.name = "shaggy2dope"

  ## Locale
  config.robot.locale = :en

  ## Log Level
  ## (:debug, :info, :warn, :error, :fatal)
  config.robot.log_level = :info

  ## Adapter
  config.robot.adapter = :slack
  config.adapters.slack.token = ENV["LITA_SLACK_ADAPTER_TOKEN"]

  ## Redis (Assumes Heroku's "Redis To Go" addon)
  config.redis[:url] = ENV["REDISTOGO_URL"]
  config.http.port = ENV["PORT"]

  # Handlers
  
  ## Google Directions [lita-directions]
  config.handlers.directions.google_api_key = ENV["LITA_GOOGLE_DIRECTIONS_KEY"]

  ## Forecast.io [lita-forecast]
  config.handlers.forecast.api_key = ENV["LITA_FORECAST_IO_KEY"]

  ## Genius [lita-genius]
  config.handlers.genius.access_token = ENV["LITA_GENIUS_KEY"]

  ## Hashtag [lita-hashtag] (google images and giphy mashup)
  config.handlers.hashtag.safe_search = :off
  config.handlers.hashtag.google_cse_id = ENV["LITA_GOOGLE_CSE_ID"]
  config.handlers.hashtag.google_cse_key = ENV["LITA_GOOGLE_CSE_KEY"]
  config.handlers.hashtag.giphy_api_key = ENV["LITA_GIPHY_KEY"]

  ## Google Search [lita-google]
  config.handlers.google.safe_search = :off

  ## Markov Chains [lita-markov]
  ## (Assumes Heroku Postgres addon)
  config.handlers.markov.database_url = ENV['DATABASE_URL']

  # Message Router [lita-message-router]
  config.handlers.message_router.robot_mention_names = ['shaggy']

  # Youtube Me [lita-youtube-me]
  config.handlers.youtube_me.api_key = ENV["LITA_YOUTUBE_KEY"]
  config.handlers.youtube_me.video_info = true
  config.handlers.youtube_me.detect_urls = true
  config.handlers.youtube_me.top_result = true

end
