class HappyBirthDayWorker
  include Sidekiq::Worker

  def perform(wish, options = {})
    # document: https://notify-bot.line.me/doc/en/
    options = options.symbolize_keys

    stickerPackageId = options[:stickerPackageId] || 4
    stickerId = options[:stickerId] || 307

    line.notify(
      message: wish,
      stickerPackageId: stickerPackageId,
      stickerId: stickerId,
    )
  end

  private def line
    token = ENV["LINE_NOTIFY_TOKEN"]

    @line ||= LineNotify.new(token)
  end
end
