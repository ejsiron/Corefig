param ([String]$MPIOEnabled="")
Import-LocalizedData -BindingVariable TextStrings -FileName Networking.psd1
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
#~~< FormNetwork >~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
$FormNetwork = New-Object System.Windows.Forms.Form
$FormNetwork.ClientSize = New-Object System.Drawing.Size(649, 500)
$FormNetwork.Font = New-Object System.Drawing.Font("Tahoma", 8.25, [System.Drawing.FontStyle]::Regular, [System.Drawing.GraphicsUnit]::Point, ([System.Byte](0)))
$FormNetwork.FormBorderStyle = [System.Windows.Forms.FormBorderStyle]::FixedSingle
$FormNetwork.MaximizeBox = $false
$FormNetwork.MinimizeBox = $false
$FormNetwork.ShowIcon = $false
$FormNetwork.StartPosition = [System.Windows.Forms.FormStartPosition]::CenterScreen
$FormNetwork.Text = $TextStrings.PageTitle
$FormNetwork.BackColor = [System.Drawing.Color]::White
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
#~~< menuNetCMD >~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
$menuNetCMD = New-Object System.Windows.Forms.ToolStripMenuItem
$menuNetCMD.Size = New-Object System.Drawing.Size(179, 22)
$menuNetCMD.Text = $TextStrings.CommandPrompt
$menuNetCMD.add_Click({menuNetCMD($menuNetCMD)})
#~~< menuNetTaskMgr >~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
$menuNetTaskMgr = New-Object System.Windows.Forms.ToolStripMenuItem
$menuNetTaskMgr.Size = New-Object System.Drawing.Size(179, 22)
$menuNetTaskMgr.Text = $TextStrings.TaskManager
$menuNetTaskMgr.add_Click({menuNetTaskMgr($menuNetTaskMgr)})
#~~< menuNetRegistry >~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
$menuNetRegistry = New-Object System.Windows.Forms.ToolStripMenuItem
$menuNetRegistry.Size = New-Object System.Drawing.Size(179, 22)
$menuNetRegistry.Text = $TextStrings.RegistryEditor
$menuNetRegistry.add_Click({menuNetRegistry($menuNetRegistry)})
#~~< menuNetSystem >~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
$menuNetSystem = New-Object System.Windows.Forms.ToolStripMenuItem
$menuNetSystem.Size = New-Object System.Drawing.Size(179, 22)
$menuNetSystem.Text = $TextStrings.SysInfo
$menuNetSystem.add_Click({menuNetSystem($menuNetSystem)})
$ToolsToolStripMenuItem.DropDownItems.AddRange([System.Windows.Forms.ToolStripItem[]](@($menuNetCMD, $menuNetTaskMgr, $menuNetRegistry, $menuNetSystem)))
#~~< LogsToolStripMenuItem >~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
$LogsToolStripMenuItem = New-Object System.Windows.Forms.ToolStripMenuItem
$LogsToolStripMenuItem.Size = New-Object System.Drawing.Size(41, 19)
$LogsToolStripMenuItem.Text = $TextStrings.Logs
#~~< menuNetLogFile >~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
$menuNetLogFile = New-Object System.Windows.Forms.ToolStripMenuItem
$menuNetLogFile.Size = New-Object System.Drawing.Size(146, 22)
$menuNetLogFile.Text = $TextStrings.ShowLogFile
$menuNetLogFile.add_Click({menuNetLogfile($menuNetLogFile)})
#~~< menuNetClearLogFile >~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
$menuNetClearLogFile = New-Object System.Windows.Forms.ToolStripMenuItem
$menuNetClearLogFile.Size = New-Object System.Drawing.Size(146, 22)
$menuNetClearLogFile.Text = $TextStrings.ClearLogFile
$menuNetClearLogFile.add_Click({MenuNetClearLogFile($menuNetClearLogFile)})
$LogsToolStripMenuItem.DropDownItems.AddRange([System.Windows.Forms.ToolStripItem[]](@($menuNetLogFile, $menuNetClearLogFile)))
#~~< menuNetAbout >~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
$menuNetAbout = New-Object System.Windows.Forms.ToolStripMenuItem
$menuNetAbout.Size = New-Object System.Drawing.Size(40, 19)
$menuNetAbout.Text = $TextStrings.Help
#~~< AboutToolStripMenuItem >~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
$AboutToolStripMenuItem = New-Object System.Windows.Forms.ToolStripMenuItem
$AboutToolStripMenuItem.Size = New-Object System.Drawing.Size(297, 22)
$AboutToolStripMenuItem.Text = $TextStrings.About
$AboutToolStripMenuItem.add_Click({menuNetAbout($AboutToolStripMenuItem)})
$menuNetAbout.DropDownItems.AddRange([System.Windows.Forms.ToolStripItem[]](@($AboutToolStripMenuItem)))
$MenuStrip1.Items.AddRange([System.Windows.Forms.ToolStripItem[]](@($ToolsToolStripMenuItem, $LogsToolStripMenuItem, $menuNetAbout)))
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
$btnClose.Location = New-Object System.Drawing.Point(518, 459)
$btnClose.Size = New-Object System.Drawing.Size(87, 23)
$btnClose.TabIndex = 2
$btnClose.Text = "< Back"
$btnClose.UseVisualStyleBackColor = $true
$btnClose.add_Click({BtnCloseClick($btnClose)})
#~~< lblCoreConfigText >~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
$lblCoreConfigText = New-Object System.Windows.Forms.Label
$lblCoreConfigText.Font = New-Object System.Drawing.Font("Tahoma", 8.25, [System.Drawing.FontStyle]::Regular, [System.Drawing.GraphicsUnit]::Point, ([System.Byte](0)))
$lblCoreConfigText.Location = New-Object System.Drawing.Point(22, 47)
$lblCoreConfigText.Size = New-Object System.Drawing.Size(230, 26)
$lblCoreConfigText.TabIndex = 1
$lblCoreConfigText.Text = $TextStrings.PageDescription
#~~< lblCoreConfigTitle >~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
$lblCoreConfigTitle = New-Object System.Windows.Forms.Label
$lblCoreConfigTitle.Font = New-Object System.Drawing.Font("Tahoma", 8.25, [System.Drawing.FontStyle]::Bold, [System.Drawing.GraphicsUnit]::Point, ([System.Byte](0)))
$lblCoreConfigTitle.Location = New-Object System.Drawing.Point(12, 30)
$lblCoreConfigTitle.Size = New-Object System.Drawing.Size(228, 17)
$lblCoreConfigTitle.TabIndex = 1
$lblCoreConfigTitle.Text = $TextStrings.PageTitle
#~~< panelMenu >~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
$panelMenu = New-Object System.Windows.Forms.Panel
$panelMenu.BorderStyle = [System.Windows.Forms.BorderStyle]::FixedSingle
$panelMenu.Location = New-Object System.Drawing.Point(-4, 85)
$panelMenu.Size = New-Object System.Drawing.Size(657, 354)
$panelMenu.TabIndex = 0
$panelMenu.Text = ""
$panelMenu.BackColor = [System.Drawing.Color]::Gainsboro
#~~< btnMPIO >~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
$btnMPIO = New-Object System.Windows.Forms.Button
$btnMPIO.FlatStyle = [System.Windows.Forms.FlatStyle]::System
$btnMPIO.Location = New-Object System.Drawing.Point(384, 220)
$btnMPIO.Size = New-Object System.Drawing.Size(184, 23)
$btnMPIO.TabIndex = 16
$btnMPIO.Text = $TextStrings.MPIOConfig
$btnMPIO.UseVisualStyleBackColor = $true
$btnMPIO.add_Click({BtnMPIOClick($btnMPIO)})
#~~< btniSCSI >~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
$btniSCSI = New-Object System.Windows.Forms.Button
$btniSCSI.FlatStyle = [System.Windows.Forms.FlatStyle]::System
$btniSCSI.Location = New-Object System.Drawing.Point(384, 191)
$btniSCSI.Size = New-Object System.Drawing.Size(184, 23)
$btniSCSI.TabIndex = 16
$btniSCSI.Text = $TextStrings.iSCSIConfig
$btniSCSI.UseVisualStyleBackColor = $true
$btniSCSI.add_Click({BtniSCSIClick($btniSCSI)})
#~~< btnProxy >~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
$btnProxy = New-Object System.Windows.Forms.Button
$btnProxy.FlatStyle = [System.Windows.Forms.FlatStyle]::System
$btnProxy.Location = New-Object System.Drawing.Point(384, 84)
$btnProxy.Size = New-Object System.Drawing.Size(184, 23)
$btnProxy.TabIndex = 16
$btnProxy.Text = $TextStrings.ProxyConfig
$btnProxy.UseVisualStyleBackColor = $true
$btnProxy.add_Click({BtnProxyClick($btnProxy)})
#~~< btnShares >~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
$btnShares = New-Object System.Windows.Forms.Button
$btnShares.FlatStyle = [System.Windows.Forms.FlatStyle]::System
$btnShares.Location = New-Object System.Drawing.Point(63, 220)
$btnShares.Size = New-Object System.Drawing.Size(184, 23)
$btnShares.TabIndex = 18
$btnShares.Text = $TextStrings.ShareConfig
$btnShares.UseVisualStyleBackColor = $true
$btnShares.add_Click({BtnSharesClick($btnShares)})
#~~< btnGroupMembership >~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
$btnGroupMembership = New-Object System.Windows.Forms.Button
$btnGroupMembership.FlatStyle = [System.Windows.Forms.FlatStyle]::System
$btnGroupMembership.Location = New-Object System.Drawing.Point(63, 191)
$btnGroupMembership.Size = New-Object System.Drawing.Size(184, 23)
$btnGroupMembership.TabIndex = 18
$btnGroupMembership.Text = $TextStrings.GroupConfig
$btnGroupMembership.UseVisualStyleBackColor = $true
$btnGroupMembership.add_Click({BtnGroupMembershipClick($btnGroupMembership)})
#~~< btnNIC >~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
$btnNIC = New-Object System.Windows.Forms.Button
$btnNIC.FlatStyle = [System.Windows.Forms.FlatStyle]::System
$btnNIC.Location = New-Object System.Drawing.Point(63, 84)
$btnNIC.Size = New-Object System.Drawing.Size(184, 23)
$btnNIC.TabIndex = 18
$btnNIC.Text = $TextStrings.NICConfig
$btnNIC.UseVisualStyleBackColor = $true
$btnNIC.add_Click({BtnNICClick($btnNIC)})
#~~< Label4 >~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
$Label4 = New-Object System.Windows.Forms.Label
$Label4.Font = New-Object System.Drawing.Font("Tahoma", 8.25, [System.Drawing.FontStyle]::Regular, [System.Drawing.GraphicsUnit]::Point, ([System.Byte](0)))
$Label4.Location = New-Object System.Drawing.Point(373, 151)
$Label4.Size = New-Object System.Drawing.Size(267, 31)
$Label4.TabIndex = 13
$Label4.Text = $TextStrings.iSCSIDescription
#~~< lblInternet2 >~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
$lblInternet2 = New-Object System.Windows.Forms.Label
$lblInternet2.Font = New-Object System.Drawing.Font("Tahoma", 8.25, [System.Drawing.FontStyle]::Regular, [System.Drawing.GraphicsUnit]::Point, ([System.Byte](0)))
$lblInternet2.Location = New-Object System.Drawing.Point(373, 44)
$lblInternet2.Size = New-Object System.Drawing.Size(248, 31)
$lblInternet2.TabIndex = 13
$lblInternet2.Text = $TextStrings.ProxyDescription
#~~< Label2 >~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
$Label2 = New-Object System.Windows.Forms.Label
$Label2.Font = New-Object System.Drawing.Font("Tahoma", 8.25, [System.Drawing.FontStyle]::Regular, [System.Drawing.GraphicsUnit]::Point, ([System.Byte](0)))
$Label2.Location = New-Object System.Drawing.Point(66, 149)
$Label2.Size = New-Object System.Drawing.Size(242, 31)
$Label2.TabIndex = 15
$Label2.Text = $TextStrings.ShareDescription
#~~< Label3 >~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
$Label3 = New-Object System.Windows.Forms.Label
$Label3.Font = New-Object System.Drawing.Font("Tahoma", 8.25, [System.Drawing.FontStyle]::Bold, [System.Drawing.GraphicsUnit]::Point, ([System.Byte](0)))
$Label3.Location = New-Object System.Drawing.Point(373, 135)
$Label3.Size = New-Object System.Drawing.Size(171, 16)
$Label3.TabIndex = 10
$Label3.Text = $TextStrings.iSCSILabel
#~~< lblNetwork2 >~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
$lblNetwork2 = New-Object System.Windows.Forms.Label
$lblNetwork2.Font = New-Object System.Drawing.Font("Tahoma", 8.25, [System.Drawing.FontStyle]::Regular, [System.Drawing.GraphicsUnit]::Point, ([System.Byte](0)))
$lblNetwork2.Location = New-Object System.Drawing.Point(66, 42)
$lblNetwork2.Size = New-Object System.Drawing.Size(242, 31)
$lblNetwork2.TabIndex = 15
$lblNetwork2.Text = $TextStrings.AdapterDescription
#~~< PictureBox2 >~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
$PictureBox2 = New-Object System.Windows.Forms.PictureBox
$PictureBox2.Location = New-Object System.Drawing.Point(318, 135)
$PictureBox2.Size = New-Object System.Drawing.Size(49, 47)
$PictureBox2.TabIndex = 8
$PictureBox2.TabStop = $false
$PictureBox2.Text = ""
#region PictureBox2.Image = ([System.Drawing.Image](...)
$PictureBox2.Image = ([System.Drawing.Image]([System.Drawing.Image]::FromStream((New-Object System.IO.MemoryStream(($$ = [System.Convert]::FromBase64String(
"iVBORw0KGgoAAAANSUhEUgAAAC0AAAAlCAIAAABZK/egAAAAAXNSR0IArs4c6QAAAARnQU1BAACx"+
                                 "jwv8YQUAAAAgY0hSTQAAeiYAAICEAAD6AAAAgOgAAHUwAADqYAAAOpgAABdwnLpRPAAACjFJREFU"+
                                 "WEfNlmlQW9cVx/WSNJmm+dJJty+ZTGc60zSTpNOsTZu6TtJOEseJnWkdO449bbamwXhCwEA8xkBs"+
                                 "9tXsiwAJswgJBAhJbFrQvktPek87T7t4EhIgMAIDZemx/aFZ8Ja4097RaN6Mns793XP+538uMj09"+
                                 "Tfl/WMDx/7AodwoiHA6jJlSju7K0Wq1arb6tyHeAw2q1SqXSKbGI0dNdVlZ6/vz5stJSFrNPqVSI"+
                                 "hAI+jysWi4EMx/EbkH17DovFAhsIJiftVjw2G1lKzCkV0o72tvLysgvVVRazaW0tGY2QhNthNqMG"+
                                 "nVaplItEQu7IyNjYmEQiUas1JpOJIIhrcN+GQwin5PNtNls8Hl9dXd25ura2tq89XFtr6+sLCwuz"+
                                 "s7PR6GyEDAeDAcI9bbagGrVaqVDIZFJggiADAwOjo/zb45DJZMNDQwqFfG4utrmxsb19dePt7Y3N"+
                                 "zbW1NQBKJpOXLi0lEgngi5BkMBD0er2wh81mh9pZLBh86zQayZR4CqooEqpUKoJwQ4y+PubN8wHZ"+
                                 "G+FyJifGCbdrfTW5nLyUXF6F02/vbG1srCdXVpaWlhILC7FYjCTJUCjk8/kg2S6XA7fZcBwzQ1VM"+
                                 "RhQ1Gk0mOElNTU0HnQ6HcTqd8JdAILCystLW1nZdDgin0WiMRiMU99LS/JWjb24kLy16iWmZXKU3"+
                                 "YV5fKBKNx+JzZCQaDIW8Pp972m2zWTEQjtkM9EaDUavTKVXqKYmEw+NT22lnzpw9V1CgVCljsSiU"+
                                 "DFCEQiFIuLW1dXeOoSF2U1MLi8k0Ggxmk5GMhJYS85vrl68pYT5GWlBUrlSrtUYz5rS6PW7fjDcU"+
                                 "D0YTocjctD9qwBxTKv2EWMEdFbIGOO2d3dW1DXUNDePjE+FQaG4uDvJUKpVsNru6uhpkW1paugsH"+
                                 "jzdRUFDQx2B1d/deqKmpqKhqamqqr2+orq7qoFEHB9m4xTQTDiwvzpMzMy6nHTKv0xt0ejNqtppQ"+
                                 "XKu3SOWqsQkBhzc6PDzC6h8YHuZoNVqSDC8uLgaDQcgxj8drbm4+d+5cSUnJ5ORkdnb2Lhz9/UNg"+
                                 "A0YjbrY4MIvD6YR6h3BsWiRS9/UOtrXRG+qbi4pKKssrui7Sx8f4qEEPNCAClVIuFYuhM9nsgVEe"+
                                 "bxxOOj4GlhYI+Ofm5sDoMAwTCARdXV2QgPz8fNAKjUZ79913QbC7cLDZHEiXTmsxGEDjDofD5/fN"+
                                 "kpHlhcRmcmXn8sZWYvEybiW43AkqlZaX98XJkychaGcnfXBoSAUKlMvF4ilggAfC4wECkoyAFBQK"+
                                 "BYvFqqqqys3NLSoqAk1APg4ePNjb27t73/L5k1AXoUDidPtsDq/LFfR4yEAgNjOzODu7cvWzGo+t"+
                                 "zc9vJBIbfv+cwYD19w9XVdWUFJeVV1ZUVVVMTkxA40D7RKNRl8sFHj8yMtLY2JiXl5eTkwNpAJqj"+
                                 "R4+mp6fDELiuj5nN9o4OWnt7x/AwTyiW4rhrZiaxuLi1sLAxF1+LRpOR6HJoZsHnjdrtfrOZQFGX"+
                                 "yWTHTB6GgJ5//lx5YU1aeobH4wEXgV4YHR2lUqlg9pmZmfDd0tICDwABDvZlm79ev3Bx3MFkDvUx"+
                                 "B6jU1oaGZqFQ5nAESPJSMrmTSGyS5LLXOwscAKHRWEQiuUbkOFH19h7GD46/f6wgvxjSDtvQ6fSy"+
                                 "srKsrCxQItQaMnHkyJGMjAzg+9qs2Z3D7XaPjHCVcq3BYEVRG58vgiaqq6svLCxisdgyBSQzGotd"+
                                 "drtJzDKtUplFYoVyEv+k4Oj+JAX5IeW9Y/+ovnCBwWDA9mlpaSAI6LjTp08fOnQIhAnBvznwbuSn"+
                                 "VisOyqqrq2tro8lkOtCBRmMSTEp7+pi5OWcbG1vYbO7YGNgzKhTL1ZOOlPIjb6IU5H7Kwdf/UlxU"+
                                 "CFI4depU+dV1+PBhUAO4lt/v33Xq3tzX4W+gNQ6HU19fX1BQ2NpKEwimwGlNqFOt1ldWVoLBdNDo"+
                                 "Qz0TnxS+86dRCuU+yqG3joAS4X34FbY/cOAAyEKv19+xuQ8+CDMCklR4dXV0dPH5Ap0OV6mM7IHh"+
                                 "2qrGT0599OTTT2VmZHb1dEEJgOBEamppTS2Tx7vxteiW8nG9EDCAoPvBDIqLQZi0tvaLE6NT3d09"+
                                 "bVRqbl7uGwcO5hQUMLn8sakphU7DGhu/Y/m4QSAURfv7+9vaOs4XFHx26lRKWhq9r0+u1ehg3qFG"+
                                 "mL1K3G6z268X4Tvl48tB+bii1TnO0gvlUv2YVK6DkYtZUMxitKByvcHoCaotN7sXykwoV6lGCa/D"+
                                 "G5Cp1Han87auuCMedVlg5LM44xFzGoXzx4IJqofwYjab3mxSoxbcH1KarX39X3Gt3fvWYLX6wmG1"+
                                 "2WLz+cnl1cjyZYzw2f0heFu0gP8tUZey0Fnm4tDmlV/7f7mP80zg7CPx7PvdHyKjryD1LyFZz96d"+
                                 "+sSERGxxuDFPUGHCOnt64DZ604NdqQtXKjfb7bjT4QsFg5GZmdgsGY+T5KyRcD+Y+Iyy8x5lK5Wy"+
                                 "mXn/RsZDa5m/8GY+ocl61VH87FLJg/G0B1RH72reS0l/HDn2GJLyB+TTF5HjD1ewuxUatB3uXUrF"+
                                 "TQn+M1+yaltKeoYkFpvW7kKdLivhJgKBRGKxSHsREbyAkKnIQgqyfuKBncwXdmo/3Obs2ab9aOsM"+
                                 "ZfPEA+uZD6+cfZQ8+6g09We1b95TtAdJ2fNQzr7q1ka48N0iwVfmXFMHrbi+pXVgmKsySByExu0N"+
                                 "hecPNKQhZU8j/UeRkbeRyUOI6vB9wQ/S4/SLy/KitYnn/lV531Y6ZedTynYaZTP7no0cJHECSf31"+
                                 "r1L2w6y/LYhd5r5QJKZ391B7+qbUlvdbcpHTTyHn9iMlryHlryEXXkGaXkTozyD9zyNjr39f8vbd"+
                                 "+nfuwo/dTbz3vfBH98b/uZeX1sFjdMvGBRKlj4wSvt0t/LZ9vX+I/XLVR0+2/P0nDW8hNW8g+fuQ"+
                                 "My8hn+9Fsn+HnP89UvEy0vgqQt2H0F9FWK/dxdz3cdMZPYFrCMwWipp9IXuAdIaiRhdh9wdVOoPV"+
                                 "7vhOPjY5JSi92JBK/eJw39k9w+m/GUu7d/A4UvMWkvNnJPt5JPsFJON55MxzP67e91jmfsrJpx//"+
                                 "/KDN6XQQ01c8Kxj0kxFfJBpaWJxZSsZW1qdnohyF5vbm7TffFknF9b3tXzDrPuaWvi7J/6006+eD"+
                                 "7yPZe5EPfvrLysPHe3MOdH4qMqp9gSDucjjcLvjY3U6r04k77JjTaSMIm8c3LFWocNst3T9uRWUK"+
                                 "lbJ7iNnK762VM/KEzX/tPf2BtrLLIwtHl21hEg+EUIIw2e0GK27CMSNmBoNXG/Qao0Gh0w4Kp+4Y"+
                                 "x5cDWcwWBpuV0pjTNchUyJW9A2wGb5wjU4kxh94bRoHJ4zM5XToMk6pUQoVCojf9VziuO5D1BsbA"+
                                 "ILWX1cxgsQRSIeYcMVoFKPZd9XEr9brBOzKFopPB1BqN/2OOGyD+G21Blfgl/vctAAAAAElFTkSu"+
                                 "QmCC")),0,$$.Length)))))
