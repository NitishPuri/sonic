with_fx :compressor do
with_fx :reverb, mix: 0.3 do

use_synth :pretty_bell
play :C7
sleep 0.33
play :C7
sleep 0.165
play :A6
sleep 0.33
play :D7
sleep 0.165
play:C7
sleep 0.5
play :A6
sleep 0.495
play :C7
sleep 0.5
play :A6
sleep 0.33
play :D7
sleep 0.165
play:C7
sleep 0.5
play :A6
sleep 4.5

in_thread do
  30. times do
    sample :drum_bass_soft
    sleep 0.5
    sample :drum_snare_soft
    sample :perc_bell, amp: 0.25
    sleep 0.5
  end
  sample :drum_bass_soft
  sleep 0.25
  sample :drum_cymbal_open, start: 1, finish: 0.01

  sleep 0.25
  sample :drum_snare_soft
  sample :perc_bell, amp: 0.25

  sleep 0.5
  sample :drum_bass_soft
  sleep 0.5
  sample :drum_snare_soft
  sample :perc_bell, amp: 0.25
  sleep 0.5
end
#playground taunt
2. times do
  use_synth :pretty_bell
  play :C7
  sleep 0.33
  play :C7
  sleep 0.165
  play :A6
  sleep 0.33
  play :D7
  sleep 0.165
  play:C7
  sleep 0.5
  play :A6
  sleep 0.495
  play :C7
  sleep 0.5
  play :A6
  sleep 0.33
  play :D7
  sleep 0.165
  play:C7
  sleep 0.5
  play :A6
  sleep 4.5
  play :C7
  sleep 0.33
  play :C7
  sleep 0.165
  play :A6
  sleep 0.33
  play :D7
  sleep 0.165
  play:C7
  sleep 0.5
  play :A6
  sleep 0.33
  play :C7
  sleep 0.165
  play :C7
  sleep 0.5
  play :A6
  sleep 0.33
  play :D7
  sleep 0.165
  play:G6
  sleep 0.5
  play :F6
  sleep 4.5
end
# bassline
use_synth :beep
2. times do
  play :C2
  sleep 0.5
  play :G2
  sleep 0.5
  play :Bb2
  sleep 0.5
  play :F2
  sleep 0.5
  play :A1
  sleep 0.5
  play :E2
  sleep 0.5
  play :G1
  sleep 0.5
  play :D2
  sleep 0.5
end
use_synth :mod_sine
2. times do
  play :C2
  sleep 0.5
  play :G2
  sleep 0.5
  play :Bb2
  sleep 0.5
  play :F2
  sleep 0.5
  play :A1
  sleep 0.5
  play :E2
  sleep 0.5
  play :G1
  sleep 0.5
  play :D2
  sleep 0.5
end


in_thread do
  in_thread do
    in_thread do
    sleep 11
      8. times do
        use_sample_pack"/Applications/Sonic Pi.app/etc/samples"
        
        sample :drum_bass_soft
        sleep 0.5
        sample :drum_snare_soft
        sample :perc_bell, amp: 0.25
        sleep 0.5
      end
    end
    2. times do
      play :C2
      sleep 0.5
      play :G2
      sleep 0.5
      play :Bb2
      sleep 0.5
      play :F2
      sleep 0.5
      play :A1
      sleep 0.5
      play :E2
      sleep 0.5
      play :G1
      sleep 0.5
      play :D2
      sleep 0.5
    end
  end

  use_sample_pack"/users/ansuman/Desktop/pop-pi_samples"
  sample :Uma_1_7

end

