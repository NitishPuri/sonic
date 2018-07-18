# Welcome to Sonic Pi v3.1

live_loop :drums do
  sample "drum", rrand_i(0, 100)
  sleep 0.125
end


live_loop :chords do
  am = 2
  rl = 1
  use_synth :pluck
  play 50, amp: am, release: rl
  play 53, amp: am, release: rl if one_in(2)
  play 57, amp: am, release: rl if one_in(3)
  play 60, amp: am, release: rl if one_in(4)
  sleep 0.75
end



