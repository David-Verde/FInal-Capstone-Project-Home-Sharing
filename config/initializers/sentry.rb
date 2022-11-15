Sentry.init do |config|
    config.dsn = 'https://170847b12a714fbdb1d96603fa706350@o4504160139476992.ingest.sentry.io/4504160141508608'
    config.breadcrumbs_logger = [:active_support_logger, :http_logger]
  
    # Set traces_sample_rate to 1.0 to capture 100%
    # of transactions for performance monitoring.
    # We recommend adjusting this value in production.
    config.traces_sample_rate = 1.0
    # or
    config.traces_sampler = lambda do |context|
      true
    end
  end