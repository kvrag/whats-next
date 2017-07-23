stress = Feeling.create({name: "stress"})
anger = Feeling.create({name: "anger"})
anxious = Feeling.create({name: "anxious"})
disgust = Feeling.create({name: "disgust"})
tired = Feeling.create({name: "tired"})
fear = Feeling.create({name: "fear"})
sadness = Feeling.create({name: "sadness"})
joy = Feeling.create({name: "joy"})


stress_activities = [
  "Take a short walk outside.",
  "Interact with your pet, or visit an animal shelter.",
  "Take a 30-minute cat nap.",
  "Do 20 jumping jacks."
]

stress_activities.each do |activity|
  Activity.create({
    description: activity,
    feeling_id: stress.id
    })
end

anger_activities = [
  "Jog around the block.",
  "Do 10 pushups. Do another 10 if it feels good.",
  "Yell into a pillow."
]

anger_activities.each do |activity|
  Activity.create({
    description: activity,
    feeling_id: anger.id
    })
end

anxious_activities = [
  "Inhale as deeply as you can, and exhale slowly.",
  "Drink a cold glass of water or milk.",
  "Interact with your pet, or visit an animal shelter.",
  "Take a moment to stretch.",
  "Take stock of your immediate environment, and change one thing for the better."
]

anxious_activities.each do |activity|
  Activity.create({
    description: activity,
    feeling_id: anxious.id
    })
end

disgust_activities = [

]

disgust_activities.each do |activity|
  Activity.create({
    description: activity,
    feeling_id: disgust.id
    })
end

tired_activities = [
  "Did you get much sleep? Try closing your eyes for 20 minutes.",
  "Take a shower, or wash your face in cold water."
]

tired_activities.each do |activity|
  Activity.create({
    description: activity,
    feeling_id: tired.id
    })
end

fear_activities = [
  "Call a friend or trusted family member.",
  "Listen to music that you find soothing.",
  "Write about your fears in a journal, so you don't have to hold them in your mind."
]

fear_activities.each do |activity|
  Activity.create({
    description: activity,
    feeling_id: fear.id
    })
end

sadness_activities = [
  "Cry, if you want to.",
  "Watch your favorite childhood movie.",
  "Call or text someone you're close to.",
  "Walk or run around the block, or open a window for fresh air.",
  "Have you eaten recently? Have a healthy snack.",
  "Take a shower or soothing bath."
]

sadness_activities.each do |activity|
  Activity.create({
    description: activity,
    feeling_id: sadness.id
    })
end

joy_activities = [
  "Take a moment to feel gratitude for all that you have!",
  "Journal about this moment.",
  "Treat yourself with something you've wanted for a while."
]

joy_activities.each do |activity|
  Activity.create({
    description: activity,
    feeling_id: joy.id
    })
end
