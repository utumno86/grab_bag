def programList = "brew cask list".execute().text.split("\n")

programList.each { program ->
  println "$program"
  // println "brew cask install --force $program".execute().text
  def versionList = "ls -trh /opt/homebrew-cask/Caskroom/$program".execute().text.split("\n")
  if (versionList.size() > 1) {
    println(versionList[0])
  }
}
