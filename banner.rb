#!/usr/bin/env ruby

module Banner

def music
print %Q{
(づ｡◕‿‿◕｡)づ 󠀠󠀠󠀠󠀠󠀠󠀠󠀠󠀠󠀠󠀠󠀠󠀠󠀠󠀠󠀠󠀠󠀠󠀠󠀠󠀠​​​​​​​​​​♬♩♪·♫ 󠀠󠀠󠀠󠀠󠀠󠀠󠀠󠀠󠀠󠀠󠀠󠀠󠀠󠀠󠀠󠀠󠀠󠀠󠀠󠀠​​​​​​​​​​♬♩♪·♫
}
end

  def wizard
print %Q[
  ∩＾_＾)⊃━☆ﾟ.*・｡ﾟ
]
  end

end

class Show_Help
   include Banner
end

help = Show_Help.new

help.music
help.wizard


