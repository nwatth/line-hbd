# line-hbd

### Heroku setup

1. Create new app
2. Installed add-on [Heroku Redis](https://elements.heroku.com/addons/heroku-redis)
3. Installed add-on [Heroku Postgres](https://elements.heroku.com/addons/heroku-postgresql)
4. Create [Line Notify Token](https://notify-bot.line.me/my)
5. Config Variables
  - `RAILS_ENV` = `production`
  - `REDIS_PROVIDER` = `REDIS_URL`
  - `LINE_NOTIFY_TOKEN` = TOKEN of LINE Notify (e.g. `2XXKXXXKK6lI9XXXXkpqwnXXXLo4XDXX4gXXXZVCLJXX`)
  - `SIDEKIQ_USERNAME` = `<SET AS YOUR WISH>` (for production)
  - `SIDEKIQ_PASSWORD` = `<SET AS YOUR WISH>` (for production)
6. Connect to Github
7. Deploy
