
live_loop :foo do
  s = play 60, release: 5, note_slide: 0.2
  sleep 0.1
  control s, note: 65
  sleep 0.8
  control s, note: 69
  sleep 1
  control s, note: 70
  sleep 0.5
end
