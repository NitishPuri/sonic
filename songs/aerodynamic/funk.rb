
use_bpm 123

maquillage = "D:/tree/Music/SonicPi/sonic/songs/aerodynamic/il-macquillage-lady.wav"
load_sample maquillage
##| sample maquillage, beat_stretch:16, start:2.0/16.0, finish:3/16.0

aerodynamic = "D:/tree/Music/SonicPi/sonic/songs/aerodynamic/funk.wav"
load_sample aerodynamic

define :sample_chunk do |what, beat, dur, delay|
  beat = beat / 16.0
  dur = dur / 16.0
  sample what, beat_stretch:16, start: beat, finish: beat + dur
  sleep delay
end

##| sample_chunk(maquillage, 0, 0.5, 2.0)

##| sample_chunk(aerodynamic, 2, 3, 0)

define :funk do
  ##| sample_chunk(aerodynamic, 0, 4, 4)
  
  sample_chunk(maquillage, 0, 0.5, 0.5)
  sample_chunk(maquillage, 2.5, 1.0, 0.25)
  sample_chunk(maquillage, 3.5, 0.5, 0.75)
  sample_chunk(maquillage, 0, 0.5, 0.5)
  sample_chunk(maquillage, 8.5, 0.5, 0.5)
  sample_chunk(maquillage, 2.5, 1.0, 1.0)
  sample_chunk(maquillage, 7.5, 0.5, 0.5)
  
  ##| sample_chunk(aerodynamic, 4, 4, 4)
  
  sample_chunk(maquillage, 3.5, 0.5, 0.5)
  sample_chunk(maquillage, 2.5, 1.0, 1.0)
  sample_chunk(maquillage, 7.5, 0.5, 0.5)
  sample_chunk(maquillage, 8.5, 0.5, 0.5)
  sample_chunk(maquillage, 2.5, 1.0, 1.0)
  sample_chunk(maquillage, 7.5, 0.5, 0.5)
  
  ##| sample_chunk(aerodynamic, 8, 4, 4)
  
  sample_chunk(maquillage, 0.0, 0.5, 0.5)
  sample_chunk(maquillage, 2.5, 1.0, 0.25)
  sample_chunk(maquillage, 3.5, 0.5, 0.75)
  sample_chunk(maquillage, 0.0, 0.5, 0.5)
  sample_chunk(maquillage, 8.5, 0.5, 0.5)
  sample_chunk(maquillage, 2.5, 1.0, 1.0)
  sample_chunk(maquillage, 7.5, 0.5, 0.5)
  ##| sample_chunk(aerodynamic, 12, 4, 4)
  
  sample_chunk(maquillage, 3.5, 0.5, 0.5)
  sample_chunk(maquillage, 8.5, 0.25, 0.0)
  sample_chunk(maquillage, 2.5, 1.0, 0.25)
  sample_chunk(maquillage, 3.5, 0.5, 0.5)
  sample_chunk(maquillage, 8.5, 0.25, 0.25)
  sample_chunk(maquillage, 3.5, 0.5, 0.5)
  sample_chunk(maquillage, 8.5, 0.5, 0.5)
  sample_chunk(maquillage, 2.5, 1.0, 1.0)
  sample_chunk(maquillage, 7.5, 0.5, 0.5)
end

##| funk

live_loop :funk do
  with_fx :ixi_techno, mix: 0.1, phase:0.2, cutoff_min: 90 do
    funk
  end
end


