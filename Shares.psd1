# culture=“en-US”
ConvertFrom-StringData @'
	WindowTitle = Share Management
	WindowDescription = Network share creation and deletion
	RemoveShare = Remove a Share
	CreateShare = Create a New Share
	CurrentShares = Current Shares
	Comment = Comment:
	ShareName = ShareName:
	Location = Location:
	Apply = Apply
 	Close = Close
	LogShareCreated = {0} Share "{1}" created
	Error = Error
	ErrorAccessDenied = Access was denied creating the share "{0}"
	ErrorUnknown = Unknown Error while creating the share "{0}"
	ErrorInvalidName = "{0}" is an invalid share name
	ErrorInvalidLevel = Invalid level for creating the share "{0}"
	ErrorInvalidParameter = Invalid parameter for creating the share "{0}"
	ErrorShareAlreadyExists = Share "{0}" already exists
	ErrorRedirectedPaths = Redirected path specified for share {0}
	ErrorUnknownDirectory = Unknown device or directory for creating the share "{0}"
	ErrorNameNotFound = Net name not found for creating the share "{0}"
	LogShareDeleted = {0} Share "{1}" deleted
	ErrorDeleteAccessDenied = Access denied deleting share "{0}"
	ErrorDeleteUnknown = Unknown error while deleting the share "{0}"
	ErrorDeleteInvalidName = "{0}" is an invalid share name
	ErrorDeleteInvalidParameter = Invalid parameter for deleting the share "{0}"
	ErrorDeleteUnknownDirectory = Unknown device or directory specified for deleting share "{0}"
	ErrorDeleteNameNotFound = Net name not found for creating the share "{0}"
	ErrorCreateFolderStructure = Could not create folder structure for {0}
	ShareBuilder = Name: {0}\nPath: {1}\nDescription: {2}\nStatus: {3}\n=========================================\n
'@
