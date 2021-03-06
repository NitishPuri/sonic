define :linear_map_fn do |x0, x1, y0, y1|
  lambda{|x|
    dydx = ((y1 - y0) / ( x1 - x0))
    dx   = x - x0
  (y0 + ( dydx * dx))}
end
define :chords_for do |root, scale|
  chords = (0..8).map{|degree| chord_degree(degree+1, root, scale)}
  (ring *chords)
end
define :find_scale_root do |octave|
  "#{PICK_SCALE}#{octave}"
end
define :smoothed_score do |now, cached|
  r = if(cached < now && now > 0.0)
    cached += now/5.0
  elsif(cached > now && now > 0.0)
    cached -= now/5.0
  else
    cached
  end
  if r < 0.0
    r = 0.0
  end
  r
end
define :cap do |v, max|
  v > max ? max : v
end
define :stretch_it do |*args|
  raise "stretch needs an even number of arguments, you passed: #{args.size} - #{args.inspect}" unless args.size.even?
  res = args.each_slice(2).flat_map do |values, num_its|
    if !values.respond_to? :flat_map
      values = [values]
    end
    knit(*values.flat_map{|v| [v, num_its]})
  end
  (res||[]).ring
end
define :beat_stretch do |path, stretch_duration|
  if path
    stretch_duration = stretch_duration.to_f
    rate = 1.0
    dur = load_sample(path).duration
    (1.0 / stretch_duration) * rate * (current_bpm / (60.0 / dur))
  else
    1
  end
end