in_thread do
  use_sample_pack"/users/ansuman/Desktop/pop-pi_samples"
  sleep 6
  sample :playground, amp: 2, attack: 1
  use_sample_pack"/Applications/Sonic Pi.app/etc/samples"
  in_thread do
    48. times do
      sample :drum_bass_soft
      sleep 0.5
      sample :drum_snare_soft
      sample :perc_bell, amp: 0.25
      sleep 0.5
    end
  end

  use_synth :saw
  use_synth_defaults release: 0.25, attack: 0.5, cutoff: 100, amp:0.5
  2. times do
    sleep 8
    play chord(:F3, :major)
    sleep 2
    play chord(:Bb3, :dom7)
    sleep 2
    play chord(:F3, :major)
    sleep 2
    play chord(:C3, :major)
    sleep 2
    play chord(:F3, :major)
    sleep 2
    play chord(:Bb3, :major)
    sleep 2
    play chord(:F3, :major)
    sleep 3
    play chord(:C3, :dom7)
    sleep 1
  end
end
in_thread do
  sleep 30
  use_sample_pack"/users/ansuman/Desktop/pop-pi_samples"
  sample :playground2
  sample :playground3
  sleep 4
  5. times do
    use_synth :mod_sine
    play :C2
    sleep 0.5
    play :G2
    sleep 0.5
    play :Bb2
    sleep 0.5
    play :F2
    sleep 0.5
    play :A1
    sleep 0.5
    play :E2
    sleep 0.5
    play :G1
    sleep 0.5
    play :D2
    sleep 0.5

  end
end
sleep 54

in_thread do

  use_sample_pack"/users/ansuman/Desktop/pop-pi_samples"
  sample :Uma_Oshin, amp:2

  use_sample_pack"/users/ansuman/Desktop/pop-pi_samples"
  sample :Uma_1_7

  use_synth :beep
  play :C5, amp: 0.3
  sleep 0.5
  play :G5, amp: 0.3
  sleep 0.5
  play :Bb5, amp: 0.3
  sleep 0.5
  play :F5, amp: 0.3
  sleep 0.5
  play :A4, amp: 0.3
  sleep 0.5
  play :E5, amp: 0.3
  sleep 0.5
  play :G4, amp: 0.3
  sleep 0.5
  play :D5, amp: 0.3
  sleep 0.5
  play :C5, amp: 0.3
  sleep 0.5
  play :G5, amp: 0.3
  sleep 0.5
  play :Bb5, amp: 0.4
  sleep 0.5
  play :F5, amp: 0.5
  sleep 0.5
  play :A4, amp: 0.5
  sleep 0.5
  play :E5, amp: 0.6
  sleep 0.5
  play :G4, amp: 0.7
  sleep 0.5
  play :D5, amp: 0.8
  sleep 0.5
  use_synth :mod_sine
  play :C5
  sleep 0.5
  play :G5
  sleep 0.5
  play :Bb5
  sleep 0.5
  play :F5
  sleep 0.5
  play :A4
  sleep 0.5
  play :E5
  sleep 0.5
  play :G4
  sleep 0.5
  play :D5
  sleep 0.5

end


sleep 12
#breakbeat

use_sample_pack"/Applications/Sonic Pi.app/etc/samples"
sample :drum_cymbal_open, start: 1, finish: 0.01
use_synth :mod_sine
play :C5
use_sample_pack"/Applications/Sonic Pi.app/etc/samples"
sample :loop_amen, start: 0.5
sleep 0.88
play :G4
sample :loop_amen, start: 0.5
sleep 0.88
play :Bb3
sample :loop_amen, start: 0.5
sleep 0.88
play :F2
sample :loop_amen, start: 0.75
sleep 0.46
play :A2
sample :loop_amen, start: 0.75
sleep 0.1
play :C2
sample :loop_amen, start: 0.6, finish: 0.4
sleep 0.1
play :C2
sample :loop_amen, start: 0.5
sleep 0.88
play :C2
sample :loop_amen, start: 0.5
sleep 0.88
play :C2
sample :loop_amen, start: 0.5
sleep 0.88
play :C2
sample :loop_amen, start: 0.5, finish: 1
sleep 0.1
sample :drum_cymbal_open, attack: 0.01, sustain: 0, release: 0.1
play :C2
sleep 1.0
in_thread do
  loop do
    sync :tick
    use_synth :beep
    play :C3
    sleep 0.88
    play :Bb2
    sleep 1.76
    play :A2
    sleep 0.88
    play :C3
    sleep 0.88
    play :Bb2
    sleep 1.76
    play:G2
    sleep 0.88
    play :F2
    sleep 3.52
  end
