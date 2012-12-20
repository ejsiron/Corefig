Import-LocalizedData -BindingVariable TextStrings -FileName Computer.psd1
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
#~~< FormComputer >~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
$FormComputer = New-Object System.Windows.Forms.Form
$FormComputer.ClientSize = New-Object System.Drawing.Size(649, 496)
$FormComputer.Font = New-Object System.Drawing.Font("Tahoma", 8.25, [System.Drawing.FontStyle]::Regular, [System.Drawing.GraphicsUnit]::Point, ([System.Byte](0)))
$FormComputer.FormBorderStyle = [System.Windows.Forms.FormBorderStyle]::FixedSingle
$FormComputer.MaximizeBox = $false
$FormComputer.MinimizeBox = $false
$FormComputer.ShowIcon = $false
$FormComputer.StartPosition = [System.Windows.Forms.FormStartPosition]::CenterScreen
$FormComputer.Text = $TextStrings.AppName
$FormComputer.BackColor = [System.Drawing.Color]::White
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
$btnClose.Location = New-Object System.Drawing.Point(518, 461)
$btnClose.Size = New-Object System.Drawing.Size(87, 23)
$btnClose.TabIndex = 2
$btnClose.Text = $TextStrings.BackButton
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
$lblCoreConfigTitle.Location = New-Object System.Drawing.Point(19, 31)
$lblCoreConfigTitle.Size = New-Object System.Drawing.Size(228, 17)
$lblCoreConfigTitle.TabIndex = 1
$lblCoreConfigTitle.Text = $TextStrings.PageTitle
#~~< panelMenu >~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
$panelMenu = New-Object System.Windows.Forms.Panel
$panelMenu.BorderStyle = [System.Windows.Forms.BorderStyle]::FixedSingle
$panelMenu.Location = New-Object System.Drawing.Point(-4, 85)
$panelMenu.Size = New-Object System.Drawing.Size(657, 352)
$panelMenu.TabIndex = 0
$panelMenu.Text = ""
$panelMenu.BackColor = [System.Drawing.Color]::Gainsboro
#~~< btnWinRM >~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
$btnWinRM = New-Object System.Windows.Forms.Button
$btnWinRM.FlatStyle = [System.Windows.Forms.FlatStyle]::System
$btnWinRM.Location = New-Object System.Drawing.Point(380, 220)
$btnWinRM.Size = New-Object System.Drawing.Size(158, 23)
$btnWinRM.TabIndex = 22
$btnWinRM.Text = $TextStrings.WinRMButton
$btnWinRM.UseVisualStyleBackColor = $true
$btnWinRM.add_Click({BtnWinRMClick($btnWinRM)})
#~~< btnRemoteDesktop >~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
$btnRemoteDesktop = New-Object System.Windows.Forms.Button
$btnRemoteDesktop.FlatStyle = [System.Windows.Forms.FlatStyle]::System
$btnRemoteDesktop.Location = New-Object System.Drawing.Point(380, 191)
$btnRemoteDesktop.Size = New-Object System.Drawing.Size(158, 23)
$btnRemoteDesktop.TabIndex = 23
$btnRemoteDesktop.Text = $TextStrings.RDButton
$btnRemoteDesktop.UseVisualStyleBackColor = $true
$btnRemoteDesktop.add_Click({BtnRemoteDesktopClick($btnRemoteDesktop)})
#~~< lblWinRM2 >~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
$lblWinRM2 = New-Object System.Windows.Forms.Label
$lblWinRM2.Font = New-Object System.Drawing.Font("Tahoma", 8.25, [System.Drawing.FontStyle]::Regular, [System.Drawing.GraphicsUnit]::Point, ([System.Byte](0)))
$lblWinRM2.Location = New-Object System.Drawing.Point(376, 144)
$lblWinRM2.Size = New-Object System.Drawing.Size(242, 31)
$lblWinRM2.TabIndex = 21
$lblWinRM2.Text = $TextStrings.RMDescription
#~~< lblWinRM1 >~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
$lblWinRM1 = New-Object System.Windows.Forms.Label
$lblWinRM1.Font = New-Object System.Drawing.Font("Tahoma", 8.25, [System.Drawing.FontStyle]::Bold, [System.Drawing.GraphicsUnit]::Point, ([System.Byte](0)))
$lblWinRM1.Location = New-Object System.Drawing.Point(376, 128)
$lblWinRM1.Size = New-Object System.Drawing.Size(217, 16)
$lblWinRM1.TabIndex = 20
$lblWinRM1.Text = $TextStrings.RMTitle
#~~< pboxWinRM >~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
$pboxWinRM = New-Object System.Windows.Forms.PictureBox
$pboxWinRM.Location = New-Object System.Drawing.Point(329, 130)
$pboxWinRM.Size = New-Object System.Drawing.Size(41, 45)
$pboxWinRM.TabIndex = 19
$pboxWinRM.TabStop = $false
$pboxWinRM.Text = ""
#region$pboxWinRM.Image = ([System.Drawing.Image](...)
$pboxWinRM.Image = ([System.Drawing.Image]([System.Drawing.Image]::FromStream((New-Object System.IO.MemoryStream(($$ = [System.Convert]::FromBase64String(
"iVBORw0KGgoAAAANSUhEUgAAACcAAAAlCAIAAABOCWdpAAAAAXNSR0IArs4c6QAAAARnQU1BAACx"+
                                 "jwv8YQUAAAAgY0hSTQAAeiYAAICEAAD6AAAAgOgAAHUwAADqYAAAOpgAABdwnLpRPAAADLdJREFU"+
                                 "WEedWAl0VNUZvmERXEB2CXsAq6ioLLUWrQcEpeCKUOuuJ6AVWrQtFrVEgkSEbJOFScg6SSYzmX0m"+
                                 "s89k9n2fzJZZM8lsSSYLEEk0oRBe/5Ae2nNay9H/vHnnzbx37/d9/3Lv/yYjHA6j29m0aTMwDLv5"+
                                 "FJynLqe+/lwD1P9vHq/X3+EJBjzhUEco6A8Fg6FwKBIJd3Z23m7oj95Htx2p02gpVF5RcQuPK5JK"+
                                 "tRqNzmYzBTsc0c6OSNgbifjCYX8wGAgHg50RmGzyc1u7PWq7Q/fRYcKdd5f86jfk7bs4v32Fd+Ag"+
                                 "95Mv+N+WtF1o0NPZOoVKb7Pb2l2OQIevw+cN+N3BgDcU9IZDvs6o/38yuD2q06F9451yhAhoPgvN"+
                                 "F6EFWrTENnt5x6J1kZUberK2pPcfTuOb+ytIyfOk3hpyjM4JtKkCRkvU7Oy2OMO2dl8w4O+KhmLR"+
                                 "UDrZmU6n4vH4bVAjkajdYdj2TD5CTeg+OsoUoGVKtMqEsnxoTRRlpWesH83+Chv4DhscvuaLXrcG"+
                                 "rqnd41L7ONc4TlJfqxSNl3EGK1t76JI+sXFQqkkMDY2kksn/gdrd3Q2Z0tOTvHr1H93RoFgiWpp1"+
                                 "Gk0nosU0dB8fLZWjFQa02o3WRND6FFp7aVf2VWfwxsgolr6I9Q9jl0aw4THs8s1j6HsscREL902E"+
                                 "UxO6EIZjXOzpH/G5HP9GBbBYLBYKhdLp3u5Y1GwyWCzWzrCXzZEtXHQGzapHC2loMRdltqFlOrTS"+
                                 "gbICaF03yhrYuPd7rnIimcbCicmjM4UFE2Oe8GVPeCiaGOu9CG7AvhvBLo5iKsfo2A/DGq1mEjUa"+
                                 "jSYSMSiERLw7FAra7bZYrHt0dAQK8/KlPjKZu25j9bzMRjSHhJa0oqVStEyLVtnRaj9a14Wy+u97"+
                                 "4koJ8Xo0hXV0TR6e8JhM4xOKFWwWX64PhFPXO/uw+CDmT2J83cgPVy4J+QIEzgz4A2KJmMPhmI2m"+
                                 "kZErAHb16tWhoYvpdDrQ0f7N2dq9+4VP7+agWQS0hIXuE6HlSrTShNZ40NoIyuqd+cDlj06NOwM3"+
                                 "PBHM5p+A4PGFMovZQKZyhOqIp/u6txsL92KmCMbVDH8/3NtCIaPOSKdKoTr00eFjx3MYNOZAf388"+
                                 "nnC5XG632+/3O+zmj/5Q/vsPJAf/JJ92dz2az0RLBChThVaY0Op2tMaP1najNf3PZ49K9RN2P9am"+
                                 "v9LK07hcNolU3sx2GP1jtghmCWCuLkzgwFrVA8PpeFNTI0r3plsZkscW7Xlq4xvNRLLf525vb3c4"+
                                 "HAALtW+xmN58t3L/W7zjucbMdXXorga0COSK0XIdWuVEayG0MbSyb+NLI2QBprFP0JmGgMfrdNqI"+
                                 "dJPQ9IPOh6lcmNqDmcNYs/q6SNc/EA8R6urRQHJIqqLtzV388sEdDCI76PO2u9ptNhsA+zxui8n0"+
                                 "+7eqXj7A+vy0ZvseKrqzEs0jooUUtJiNMsVohRGtdqHM4JItPacujDdQNP09XZcvDzA5hsbW70QW"+
                                 "jKfH+AZMaMKkDqyKPa4w9ibC3vr6etQb75UYaF/0PVSQfoHPZLttPqvNajabrVar025Tq5S7Xyx9"+
                                 "ZT8z+4hw74HWOxdXonvq0AJSxmI6WsSdFJ2pRJmmmaudH/xZn0qGMeyGyeItOO+lCm+Q+NfIgokW"+
                                 "0Q2aCKNJseK6MbUxGfE6GxoaUCKeUMuUJEFls6aIx+K229oNBoNerzeazDazoZUj2PRkwSuvs157"+
                                 "k/b8PnbmL2rQXfhFWYSn9zJWPUbJWArlq0CZhhWblFyhE7sxEe3qPlOkqKKM1zCvVlHHq2n/qKFf"+
                                 "I7Cu17CwvIpxtT7mcVhIJBKKJ+I6jb6NpSU3cJlUtstuV2vVKpVKq9VbzZraasr9Dxfu3cfY+Txx"+
                                 "54u0Bzc3zp5f+nkOOz3QJ1fZtu6aBJ65su3oF/LBwSFI/sJS9qmSRFH9lYLaK4V1o0X1PxQTxs43"+
                                 "jRc1TJwsHTbZOy0WI41GQ7F4TK/Tq1QaKoXFZLBcLqdMIWuTtqlUaptZU1xEXXU/bseell9uI/x6"+
                                 "e92DWxvnZpa9f6gCw4YBA1yz4deNG7YxKOx2DLsmkbZ9csKaUzL498KhE8UXv8JdPlnyXW7ZlTMX"+
                                 "Ro/lXz1VOtgRDMpkYjabg2BBMOmNRp2Nxeax2Vy7xcbl8gUCgUKhspq0uadImWtxW59qfHhT1YOP"+
                                 "Vtz/2IW5y/F3LCjYvhvvcUMUx4gt5rxzomhnGHLh0KfkP51Mffxl8khO7x9P9h3N7f/k68FP84Y+"+
                                 "O3sp+8srp8sT0ZiXx23VaPWTqAaDyWxxS2VqoVBsMpqYDCaDwYDlV6eRHzkCq1LRQ5urVj+AX76u"+
                                 "dFkWbt6ykmlzcBlz8c/srm2TW+LdAbfLHPJbX3+/dPcbxuzPwm8cCb91NPrOp7F3/5J871jq/c96"+
                                 "P/x7376PB/Lx0Z4eP4NB8weCN1F1eqvVowBUvlCnUVNoNCqVKuDzhXzujueKZ845u2x9+cIVxfMy"+
                                 "C+cuyZ+98GzG3EJ0Dw7Nw298Io/NEXncuvz8mvnr6rY8Z3ztQ9eet9173ut48YPgS9mhlw9GX/2w"+
                                 "63eHYzveTJ0735FKuQiEuiTsObF4t0FvtFjccrlaLBBq1CoSedLEIj6JSHt2J+6uO76ZPb8Azf42"+
                                 "Y9bpabNPZdxxGs3OQ3OK0NzyOxaVvXygsKy85tkXitA95A1PK3buN257wbztVftv9rU/85pr+wHP"+
                                 "jtf921/3P/lqoLTalUw6oFh7enqnUKFOHGKJSiQUKxUKqCdAFfBa66pr8/LIX+Ww/vpX+u5X6h7f"+
                                 "jF9/P27BvHMZ0/LQjJNo5tdoRsH0uYVzln0zY34lmk9d/qhg0075Q0/LHnlGvXG77rFnTY/vMm9+"+
                                 "3v7ILvuW31qJLbZoxFRd/S9UyGGDTmsRCmRCgUSpkBNuGrmxsaK0tKmxkirGsegEUjODRJQ0NUnO"+
                                 "5XOy/0Dft5/41FNVS1dUoJnlKKMIoVI0o+zetcQNvxKsepy/ZrNo9RZx1lb5uicU65/UrNqs2bRL"+
                                 "w+HZO7ya+vrGvr4+FI/HdFqdQq7jtYqFArFGoWhsbMTj8efLyirO48txpecv4GoqK+jEBnUbU69m"+
                                 "apRsPpcr5IkYVHExTn7qjPkvx7Qvvcpf9QAF3dkwfRYRZRCmL266N6tl8QPMJQ/zMjcK7s0SPfGc"+
                                 "VCpzWC2qZhKlp6cHJRJxrVorFEi5HKFELFUqlCUlJeDktpt2+dJkXRIbSftf2//HIx8XFRQ0ERpo"+
                                 "TYTmxkpCdTGhupxJrRTxiK1cVnOLrKXFXtvgzivw7Ms2Lchqm3k3J2MWGc1tQNMJW5+lyeVWjVrM"+
                                 "ZHGhd0DJZEKhVDIYHCqVwWZxDFq9RCJR3DSPxwPn48eP55w4QWlp6U2nq6qrNXpDIhZzOh0qmYJB"+
                                 "Z5eX4nH5+eVFBZVlBfUVRRJebcArScQcLq9fa4hT2YmPv3Q9tMXw9gdSrd4sFfPVat1kDqdSKYVc"+
                                 "SaEwauuaKGSKy+Hg83l0OhOKB/AKCwuJRKJMJmvlcmvr6mClhDGpnh6LzeZyOmEbZrOZpWVl3+R+"+
                                 "fe7bb4vz8yvx50nEplYWUyJkG7WCSBAoWqNRf7s7ZLWbmUwmrPCTWqFdUimVFRUX6glEhUINOsDD"+
                                 "R48ezc7OzsnJgZVa0tZGbG6GXQiyAJpK2H11Oh2dwYDww13gVFNTU1BYeDI392+fH//bsWNfHD9+"+
                                 "7uyZmupaMhkad55YLDYaVO1OC3QsHA4XNlBARJFIxOl0EonNRUXFeHyFVqth3TQoHpVaLZfLjUZj"+
                                 "IpmAlgM6LEC12+0Qb/A8OABmhLUTziKRCIYQSSRIw9zc3MOHDx86eCgn50T1hSoajc7j8VpbuUql"+
                                 "Ep4B9wDiv3pE6FdgdpDv9XqBC9z47549EIDWwqLRaAAPDLwNz4MPoAUAKiaTSavVAkuhUAiMy8rK"+
                                 "zp49i8PhautqYRWEeMFwSJRgMDj5Pnfbd5JbD8AYqVQKygASiAMk4MGPMB3MBSImd2WjEWiBJ8AH"+
                                 "dDq9oqICgCkUyMUWoAV6pmb7aahTua2GRNTpQDd4CLwCjS0YtHagG7DBbgFD+kDUYUOtra0ForcE"+
                                 "/ARUaNChrZkSBMRBKACAUOhtp1DhR/gKggAVHoMzF3ZN/uS+CXkHUfg5qDDG5/NBEoImSEAQOhUk"+
                                 "YAMXkBDABnhAaQE5cAk4A0ofDCICA/8zlD9B661hMDVgAHcI6lRiJxKJKbnAAFCBE0gElwI/wL4V"+
                                 "zp+pdWoYxBKso6MD/AkGDOAaDMCmsgzcAGUNnIDKz3x//bEkB2CI6NT/BFM8prwNF11dXT9WflOz"+
                                 "/RMs602PmSaSxwAAAABJRU5ErkJggg==")),0,$$.Length)))))
