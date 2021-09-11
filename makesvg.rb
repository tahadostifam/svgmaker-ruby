require 'victor'

back_color = '#222'
pacman_color = 'yellow'
result_filename = 'result'

svg = Victor::SVG.new width: 140, height: 100, style: { background: '#ddd' }

svg.build do 
  rect x: 10, y: 10, width: 120, height: 80, rx: 10, fill: back_color
  circle cx: 50, cy: 50, r: 30, fill: pacman_color
  circle cx: 58, cy: 32, r: 4, fill: 'black'
  polygon points: %w[45,50 80,30 80,70], fill: back_color
  3.times do |i|
    x = 80 + i*18
    circle cx: x, cy: 50, r: 4, fill: pacman_color
  end
end

svg.save result_filename
puts 'file saved!'
