//Basically, set up your load unit how you'd like, then in the relmgr-to-account script, instead of emitting the record add it to a list, then tweak processFile to be like so:
def emitRecords = {
  records.sort { a,b -> a.AccountId <=> b.AccountId }
  records.each {
    emitRecord(it)
  }
}

processFile(processRecord, emitRecords)

//(ugh formatting)
//So basically, sort them by the relevant field(s) before emitting them.
//The 2nd argument to processFile is a thing to run after the rows have all been processed.
