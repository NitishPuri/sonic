# Owl Project Photosynthonium_LP
# we wrote this generative piece to test out how the final audio might work
# this code was then broken down into modules to run on different Pi and
# in different channels, a channel driving the lights in a different Log.

# We then worked live on the different Pi while a third Owl Project member played the 
# audio as it was broadcast by the Photosynthonium's lights 


define :arp_player do |root, type, repeats|
  use_synth :fm
  repeats.times do
    play_pattern_timed chord(root, type), 0.25, amp: 0.3
  end
end


in_thread do
  with_fx :reverb, mix: 0.6, amp: 0.3  do
    loop do
      sample :elec_blup
      sample :elec_blup
      play 78
      sleep 2
      sample :bass_hit_c
      play 59
      sleep 2
      sample :elec_filt_snare
      play 76
      sleep 1
      sample :ambi_glass_rub
      play 64
      sleep 3
    end
  end
end

# Welcome to Sonic Pi v2.0
define :drums do
  if (one_in(4))
    2.times do
      sample :drum_cymbal_soft, rate: rrand(-4.5, -17.1), release: 4, amp: 0.5
      sleep 0.25
    end

    1.times do
      #sample :drum_cymbal_soft, rate: rrand(-0.5, -0.1), amp: 0.5
      sleep 0.2
    end

    2.times do
      with_fx :distortion do
        sleep 0.3
        #sample :ambi_dark_woosh, rate: rrand(0.5, 1.1), release: 0.4, amp: 0.25
        #sample :drum_cymbal_pedal, rate: rrand(-2.5, -3.1), amp: 0.4
      end
    end
    sleep 0.05

    with_fx :reverb do

      sample :drum_bass_hard, rate: rrand(-10.5, -18.1)

    end
  else
    2.times do
      sample :drum_cymbal_soft, rate: rrand(4.5, 7.1), release: 4, amp: 0.5
      sleep 0.25
    end

    1.times do
      sample :drum_cymbal_soft, rate: rrand(-0.5, -0.1), amp: 0.5
      sleep 0.2
    end

    2.times do
      with_fx :distortion do
        sleep 0.3
        sample :ambi_dark_woosh, rate: rrand(0.5, 1.1), release: 0.4, amp: 0.25
        sample :drum_cymbal_pedal, rate: rrand(-2.5, -3.1), amp: 0.4
      end
    end
    sleep 0.05

    with_fx :reverb do

      if one_in(3)
        sample :drum_bass_hard, rate: rrand(-0.5, -8.1)
      else
        sample :drum_bass_hard, rate: rrand(2.5, 8.1)
      end
    end
  end

  sleep 1.8
end

define :arp_loop do
  if one_in(4)
    if one_in(5)
      sleep 8
    else
      sleep 4
    end

  else
    if one_in(5)
      arp_player :e2, :m9, 4
    else
      arp_player :e3, :m9, 4
    end

    if one_in(4)
      arp_player :a4, :major7, 2
    else
      arp_player :a3, :major7, 2
    end
  end
end


in_thread(name: :arp_loop) do
  loop{arp_loop}

end
in_thread(name: :drums) do
  loop{drums}

end