#rgbの色を６文字の文字列に変換
def to_hex(r,g,b)
  [r,g,b].inject('#') do |hex,n|
	hex + n.to_s(16).rjust(2,'0')
end
end

#６文字の文字列をrgbの色に変換
def to_ints(hex)
	r = hex[1..2]
	g = hex[3..4]
	b = hex[5..6]
	 [r,g,b].map do |s|
    s.hex
  end
end
