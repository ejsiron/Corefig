# Corefig for Windows Server 2012 Core and Hyper-V Server 2012

Building on the foundation provided by the CoreConfig team on Core Configurator 2.0 ([http://coreconfig.codeplex.com](http://coreconfig.codeplex.com)), Corefig is a PowerShell-based GUI tool to configure the 2012 releases of Server Core and Hyper-V Server.

The application structure remains largely intact from the CoreConfig product but introduces several enhancements and leverages several of the new cmdlets.

## Current Version
1.1.3

## Packaged Downloads
The files are pre-packaged as a ZIP and an ISO. *Remember to unblock the files before trying to use them!*

[ISO](https://github.com/ejsiron/Corefig/blob/master/release-ISO/CoreFig.1.1.3.iso)

[ZIP](https://github.com/ejsiron/Corefig/raw/master/release-ZIP/Corefig.1.1.3.zip)

**Features carried forward:**
* Server renaming and domain joining
* Role and feature management
* Service control
* Remote Desktop Host and WinRM configuration
* Windows Update settings
* Display settings configuration
* Windows firewall settings
* Driver installation
* Regional settings (keyboard, date and time)
* Add Programs
* Network card settings, including TCP/IP
* Proxy configuration
* Local group membership
* Share management
* iSCSI Configuration (connecting to remote targets)
* View, start, and stop virtual machines
* Windows Server licensing

**What's Changed:**
At this time, most of the change are under the hood.
* Fully localization-ready (US English is the only current language)
* Wording made more clear
* Customer Improvement Experience nag screens removed
* WSF file sets PowerShell Execution Policy to "RemoteSigned" instead of "Unrestricted"
* More operation consistency
	* Less writing to the console and more writing to the log
	* Fewer pop-up windows notifying of success
* Some interface clean-up
* Domain-controller promotion/demotion removed