#endregion
#~~< lblInternet1 >~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
$lblInternet1 = New-Object System.Windows.Forms.Label
$lblInternet1.Font = New-Object System.Drawing.Font("Tahoma", 8.25, [System.Drawing.FontStyle]::Bold, [System.Drawing.GraphicsUnit]::Point, ([System.Byte](0)))
$lblInternet1.Location = New-Object System.Drawing.Point(373, 28)
$lblInternet1.Size = New-Object System.Drawing.Size(171, 16)
$lblInternet1.TabIndex = 10
$lblInternet1.Text = $TextStrings.InternetSettings
#~~< pboxInternet >~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
$pboxInternet = New-Object System.Windows.Forms.PictureBox
$pboxInternet.Location = New-Object System.Drawing.Point(326, 28)
$pboxInternet.Size = New-Object System.Drawing.Size(41, 47)
$pboxInternet.TabIndex = 8
$pboxInternet.TabStop = $false
$pboxInternet.Text = ""
#region pboxInternet.Image = ([System.Drawing.Image](...)
$pboxInternet.Image = ([System.Drawing.Image]([System.Drawing.Image]::FromStream((New-Object System.IO.MemoryStream(($$ = [System.Convert]::FromBase64String(
"iVBORw0KGgoAAAANSUhEUgAAACcAAAAoCAIAAADyl3S3AAAAAXNSR0IArs4c6QAAAARnQU1BAACx"+
                                 "jwv8YQUAAAAgY0hSTQAAeiYAAICEAAD6AAAAgOgAAHUwAADqYAAAOpgAABdwnLpRPAAADj1JREFU"+
                                 "WEeVlwdYU9m2x1Hv/bwz9/rmOnf0zfXqjIo4YENEVBRBEaSL9KbSQUXfCDqCgAhSFAQk9I4UoxRB"+
                                 "BRSC9EBII5BQEhJSCBmQngopJG8fojPq5/jmrW/lJGcn5/z2f+211s5ZRaVSVb5oa1etVlFZI1Ys"+
                                 "f6WyRr5KZc0q+bJ8tWRZ/vVaxZrVcvnqv6xSyBYlq2UK+Zfv89G3gPpHNjY6Okgebe/tJVIGakk9"+
                                 "xZi2UvQbBLWrrhcXW93pnd4eWtZfhZ1ux5B7CCQalUqngcOfMpXP/mqUShsaITcQW9M7aiI74puZ"+
                                 "zxqo5SnNdTeetqQ3IYcYQzTGYHEL2ukewiYF7ZCICip9XdXbhBsh0f8UlPoZKplG7RzExXVnnce6"+
                                 "BhAs4wdsHlHDc4dv1nAeFOLbr9TgqVOjXP5E6xDZt6DDp6jeLr7ZJKL658rSopHqR51IzMj/jf6U"+
                                 "Sh6hlGDrvAhBNoOHrhJtPeszLlQivGsaw5Ev8ynwqK5Op4oeoWJijjvjXdxpmYrwLql1Tm8zie+2"+
                                 "jam/WvHKq6A26HlZK7GX9sVof0ylUdPfvDBFW5mPHPCkHQtFpVlmDRoXEOPR1ZWMJ2HtPVaPUfpZ"+
                                 "nXFN2Ad1PVb53dbPyc6V/c4VA46llHPp7b5ZjRZXG1zg8cFYv5qOJuofr/LvVNIwOb6uUhthYMvS"+
                                 "NuvRPdNxOKLf8Sai4TYSiZ2PHeJHUgS1iRj82aYROzT7bMuIC4rjS+b69M75veY4Z+DO3npxrbra"+
                                 "O7vCvSHszsyxO73Xy1rrB4fJn13od9QhCrWwpfH4S/uDSDVHwlGLrsMBGMtHNJ9yKhwxXkkTlHBE"+
                                 "9Tz5G9JkbzCW5sNT+M9IvNkiz745z0aW95Nhj2yCdTjCOrTW4laFZ2XKQ9GpUPLVwGrYcwSBTPkM"+
                                 "F6LSR2kt3VjH+mvHKVpGWG1zpJYV5lAIPrCqr4swUzMsKKfx6wlz1NpxajuHUkQavTbBvzK77EXl"+
                                 "eaDeer1ieFcMexWR3FKx1hGYE1719nefJ7JvuKbCzG/DLt2tI/WPjI5+GmuIOkAcCSnL3Ic+YM46"+
                                 "ZDWg7dCndZ6k90uff9XQm4FpAlVQSxUghrn0EsrbYho7hcS4xeEGTMq8KfMeqAn3RoZn5bBHYf/5"+
                                 "NLzDfazxxUaf/KInwusWlwvUj6Xv1U/IK+hgMkc/0avCYbOxvSP7ciz3kbabUw8aEzVOYfe79hqm"+
                                 "MM/VTtym8OEDfOTzscFXdFYde6qKJ8qcF4RzFwMmxF7DC+d7Js81MN0ryJ75xPMwnEMM2tCvzu5h"+
                                 "UYn0nEdcoV1IgnlQjLlzIZXM/kSsCn2Y8UtC7vePd2oQNuv2q2m2q2k2aTrgT8ImbZvmg9s4mBgS"+
                                 "M5Q2UyIQV3GF1UuSHJkshC/25wjdh+fOoSZcG0bPlQ9fKOx3gWEcY3pMrjYfdimzisjwSC6Cs65n"+
                                 "9Hnb5/jAnlSx6B/JVVlgCPTNorYWaG0lrt/R8Z8fn2zf8/onA6KOB9P6AeWFJ5J1bVyUKpZXyeVP"+
                                 "ZMtZS9JovuTKtNiTIXQhzToif3Woo7vAh9xy+5ySsLZRKMvr3XpuzbpuBff6o9okvvnUs+GjR/zK"+
                                 "wunMqQ+DrNLbzdWwurLpsca/677blnd056Mjexu09LCGLm1RznWdjtjxmzzZHZE0jieN4UlCFsTX"+
                                 "psWBYwKfkTlH3Fub1jHblzTH0gGnbIJjAsYmossiqO3E+TfHvXMjum4+HXdOIpiF95+60Ord1Eb8"+
                                 "iPrLje4ddr7fP1fbEWOxzz9T85d4vfRQk5oo44I3Rs/pDgNzPhzhxXFBAEd0eULkxRH4MPlB1Lmr"+
                                 "/VOOSI7Va7r1M6pDMck+DW97D20VhjT9uf2ITa3hpdzQFj8Y0SgSq3ebeOoy2b2w+vVHVJPTT7fb"+
                                 "+XxfpqHhe2OX8TMN7+ajd2otskp1C7Enm8et+qZtB2ach2Zdh+dcyPP25FlH0qwHYcoNxTnTyDCt"+
                                 "plqUDp/NJtok4WyiUZY3O40DWnWsntnFJSWTrO7h9CIwR6MGT3gMnLmRl/kRdZ8O7Mdzzv+G/aRh"+
                                 "E6ZuWKZ+ofFIBMIotelQft/RV+yTLWMmSI5Z96+WmAkL9KQ5ZtKke8KsZdy4kXmqmmYEHzHNI1k+"+
                                 "7D0Tiz0ThjK71m7o06JtVuGeE5lJtk4YMAnv1Q8i6TgRjnkWRk4yOL+BVX7UDPvRxGd7jO4+v5sH"+
                                 "z8AO+z0yiCk3TKo5lNCxP5ekU8PQr6cff8XQb2QaNLCOvwbOPPaCoVdFM3hMOVUwZJxKMo/DmYb1"+
                                 "nL7WdcK39YhD+65TFQ5ZoSks20SSfRDhhA1ii17LTosidyyD+BtYZbPGjU27flZ38leLNVO7bXrA"+
                                 "LlvTu+bQzeKT0ZV6iR26qcgDOXjtp7TjTyg2pTiboi7rXKR1Zqd1aoftwzb7B62O0U3O4Q1ON+sd"+
                                 "A1/aX6y2PPfU8Gymte/d4AaXGy/PeMCN7fN1jfMNndP82nDtOBSuoxNJIVNUtu4O3rDlZ1WdcFUX"+
                                 "T9XYk5qecWpnK7T+B2EQ0WiSXHM2o/5kEko7td8B9qamqOxZ+dMSeHEJvKQEXloCLyuBw0vgT0rg"+
                                 "5SXwihJ41We9Ho4ID0kpKqy4cy815E5SYnpRGbxcZY9ezHdbAjbtCN2uFaF+wW9XpP1ux4LdPsh9"+
                                 "Vzq0rtcdCas3iO3Sica7xFa2NjdRRlmYXuKHTicQ3/kH4/i+ARyBhOsn4QkkOpP1+Nnr3r6Bmlct"+
                                 "dY3txCHqvfsJKiZOuRu3Xtm0I2SLeswOwwhNz8sHHbP22L7a7Vyr6f5S0+v1votNWtfwDmGVGCxB"+
                                 "oVDMzy8szC/MzXPn5ucVogWFXByHp2eTWAqpaGZmdnZmdnpmbnZmZnoGOgPHt1NTU9Mzk2+n3k5N"+
                                 "T0y+BXd4mJqhEhzVuHHblc1qIT/uilY9kKhllaRz4a6WQ4LmubtHLyboBMUccCk64lrrFJBF6CeC"+
                                 "az4x7Kxod93gczYXjMtkMqlUKhFLJRKJGNiieGlpaXFpUbgoFIlEAiFwoUyhSM3IURkkT/ywO3iL"+
                                 "eui2fTHbNJN/OpK3xzhlh+PFzekHtqfobM3esxt29nCa54U7IUqtwJYVCqkMXK6gTwl3FuMiuhkK"+
                                 "hVwikwEYBBWLlySSJfHS4uKiaHEJ8KAPQqEAGJ8vEksh6uw0S98qY4t6iOqeGDWtZNUDeeqHH212"+
                                 "9Pkm95//yFz7X5HrNxZv+KF9o1OJFQbfq6RyReI6IofPE8TWD+5N614ZkwOBYqlULBFLlgAYICGh"+
                                 "AAkxgUoRYAr5fL5QSR1nM5IykNv23t62N0rtQPLOg+nbTaP+de3w36K/Whu87u+3vl2f9P0/i787"+
                                 "nWqEweOUVPYsTye2YW8cYmtMY+vwJBgZm51rQqCamrrfNAJHIRpQTQ1dTQ3diNfAka3NPQC5AuUL"+
                                 "l1aoLOZoe9eA7mmYquZt1f33NQ49VHX1+SZ2w18DvvqL77q1gevWRf3r77HfGkQbYbBKrctLosVn"+
                                 "XSS7PKRHUZdCIr078Gs0ntGPJmEwRGwPEd1DQqP7Maj+HhT43Ifq7sNiiEJgEJT3jgr+QZIpo9GJ"+
                                 "zdonErX1E7VPwk55xO1O1N8Y+J+vPTes8Vn3t8Bvvr7+7fFQIywWr1iGDFDpI2NoPKWfyMobmFCt"+
                                 "IZIW+GA6UGB/SyIQ2JUkgngQEYLyeLx3EQa9cYRK7UAO+AdVG1ik6punmrplGEaGqMXpbArcsf7i"+
                                 "f//V7x9rL39zPPg0Gtu7vCwHLn+fx6Qx/v5CTApuDErgZdm75QS5A1J3JYMAlq8UCZACAY8LqBIo"+
                                 "wsqOzGT9+qx2wM6zSM/swXFz2GmPNL273mr3NbeGqm8K3PZ14HqDW8ZoLA48WMmXZW+5otQWKpr+"+
                                 "1qkUa1WAgeYgkzIZbProOGOUPUoHfxxYNOrYKI1JHWFRRxg0GkvAEwChgCoSy36nAjCZws4oQlm4"+
                                 "5uuZJRpYPTAKuHM40WF32sGdcZo/ROy1irRH43ByuVwml4/PcM3jX20IrtsSWjs0yZuWyFAUdkFK"+
                                 "WUpyKSy5DJak9FJwmpJckpJYkpP5FAQXqOVyQfqvZNOH297QMDOjoMfCOeuYaaL+mfjTXrEn7vvr"+
                                 "Vphr5Vk4xfqiMTjQB4CJF0VNmOFLxcjr8B6FSOSFZmasZDIoFahYhItQwawsJ1SjILA8Phc4ZAuf"+
                                 "oYIZDA7Rc4q7Hb0fGVjD9C0Tzf1zjOBehs/dPbNvQdTlZeDgrmNjnEEKfYLGjkTRj74gsrkCaClF"+
                                 "0EsoXFypTtASVpYTMHlcPgQFWv+ACsD9pGFYZrXthXhD6yw733y9NKsjBSc9M8IAFcpgKehLUGMC"+
                                 "1smY3/iwA0GdWjmTKpFQ8wPlCYQCpkAAqVTq5C4A+7xWZcCxWGxuTtHli8GWznd1r17aFabjdNdD"+
                                 "SZVJZYxp3kU4LgkxeCq9zaeCACqYSBh2dwl1dw3zcA0DR3fXUHc3yC+4hQG/4h8LhC7wAHT+98r5"+
                                 "7AMQm81GIttyc7LdnP33nza1c7uEweKBSolMMjG74JuHUAmq3RzeMD4vAhNZqRTlckIqIY3vI6yU"+
                                 "CeIMMRcW3nWJLz9cz83NNTc3FRY+unEzogeNhZigsy/ycYNDcS9QCXXoGWhFoX67kjzKbgsVKJRD"+
                                 "oFLeGxRcQJ2f/1NU5ZzAFgmHlwMq2MiAgSydmJykssaYHA5fwF/p75CtMKHVhIAQ84P1XFjgLnD/"+
                                 "f1Q6nV5eWUUiDUE5I5W8b03v3sEWutKFoO1TGVweH7QhkLbKuEIvCAlB58E1n9brF6KNx+Gzcwsf"+
                                 "JMNSM7LfeXp26nuHpWcpPSU9EwxmZuVm5RakZ+ampmWlpGXB3nkmLC0Dlp5dUfXsfwEomn9NXtRK"+
                                 "sAAAAABJRU5ErkJggg==")),0,$$.Length)))))
