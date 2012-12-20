Import-LocalizedData -BindingVariable TextStrings -FileName ControlPanel.psd1
#region Script Settings
#<ScriptSettings xmlns="http://tempuri.org/ScriptSettings.xsd">
#  <ScriptPackager>
#    <process>powershell.exe</process>
#    <arguments />
#    <extractdir>%TEMP%</extractdir>
#    <files />
#    <usedefaulticon>true</usedefaulticon>
#    <showinsystray>false</showinsystray>
#    <altcreds>false</altcreds>
#    <efs>true</efs>
#    <ntfs>true</ntfs>
#    <local>false</local>
#    <abortonfail>true</abortonfail>
#    <product />
#    <version>1.0.0.1</version>
#    <versionstring />
#    <comments />
#    <includeinterpreter>false</includeinterpreter>
#    <forcecomregistration>false</forcecomregistration>
#    <consolemode>false</consolemode>
#    <EnableChangelog>false</EnableChangelog>
#    <AutoBackup>false</AutoBackup>
#    <snapinforce>false</snapinforce>
#    <snapinshowprogress>false</snapinshowprogress>
#    <snapinautoadd>0</snapinautoadd>
#    <snapinpermanentpath />
#  </ScriptPackager>
#</ScriptSettings>
#endregion

#region Constructor

[void][System.Reflection.Assembly]::LoadWithPartialName("System.Windows.Forms")
[void][System.Reflection.Assembly]::LoadWithPartialName("System.Drawing")

#endregion

