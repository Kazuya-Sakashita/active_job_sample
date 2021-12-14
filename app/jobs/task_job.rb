class TaskJob < ApplicationJob
  queue_as :default

  def perform(title="リクの水をかえる")
    Task.create!(title: title)
  end
end