#endregion
#~~< Label1 >~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
$Label1 = New-Object System.Windows.Forms.Label
$Label1.Font = New-Object System.Drawing.Font("Tahoma", 8.25, [System.Drawing.FontStyle]::Bold, [System.Drawing.GraphicsUnit]::Point, ([System.Byte](0)))
$Label1.Location = New-Object System.Drawing.Point(66, 133)
$Label1.Size = New-Object System.Drawing.Size(171, 16)
$Label1.TabIndex = 12
$Label1.Text = $TextStrings.ShareLabel
#~~< lblNetwork1 >~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
$lblNetwork1 = New-Object System.Windows.Forms.Label
$lblNetwork1.Font = New-Object System.Drawing.Font("Tahoma", 8.25, [System.Drawing.FontStyle]::Bold, [System.Drawing.GraphicsUnit]::Point, ([System.Byte](0)))
$lblNetwork1.Location = New-Object System.Drawing.Point(66, 26)
$lblNetwork1.Size = New-Object System.Drawing.Size(171, 16)
$lblNetwork1.TabIndex = 12
$lblNetwork1.Text = $TextStrings.NetworkLabel
#~~< PictureBox1 >~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
$PictureBox1 = New-Object System.Windows.Forms.PictureBox
$PictureBox1.Location = New-Object System.Drawing.Point(19, 137)
$PictureBox1.Size = New-Object System.Drawing.Size(41, 45)
$PictureBox1.TabIndex = 9
$PictureBox1.TabStop = $false
$PictureBox1.Text = ""
#region PictureBox1.Image = ([System.Drawing.Image](...)
$PictureBox1.Image = ([System.Drawing.Image]([System.Drawing.Image]::FromStream((New-Object System.IO.MemoryStream(($$ = [System.Convert]::FromBase64String(
"iVBORw0KGgoAAAANSUhEUgAAACcAAAAnCAIAAAADwcZiAAAAAXNSR0IArs4c6QAAAARnQU1BAACx"+
                                 "jwv8YQUAAAAgY0hSTQAAeiYAAICEAAD6AAAAgOgAAHUwAADqYAAAOpgAABdwnLpRPAAAC8RJREFU"+
                                 "WEetl4tTWlcex83s7sz+Gzs7O7M7026726bZ2DZt2jQxSU1iokajifER4/sJKIKKgICCPOQpD0UR"+
                                 "EBAQBJGnqKCIKA+fIKDiM75i0iTddDt1b5KO3ewmMdndM7+5c2bOj+/nfH/33N+9HAsEAlGvH7/+"+
                                 "zW+jjv3q2LFjUQc//uOHp1FRB29IfoclgPqasejxjPvcI54Jq2fSOumye73u5aWl1+e/w0rUK3OX"+
                                 "Qt77m5NLs4p5J8djJU0MEEYsBMcAa9zePe60vYP8a1JfQd1YD/zwYPLxSu92SLQ6w1x0E/1jGM8w"+
                                 "YtwIHlIVGGTgcXvv/wj+d2rQ791f1m+H1YtebmSa47VjhtVlfR3ZYmoyC3ORWvkNKu/PCjHj/0n1"+
                                 "+wN9XfjvlsXTdrzLDO/mpGBBJ2HZH+IKThFKzyFzvqhMO4WC3+3X/ex14fmYmpqamJhwOBx2ux24"+
                                 "ulyucDj85m295HVqPjCqgVhk+Ur+TQE5qQVzVcnIc8nrvUrcuBRtoZcopcLtnT1AEYCFQiGfz2c2"+
                                 "m/h8PgqFKisrK8jPz8vLg8FgPT09Vqv1DeCXqMqergltMR11xtwBWvMol6d7Hi3oH8/377mkfg3Z"+
                                 "K0WF9n96oeX1elUqNb+Nj0Ii4TAYCATKy8/PzMpKTU1NSEiIiYkpKSnZ2Nh4HfglqkaCM4gyGKjz"+
                                 "ARPzYGfi6eO5p/u+v4dMO2PCYB9pSoE7VDEajTAEth7XiMbgESgcBFpzN7c4Lf1Oyq20pKSkuLi4"+
                                 "s2fPSiSSt6IOyEBiWkIvu3DdJni8aHr6wPP0gftxWL/rEIR0lOl/oc5GIu1UZDOyiIIqodSVEqpy"+
                                 "64ozCjOTU5KT4uPjL1y4ePz48fz8/JmZmVeCX/JqlZez0N9qaaW7o6Inc9rHq5bHK6ZHs+o9Bz+s"+
                                 "o8yrCYcSe8vTi/rmFRMjYmQuaMnTysYxQZWekIEvjLsYc/bUqVPR0SeBUms0mqOpA7IyBvo8F5Ww"+
                                 "oKXujfAf++Tf+br3J8RbtlYA6VXgDyXCdsWyifnAJd0dE0cGeDO95JH2GhM1R1p3PS3uTPSnn0V/"+
                                 "ehKoc3d399FUo6igBXUBVXRKxyxdNTH3Rtt3Rvjb9rYVM3NGgXV1YQ8lQnbFopG9NSreGBGGTRyP"+
                                 "otHCBqvwdzqqk7Kvn/0k+tSJEycvX778VlQRvagVF4su/qwNneLvJa+amctG+qKe6u9tmuyqs7Uj"+
                                 "DqnTFmlQR10ycZYsHCBzUoQ0M0sBaiv0enbiuW+++vKzkyevxMVpNOqjvcrkUhbiQgPoc3zp13Ze"+
                                 "lV+F93VjproxLhFirAMWWNk8lJjU8j0yrE/eOCXHuSWo0XaYiVGibMhsq0qsz4lpyP46K/Zkalb6"+
                                 "uGvyaGooFGY3FTeUfV2RfpwBjRvmVY4Jauxt0GFOhUNC8M/PHUo4FLTBlnJbG/TZKq8CQGqIORLU"+
                                 "TT70GrvsPD0nOvf8n9HY+vX1taOpQMfZXX3IojXkpn5Umxktqr9pZpT0k3J6SfmB+bnlta1DiWEJ"+
                                 "Sdt010gvNtCKgACQsvq0DngiG3KZXhgDjnsvLf6CSv3qAwyIvPTkLAQWNsMP2WrSDciXuKpvuxA3"+
                                 "ACFhdSKnNpktZSv6Ffs7j4DfrO88GhSTZOjbSlxGT2MWcDu7Mbc7a5LY5bG04ov47NPYstT+gaGF"+
                                 "heDRXQJAbi09kA034XqyM0mxjdhEQ1NeFzJVVH2dCU8oqr5yq+YSnoEyGY17ez+4+zXCmhsCeIKw"+
                                 "NhkIYHNcyBVa4TlKwbmapE80Iub2zu7RfdgfmNfZRVovpdUGphqK6rpuo5nJOlpBPzFX25glxmVC"+
                                 "EPHXK07dqvmigpnI7WuwDpraYMmMkgussm9bymOZpRcpeWeIuWcas78Cxf6xuSY3GFw4gjo7Nzvk"+
                                 "1Pb4yNLxet5QBctc2qwvqBPekjHv2iklFlKurDEHjkhNgX2Tg42p4MRXC1KbuiF0RDIhLZqY81XT"+
                                 "3dP4O180ZH7ekPVlZfwH4Ng/oHKvbK2vhMOh11Y4GAz5pj1qJ0vlJXSOIjhWcMtAOWsAhO/NaRUX"+
                                 "DchoemmDSNBURyoqar4K5SUiRClVrUmlLdfQxDsN+edQN/6KTP0YfesEKi0aEvdeYczvYNfew2Se"+
                                 "5nWwB+0j83NzwAn9T3ZUMBAadupVHqJsHMMfqmJZyp4FYNdYQOkrNIT1E+srlsAUR0lrVNzBKTJQ"+
                                 "UoCaCGLEVdPTJEIaEVlak3a6JvHDyqvvl1z4PfjSn1DJf0HlxmbWEiFksUihn551+4GvhZdHVMi/"+
                                 "JDNy1D5Cp+2ZUQAJeAWCYSrCqdKUPkHox+3JzZDQyKLpi3A96QhhKpyfDGZcLCBcZfa72c4nhHo4"+
                                 "+sZH8IQPoNfer078AHXzEwi0AswdRgjcBPlUS8+EzmAMvuw4KhK6J9Dhu50IlqmUbixmmksZphJg"+
                                 "Qu0vbFRl0HSVk+uz0yv7bWoqSZuLVdxGilOqeJcgLXlYpYHvOaBrwyhQZmPa35A3TyBufIxM+xQN"+
                                 "LUAJB0m6JYLaj5VP13fPwgUurlg+Nz9/aDhqJbzD7qnlDpYTe+8S1NkUXT65Lw+Ipt67OGUGqitF"+
                                 "7ZZPBDZ5cjJecQcjB6jxYG4WUukUjX+v8h/QlQ44rIxacoWQe5ZedZvN5VC0U1TLBrV/kaoLk9Xz"+
                                 "WKmnRugCc0eoApXb43sBjtpc2qdJK6j9uRhZWr0sDbhzWHn6s6siAyO9BRNcY+uxFoePJSGhpbeQ"+
                                 "klQY/2oZj9uo2Wi3b8vdD5jSAbGoa3zUZlApRsfmO4d3GNZNjmWt1braPrjKtyzSdH6sbLKyzQGm"+
                                 "m6VqwwvHz04TVQQnqNPrxMm1wmRkVypKchMIYFInTqlsv9IkL1cazDRhY7Xoem3nNRArqYyralAH"+
                                 "+bZNkXOnubN3yOHZPzjY/fFAN7tP7o+0WDc6Ru/JnFvdzo0ue4RnXiCpp2DtIyWsITRT4XZ7QqFg"+
                                 "VCgYUlvE1exUqOAaTBBf3ZkAFyRUtyfA2xPhgusQXixCmNWp7MB3VINbL0F4MTmk9FKeoUG90GJa"+
                                 "4QyuUlhCs8338KeD4Nr3NN0CzRgBatDlui9zbXc7NrpGV1oBqspbLRgBsYfysVKTxRRZCkc9f578"+
                                 "Gr26nlgNwt4uJsQXkC8XkC7mEy8UEmNz8efyCReraXmF+EsZiHM51bFZsGJQiwWrnG/SBsm6QHNL"+
                                 "+7AjsPPkQOvaxKr8bMsa374jdN4XjG532jaEtgjXFCSofPD2EQh3MBvf29TMjISDP3d/gL28HHFO"+
                                 "OCUyIaedTuMRmjlYMgfbzGmgcHA0Dp7KI7R2tJgtRqm8B8obxMimcT1zePVcM1c46lqcWz+g6QJE"+
                                 "7QLLstpm3+4Y3eUNb7RaV7jmML3fj5N7qvgOwGte80A5vGFnM/Lqf1ev62R7WxuWcXcVz4aUeDAy"+
                                 "L1bho3UopjyRsdkn9TIvWRtkmCLcoU3u8L2WgVW2aalFH6JqZrDdbmibDcS2lrAH70LQD3fW3o0K"+
                                 "7EZrsEIpyjrJDEI0USd20oWa4PSm1nGvtmuS3BekG5cBu8yBVZp+kW4IPSuAehotcVXwhkDsATB3"+
                                 "KL0E8Wh3/Z2pU9MzbIG8nKRDSOfgQk+z0Dg3dY9vDNWKXAT1PACmGZYANqUvSNb4m9SAUU+NYAxA"+
                                 "Ag0PzLXdKqq9v/WOFX5ReeAtJpNKoTgOhGdjyse93r1m9Tyiy92gnMGr5pp6/SRNAJjg5FMoiRvR"+
                                 "6axstZW3WCFcO5gzUlKFmZyceGevL8DA6RsZHaCw2QSaSG9cwHZNIKW+Jk2IqFkg9oWIfYvACW9Q"+
                                 "zWPks3USD7RjDMQZKacbapqlJtvESmT5v6S+YC8vLQ5bLTKlhsjohBHa4WR5FaWvimaEMcxVDCOU"+
                                 "1l9BVoEJIhCOh6K0K7V6y6D95474hjf+2ywFnw+P2zM4NKy3WPtMw30Wm848orWMaM12rWlYaxjs"+
                                 "Nw04xpzra6u/dP+3kT4yBwBHIpHNjfXte+s799ZexO7z2NkCPk9/4b2Q+icJl0eYsRO+mgAAAABJ"+
                                 "RU5ErkJggg==")),0,$$.Length)))))