#region Form Creation
#Warning: It is recommended that changes inside this region be handled using the ScriptForm Designer.
#When working with the ScriptForm designer this region and any changes within may be overwritten.
#~~< FormControl >~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
$FormControl = New-Object System.Windows.Forms.Form
$FormControl.ClientSize = New-Object System.Drawing.Size(649, 500)
$FormControl.Font = New-Object System.Drawing.Font("Tahoma", 8.25, [System.Drawing.FontStyle]::Regular, [System.Drawing.GraphicsUnit]::Point, ([System.Byte](0)))
$FormControl.FormBorderStyle = [System.Windows.Forms.FormBorderStyle]::FixedSingle
$FormControl.MaximizeBox = $false
$FormControl.MinimizeBox = $false
$FormControl.ShowIcon = $false
$FormControl.StartPosition = [System.Windows.Forms.FormStartPosition]::CenterScreen
$FormControl.Text = $TextStrings.AppName
$FormControl.BackColor = [System.Drawing.Color]::White
#~~< MenuStrip1 >~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
$MenuStrip1 = New-Object System.Windows.Forms.MenuStrip
$MenuStrip1.AutoSize = $false
$MenuStrip1.GripMargin = New-Object System.Windows.Forms.Padding(2)
$MenuStrip1.Location = New-Object System.Drawing.Point(0, 0)
$MenuStrip1.Padding = New-Object System.Windows.Forms.Padding(6, 0, 0, 1)
$MenuStrip1.Size = New-Object System.Drawing.Size(649, 20)
$MenuStrip1.TabIndex = 6
$MenuStrip1.Text = "MenuStrip1"
#~~< ToolsToolStripMenuItem >~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
$ToolsToolStripMenuItem = New-Object System.Windows.Forms.ToolStripMenuItem
$ToolsToolStripMenuItem.Size = New-Object System.Drawing.Size(44, 19)
$ToolsToolStripMenuItem.Text = $TextStrings.Tools
#~~< menuCMD >~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
$menuCMD = New-Object System.Windows.Forms.ToolStripMenuItem
$menuCMD.Size = New-Object System.Drawing.Size(179, 22)
$menuCMD.Text = $TextStrings.CommandPrompt
$menuCMD.add_Click({MenuCMD($menuCMD)})
#~~< menuTaskMgr >~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
$menuTaskMgr = New-Object System.Windows.Forms.ToolStripMenuItem
$menuTaskMgr.Size = New-Object System.Drawing.Size(179, 22)
$menuTaskMgr.Text = $TextStrings.TaskManager
$menuTaskMgr.add_Click({MenuTaskMgr($menuTaskMgr)})
#~~< menuRegistry >~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
$menuRegistry = New-Object System.Windows.Forms.ToolStripMenuItem
$menuRegistry.Size = New-Object System.Drawing.Size(179, 22)
$menuRegistry.Text = $TextStrings.RegistryEditor
$menuRegistry.add_Click({MenuRegistry($menuRegistry)})
#~~< menuSystem >~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
$menuSystem = New-Object System.Windows.Forms.ToolStripMenuItem
$menuSystem.Size = New-Object System.Drawing.Size(179, 22)
$menuSystem.Text = $TextStrings.SysInfo
$menuSystem.add_Click({MenuSystem($menuSystem)})
$ToolsToolStripMenuItem.DropDownItems.AddRange([System.Windows.Forms.ToolStripItem[]](@($menuCMD, $menuTaskMgr, $menuRegistry, $menuSystem)))
#~~< LogsToolStripMenuItem >~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
$LogsToolStripMenuItem = New-Object System.Windows.Forms.ToolStripMenuItem
$LogsToolStripMenuItem.Size = New-Object System.Drawing.Size(41, 19)
$LogsToolStripMenuItem.Text = $TextStrings.Logs
#~~< menuLogFile >~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
$menuLogFile = New-Object System.Windows.Forms.ToolStripMenuItem
$menuLogFile.Size = New-Object System.Drawing.Size(152, 22)
$menuLogFile.Text = $TextStrings.ShowLogFile
$menuLogFile.add_Click({MenuLogFile($menuLogFile)})
#~~< menuClearLogFile >~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
$menuClearLogFile = New-Object System.Windows.Forms.ToolStripMenuItem
$menuClearLogFile.Size = New-Object System.Drawing.Size(152, 22)
$menuClearLogFile.Text = $TextStrings.ClearLogFile
$menuClearLogFile.add_Click({MenuClearLogFile($menuClearLogFile)})
$LogsToolStripMenuItem.DropDownItems.AddRange([System.Windows.Forms.ToolStripItem[]](@($menuLogFile, $menuClearLogFile)))
#~~< HelpLogsStripMenuItem >~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
$HelpLogsStripMenuItem = New-Object System.Windows.Forms.ToolStripMenuItem
$HelpLogsStripMenuItem.Size = New-Object System.Drawing.Size(40, 19)
$HelpLogsStripMenuItem.Text = $TextStrings.Help
#~~< AboutToolStripMenuItem >~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
$AboutToolStripMenuItem = New-Object System.Windows.Forms.ToolStripMenuItem
$AboutToolStripMenuItem.Size = New-Object System.Drawing.Size(297, 22)
$AboutToolStripMenuItem.Text = $TextStrings.About
$AboutToolStripMenuItem.add_Click({MenuAbout($AboutToolStripMenuItem)})
$HelpLogsStripMenuItem.DropDownItems.AddRange([System.Windows.Forms.ToolStripItem[]](@($AboutToolStripMenuItem)))
$MenuStrip1.Items.AddRange([System.Windows.Forms.ToolStripItem[]](@($ToolsToolStripMenuItem, $LogsToolStripMenuItem, $HelpLogsStripMenuItem)))
#~~< groupboxInfo >~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
$groupboxInfo = New-Object System.Windows.Forms.GroupBox
$groupboxInfo.Font = New-Object System.Drawing.Font("Tahoma", 6.75, [System.Drawing.FontStyle]::Bold, [System.Drawing.GraphicsUnit]::Point, ([System.Byte](0)))
$groupboxInfo.Location = New-Object System.Drawing.Point(255, 20)
$groupboxInfo.Size = New-Object System.Drawing.Size(385, 59)
$groupboxInfo.TabIndex = 3
$groupboxInfo.TabStop = $false
$groupboxInfo.Text = ""
#~~< lblComputerInfo >~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
$lblComputerInfo = New-Object System.Windows.Forms.Label
$lblComputerInfo.Font = New-Object System.Drawing.Font("Tahoma", 6.75, [System.Drawing.FontStyle]::Bold)
$lblComputerInfo.Location = New-Object System.Drawing.Point(8, 12)
$lblComputerInfo.Size = New-Object System.Drawing.Size(107, 16)
$lblComputerInfo.TabIndex = 1
$lblComputerInfo.Text = $TextStrings.ComputerName
#~~< lblDomainInfo >~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
$lblDomainInfo = New-Object System.Windows.Forms.Label
$lblDomainInfo.Font = New-Object System.Drawing.Font("Tahoma", 6.75, [System.Drawing.FontStyle]::Bold)
$lblDomainInfo.Location = New-Object System.Drawing.Point(8, 27)
$lblDomainInfo.Size = New-Object System.Drawing.Size(116, 16)
$lblDomainInfo.TabIndex = 1
$lblDomainInfo.Text = $TextStrings.WorkGroupOrDomain
#~~< lblVersionInfo >~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
$lblVersionInfo = New-Object System.Windows.Forms.Label
$lblVersionInfo.Font = New-Object System.Drawing.Font("Tahoma", 6.75, [System.Drawing.FontStyle]::Bold)
$lblVersionInfo.Location = New-Object System.Drawing.Point(8, 43)
$lblVersionInfo.Size = New-Object System.Drawing.Size(98, 14)
$lblVersionInfo.TabIndex = 1
$lblVersionInfo.Text = $TextStrings.SKUVersion
#~~< lblComputerValue >~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
$lblComputerValue = New-Object System.Windows.Forms.Label
$lblComputerValue.Font = New-Object System.Drawing.Font("Tahoma", 6.75)
$lblComputerValue.Location = New-Object System.Drawing.Point(130, 12)
$lblComputerValue.Size = New-Object System.Drawing.Size(254, 15)
$lblComputerValue.TabIndex = 1
$lblComputerValue.Text = "xxxxxxx"
#~~< lblDomainValue >~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
$lblDomainValue = New-Object System.Windows.Forms.Label
$lblDomainValue.Font = New-Object System.Drawing.Font("Tahoma", 6.75)
$lblDomainValue.Location = New-Object System.Drawing.Point(130, 27)
$lblDomainValue.Size = New-Object System.Drawing.Size(254, 16)
$lblDomainValue.TabIndex = 1
$lblDomainValue.Text = "xxxxxxx"
#~~< lblVersionValue >~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
$lblVersionValue = New-Object System.Windows.Forms.Label
$lblVersionValue.Font = New-Object System.Drawing.Font("Tahoma", 6.75)
$lblVersionValue.Location = New-Object System.Drawing.Point(130, 43)
$lblVersionValue.Size = New-Object System.Drawing.Size(254, 14)
$lblVersionValue.TabIndex = 1
$lblVersionValue.Text = "xxxxxxx"
$groupboxInfo.Controls.Add($lblComputerInfo)
$groupboxInfo.Controls.Add($lblDomainInfo)
$groupboxInfo.Controls.Add($lblVersionInfo)
$groupboxInfo.Controls.Add($lblComputerValue)
$groupboxInfo.Controls.Add($lblDomainValue)
$groupboxInfo.Controls.Add($lblVersionValue)
#~~< btnClose >~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
$btnClose = New-Object System.Windows.Forms.Button
$btnClose.FlatStyle = [System.Windows.Forms.FlatStyle]::System
$btnClose.Location = New-Object System.Drawing.Point(518, 462)
$btnClose.Size = New-Object System.Drawing.Size(87, 23)
$btnClose.TabIndex = 2
$btnClose.Text = "< Back"
$btnClose.UseVisualStyleBackColor = $true
$btnClose.add_Click({BtnCloseClick($btnClose)})
#~~< lblCoreConfigText >~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
$lblCoreConfigText = New-Object System.Windows.Forms.Label
$lblCoreConfigText.Font = New-Object System.Drawing.Font("Tahoma", 8.25, [System.Drawing.FontStyle]::Regular, [System.Drawing.GraphicsUnit]::Point, ([System.Byte](0)))
$lblCoreConfigText.Location = New-Object System.Drawing.Point(22, 47)
$lblCoreConfigText.Size = New-Object System.Drawing.Size(230, 36)
$lblCoreConfigText.TabIndex = 1
$lblCoreConfigText.Text = $TextStrings.CPMenuDescription
#~~< lblCoreConfigTitle >~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
$lblCoreConfigTitle = New-Object System.Windows.Forms.Label
$lblCoreConfigTitle.Font = New-Object System.Drawing.Font("Tahoma", 8.25, [System.Drawing.FontStyle]::Bold, [System.Drawing.GraphicsUnit]::Point, ([System.Byte](0)))
$lblCoreConfigTitle.Location = New-Object System.Drawing.Point(20, 29)
$lblCoreConfigTitle.Size = New-Object System.Drawing.Size(270, 18)
$lblCoreConfigTitle.TabIndex = 1
$lblCoreConfigTitle.Text = $TextStrings.CPMenuTitle
#~~< panelMenu >~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
$panelMenu = New-Object System.Windows.Forms.Panel
$panelMenu.BorderStyle = [System.Windows.Forms.BorderStyle]::FixedSingle
$panelMenu.Location = New-Object System.Drawing.Point(-4, 85)
$panelMenu.Size = New-Object System.Drawing.Size(657, 360)
$panelMenu.TabIndex = 0
$panelMenu.Text = ""
$panelMenu.BackColor = [System.Drawing.Color]::Gainsboro
#~~< btnDateTime >~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
$btnDateTime = New-Object System.Windows.Forms.Button
$btnDateTime.FlatStyle = [System.Windows.Forms.FlatStyle]::System
$btnDateTime.Location = New-Object System.Drawing.Point(69, 320)
$btnDateTime.Size = New-Object System.Drawing.Size(152, 23)
$btnDateTime.TabIndex = 16
$btnDateTime.Text = $TextStrings.DTButton
$btnDateTime.UseVisualStyleBackColor = $true
$btnDateTime.add_Click({BtnDateTimeClick($btnDateTime)})
#~~< btnKeyboard >~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
$btnKeyboard = New-Object System.Windows.Forms.Button
$btnKeyboard.FlatStyle = [System.Windows.Forms.FlatStyle]::System
$btnKeyboard.Location = New-Object System.Drawing.Point(69, 291)
$btnKeyboard.Size = New-Object System.Drawing.Size(152, 23)
$btnKeyboard.TabIndex = 16
$btnKeyboard.Text = $TextStrings.KBButton
$btnKeyboard.UseVisualStyleBackColor = $true
$btnKeyboard.add_Click({BtnKeyboardClick($btnKeyboard)})
#~~< btnFirewall >~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
$btnFirewall = New-Object System.Windows.Forms.Button
$btnFirewall.FlatStyle = [System.Windows.Forms.FlatStyle]::System
$btnFirewall.Location = New-Object System.Drawing.Point(69, 186)
$btnFirewall.Size = New-Object System.Drawing.Size(152, 23)
$btnFirewall.TabIndex = 17
$btnFirewall.Text = $TextStrings.FWButton
$btnFirewall.UseVisualStyleBackColor = $true
$btnFirewall.add_Click({BtnFirewallClick($btnFirewall)})
#~~< btnPrograms >~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
$btnPrograms = New-Object System.Windows.Forms.Button
$btnPrograms.FlatStyle = [System.Windows.Forms.FlatStyle]::System
$btnPrograms.Location = New-Object System.Drawing.Point(382, 291)
$btnPrograms.Size = New-Object System.Drawing.Size(152, 23)
$btnPrograms.TabIndex = 18
$btnPrograms.Text = $TextStrings.ARPButton
$btnPrograms.UseVisualStyleBackColor = $true
$btnPrograms.add_Click({BtnProgramsClick($btnPrograms)})
#~~< btnDrivers >~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
$btnDrivers = New-Object System.Windows.Forms.Button
$btnDrivers.FlatStyle = [System.Windows.Forms.FlatStyle]::System
$btnDrivers.Location = New-Object System.Drawing.Point(382, 186)
$btnDrivers.Size = New-Object System.Drawing.Size(152, 23)
$btnDrivers.TabIndex = 18
$btnDrivers.Text = $TextStrings.DriversButton
$btnDrivers.UseVisualStyleBackColor = $true
$btnDrivers.add_Click({BtnDriversClick($btnDrivers)})
#~~< btnDisplay >~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
$btnDisplay = New-Object System.Windows.Forms.Button
$btnDisplay.FlatStyle = [System.Windows.Forms.FlatStyle]::System
$btnDisplay.Location = New-Object System.Drawing.Point(382, 83)
$btnDisplay.Size = New-Object System.Drawing.Size(152, 23)
$btnDisplay.TabIndex = 18
$btnDisplay.Text = $TextStrings.DisplayButton
$btnDisplay.UseVisualStyleBackColor = $true
$btnDisplay.add_Click({BtnDisplayClick($btnDisplay)})
#~~< btnUpdates >~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
$btnUpdates = New-Object System.Windows.Forms.Button
$btnUpdates.FlatStyle = [System.Windows.Forms.FlatStyle]::System
$btnUpdates.Location = New-Object System.Drawing.Point(69, 83)
$btnUpdates.Size = New-Object System.Drawing.Size(152, 23)
$btnUpdates.TabIndex = 18
$btnUpdates.Text = $TextStrings.WUButton
$btnUpdates.UseVisualStyleBackColor = $true
$btnUpdates.add_Click({BtnUpdatesClick($btnUpdates)})
#~~< lblRegional2 >~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
$lblRegional2 = New-Object System.Windows.Forms.Label
$lblRegional2.Font = New-Object System.Drawing.Font("Tahoma", 8.25, [System.Drawing.FontStyle]::Regular, [System.Drawing.GraphicsUnit]::Point, ([System.Byte](0)))
$lblRegional2.Location = New-Object System.Drawing.Point(69, 251)
$lblRegional2.Size = New-Object System.Drawing.Size(248, 31)
$lblRegional2.TabIndex = 13
$lblRegional2.Text = $TextStrings.RegionalDescription
#~~< lblFirewall2 >~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
$lblFirewall2 = New-Object System.Windows.Forms.Label
$lblFirewall2.Font = New-Object System.Drawing.Font("Tahoma", 8.25, [System.Drawing.FontStyle]::Regular, [System.Drawing.GraphicsUnit]::Point, ([System.Byte](0)))
$lblFirewall2.Location = New-Object System.Drawing.Point(69, 152)
$lblFirewall2.Size = New-Object System.Drawing.Size(263, 31)
$lblFirewall2.TabIndex = 14
$lblFirewall2.Text = $TextStrings.FWDescription
#~~< lblWinRM2 >~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
$lblWinRM2 = New-Object System.Windows.Forms.Label
$lblWinRM2.Font = New-Object System.Drawing.Font("Tahoma", 8.25, [System.Drawing.FontStyle]::Regular, [System.Drawing.GraphicsUnit]::Point, ([System.Byte](0)))
$lblWinRM2.Location = New-Object System.Drawing.Point(382, 249)
$lblWinRM2.Size = New-Object System.Drawing.Size(242, 19)
$lblWinRM2.TabIndex = 15
$lblWinRM2.Text = $TextStrings.ARPDescription
#~~< lblDrivers2 >~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
$lblDrivers2 = New-Object System.Windows.Forms.Label
$lblDrivers2.Font = New-Object System.Drawing.Font("Tahoma", 8.25, [System.Drawing.FontStyle]::Regular, [System.Drawing.GraphicsUnit]::Point, ([System.Byte](0)))
$lblDrivers2.Location = New-Object System.Drawing.Point(382, 150)
$lblDrivers2.Size = New-Object System.Drawing.Size(242, 31)
$lblDrivers2.TabIndex = 15
$lblDrivers2.Text = $TextStrings.DriversDescription
#~~< lblDisplay2 >~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
$lblDisplay2 = New-Object System.Windows.Forms.Label
$lblDisplay2.Font = New-Object System.Drawing.Font("Tahoma", 8.25, [System.Drawing.FontStyle]::Regular, [System.Drawing.GraphicsUnit]::Point, ([System.Byte](0)))
$lblDisplay2.Location = New-Object System.Drawing.Point(382, 37)
$lblDisplay2.Size = New-Object System.Drawing.Size(242, 31)
$lblDisplay2.TabIndex = 15
$lblDisplay2.Text = $TextStrings.DisplayDescription
#~~< lblUpdates2 >~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
$lblUpdates2 = New-Object System.Windows.Forms.Label
$lblUpdates2.Font = New-Object System.Drawing.Font("Tahoma", 8.25, [System.Drawing.FontStyle]::Regular, [System.Drawing.GraphicsUnit]::Point, ([System.Byte](0)))
$lblUpdates2.Location = New-Object System.Drawing.Point(69, 41)
$lblUpdates2.Size = New-Object System.Drawing.Size(242, 31)
$lblUpdates2.TabIndex = 15
$lblUpdates2.Text = $TextStrings.WUDescription
#~~< lblRegional1 >~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
$lblRegional1 = New-Object System.Windows.Forms.Label
$lblRegional1.AutoEllipsis = $true
$lblRegional1.Font = New-Object System.Drawing.Font("Tahoma", 8.25, [System.Drawing.FontStyle]::Bold, [System.Drawing.GraphicsUnit]::Point, ([System.Byte](0)))
$lblRegional1.Location = New-Object System.Drawing.Point(69, 235)
$lblRegional1.Size = New-Object System.Drawing.Size(171, 16)
$lblRegional1.TabIndex = 10
$lblRegional1.Text = $TextStrings.RegionalTitle
#~~< lblWinRM1 >~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
$lblWinRM1 = New-Object System.Windows.Forms.Label
$lblWinRM1.Font = New-Object System.Drawing.Font("Tahoma", 8.25, [System.Drawing.FontStyle]::Bold, [System.Drawing.GraphicsUnit]::Point, ([System.Byte](0)))
$lblWinRM1.Location = New-Object System.Drawing.Point(382, 233)
$lblWinRM1.Size = New-Object System.Drawing.Size(217, 16)
$lblWinRM1.TabIndex = 12
$lblWinRM1.Text = $TextStrings.ARPTitle
#~~< lblFirewall1 >~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
$lblFirewall1 = New-Object System.Windows.Forms.Label
$lblFirewall1.Font = New-Object System.Drawing.Font("Tahoma", 8.25, [System.Drawing.FontStyle]::Bold, [System.Drawing.GraphicsUnit]::Point, ([System.Byte](0)))
$lblFirewall1.Location = New-Object System.Drawing.Point(69, 136)
$lblFirewall1.Size = New-Object System.Drawing.Size(171, 16)
$lblFirewall1.TabIndex = 11
$lblFirewall1.Text = $TextStrings.FWTitle
#~~< lblDrivers1 >~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
$lblDrivers1 = New-Object System.Windows.Forms.Label
$lblDrivers1.Font = New-Object System.Drawing.Font("Tahoma", 8.25, [System.Drawing.FontStyle]::Bold, [System.Drawing.GraphicsUnit]::Point, ([System.Byte](0)))
$lblDrivers1.Location = New-Object System.Drawing.Point(382, 134)
$lblDrivers1.Size = New-Object System.Drawing.Size(217, 16)
$lblDrivers1.TabIndex = 12
$lblDrivers1.Text = $TextStrings.DriverTitle
#~~< pboxRegional >~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
$pboxRegional = New-Object System.Windows.Forms.PictureBox
$pboxRegional.Location = New-Object System.Drawing.Point(22, 235)
$pboxRegional.Size = New-Object System.Drawing.Size(41, 45)
$pboxRegional.TabIndex = 8
$pboxRegional.TabStop = $false
$pboxRegional.Text = ""
#region pboxRegional.Image = ([System.Drawing.Image](...)
$pboxRegional.Image = ([System.Drawing.Image]([System.Drawing.Image]::FromStream((New-Object System.IO.MemoryStream(($$ = [System.Convert]::FromBase64String(
"iVBORw0KGgoAAAANSUhEUgAAACcAAAApCAIAAAA5y6cSAAAAAXNSR0IArs4c6QAAAARnQU1BAACx"+
                                 "jwv8YQUAAAAgY0hSTQAAeiYAAICEAAD6AAAAgOgAAHUwAADqYAAAOpgAABdwnLpRPAAADnBJREFU"+
                                 "WEedl3dQVFm+x3tm69Wren9t7b7aLX373ro7JlAMoIQhixKVJIIKKIhiBFRGHRUV0FVBSUrOOTah"+
                                 "oYnd0Lmbzrn73s65Cd1Ak4PAu85M7TxnGdd9p07VPXW763zO9/s7557f7yuJRAL7V9pXMNi/w34D"+
                                 "++o3q5sfoMHm1+sw2Ner67AP6xu//Y912Nf/9hVsY3F5cw22+blZIeqXN6VEzgFADINOlwkQfGIR"+
                                 "EdNIx2JBWgOJFl+ETSwdrcYb+kcVeBpbrpAqJNJfmxn25UihBmxjD72ml2TSnqB1VQiwPGOw/14b"+
                                 "vpPBMI5JRBpBfD7m1GtcSCb5cklXu3iYIuAAUvmW838RFVozlku/R3t9nhF4g+mTRot5w8gskT5F"+
                                 "jee/wjJb2ILNjUmJQRlbjrlc2xuZN+R1vyehqblE3FWMxdF5wn8EfwFVqWpnj1xnJQUpDt7ln4vp"+
                                 "7A2uoVzvYqYRiQ/xPUH1pGwye3PTfLeN5pk7cqZ8OLwYf/I9N+z1YHwZKvxd+6OuEpyYLf3U7H9C"+
                                 "FYLSEmpPID70BM82iHn0Du3mpXbyxS5xtzabbKrOZpECm5ne7Yw4JMO/knRudDIWp45Fq8/VSyIy"+
                                 "kEn1feEZjfHE6/cYcX0MCgD+rPmzVBCsxSJcW4O8ObahTJcAtONbcUgxq7JaPATMlioXa7SL6ByG"+
                                 "MJJluqiejwYmY4HZOIIxrkN+oYjtfxdxqbDrXGFlEvNKznzAPVTaII0nlyl/JP8qFfKEQBH6dMYe"+
                                 "YezzIR/2I9ldop9qFTQTjY3MmWb1Qjc4K+ROMdEK8WNw7NbsZvz46iWW6dKAKq4FuFQtCHuBD0jG"+
                                 "eCd0XkemPWZfC6vKul3QSSb9pPdXqSqZ4UZdrj1ofVLxbSDzcAT7aBwrtImLERpZsvku1XL/qElf"+
                                 "LNTUgvI3csPdmdV45XwMfSIGpYmBA7FV3KgCTmga1e8u8nF/wXeN2YdPlTkE5WW+RYHgxwhvTVXI"+
                                 "JW0N3D099s7KA0GgrR/HJpTl9FAcgtBngJY22RIeZWTRtRq4ylxlmn05PpM8s3pFPneRMRaNUse0"+
                                 "g7FVvMgcRnAK8XhSZ4b80XtBquvpSu9rL/zDK2gEoVIh35oqlWljX6X9oeeP9lJrR/ruA8PW7iSn"+
                                 "DE0wZjaRMNGTL5Gny0wNpvmO2YX29Y3stQ+3TauxckskfeL8kCq6BbhQxTmXQwt5Sna9iPR+UHz+"+
                                 "bVlqa3a96nJYbkJmQ5NKLd2CqlZJkb0c76sPtyP/tJu17Zu+P+3s2ulIsjmrPZatqLw3akhQzOas"+
                                 "bLRtbDSureUsraVYVq4al6OBmXCqMbxPea5ZHFnGPfuWHvyE7H2LcMC31+9R0eBmIkJ39qnY7Urr"+
                                 "DS2o3oIqlUrzMtFH4279Hr9tR93BnSVu1i32R2kOpwmJ0b3YsxT9bfPy86UPr2bX0i2r96dWb48t"+
                                 "3lJaIrnmYLzuNFJxtkF4toQdlkENfELyTcDZ+nRGZOc3jEcWiUJS2Z6RQ+FslnkL6iCaGxJUtTs2"+
                                 "9rfD/3nwVppNfPHRtDferSknytuPdahP86cuaxeu6uau6xbi9QuxmoUbitnvxKZoqvHUoDq4XXqm"+
                                 "Rhj2nn36JeXU94Tj19G2AfDoglcFgO8LmvszrkeC4HR+O3ELajOc4uiQuyPu3Lbav9h4lewJHzqc"+
                                 "POL3vsGlcNgFrfFnTQRzJsOFU2cFpnDRVIhgKoI9Gc0YC0SrfTtk/nVAUDEvJJsenEb2T8Z7XEQ5"+
                                 "hDc96LuZD7g/Ids/47leFXuffZe5BbWydsTqQPr2SwE73hyxcci1Cm2yTezzzBy0z6fZtqvdBrXH"+
                                 "R3TeeJ0f0eBDNHjj9ceHdV4DKs922bF6wKeUH5DFPPWcdvIB0ecWzimk3yWmPH04vkQZmM7zvkW3"+
                                 "j+DaHc2K+CUVCmpZ9cCunfePeid6FfoHxaUH3s4KeVQfmFrl/rzj4Bv60XqxI1zq3C13QSjcupWu"+
                                 "3XL3TqVrm8y9FvAqFfjmcP1e0Hwfkr2TcJ6XMEf8kHbBpcnI+DzQ9/GoX9jgHs++PTbZx35JVSkU"+
                                 "bZ0jF67m5mY31iDgtb1ttV3dNS29+dXwF+U1V7K7/LP6HN9R7SoF9rWAYy3wbR3gXCN2rhC7Fgo8"+
                                 "sznHX9C9H1FO3CF5XkE7hQ0e8ETs9agIK7oQN7I3vHG3R/22fU3/vSPN8xMq9BUUiMV4ArENiUYM"+
                                 "kfpxzCECs59AJ7AEg2QWmkDtHBioau+8lNVr/5Jil8ezz+M55vGc87jOb7nur5iez6he35O9Egme"+
                                 "8ZhvIwYP+/RaO3RYu5e6FUce7tl+qGT7X/P+65sS2x3JnzqsUiiRaGxzHx5Fl/AVOuPMPE+qLO/s"+
                                 "V42bAbVeoNCM0ASYUSYShY75W5NjCsk+lemURnNOpbs9pXo+pBxLJnslETwuY5wjBmz9e/e7d+5x"+
                                 "aN3lUGobl/5NjcP/tP1x16Pjh6OeuF9L+0kr9HEEQWAQT20eICNwVJ1p2mg2WxYXKBxB/LO3PIkc"+
                                 "WoNMZ0AQSN1YKo0vIjEpN1KLnRMxLkkk1ztEj0S8xy2cx3WsSwzK4cyQnW/vPpeuvU6tex2b9zrU"+
                                 "WjsVH7iRvD8lwtrn/sHAl2/K+mEQD5BKRYCkZxCHZYjmlpcoHD4XVCj14/pJM0SNffyaKZaox8bY"+
                                 "INiFxpL5fI5UTuLxKazRy3cLnCJ7naLRzhdQzlFDjmcGjgT2HzyO3P8D0sqxwcq5xsq1ysqpaK9L"+
                                 "1l6XjN1Oz+0CM/ig4aNWrlCMGmXj2eCkZW5yekZvNqsMYzKNTjv+AzXlNVssUWgMfIlMpFDxJFKG"+
                                 "UMwAxXSxAInsOR2Xc8C78pBvx2H/3oPHu23cEdYucGunFivnRivX6n0u5dbuZdYehfvcc608M238"+
                                 "M0OvVeu1RogKYoij9UisTD8xYZlVGoxK4zhElWv12vHJH6kcUKbQ6wVSGVciYQJiFgASOfwuEoHM"+
                                 "pOU0vLa/dsParWavE8LaGW7t0mrt2mLt3gi9sfYo33+sxMar8MCJ9zbeOQd9sx0i8ovrqVq1HAbd"+
                                 "O11DpB4CY2SUoRs3qSGq3qDQGf5OjUt5DelTGvRCuYIvk3MlUr5M0YnCVHf3Ufm81v6W0MfXHILr"+
                                 "9rvXWrlUWbtX7/es3udVdeB4uY13qY1v8SG/QtvAgiNB7x3OFJ1OasQSoYxCChvCEYYZAtPCokyn"+
                                 "VxvHoA4hob0DUQ3j5lGu8MrTTIlCrdIbhD8gOWKQJQZJHB4bkPFVSjyFEZ8Zv+u+06Hvk2wTUuyu"+
                                 "pR+OemUTkG8bWHEoqMwupNQhvNQ1qvzY5eqAhMaCBppMpoLOJww5jBOoDIZpi27CBD2hDiFVej3U"+
                                 "TVNTFK7w3Hdpo1wBRCJwuCQ+nyoCGKCUp1DyFSpAr4PkphY+3/7sr7/L+csf3u/a3vrn/Xknjkbn"+
                                 "Op6tcYqpdY2r87pa732zIeRpd3LWCIH6U5YKG8SSdZMWg8ks10KuGpRavVKngwYSlWpyelI7Ph71"+
                                 "4DlkgESjE0LL1BlUY+M6sxmKvcxo1E5N8STgu4qivWm2v8/dua3Eame5h33KI7fYSs+E1hN34b73"+
                                 "4Ccfdp15OXgtBztAkv09SYQNEKnDdDZ0BJV6yFWDXK2VqjWQmVgqCzFCeF5Y63flXmp+1cvShmf5"+
                                 "1elFtX8rqavo6CVyBAK5Gs1k86SS8rpa2yz3HTV2+1uPueWk+iQ2+N7vOpnWF/S870zmUFQBIToH"+
                                 "1zjAVao1P1PREJXKhM4o5C1EFclVXLGULQKReFJVR1/Sy3duUQkp7yoqO/oKGjt/7BAVPoQXqTRE"+
                                 "IQCqVWXNte6NJ+36/d2Q8QEvSk496g55i4p4j71YQY5r4l4pp7+pG5Ipfhb6MVvDjjLGZ+a1kIcq"+
                                 "rVCmYItBSDeZIyBzeIBagx5l59W1T1gsppkF9YQJOlomy8L03NLEzOzcyurm5qZhTJ9fkx9QFetX"+
                                 "nhWYVRL4FH4ma+hiBSEezrmKlN6sIr+va0dhsFLpp1QCjSFWaKRag0Ci4IASBl9EYPPwbN4oX8iX"+
                                 "K8hcUc8IBVBpdWaT3jxtnpubXV5dXNtY29zc2FyHnnKdOqPwzfn08tAH3RHPe6PycbGNzNg25uU6"+
                                 "xuMceFNj8zAaLRT+stSBoXF4QK2D7KLyRJCxFDYPx+JSuAK6EOBJ5YBGB2i0CuO4cdoyYZmbmV+c"+
                                 "X15eXVu3LMwvLa+sf1jj8PnJTzJP3qkKfNQWnNoSmtpyPr3h+tPSzFdva6rLWSyWXL5FWQfr6evn"+
                                 "AOJBMq19aITJFxBYXCKbR+WLWGKpQKmRG8Z0pikIaZ5bnF1aWYHUrX/Y3NiQKDWgUjM9balpbo2I"+
                                 "jAyLunrhasLlm7eT7zx4/SKttDC3oaGeRCL9av0qEoswZBKOwcIzOWQOn8jiknlCugASqgC1etX4"+
                                 "pHF6xjS7NLe0vLQG1eOQsRB0Y3l5ZcJsFijUZRUVdbW1zc3NbW1t3d3dw8PDBAKBTqfzeLzPVMYw"+
                                 "qPIYGkax+XzoOvsYTjaPB0q5EgXkuUxvhK68yZlZywJEgbbOJ211bbUd2YsZGdbpdAAAiH9oIPix"+
                                 "koHSoM8X4zC5TMZls1FYLIXNpwrEo1xeFxpP4ghlujHV2IR5YWlpbX159QMEXF5Zlqg1S0vL0Hja"+
                                 "YsFRqa1wuEz2yeb8wsr/p1udyWSicESmQAglK60oLFemVI5NGC0WhWFcrh9bXYH27McGKDRG48TU"+
                                 "9DSVxW5ra1er1V+I+cXffs6baDQaBo8ns9h8iQIiaU1TS+ubPJm6CTk8t7AEIT+srqyurkzMzg+T"+
                                 "yAhEzz+18XNx/b+/QcGls9iIvn4cnSFSa7WTJvPsnEytW1xenJienVpcpjHpI3g8lcEQiUT/P5Vb"+
                                 "VM3Q8mVyuUgsZjIZiG5EGwLR3dfX3T8IR3Q1wuHDGAwAgNC22fII/kuL+F9qRfK3APf6MwAAAABJ"+
                                 "RU5ErkJggg==")),0,$$.Length)))))
