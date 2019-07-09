require "ostruct"

die_face = OpenStruct.new(
  :face_1 => "\u2680",
  :face_2 => "\u2681",
  :face_3 => "\u2682",
  :face_4 => "\u2683",
  :face_5 => "\u2684",
  :face_6 => "\u2685",
)

dice = []

dice << die_face[:face_1]
dice << die_face[:face_2]
dice << die_face[:face_3]
dice << die_face[:face_4]
dice << die_face[:face_5]
dice << die_face[:face_6]

puts dice
