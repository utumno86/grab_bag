program_list = %x(brew cask list).split("\n")
program_list.each do |program|
  puts "#{program}"
  %x(brew cask install --force #{program})
  version_list = %x(ls -trh /usr/local/Caskroom/#{program}).split("\n")
  if (version_list.length > 1 )
    puts version_list
  end
end