#endregion
#~~< pboxWinRM >~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
$pboxWinRM = New-Object System.Windows.Forms.PictureBox
$pboxWinRM.Location = New-Object System.Drawing.Point(335, 235)
$pboxWinRM.Size = New-Object System.Drawing.Size(41, 45)
$pboxWinRM.TabIndex = 9
$pboxWinRM.TabStop = $false
$pboxWinRM.Text = ""
#region pboxWinRM.Image = ([System.Drawing.Image](...)
$pboxWinRM.Image = ([System.Drawing.Image]([System.Drawing.Image]::FromStream((New-Object System.IO.MemoryStream(($$ = [System.Convert]::FromBase64String(
"iVBORw0KGgoAAAANSUhEUgAAACMAAAAkCAIAAACMvhS2AAAAAXNSR0IArs4c6QAAAARnQU1BAACx"+
                                 "jwv8YQUAAAAgY0hSTQAAeiYAAICEAAD6AAAAgOgAAHUwAADqYAAAOpgAABdwnLpRPAAAAAlwSFlz"+
                                 "AAAOwQAADsEBuJFr7QAAC3NJREFUSEttl3tMW/cVxx2SplKnaptWVa20Pzatmrb+025to2qaOqmT"+
                                 "1m5t1krdtJCykaZJgIWwQBICISGBsKYkTQkh0IB5x+FpYl42YGyMMY4fFxv8wu8n+IFtMGCMbXzt"+
                                 "s3MhS9uEnw7G9rX8ud/z9h6j0Uij0fbu3bt//zNpabQ0IPdAClIpGi0tHo/voSXJZCpt775kMglp"+
                                 "e5OpPWl7n93YiCUT0R//5Pm0tGdisVgqBXh13759+/fvT0tLw+f4hbsci8Wi1WoIuUg8zRWKheOT"+
                                 "k3zJrECmESlso0LN2JRjgDM/OGZn9hv72YtDo+4JYWxKnGKxVL09jNnZ2bk5rcPhMpvN8/PzGo1G"+
                                 "LBarVCq8+6cPTaWaax2WlY2s3hn30KcCDQJfk2itVbTGEMc6pTGmAlgEsAngEsAjQECAmACpEkSS"+
                                 "aFFR/uSkeGUlCdsnlUqhGrzvlpYWuVy+CwkF1QutOUI4PwVfSqFOCY1KaJmBewR0ENBDAJOgYEME"+
                                 "cAgYI4BPgAhhc1BcVCyVWvx+2NiAaHQHBwqFIjMzUygU7kJaWFjAT6xFkpLFreKp5JcPoU4OdAKa"+
                                 "CWgnoJOArm3YwLay0f8rk2mhmynUqOMOB3g8EApBPE6RampqSktLUdkuJKvVGgmH45vhrY1w9Uwi"+
                                 "nw83ZFCvhCYCWglgbJN6CXhAwKASWNLEgGiznxd6wAka9SGnE8xmsFgo2Ooq+Hwrx48fHx4e3j1O"+
                                 "GEYM7PLy8lLQN6zZ+IydOs+P3xbFGh7G6ybDtSP+O32OmvuG6sbZqpqH1TUPa+5I0W7XyC2WRZKM"+
                                 "oY54PBUKkYEAdHSwjhzJnJubM5lMu2jCC5OTk3a73eVyzCntxXXSvP8KC8vY54uZxcXMixdZly4N"+
                                 "XLkydPkyu/zK0BcVIzdvCugNYoy6TmddXg6urKyEQqFAwO92ezs771dWXkPM7t7DdyUSCZLwLkxa"+
                                 "XeOtvtzs+tOn7p0puF9Y2I2wsrLB2lp+X9/MwMCsSKSXSMwqlVWlsmByOxwOdD6muMFgMBr0arV6"+
                                 "dHSUzWbr9fpdNCEDk3J9fX1ra2vB5eplCvLy2ltahH19+LZFp3N5vUGn0+t2L6EtLfnxBHwen3th"+
                                 "wWm32SxWK2rQz8/rVDqt2azWarU8Hq+5uflpGA1JmJroAaoLAFgDcQeVRPg8jvW/ubkZDoc31ldD"+
                                 "oWAw6F9a8no8C55Fh93uUBodAq1jdM7VKfPcES0fnSYbmulYZLm5uZh+U1NTT8iiSARBYF7gvXht"+
                                 "Vr0/8kZ/SrMUAzISiYTX1kKrq8trK/6VgF/lDEwYAw3EcsV06BQ3fng0+e5Q4nctwReumn91Xv7b"+
                                 "Cw9PHLuUnV3U3c0yGpV2u20X0gwhR9VSqRR7CeHxvseCnKkEJDb0vvCYOfIVsfkJJ3aAufVWTwIf"+
                                 "32DCGyz4zQN4t8H29//cryjp6e+SDA9rRkZM2KJqa6WXLvXeujWAXsX4fRdGw6gShFSh0nZ0dsqk"+
                                 "UmNo9XNu6vUu2NcAL7TArzvgD33wDw5kcOAw2jhkjMOnzI2cMu69G73LvsXNCASD4PUmXS4wmZJq"+
                                 "NRgM0NJiysvr7Onh6XTzj2EUSS6X9M54bo05lUZDajVYIEjmjMMuxod/T0BWt6fwwvAoU0YFMwlL"+
                                 "S4BNBut3fh5mZ4EgQCIBkQg6O9fz8gZbWzmPldGcTqdMNnVjxEI7oT/dZQsHQ6WiZOEkPGkiKBRB"+
                                 "6RicOcPkjc9Fo1tI2tqiugNidDqYm6MwyODzYXQU+vuT9fUrOTnM3l4OVQM4m7Y1Td3gOWn5ix/S"+
                                 "7UFPsEpKdb/vmQwqpVDNSxRfHBMOECRJPmqogB2IwiiVjzDj48BmA5MJXV3Q1ATV1ZCff1cgmEAK"+
                                 "RZJIBJWTi7SrGwc73W53sGEmVSuHRzYDtWgKaBTDNXqg+gbrMWPnSSRCqZHJYFoMiBkaojAMBjQ2"+
                                 "Qn09tLZCRYXi2rVbZrOJ8h6SGiVu2lfwQU/IvhBoVZL0GaArKLunALbcIxCpBTery7NrAwHXEyR8"+
                                 "qdaAXARiPgxvq+nooNQgprkZenpQXDQ3t3pmRkqRpqd5ZqetUb2ZwdkwuwL3VWSbGjT8kXXmmXjX"+
                                 "oc0HGdD2vuTQ2zcre6PR1NOkCJa6EsAEMTtwRyjAN99QahA5OIjOjJ87119ff5fmcrn4XO6C3RQK"+
                                 "LQV8iyGvr1dLduog2FcOTW9Bxzsw8H787uvMf2XWdXrQUZjTOPowFx6dACQXkpaJyOzYenwhCTFg"+
                                 "D2KWU3F68ADGxmB6Gm7f1uTnX6BI4+PjmBteLza3RbPTNzBP9ulBo7izKv4Ahv8CnI+h5rWG4xXM"+
                                 "YS9mFxryjEYq67Zw1G6ARrNYXizIOzNyr9qZCIHdgilOYTA1eDyYmUFxxuPHSx+RsCF6sKMtOI0O"+
                                 "L8dIDhuhNdxC3/iMFT7iMGVA3YHrJ+u53OUd0o5pNJCMwYoHykoYU/PiLkU4+2TLvAoCfiovxscT"+
                                 "U9NxiSyh1ZO9vdqsrAs0nO5cLlen0y0uLjqddpPNzbOQPAvcWaorDX1ybT39sPGdorsvVp5vk0ji"+
                                 "CgXFkMtBKgWVivKfkL9cWVYdA81EEE4XMNbXIolEzOrwmazeHVv0+fv65dnZJRRpbGwM+x660eGw"+
                                 "G6wLQgc5ZYcqZ1Wu472znoMfzh6gtdBOXW4kiBjqQAy6Ht0yOUmRZJOJgrOtAzx2WS2vvZ0LsVQs"+
                                 "uuXzr3l8qzsWXAkPDCqPHs2noRQk4RDDJLRZLQar66GLlLqg0lSZoft9luWPf5b/hkbfc7qwbnJy"+
                                 "FfsNYrALcDiUi1Z9AEForfaVXJLX1s77XOuwTq1j8UQiEo2H16PRaGJlJdLTI8vMzKVIOChxxuP0"+
                                 "tGD3tTgVHnLOAxfVl/8kfe2vyrfe5r9Co9PSiy9z2D4UhOU5PEwFHMuTPQTgATBDREwmtClAMLVY"+
                                 "fO+Ew9GSkqZz5y7SsCvgZML5ZLPZzDg+zXb1Eqnzw9m58wf4r7wjevVV9k+R9ObVg52NC9jWsKc9"+
                                 "Ls+7d6G/B1xiWBKBiwCH5eliS7ndq+npBW1trZQmPp+Pk4laJQwGvdmp95OmIJySF/xy8GXE/GLg"+
                                 "JSS9fPOVL0p5oyPYOqmSxIrB8sQivX+f0scZAu4YyORUd3/ilJf3HzqUPTurpEioCdOvvb0dd895"+
                                 "q8sVIl1rkCk88YPWZ3/IeO7Fjh/ta3ru+fqX3iz6W9MdW3c31Wx2MFg3fX1UzDBBMH6YmVjXjw9J"+
                                 "Jg0Gb3r62Rs3KnHZoLyHlYsk5KE4jd7iWSW9YcgS5v+s4+eHeP8slJQWTfecFeq+5DpPn+muq03Q"+
                                 "6ZQmxLBYVMwwQRCD2a/VUrMKf3rgSSRIg8F96lRVXl7Wzu5FkRAjEAh6cZJwOAaTLbBBBjdBuKga"+
                                 "dxH+jWQ4CnESGuXQqoBrPcbiM4KGhjgq2+5pVIKIxRQGp63J9C3JZlu6fJmenv4pg8HAYqXmE+57"+
                                 "CMAVF19jtIxm61qUXI3BWhyiJGVb266XOMlvjNDphqLqwcLCfgYjyuWCQEBNWEx9vR5sNmr+rqxQ"+
                                 "Hzabl/Lybqenp09MTGCu7Qx4Gv6hNNzcMU5IWnRjqlLfngAIR7bc/qDN6VFrdO1dD/JLKjIzMj79"+
                                 "9KOsrM+zsr6uqlKPj2+IRGG1ekunS8zPR/T6sFLpKSsbTk8/f/Lk8ba2tseYRyT8p1Qq6XT69evX"+
                                 "jWazf3nFYDILhFNt7YzSK2UnTmR/dPCDnJzssrIrzc2NWHwYzokJdnn511lZNwsL71VWjt66NVpR"+
                                 "MXjiRNXHH+cdPnwSd2a86e9iviVh2WIvZ7FYFy5cKCgoOHbs2JEjRz4/erS8vGxigo/NF6/6fD58"+
                                 "pJZYP66YS7gjz83JGIzWq1fLi4vLS0rKKysr+fxB3PSwX++s3989/wOoIFdQFv5FtQAAAABJRU5E"+
                                 "rkJggg==")),0,$$.Length)))))
