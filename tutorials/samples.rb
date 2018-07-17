
##| sample :drum_cymbal_open, attack: 0.01, sustain: 0.3 , release:0.1

##| n = sample_duration :loop_amen
##| puts n
##| live_loop :jungle do
##|   sample :loop_amen, release: 0.75
##|   sleep n
##| end

sample :loop_amen, start: 0.5, finish: 0.8, rate: -0.2, attack: 0.3, release: 1