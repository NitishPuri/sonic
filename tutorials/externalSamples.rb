##| mash = 'D:/tree/Music/sounds/mash.flac'
##| sample mash, amp: 1

make_beat = 'D:/tree/Music/sounds/sound_updated_license/sound/MakeBeat'
##| richard_devine = 'D:/tree/Music/sounds/sound_updated_license/sound/RichardDevine/Dubstep 140 BPM/DubBassWobble'
richard_devine = 'D:/tree/Music/sounds/sound_updated_license/sound/RichardDevine/**'
##| t = make_beat + '/OS_CLAP01.wav'
i = 0

##| sample make_beat, 'SNARE', 2

##| live_loop :pete do
##|   sample :loop_amen, onset: pick, sustain: 0.1, release: 1, amp: 3
##|   sample richard_devine, 'eight-bit', 'Drum', 0, amp: 2,
##|     onset: pick
##|   sleep 0.25
##| end

live_loop :drums do
  i = rrand_i(0, 100)
  2.times do
    sample richard_devine, 'House', 'Piano', i, amp: 2
    sleep 4
  end
end