#endregion
#~~< btnDCPromo >~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
$btnDCPromo = New-Object System.Windows.Forms.Button
$btnDCPromo.FlatStyle = [System.Windows.Forms.FlatStyle]::System
$btnDCPromo.Location = New-Object System.Drawing.Point(376, 74)
$btnDCPromo.Size = New-Object System.Drawing.Size(162, 23)
$btnDCPromo.TabIndex = 16
$btnDCPromo.Text = $TextStrings.DCPButton
$btnDCPromo.UseVisualStyleBackColor = $true
$btnDCPromo.Enabled = $false
$btnDCPromo.add_Click({BtnDCPromoClick($btnDCPromo)})
#~~< Button1 >~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
$Button1 = New-Object System.Windows.Forms.Button
$Button1.FlatStyle = [System.Windows.Forms.FlatStyle]::System
$Button1.Location = New-Object System.Drawing.Point(69, 307)
$Button1.Size = New-Object System.Drawing.Size(159, 23)
$Button1.TabIndex = 17
$Button1.Text = $TextStrings.ServicesButton
$Button1.UseVisualStyleBackColor = $true
$Button1.add_Click({BtnServicesClick($Button1)})
#~~< btnRoles >~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
$btnRoles = New-Object System.Windows.Forms.Button
$btnRoles.FlatStyle = [System.Windows.Forms.FlatStyle]::System
$btnRoles.Location = New-Object System.Drawing.Point(69, 191)
$btnRoles.Size = New-Object System.Drawing.Size(159, 23)
$btnRoles.TabIndex = 17
$btnRoles.Text = $TextStrings.RolesButton
$btnRoles.UseVisualStyleBackColor = $true
$btnRoles.add_Click({BtnRolesClick($btnRoles)})
#~~< btnCName >~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
$btnCName = New-Object System.Windows.Forms.Button
$btnCName.FlatStyle = [System.Windows.Forms.FlatStyle]::System
$btnCName.Location = New-Object System.Drawing.Point(69, 74)
$btnCName.Size = New-Object System.Drawing.Size(159, 23)
$btnCName.TabIndex = 18
$btnCName.Text = $TextStrings.NameDomainButton
$btnCName.UseVisualStyleBackColor = $true
$btnCName.add_Click({BtnCNameClick($btnCName)})
#~~< lblDomain2 >~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
$lblDomain2 = New-Object System.Windows.Forms.Label
$lblDomain2.Font = New-Object System.Drawing.Font("Tahoma", 8.25, [System.Drawing.FontStyle]::Regular, [System.Drawing.GraphicsUnit]::Point, ([System.Byte](0)))
$lblDomain2.Location = New-Object System.Drawing.Point(376, 40)
$lblDomain2.Size = New-Object System.Drawing.Size(248, 31)
$lblDomain2.TabIndex = 13
$lblDomain2.Text = $TextStrings.DCPDescription
#~~< Label2 >~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
$Label2 = New-Object System.Windows.Forms.Label
$Label2.Font = New-Object System.Drawing.Font("Tahoma", 8.25, [System.Drawing.FontStyle]::Regular, [System.Drawing.GraphicsUnit]::Point, ([System.Byte](0)))
$Label2.Location = New-Object System.Drawing.Point(69, 261)
$Label2.Size = New-Object System.Drawing.Size(236, 31)
$Label2.TabIndex = 14
$Label2.Text = $TextStrings.ServicesDescription
#~~< lblRole2 >~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
$lblRole2 = New-Object System.Windows.Forms.Label
$lblRole2.Font = New-Object System.Drawing.Font("Tahoma", 8.25, [System.Drawing.FontStyle]::Regular, [System.Drawing.GraphicsUnit]::Point, ([System.Byte](0)))
$lblRole2.Location = New-Object System.Drawing.Point(69, 146)
$lblRole2.Size = New-Object System.Drawing.Size(242, 29)
$lblRole2.TabIndex = 14
$lblRole2.Text = $TextStrings.RolesDescription
#~~< lblcomputer2 >~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
$lblcomputer2 = New-Object System.Windows.Forms.Label
$lblcomputer2.Font = New-Object System.Drawing.Font("Tahoma", 8.25, [System.Drawing.FontStyle]::Regular, [System.Drawing.GraphicsUnit]::Point, ([System.Byte](0)))
$lblcomputer2.Location = New-Object System.Drawing.Point(69, 38)
$lblcomputer2.Size = New-Object System.Drawing.Size(242, 31)
$lblcomputer2.TabIndex = 15
$lblcomputer2.Text = $TextStrings.NameDomainDescription
#~~< Label1 >~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
$Label1 = New-Object System.Windows.Forms.Label
$Label1.Font = New-Object System.Drawing.Font("Tahoma", 8.25, [System.Drawing.FontStyle]::Bold, [System.Drawing.GraphicsUnit]::Point, ([System.Byte](0)))
$Label1.Location = New-Object System.Drawing.Point(69, 245)
$Label1.Size = New-Object System.Drawing.Size(171, 16)
$Label1.TabIndex = 11
$Label1.Text = $TextStrings.ServicesTitle
#~~< lblDomain1 >~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
$lblDomain1 = New-Object System.Windows.Forms.Label
$lblDomain1.Font = New-Object System.Drawing.Font("Tahoma", 8.25, [System.Drawing.FontStyle]::Bold, [System.Drawing.GraphicsUnit]::Point, ([System.Byte](0)))
$lblDomain1.Location = New-Object System.Drawing.Point(376, 24)
$lblDomain1.Size = New-Object System.Drawing.Size(171, 16)
$lblDomain1.TabIndex = 10
$lblDomain1.Text = $TextStrings.DCTitle
#~~< lblRole1 >~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
$lblRole1 = New-Object System.Windows.Forms.Label
$lblRole1.Font = New-Object System.Drawing.Font("Tahoma", 8.25, [System.Drawing.FontStyle]::Bold, [System.Drawing.GraphicsUnit]::Point, ([System.Byte](0)))
$lblRole1.Location = New-Object System.Drawing.Point(69, 130)
$lblRole1.Size = New-Object System.Drawing.Size(171, 16)
$lblRole1.TabIndex = 11
$lblRole1.Text = $TextStrings.RolesTitle
#~~< PictureBox1 >~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
$PictureBox1 = New-Object System.Windows.Forms.PictureBox
$PictureBox1.Location = New-Object System.Drawing.Point(22, 245)
$PictureBox1.Size = New-Object System.Drawing.Size(41, 45)
$PictureBox1.TabIndex = 7
$PictureBox1.TabStop = $false
$PictureBox1.Text = ""
#region$PictureBox1.Image = ([System.Drawing.Image](...)
$PictureBox1.Image = ([System.Drawing.Image]([System.Drawing.Image]::FromStream((New-Object System.IO.MemoryStream(($$ = [System.Convert]::FromBase64String(
"iVBORw0KGgoAAAANSUhEUgAAACgAAAAoCAYAAACM/rhtAAAAAXNSR0IArs4c6QAAAARnQU1BAACx"+
                                 "jwv8YQUAAAAgY0hSTQAAeiYAAICEAAD6AAAAgOgAAHUwAADqYAAAOpgAABdwnLpRPAAAAAlwSFlz"+
                                 "AAAOwQAADsEBuJFr7QAAC6lJREFUWEe9mHlQlHeax3FqtvaPTXZrM7F2p7Z2a1NbtX9s1WxNVSZO"+
                                 "UpMd3UQnceOBcXSNGRMNagwOCcQr0ajxxlsEg6iAiCiC3Ec3TXM0fdI0dzfdTXMjAsophyLHZ59u"+
                                 "IqUmSGdnMlQ9RVf1y/N+3uf5/r7P8zLL5XLh8wN//vr5F3z6Bwd9nK56n5/8ZJbPiy+84LNr62c+"+
                                 "UZcu/sBMXlzuBnxWNLS2U1JVw4EjRz3XOVz16MttqEpc5JbUkVfaRL6xjKXLlk/laWzvxlBmfWbe"+
                                 "me776HufZ13YOzBEV+8A+rIasnLUKNUabqZmoDZXoSiuJ7+shcLKNgotdg4EH/cA2Zs7aO7ux9rS"+
                                 "TYWzkZTMnD8JdFrAMmcz1ro2srVWMous5OlLUWgMlDqbqJGbF1Tcpqi6A53tLoaaTszONgpKbdjq"+
                                 "m3HcGcXSMkF56wMMlU5OhV34f0NOC5iq0nAlQ4vC4CDH5G5nIwXlLWgq26Vqk2C6mi6Mzj6KXYOU"+
                                 "NDzA0vyQitYRym6B8FPZCddVBhYtW/HnB8zTmYnNKPSA5UkrCyra0FR1oLXeRW/vweDo5XKykqT8"+
                                 "cixNDyltGafcDdY+CVZ9F6ruPORYRAzPP/+3fx7AHI2RNIXak6zOfThq73haqanuRGvr8oAZnf0U"+
                                 "1w1irh8SLdoxyTVuMCksVd+C2bqhpg/s/eNoS6tISM305Cyw2MjIL/5BsFMtdrYJQFWDCN9BfnEZ"+
                                 "jlt9FEm1tNJGvVTLWHtPwIYoaZRWSpjq7mFwSotd3ZS23sd6dwJbzySY4x44h6D2Prjuj2KqrqHE"+
                                 "2UBTTz/aChsnQsK9hvQAOpraKW/qkmq1f1stdxt7BaxPwAa+BRuRqg2SW2xHqSuV35XkW2rEZmrk"+
                                 "cxVKYyVFdjkgg2MCBXUPoWEMGickxsZpHBmhEanqwCAp2ZNd8iY8gEqzlULbHdFXFzoBM0gbjSL8"+
                                 "4vr7UrER0deYHIxWFNpiCsudxGUWcDQ8hj1HQzkcGkl4fBaZJitFtnoyisxYpVJNAtYkQG6oBol6"+
                                 "iToJl0SeVHFT0BfeA0YnpBN6JQWNiMdUN4xZTmRJ0+ik8NsmBK6ZXDHjGzlaVq3dwKxZs55IvnjZ"+
                                 "73l93nxORieSW1VHSqEJa2+/B+xpuIK6Jj4K3OkVnGfKPSrzsdALXM4oEv8aF01NYBHhF7eCynpH"+
                                 "7EbF5bRc/nvB2zMmDruSREZZLeeTc7BLW90Vc0ethHX4AZu2750xx+OtnwKsdInROkR7zZAvfcmV"+
                                 "/qjFbMMSlSQWlTD/7UVsDtw2Y3JzdT1RmYVcUluI1BRjEbAyiWoJ28NRYlOyZ8zxvYAGWzM5Yh8q"+
                                 "N5hUr0BsQ1HXQ0yOhlORcT8o6etz5xNvdrI3Nh2jHBCDwLnDJJFqsLApYIvX+XysLZ0k5usodDSi"+
                                 "uwOF4mU6sQu92EWytCpFTqiff6DXCR89fVKJkzNZxeR293ngjBJ6N+TgMOnmStK1JV7l9Eky16Pt"+
                                 "nkAj5qrrdQMOE6nQou7oJUZOZKzGzCuv/darZI+35qa+mjhLI2lSgLgyGyFZBegnJjyQblidgB67"+
                                 "cGXGvD4JJgfGAXkyMVbzA9B29BB+NQmlO7HeQrx43iuv/teMiZ72NGVlHamOdrJu93BDFo3kolL0"+
                                 "D8c8gO7QDN/3KqdPaJKKTFcT5sH7HjGb5CmNYqbu38my0yWaKln5h4+8SvY4pK72FoqGTtR9Q5hG"+
                                 "xzCPPJyEG59A0dHFN3k6r3L6BO3cz7rNW9mw7WsSaxumntCdTNXSRrKpmhMRM7fi6QpaWu6irm/H"+
                                 "IFXTimkXjYt8ZLIEJ2Z5BfadhfWbqymEqrRTYnYDah+MkCIWc11j4WcvzvY6sVPkYW7owNjeS56M"+
                                 "PdUgKPsl+sYJOHjG6zxPGHWq2kBIZpG0dlIjj6xB5XCJ8bqISc/1KrG9UeZ68x0sDbfI7xkhXVwh"+
                                 "VXbDZLGuONkkNm3f7VWeJyvY3k/XwAOaxiZP2RMh+lGay8myNpMmxhsZmzDtDVo6u6kUOIO9Ecud"+
                                 "ARLE8K/LAI5zQqwdrljHSddbyVHnew3pmSTJeptsIfc9VXsE9/hn3fAwKoFU2VvROVtkx6tGYyqf"+
                                 "uolNqlZ7u0s26zZMAldxu49rjgkuV0FUOVwshQtmiBCnjjCOE5tlJCkrVxbhRrJMTqIz9NMCewCD"+
                                 "w2M5nJDq0d+j1j4C1EnLNSLugqFRdC23Pdoqst9CVdGIqrye3PIGcisa0FkbsDXeoqhxiIsy385L"+
                                 "sm90EFY0wdnCcULyxzidO8LJnEE27DxOTJISs/yNqaoetcnGruOXvhdyahZv3HmQ69UOzos5bw29"+
                                 "RHJzG/kjInDxyGwx8HSZMsmipfTWUTLt7cTLZhydpiZG5m6ysYZs+yCR5jEPzJm8UU6qHnBcMcix"+
                                 "rHsEnMzGb9cFvoyq5ONDNwjaE8x5WdHyZEW7lqnl3LUc1m+ffK19OqYAj4RcYPFqP+b+bhFz5y9k"+
                                 "9adfEmNtJVVm8s0WiHdrSXQUI1M/UgzzQskER9MdnFB0ckaqc8oNlD1AcEYvh1PvcvDmbfYntuL3"+
                                 "dRzB8sA3c0zsOBTG7hMRRCWpSVQauCbbU3RSvjykkZ1n4tkdmjg94NPkfv6fs/+qgmu1EyLuSS25"+
                                 "dRQuIg2VKp1Q9PLxlq/YE5HFkbQuD9C++Gb2xNXx1RUnO6OtbD1vZvMXh0jOMRKfrSdJNpzU/DJu"+
                                 "qswCXCyLr54Mea1VVtySJcLF4agsgg5Hc+hyATvDUj2w07522jvvobg1OqWnMM0EIXljAjbkqdLB"+
                                 "5A4ilHVE5Lay64qDL6Or2X6xnK0RJXx+zsBnZ7UEnNHwQVCwzNxEEqWCaYXlKA02SmyiX30FaXnF"+
                                 "FFU2Yajro6RFNviGHrKNdkpdtzlyOYN//8Wc6QGTjVapVBtnC6R9OfcFoJL//fQoH319jS1SmV0x"+
                                 "dnZcqpQqlRAUpufD3XEs23SIdz7cwYZDqWw8lM76g2n4rt/LNmltlk7eYUpdVNS2cuSbq6zauIXV"+
                                 "/l8QeCCMDIMd291RHH0TVIuZl96TDqUUsnz9F9MDBsub19I/fILfvutsDTfyxtL3mDf/LRa/uxLf"+
                                 "NRvZfCqPgNP5+B9XsSroNAt9l7NwyTI+8NvIG7/fwPJPz/K79wJ4a+kKLsi8zy62USWz+eTF6/zy"+
                                 "1blPaC04OgNdQy9ld8cpvjOGum2QLy8ms2jtlukB3f1/Z8m7LF/9IQuWrOCXL8+ZSnoq6hprdsfi"+
                                 "tz+JdXsTWOn/FQsX+059v3ajP2/5rmTBwkVkqQrIkJey8rYeatu6pXJbv3MQQq7nklbairphmMy6"+
                                 "AT45HMnCNYH84z//27MBHz84X+3dP5X4RnoOvh9tkQoFMn/FZhatWsvfPPfcEzd+cfZshoZHsNga"+
                                 "qJKZXD8wTkvXIO9/sv07gLklDjLL26WtpUQbmvHdtIef/vSvnn1IZnpn/WDdehZJWxfLv91efuXX"+
                                 "/OtLL33nxmppa60cNmf/KK6eUZq6H3L2Shrvrgt64toMUx03i9s4l1PPkQQzC1Z/hs+3b47P/Pfb"+
                                 "TJAzfX/uRgGKig6UVd1klXWiKO8kq6SV03G5HItK41KaljS9gxRjEyEZtRyIr2LdvqvMX7l56gF+"+
                                 "VMCDkUo2fX2R97eF8MdjCQTHlxGSZiMyt46oHBvRyirOZ1ZxIM7C7ssWsaligs4VsfSTI7zh++Gf"+
                                 "1uKZquf+/rU3l/CqxC/mzOO9z0+yYksYgWcVbAtX8/H+GLaHqwgMUfDH0wo2BKcTcLaQHZFVLAkI"+
                                 "5TfvrPnxAR9/iIUrN4pP7mONzOSPj6bgfzQZv4OJLAs8x5tr9/Garz+/XbWDdzaf5TdL1vPC7J//"+
                                 "ZQHdsM/93d+zO0JJwCkF/idVzHt/J796+wPmLFjBz/7hn/jV3EX8+q3VzP75v/xlNPh9Mli36zxL"+
                                 "A0JYHHCOOf+zdsbF9Uc9JN8H+J+vvsk833W8vtSPl/7j5RkB/w/wfmsrfLEf+gAAAABJRU5ErkJg"+
                                 "gg==")),0,$$.Length)))))