#endregion
#~~< lblDisplay1 >~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
$lblDisplay1 = New-Object System.Windows.Forms.Label
$lblDisplay1.Font = New-Object System.Drawing.Font("Tahoma", 8.25, [System.Drawing.FontStyle]::Bold, [System.Drawing.GraphicsUnit]::Point, ([System.Byte](0)))
$lblDisplay1.Location = New-Object System.Drawing.Point(382, 21)
$lblDisplay1.Size = New-Object System.Drawing.Size(217, 16)
$lblDisplay1.TabIndex = 12
$lblDisplay1.Text = $TextStrings.DisplaySettings
#~~< pboxDrivers >~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
$pboxDrivers = New-Object System.Windows.Forms.PictureBox
$pboxDrivers.Location = New-Object System.Drawing.Point(335, 136)
$pboxDrivers.Size = New-Object System.Drawing.Size(41, 45)
$pboxDrivers.TabIndex = 9
$pboxDrivers.TabStop = $false
$pboxDrivers.Text = ""
#region pboxDrivers.Image = ([System.Drawing.Image](...)
$pboxDrivers.Image = ([System.Drawing.Image]([System.Drawing.Image]::FromStream((New-Object System.IO.MemoryStream(($$ = [System.Convert]::FromBase64String(
"iVBORw0KGgoAAAANSUhEUgAAACcAAAAoCAIAAADyl3S3AAAAAXNSR0IArs4c6QAAAARnQU1BAACx"+
                                 "jwv8YQUAAAAgY0hSTQAAeiYAAICEAAD6AAAAgOgAAHUwAADqYAAAOpgAABdwnLpRPAAADD5JREFU"+
                                 "WEe1mAdY03cax+P17F1be8/Vp0PvbKvSOpDznuppH2212D5S1KoIWrdIRayjjj6OXhWLIBvOBYJA"+
                                 "QggjIGGEQMIQySQJkB2yxz+DkYQV9gjk3hCknlbPPr174fk9eZLw++T7bjJDpVKh/hc2Y8aMN37/"+
                                 "xszfvexwjtnH7A6n43m3AvW3m0KpoAjJhKb77l+KkCJWiJ9zLeq3I+EGkUK4MG3RvIJZs9GvLyG8"+
                                 "8w56LpFf8v+lqtXqJlnjaxjUt5qNu/gfx1gDVxAX5DXk/AqqUqGi1tEf1DwUi8XsenYdlUZnMOGH"+
                                 "QWfS6PR6Fpvb0NDUyOPx+EKhUKlQANKgMZq7TCgcar9w/Zf89+LNIR8UvPdCVJlMzmvgS0RSg8kk"+
                                 "Fknr6miUyurs3LwMTGYmFpeVk5uTl5eXjy8oJBQSiotLyqqqqrkNXLlCIRJJOAyOHK96J+eV75W7"+
                                 "jio+KemO2kBeKZeq+40Dz5LriqtGo7FZbGMOR39//8BAf1ePvc3artciEmkzm8198KCWRKaUlJTe"+
                                 "JxTBL6m8ksFmNzTwEysSPsV5e6Uu+WvK/IU330XloiKRI1eRfcSu1CVlHyzEvDc3Y55nute6gjU3"+
                                 "uQlP4F1UuUxpNrY5nc7xcQecj9vo6Ghvr91m6zCbTEqVqsfeZbVYS0qLcRnZB1L2rKr0OCT9PFj4"+
                                 "1SX54WjVybTWH2+2nCZ23a2y4Ws7CitsKRltl4Nlvl8T/Z+kqjVqsURc97COz5UKhPyGeiaTShfL"+
                                 "pHod0tbWZrPZenp6gD39UQrw+SwGq6OlM7Tuynq6p5/QM0C8+IzGJ8p45G7bBaw1LMNyJdF8/KLO"+
                                 "71Dz6i8a5+xq/GxH2eZfoCrkCqlQbmm1jU9MTN0+7lRpEIu1zWAwyBVKiB8kjlKp7OruIhQROE1N"+
                                 "d5NSdt7z28pe809kR6hpT6r1fLY1HGMJTTSfjDQGXdQEhMg++4r/4Ue02b609f7lz6CqlbqRoeHe"+
                                 "bntnR0dfp52ALzsefiaLlGM2tGggBIBUq0UCUXevveB+AZ1Kw+PyQnK++Yyx7LTM74Lo8GXpiWuK"+
                                 "k/m2qKvInnjjiR+kgfubvtzGWetdu2I5cXFg1d6ntKrVcrkcMRh7+nvlapXVZlGINF9d3ip14i/j"+
                                 "AinVtRKRiM1hQ6GwWay+gd78ooJ6FhOHy47Lj9mD3b0tc8u2PP91Nz6eSURhLdePKzdc1u1dRpy3"+
                                 "q9z/fO25k7VHL1LP5vJxv0zV6fWIwdDS7sqp4X7H0uAVEdQ9t4tCm+Xq/t5em9XK4nBIZWWDwyO5"+
                                 "+TkMVj1QiwiE+/fv5+fn11fXFyeWzCG+jLH9sEXgcUy6wativlgu6jM8u3KgzEGrRqfV6rStrWZ3"+
                                 "XOtY9MySdCUih8cTE67ENhhbMjGYcaczNzubzeJAFRdMGlApFEpCbPzMYtRl7e7FNJRvvZcH4S/5"+
                                 "vNzn9SY3VefCGs3mtolJc4w6eu19DsfE2NjYyMgIPAOeiI2LAjwajeFw2FgsUAvd1KqqqriY2Dml"+
                                 "f4gyHdvL3rqb6beAMPdFqDKNXq016ltaWuBeIDkcDqgWN3J4eBieVGvN169ehwdZqek8DgebmTkJ"+
                                 "naImxibML5n/ej7qpUzUK9mo5YRFZDHpv2iFdqhRIXqt0WRqGR8fBx4Y8OAE5NDQ0MTEuEqjiAi/"+
                                 "CtRMdBqjkZuJwz5OTUlI6TB2IAjyghMMpdGoZTIZNEUDaG1tHR+bogIPwIODgwMDAw7HuEKtuZEQ"+
                                 "66JisFwuF/dYXMHDMTExAoHgBZGuPQJ4QNWqtZDELa1m8K2b51YJVGjOQG1ult+8kQDU9HR0I5cN"+
                                 "Hp508JSHo6KifjVVKpOp1Co9gpjMrUB1w0Di5DAY6OuzO8YdsmblveRkoN5Lx/B4jVk4bOGjuFZX"+
                                 "V0dGRsLg06jVbrkyuRwa2fPi+kirxk0ddTgAOU3tA6bdDmkllUvRqS5qRga6uVkMqVtcTHBrnaIK"+
                                 "BAYEgS4mV6tbLZbuHjuNynjmpJuiarUIYjC1toyOjYJEsF6YNXY7nD09XaOOUZFEhk5JAyrmXoZO"+
                                 "oyktLSaRSMXFxe7KiY6ObmpqEkqk4DSERmNkJyXW3WDz2FakI78Ar9Y9SZ+KqxoK1qAzm41DIyNA"+
                                 "Aoluand3d1dXF9SQWCTKQmOBmpKWajIaKWRyZXUlgAsLC4lE4q3btzkSqQYxKDmsETxWHnnqO+zW"+
                                 "Y2n7hRKBVd/5sLquooL8OPlRNiEaRIeYjCZIIoC5eTDj4IRhB8klkEhx6EyXh5NSre02GPVUKrWy"+
                                 "srL6Qe0AVHNnl5DB0DPpoyadk1VjzoqLrQw6hP1iR5T33ezbtpaOsdGxDlvnNBilUbtyWKfWGXV6"+
                                 "o8E4NDg0zQOVHR0dk9RhoViAycoA6p3kxKHhATbHZQDmK1Q8ckXTjz/2YpKdGplTL3OSiEhyZNzD"+
                                 "4FPEgANpG32iVq77YfnJe4fyy7Nh4XKDJ6lymQ7RaVVavU43MDgIsM5OmHgdcFpdZoGsFjaJ0fey"+
                                 "gJqQmAhVJRQIBXw+p76eKhDI8LnjF7/rT40fLsnqL0ZPRIQrLuw7W7E9qGLLgRyfHcmfrv3Jc+O1"+
                                 "1QmZUY0NjY9RZTK9Vq3RwaqEQB4BDAwkglkslvb29oGBwUZ+UxYGA9S4uBjHhEOhUMBnlQiFTLG4"+
                                 "GYdtD9zfGXrGHna249SBkQ0+XF9P34xla9IWrYp93/PCW7ODXvL67t0odBjvZ62uLiHVadRaGAAa"+
                                 "fV9vH8BAKPBcMi0W2GOgcoU8PnoyrvExMc4JJ6IHv+jUSiVLIpUD9fAe29lv2nd8jixd2IOaRfng"+
                                 "j38P/5PHnbdX3Jj7t4i33jo20+u0R1R6eFND05RWKGxXR4SRo9FrtXrIo0mvWkEi8OBsNZuhV/D5"+
                                 "QkwWDqjXI10zAF6CUWE0GhsVCl1RgTNos2P3+sE3f9eDQjlRKM2SWcui572bssgrabFH9MLXTr3y"+
                                 "0YUVMffiYET+TIUu0m6xmExmaN8QUyC5Da5uhZFrNvf2DvAbBVi0y8PXwsPhhLe5PdEg4LFra745"+
                                 "khoSmBG07frXvld2ekcnfB9ViXxS3byuUuxdyV9DyJtXmhWUV0Csn6YCXCKRMJhMiVTa2dUFsuA6"+
                                 "0AEwt5lMJuiPHB4XmzFJjYiAE6oZ2iU8oJArTN1mVAhj9pmmV8+zUaepqCDRbky5s2+zs+9LZ7+v"+
                                 "07reyXjfWRNCLCRQH3UryGE1MCrKy4OCgqDRwP8SgIG4AhuEQgXDjtFj7+GwGzGZLmpUXAyc4xOw"+
                                 "VjghtBcvXbK0sw7H1C44SPb6tswjuOjP+ysOx9416bY6bdudrVsn5Ou6Kj5sLrpOJD3k8x/FVaFS"+
                                 "Uen0sJ+uzXn77VdnverpuXTnzp1hYWGwEzHr6xVyuclgGh0akkqkJHK5xdqedDcdeP0DgxUUSvDR"+
                                 "I2vXro24fJEhky8OIi0JKvcIKn7zICUwNt2o2+G0+TnNfuPSlZZS31w0rpREAT1TcYUayM3D37x1"+
                                 "Oy4+/sqVqwf27Vu5atWCBQuWLVu20ccnODg4MSGRXAG+oDAYNCOiZdKpBkR/+9atgICADRs27Nm7"+
                                 "/+TZ700yxvlk7tKj1R5BxDcPVR+MxyNIoNO626lf72B6NZdH4AvK+LypYnV1Ca1WKxAKcTm5d+6m"+
                                 "pGMwaRmY6Li4+Lj48Gth27f7rVy5wnPp0lWr/+Hj63s0JCQ0NPThQ2pebravj8+mTZtPnT5dU1ML"+
                                 "aUgmlVDqeAfjGteeoy4/13gupcrUfsFp/3ZMvtHKPF9WVk4sIwPo5444/QhB9Dqtrqa2FovDFRKK"+
                                 "MrNw0bFx16Ojw65dO3H8eIC/v7e39+qPV23etGnLls3+/gHXI6PoDBrMUZhaKpWa/qCCUCMIy1Hu"+
                                 "TTckVjd3Dv5r3HppqCWZXkfNKyiDjeU/uv/TIxBeb21r43C5JaXE0jJSLj7/5p2kmOjYsPDwU2dO"+
                                 "7/APCDl+Ap9fAHvMJM9lsGjKZM0MWlUtV4wVjxTruiYcuc4BMptJT0nDczgNT1Ce9w0BpLdWp5NI"+
                                 "xDQqjcWqLydT0JnY20lJTBYTsveJi0C0SCioqyGTKA94CkQlp2MwmDw8CYbE08Je9HsJwEDewZoi"+
                                 "lkgej9DjN4JiaXOzoKmRQWXRaHQWiwOb9i+uEy9Kdf/xs3jTVwMY3K5xbSbI0/6Yftu/AdV1eavx"+
                                 "quE5AAAAAElFTkSuQmCC")),0,$$.Length)))))
