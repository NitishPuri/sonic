
#beginning
7.times do
  sample :bass_hit_c
  2.times do
    sample :bass_voxy_hit_c, rate: 0.5
    sleep 0.75
  end
  sample :elec_snare
  1.times do
    sample :elec_ping
    sleep 0.5

  end
end

sleep 2

#first verse
2.times do
4.times do
in_thread do
  8.times do
    sample :elec_triangle, rate: 2
    sleep 0.125
  end
end
end

4.times do
  sample :bass_hit_c
  2.times do
    sample :bass_voxy_hit_c, rate: 0.5
    sleep 0.75
  end
  sample :elec_snare
  4.times do
    sample :elec_bong
    sleep 0.125
  end
end
end

#chorus 
7.times do
  sample :bass_hit_c
  2.times do
    sample :bass_voxy_hit_c, rate: 0.5
    sleep 0.75
  end
  sample :elec_snare
  1.times do
    sample :elec_ping
    sleep 0.5

  end
end

sleep 2


#second verse

in_thread do
  4.times do
  sleep 2.25
  with_fx :reverb do
  use_synth :beep
  play chord(:a4, :minor), amp: 0.5, pan: -1, release: 0.3
  sleep 1.75
  end
  end
end


2.times do
in_thread do
  8.times do
    sample :elec_triangle, rate: 2
    sleep 0.125
  end
end



4.times do
  sample :bass_hit_c
  2.times do
    sample :bass_voxy_hit_c, rate: 0.5
    sleep 0.75
  end
  sample :elec_snare
  4.times do
    sample :elec_bong
    sleep 0.125
  end
end
end

#chorus 
7.times do
  sample :bass_hit_c
  2.times do
    sample :bass_voxy_hit_c, rate: 0.5
    sleep 0.75
  end
  sample :elec_snare
  1.times do
    sample :elec_ping
    sleep 0.5

  end
end

sleep 2


#third verse

in_thread do
  3.times do
  sleep 2.25
  with_fx :reverb do
  use_synth :beep
  play chord(:a4, :minor), amp: 0.5, pan: -1, release: 0.3
  sleep 1.75
  end
  end
end

in_thread do
  3.times do
  sleep 3
  use_synth :beep      
  play chord(:a6, :minor), pan: 1, sustain: 0.2, release: 0.3, amp: 0.2
  sleep 1.5
  end
end



2.times do
in_thread do
  8.times do
    sample :elec_triangle, rate: 2
    sleep 0.125
  end
end



4.times do
  sample :bass_hit_c
  2.times do
    sample :bass_voxy_hit_c, rate: 0.5
    sleep 0.75
  end
  sample :elec_snare
  4.times do
    sample :elec_bong
    sleep 0.125
  end
end
end


#chorus 
7.times do
  sample :bass_hit_c
  2.times do
    sample :bass_voxy_hit_c, rate: 0.5
    sleep 0.75
  end
  sample :elec_snare
  1.times do
    sample :elec_ping
    sleep 0.5

  end
end

sleep 2


#rap
6.times do
  in_thread do
  sample :elec_wood
  sleep 0.25
  6.times do
  sleep 0.25
    use_synth :mod_pulse
    with_fx :wobble do
    with_fx :reverb do
    sample :drum_tom_mid_soft, rate: 4
    sleep 0.125
  
    end
    end
  end
  end

  sample :bass_hit_c
  2.times do
    sample :bass_voxy_hit_c, rate: 0.5
    sleep 0.75
  end
  sample :elec_snare
  1.times do
    sleep 0.5
    sample :elec_ping, rate: 2
    

  end
end

1.times do
  in_thread do
  sample :elec_wood
  sleep 0.25
  5.times do
  sleep 0.25
    use_synth :mod_pulse
    with_fx :wobble do
    with_fx :reverb do
    sample :drum_tom_mid_soft, rate: 4
    sleep 0.125
  
    end
    end
  end
  end

  
  sample :bass_hit_c
  2.times do
    sample :bass_voxy_hit_c, rate: 0.5
    sleep 0.75
  end

  sample :elec_snare
  1.times do
    sleep 2
    sample :elec_ping, rate: 2
    end
end
sleep 0.5

#chorus
7.times do
  sample :bass_hit_c
  2.times do
    sample :bass_voxy_hit_c, rate: 0.5
    sleep 0.75
  end
  sample :elec_snare
  1.times do
    sample :elec_ping
    sleep 0.5

  end
end

sleep 2


#final verse
in_thread do
  21.times do
  use_synth :tb303
  play chord(:a1, :minor).choose, amp: 0.3, release: 0.3, cutoff: 80
  sleep 0.75
  end
  
end

in_thread do
  4.times do
  sleep 1.5
  use_synth :beep
  play chord(:a4, :minor), amp: 0.5, pan: -1, sustain: 0.1, release: 0.3
  sleep 2
  end
end

in_thread do
  3.times do
  sleep 3
  use_synth :beep      
  play chord(:a6, :minor), pan: 1, sustain: 0.2, release: 0.3, amp: 0.1
  sleep 1.5
  end
end

2.times do
4.times do
in_thread do
  8.times do
    sample :elec_triangle, rate: 2
    sleep 0.125
  end
end
end

4.times do
  sample :bass_hit_c
  2.times do
    sample :bass_voxy_hit_c, rate: 0.5
    sleep 0.75
  end
  sample :elec_snare
  4.times do
    sample :elec_bong
    sleep 0.125
  end
end
end

#chorus
7.times do
  sample :bass_hit_c
  2.times do
    sample :bass_voxy_hit_c, rate: 0.5
    sleep 0.75
  end
  sample :elec_snare
  1.times do
    sample :elec_ping
    sleep 0.5

  end
end


#outro option 4

   4.times do
    in_thread do
      8.times do
        sample :elec_triangle, rate: 2
        sleep 0.125
      end
    end
  end
  
  
  3.times do
    sample :bass_hit_c
    2.times do
      sleep 0.75
    end
    sample :elec_snare
    4.times do
      sample :elec_bong
      sleep 0.125
    end
  end


   4.times do
    in_thread do
      8.times do
        sample :elec_triangle, rate: 2
        sleep 0.125
      end
    end
  end
  