#endregion
#~~< pboxNetwork >~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
$pboxNetwork = New-Object System.Windows.Forms.PictureBox
$pboxNetwork.Location = New-Object System.Drawing.Point(19, 30)
$pboxNetwork.Size = New-Object System.Drawing.Size(41, 45)
$pboxNetwork.TabIndex = 9
$pboxNetwork.TabStop = $false
$pboxNetwork.Text = ""
#region pboxNetwork.Image = ([System.Drawing.Image](...)
$pboxNetwork.Image = ([System.Drawing.Image]([System.Drawing.Image]::FromStream((New-Object System.IO.MemoryStream(($$ = [System.Convert]::FromBase64String(
"iVBORw0KGgoAAAANSUhEUgAAACcAAAAjCAIAAACYUIR0AAAAAXNSR0IArs4c6QAAAARnQU1BAACx"+
                                 "jwv8YQUAAAAgY0hSTQAAeiYAAICEAAD6AAAAgOgAAHUwAADqYAAAOpgAABdwnLpRPAAADFBJREFU"+
                                 "WEellnlU01cWx59StdNSd20VRcUiaq24DFoR1KpVaKWtIK3UAnU/zugwiIqgFUtrAQkIouykLBKS"+
                                 "ALIEEvYskIWE7Pv2ywbZUHYoiOQ3P8eeOV2cGZ25/+S837kvn/vufe9+7zS1Wg1+a69Nd/rT9Den"+
                                 "OWY4HKP9kxPTnaacnJx6B6dWL3rNAZwmn8JPpp7Cv9vzqkuE+muTK2QUCRsrwGV25H3bkHkWXY2h"+
                                 "NotkvGOo+u8rxIUtCppIoNAof7frVZfg1xtEenk2+/5pUmwA/oezbZkJ/Jwzda0tkMQ60rsvruKr"+
                                 "wvbPUOTwzMYUArWRJtEZDK8K+5f/L1SNWk2R8s6SY31b1x4mpQQRIJIRV6qifVJC/6qcHvITbWc6"+
                                 "5RhJE4zmB6U0fpX2MDT9diEHI1Eo/jfwM6pKrSZx6cEVZ7a3uocLd7aZswS9gsFJxiQsKlfpjnOM"+
                                 "J1R94ULr6XZLaA7f/1J9QBz+S+zlS8o9BeQanVGvRUJ+RQM6rZanFF/ouOZJcN/P2pCiud3XNzA2"+
                                 "IZp0DKgHBpsN+iRNT9Tw1BnxwCmS8SRWGZLa6Xui1v9KRgTpu62BKI2pV8Dly2RSg16NpNxshmw2"+
                                 "g8EA/ecwAKTRpTcUbWj09GIvPyLbnmWLfDpOhWGTwfGENTBCsD9Kt/dH2sZuqix/JxvOlGnD7os/"+
                                 "vkj9NC4tApf0vm96QXH5ydNlt26RKiroxKZOoVyi06llyJ2UK4xGyGbRd5v0f4wAGOSmj+6cWE1Z"+
                                 "uKZhxR6uV/bAl9LJ6nwHjHHA0PgE5+nk/Uk4TgI1NNHyK5ua2RymsrOO0ppcXJpahc1nphSWFQKQ"+
                                 "CkApAPXz5rPWvQcFh9nzcT1NHXYs0UJo6W6m6agdaplYbbeYbRazXq/XarVALRxfnrNuGXnxkrKV"+
                                 "G0Xu560X/2LsvTw0RoNhlgN+OAXfHHfky1R/iyha/Haet2+tz8G6Y2cbr39PT0xltNIoIh6nrLwd"+
                                 "j2eh0ZxElCjgi+6PvpxoYcDD47DICItNME8L02VjdMloKWWULR2k0zskYjG4EU9xyduw7lLS+tgc"+
                                 "36qYfRVsP5o2un8sZWwqcfjptaHJ49YnIp36i6A7AJSAeQ1gDhfM1oE/9TvNn4y942BKJqrapmpo"+
                                 "/W3cbrbCLIUQUxp0en23HZ4cFwnF5r7RRyOwA4bVNljZM8ykUhVKJdgXkrE0cZv7oVK3U2SvjHqv"+
                                 "Qk6AyPpN98+nTKOnTSOhhpEgwdBwj8zDIxHMKAHL6oErDbgJwRr9aysHCsqnYBg2P4LN/bDGCkuN"+
                                 "cJcW7lT9TJdMpD20D/fZcZgHXYpe5LvRDreKp7jyR12d9Gfd0N0nbuXFQ+8HZbmHVXrdJXgVinxI"+
                                 "pgPtPQG83oAu+8HORweazY8VorlLk6c7FYFFdcCFDFy5YLUGLOk9GfNkYBCWamF1D6yzwt19sH0Q"+
                                 "7huBh3+GW/kTk+NWPL6aLp9olz0LCEOfZPL1Ij5Tq9WBJWtTVhw973EjcEXwvTXnH3om1PsUsbeX"+
                                 "SLyr9bsJhl2VhtBqjYTF2OyNdl+NB844sLQNLGcDNyVwMf/58AhkdYjVcJcc5mlgvhYWQrDCBCt6"+
                                 "YAJjZNCsQZe01DHhmna4rQvOqX7C5mvEIp5ebwRbd+Jc1t9ZdSRq3YWI1Ufr10ZQt3zftOUHxtY0"+
                                 "6QeZSu90WXSVBJ2HPxBQcfhI7bRZeWBpA3BhgJUy4GpcsHmwgQELVHAzG6bxYYoAbpfAPBXcIkZI"+
                                 "AyYJ/V4mLRMPo8ufoCthVME4nckVCTufUUNONq3aWOC67c76wDiPT7Frj5ZvOI73CKl870zL1ij6"+
                                 "zmu8O0T1zVtFBwLwIeF1s9/MAPOwYHENcGkHy/gzXZS3C0Z4UriiaaqW4qhtn6pjwBQeXNjiINL7"+
                                 "NcLm71M519Mct3MHr6ZMJeUM0Ts6uF0I1QDyi6XvbnrgtrnYbUfuav9vNyUc33X/nG9SzN6Y1HV+"+
                                 "JRsO1WII3JNn0/f6l4eeqlu+Inva63lgER68QwBLW6fNZYRd6m5jjuXjR3+qnCiqelpCeFrZ6kj6"+
                                 "ydFA6xOzq/4ayzt+ZehKgiXwwkhijlUoYAmFQi0EAZ1xYN02jMef8Ss88132x75HdN9C8N7T9lmY"+
                                 "+PjXeTk7Dt3FlhN99iTv8SsP/KrSwxPtNOs+WFgGFleDJcgrIu8MUpfWDKFyH9/OH0pBj6YXjufi"+
                                 "Jq+kPG1hWpjtFZ9/w/MLM4df1G4+ZLmVrlPIOXK5QqPRApVKffI82WMbbqVnxrJv/WbnzHO9u2FD"+
                                 "iZcnyduH+uHhtiOt8oL1nmkffFjqvQe9bkvBrLfugtlosBAL3q4Cc4nuH3T9mGm/mmiN+rH3avKj"+
                                 "a6iBG+kjf4kbE6uh5ibsxt20jR8J9gfz5r7PT84UKmUcJcJTa4DJqKtvgvZ+Vr9pO9r7ZsSCeNc5"+
                                 "11YtSnn3HdSapekeXthd2BrUKrfkdVvzV3rcXbE+7Y1FqcD5HpiHBovKwNyK+WsaT0ZrTl/Wfx1h"+
                                 "CL9kPBFtDo2yH79s67Erc3PLwcwK51W1Cz3qpy0mlmCYKhVH80+BAsgPn6+8ndbpH1S9+4t762P9"+
                                 "XCLd5kW8M/vaO2/eWLIzfxcqOWHOW/EzZt+ZOSdxlvMtJ+dbwDkFzMkCCwrBXMzrLg8PhnA/PyE5"+
                                 "ECL1D1cEnFR/GKL74pzOYhXl5uL8Pibt2ktc5Va1aAEGg2uDIDZy0GfU54LA5nZHx3fuOlS0PTx2"+
                                 "fdzu1d++53pt7cL4ZfvvH8hMuHPQ//amLalr3BLmz42fBq4DEAemJ4LX04FzrtOCEi+/lp0B9M37"+
                                 "6VsPcrwDeGt384NOCQwGVhmmpLGBQCQ2lWCoCbc5HXRxZyftOe4XqlYLGcxPIq6xffzzdhxP3XE/"+
                                 "9IPcwDWpm/fd+zgzM4GASSAW3a3MxmVlYyMjCwMDs7ZtS1/ukjXTKWsayH3NudTZFbdofZWrV4OH"+
                                 "T5vzGkrYBQakZdDb6Y97zRIxV6MWyyTM9nYKm838DRVZQFo1l9t5JqLo4+Ai7xsnfIsDd2O+3F61"+
                                 "+0BFeGh60oWkgsTcMnxdOaW1jEYqKCrIyMvOuvVj3uW/lxw58nCrD2nZypr5zhUzZhYDkH/uXB2P"+
                                 "SzWazP9O238zrfF4vIKCwr9GxOwLCdsYunfz5WBf1Dn/5GK/6NbD33GOJbWdSauNTHmQnZNXXJhX"+
                                 "Vppbjs2txOSUFmTgkKrhG37Kp8YnMvYeJKNSGe3UBovF8lJUlUolkUjY7E4spjA66sbRsPNBxy4G"+
                                 "H7sSejr2dET0pSsxqKREdEEukURkMpkCgUAmlankSmEXp7ODLOBTW1ormQwSkkkGg1FbW2ux2V+K"+
                                 "ijghQo+MPRqlQsDlikQiGo3W0NBAJBLJZDKbzRaLxYgDEhkSnwG5CSazrdtm6e57PDj6qG+cLlRK"+
                                 "lDKBgMNks7R6HSKyL0t9DqYwWTyFqsdqg5ApSKPpg/r1OrNKZ9JpTEjv1ml1Wkin0qghlbpGQUXZ"+
                                 "6j9Rxad1YoeGhwfGhnsGBzS9j6gM5HUiDeHF9pu6PncRSKUs5FAqlaa7R2/vNdgeG/sGLsPYb2A0"+
                                 "6nFj2SCtXNRMkNNyTfWfSG94CM87P/wM/LB2R/IRtkii0Bk6ODwGg4WE/h/GxBdQ2XxhSnEZgdqh"+
                                 "t1q1FsvPo+NNfDKQfgieXJw1cckTvhVie7DJilo8FTNn9KJLR+hbCf4gavOWq4drqS0sBh0Zdf/r"+
                                 "dPwCqlyhoDJYFXWkBw9r0kvKBGwoEocCyZ6AdAwQP3mb+3UclB9ly1s+eHUmHPkG/N2bcPzWpguX"+
                                 "MhLlcpnx5SbyF1CflxZp01KZVCKVKhXK7NLCTTFHVyYHz7756Rs3D866vmrGjyvAXV9Q5g/IgQsb"+
                                 "g0uqMZCqu0vbI4YMUkO3dWDY1tvXPzSMFPaFtX0x9Xcp0kGQ3Wipp5CyiKU3sBmflsftxEVvyD6z"+
                                 "4KbfvBC3JVHea68GxmDSZBqFXClXG3VKg0FhNKnNdoZIypXKNH/I+UtR/xUEhCiyViuQCYkd5Lxm"+
                                 "fBILdx2XHIiOPNeUTODSuhQKsd6gMhrlOkijVZPp9BoikcLqVP6f1F/nAPljnUHH6+LVtzcRWC1s"+
                                 "LlcgkbewukrrGovqGlt5gto2ahtXwBYIlX/I8qud9Y+XE2Gbu3u6jUajDjIZDcgblUslCplMA0G1"+
                                 "tXX4unpE2Z5r6q/tH/b6mbaN7u8yAAAAAElFTkSuQmCC")),0,$$.Length)))))
