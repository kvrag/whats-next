class User < ApplicationRecord

  def mood
    @mood ||= EmotionalBreakdown.request(self.thoughts)
  end

  # just the highest emotion as a string
  def top_feeling
    self.mood["emotion"]
  end

  # array of reported feelings in order, highest to lowest
  def all_feelings
    self.mood["fullScores"].map do |score|
      score["label"]
    end
  end
end

# example mood:
# {"emotion"=>"stress", "fullScores"=>[{"label"=>"stress", "value"=>1}, {"label"=>"anger", "value"=>0.45447305564382817}, {"label"=>"anxious", "value"=>0.190428372664577}, {"label"=>"disgust", "value"=>0.09777570429758457}, {"label"=>"tired", "value"=>0.0641030143670062}, {"label"=>"fear", "value"=>0.026315724535955706}, {"label"=>"sadness", "value"=>0.004556477288927535}, {"label"=>"joy", "value"=>4.834933906135211e-06}]}