# Welcome to Sonic Pi v3.1

live_loop :pete do
  sample :loop_amen, onset: pick, sustain: 0, release: 0.1, amp: 3
  sleep 0.125
end

live_loop :john do
  ##| use_synth :tb303
  ##| play :e2, release: 0.1, amp: 0.4, cutoff: rrand(70, 130)
  synth :tb303, note: rrand_i(50, 70), release: 0.1, amp: 0.1, cutoff: 130
  sleep 0.125
end
