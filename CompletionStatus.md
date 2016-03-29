Client Document Load Completion Statuses
==================================================

(Note: We normally look into three tables for completion statuses.
STAGINGLOAD is not relevant to documents since it is mostly concerned with # of
records successfully processed. STAGINGLOADGROUP might be a bit more relevant
but at the moment, it returns CompletedSuccessFully for Status and Message
for every document load. As such the only table we really care about for
completion statuses is STAGINGLOADFILE. As the framework now stands, the best
information about a document load comes from STAGINGLOADFILE Status, which
returns whether the load was successful or not, and STAGINGLOADFILE Descriptive
Status, which reveals exactly what went wong. These two status will be included
for each of the cases mentioned in this document.  )

(Note: Document .zip files consist of a .pdf, which is the actual document, and
an .xml file which countains the metadata about the document. However, since
the .pdf is what we actually care about, we have rigged the messages to go to
it, whereas although the .xml is recorded, it always returns a Satus of
"CompletedButEmpty" and a DescriptiveStatus of
"No records were processed in this file". As such, the descriptions listed are
only logged for the .pdf files. )

1. ADD method
  - Success:
    -   Status: CompletedOK
    -   DescriptiveStatus: Success
  -   Document Already Exists Failure:
    -  Status: CompletedWithErrors
      -  DescriptiveStatus: Skipped - document already exists. (ID '30)
2. REPLACE method