end
4.times do
  cue :tick
  sample :drum_bass_soft
  sample :drum_cymbal_open, amp: 0.5, attack: 0.01, sustain: 0.3, release: 0.1
  sample :loop_amen, start: 0.5
  sleep 0.88
  sample :loop_amen, start: 0.5
  sleep 0.88
  sample :loop_amen, start: 0.5
  sleep 0.88
  sample :loop_amen, start: 0.75
  sleep 0.46

  sample :loop_amen, start: 0.75
  sleep 0.1
  sample :loop_amen, start: 0.6, finish: 0.4
  sleep 0.1

  sample :loop_amen, start: 0.5
  sleep 0.88
  sample :loop_amen, start: 0.5
  sleep 0.88
  sample :loop_amen, start: 0.5

  sleep 0.88
  sample :loop_amen, start: 0.5, finish: 1
  sleep 1.08
end

use_synth :mod_sine
play :C2
sample :drum_bass_soft
sample :drum_cymbal_open, amp: 0.5, attack: 0.01, sustain: 0.3, release: 0.1
sample :loop_amen, start: 0.5
sleep 0.88
play :C2
sample :loop_amen, start: 0.5
sleep 0.88
sample :loop_amen, start: 0.5
sleep 0.88
sample :loop_amen, start: 0.75
sleep 0.46

sample :loop_amen, start: 0.75
sleep 0.1
sample :loop_amen, start: 0.6, finish: 0.4
sleep 0.1

sample :loop_amen, start: 0.5
sleep 0.88
sample :loop_amen, start: 0.5
sleep 0.88

sample :loop_amen, start: 0.5

sleep 0.88
play :C2
sample :loop_amen, start: 0.5, finish: 1
sleep 1.08


use_synth :mod_sine
play :C2
sample :drum_bass_soft
sample :drum_cymbal_open, amp: 0.5, attack: 0.01, sustain: 0.3, release: 0.1
sample :loop_amen, start: 0.5
sleep 0.88
play :C2
sample :drum_cymbal_open, start: 1, finish: 0.00001
sample :loop_amen, start: 0.5
sleep 0.88
sample :loop_amen, start: 0.5
sleep 0.88
sample :loop_amen, start: 0.75
sleep 0.46

sample :loop_amen, start: 0.75
sleep 0.1
sample :loop_amen, start: 0.6, finish: 0.4
sleep 0.1

sample :loop_amen, start: 0.5
sleep 0.88
sample :loop_amen, start: 0.5

sleep 0.88

sample :loop_amen, start: 0.5
sample :drum_cymbal_open, start: 1, finish: 0.00001
sleep 0.88
play :C2

sample :loop_amen, start: 0.5, finish: 1
sleep 1.08



in_thread do

  use_sample_pack"/users/ansuman/Desktop/pop-pi_samples"
  sample :end, amp: 2
end
in_thread do
  play :C2
  sleep 0.75
  sample :drum_bass_soft

  sample :drum_snare_soft

  sample :drum_tom_hi_soft
  sleep 0.75
  sample :drum_bass_soft
  sample :drum_cymbal_open, amp: 0.5, attack: 0.01, sustain: 0.3, release: 0.1
  sample :drum_snare_soft
  sleep 1.5
  sample :drum_bass_soft
  sample :drum_cymbal_open, amp: 0.5, attack: 0.01, sustain: 0.3, release: 0.1
  sample :drum_splash_hard, amp: 0.5
  sample :perc_bell, amp: 0.5
end
end
end