#endregion
#~~< pboxDomain >~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
$pboxDomain = New-Object System.Windows.Forms.PictureBox
$pboxDomain.Location = New-Object System.Drawing.Point(329, 24)
$pboxDomain.Size = New-Object System.Drawing.Size(41, 45)
$pboxDomain.TabIndex = 8
$pboxDomain.TabStop = $false
$pboxDomain.Text = ""
#region$pboxDomain.Image = ([System.Drawing.Image](...)
$pboxDomain.Image = ([System.Drawing.Image]([System.Drawing.Image]::FromStream((New-Object System.IO.MemoryStream(($$ = [System.Convert]::FromBase64String(
"iVBORw0KGgoAAAANSUhEUgAAACMAAAApCAIAAAAwIAdoAAAAAXNSR0IArs4c6QAAAARnQU1BAACx"+
                                 "jwv8YQUAAAAgY0hSTQAAeiYAAICEAAD6AAAAgOgAAHUwAADqYAAAOpgAABdwnLpRPAAACzxJREFU"+
                                 "WEed1wlQG9cZAGDSppO2004606bT6TTTzqQ5Gl/Yjo8kHdu5WrepJ64dx42ND2x8YMc2vsBcjrHN"+
                                 "ZWPAHOIUQkIgBLLELUAIBBKHECCBrl1pda7u1YWEBDrwdjGO6yMBu2/eaEar/+2n/71/3+6+BIJg"+
                                 "xDPtRz/+2Usv/xKNQNH7YaxHYB0NRUSEn418gSOY9ERTKGUSyeRwk2ioQTREE/NbZUKWUsJVgwK1"+
                                 "QgaCqqfjn/t7xBORgFQipMuFpUZpiV5cpBUXaCUF2qk8/eQd9Vg2wMsX9pSMdeWNdeULuVUSPgUQ"+
                                 "NqvlHI1iAlTolxUfkxSOUc4NpSjbNzMRmFX5vXLftMTnFk07+G4b127osGrpRogCg3idDKcV56jG"+
                                 "rwFDcVOsmPHW6OF7scP0U+PdSb3k6B8iFyS5XCIR0QQ9VzzOgfkwHJzTzvnVfq/M55X4vOIZt8jj"+
                                 "HJt2jLgRrsvW57Cw7ZZOm6HVqqebdVSjiqhXEmCwyqiq1qhJbMKHSqVyAQOAfgZD0NkJAMCiHaFQ"+
                                 "QLyealL2BwNtFwER3qTtcJh50+5RNzLsRIacCM+N8FzIoNs+6EIGnNYHkqkLwVKEmyx6mllLNWnq"+
                                 "jBqKVknSqWu6Ct6FYVgukw20tlL3R7VHRXHqKDKxeEEyWPyY1F4TPdKTzqSeaCF+3Ubaz2VeHuOm"+
                                 "gWKcRknUQbV6DdWgaTRqGg2aBoOGhnWTrsGsbXzwSTWoyEpZOWJpMmnJA6Q3VWZkRCjk1dffi4rq"+
                                 "2LZlJDlZyOEoIeihNNaX4fdNGvUdUkFBb8uF5uo9DaX/pON3tdXs6m74aqjrrAYsNsD1sI6iUxG1"+
                                 "UJUKKAFlRaC4QAWUqeR4M0y1W5uNWnI3flsDS1bPqIONRllPD5SSxE5JHmKxNFptBGye4fZUC9gZ"+
                                 "M95xi7FTKSGIRtJ5zFPN1Z/X5m8iZK4sv/YGLvF1ws13O4hfgMIsBGF4Pd0zHnbAx5nzdt0PcUtL"+
                                 "UqbGS51Iq8tVm3nhzyuS93905QsKi2G2mDtqSFUlONHEhEKhiIA0zsHe2tbqnXx2Kr8nZaQnmce8"+
                                 "2EM/zMBvJ+e9R8heUZ72ZlHC7++c/VXG8VcyjrxcfOm1ptK/aRUVVnNTaJYzH+Tevh0vEeEQUyOz"+
                                 "MZ7bSmIAstWXtq0/9WEpvphMbRjh8xeLApMc4vEOnazSAFToFAyZoGJyKGeEdbmtZmdt3gb8jbdL"+
                                 "Uv5YcPl3+ed/kxP7i4yjP70eFXHz4KtaZTsgxzuRtoCfTWvImhSWM+nxAvoBt4bnsN4ndhO3XPgo"+
                                 "Iz9rTDD2v9rDJNFYi1lTO2uno2g4HDIF/KpZvxSxdConC0Z7ztJw23BJr2ed+HlmzCuZR19JP/Ry"+
                                 "zsnX7GbhohT092m1+L7Wq/x7h1FHmdsxLBzvZTZWVRDKhkaGH7+2FnIS8ZthJcltagzMqsNBQyik"+
                                 "D4W04bBifn4yEBj0utvtpvI+2u7Kq39KP/ST1D0RmTG/dliEEjF+zse+HxxqrDo5RDniUxeh/nYU"+
                                 "pYID52uKUzl9fY+yeXg9fSfVuM20UNAUDsKhgDYUUISCU6HwaCg8Mj/fj6Ls+XBbKFitVSR0kjZd"+
                                 "3/eq2yEB5SSPq7O/6xa7bOec9i46S0dDFAXvZHlmcj+HLZNhm+QT7bucIKLHfC8wpw3MgqEgEAwB"+
                                 "4ZA4FBSEQgPhUHc41BoO14fnq1G0yQGdGmfu9frNwrHSznvJrKIdqK0U9TWEvXiAe/r60T9wuabv"+
                                 "3ZC+kxRVPkeXXVfu1Fe6TDUehDY70zUf5oXnOfPz7PlQSyhIDsyVzfnu6kVHId7X7oC6tjyWVfnV"+
                                 "jOI2Ok0OIIXSwbNl2bvykzdie8TSUllodtJra3HBOBuUZpMn2JQpiOaW114S8NfdRxvm5ymBYIXf"+
                                 "f8cwFS3t2TXIwTHydyDCNNRdhXqLpZyTpNw9NHoWo+Bj7NJZWiqd84zO2Ns81jq3sdipuYlASVbg"+
                                 "kkkaZ5Scs4AXvbb0YOguihJg2dH6/LUtRV8hYymoqwydLVEPxuCubm+l35SKqZ2EjT+4ly9WhEFR"+
                                 "6vcMe+1NHgvRrc9zaG/YoVSHKgWBkm1AkmkyTss/ouFH6aXHm8o/JadsmZGloa5i1HNbNxSdl/Bx"+
                                 "M+0mKK22IjR2yYplJL0S53cPem10txnvhO841Wl2KBlRJiNgkgVIMIvP6yfOSFj7qHe21CT91S1K"+
                                 "QR15qPW6YuBgVea/qKREwTBODdY5THXM/DeXk8Di2WneDEJzGyuduhy7+podwhJKtCquWOXxJnGc"+
                                 "YvgYrfDTmtStBu451JaF2tKAvqiqrB1drbdGB3MoNdfHBQSnhczMfWM5SVE46xrwWGluE1Z+t+zq"+
                                 "b+1QEqJItILxFtkFq+RcW+V23Pl1UFcMak5HHdcV/Xvx6Z81NdzUaZoU4nIa5ebEWPXzSUCBz83x"+
                                 "2OqnDaVObZZdnfpg9q7YgMuYNNSyr+nGTh0zEQXTUPNV48juwsRN1fjLgJTsm2bpIIJBR7MY6E5z"+
                                 "zXPkBOT7Xb1ea53LWOLSYdJVB5SIgAlY+clGjxHT/o1CjSjcjcoKDLydeRd+20BM7ecUOZC2+/ND"+
                                 "MERw2uh2Cx1Wk5aXYCBvxtkzbSG7DYVObbpdk4KokuyKeIs8rg2/B2xPR33s8GQV1Hy+OGFl6bWV"+
                                 "chl218FPO9rRUD+sqnYizdid0GWlMPOWrojRZh2Y63N2e8w1Ln2hXZ1iV6ViU+eAEkS90aPUU6iF"+
                                 "5hy43Zl1KCt2w93Et5nlGwxQuVxW67K3h2Z7YRVJCdQPDuDsCIV59+0lK2Ki2ajEBdxd0+YqJ1YL"+
                                 "qlTHwjolwVMXumsOurg5kvr4nNiPb5xeVZ2xqq1k1VDdZgeMB4GaB3cNNiaJJoiNdWkmI3EZSTzR"+
                                 "rBZdc5nqvRaaXf2gEMB4G3gZGI7tJu5n4k6kHHuvKntzf92Hw5T3+dT1QvpGJ1wpkZIeSWIRqYWe"+
                                 "ZTGRl5fqy3bcvvKWS1eoFZ72Ga/ZlAkeXbJScK4ybyuh+LM28t8FTduFjG0TjE3jjZFC2nonXPG4"+
                                 "tLhOM9M0Zv5bS8yeVSZqLr3z+eH9kbmp68hFn6j4MSruHlh0Chad47d/zW//zyTzS3n3PyQdW0T0"+
                                 "jeMNq8bvrX1c0oJ4xEyzGmnL1J5CCU0I2LnpX8ZGR34TE3n+ZOSN+LW5qWtZtZ/01m5VsbZIWbsV"+
                                 "vV8oez6XtG2doK0bo64Yp61+SnqYk6uRU75yyadlmYTNJHY1FV88/cHpmLWnjkRi/VJsZHrCOmbl"+
                                 "evLdTWDbRqhvu4iBrdAaAfWd8caVz0p9rHz+SGF/xZLS4r8w2Xx8bhOnk3Dtyvbzse9j+S32hLOb"+
                                 "yrM2kHLWQ8z3BQ3rJqjvTFBXPCu1NmX39+U+l7ToYZMpGu+tJVwtyD60KMWdWHcmZu2ZY2sLr6+r"+
                                 "ylwzUP0XPmUhJznwsPawdcJmTzBSKhWVsXDvLDV7T/2mUmnFk6MqpTQvIwqTzhxf6NgqHo1ac/TA"+
                                 "mrhjkQXfvgcriYonJbuZhlhrReyKF5AWQ9VqeHCghVF3PTd9H7ZsJw+vOXZgTfT+1Qf2rj57fDMk"+
                                 "q8Ukj7vrfnBgIScbDZOsJgCCHrzSfF978p3wyQjsgU2jMYwMdgh4tLjYbSePbI7et/rg3lVnj29U"+
                                 "y2tlEgJipPjcrbAKk5p16sGHb07/h/RoiNHiGR5g9HVWf5u4+1DUxgUJoExOcgyaUVjTbtAQEUSi"+
                                 "VEI/lM3i8aVyemokAAKyqcE6UuY3R1YBwpKpqQ4QNIIgrNf0qtXqpZkXk7BolUonlYpaGFSZhCeX"+
                                 "jS179scDXiCnR8OUEKxQal+IwYL/CyWIY6Mxla4fAAAAAElFTkSuQmCC")),0,$$.Length)))))
