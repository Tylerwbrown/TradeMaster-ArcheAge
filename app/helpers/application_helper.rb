module ApplicationHelper
  def random_id
    @random_ids ||= (1..999).to_a.shuffle
    @random_ids.pop
  end
end
