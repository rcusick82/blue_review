module ApplicationHelper
  def blue_time_format(timestamp)
  if timestamp > 5.hours.ago
    time_ago_in_words(timestamp) + " ago"
  else
      timestamp.strftime("%m/%d/%Y")

  end
  end
end
