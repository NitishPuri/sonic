##### Loopi - Sam Underwood

#init - setup and functions
use_synth :fm
i = 24 #counter for tempo loops
j = 1 #counter for song loops

define :buildUp1 do
  use_synth :fm
  p = play chord(:A3, :minor), release: 0.1
  sleep 1
  use_synth :pretty_bell
  play :A2, release: 0.2
  sleep 0.3
  play :Cs2, release: 0.2
  sleep 0.2
  play :F2, release: 0.2
  sleep 0.5 #make up loop time remaining
end

define :buildUp2 do
    use_synth :fm
    p = play chord(:A3, :minor), release: 0.1
    sample :drum_bass_soft, rate: 0.5
    sleep 0.5
    sample :drum_bass_soft, rate: 0.5
    sleep 0.5
    sample :drum_bass_soft, rate: 0.5
    use_synth :pretty_bell
    play :A2, release: 0.2
    sleep 0.3
    play :Cs2, release: 0.2
    sleep 0.2
    sample :drum_bass_soft, rate: 0.5
    play :F2, release: 0.2
    sleep 0.1
    play :A3, release: 0.4
    sleep 0.4
end

define :buildUp3 do
  use_synth :fm
  p = play chord(:A3, :minor), release: 0.1
  sample :drum_bass_soft, rate: 0.5
  sleep 0.25
  sample :drum_cymbal_closed, rate: (rrand 1, 2)
  sleep 0.15
  sample :drum_cymbal_soft, rate: 2
  sleep 0.1
  sample :drum_bass_soft, rate: 0.5
  sleep 0.5
  sample :drum_bass_soft, rate: 0.5
  sample :drum_cymbal_closed, rate: 2
  use_synth :pretty_bell
  play :A2, release: 0.2
  sample :drum_cymbal_closed, rate: 2
  sleep 0.15
  sample :drum_cymbal_closed, rate: 2
  sleep 0.15
  play :Cs2, release: 0.2
  sample :drum_cymbal_soft, rate: 2
  sleep 0.2
  sample :drum_bass_soft, rate: 0.5
  play :F2, release: 0.2
  sample :drum_cymbal_closed, rate: 2
  sleep 0.1
  sample :drum_cymbal_soft, rate: 2
  play :A3, release: 0.4
  sleep 0.4
end

define :buildUp4 do
  use_synth :fm
  p = play chord(:A3, :minor), release: 0.1
  sample :drum_bass_soft, rate: 0.5
  sleep 0.25
  sample :drum_cymbal_closed, rate: 2
  sleep 0.15
  sample :drum_cymbal_soft, rate: 2
  sleep 0.1
  sample :drum_bass_soft, rate: 0.5
  sleep 0.5
  sample :drum_bass_soft, rate: 0.5
  sample :drum_cymbal_closed, rate: 2
  use_synth :pretty_bell
  play :A2, release: 0.2
  sample :drum_cymbal_closed, rate: 2
  sleep 0.15
  sample :drum_cymbal_closed, rate: 2
  sleep 0.15
  play :Cs2, release: 0.2
  sample :drum_cymbal_soft, rate: 2
  sleep 0.2
  sample :drum_bass_soft, rate: 0.5
  play :F2, release: 0.2
  sample :drum_cymbal_closed, rate: 2
  sleep 0.1
  sample :drum_cymbal_soft, rate: 2
  play :A3, release: 0.4
  sleep 0.4
end
  
define :bassline do
  if j==21 || j==25 || j==29 || j==33
    use_synth :zawa
    play :A1, release: 0.15, cutoff: 38, amp: 8
  end
  if j==22 || j==26 || j==30 || j==34
    use_synth :zawa
    play :Cs2, release: 0.3, cutoff: 38, amp: 2
  end
  if j==23 || j==27 || j==31 || j==35
    use_synth :zawa
    play :Fs1, release: 0.3, cutoff: 38, amp: 2.5
  end
end
## end init

## main loop
100.times do
  use_bpm i

  if i>=60
      # no longer speeds up
        if j==1 # first time only
          play :A1, release: 16, amp: 0.6
        end
        
        4.times do # loop four times for each main loop
        
          if j<=4 # first loop section with chord stabs
            p = play chord(:A3, :minor), release: 0.1
            sleep 2
          end
          
          # loop section with blips
          if j>4 && j<=8 # second 4 loops
            buildUp1
          end
          
          # loop section with kick
          if j>8 && j<=12 # third 4 loops
            buildUp2
          end
          
          # loop section with full percussion
          if j>12 && j<=20
            buildUp3
          end
          
          # loop section with bass
          if j>20 && j<=36
            bassline ## call bassline function
            buildUp4
          end
          
          # loop drop back towards end
          if j>36 && j<=44
            play :A1, release: 4, amp: 0.6
            use_synth :zawa
            play :A1, release: 0.8, cutoff: j+20, amp: 0.2 #use j for cutoff
            buildUp2
          end
          
          # loop drop back towards end
          if j>44 && j<=52
            play :A1, release: 4, amp: 0.6
            use_synth :zawa
            play :A1, release: 0.8, cutoff: j+20, amp: 0.1 #use j for cutoff
            buildUp1
          end
          
          # ending
          if j==53
            play :A1, release: 8, amp: 0.4
            use_synth :zawa
            play :A1, release: 5, cutoff: 36, amp: 0.4 #use j for cutoff
          end
          
          #count loops
          j = j+1
      end
    else
      p = play chord(:A1, :minor), release: 1, amp: 0.3
      sample :perc_bell, rate: (rrand 0.5, 1.5)
      sample :drum_heavy_kick
      sleep 0.5
      sample :drum_bass_soft, rate: (rrand 0.5, 1.5)
      sleep 0.5
      sample :perc_bell, rate: (rrand 0.5, 1.5), amp: 2
      
      if i!=58 #if not last loop before second section
        if one_in(2)#one-in-two-chance
          sample :drum_cymbal_open, rate: 2
        else
          sample :drum_cymbal_closed
        end
      else
        sample :drum_cymbal_open, rate: 2
        with_fx :reverb, mix: 0.6 do
          sample :drum_splash_soft, rate: 0.35, amp: 1
        end
      end
      
      
      # play i, release: 0.8, amp: 0.5 #sound that increases in pitch with tempo counter
      
      sleep 1
      
    #speed up
    i = i+2
  end
end
 