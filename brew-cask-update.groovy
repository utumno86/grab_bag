def programList = "brew cask list".execute().text.split("\n")

programList.each { program ->
  println "$program"
  println "brew cask install --force $program".execute().text
  def versionList = "ls -trh /usr/local/Caskroom/$program".execute().text.split("\n")
  if (versionList.size() > 1) {
    def removeFolder = { i ->
      println "Removing version: ${versionList[i]}"
      println "rm -rf /usr/local/Caskroom/$program/${versionList[i]}".execute().text
    }
    0.upto(versionList.size() - 2, removeFolder)
  }
}

println "brew cask cleanup".execute().text
