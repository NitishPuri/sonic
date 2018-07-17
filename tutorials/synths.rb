##| use_synth :tb303
##| play 60, release: 0.5 , attack: 0.5, sustain: 1
##| sleep 1
##| use_synth :dsaw
##| play 50, release: 1, attack: 0.1
##| use_synth :prophet
##| play 57

play 60, attack: 0.1, attack_level: 1, decay: 0.2,
  sustain_level: 0.4, sustain: 1, release: 0.5
