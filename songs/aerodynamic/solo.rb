

use_bpm 123

use_synth :zawa
use_synth_defaults attack: 0.05, sustain: 0.15, release: 0.125

live_loop :solo do
  phases = [
    [:D4, :Fs3, :B3, :Fs3],
    [:D4, :Gs3, :B3, :Gs3],
    [:G4, :B3, :E3, :B3],
    [:E4, :A3, :Cs4, :A3],
    
    [:D4, :Fs4, :B3, :Fs4],
    [:D4, :Gs4, :B3, :Gs4],
    [:G4, :B3, :E4, :B3],
    [:E4, :A3, :Cs4, :A3],
  ]
  
  phases.each do |notes|
    4.times do
      notes.each do |n|
        play n
        sleep 0.25
      end
    end
  end
end