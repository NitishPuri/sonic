
with_fx :wobble, phase: 1, phase_slide: 5 do |e|
  live_loop :w do
    use_synth :beep
    play 40, release: 5, amp: 3
    control e, phase: 0.025
    sleep 5
  end
end