#endregion
#~~< pboxFirewall >~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
$pboxFirewall = New-Object System.Windows.Forms.PictureBox
$pboxFirewall.Location = New-Object System.Drawing.Point(22, 136)
$pboxFirewall.Size = New-Object System.Drawing.Size(41, 45)
$pboxFirewall.TabIndex = 7
$pboxFirewall.TabStop = $false
$pboxFirewall.Text = ""
#region pboxFirewall.Image = ([System.Drawing.Image](...)
$pboxFirewall.Image = ([System.Drawing.Image]([System.Drawing.Image]::FromStream((New-Object System.IO.MemoryStream(($$ = [System.Convert]::FromBase64String(
"iVBORw0KGgoAAAANSUhEUgAAACcAAAAoCAIAAADyl3S3AAAAAXNSR0IArs4c6QAAAARnQU1BAACx"+
                                 "jwv8YQUAAAAgY0hSTQAAeiYAAICEAAD6AAAAgOgAAHUwAADqYAAAOpgAABdwnLpRPAAADYlJREFU"+
                                 "WEet2HdUk2m6AHBmj2fPvWdmXB2xEYpSQyItAqETagIhQBISQiohhdB7IPReRGmCKE26gvReEyCA"+
                                 "gIhRpCY0ZQAdr6MzOLo7jtx4Z86ud3bce3Tv+2e+731++fK87/M+X75YXV2V+ffGFzIyh2T+dPCn"+
                                 "Q+++eCuNdOjgi68Pvdt/e/DXdx+PK1X/nbEtkYzekcyK5x7uzS88XZzd2uyeW63jL/ZMrawsSTbF"+
                                 "fxxb5rPJdfHq5ML9wrmCdEFRi6S+TtSe2T8ueXSndequb/m8R9Fa/tDU1KPOhZX1fyY+U10Ur1WJ"+
                                 "biLGXb1XVCNHcQX3L41txoQJ1g5+XNzc2fXtuOt9cxR3bTH3dlfxTOPog/nfwZ+jzi1IUocbLWaN"+
                                 "KBvnEm7zUQ8OLsxPpC7tWq4fXBNvXhE9Rk/sMfh7xLbH7IqHDnEj7BHCtFjwIfzJ6tKyJKqtVbkF"+
                                 "5HBf31VodHOBUvR44+WrlIOXFRee7xOfH5C33ng+eM4Y2CQX3vPKF7A7SlOfw5PENP6s6O/wp6lr"+
                                 "ktWq2ilgr4ntQ23kBCRERJ4ST269Htj5aXbpzcrid+vRbw98dl55Te0wWlbpZffdkkXIkPsF30WQ"+
                                 "Cq7SM67zRx/8Cn+aOjG6ZJvJPb+jSljTR81B4laJUzt9+z/1b+xv3H5zwH+zn/G3A/ajn6i3d6md"+
                                 "Ek+pmjmNCBpvecMysGjVtcuODB4Rr75f1p+gPtnZKL4wJHtZ6/yjM9AZDeMxSPa28+7LrFv7v4wc"+
                                 "vH3w7u3IL78kvPobe2ufNL1L6lz1LL+Hz5xCBIy7p9d5596of+WR11j8cvO7T1PvipaD7LsAeRCl"+
                                 "u0cV69V1hjQJK4joracpPx9Uvf6l+q8/573+OXTvNXnpBUa4jW9a8bh2D5MyBfcXgC1EbQf0mxs4"+
                                 "rzHTxrkG6eP+9qxrEsna4sKmaHp7Yfbx/Oyj+Zm1u+OrU4LlmfGHd26vrG+In+yWNsx9+eeiQ1VH"+
                                 "lJOJ4KR6k6YgNH8MO//Ob+dl2JNXwXs/MXf3uWvPGXO7yN511/pF7OVZl/hxayb/vIswf0n6BcxD"+
                                 "Fq3GtvterL96ry7fm10a7loTdO2OtryYbPlhsu3FRNuT/qqNlsLlnmpRV92yoEM82TNcVZvknBRa"+
                                 "bhhCykCRZhEZQsO2HZ2ZA/OFV7DlffulHx0WfkDf+Q45vGXXsIwqE7lk30ZFCY0wI26ZJSWLyKQ7"+
                                 "Rv4rpkXjxVsrezLiza0lIX8qN344PXIoM1KQlzhakDhdlj1+OWHj3uhS07XN1pKtlqKdpvyd1qyt"+
                                 "hvTF6vipHJ7wYnj3hRDh1az4wvpLBXnZpRXR9T2MhnF4yybk1qZO1bdGl9ftEu7ZBwl0bYfx2bm1"+
                                 "e9i0OZTzuDypwvvxg+cykp0niyP9MxdjJtIjJpJDBHG+I7G+Ah7zEsK8NSO+h+fdGh/Sm8kbuhg1"+
                                 "JsVyo6fyIu6UxN2uvnSnPH3mgt90JluYRBcm0keiPca5uHtc/HKUx3QMvSOUyfIpNvEcAxn16ZIr"+
                                 "/MeB6Bq5s5XH4Jeprze+l5HsPl2dFNzNjx/LiBCmhw7FcgaivfkxzGxnu+a48OlYjoDHGuEx+VHs"+
                                 "7mBKsz+xjuHqT/LoTY1oi+b0JAf0Jgb0xrO7YxkdsYyBFE5tmHsZ2zneBRah9Q3Ojg1GTmpA2vWd"+
                                 "qjUH9RVq/gMQacTISXr2TPxeXexrF0RzhImBwkTfUR59mMecimVk4ZEtiWHCBF9+jPdwNFsQwx4I"+
                                 "o3QHEQd8MM6mZmMxnAYGppGBqWW6N/iT6tj4aia2LYjIhIIJ51Q8QMoBOgCMpa+q2QjQ6AZQ75Ye"+
                                 "LVMzDa0DTcgrmPr++8cy60+eCXu6sgP8ctiMfAohx1K/0h46SUPmOJh3Jvrei+cIpGoMZ5BL6wkk"+
                                 "NTFde1hoB3OrMR6rg+PWwsY2eTm3Ml3rPeyqCPAqoqOzMoAAOkPXVpOqKEPmWeNekMl1oGkZ2LRU"+
                                 "0zgHaJJa1cB/tvdIZu3Js3lBf3dGTHtSWGs8t39k9GZV+aW4qEA6uzQyotjeuInk0O+NHQzCd/ni"+
                                 "27zdRn2RWCtrqdrORjczXJq9UI1ervVU50oCvNwdjlKRdz+nTNNVDdRT8DClqVi2noOVaFld0bLJ"+
                                 "AdtleYTXjE09EItX36srwz2TacH3UgNq/KlpVPxMvL8wK2osm8fPz6jPzc5LiOLSqFEeHuEwszQL"+
                                 "4+uuNhgzKwHHrZZg10B1vElC1BDta/DWlTibq3gEWk2eBFIigs4wQAAzSy4QWafncAWCKoJir5gR"+
                                 "r16rHnyy/f64lar/NT/YNZ4cOJEWUhdMz2STJxL9Rt7/pHR+OK2Dgx0PpmTAjYfKCjpSuOUx3Isc"+
                                 "Vjo3Mo3iEevilI6GX3BDpiBgKTCDTDPtQrgZUumUHVAFDtFxNdI0w5VoE+pNiBVmnhVwv3r/jB7h"+
                                 "zMJv1X/t6XPJYMdEnM+DjIBmjnseizieEjIUzekPp/eFU9vY6F4OhmWgfYMb2O+N6eTg2n3cG73Q"+
                                 "dRxCBYd8mYmnYdAp3kwe1SPYHR2AcbaBQtGmULq5YYiOHNmJaRHT7xB2yzm2nXhpqp3/wUm39vTZ"+
                                 "cEdbLJmc5mCaaKSVhXdcjiSPcun9EfRODrbF172d5uRpoFsZyOrzw3X7EZq8XOqJ8BoPeA3BtsHD"+
                                 "HqUP6WVii7G2uTi7HDQcC1bBayqSNRW9gSfIBLZ98TSlkM9olHTNSrP5jyGz/vTZIr+/Oyuxt7ig"+
                                 "5mrJrcraaBI5CW51zQF2E20pTdgAwc5HR/O6P73fy6mF5drEwNTTHCrcbEqw1qVomJEe5JanSyHS"+
                                 "5DLCKNsF5qQqj32fWhVv4GmWfzh74mlk70b/w7WV/93C/I860CUtRn2hlKFIxoB07yeEDGYlZIQF"+
                                 "XsjKiWLT0/BuNFtYnq93Bca6DA2rdLOuxFqUo8yKkcbXUUYWUL1GulO2vWE2HBpna+SkAkCrAagg"+
                                 "JQ7odJB/aHr/Qo+Q/8+Noow0r/ODncJ4X2lxEPAYI5Feg6GUQQ423kSvIy64h+vZFBtaHR9xmRcR"+
                                 "RyHEEt1iUPaxzogomGmErkaWEdBeR6sJbZFmrp1mqhVlA3VWkcOonESpyCGAZxIjw5dvj/5hD/pe"+
                                 "XRvtux3N7o/wGorwHAgidfjhenwwPqb6tSGcHpardFPeoCJryI61FFQlDV3ojnBDOecH+8X7sAKJ"+
                                 "Hlgyg2MB9QarcTUVo/U17RRO6ijI2WiBcSDlygvJu7u7H1F39rrra1IsDW64W/fRUd0MVLOXyxAL"+
                                 "xYLqXA/mdHljmpjomzQn6aYsw9mUuMLKMTZQiMEtEjLTFprqZJVNdk6mEAIpZDwKibW10wdrumlp"+
                                 "EFTlPNVPN2cmf6zZltnY2VsVzTZXlF1ITuLRvKIc7PPglnWu1nQ97Qo2uRlv0+iJqqM6VrhZlUhX"+
                                 "ENr8iisMom9UT7JPtdRLMNdOt9DlGahzz6sHnQcGG4Ad5GUdFGQxKqeI6go3slL+lTrf3z4YSh0K"+
                                 "JlVSXArT00sjgxM9KYEkYq4vOwNpneUEy4ZBrtgb5iOgeXBosSPUzMigws06yVI33lw70RISZqAe"+
                                 "qKfKASmyddVhp4/Zy59Aq8iRNOQbMpM+rj57IeppafPFtzKcL8JNsqj4dopjJdGh1hOTTyfE4FAx"+
                                 "Lo5sG6tQHMbP0iRQD8yDqFhC9K5a6kQbAMPOq4dDwf56GiwtVU81gCdYyfT4Edjpb9BnT1DU5Spz"+
                                 "Ln5U3Xr+w0xLfR0VKS2q6XCLNCqugWR31RVWgrG9gjItdDK/hrLCa2kkU/GZBFQCjeTvjsFRyJ6G"+
                                 "eix1pWCQgh9Q0UcDQFOVIyqdIKrJGRw7DDvxF9OTR2Rljw2PT35UFUvWJppulBOdrjrBQqBa0RhE"+
                                 "Kcosz8E4x8E43dYg1Uo/x97QWv0szxGWYAyOMQZxDUFhppBwhKWng52LlYWlHgSloUw4C8DKn3CX"+
                                 "LuDD/yn39Vdq8nLSWpHJDf6oKr2wsrgg7O25npV2MdA/OyQoE24epX8uyexcnLFWtBEo1ULb5Kwi"+
                                 "FwGLMgSFQ0GBEHVf7bM+Wsoc8BkW6AxIQz0Ki3IxM7EzPG+vqalw7KiOvBzi9DGU/Dc8pue/Un+9"+
                                 "JhaLHz3efri40FFT3Vd+7XpSjJ+ZIV0FEKWrZqkA4NqYhEDUAvRU/fTUmeAzXiAlmjqApCYPUFSM"+
                                 "NNTEKZ2igpXZOkCD08cMvvna9PhhOOBoEBH/f6sf3rH97bdL8w+He7tHO9tbSoosTc1wQDW2KoCj"+
                                 "eYYJPktTA5CBiiSVk3g1gJyiUrCeOkbpOE7phLuaPET2a52jXxmfOGx96ijTGflp6m93i8XS7nx1"+
                                 "aWlOJJKsrI709kirAVVfmwFW8VAB4BWOuykDTioqsjTl3VUAbmdO4oFKuke+0jr6JVT2sK28bACV"+
                                 "9FnqH036/sf92Znp+PCIQCQi1NFGDaxNUpLFyMu6KR13Vz6tdeSrc0e+tNUG88LCRKJ/HKi/i/QJ"+
                                 "b1cfzhRLJHt7e6LZ2dzS8rzI8BSWF8UMCleS0wGcCvf36+rsmJ///fv5h9M/U/17CIlEsrW1Jbp/"+
                                 "v6OtvbaosLq8ZFUiWV//g/8i/j/VX2NJ7W93dl7u729vb38slx9+/t/Z/pXxlVTXEwAAAABJRU5E"+
                                 "rkJggg==")),0,$$.Length)))))
