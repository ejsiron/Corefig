# culture=“en-US”
# some of these are duplicated between this .psd1 and roles.psd1; if not in both places, some dialogs are empty
ConvertFrom-StringData @'
	WindowTitle = Roles and Features
	RemoveRolesFeatures = Remove Roles or Features
	InstallRolesFeatures = Install Roles or Features
	Installable = Available Roles and Features
	Removable = Removable Roles and Features
	Apply = Apply
	Close = Close
	RemoveRF = Remove
	AddRF = Add
	Disabled = Disabled
	Enabled = Enabled
	Warning = Warning
	RFErrorTitle = Error
	RFErrorMessage = An error occurred while processing {0}. Check log file for details.\nContinue installing roles/features or stop?
	RestartNow = Restart Now
	RestartLater = Restart Later
	Continue = Continue
	Stop = Stop
	Installing = Enabling {0}...
	Removing = Disabling {0}...
	InstallationOf = installation
	RemovalOf = removal
	LogChangeStarted = {0} Beginning {1} of {2} Windows features.
	LogProcessError = {0} An error occurred while processing feature {1}: {2}
	LogProcessedInstall = {0} Processed install for {1}
	LogProcessedRemoval = {0} Processed removal for {1}
	LogChangeCompleted = {0} Feature maintenance completed. Check DISM logs at {1}
	PendingRestartSearchString = Pending
	WindowDescription = Add or remove roles and features
	RestartRequired = Reboot is required for feature:
	RebootWarning = A reboot is required to complete role installation/removal\nPlease confirm you wish to restart this server
	RestartForFeatures = {0} System restarted to apply feature changes.
'@