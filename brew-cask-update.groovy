def programList = "brew cask list".execute().text.split("\n")

programList.each { program ->
  println "$program"
  println "brew cask install --force $program".execute().text
  def versionList = "ls -trh /opt/homebrew-cask/Caskroom/$program".execute().text.split("\n")
  if (versionList.size() > 1) {
    def removeFolder = { i ->
      println "Removing version: ${versionList[i]}"
      println "rm -rf /opt/homebrew-cask/Caskroom/$program/${versionList[i]}".execute().text
    }
    0.upto(versionList.size() - 2, removeFolder)
  }
}