#endregion
#~~< pboxDisplay >~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
$pboxDisplay = New-Object System.Windows.Forms.PictureBox
$pboxDisplay.Location = New-Object System.Drawing.Point(335, 23)
$pboxDisplay.Size = New-Object System.Drawing.Size(41, 45)
$pboxDisplay.TabIndex = 9
$pboxDisplay.TabStop = $false
$pboxDisplay.Text = ""
#region pboxDisplay.Image = ([System.Drawing.Image](...)
$pboxDisplay.Image = ([System.Drawing.Image]([System.Drawing.Image]::FromStream((New-Object System.IO.MemoryStream(($$ = [System.Convert]::FromBase64String(
"iVBORw0KGgoAAAANSUhEUgAAADEAAAAsCAIAAABDtscOAAAAAXNSR0IArs4c6QAAAARnQU1BAACx"+
                                 "jwv8YQUAAAAgY0hSTQAAeiYAAICEAAD6AAAAgOgAAHUwAADqYAAAOpgAABdwnLpRPAAADCVJREFU"+
                                 "WEftl3lUU1cexy9FVEDZQUA2QUQpm4hYREQRseCGioKi1aOO9ABWsYrWDRWICopsYVMgbAmyBJKw"+
                                 "JCwBEvawB8hG2BRUQCqOTBGqdy44o9VWpR2m0z/mdzjvJO+9e9+H7/d7f+9GRCAQgL9aIaa/WoG/"+
                                 "GtCkb/9nmpYC7+nEbm4qLqSVM4vqWcyW5hpOWz2nvYnHZXcKuT3dwmnNNxM3vcdUz6ohpBDVFt+2"+
                                 "WI/bvZ907ATpCibnXgItJ59RUVFZzypvamS1seu5nBY+r1Ug4HYKBUKhoKurYyZI3s3xHlN1BTM0"+
                                 "lCA+PwzMTgNzcoEEHchUAdWmeYv5ykY99kd676X14kldqTndWVROMaO1qq6d1chlNbSiEvA5XUJ+"+
                                 "b88MyPkeE7OUfuoMbq5kGFC4D5RzwcJSoMYC6jyg9gAo/Gjq9LpNCAUPYS0HMpthUf0EtfYluWo8"+
                                 "rXSUUDSYWfKIWvWEWvmY0/F44El/WlraHxbvPaaSQurWXdFzJMKAPAEsoADVYqBeDbTagE4n0Hyi"+
                                 "bv2Pymb4dAT2DcD+Qdg/DPufwr5h+HAIdg1Afj9s64XEqglG41BPFy8uLn6mmGhfrY2cPTccyKUA"+
                                 "pWygWgTUKoFWM9ARAK1HovrP47Mmafi9U38PoaAfdj6C3QPwwSDsewoHRmA1F7YLf2xsqE1NTZ0Z"+
                                 "psL83DW20ap6OCCJA4qZQIUG1JhAowEs4gKdB0Bj+Dv/8Y5eyO6AzR2wRQjZXZDdPSkP58EkovAx"+
                                 "zK19xe0cohcXkEjkmWEiZ5NXWcds2kkC8+KAXNq/IqVRCxa1TtqnOmBzcLSmBda2wSo2rG6DNRxY"+
                                 "w4UsPqwTwAYE2g3xJS85gockUmZBAW1mmDLSsk3Mow+7F8hr4cC8RKCUBVSKJiOl2Qy0BWBhn7bt"+
                                 "SBb9NbMB0mshvQ6WNsLSJljWDBlsWN4KGW0wjjraIexMTSUwmcyZYbpPIBuuiDp2nGa+LhXMiQLy"+
                                 "yVMOUicd1GwEalxJo77gxDFa+WtSyWty6WsKE+aUw9xKmFcNC1iQVAnjcke6OgVJSUlsNnsGmJob"+
                                 "6+Ji05YaRxw4SnFwyhaRigBS8UCBMIm1IBeolgDVCqDWcPzK4/T8F4nZo0nZY8mU8ZScCXzeK0I+"+
                                 "zCyEODLE5zzr7eajgPf19c0AE6uq3N8/QccAu8MlY8tuopxGDJCMnJIqDSiRgDINqDCAUtWOY12x"+
                                 "959hE59hk/4ekTIalTqWQBrPKJzILf2ZQn9VXPaYTmXVVLL6eAMzwMQsKXL3iNFeFmG7OcXGIUXX"+
                                 "JB6g5ikTNyVVBliQM5kthTKLHe0BUYOYiCFMxHDg3ZHYjFEqY+R6nPAHP3qEf1P8gbFrG3+6vR0H"+
                                 "XSHcDKt2FOadCxl2o8a5YlrqG6dJ+a5nFtPydzhFaiwJN7OMNTGPWWoaKyYXDuZFAtkEoPhvLHma"+
                                 "7hrWab/e0/59l4MGcJkjGfn9R67wttyEVteGAux6Yta/uuUKb67tHds4/MoZDm5mD9tioCNxwC72"+
                                 "hZfdjxecmd4ejfWsT8O9Y8qjZJtZ3FHVDtUzjNTSC9PQC5unHAokQ4F0NJBLBAqpk8GSzVYyLD3k"+
                                 "xTuL6U4mDmAi2TsvDa75Hu48C3cFQo1NZeHr+cFWcJPk4yyjSrga8mT6alcGvjoU3bU2euioDTzj"+
                                 "8OyQDT1hQ21tdE1VycfI3jFlZ2Qoad5Q0ghW1Q5RVA+SVQmUUAgE84OAVDiQjpnEUkwFsunztfIO"+
                                 "nWyNShJ6XOc5XIbrTkFXP+h4GqpaQ2A1rm9ccRmMHhX/+bhCAwSjI3Nhi1LQqPiuJ+A7zvZVE+e2"+
                                 "sbdsGuHbQ7idW235eSZC8n2RLy6LiPiJzrshJoURnecPJPyAJGYKCwUrBsgmAlm8mEqm57lmr+u1"+
                                 "6y7BzafhYQxcfRCKLYfACGrthjLOPY5KebcWj1up1dNlmaPLYaFc/JDk3ueqwdV6yj+ZinQslXrE"+
                                 "3wZ793Y02CTVrCspu/Nrsnc6JSckh4WRfX3Ju/clai0JAeAaAFcB8AHAF4gFAIlgIBUFZFB3wLt+"+
                                 "W+2w+5o3Htodhxr2EOhDUUto4jr+pUOnpGmnqHHBbimGNejfMYv4UrY/X4RRJ+vSrnA85yvTsV2L"+
                                 "BabSgx1SE2z1okyL+yhxcGd4xM4PsN4xYe8EpWVG5RUkFxXklhSXFhUw796jHffK2mSfqKkbCcQR"+
                                 "5R0AQlEv1bfIvuBLW731opoLBIug8lZovv+ZhlXrLN16oNO92HFIyyjQTbrTdik1TzyPp/48V3pP"+
                                 "H9iVrW7ycI082UTuxaDs00YQTlLMhwda+LaONQe86u/+Euu9vQoxM+3e3Yjo8NCs9BR6IbmSkV/J"+
                                 "pJUzCqnUoozM0jBsscfJ/NUbs5SXpltvLTrkhjVwpmu6QOPtPbImDUCbLW4yYLyNo74qQXRJxGI1"+
                                 "nxXiOCeZ63gNSsD8o1xl9xx1k8cqALdM9AFvWUfel16lgAIlA2tMjIU+DjDGrfX6W6zf/t2C9o1F"+
                                 "hYUZaffxyYkpuHvJcZH4BCyJGE/LzSyg5peVlBUUVVMLW/cf9Vt3ZHiWBl9kCUfF6unKraVSeiEi"+
                                 "alFiS9JV12JNxTCWMnHBYrHYWYE3RNeGKOt3Gcgl287ppYtSAqSDX+rShoAtc/26pxHfQry2j21V"+
                                 "VdUbrOn+liKkpATfvhUUcCMs6GYMNoiSndJQV1ZbW27vfFHFbkzHutPABj9L9Y6oery8cfpyuyRZ"+
                                 "Qz9ptZPa888eVgjF6kfESW2/Ol//1myxyD0LhhsUMTdEMYOqkbVLv6h3WADPrGV4Ojht7+rqmi4T"+
                                 "LiEh5u5dHA4XGRnp4+Nz6cJFn0uXMH7XYqKikGbJSQkbXWPV1xQBmQAJXYKOZcZym3Cg6g3Urkub"+
                                 "3ZJd6G4w56ynyNUgucMnFA1S5GV8N0iQAoxOp0iE9AI7gqn4hK/E0BHNbcY5OTmf8e7tZSKRWFJS"+
                                 "kpeXhz5kZGTg8XgsNsLf39/b2/uY27GTJ06g1633D1eXrqcq6OcZ2SZomGOAzFkJnduLVofqrfhB"+
                                 "fOFeKcn1ThIXLs096iaqe9vI+MY+yUhPMY8krTslimJEc62xcwsPmqIJP5rxX17g8XilU0Wn08vK"+
                                 "yioqKmqmqry8vKAAbSNJ8fHxGAwmICCATCbv+ebMqh1USY3zQP6iknG4oVXAYn0PAOwB2GBhuc90"+
                                 "mcNmic1XNOyOApGrBxQCL8g6hYAtN1aIwb+BdD2nfU4f7QUfXMjPz6fRaMXFxQiosrKyoaGhbarq"+
                                 "6+sRH9qyoUsUCgUphyolOcl0w+nZmlHqK0MNzS8qKh8AwOYLUUvP4zefDIwzyktXatutltC4qLLQ"+
                                 "217M/XtF98T5crdXKvO+MXBc/uvd30czjoCQa2+A6urq2tvbhVPV0tKC1EJHJBiDwUA5SE9PRzf7"+
                                 "+l633n1PR/+7OVIuAKxUVNqWlVUIp+rFi9HiwupNuuZfS8td3Svn7Dl3801tQLVQ3KoeFhb2qT7+"+
                                 "wTXkHaKpnarGxkYOh9PR0YGYUJtAiGiNoCOyFS1gpCiyGAXum4PHlPSQZUaHDl5j1fHeALW1cYlE"+
                                 "yk8vx1isVjMFOeeNc50viCgFrZIPW3348OHffOV9qhcgMZAS6IiA0ODOzk6EhZiQfQgOnUEoSEtE"+
                                 "g7jRVxaLZf31MSKpZGL8DQ9sbm5NSrovFHbXsRprWjjeHl4WBqKW5xREApet2WSNMvC7md4M4HK5"+
                                 "CKupqQmFCX1+EykkEvKOSqU2Nzcj1jd39vb2BgeHsFvbvbw8OZz2tjZ+ZCSOxxMwGFUVlayBwSEC"+
                                 "nmxmKi972VDRViskJKSnp+cPMr0dhiKFmJCniA/Zigz9YEZ0BrG6u3sQiflnznxvamqBxcbT6WjB"+
                                 "NqChVFpRVXGjyZ5Fc9Yt2L9/P5rhN4F+Rx//2PgPzqM2QSAQXFxc7O3tHRwcXF0PkclorVRRKAXt"+
                                 "7bwHXY8M91qZmZnFxcV9YsLpvlumyYRuy8rKiomJCQ0NxWKxnp6ee/bsS0/PfP78xeDgUHlF3RL9"+
                                 "ZadOnfr0bDPPhJ7H5/NRzpDFqMufP3/e1naDn58vWh97XfY7Ojp+9t/7rzB98FQUMjc3tw1T9Vmg"+
                                 "mc/Tpx/5doX+D7ybjhh/asb/Q6A/27tp4v4TTAR5F1YC/sMAAAAASUVORK5CYII=")),0,$$.Length)))))