#endregion
#~~< pboxRole >~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
$pboxRole = New-Object System.Windows.Forms.PictureBox
$pboxRole.Location = New-Object System.Drawing.Point(22, 130)
$pboxRole.Size = New-Object System.Drawing.Size(41, 45)
$pboxRole.TabIndex = 7
$pboxRole.TabStop = $false
$pboxRole.Text = ""
#region$pboxRole.Image = ([System.Drawing.Image](...)
$pboxRole.Image = ([System.Drawing.Image]([System.Drawing.Image]::FromStream((New-Object System.IO.MemoryStream(($$ = [System.Convert]::FromBase64String(
"iVBORw0KGgoAAAANSUhEUgAAACcAAAAlCAIAAABOCWdpAAAAAXNSR0IArs4c6QAAAARnQU1BAACx"+
                                 "jwv8YQUAAAAgY0hSTQAAeiYAAICEAAD6AAAAgOgAAHUwAADqYAAAOpgAABdwnLpRPAAAAAlwSFlz"+
                                 "AAAOwQAADsEBuJFr7QAACbJJREFUWEe9l9lTmlkaxnv+hvlL5n5u5mYupqZqqru6Op3VGDURFUT2"+
                                 "fZV9XwRUQEA2ERAVFRA3EBcQ3NkENcZoNC5RXBA1zJfJdCqNJiZ90adOUVTxFb/zvM/7Hh7+kk6n"+
                                 "f/jzF0D989cPnyNTqdRUODw+FQ6Oh4LjwdGxgN8/7PP7B3yD3b29FrPV7nS63D39A57BwcEw8OTE"+
                                 "BPA6Nzc3E43GZmeXlpe/UcDvqIlEohYKA3OlIDC4oqKi/NnT8vJnXIEgkspYegd4Ehmdx6VwOCQm"+
                                 "k9BIx1GpwMZSKGgSCU2i4KlU4GR/kCpRKLuCkxiOBE5lYklUeYt6ODSZ3t0zdvdxxJJG/gcqkcHA"+
                                 "UmlIEglOIDRgMBA0shaBqIXBHE7Hyso3cUu16vVtxWJxL3eUfbO9vr2d2nw9nc4MLaW0zl6uRELj"+
                                 "ciksJlMoZkvkjUIJgcFCkCmByPLo1EKL3tzv9SdSmUwmeye5lMoUCg/Ocru5d5tvd9MvN4Daji8n"+
                                 "/dFFgMoWSRp5PDKLTeMIkQQqBImvaSDxZAat2cGTNB2fFQ5z+Z3D49XNtzNLK2tr619hl1JZIuF5"+
                                 "8Wr39Gh9903i5cZUPD06nxyMLulcH7RSORwEkQ6BI9BkcgMG/aiqejASf1wJ/vs//mmw2t8Xi7l8"+
                                 "fi93tnWcz2zsfQe1RaPJFfKJ1cziSnomkQouLvtnlyYyG52jkwJ5E0AFowgYMonEYmKoVDiJPry0"+
                                 "ZXZ5+E0t04up/ZP8y73j9Z3j7O7R4qv9lewroNy3sku1soUCraEdh8MSiUQSvbFRIJZqDXpnD1nY"+
                                 "xOYLgfrXwOFQNIHMYqFIJLxAaQzEZzIv4692Yms70exWavvw8vL68up6Zv3tdHw9mbpdcClV3tK6"+
                                 "mFkNxRZ6/UGh1oJlCCEEBpQs+KnsBZ3D40jFBDqlHkWkcXlYCpWiNJnH5t3heH840R9JrL7ZLxaB"+
                                 "Mn9YyTcHPXMb8/Hs+traTfINrQKRs6efyeTiCJRacMOTp5XPXoDRFPbjaihbIBbKZEyBEFSPbeRx"+
                                 "4AQqv8Ov9kacocXllzvHZ/mPvPN84eT04vT8whVb7wwmk/Hk3VSlWh1dTLo8Q2qzgyZRw6l8FF2A"+
                                 "4zXdr4YBPSxSKlh8fg0Ux5EI6pBYSV9U2j2eL1x95AE69w5P9w9Pry6vrq6uE1sHYt/S0OR8NlM6"+
                                 "xaVaeWJxm9HKYnExOCIIDKsAQWqgKBSF+/BFPVcolTY3k5kMKIIkVimwRBKKpxX1TpzmLwDi0fH5"+
                                 "24Nc/uKyULgE3pycFt4Xr23hdZUvmorHS+SWUmUKRf9QwGhzcWStDVQ+mMitJ/EaaJJ7lRDgRmzS"+
                                 "aNBEMhSBk7W2sgT8Ojie5Qz4oumz80Iudw7wDo/P9j6wr05PC2en+df7OcnQknNoskRuKZUvlfln"+
                                 "ogyhuBYMqQJV19ZBMAQiS6Kox9PECmWzXochUZB4CkAVyOU0NhuEpJEsgVh2q3BR2Np5d3V9DTi6"+
                                 "vXuUO8lfXFwW318H13al3vnIVGTls9uylKrSao+KxdjGa+9kxOEbdHp8rsGhoamJjn5fs1bfrNMJ"+
                                 "JCIsmSlTt0pUKpFCgcJgYVKHrH8aKDIAfrV9sH94cvX+ev/dydbuEVBw4MLSBFb0PePJxNKnOpdS"+
                                 "xU3KQHyla2jM5vG6hsd8E9Pjcwsz6RXX0IjWZFYbjVqLuQaKZgnESo1GplY3q5Q1aCq2IxiKr51f"+
                                 "FPL5wlm+sPH64Ch39v8WKxYDqS2pd8EfmvrUVDcmhyfgCOQIHLGuAU6k0QRNihaDyerqFbVqm9v0"+
                                 "eqtVZzGLFEoinWOwuTrdXofHjyWz4FI7xz62nzt7u398cHhyUbj8hNw5OnXOrKqG0w5/KJ5IfJR7"+
                                 "g8rn8SVKAoVVA8NVI8hgDA2CZ6AbRY+qoTJVi9nhMHZ2ai0WWauaSGM2oHBEOpsnEEGB31j7lHc2"+
                                 "e3n52xQVi9fX76OrO9rxdLN/Qap3jE8EvlhhRava6nDjSYx7D57+698//nLvQWUVCENlP61FAJbb"+
                                 "unssTqfJbm+32QDdbWazzmIxOZ1ylRzKatGMZ8+BDvrfWt480E1kpL7lJpvPYTFnVn4XM27Mq0BM"+
                                 "YwrAMCwIhm8gsaEUHpTCRzIkD6oRCnWbs6+vs6enw+WyOl1mR6fJZjd22tptdoPViiPTGLZJ7/Jm"+
                                 "duddIPVaNZzhm/wGa1diPpz6rbBf1CpVtDZrrSQKGwRFlVdDnlSAqmrrMWRGeS0S8LXX63X1DwBs"+
                                 "e28vgLcB+O5u4BC2bhfgt0RjUo5nFaMpaV9EbbCkZ6Zerq99PjBfpIpkCiZHXF1T/9OvT34tr34O"+
                                 "w8MoXAJP8bgO1ao3DQwPu/3+Ho+na2DA1d/vdLvtfX3AIRxut9vnGx8JyDTdTQabu6crlUrcyru9"+
                                 "m0RNKoG0BU1gw/CMWhiushryAgyDE+jP6lDqdpM3EADAfUNDH9g+H0ACtmtgADC7zzu4ubEejcWi"+
                                 "sTkga349xNycVxWJzrt37+HPvzx8XFlT0YCtQVFQjeKyOrTWZBmZmPAHg77A6MDYmHd0FNguj1dn"+
                                 "NLW06fp83pVUKpO9OzTdMjlCWROVIcCQuEgyr57IhmKpWHIjnS2qgiA1RvNYODw6OTkcCo2EQoOB"+
                                 "gLnTLlaqTLZOndHs8fuzq9+EvJWqojDFz0HQh2WV98uePXj6/DkUA6MLHoEQGqM1FJsNRiKBmXCv"+
                                 "x6NoadUYjAaLRa1vtzq73D5vJDx9Zzq83VexTEGksssqQGWVtRA4rg5BqAYiL437rB7bZu4Acv7E"+
                                 "bCwUi/X5/TqzRaM3aI0mQOvA8Iijq2t+bvb2mHTjLKW+At1E50hQeEZNA/bR06p7jyrKQWAkkV4O"+
                                 "RulM1ujSYnhhYXp+vtc3aLB0tHfY9GarZ2xU0ayMRMJ3NtEXJ0euUiLRxAePyqpqGp68gNRhaES2"+
                                 "hMQSVwBarbbZRCK6HAf22NRUR5fL5uyyuboMOl00Gv3KnNydYNh8EU+ipnNkDIECDEX+58eff7n/"+
                                 "EIZnVkBw+g7bfGZlLpmMJROzqfTo1GQjg+739Gez3/Y34zP4jdufy8WSWFSmlMCRU0QtLJWRJdcZ"+
                                 "/QoUAq41WtKbm8ura/OpVGe3i81iJJcWv5R4v2NeAWNGA0G720tlSVF0PpzGw7FlDYhGXvGvzy1/"+
                                 "0xo7cteXgXBYJpPbbR3f+Efq7hQOPAHYk0qvzM4CetIjgRBLphY1tVP1nPvger3V4RkZFoqEi9/p"+
                                 "4h2+3vwYELS9vRWJzstb9R2djlBwbG19/bsa55u03voQwN59s7WxsfHHXLz5nf8F4pU9murjvYYA"+
                                 "AAAASUVORK5CYII=")),0,$$.Length)))))