#endregion
$panelMenu.Controls.Add($btnMPIO)
$panelMenu.Controls.Add($btniSCSI)
$panelMenu.Controls.Add($btnProxy)
$panelMenu.Controls.Add($btnShares)
$panelMenu.Controls.Add($btnGroupMembership)
$panelMenu.Controls.Add($btnNIC)
$panelMenu.Controls.Add($Label4)
$panelMenu.Controls.Add($lblInternet2)
$panelMenu.Controls.Add($Label2)
$panelMenu.Controls.Add($Label3)
$panelMenu.Controls.Add($lblNetwork2)
$panelMenu.Controls.Add($PictureBox2)
$panelMenu.Controls.Add($lblInternet1)
$panelMenu.Controls.Add($pboxInternet)
$panelMenu.Controls.Add($Label1)
$panelMenu.Controls.Add($lblNetwork1)
$panelMenu.Controls.Add($PictureBox1)
$panelMenu.Controls.Add($pboxNetwork)
$FormNetwork.Controls.Add($MenuStrip1)
$FormNetwork.Controls.Add($groupboxInfo)
$FormNetwork.Controls.Add($btnClose)
$FormNetwork.Controls.Add($lblCoreConfigText)
$FormNetwork.Controls.Add($lblCoreConfigTitle)
$FormNetwork.Controls.Add($panelMenu)