#endregion
#~~< lblUpdates1 >~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
$lblUpdates1 = New-Object System.Windows.Forms.Label
$lblUpdates1.Font = New-Object System.Drawing.Font("Tahoma", 8.25, [System.Drawing.FontStyle]::Bold, [System.Drawing.GraphicsUnit]::Point, ([System.Byte](0)))
$lblUpdates1.Location = New-Object System.Drawing.Point(69, 25)
$lblUpdates1.Size = New-Object System.Drawing.Size(171, 16)
$lblUpdates1.TabIndex = 12
$lblUpdates1.Text = $TextStrings.WUTitle
#~~< pboxUpdates >~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
$pboxUpdates = New-Object System.Windows.Forms.PictureBox
$pboxUpdates.Location = New-Object System.Drawing.Point(22, 23)
$pboxUpdates.Size = New-Object System.Drawing.Size(41, 45)
$pboxUpdates.TabIndex = 9
$pboxUpdates.TabStop = $false
$pboxUpdates.Text = ""
#region pboxUpdates.Image = ([System.Drawing.Image](...)
$pboxUpdates.Image = ([System.Drawing.Image]([System.Drawing.Image]::FromStream((New-Object System.IO.MemoryStream(($$ = [System.Convert]::FromBase64String(
"iVBORw0KGgoAAAANSUhEUgAAACcAAAArCAIAAAB0AwYZAAAAAXNSR0IArs4c6QAAAARnQU1BAACx"+
                                 "jwv8YQUAAAAgY0hSTQAAeiYAAICEAAD6AAAAgOgAAHUwAADqYAAAOpgAABdwnLpRPAAADXxJREFU"+
                                 "WEelmHtwU9edx9Wkk+3sP93OtDuT7kzbLDQJSQk4TgIBk4QWumQTSAoJARpISIZsQonDw0ABg18Y"+
                                 "47cs2ZItWZIt2ZZlyfJLsmVZtiXr/X4/7tVb1sOSLNmS5Zcs6a4ITLdZRErbM7+5d+6558znfH/n"+
                                 "d8753fsDEARhD5UnYLCNHzzxkycyP3zyhxkYbB3KZCBYOp2BIFj2EXq4w99bk6U+XAwASDU62oQa"+
                                 "jskxrLdxVAaFRqc1WkxWW9ZAm92as9tjV8JytmRINX+isvfD8W8jO95t6f0QR73cN9bEFvTLjb0K"+
                                 "/ZjWJNUYFEZAD9hAp8tmsz027kHD3FR4N6PH5IZLDeeHJj/vYv4BTzuEpx3EUI5iKB/g+77oHb05"+
                                 "wq2ckLQINT1aC1NpEJpBu9PteGx4biqSRFU4A44UJPJHxx1+mtk5AHjoZnsjT3yBPv5V79iJrpH9"+
                                 "7YNv4Yc+6GGeHpgsZIngIm2PUj9lsHKNgNYMfP8U5KbebqcIjaAzCWljK4bYujq+rkusq5fW+OEF"+
                                 "rjfM84Y5s0GUDsAqzA189QWm4JOBqZO08S8ZvKuTMoTRxp4Nal0B4NGez00tbiXzQA+wsm6IrTli"+
                                 "68Z4Qr24Il9cld+/xtaUsTVJdFmzkDBH4r7lNft8AiuzlAmU1TJ9F+hQr635IcjqcD3K5bmp11u6"+
                                 "hDYvsJrWxZLmxTXj/JJxMZEVbVpcNy8l9bEV5eKSMrosjyak0YQiuuxeTmbXFjC/NOWPKOejikBo"+
                                 "fDHIXJ63+21O0ASC/z/cclNLcX0zFocvATnjKcviin5hRR2NySPLYl9EOOsT+iPc0CI/mpDHViXf"+
                                 "qpdGl+ShhUAoGl+NSyNOik3VoZ1CW5g8RRdkbvXq5S6rEQT/L9pyUytwtHEdYFtcs8bWtJGYKhxT"+
                                 "u1wWoxZkER0TZL3FLLO7+bMhXnQpO9OCYEQ0HxdH41Muv8jq4vvtrWZpo4LdyO2lCprW+9+Ahl9O"+
                                 "Su+GjNMuq/6+z3NTy/G9NInGnJ22paQqEpcvbJiHCYGbBwNf5/tLDjnhhU5CiVgmZPoA3qxnxuPP"+
                                 "hhjbNz/q9VON7kmzc8hjLlYIr/M5N8bwbvoXUNuPk+0/g1j7V9UoF6B9NBXX3TEl0YSX9IlV2Xxc"+
                                 "GYw668+HTj4bPPmL0OlfLZx+Zq5875igo5Z/q55b3iZtb5Njz49eLxPgiMAsUQ5o/Z4ileHUjPJd"+
                                 "5iRNMLgquprq2bzR/lNo4HWvQQ5Ynbm11nTScFNieTCeDV1xOKZXCTy3jwe/eD587leRK5vil54J"+
                                 "4P6EB8e+YX/wFf3Ap30H3iMW7ED85iTlUhfoQ8lBnsVeb/TsZyp302R3xaBz1r4oqUz3PruB/hdI"+
                                 "CbfbH0Ft6h1GscXyQEwRXRIEY8Bop73qeOrc06mL/7Z8e/NqxdbF3ls41/Rl8SeXOEdPDv7Xfvyr"+
                                 "e+AFjfJpjNnbKAdbBcoea2AHRbCnm186rQL9bttsMiaoTCNgEPsdh3slt9YmKhPOFoqDcUl4iR+M"+
                                 "CAyCMSpRKJsWAc4wFwthfm5RUPDunjr12RLRJ4Xs9w917fqQ/EcSEIZr3dVyay1PNWgN5BMmfkec"+
                                 "KGVJQasraxHeDagWlp1dhyedm4oaYFWOTInmFqWBACc836IJ3GY73x90H5oJEd1R8izUHfRVu2vr"+
                                 "dEU3RGfOsk8c7nvvz+KhVuNsldJWITHCZ7RM69zLmJHf4ccrR/igx+t0huIzFVDLk5D4ut3xCA+3"+
                                 "DY5W9NFkTkDkc2OUnn1o9fYqbgFWXEA3bxWGntctW4Msjpddb5eU6oeLlRT0zLVOW+qOyl6qsJZK"+
                                 "LbV83ZDJux1J34dnIkYF4Jw/ahyGun8BEf/DazIDttlcWq0h+kgHkoJSgiqRf75h2rzr5vj2an4e"+
                                 "Vr2zH9zLD7Os+vjsvoD9gMGGUZvvqrTFc+NvIk2zxVLglgy8JbHUCrTDendeA+Vt3HCvQO9xmuJj"+
                                 "p6HWp5Lcay7AkHvlxHxSd//hVgrS5DfLgqGKIf2ms2NbysRbm1U7iPoXR1K2ECdm/MmiFhaRwMKT"+
                                 "sIU+mHnyWL3OfUVsviI0XxOakDLDhNm1rabr/fYhjk6Q5n8DtT4BDb8RMvJA0J6DGnbwIemX0YEj"+
                                 "NWSselbTKnJuOjP29EfDmy5MPlcq2F4r20yA1BHpvPRbJB8WZsH8XbAxs/W6FPhGoD/H053naVtV"+
                                 "FobB/pu7uA+xwzrZIIT/V6j/5YSO8O2++NDeFPaoNsSFEOPtefoxFLlxxutokHo/IxtIai9a5WZ5"+
                                 "546SwKssM6j9IsiBZW2OCfP1wkKEH+H07iK+sU4NVslMhVMqtNbeo3ZtutN6oRXjnzgPUZ+JK5sc"+
                                 "wIPt8DtaF/0WSF+T6t+ZHDywgs+rH52iO7x9tnCv1U+y+LAmH8Y8izF4GGZRlP3TEOUpT/eTHuKT"+
                                 "QexTzpE3SyTGIq6crNNjFYqvJwTdFi9RbPgz4rMQ9mfQQMEG0GuzAn996j2IJrvNtmAaTY/uS3a/"+
                                 "BI3sUVMvlLOkJJOHBATaTR603oPQuxt0rmqVo07jJplUM9IWAfsjEev4sAhTK5XenZkaVIw4XFy1"+
                                 "no6cIE7YncPTRDV8k5b4FgjSwGyC993ygBr2WCBN2Qbx6axl1PWUIdJ1hgCrdeMAf7Pe1aRz1Wkd"+
                                 "VSpbuRzMRukNGXBTCpZIbTfE5gqhGCfjKC3jfr8qEXMteLmT3Aa9Q9LG6j1158ub5HaTK/bw2X6f"+
                                 "avUbptIT7210/jw9sc/tdaHpzPP0qWaNvRXwNWjsNWpbpcpaKrMUS4xXhcaLfF3htKqELyfIuEoL"+
                                 "2+tTzS/OxVeX1pPJ5SWf1UBYcDNqaL0vXrtb2MWyOjy5qS67dc3YnR7Ydo+qvOIOa+H9rDN97FoF"+
                                 "gDR7quRgpQwskZiui/RFgmyIqi5NSm/zeDSdCHRMxf3iRMSxshJdTyU3UplUMrHg56/MMuA03EvX"+
                                 "KovIgznTtqxWq9ephwx3U33PZi2tLXP7wQbq2Ok+Vo3SUqexl4iNt0TGqwLdBb66cFp5ZVJUMz1F"+
                                 "FvXrZJiopXMlpFtdX15LQykISqezt43liC49Lx/gDr9RXl/URc+ZOt2j+u9TaS+kqC9mlBfdwQUk"+
                                 "deRYF6NE7iqTA1cEmit8ZRFXen2C1zAxROQQpbzGBUPLcki2ujK/DkFJCEolAtB6JLWRWJ5XgUZs"+
                                 "KixFDJP3VtZdejQ1m0vZQuqhzMiu1EB+ZnBbxnx3itN2Dk8o4QmbRTMI9kD3SAuLflFB+6Nk4lJA"+
                                 "eScVnE5vLN4TtxHPRC0ZD3PDMwathtcjarumqZlWC8yaP0Xhd1fUXekZfJTWe/VBmxISF2YYO9Pj"+
                                 "v4eom5b7/t3Z9Us7Lc/ftz1MfznB+e81zcWkHZWeY6QT5vTqLBSRpL1jaQCbUVUuahqdlq5EgMMT"+
                                 "thf3lh3rxBvcwaOIzl2l9TfJQ99Hzb7z6/qT4wfTjN0Q93BGfBqSnoFkX2U0lzO2GshHgIL9kJ8M"+
                                 "OVrTADJjqEmpbyQkRR7+DYOoHMOsbGBjJrS8M32YgrbmIx1kgyN8pBFbUAGvHJ7+G9Ts64CGCnFO"+
                                 "QfQt6dEdSe6hlPjTtPTztOSzlOizDeHHSd7xFPfoEucPHtZJEauQwrh1i1Z/gtTyDr7l8/6eEjbz"+
                                 "rXbsa6i2w50kNeg7WIN6swrZylX8bWq2RdgqimjI85xCcXu+o3e7nfaCvW+Lqe9VKe1tVv+poYFv"+
                                 "OqiXKyj1n5Da3yUQ9uI7Xm/v3N2G20fAvoZu29qMerUFdZhAlBrcB6pa9te1ts88HvXe0GwekzcA"+
                                 "x1RXk0rLaKUV5PJict15CupUN+4DEv5gJ2E/gfgmnrSrvXMHhvAKGrsD3ba7rXUbsmVLE+IVBOJD"+
                                 "QqdAbd9/u+mdBhyaPfNYWu83cvjmbpNoR0j0nYTu3+JIv++gHuik7u/o+y2BsgdHeh3bsRODew2D"+
                                 "zUe1bUei81tQeS0tLzTBt9TX58Mbjnd0TCuBvaV1B+H4Jsoj12uu0dhsAo0BMTnz9Rj3I8rAK03o"+
                                 "FxqQWR++QSDtwhKyk5ffgs5rQW9vbt6KQGxrQrwEb3i+sfa5+tq8ptoT+PZRga6guPYwuoNA/96V"+
                                 "k9MPTrvd4Z8TmazwKd5ZBuMdXMcuJKoA1bYLhX4F2fwiHL4F3vBCY/3z9XVbamufq6l+rrYqv7H6"+
                                 "OB5Dm1LuuHLnOLqbzuL8HR7+66bZjMPpdOgAK1mkuDU2fm6AcYTYVdDc/Bq88dXG+q11NZtr7/y6"+
                                 "pvLXd7NWkddw52MCtmtcsq2o/GMstYNC+wep97vdy3YAq8lindEZsdOCm8zx/+nvP4TD7EHU74TX"+
                                 "vVRTsfn2rf8sv5lXV3GK0I4cmN5+rapsgD04OPJPUe93zh4gdhsIgPbsBx9LoUawOXfY42epvbua"+
                                 "qvLryrdWl+VVFx9Dw+FDM4eQRDpPAlq+k0L8ZQS5s/CcA/yO27NsANCbLEabvW9aUDc+cXuCdYKI"+
                                 "21x2+f02RHbpYBhcpVprteb+P/EPUh9It4J2q81oNIEOJ1+u7mROlg4zylljLKVWrjVYgNxCs33/"+
                                 "Kepf2I5s3gUC2e+KgNMtFMsMJqPL6fie3zD/C9tgatMgCXU2AAAAAElFTkSuQmCC")),0,$$.Length)))))