#endregion
#~~< lblComputer1 >~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
$lblComputer1 = New-Object System.Windows.Forms.Label
$lblComputer1.Font = New-Object System.Drawing.Font("Tahoma", 8.25, [System.Drawing.FontStyle]::Bold, [System.Drawing.GraphicsUnit]::Point, ([System.Byte](0)))
$lblComputer1.Location = New-Object System.Drawing.Point(69, 22)
$lblComputer1.Size = New-Object System.Drawing.Size(171, 16)
$lblComputer1.TabIndex = 12
$lblComputer1.Text = $TextStrings.NameDomainTitle
#~~< pboxComputer >~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
$pboxComputer = New-Object System.Windows.Forms.PictureBox
$pboxComputer.Location = New-Object System.Drawing.Point(22, 20)
$pboxComputer.Size = New-Object System.Drawing.Size(41, 45)
$pboxComputer.TabIndex = 9
$pboxComputer.TabStop = $false
$pboxComputer.Text = ""
#region$pboxComputer.Image = ([System.Drawing.Image](...)
$pboxComputer.Image = ([System.Drawing.Image]([System.Drawing.Image]::FromStream((New-Object System.IO.MemoryStream(($$ = [System.Convert]::FromBase64String(
"iVBORw0KGgoAAAANSUhEUgAAACcAAAAkCAIAAACFVbTMAAAAAXNSR0IArs4c6QAAAARnQU1BAACx"+
                                 "jwv8YQUAAAAgY0hSTQAAeiYAAICEAAD6AAAAgOgAAHUwAADqYAAAOpgAABdwnLpRPAAAC3FJREFU"+
                                 "WEe9V3lUk1cWf67TOoqogChIFe2mta3TjnaxrU5P2+minWqXo4516WKntLV2bKcWpW6MIouABEIg"+
                                 "ISRkAbKRnQSykRUSspA9LGGRTUWxHatt8c2NOIrOyOksZ+4f33l8vLzf/f3u8u43IRQKof+/Aeo4"+
                                 "1hYKtbW1dXZ2jr/t3/0vGucHPq/XYrEEfLZwq8fvdfj9nmAwEAoFw+0dvb29/40r46F63G42u2bn"+
                                 "LsI3B8qZLImgRq7TKb1ObVvIEg67OzqcQZ/T7/OEgsFwZ7ivr7e9vf0Xkh6Xq89FJHISkwiTp7Gm"+
                                 "Rwlmxkmj75MvXaNYt1W968/Wg+mm0opGdb3d0uS0NbvsDpvL2eT1Nnu9zlDI09PTHgyFWiFAkRhF"+
                                 "wgR2w6dxUFsDAV9GFjNm1ik0i4XmS9B8HUpwoPgONGcAzRhG8Vfe2jMi1lwqFw8X8i4WcgbKRN18"+
                                 "Vb9Yc06iHpBp2/TmgMvd5gt0BILtFy5cCIfDTic4FLE7obZ2dXU2262ff0mbMrkAzWKi2BoUr0SJ"+
                                 "BrTIge4NoSW9v1o6nFaAwc4M4/Y+HOrBni7saB2xBq7qvVeVjsvyxouyposi04+5nNMj+LLZZKqs"+
                                 "rPzXqKCD3+9rMOiam5sN+oat28hoQi6aw0BxAjRPgRIb0IJmlBxAi7vRoqG3dl8Jn8Y9A7ijD3cP"+
                                 "4t6zuPc87hvC/edx7xDuPov7zuHwOVypGcJXh1WqeolEejvq4OCA02lXKGrt9uaBwX4g4Wpxrt9Y"+
                                 "hu4+haJpKIaH4msjIifZ0CI/WhxGSWd+u+EHh/8qoHo7sL8D+7pwoBsHT+PWXtzej8MDEQ9gIdNf"+
                                 "wD+fFwpFGo3mOiqQc7lcOq3GZrUODZ2JSHbNzp8/V6+of+fd8tWv8KZFUVAcF82VogQVWmBBSW6U"+
                                 "3IYWDkStuEgVjHScxs1+3BzEjhC2t2JnO3Z14JZO7Anjtn5sCWFhw/kfvztdXl7e1NR0HdXutP9l"+
                                 "376j6Rl1irpIkM6cCQaDTpfL6/FUVYle/kPZh3v0MfPLUHQlihWjeSqUaET3OCIiL+xGi89+lX3F"+
                                 "E8JmJzY4scmNzR5s8WGzHzcGcVMAuzuxzH5VpOu/ONBeWFjocDiuo3a3da996PX1L+5kMdmQ6LZr"+
                                 "5nA4g4EAmSJ49nlS6mHL8ifp6C4KiuGieBlKaEBJdrTIhxZ3ocSBDbsvG+1Ya8V1FlxnxepmrLFj"+
                                 "tRNrXVjXEiFKU48ojL197b68vHyv13sdtccw+NwH976w8TUBWxQK+ux2u9VqhafX00KhSFY+Q049"+
                                 "pN+wpQZNhehWoDmVaK4QzVejBTa00IfmdazYMCBu+LnOfFWguirSjogNIxIDlpqwxIzljVjlxiTh"+
                                 "FV1Tb6vbXkQsvtHOkNWi390Wfzj4vIgt8bojLRCsqcna3NxELOY+tor80afSbbtk02IL0DQSmlOB"+
                                 "YqtRrDCSWQlaNNcct6KFQB/iK/5G41+qqLnMkPzIlPzEko2w5bhKhrn1+GTZDyZbl7OpkUym3uwS"+
                                 "RpWZJs6jG46JeVK3q0VvMBgNBrPFYjLoDh2hLH2M9PZW3tvbRUseJaNpp9AcSOZKFMePSA2M441T"+
                                 "k22pmQN03jCBPlzE+L6QdYlYeZlUdaWk+icK52cyDx8lXG50dFgsBja76iaqyWBQcHUMcg2viu92"+
                                 "2dUaNeS30WjSaZUf7iq475GS9RurXnmD/fgzjMlR+SiKHKnd2CoUK0Bz5Wi+ZnKC8f2vugjUc8eK"+
                                 "zmUUn88s+e5E6ffZlEs5ZT/kl1/Opo58mzfs9oXU6jqhUHgTFbip1VoGk8PjClwuh0KpUCqV8FKr"+
                                 "VrzxJiF5acmaF2irni79zWr6rEQC+jUBRVNRDBvFjOosnxSjenVb4Ehe79cn+r/JOJOadXZ/zoW0"+
                                 "k8Pf5l08Svh+b8aVw/mD4W6/QMCtq6u7iWoxGE0NNg5HKBCIrJZGPr9GIpU0NOh1KsWq1Vn3PFD4"+
                                 "2JMlDz5CeGBFYezCwgkz8lAUEc0uRzEMFFOF4oQTZ0lXrXN8frDj49TwR6k9KQf6P/m2/9ODg58d"+
                                 "PvvFsaGd+747VtDZ1+dmsZg3yibSh40Gk9nirFVoZDK5oUHHZldyOBytVlMrFcYlps9fQkh+kJC4"+
                                 "JHduUvbspOxJM7PR9FMoihRhPJsVyaxobvITuk0pnk0pvrc/Dm76pH3LZ52bP+/5456e97/uXf/h"+
                                 "QA6x9cygp7SUAt1/TDYZTJZGl7JWLZPI1ap6OpMJPVqllJcQaWhi2ozY7DkLsqPnZU6Pzbhr9rGJ"+
                                 "URloejaKKkDRxSi6HMUyJ0Sz5z5U+/vN1le32l/a4np5m/fV7b7XdoTW7Wzd+Kf2597pyix09/U5"+
                                 "ioqIPT09Y1GNFotToQRycghqWVlZdVWVXCo4crQsISFjVkzmxOnH0aTDaNIBNDkNTT2Eoo6jaKBL"+
                                 "QDNLIlJH06MWCla+pFq9Tr/yFcuT661Pv25f/Ybj2Y3uNW+6V77mLS6zd3VZi4tLx174yKA3GI02"+
                                 "qbROJq2Vy+WlJSVcHq+KTSshlpLJ4lKKIu2Q8K1N5U89RVqUnDtlajpCqQilIZSO7spGM4vQLMqU"+
                                 "RPb9T0iWP6t44Om6pas1y9bol681Pfw780PPWx590VzJbfL59CQS5RZUo8Go05pFwlqpRCGXSUsh"+
                                 "AqWlhLzcU1nZhaQjFNYhSQ25ySSxOywymT6foDxwSPzuVtbyVdSZcwkz7s6ZMunkxKn50xPL593P"+
                                 "nbesJuFR8YKHZUkrFPc8Xp/wcP0ja1VSua3RoqLTGbegmgz6Wrmqhi+RS2sVcnkRkQhtuoxCKafS"+
                                 "hAI+lyXIzcwpzM9l0MgiPl0prNAq2XIZm80UMyoMxUX63XtVa9cJVqyqWrasOj65empc5ZTZzKmx"+
                                 "7KhFnAkx3MfXSlQam1ol5/P5t6CaDQYBX8zj1MgkMlWdikwm19TUQFPs6+trbWtlslhf7NlTWFSY"+
                                 "lZlDL6Nq6rUCnqCMRCIT80qJORwWgVNF5VRV8fgiFkvDqHR9sd+65T3jug2a+1bK0WT+qrW8Bn2j"+
                                 "VFyj1mhvRTUZKyu5NBqTy+E1mS0CAV8mkwkEAiKRmH70KLm0VCKRMJhMkKjJZusfHOzp7m4NhMxG"+
                                 "cxmFmpORkXPiRGF+dhmJIODS9TpJo1mhN+g0Goe41n8iN1RIclhtNi6n2u/334Jqt9rAVwKBxKhg"+
                                 "wAAsEonpdPrevXtPnjzpdruhjIqLi6HAA4EAzMAgQDWHQ6VQoLrKabTMrKy9X36Zun//4YPf5uRk"+
                                 "sSoYEpFQJBKq6uUN2lqPS+3xNJqNugoGw+fz3YLqdLccOnyEVEptbna4HI7t27enpKTs2LEDtM3J"+
                                 "zjZbzAAGBd7R0aHX69lstlarra+rgzgBMKe6msVkniIQ0g4e/DglZfPmTR+8995f09Pp1HLoulCI"+
                                 "ICzc2bC+cbP+41bv6jIYDEwmi0AogMXp3l4AaGlpgbu9q6vrhoPwBuoKNkCXho6q0+lgDWYymeC2"+
                                 "kEqlEBQajZaWlrZv39fHjx8nkUo4nOqKCkadUgmTyW3T+XhT+NitDQ0NEG8Arq+vhzWkG8gOrkAU"+
                                 "YBoCGcAPlUoF2BCggoICCBAIA3pAaMb2wvHn4ducCwEksARIUBj4jUa6tRX0C8EMC29AG/AGNoCe"+
                                 "AAbAFRUVVCoV9t9+1p2n8Nt3ArlRQqAqkAOWgAofNgAMIyYMPUAI9sAG2Aa1B1cIUC8qKoKX/zkq"+
                                 "JOG1yQbKxwbkIDugGGCahCfwbmxsBFT4UywWm81mwAMD7LEd/5Yc/mdH7vQGDoUpDgIZmeWuTXuA"+
                                 "BHQBGKiPfjxBFBQKxagqIMadjvql2TT6e9ATTgfg0aqHJ5jH4wEZIKiwAIdADNg2GvL/DepYbDgX"+
                                 "2IAAozpDCMAhoD72i/FOqH8HoKoPDz12E1QAAAAASUVORK5CYII=")),0,$$.Length)))))
