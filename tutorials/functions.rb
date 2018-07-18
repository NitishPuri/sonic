define :chord_player do |root, repeats|
  repeats.times do
    play chord(root, :minor), release: 0.3
    sleep 0.5
  end
end

loop do
  chord_player :e3, 2
  sleep 0.5
  chord_player :a3, 3
  chord_player :g3, 4
  sleep 0.5
  chord_player :e3, 3
  sleep 0.1
end
