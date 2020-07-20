library(tweetrmd)
library(rtweet)

lasttweet_token <- function() {
  create_token(
    "rtweet_tokens_zy",
    consumer_key = Sys.getenv("CONSUMER_KEY"),
    consumer_secret = Sys.getenv("CONSUMER_SECRET"),
    access_token = Sys.getenv("ACCESS_TOKEN"),
    access_secret = Sys.getenv("ACCESS_SECRET"),
    set_renv = FALSE
  )
}

handle <- "Raym0111"
recent_tweets <- get_timeline(handle, n = 1, token = lasttweet_token())

tmpimg <- "tweet.png"
tweet_screenshot(
  tweet_url(handle, recent_tweets$status_id),
  scale = 5,
  maxwidth = 600,
  theme = "light",
  file = tmpimg
)