#endregion
$panelMenu.Controls.Add($btnWinRM)
$panelMenu.Controls.Add($btnRemoteDesktop)
$panelMenu.Controls.Add($lblWinRM2)
$panelMenu.Controls.Add($lblWinRM1)
$panelMenu.Controls.Add($pboxWinRM)
$panelMenu.Controls.Add($btnDCPromo)
$panelMenu.Controls.Add($Button1)
$panelMenu.Controls.Add($btnRoles)
$panelMenu.Controls.Add($btnCName)
$panelMenu.Controls.Add($lblDomain2)
$panelMenu.Controls.Add($Label2)
$panelMenu.Controls.Add($lblRole2)
$panelMenu.Controls.Add($lblcomputer2)
$panelMenu.Controls.Add($Label1)
$panelMenu.Controls.Add($lblDomain1)
$panelMenu.Controls.Add($lblRole1)
$panelMenu.Controls.Add($PictureBox1)
$panelMenu.Controls.Add($pboxDomain)
$panelMenu.Controls.Add($pboxRole)
$panelMenu.Controls.Add($lblComputer1)
$panelMenu.Controls.Add($pboxComputer)
$FormComputer.Controls.Add($MenuStrip1)
$FormComputer.Controls.Add($groupboxInfo)
$FormComputer.Controls.Add($btnClose)
$FormComputer.Controls.Add($lblCoreConfigText)
$FormComputer.Controls.Add($lblCoreConfigTitle)
$FormComputer.Controls.Add($panelMenu)