#endregion

#region Functions

function Main{
	[System.Windows.Forms.Application]::EnableVisualStyles()
	Get-Status
	$formNetwork.ShowDialog()
}

function BtnProxyClick( $object )
{
$formNetwork.enabled = $false
. $ScriptDirectory\ProxySettings.ps1
}

function BtnNICClick( $object )
{
$formNetwork.enabled = $false
. $ScriptDirectory\IPsettings.ps1
}

function BtnCloseClick($object)
{
	$formNetwork.Hide()
	$FormMainMenu.Show()
}

function BtnSharesClick( $object )
{
 $formNetwork.enabled = $false
. $ScriptDirectory\Shares.ps1
}

function BtnGroupMembershipClick( $object )
{
	$formNetwork.enabled = $false
	. $ScriptDirectory\UserAccounts.ps1
}

function Get-Status
{
	$Temp = gwmi Win32_ComputerSystem
	$lblComputerValue.Text = $Temp.Name
	$lblDomainValue.Text = $Temp.Domain
					
	$Version = gwmi Win32_OperatingSystem
	$lblVersionValue.Text = $Version.Caption
	
	if ($MPIOEnabled.Length -eq 0)
	{
		if ((Get-WindowsOptionalFeature -Online -FeatureName "MultipathIo").State -eq "Enabled")
		{
			$MPIOEnabled = "True"
		}
	}
	if ($MPIOEnabled -ne "True") { $btnMPIO.Enabled = $false }
}



function BtniSCSIClick( $object )
{
	$Shell = New-Object -Comobject("WScript.Shell")  
	$Temp = "iSCSIcpl.exe"
	$Shell.Run($Temp)
}

function BtnMPIOClick($object)
{
	$Shell = New-Object -Comobject("WScript.Shell")  
	$Temp = "MPIOcpl.exe"
	$Shell.Run($Temp)	
}

function MenuNetAbout($object)
{
	#Global from MainMenu
	Menuabout
}

function MenuNetLogFile($object)
{
	#Global from MainMenu
	MenuLogfile
}

function MenuNetClearLogFile($object)
{
	#Global from MainMenu
	MenuClearLogfile
}

function MenuNetCMD($object)
{
	#Global from MainMenu
	MenuCMD
}

function MenuNetTaskMgr($object)
{
	#Global from MainMenu
	MenuTaskmgr
}

function MenuNetRegistry($object)
{
	#Global from MainMenu
	MenuRegistry
}

function MenuNetSystem($object)
{
	#Global from MainMenu
	MenuSystem
}

if(!(Test-Path variable:\ScriptDirectory))
{ ScriptDirectory = Split-Path $MyInvocation.MyCommand.Path }

Main

#endregion