#endregion
$panelMenu.Controls.Add($btnDateTime)
$panelMenu.Controls.Add($btnKeyboard)
$panelMenu.Controls.Add($btnFirewall)
$panelMenu.Controls.Add($btnPrograms)
$panelMenu.Controls.Add($btnDrivers)
$panelMenu.Controls.Add($btnDisplay)
$panelMenu.Controls.Add($btnUpdates)
$panelMenu.Controls.Add($lblRegional2)
$panelMenu.Controls.Add($lblFirewall2)
$panelMenu.Controls.Add($lblWinRM2)
$panelMenu.Controls.Add($lblDrivers2)
$panelMenu.Controls.Add($lblDisplay2)
$panelMenu.Controls.Add($lblUpdates2)
$panelMenu.Controls.Add($lblRegional1)
$panelMenu.Controls.Add($lblWinRM1)
$panelMenu.Controls.Add($lblFirewall1)
$panelMenu.Controls.Add($lblDrivers1)
$panelMenu.Controls.Add($pboxRegional)
$panelMenu.Controls.Add($pboxWinRM)
$panelMenu.Controls.Add($lblDisplay1)
$panelMenu.Controls.Add($pboxDrivers)
$panelMenu.Controls.Add($pboxFirewall)
$panelMenu.Controls.Add($pboxDisplay)
$panelMenu.Controls.Add($lblUpdates1)
$panelMenu.Controls.Add($pboxUpdates)
$FormControl.Controls.Add($MenuStrip1)
$FormControl.Controls.Add($groupboxInfo)
$FormControl.Controls.Add($btnClose)
$FormControl.Controls.Add($lblCoreConfigText)
$FormControl.Controls.Add($lblCoreConfigTitle)
$FormControl.Controls.Add($panelMenu)

#endregion

#region Functions

function Main
{
	[System.Windows.Forms.Application]::EnableVisualStyles()
	Get-Status
	$formControl.ShowDialog()
}

function BtnDriversClick( $object )
{
	$formControl.enabled = $false
	. .\drivers.ps1
}

function BtnUpdatesClick( $object )
{
	$formControl.enabled = $False
. .\Updates.ps1
}

function BtnDateTimeClick( $object )
{
$Shell = New-Object -Comobject("WScript.Shell")  
$Temp = "control.exe timedate.cpl"
$Shell.Run($Temp)
}

function BtnKeyboardClick( $object )
{
$Shell = New-Object -Comobject("WScript.Shell")  
$Temp = "control.exe intl.cpl,,2"
$Shell.Run($Temp)
}

function BtnFirewallClick( $object )
{
$formControl.enabled = $false
. .\Firewallsettings.ps1
}

function BtnDisplayClick( $object )
{
$formControl.enabled = $false
. .\Display.ps1
}

function BtnCloseClick( $object )
{
	$formControl.Hide()
	$FormMainMenu.Show()
}

function BtnProgramsClick($object)
{
$formControl.enabled = $false
. .\Programs.ps1	
}


function Get-Status
{
	$Temp = gwmi Win32_ComputerSystem
	$lblComputerValue.Text = $Temp.Name
	$lblDomainValue.Text = $Temp.Domain
				
	$Version = gwmi Win32_OperatingSystem
	$lblVersionValue.Text = $Version.Caption
}

function MenuCPAbout($object)
{
	#Global from MainMenu
	Menuabout
}

function MenuCPLogFile($object)
{
	#Global from MainMenu
	MenuLogfile
}

function MenuCPClearLogFile($object)
{
	#Global from MainMenu
	MenuClearLogfile
}

function MenuCPCMD($object)
{
	#Global from MainMenu
	MenuCMD
}

function MenuCPTaskMgr($object)
{
	#Global from MainMenu
	MenuTaskmgr
}

function MenuCPRegistry($object)
{
	#Global from MainMenu
	MenuRegistry
}

function MenuCPSystem($object)
{
	#Global from MainMenu
	MenuSystem
}

Main

#endregion