#endregion

#region Functions

function Main{
	[System.Windows.Forms.Application]::EnableVisualStyles()
	Get-Status
	$formcomputer.ShowDialog()
}

function BtnCloseClick($object)
{
	$formComputer.Hide()
   $FormMainMenu.Show()
}

#function BtnDCPromoClick( $object )
#{
#$formComputer.enabled = $false
#. .\DCPromo.ps1
#}

function BtnRolesClick( $object )
{
$formComputer.enabled = $false
. .\Roles.ps1
}

function BtnCNameClick( $object )
{
$formComputer.enabled = $false
	. .\JoinDomainandRename.ps1
}

function BtnWinRMClick($object)
{
	$formComputer.enabled = $false
	. .\WinRM.ps1
}

function BtnRemoteDesktopClick($object)
{
	$formComputer.enabled = $false
	. .\RemoteDesktop.ps1
}

function Get-Status
{
	$Temp = gwmi Win32_ComputerSystem
	$lblComputerValue.Text = $Temp.Name
	$lblDomainValue.Text = $Temp.Domain
				
	$Version = gwmi Win32_OperatingSystem
	$lblVersionValue.Text = $Version.Caption
}


function BtnServicesClick( $object )
{
	$formComputer.enabled = $false
	. .\services.ps1
}

function MenuCompAbout( $object )
{
	#Global from MainMenu
	Menuabout
}

function MenuCompLogFile( $object )
{
	#Global from MainMenu
	MenuLogfile
}

function MenuCompClearLogFile( $object )
{
	#Global from MainMenu
	MenuClearLogfile
}

function MenuCompCMD( $object )
{
	#Global from MainMenu
	MenuCMD
}

function MenuCompTaskMgr( $object )
{
	#Global from MainMenu
	MenuTaskmgr
}

function MenuCompRegistry( $object )
{
	#Global from MainMenu
	MenuRegistry
}

function MenuCompSystem( $object )
{
	#Global from MainMenu
	MenuSystem
}

Main

#endregion
