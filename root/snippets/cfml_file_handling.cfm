<!--- File Handling in CFML --->

<cfscript>
    // Reading a file
    filePath = ExpandPath("./test.txt");
    fileReadObj = FileRead(filePath);
    WriteOutput(fileReadObj);

    // Writing to a file
    fileWriteObj = FileWrite(filePath, "This is a test.");
    WriteOutput(fileWriteObj);

    // Appending to a file
    fileAppendObj = FileAppend(filePath, "This is an appended text.");
    WriteOutput(fileAppendObj);

    // Deleting a file
    fileDeleteObj = FileDelete(filePath);
    WriteOutput(fileDeleteObj);

    // Renaming a file
    fileRenameObj = FileMove(filePath, ExpandPath("./renamed_test.txt"));
    WriteOutput(fileRenameObj);

    // Copying a file
    fileCopyObj = FileCopy(filePath, ExpandPath("./copy_test.txt"));
    WriteOutput(fileCopyObj);
</cfscript>