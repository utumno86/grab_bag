def programList = "brew cask list".execute().text.split("\n")

programList.each { program ->
  println "$program"
  println "brew cask install --force $program".execute().text
}
