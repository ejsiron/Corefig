#Region Initialization
param ([String]$MPIOEnabled="",[String]$HyperVEnabled="")
Import-LocalizedData -BindingVariable TextStrings -FileName Corefig.psd1
#EndRegion
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
#~~< FormMainMenu >~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
$FormMainMenu = New-Object System.Windows.Forms.Form
$FormMainMenu.ClientSize = New-Object System.Drawing.Size(649, 485)
$FormMainMenu.Font = New-Object System.Drawing.Font("Tahoma", 8.25, [System.Drawing.FontStyle]::Regular, [System.Drawing.GraphicsUnit]::Point, ([System.Byte](0)))
$FormMainMenu.FormBorderStyle = [System.Windows.Forms.FormBorderStyle]::FixedSingle
$FormMainMenu.MaximizeBox = $false
$FormMainMenu.MinimizeBox = $false
$FormMainMenu.ShowIcon = $false
$FormMainMenu.StartPosition = [System.Windows.Forms.FormStartPosition]::CenterScreen
$FormMainMenu.Text = $TextStrings.AppName
$FormMainMenu.BackColor = [System.Drawing.Color]::White
#~~< panelTools >~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
$panelTools = New-Object System.Windows.Forms.Panel
$panelTools.Dock = [System.Windows.Forms.DockStyle]::Bottom
$panelTools.Location = New-Object System.Drawing.Point(0, 471)
$panelTools.Size = New-Object System.Drawing.Size(649, 14)
$panelTools.TabIndex = 4
$panelTools.Text = ""
#~~< checkboxStartup >~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
$checkboxStartup = New-Object System.Windows.Forms.CheckBox
$checkboxStartup.Location = New-Object System.Drawing.Point(19, 26)
$checkboxStartup.Size = New-Object System.Drawing.Size(150, 18)
$checkboxStartup.TabIndex = 4
$checkboxStartup.Text = $TextStrings.LoadAtStartup
$checkboxStartup.UseVisualStyleBackColor = $true
$checkboxStartup.add_CheckedChanged({CheckboxStartupCheckedChanged($checkboxStartup)})
#~~< pboxLogOff >~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
$pboxLogOff = New-Object System.Windows.Forms.PictureBox
$pboxLogOff.BackgroundImageLayout = [System.Windows.Forms.ImageLayout]::Center
$pboxLogOff.Location = New-Object System.Drawing.Point(209, 24)
$pboxLogOff.Size = New-Object System.Drawing.Size(21, 19)
$pboxLogOff.TabIndex = 0
$pboxLogOff.TabStop = $false
$pboxLogOff.Text = ""
#region pboxLogOff.BackgroundImage = ([System.Drawing.Image](...)
$pboxLogOff.BackgroundImage = ([System.Drawing.Image]([System.Drawing.Image]::FromStream((New-Object System.IO.MemoryStream(($$ = [System.Convert]::FromBase64String(
"iVBORw0KGgoAAAANSUhEUgAAABEAAAARCAIAAAC0D9CtAAAAAXNSR0IArs4c6QAAAARnQU1BAACx"+
                                 "jwv8YQUAAAAgY0hSTQAAeiYAAICEAAD6AAAAgOgAAHUwAADqYAAAOpgAABdwnLpRPAAAAf9JREFU"+
                                 "OE+Vkl9Ik1EYxh8p8EJvVhdpXgjdFGahYNfhfeSN3ewisougcJsMN+c2Fi7/TJaESeFChhuiMy8G"+
                                 "Q4d+ObbhpwkyIVNqs4sR3TgYiUiCF1vPxxnHL5DAw+Hwfud7fud9znveqnK5jIsOMnKcHBV2EhML"+
                                 "w/ffdNUOPgJXxtzhvl4G+fFzdznsvDPxBKHniPZixYWYHTPdeNeFcH8z/0plheHWB9N1KlbdSHiQ"+
                                 "fHkpPVSz5jNs+Os+jzdGHbUBU73ENIapedKsGcmBy5SqPoPqu1IqlRQ34jbErIjbEelBqP+2MKkx"+
                                 "dEwD1G2M1W+O38inX+UUJ5lvS05OMmK+fQwqKwwvOm+t3nrflJlsPcynqaZCroWsIpjgM1BZYVif"+
                                 "1NjNnVD79mQLpSn/XckwFjBn1KJVssKwrHsfO/ajRnXEIJms4qWOzOmf3wxWbVh3gMqzPJnww73I"+
                                 "A/6jk/3EiLwDY+4k+7Dpgtqny0OXy6/btqfuUZqZMR4XspRuTXdyZZyNGDMufPdi0ay7D6sRNF9V"+
                                 "/dfE8cR4Nk0WcwqBLx788OJgGFNPdXVj1UOOW3wfaSluhfCz60Hei6IPazawS87eh9fiGwdMDewa"+
                                 "Yiu9SNkh/PwawuEoVBuCloZ/+kA0kuy3uRcakxvAVzc+9WiWmOGcfhPYhfta3+3/j/8C60AVPEji"+
                                 "HbEAAAAASUVORK5CYII=")),0,$$.Length)))))
#endregion
#~~< pboxRestart >~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
$pboxRestart = New-Object System.Windows.Forms.PictureBox
$pboxRestart.BackgroundImageLayout = [System.Windows.Forms.ImageLayout]::Center
$pboxRestart.Location = New-Object System.Drawing.Point(354, 24)
$pboxRestart.Size = New-Object System.Drawing.Size(21, 19)
$pboxRestart.TabIndex = 0
$pboxRestart.TabStop = $false
$pboxRestart.Text = ""
#region pboxRestart.BackgroundImage = ([System.Drawing.Image](...)
$pboxRestart.BackgroundImage = ([System.Drawing.Image]([System.Drawing.Image]::FromStream((New-Object System.IO.MemoryStream(($$ = [System.Convert]::FromBase64String(
"iVBORw0KGgoAAAANSUhEUgAAABEAAAARCAIAAAC0D9CtAAAAAXNSR0IArs4c6QAAAARnQU1BAACx"+
                                 "jwv8YQUAAAAgY0hSTQAAeiYAAICEAAD6AAAAgOgAAHUwAADqYAAAOpgAABdwnLpRPAAAAAlwSFlz"+
                                 "AAAOwQAADsEBuJFr7QAAAMpJREFUOE+VkrsNwkAQRE0DtELmLigFiXagKzICCjgRmoDQjHmnucEy"+
                                 "FpxWwuzu2/9mHMfu3yfG7/Z+u/6UgjLdugRw3fbXFGlmWGUIj+v+8EiRhljONjHP4Q6AKzZiozFW"+
                                 "Spn6xywGM3+z4MQwTYyT2DsbQOlsc4bwcjqeL5JMuMYYcGME+olRntzJV8YTozZLjqH2owkuDjoZ"+
                                 "VtdmzX68x2xdGFWxInnWPPpRgMQW74AkjTEGObs3KQ18MBzR4l1Tkl+769Suf78AHmlO+OAW9UgA"+
                                 "AAAASUVORK5CYII=")),0,$$.Length)))))
#endregion
#~~< pboxShutDown >~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
$pboxShutDown = New-Object System.Windows.Forms.PictureBox
$pboxShutDown.BackgroundImageLayout = [System.Windows.Forms.ImageLayout]::Center
$pboxShutDown.Location = New-Object System.Drawing.Point(500, 24)
$pboxShutDown.Size = New-Object System.Drawing.Size(21, 19)
$pboxShutDown.TabIndex = 0
$pboxShutDown.TabStop = $false
$pboxShutDown.Text = ""
#region pboxShutDown.BackgroundImage = ([System.Drawing.Image](...)
$pboxShutDown.BackgroundImage = ([System.Drawing.Image]([System.Drawing.Image]::FromStream((New-Object System.IO.MemoryStream(($$ = [System.Convert]::FromBase64String(
"iVBORw0KGgoAAAANSUhEUgAAABQAAAATCAIAAAAf7rriAAAAAXNSR0IArs4c6QAAAARnQU1BAACx"+
                                 "jwv8YQUAAAAgY0hSTQAAeiYAAICEAAD6AAAAgOgAAHUwAADqYAAAOpgAABdwnLpRPAAAAgtJREFU"+
                                 "OE+dk1lLAlEYhusHFM2xDMFxxsrGoChMsPUiMoSIgqKFgi4juu2mH6AQ1CCYpRKRFW1k2L7QDgUh"+
                                 "mLRAK3VZtEE3kRdpLylW0xDkMAzHc77H9/2WExsMBmOifgBH/cQIyNenB6/TMVxbblTJOmRx+GKN"+
                                 "Hez/1vgB3+xs2PX5Jnm8hUlwplKT6WRERfpSqE55vL00D6cC/gvGmVnLIdSlItOcxK1OmtPQC7rU"+
                                 "5cKMVX3OUJbcnJsu4MMwXOG/HSmUO1O6XpF/buOfjw7e/f7HA88hb3QX54ynEZzaSnXf/YdhZAVv"+
                                 "i7q07bqy283ly8He9XrDGCdbqTEcW/mb2SnwI0qCjBAZMR+GUZV+LnmjouB6dOBqyA4dhEZe8L5u"+
                                 "I36iFogUwqjqvEG321z5cnYCzRAWCARCC+jfez1YOBkKkUIYXdlva/K1tyBPuBXA2Hn3v7lYMq+Q"+
                                 "IFJEeae1cb+1AQrQ+a387PUsKSWARZSRiauqZLtWj9yQ4feEJ1lyYeWvuk17bNIoTURyRg0t2crF"+
                                 "IjWqitqCh/4EJ9uqNlz28HczLl+h5oSWmuUJItVG92wlWnQSmuChD//IH26vu0xHBZpThRSeMX8i"+
                                 "fUYNPidMjWaAh9UZVrLGJsKqj5FeMMkgLVq1+ISFChiZbQdDAQa5RSdO0QRuofnXbIf46G/Vfy+2"+
                                 "8D7/i/8AQuLynt8s2MAAAAAASUVORK5CYII=")),0,$$.Length)))))
#endregion
#~~< lblLogOff >~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
$lblLogOff = New-Object System.Windows.Forms.Label
$lblLogOff.Font = New-Object System.Drawing.Font("Tahoma", 8.25)
$lblLogOff.Location = New-Object System.Drawing.Point(236, 28)
$lblLogOff.Size = New-Object System.Drawing.Size(83, 15)
$lblLogOff.TabIndex = 1
$lblLogOff.Text = $TextStrings.LogOffDotted
$lblLogOff.Cursor = [System.Windows.Forms.Cursors]::Hand
$lblLogOff.add_MouseLeave({UOff($lblLogOff)})
$lblLogOff.add_MouseClick({PboxLogOffClick($lblLogOff)})
$lblLogOff.add_MouseHover({ULogoff($lblLogOff)})
#~~< pboxArrowDown >~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
$pboxArrowDown = New-Object System.Windows.Forms.PictureBox
$pboxArrowDown.BackgroundImageLayout = [System.Windows.Forms.ImageLayout]::Center
$pboxArrowDown.Location = New-Object System.Drawing.Point(308, -2)
$pboxArrowDown.Size = New-Object System.Drawing.Size(31, 19)
$pboxArrowDown.TabIndex = 0
$pboxArrowDown.TabStop = $false
$pboxArrowDown.Text = ""
$pboxArrowDown.Visible = $false
#region pboxArrowDown.BackgroundImage = ([System.Drawing.Image](...)
$pboxArrowDown.BackgroundImage = ([System.Drawing.Image]([System.Drawing.Image]::FromStream((New-Object System.IO.MemoryStream(($$ = [System.Convert]::FromBase64String(
"iVBORw0KGgoAAAANSUhEUgAAABkAAAAOCAIAAABVWCAXAAAAAXNSR0IArs4c6QAAAARnQU1BAACx"+
                                 "jwv8YQUAAAAgY0hSTQAAeiYAAICEAAD6AAAAgOgAAHUwAADqYAAAOpgAABdwnLpRPAAAAAlwSFlz"+
                                 "AAAOwQAADsEBuJFr7QAAANpJREFUOE+VU8ENxCAM6y3ACAzQWdi3f958W4knLMK5smRxAU6tHxUJ"+
                                 "xHVM+LTWthlqrdd1mZ1937330/N3ElwjUkrHcZzn2W8hRBJb05Jb04qI+VJKzhlfgJk/dJYLNThN"+
                                 "FgghQEeQEQdE3UuxXGqNlT2L1LHZsaEJl0TFGLmmCoSgZmbOhayBfHHOhRAYYoFQFGMVMht/K8gs"+
                                 "+oKLZhkX6ouWGfz02IuXzZBjiFb2L73vJRh3nnq/8rW/taczgRoO/Wq4X8wqKfSGNJMc3ddvSK9n"+
                                 "vPjpuKuDLxnaduuBVsNmAAAAAElFTkSuQmCC")),0,$$.Length)))))
#endregion
$pboxArrowDown.Cursor = [System.Windows.Forms.Cursors]::Hand
$pboxArrowDown.add_MouseClick({ControlsMin($pboxArrowDown)})
#~~< lblRestart >~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
$lblRestart = New-Object System.Windows.Forms.Label
$lblRestart.Font = New-Object System.Drawing.Font("Tahoma", 8.25, [System.Drawing.FontStyle]::Regular, [System.Drawing.GraphicsUnit]::Point, ([System.Byte](0)))
$lblRestart.Location = New-Object System.Drawing.Point(381, 28)
$lblRestart.Size = New-Object System.Drawing.Size(83, 15)
$lblRestart.TabIndex = 1
$lblRestart.Text = $TextStrings.RestartDotted
$lblRestart.Cursor = [System.Windows.Forms.Cursors]::Hand
$lblRestart.add_MouseLeave({UOff($lblRestart)})
$lblRestart.add_MouseClick({PboxRestartClick($lblRestart)})
$lblRestart.add_MouseHover({URestart($lblRestart)})
#~~< pboxArrowUp >~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
$pboxArrowUp = New-Object System.Windows.Forms.PictureBox
$pboxArrowUp.BackgroundImageLayout = [System.Windows.Forms.ImageLayout]::Center
$pboxArrowUp.Location = New-Object System.Drawing.Point(308, -2)
$pboxArrowUp.Size = New-Object System.Drawing.Size(31, 18)
$pboxArrowUp.TabIndex = 0
$pboxArrowUp.TabStop = $false
$pboxArrowUp.Text = ""
#region pboxArrowUp.BackgroundImage = ([System.Drawing.Image](...)
$pboxArrowUp.BackgroundImage = ([System.Drawing.Image]([System.Drawing.Image]::FromStream((New-Object System.IO.MemoryStream(($$ = [System.Convert]::FromBase64String(
"iVBORw0KGgoAAAANSUhEUgAAABkAAAAOCAIAAABVWCAXAAAAAXNSR0IArs4c6QAAAARnQU1BAACx"+
                                 "jwv8YQUAAAAgY0hSTQAAeiYAAICEAAD6AAAAgOgAAHUwAADqYAAAOpgAABdwnLpRPAAAAAlwSFlz"+
                                 "AAAOwQAADsEBuJFr7QAAAN1JREFUOE+dU8ERwyAMSxdgBAZgluzLnzdfuOMZFqHKqedzHWja+tED"+
                                 "Y8myqzzGGNsseu+1VvMSQvDeT+vPJLiukXOOMZZSjuPgKw64IomnKeTUtCJaAT7QWS70R/WKiHkU"+
                                 "iF5dabk4mq5AxrBz2Gu/Ny4tip2Bcc5hrQY8lbYBo4MYISILwtCRy8SrlAA9DhXt+85ZcMBV1Ol6"+
                                 "OU/2JQ5IKfFMmbi21pi53xcXxN0DBgx+GTIOnr7ave5JczI04w+eQClNL3YXUWKulfVvviFton++"+
                                 "IVF0/bOmdpd+Tz0pdusw8GJKAAAAAElFTkSuQmCC")),0,$$.Length)))))
#endregion
$pboxArrowUp.Cursor = [System.Windows.Forms.Cursors]::Hand
$pboxArrowUp.add_MouseClick({ControlsMax($pboxArrowUp)})
#~~< lblShutDown >~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
$lblShutDown = New-Object System.Windows.Forms.Label
$lblShutDown.Font = New-Object System.Drawing.Font("Tahoma", 8.25, [System.Drawing.FontStyle]::Regular, [System.Drawing.GraphicsUnit]::Point, ([System.Byte](0)))
$lblShutDown.Location = New-Object System.Drawing.Point(527, 28)
$lblShutDown.Size = New-Object System.Drawing.Size(83, 15)
$lblShutDown.TabIndex = 1
$lblShutDown.Text = $TextStrings.ShutDownDotted
$lblShutDown.Cursor = [System.Windows.Forms.Cursors]::Hand
$lblShutDown.add_MouseLeave({UOff($lblShutDown)})
$lblShutDown.add_MouseClick({PboxShutDownClick($lblShutDown)})
$lblShutDown.add_MouseHover({UShutdown($lblShutDown)})
$panelTools.Controls.Add($checkboxStartup)
$panelTools.Controls.Add($pboxLogOff)
$panelTools.Controls.Add($pboxRestart)
$panelTools.Controls.Add($pboxShutDown)
$panelTools.Controls.Add($lblLogOff)
$panelTools.Controls.Add($pboxArrowDown)
$panelTools.Controls.Add($lblRestart)
$panelTools.Controls.Add($pboxArrowUp)
$panelTools.Controls.Add($lblShutDown)
$panelTools.ForeColor = [System.Drawing.SystemColors]::ControlText
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
$btnClose.Location = New-Object System.Drawing.Point(527, 448)
$btnClose.Size = New-Object System.Drawing.Size(87, 23)
$btnClose.TabIndex = 2
$btnClose.Text = $TextStrings.Exit
$btnClose.UseVisualStyleBackColor = $true
$btnClose.add_Click({BtnCloseClick($btnClose)})
#~~< lblCoreConfigText >~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
$lblCoreConfigText = New-Object System.Windows.Forms.Label
$lblCoreConfigText.Font = New-Object System.Drawing.Font("Tahoma", 8.25, [System.Drawing.FontStyle]::Regular, [System.Drawing.GraphicsUnit]::Point, ([System.Byte](0)))
$lblCoreConfigText.Location = New-Object System.Drawing.Point(22, 47)
$lblCoreConfigText.Size = New-Object System.Drawing.Size(230, 26)
$lblCoreConfigText.TabIndex = 1
$lblCoreConfigText.Text = $TextStrings.AppDescription
#~~< lblCoreConfigTitle >~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
$lblCoreConfigTitle = New-Object System.Windows.Forms.Label
$lblCoreConfigTitle.Font = New-Object System.Drawing.Font("Tahoma", 8.25, [System.Drawing.FontStyle]::Bold, [System.Drawing.GraphicsUnit]::Point, ([System.Byte](0)))
$lblCoreConfigTitle.Location = New-Object System.Drawing.Point(12, 30)
$lblCoreConfigTitle.Size = New-Object System.Drawing.Size(228, 17)
$lblCoreConfigTitle.TabIndex = 1
$lblCoreConfigTitle.Text = $TextStrings.TitleMain
$lblCoreConfigTitle.Cursor = [System.Windows.Forms.Cursors]::Hand
#~~< panelMenu >~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
$panelMenu = New-Object System.Windows.Forms.Panel
$panelMenu.BorderStyle = [System.Windows.Forms.BorderStyle]::FixedSingle
$panelMenu.Location = New-Object System.Drawing.Point(-4, 83)
$panelMenu.Size = New-Object System.Drawing.Size(657, 346)
$panelMenu.TabIndex = 0
$panelMenu.Text = ""
$panelMenu.BackColor = [System.Drawing.Color]::Gainsboro
#~~< btnHyperV >~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
$btnHyperV = New-Object System.Windows.Forms.Button
$btnHyperV.FlatStyle = [System.Windows.Forms.FlatStyle]::System
$btnHyperV.Location = New-Object System.Drawing.Point(388, 184)
$btnHyperV.Size = New-Object System.Drawing.Size(152, 23)
$btnHyperV.TabIndex = 2
$btnHyperV.Text = $TextStrings.HyperVSettingsDotted
$btnHyperV.UseVisualStyleBackColor = $true
$btnHyperV.Cursor = [System.Windows.Forms.Cursors]::Arrow
$btnHyperV.add_Click({HyperV($btnHyperV)})
#~~< btnNetwork >~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
$btnNetwork = New-Object System.Windows.Forms.Button
$btnNetwork.FlatStyle = [System.Windows.Forms.FlatStyle]::System
$btnNetwork.Location = New-Object System.Drawing.Point(72, 184)
$btnNetwork.Size = New-Object System.Drawing.Size(152, 23)
$btnNetwork.TabIndex = 2
$btnNetwork.Text = $TextStrings.NetworkSettingsDotted
$btnNetwork.UseVisualStyleBackColor = $true
$btnNetwork.Cursor = [System.Windows.Forms.Cursors]::Arrow
$btnNetwork.add_Click({Network($btnNetwork)})
#~~< btnControlPanel >~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
$btnControlPanel = New-Object System.Windows.Forms.Button
$btnControlPanel.FlatStyle = [System.Windows.Forms.FlatStyle]::System
$btnControlPanel.Location = New-Object System.Drawing.Point(388, 74)
$btnControlPanel.Size = New-Object System.Drawing.Size(152, 23)
$btnControlPanel.TabIndex = 2
$btnControlPanel.Text = $TextStrings.ControlPanelDotted
$btnControlPanel.UseVisualStyleBackColor = $true
$btnControlPanel.Cursor = [System.Windows.Forms.Cursors]::Arrow
$btnControlPanel.add_Click({ControlPanel($btnControlPanel)})
#~~< btnComputer >~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
$btnComputer = New-Object System.Windows.Forms.Button
$btnComputer.FlatStyle = [System.Windows.Forms.FlatStyle]::System
$btnComputer.Location = New-Object System.Drawing.Point(72, 74)
$btnComputer.Size = New-Object System.Drawing.Size(152, 23)
$btnComputer.TabIndex = 2
$btnComputer.Text = $TextStrings.ComputerSettingsDotted
$btnComputer.UseVisualStyleBackColor = $true
$btnComputer.Cursor = [System.Windows.Forms.Cursors]::Arrow
$btnComputer.add_Click({Computer($btnComputer)})
#~~< btnLicence >~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
$btnLicence = New-Object System.Windows.Forms.Button
$btnLicence.FlatStyle = [System.Windows.Forms.FlatStyle]::System
$btnLicence.Location = New-Object System.Drawing.Point(72, 301)
$btnLicence.Size = New-Object System.Drawing.Size(152, 23)
$btnLicence.TabIndex = 2
$btnLicence.Text = $TextStrings.LicenseSettingsDotted
$btnLicence.UseVisualStyleBackColor = $true
$btnLicence.Cursor = [System.Windows.Forms.Cursors]::Arrow
$btnLicence.add_Click({Licencing($btnLicence)})
#~~< pboxHyperVDisabled >~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
$pboxHyperVDisabled = New-Object System.Windows.Forms.PictureBox
$pboxHyperVDisabled.Location = New-Object System.Drawing.Point(331, 125)
$pboxHyperVDisabled.Size = New-Object System.Drawing.Size(51, 47)
$pboxHyperVDisabled.TabIndex = 0
$pboxHyperVDisabled.TabStop = $false
$pboxHyperVDisabled.Text = ""
$pboxHyperVDisabled.Visible = $false
#region pboxHyperVDisabled.Image = ([System.Drawing.Image](...)
$pboxHyperVDisabled.Image = ([System.Drawing.Image]([System.Drawing.Image]::FromStream((New-Object System.IO.MemoryStream(($$ = [System.Convert]::FromBase64String(
"iVBORw0KGgoAAAANSUhEUgAAAC0AAAAiCAIAAABELscYAAAAAXNSR0IArs4c6QAAAARnQU1BAACx"+
                                 "jwv8YQUAAAAgY0hSTQAAeiYAAICEAAD6AAAAgOgAAHUwAADqYAAAOpgAABdwnLpRPAAACJZJREFU"+
                                 "WEedV2lzm0ga9kyq9sP+/8/jnbElARISIC7dEkLovi8ucXTDf5jardTs05LjjD1O7KRLUTCC7ofn"+
                                 "ePvlF9/3735g/HL366d//fUn7vjfr//+6/N/n2/99OnT58+ff2CmV5cCx0dHcEn8Y3aekV2P7Lr0"+
                                 "PEv8cxDGfni5REmn097tdnEcf3S2l9fdfey2IA78zFvRk0NWBvVXmb8hK5MeR7m7Go8X9w/FcrnM"+
                                 "87yua0EQYnxs2q9XvYsjiC4x9bb0PCErnZ4meUbz9JKTKMsIOTr7Abfoyl29XKvVTNOUZblUKtq2"+
                                 "nSRJEAQfR/NNHElwTtx14u3oaUy2HbJtZ5RmJMlInMU+jb0sudA0ytIk3Xb3Q2lvK6OOql2HKFYE"+
                                 "Qdjv91EUfRDK2zgCP6DnOXVn9GiTTTPDqpQwEGlEgy31VsRbEndFkwBnwAsuiOZaMNM7Zh04VFWt"+
                                 "1+s8x+E/aHS5XN5F8zaOOPRBQ+KU0pmc3wZNs+hMvSWNXEYJMEUucRckPOCYndx3fac6aMp1VW2b"+
                                 "sqkpgCJJtWKxMBj04zj6vkxv44iCEzyYeQsAIIchOY1psAGOGyVZerlBybOM+utkJqXbDnhyHdlu"+
                                 "KWtbOzjaYWKMO1JdkRVFrlQqZYHfbDYwzbeI+QYOn+GgBws4sthlQmzaNNgzdZKAghhgSiOyt3A+"+
                                 "S0KAgGfDqXIca8G0noe4vnkc1be22jerMK8sSRzHKbLsuu6bMn1Dl+Ccu/PEuk/sR4C4KcOI2fXA"+
                                 "BCJDz1OW23AHELAt2Q/SpXoZV4g3pyAJvsnyLDoB2dbWlwPFrIsIlCiKpVKp2+3GMdL0Ittv4gjj"+
                                 "NA7WPepOaHhMZnK6aWUkRe1KJkK61NKFxjSKTuCGnCdAkMwlZCrPCBJEkwuBXZILUzCjmTv1nNp2"+
                                 "BJlqilSt1aqoNBxXWi6Xfy96r3EgaZ7nV0R5bdUxBdMlz5HMZFJO1w32PZexJCxC9n2cSRdKutKz"+
                                 "NMwhGUDEAfHWxJ0TlF2geXJSjBkOtryxlCob4KUCKBDLPZ9v2b6DjaEZ0oW/Mfq93sNjQRL5taVe"+
                                 "JtWUyR886bIfpnPlVtHTlQFAyfAP2IL9iucmMb0ckSDkiGkHoEgTSnAMjTI2yUo+2aAEINhg5i2X"+
                                 "kaZms0kJuUO1ub//7Xw6LxYLAZWZ5/GzXBVWlpZsW0yLaY261+Ac7XRRhzFZnlc6+LhaeEF2A1bZ"+
                                 "vGV2OX4NVHrNdhKCG4BmW9LJWQ9kiZmEwbgiYaNYKEAsxgco4nmu8PggCAzEDcfOVrNgwwpHdE5m"+
                                 "tWSpQ45kVMAx0FyX72FhxsXlBNPQ0xQxvq4d0MsJyHAMtnAXDQ9MpmN/Y9VvOJgyYoUtWngsFotS"+
                                 "rXZnWdZwaKEGdjod4AA6lGS1JrhTLT90c3Jh5Rxk+FsYNoEumNdfI7FAE1v3ZNe/qZZFHlk3GALs"+
                                 "Psj3aQwaaLhngQIru37kFBAcuYbgVKHJFUGB50pggeEY2TZ+MAyz7eiGaaAql4oFpGvcEuc96WBV"+
                                 "ycHOUEwBxVskCzXddOASZljkFtvvpgmjYD1AYSch3MFmWIMdq3WoMYdhMhXTVYMcB64jCTzmLjEE"+
                                 "bHD4POGYjMcQot3utIaaYeqGoZumAd4eHh5EsTxqK3tH8ydyHqzIwWK6wJ7wx26AGsr8COHcRWw/"+
                                 "QCbm3NFDujbxYQyFe0Sa5es4xDPk3rij8lAfIADlNY7pZIJVexhrzTA0/ToApd1us5aC4+uKNO3K"+
                                 "KNWXiZQuamSDJ7NRURLEeKkz5iOXofFWIINxg9Ci4iHqsxo5g8sop/F2OeK5olrl8F0EHcXCFzRf"+
                                 "+Oj3e/CEoii2BQCAYrRaTXyazQb+qap2dQzfMiSou7Pr2b6XH7uBLYQzNVnIyZgnh9HNIqzELTVm"+
                                 "Z/sPGILGfk7CJDzAESL3u9OsoE1hmrDBcHxBc/UpdHEcB7VlZJmtZgM0XEEwHNdh4gAlGbaCxbum"+
                                 "FMzN47B6dFR/ZmY5Zctv27HDIzvJtJI4BUQ6XWnYlvL41Gro/ONvfUMYDVqTgdFQBO4ljkKBaTSf"+
                                 "z+4Qk+Vy0el2QZBpfsVxQwEcGPAvvrBn4glaqjhqS8u+HK7auTdjPkCiwgM0SqDLrEpRhV3bGQ1L"+
                                 "D/9pSY9OV7N7DbvfgvE72gs+8GygH1UU+/BTXUepR0lFx1AWhCsHNzYYBoC4Dh1/1+sKxyzGNTTp"+
                                 "7Chow+JV45ptwohZN7OlfJi1iyVOqRSGLZkhwKej9nW+rZZlts1dVSkUYEp0Auiwb53Ai/0FO/Ju"+
                                 "t2UFrlp9JuMJhsH8i4zhfuQc16AGtPTaxpKRxuw4ZDhmYq3CiUJpoPOjfgsIRl3DMstdTTBk/jmx"+
                                 "QAInYA/5e2f0ep/Db+Cm3+8DOLo7oLmRAQvrmobJ4FnwgUarXBbwYBWxYjWqm6HaVACyONA4p6va"+
                                 "LWkEGppiV+Mb9XIVajxVjQL853neP1uQt/sP1vmHIVopzI3K9oRDZw0w3AocQIOyC/+WUBABufBY"+
                                 "LXMDo2IZgtMzRo1KRxMaSlkRWSwxIIQkSewF5xst2ffeG0DM+XyGEHh0FH545WoOHmhgo2disFfB"+
                                 "cVgPRm7UBaslgxVTqdxqNjjD7dvdlhDynRb13fcXH0LOZ3NMigdCY8fIwII8h+VvhRk7Q5ntF6xU"+
                                 "V8qcLgvNelmtMZoAAmUBKrz7LvM+Dpj51p0M+n2sj0xdpeHhFYBA24DuEwyBkudSDal+fyg0Wx0E"+
                                 "8iMvDa/z8v23DMwIpfByAkVADGDgAHs14oMyCD5uSoED+AlV4eMvUT+G44byNvutgUArYz/hqAIH"+
                                 "S3VVXK/WaZq+++L06oIP6fLPSYEGVQgWAB/gADti4fERZwhJ37XCmxB/EgfmgvZYeDaboaEEOdiw"+
                                 "Ucp+lIbn638eB6YADrzaD4dDhBgV76dB4Mb/AwWs3kKoq2L9AAAAAElFTkSuQmCC")),0,$$.Length)))))
#endregion
#~~< pboxHyperV >~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
$pboxHyperV = New-Object System.Windows.Forms.PictureBox
$pboxHyperV.Location = New-Object System.Drawing.Point(331, 125)
$pboxHyperV.Size = New-Object System.Drawing.Size(51, 47)
$pboxHyperV.TabIndex = 0
$pboxHyperV.TabStop = $false
$pboxHyperV.Text = ""
#region pboxHyperV.Image = ([System.Drawing.Image](...)
$pboxHyperV.Image = ([System.Drawing.Image]([System.Drawing.Image]::FromStream((New-Object System.IO.MemoryStream(($$ = [System.Convert]::FromBase64String(
"iVBORw0KGgoAAAANSUhEUgAAAC0AAAAiCAIAAABELscYAAAAAXNSR0IArs4c6QAAAARnQU1BAACx"+
                                 "jwv8YQUAAAAgY0hSTQAAeiYAAICEAAD6AAAAgOgAAHUwAADqYAAAOpgAABdwnLpRPAAAC/JJREFU"+
                                 "WEeVl3lUU3cWx+mcOTNOp2f+6fRMbcu+hiSQsBogGIGwL6Isssq+iFQQF7AixSqKgAgoWq0bIgqI"+
                                 "iIKsCmgFN1DCogIBZAuQkPWFJC/b3NhOO/VQwUf+eCe83+998r33e+/9fTI8PKz2EddflH/9x7/l"+
                                 "M2qf/IXzNy25mP3J/9auWbNGLBZ/xE7vPQocq71GJjmvuqUvLi3d+26pLV3Se5E13EsfXxiemJxi"+
                                 "LKalpd6/f39+fn61u/3xObXVLRtljr6WD9aInhYLardKXtWib+qRW1HixycU/bWnT1V89h9dc3NL"+
                                 "UxN8SHAQnT42Pj6+um1/f2pFjtGZyXnJULOo55ygJlT87IxCKlbwphUIQy4VCh+XdBw0rkh3Sw+1"+
                                 "dHRwjIqKdHd1MzTQK8jPY7EWR0dHV0/zpxzs0Z7Fvjr20H3xs9NI805hU6pcIpILWXLBgoz5SjI/"+
                                 "iHKmJfw5lM/itqS3H6V25nkd3+kXpLoCbe1IZkRCR0f77CxjlSjLc4wO08UvyiUvL4m68pH6bdL5"+
                                 "IblkSS5clPFmJaPN4sEa4UCVgFYjYo2i3FnpEiJjDjDKA0bKgndFbwwICPDz8/f18cFjjf02+Y6N"+
                                 "jU1OTq5IszzHwsSw5Gkp56QBr8xNoVQqFEqFiIfO9IgHqyVzNClIAkwMGkK7jow9RAWLIkafvDP9"+
                                 "dRHlYKKbr59fapRHdKCnj89GF6qTrq52dnbW/PzcyMjIB2iW55gZeS7qPoEOXlMqlcjDXOGT0+KR"+
                                 "RnSmV7rERvmzKG9KhswDikKGit/cYV925jWliUZb+k665W33vpO/5efigEdnIkrTnH29PTy9PEjW"+
                                 "1uZE0/r6ejab/Wcof8Lx5rm4u1D0cw5woPP9ksEawd1UEb1dKkZQFl0y2wsfGX8O6cyB71H2hHik"+
                                 "SfD45PgFz65TQfTzm5RjNUhjYtfxjc0F/plRFDdXN1cXFywW6+nu2tfXt2yYlueYH+lVvrzCPvwp"+
                                 "K/8b0WAN0LwT5oigNUOGLChkYlHvBcGtSPH4fSlnHGW+QToPcqv9p06RlgavSlCZhDUikytlM0/e"+
                                 "nvduLgityvaM9rVzcHIik8mGhvrp6XuYTBbY+/+1WZZjfJ67MFK3T0w7J3nbxS5z59cnyZe4grY9"+
                                 "7B8JvOpAbmUAOvsCnX0uW6QLe85yq/zZV5wFTbsUqFDCnRWzp5ZmaVLOtJTPgLhJaRcGih1bCsNK"+
                                 "dzp4O9tv2LDe0soCa2x0o7p6YeH3ovc+x8zMzNDQK2uy650cH3nfeZBBrlTyW/ayz1jy6+I458y5"+
                                 "V12Rlp0y3hTSnsW/E8+t8OTVhMi4EwqJQM6fEy2MCgZuC19eEfSWLTH6pdxpVMCUI/Pc5vSHee71"+
                                 "hz0pFHt7ezs7W5IxxtDVhfryxYvZ2VlVb4Fq09/fD+4CAvjqwP79a9U1qbYmdTn+U+fseXdT5Yv0"+
                                 "X+Ii7DzCLfcWtKWLXlzk1UYAECv3Cyhl8C8obnJkQTLZLaRVyhgvUSFTwZ1e6rsuGLgpYtJlqBRl"+
                                 "jSprXZ8VOHpSbclkW7KdDYlkbWlprqOjtS0xQbS0pNbe3v7PT//e87ynsrKSYIo3NcVbWJi7rSfW"+
                                 "HgrgNG0XtO5hX3AU9auMs9SVz73mI2hMXSzS59aEIB0HpAv9ooFK5H62lDksHqySTnap/AyG4k7J"+
                                 "+CpDyTljyMtybk0Ecu875NnJuoMeVAdIElvQw8ZmHaDAR0db08mRojY6Moo1NsThsRrffEUgmlpZ"+
                                 "WQCHB4XQmu+HjjTC6yUzvYsXN3BuhAqad7NOaHDKnIBGDK9vy5BOd6sMNfWEVx0ken4ebCxDWOgi"+
                                 "XTL9DF14LVviCLuLkJZdkvEHwhdlSHdWw6GNzo52wGFvZ2NjSzLBY7U01fX0dKhOjmqHD/1w9EhO"+
                                 "YIB/WlqaGdEU6MzMCH6OhP6fgpQP9yoFk6hEJIOgDDezLrtxrnrDvuLXtwUdP3ArNy3kfIbcO6CK"+
                                 "i0KJzg0IbsdLpp/LeJMKqUj4pJRXEy4e75Syx1H2mPBe1lyxZtX33q6OZAcHyjprSyDQ0dXGGRsZ"+
                                 "GxupOI4X5EMOR0REphYHR0RtDdoSqK+rbWRkcDrZtjzD+eFhytKjY3IxH7JVOFDJue7Hb9zJverJ"+
                                 "+tGKdytS9LREUJ/ALfeQjHUADeesBUglfJgnaEmT0NsgY2T8GeHPuYs/kfm1Mcjj7JclLkS8AWyu"+
                                 "q6MFCYDHY3E44185zpSWQr6kpu5Kyg0KiwwJDw+NjNpqT7b78ssv7WysClM8O4sDh8+4K+m3kEeH"+
                                 "2Ce0OFfdWSVG/PvZ/KadcsE8vF5Eq2DmrRW0ZXCvurEKv+LXRfHrIlXxGu/gVflzr7giXUeEAxXK"+
                                 "odM7/Uw01L8CCEMjAxMT3B84fjp7Fny0b1/GvjsBYRFBoaGhISHBkZERqSkpllaWOCzO15N6Pt39"+
                                 "QVHA1DlnXsUGQUO8sKuA17CdUxfLqQ6WTHSiDJqKZugW99om0EZMuyKEiteyl3PJQdiTJxczlKL5"+
                                 "pqpCE2OdzRQsDqOnp6+rp6sNNCDM73ocyNyvq63p7e157DAQbNkaHp6UlLh9+7Zt2+ITtyX6+QdC"+
                                 "xhCJpslhLlXZXveO+aLtGYquvSMFhLFL/pwKd/YpU+RR4S/G5t/Ywq0KFLTsZh37AmnLlDBfK4Vj"+
                                 "7PEHZIcNZOPPi7atSw+2MjLUhcT8hQNMC11Q30CP6uSgduZ0aUlxEdSWwpyopMS4lB073kEkJCTE"+
                                 "x8XFxsVEJyTGOTlu0NZUJ5Pt9kZS6Vejuo9Suor831yKkivF8HpeUwrzJA6desw5b80u1ubfDObd"+
                                 "DFRKmUrm0+SYYPzXazLDzE5kJ5/7Pizem4gx+pVD7x2HtramkaF++ZUytV27d1VVVe5O32uMwURH"+
                                 "x6Sk7AA9oLbExcXFqK4omLIi4C9yK/RMWJzsTz6R6lyd5TZ+M0U5dBk4ZFKx+O0jiBG7wodbRhHT"+
                                 "Lij784qO5xqu/Veys3pRemDevtiCzKRT39qlBVr8pocKQlM9fGsYrZ/GYrF+resw306Mjftu9LE0"+
                                 "I8bGRoMe8fGxcBMdDU6KiAgPDw8LjY2L3ejjjYEUw2Pjg5x7T3p1HHVeqI1XCqZlEiGMKbzbCbIb"+
                                 "7g8upugaYrxImrnJ7nkZsSqItM0HgvEpfhautoYQBYiLtpYGWKGhoWF6euaXbveH/jI1NdXa2qKj"+
                                 "pbWBsv6dHCoxIrfCFRYWFhwcEozBGNqTbR0dKDpaGiRri2+DHe/meNBKXGTduar8uER2ImFsiAbZ"+
                                 "IbjjmUl5GTHH94YdjjTfE0AMczU1w+lDs4Waoa+nU1xSDG2ETqf/1nLf73PQbphMZlZmppGB3ubN"+
                                 "m2JjYt6pATYKCgkKMiXgodaB36hUR3Nzoq6ONslmXU6c/d3czYleGIyBzsFATMke/2Pbqcf3xx1L"+
                                 "IO8JwMf6WNhbGACBvj6kplZqyo6hwUH4we8NRMvPHzD4v52Y8PL0wGKMgrYEAEdISFBw8BZbGxJU"+
                                 "ZeAgEkyIZgQnBwcjjCHGUF9XS93ewvhgxLofwgjF+8IK40i7Awlx3uZeZMg6Q4DQ0tJwoVJb21qZ"+
                                 "LNayI9mHzg2QNL09vRAIS3NiYKB/VFSEKjlMcLY268zNCASCCSQKCAO9Coo09HFLIj7Gx+xQkvv3"+
                                 "WzBRXtY4rBFAgDMtLcxaWlsQRPiBEXXF88vwLINRXnYFGoGLC9XTwwPEMAPn4LHrSNZwj8dhoTNY"+
                                 "Qb/Q0oBSTTLHhroREzdZbXbAQmQhEqWnTkIUVjzLrMwBMkKYGHNz2VlZBBOcr68PNEtTE5wp6IEz"+
                                 "7uzs9HB3tbUlaWp881vLgGB9vlYjMXkXm82Znp5e8dDwvl8+vAB+FkxycDiB8urp7g7DCtwcPZoD"+
                                 "/RPKIFgRxgZQCAIB+UTro4EjVkOwjG9Xs4zBmHv95jUkDQwyNiTrY+84KJT1EBdIEcp68u1bdVwe"+
                                 "bzVbrTgnr7wJTJANDfXGRkagB2gAHVtT/evGxkYBwv/weenjzi8rgwwPw6GosfHu5csXK69fAzN/"+
                                 "ty8DStlqFn60b1fcFATIz8/LzT0Kp+q42JgVn//AA/8FaSVQga41SF8AAAAASUVORK5CYII=")),0,$$.Length)))))
#endregion
#~~< lblHyperv2 >~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
$lblHyperv2 = New-Object System.Windows.Forms.Label
$lblHyperv2.Font = New-Object System.Drawing.Font("Tahoma", 8.25, [System.Drawing.FontStyle]::Regular, [System.Drawing.GraphicsUnit]::Point, ([System.Byte](0)))
$lblHyperv2.Location = New-Object System.Drawing.Point(388, 141)
$lblHyperv2.Size = New-Object System.Drawing.Size(261, 31)
$lblHyperv2.TabIndex = 1
$lblHyperv2.Text = $TextStrings.HyperVDescription
#~~< pboxNetwork >~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
$pboxNetwork = New-Object System.Windows.Forms.PictureBox
$pboxNetwork.Location = New-Object System.Drawing.Point(15, 125)
$pboxNetwork.Size = New-Object System.Drawing.Size(40, 47)
$pboxNetwork.TabIndex = 0
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
#~~< lblNetwork2 >~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
$lblNetwork2 = New-Object System.Windows.Forms.Label
$lblNetwork2.Font = New-Object System.Drawing.Font("Tahoma", 8.25, [System.Drawing.FontStyle]::Regular, [System.Drawing.GraphicsUnit]::Point, ([System.Byte](0)))
$lblNetwork2.Location = New-Object System.Drawing.Point(72, 141)
$lblNetwork2.Size = New-Object System.Drawing.Size(245, 31)
$lblNetwork2.TabIndex = 1
$lblNetwork2.Text = $TextStrings.NetworkingDescription
#~~< pboxControl >~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
$pboxControl = New-Object System.Windows.Forms.PictureBox
$pboxControl.Location = New-Object System.Drawing.Point(331, 14)
$pboxControl.Size = New-Object System.Drawing.Size(39, 47)
$pboxControl.TabIndex = 0
$pboxControl.TabStop = $false
$pboxControl.Text = ""
#region pboxControl.Image = ([System.Drawing.Image](...)
$pboxControl.Image = ([System.Drawing.Image]([System.Drawing.Image]::FromStream((New-Object System.IO.MemoryStream(($$ = [System.Convert]::FromBase64String(
"iVBORw0KGgoAAAANSUhEUgAAACcAAAAoCAIAAADyl3S3AAAAAXNSR0IArs4c6QAAAARnQU1BAACx"+
                                 "jwv8YQUAAAAgY0hSTQAAeiYAAICEAAD6AAAAgOgAAHUwAADqYAAAOpgAABdwnLpRPAAACwVJREFU"+
                                 "WEe1WNlTW9cZT5/y3v+lD31p2s70oW0m6XTaTps2tpN47Dh2HGMb2zgOGMeA2BcLJBASAiS0IgmB"+
                                 "dLVc7buulqurfd83JKENBAhs9XiSqZdgK02nZ+5o7sw5Z37f7/t+33L1s3A4/E639e677z579uz0"+
                                 "9LTT6XQ7++P2Aerbl8loNJksJpMZRZ2RWDSbzSaT6W6Xuuy/8/b9TDoqlSlTqWwwGHK7vTa7U683"+
                                 "yWQKqURqMBi9Xl8iEf8JFnRBtZgNFkc4V+tkiu1cqV2qtRr1+uF+o14ux8IxxOIENjGZHBaTLYch"+
                                 "l8sRj4cikUhXO96GmkhEZXI4nO2EUu1g6tifPPHE265I2x46tviO0fhJvNip7HdOOp2np08LxZob"+
                                 "i6hVZkgoEQm2FDJpwI35An6Px+N2e1wu7GVT3oaKoQ6NyeOLH4Uy7VD6yJ849MSOnZFje+jQ7DvS"+
                                 "u1saV0vpbMG2FmRuSW1HOt+xPfHUV3gWKp24EnWTZ1eLRHUml9mM4Gfnw+HQf4DfiBqPJ2xWxGgv"+
                                 "upNPo9ljBNu1uktWX8XoafkTLZuvqUFbauxIiR3JbIci8wHf0GRrm0xVc13eoEANiri5AR+wVIdi"+
                                 "e8ef6kxMzwFldEf1+71yhcXg3kdjp85g0+iuRgpPdzRJk/dAYcqI1Dm7t4L6qxpkV2be42lbW8YW"+
                                 "z3BAg/fJ4gZxu0kQ1vH86iSnuqo4FEntWp3u5XifzRWc8HkcW3Kvxn1qDZ5a3RU0UAonGyRezBbc"+
                                 "F+lKid0OghUfEtx6V2N108+C97S2XZEmI1DlN2R7G4rK4lZlirM3xqxzTW0Gi+9wWLvHNRQKKZRa"+
                                 "jroqtR/agi2RJqWw5Kibfsh6iIbqRkdegxS1jrxAVXSGjydoEQhpDJN8LFXNglVI7MCGJEvbTvU9"+
                                 "iUxtnsiRIo/LDwZf0fXZXHP5KIsLr8uPtk2HiLcq1Bax+CmZnzB6D+mihNy8C2nSDCgB6TJkXvAJ"+
                                 "J5fMt1XWPGSoivV5PDMstBwLNPnbs0GC8KnC6JJLtuPxWBeuIN3sdjWRE16GmlvGQ0+givpLSnN+"+
                                 "jpG1+fa3tEVX7KneURyiRE2+9jI/rnY2Qp3DWOc0XGwqrWV3sMyFU9/gsQFyXmE7ZbF5LofltQw+"+
                                 "g2syGYVEO483TkmifQNa/RrvXhdn17aTAkNL56hozFmWOA7p8yZ3TWHZ650JYYXjUKdT7XSc8dqn"+
                                 "D+yDSwmGJHV9ItxDbFkDLT6TUS6Xu6O6XOYFOjayUSXs1DW2ksLZ0nvaeHba6G70zvjmeUXImB+l"+
                                 "xjbhdO8Uem0mHyu0C/uHucaRWF8YIEQ0nqfz7My1sdga3GEL1Eql4oel6nWu2UzGatb0LZSH6A2e"+
                                 "prnKjzOgKFeRvohL0KAskZ9Ro0dcaaKPkJLbW1+OuccZZdxKiC0rMMRpIjshMeRB4G9P+noX9pBI"+
                                 "B4+fy2TOaBWvo/p8KG3TfptYHqDW1qDCw6VU/1IKz4ieH929MpnrmQj1jPv6prGlzRSREz/f71vZ"+
                                 "2e2ZTkjsJxxp+soQuiEvjZCDV8ei07xnO/oQj02ORqNduEajMbdD/4CQujhRujxVmGakVsQlJVK9"+
                                 "OOjpWajcWXr+3CLufYWvfD6a/uzb8AynLtaW1NZdkiDPlWaYcFmNdWbp0ctjWb6hQyIRyjn/mZ3g"+
                                 "Fa5+n3uDp/tktPLRcPmTseKnuOS1Uf9ng+jFsey1ufrl6cqV6crn0+UvnpSvgge/R5eUzvU7cJTo"+
                                 "hjiFW4ktsqOPiIEPetBLk41FUZVBo4C874L6vGIFbeMU7wcDrb8PVf85XDmHK53Dlf8xXLk0ke/D"+
                                 "hwdIkXtPoh9/m/vLYOmvj4of40ocuDDFzFFlRyuCxO++cDykFPrn3b+5EftqoU1iGAIey5u63guu"+
                                 "IABcofjzqfr73xx8+LD+4UDt/W9qf+4vivWpbCYbTuZDsYzZhghFEipd9dlQ4YP+2qXhaM8Eevmx"+
                                 "c2bdT5fuMjQn5/rdf7xfuEesczibYPZ4U6N9gZpMRMaW1L/sOfnt3fZ7d9q/vnP8aK1RyBca5WTA"+
                                 "7/RiqN2OWBATajfb9EIhC98/Lvvbo8qf+nd/fy/1YX/qo3vuf913/qHHdW50n7GdkkDCWOyVenRG"+
                                 "bQJEZTIJrLGw5Vk8b//qbOHKZN4VSyejiFIFxyLRSDDkcWEWs1WlUjoctkgEg8TM/inlTULl5nz1"+
                                 "q4XytZnyxbH8pYnil3OHYsikVknOVO932N9zTSaSOzuQEhY5Tcpq3pfKBEKpXD4b57AZO+IdqUi8"+
                                 "QiJRlpb4HI4bQ7VarT/gS8Z9YHIZWo7j2HUcfe8xbe/xevUBuUIWHfB5nGg08JY55jkqiLlOp7cg"+
                                 "9tm52cmpCYlkB1yTwVKj2TiCG0lFY/lsWiWXbfP5ZCLRaDTaHXaP1x2NhZxWeGrFTFfvr0rqK1Bj"+
                                 "WVwbYx3o0QKDvpRIJLqgggDAsEKpVtZr+/5AiMPlDgw+4m/xxZDo5u2btWqt2WyGgwEMRdWwXKfR"+
                                 "JJIJk9nscNokEsEcWW7wdKSOthQ53DIcyLwdLp+L2V/ppmdUCUAUc7n4fP6Dr3uHJombnFWdzhAK"+
                                 "xyyIlcPj4kZHC4U8GL7rjVq1Wm3W60wWC3NjZotZZ9AbDFrhjkGmjmpte2b/qcH/LJjrLM4vZDKZ"+
                                 "t4+J7ySTSSuCsDhM4MzZZS5+Ye6LWw+oVIpIAq1v0Amkxcnp6ZOTNgAGi8lkPugf1JqtMpUSyCoU"+
                                 "8e/uFtOJSCgYVqtskMq9LdbAsLz7ZJpKpoDtLhfqwtxarZrJog3NEomL8+QVMnWdSmMxHg8PXb12"+
                                 "rf/hQG9v74Xz58VSRRalVWi/km4zpBLIrFM57LZUKnFy1Gg1awTCfKvVBF4BngF83pivIKhGk5FA"+
                                 "InI2uSjmjscS/oBfqVTxBLw1+jp5jbK6QVteWxmbHKesUYXiHbFUnoIpkXs/xxyqUeBPKKEwi7aM"+
                                 "wqg/LIeVw8M4rUbjQlFQCdPpdKVSOTo6Ar+vWfBcwz6fTywWj47jhnHDtA0arFRaEZvP73U4XEq1"+
                                 "ZmtbuM6kAWwac4PO2hAIhIjDjjis/lB0RrOnt2Xns3fek/7Ch/hWqdSlxcUNOnN5eXl1dVXAE5iM"+
                                 "Bq/HA/T8GvXv8zUYDOr1epFItLS09HDw4ezcDHuTI4dhixXxgubn9qh1WoFQCFDXGDS2YHNre1uv"+
                                 "U6N2axDzSoMiKkJxIa7x8bFlEglA4kFfnZubmpqanp6m0+kCPh9we5nui4oIxAy8jWEY+EaQiKH7"+
                                 "D+4PDj2mrK9yhDyJTIZiWDKVBgf0BiN/e4vJZbO4HAiCgJAxB5qKZ2AYHhoaolKpT548GRkZAe/j"+
                                 "4+MMBmNxcfHChQsgy7tPpt+ZBhKAyWKOjI1Q1lcoays0Jl2hVYMJPpPLx+IJo8Usk8vEEpFMAQMx"+
                                 "Dg8Pj46OzszMADzAcm1tDXiOTCbfvXtXqVR2n5tePgEckMvlgDpAmoJPN8oqlUAi8LcEFgRxedyh"+
                                 "cCQQDIIXs8l4/fp1QG52dvZ5RAUCQH1+fh6Hw1ksrw+IL+pw1wwDvgWi0Ot0MpmcxWZNTU4RiARY"+
                                 "AVsRq8fnVSjg+/fvb22BcG8DihKJBOCB0CII0n2W6Ir9XeyB5lEU1ag1wKtjozgRJLbarSCWz7uC"+
                                 "3y+VSvv6+ohEosvl6t5fu0L+8ADoZaAB7+xsT05OkkgkAHbr1q0bN25sbm6CPxK6VP+fgPfalXg8"+
                                 "DnLParUCum+alX6Uhv93U/7vXP9bE/8NQm0P5i1+RVkAAAAASUVORK5CYII=")),0,$$.Length)))))
#endregion
#~~< lblControl2 >~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
$lblControl2 = New-Object System.Windows.Forms.Label
$lblControl2.Font = New-Object System.Drawing.Font("Tahoma", 8.25, [System.Drawing.FontStyle]::Regular, [System.Drawing.GraphicsUnit]::Point, ([System.Byte](0)))
$lblControl2.Location = New-Object System.Drawing.Point(388, 30)
$lblControl2.Size = New-Object System.Drawing.Size(243, 31)
$lblControl2.TabIndex = 1
$lblControl2.Text = $TextStrings.ControlPanelDescription
#~~< lblHyperV1 >~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
$lblHyperV1 = New-Object System.Windows.Forms.Label
$lblHyperV1.Font = New-Object System.Drawing.Font("Tahoma", 8.25, [System.Drawing.FontStyle]::Bold, [System.Drawing.GraphicsUnit]::Point, ([System.Byte](0)))
$lblHyperV1.Location = New-Object System.Drawing.Point(388, 125)
$lblHyperV1.Size = New-Object System.Drawing.Size(171, 16)
$lblHyperV1.TabIndex = 1
$lblHyperV1.Text = $TextStrings.HyperVSettings
#~~< pboxComputer >~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
$pboxComputer = New-Object System.Windows.Forms.PictureBox
$pboxComputer.Location = New-Object System.Drawing.Point(15, 14)
$pboxComputer.Size = New-Object System.Drawing.Size(39, 47)
$pboxComputer.TabIndex = 0
$pboxComputer.TabStop = $false
$pboxComputer.Text = ""
#region pboxComputer.Image = ([System.Drawing.Image](...)
$pboxComputer.Image = ([System.Drawing.Image]([System.Drawing.Image]::FromStream((New-Object System.IO.MemoryStream(($$ = [System.Convert]::FromBase64String(
"iVBORw0KGgoAAAANSUhEUgAAACcAAAAkCAIAAACFVbTMAAAAAXNSR0IArs4c6QAAAARnQU1BAACx"+
                                 "jwv8YQUAAAAgY0hSTQAAeiYAAICEAAD6AAAAgOgAAHUwAADqYAAAOpgAABdwnLpRPAAAAAlwSFlz"+
                                 "AAAOwQAADsEBuJFr7QAACxNJREFUWEe9l3l0U1Uexy/rKAOlQFsKLRUKbiAqowMuqDAedVzAEVwO"+
                                 "MMjigmNVxEFHLJS1A6ULbWnSNM3WpFmaZmv2Jmn2tdnT7EnbdKEbUCg6CGq5cyNzqHRGBv3D33nn"+
                                 "nfveue997vf7u/e+35sQi8XAbx+I+tsHuDXSZrNFQs5EPBAOesLhQDQaicWiiY7Ovr6+rq6uXz3c"+
                                 "W1EDfj+L1bRzF+arA3UMpkTQJNfrlUGvrj1mSyT8nZ3eaMgbDgVi0WiiK9Hf39fR0XGb47gVNRTy"+
                                 "4XCc7BzM5GnM6SmCmRnS1HvkS9co1m3V7Pq741ChhVDfqmlx2+xep8vn9jh9Xnsw6AoGvbFYoLe3"+
                                 "IxqLxWOxdnS0oyMZN8Z0C2o8EgkVlTDSZp0Gs5hgvgTM14MsD8jsBHMGwYwRkHn1jT2jYu3lOvEI"+
                                 "lncJyxkki3r46gGx9rxEMyjTtRutEZ+/PRTpjEQ7Ll68mEgkvF40oGT8HDXe3d3lcjs+/Zw6ZXIV"+
                                 "mMUA6U0gUwmyTWCRB9wdA0v6frd0pKAKojg7Ajv6YawXBrqhJz7qiFwzBq8pPVfkrZdk9ksiy3fl"+
                                 "nDOj8IrVYmloaPjfVORDOBwymPQul8tkNGzdRgQTysEcOsgQgHkKkG0AC1wgNwIW94BFw2/svpo4"+
                                 "A3sHYWc/7BmCfedg3wXYPwwHLsC+YdhzDvafh4nzsEE7DK+NqNUtEol0PHVoaNDrdSsUzW63a3Bo"+
                                 "AInwtXnXbySDO0+DVCpI44HM5qTJOU6wKAwWJ0DO2T9u+NYTvoaowU4Y7oShbhjpgdEzMN4HOwZg"+
                                 "YjA5AtSQGS/CHy4IhSKtVjtG9fl8ep3W6XAMD59NWvZjXLhwvkXR8tbbdatf4k1LIYEMLpgrBVlq"+
                                 "sMAGcvwgtx0sHExZcYkiGO08A11h6IpCTwy649DbAX2dsK0LBhKwfQDaYlBouPDd12fq6ursdvt/"+
                                 "qG6v+x/79h0rLFIpVMkknT0bjUa9Pl8wEGCzRS/+hfz+HmPafDJIbQDpYjBPDbLN4C5P0uSFPWDx"+
                                 "uS9KrwZi0OqFJi+0+KE1AG0haA3D1ii0R6C/C8rc10T6gUuDHVgsdmwO97T3rH3g1fXP72QyWGii"+
                                 "O38Mj8cbjUSIJMHTz+Lzj9iWP04Dd5BAGhdkykCWAeS4waIQWNwNsgc37L5idkOdA6psUOWAGhfU"+
                                 "uqHGC3U+qG9LCqVqRhXmvv6OUEVF5Ri11zT0zHt3P7fxFQFLFIuG3G63w+FA52CgjUSSrHyKmH/Y"+
                                 "uGFLE5iKslsP5jSAuUIwXwMWOMHCEJjXuWLDoNjwg8p6TaC+JtKNik2jEhOUWqDECuWtUO2HeOFV"+
                                 "vb0v7ndX42rGqA6bcXd75pHosyKWJOgPoi0Qhd3ucLnsuBruI6uIH3ws3bZLNi29CkzDgzn1IL0R"+
                                 "pAuTMytLB+ZaM1a0YWjDfMW/qPzL9U1X6JLvGJLvmbJRlhyyZZDbAk+Rv7U4u732ViKRMkY1q61U"+
                                 "cQXNdFzMk/p9bUaTyWwyWW02i0l/+Chp6SP4N7fy3twuWvIwEUw7DeagydwAMvhJq5HiTPPUXGd+"+
                                 "8SCNN4KhjVTTv8EyL+MaruDZV2sbvydxfiDy4DHMlVZPp81mYrHYY1SLyaTg6unEJh6b7/e5NVoN"+
                                 "mt9ms0WvU76/q+qeh2rXb2S/9Brr0afok1MqQQoxuXbT2SBdAObKwXzt5Czzu190Yyjnj1efL6q5"+
                                 "UFz79UnCN6Wky2XkbyvrrpRSRg9WjPhDMY1GJRQKx6hIm0ajozM4PK7A5/MolAqlUolu6jSK117H"+
                                 "5C6tXfMcddWThD+sps3KxoDfY0AqBaSxQNp1n+WT0tQvb4screj78uTAV0Vn80vO7S+7WHBq5GDF"+
                                 "pWOYb/YWXT1SOZToCQsEXJVKNUa1mcwWg5PDEQoEIoetlc9vkkglBoNRr1asWl1y133YRx6vvf8h"+
                                 "zH0rsOkLsRNmVIAUHJhdB9LoII0NMoQTZ0lXrfN8eqjzw/zEB/m9eQcGPjo48PGhoU+OnPvs+PDO"+
                                 "fV8fr+rq7/czmYyffo6A2WSx2rzNCq1MJjcZ9CxWA4fD0em0zVJhRnbh/CWY3Psx2UvK5+aUzs4p"+
                                 "nTSzFEw/DVLwScWzmcmZlcrNfUy/KS+wKS/05ofRTR91bPmka/OnvX/d0/vul33r3x8sw8XPDgUI"+
                                 "BNJ4qq3Vp2zWyCRyjbqFxmCgPVqtlNfiqGBiwYz00jkLSlPnFU9PL7pj9vGJKUVgeilIqQKpNSC1"+
                                 "DqQzJqSy5j7Q/OfNjpe3ul/Y4ntxW/Dl7aFXdsTW7Yxv/FvHM291F2P9/f2e6mrcOKrZZvMqlEic"+
                                 "HCWVTCY3stlyqeDoMXJWVtGstOKJ00+ASUfApANgcgGYehiknACpSC4GzKxNWp1KS1koWPmCevU6"+
                                 "48qXbI+vdzz5qnv1a56nN/rXvO5f+Uqwhuzu7nbU1BBuopqMJrPZKZWqZNJmuVxOqK3l8nhsFrUW"+
                                 "RyASxQSSouCw8I1NdU88gV+UWz5laiEA+QAUAFAI7igFM6vBLNKUbNa9j0mWP62470nV0tXaZWuM"+
                                 "y9daHvyT9YFnbQ8/b23g2kMhIx4/3mGzXmcVCZulEoVcJiWgDBAImIry0yWlWPxREvOwpIlot0jc"+
                                 "HptMZqzEKA8cFr+9lbl8FWXmXMyMO8umTDo1cWrl9Oy6efdy5y1rynpYvOBBWc4KxV2PtmQ92PLQ"+
                                 "WrVU7my1qWk0+k1aLSZjs1zdxJfIpc0Kubwah0PbNJlEqqNQhQI+lykoLy7DVpbTqUQRn6YU1uuU"+
                                 "LLmMxWKI6fWmmmrj7r3qtesEK1axly1rzMxtnJrRMGU2Y2o6K2URZ0Ia99G1ErXWqVHL+Xz+TVSr"+
                                 "ySTgi3mcJplEplapiURiU1MT2hT7+/vj7XEGk/nZnj3YamxJcRmNTNG26AQ8ARmPJ+IqCLgyDhPD"+
                                 "YVM4bDaPL2IytfQG32f7HVveMa/boL1npRxM5q9ayzMYW6XiJo1WdzPVYm5o4FKpDC6HZ7faBAK+"+
                                 "TCYTCAQ4HK7w2DEigSCRSOgMBrLI7nRefzIeiVnNVjKJUlZUVHbyJLaylIzHCLg0o17SalUYTXqt"+
                                 "1iNuDp8sj2HxHofTyeU0jqsdgdvhRGPFYPD0enooGBSJxDQabe/evadOnfL7/WgZ1dSMfSvQw40c"+
                                 "DoVEQqurjkotLinZ+/nn+fv3Hzl0sKyshFlPl4iEIpFQ3SI36JoDPk0g0Go16+vpNyU1Wa15/W2H"+
                                 "jxzFEygul8fn8Wzfvj0vL2/Hjh3I27LSUqvNemOYRqORxWLpdLoWlQrlCYE5jY1MBuM0BlNw6NCH"+
                                 "eXmbN2967513/llYSKPUoV0XLURkLPpm/3QHHqtgTCYTg8HEYKpQY5wVNy7b2trQukId0C6NdlS9"+
                                 "Xo/aKCwWC/paSKVSlBQqlVpQULBv35cnTpzA42s5nMb6erpKqfzvd/6fP44bDxgMBpRvBG5paUFt"+
                                 "NN08Hg8aCsoCqoaQDWgcarUasVGCqqqqUIKQMTdK0fF5/Tlx4+4jJFKJkMhhpA8hI5FIPI78i6Ea"+
                                 "Ft1BdQ8aDeqA/EQwBK6vr6dQKKj/r9eKxF0XhFxF4pBKREU/NgiMSkxU9KDSHvVBHVA3tPbQJwRJ"+
                                 "r66uRjd/PRU9+WNlg5aPE4kLBoPhcBhVk+iMdLe2tiIquhSLxVarFfFQIPbPGXm7eb3+PKriUCKT"+
                                 "tVwwiC4RCclFYCT9+s8TyoJCobjuyi1y98uo6EXo7QiMSKiNzigCgQCyASUVNW5zlvxi6m2+99bd"+
                                 "/g2x1w7VAwZdmgAAAABJRU5ErkJggg==")),0,$$.Length)))))
#endregion
#~~< lblNetwork1 >~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
$lblNetwork1 = New-Object System.Windows.Forms.Label
$lblNetwork1.Font = New-Object System.Drawing.Font("Tahoma", 8.25, [System.Drawing.FontStyle]::Bold, [System.Drawing.GraphicsUnit]::Point, ([System.Byte](0)))
$lblNetwork1.Location = New-Object System.Drawing.Point(72, 125)
$lblNetwork1.Size = New-Object System.Drawing.Size(171, 16)
$lblNetwork1.TabIndex = 1
$lblNetwork1.Text = $TextStrings.NetworkSettings
#~~< lblComputer2 >~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
$lblComputer2 = New-Object System.Windows.Forms.Label
$lblComputer2.Font = New-Object System.Drawing.Font("Tahoma", 8.25, [System.Drawing.FontStyle]::Regular, [System.Drawing.GraphicsUnit]::Point, ([System.Byte](0)))
$lblComputer2.Location = New-Object System.Drawing.Point(72, 30)
$lblComputer2.Size = New-Object System.Drawing.Size(243, 31)
$lblComputer2.TabIndex = 1
$lblComputer2.Text = $TextStrings.ComputerSettingsDescription
#~~< lblControl1 >~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
$lblControl1 = New-Object System.Windows.Forms.Label
$lblControl1.Font = New-Object System.Drawing.Font("Tahoma", 8.25, [System.Drawing.FontStyle]::Bold, [System.Drawing.GraphicsUnit]::Point, ([System.Byte](0)))
$lblControl1.Location = New-Object System.Drawing.Point(388, 14)
$lblControl1.Size = New-Object System.Drawing.Size(171, 16)
$lblControl1.TabIndex = 1
$lblControl1.Text = $TextStrings.ControlPanel
#~~< pboxLicence >~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
$pboxLicence = New-Object System.Windows.Forms.PictureBox
$pboxLicence.Location = New-Object System.Drawing.Point(15, 242)
$pboxLicence.Size = New-Object System.Drawing.Size(39, 47)
$pboxLicence.TabIndex = 0
$pboxLicence.TabStop = $false
$pboxLicence.Text = ""
$pboxLicence.BackColor = [System.Drawing.Color]::Gainsboro
#region $pboxLicence.Image = ([System.Drawing.Image](...)
$pboxLicence.Image = ([System.Drawing.Image]([System.Drawing.Image]::FromStream((New-Object System.IO.MemoryStream(($$ = [System.Convert]::FromBase64String(
"iVBORw0KGgoAAAANSUhEUgAAACcAAAAmCAIAAADInRXHAAAAAXNSR0IArs4c6QAAAARnQU1BAACx"+
                                 "jwv8YQUAAAAgY0hSTQAAeiYAAICEAAD6AAAAgOgAAHUwAADqYAAAOpgAABdwnLpRPAAAAAlwSFlz"+
                                 "AAAOwQAADsEBuJFr7QAACktJREFUWEe91wdUU+ceAPDna21raZ/FWtvXVltHLa2j9ahVUYuCgChY"+
                                 "qwIuVBAosgRZVtDKUKYg20iYAcKQHQghgSQQSMggjJCQQRiBgGFkQAIJId8jheeq9emrp/f8T07u"+
                                 "zf/7/853v3FvFnG53H/8/cec+mfHQ0bUcJu7iOHWT3blEO+8IPNVf/rHcxsIGNARprtswEk+4jQl"+
                                 "dp186DJAs2xFubxq9T/Lf47a35Y4wnKcFLn3d9nVVx1pQBweYDvNTAbyqSfwpV6vBX5WFTDhI0yn"+
                                 "iSF3Ot46LtAg9LptWsLV2tyzY3w3+ah7Q4FFXVXmX4efVUXt12T8i8wG6zv++yJCblQhsfwePrW+"+
                                 "mFNrreDZ0MtMS7J+e82qkJk3Tj0rIp/IjvoxPNgXhyfPkfPBRjtLcEadDwyykz1eszraFiluOELP"+
                                 "N4z5zbKktPwROfeFU+cxXrmTAduWFuf8ApVBr28hVbVT0e00PJ1CfKnZNNrsM4o0QCcZJN8NmieF"+
                                 "XZX9HVk8YjijyHCodCsne0Nlgj6tLu6P5dqpGCo2nVafTSPktjbmthGLmwnoBiyagEf/MfmpcRU1"+
                                 "ug8Vb8ElbX1w7zyrMUhI9xRSbUfptmNES17hd/y8jT3w9WzYmk74zlbUzSdrEXHFmKJwJrlgbAgn"+
                                 "E+ZJeu9Ke++MCTJ72BV4VGYpPIFGJT2Z/5Q6iLXrg6/rKtzEazomGfCYFvmqBr3VvMvyptNdWd+y"+
                                 "s1ax0j7rSPmsM+UjfPKm5lrofCESvgQJ9+d1PphWFM+MOKoE+zQPt2rEG9Uj+qphz7GOaHzaxZzY"+
                                 "p2bDY3W4M45XuouT8akArS8X3dRMRgGBL2BeAnQ7Xr5pWeAK4l0dfIQO5ta79ORlJMgqclXQvIor"+
                                 "vslrjVNJIqfomxTM5WrZ10B9AKgtNBPbZtk/zGCPiHP0q/1WwROvPerugiqkewjbjrFL9Tog73NL"+
                                 "Nkq5rhq+N6DZqhutlVgzbvb3cB/ddLc3C66+2wTZPET5lVvvRUFHzlWhYWHtdcEKabKcskGcv3i2"+
                                 "b8eU3J1Y61OUfI5be1bZbiwr/loU9QHP5410Jz0kEjEP/64izUcYFv1dntiE1fiwRXURy9mFB6dJ"+
                                 "Z6drzcbKdgoKvumDr25NXUtMNeDU+UwON4HZsV76HTIqTKviUkV9mTNCR2m5rhK3baLXuiz99C/H"+
                                 "9B2P7sy+fXoA5yerMGYHv8cNWFziuvzurYWtTav21BwYppq0V1sUBX5RcmM5JnQtH24gQR0UVRkP"+
                                 "VJr1VlsLiF5SLnRWSgbgIQAijZLW03yZjArRqg1wiQg23bp3ovgLTce5QcqpALvNNpbmsGwYCZHY"+
                                 "Vx8zgb3MjlvPjF6DC/42wMkYha5d6OsIzVFMOzqIM+uscmhH+PbjrkrpweNtkWPsVNlgpULcplJx"+
                                 "wWw/0HQB0ABAtUZV2kNxmlfpjTmS7rAp/HcTxZtnSQ4SghvU3yj2xnl2I6y72n+w4bacGsKDGXJT"+
                                 "dlCitvic3JRyP2VBHWu2VXXaKdqdFIOFakWrWoFTT5FU03S1uhVoKMqJGslgmnI8EagzAIABANeo"+
                                 "snoo55tR2tnURiqSsIOVRKOpahMl+sQM2UOA8WtJOcyE7OUVXpB2pMjot3kPfurJN6bEf+f58xcx"+
                                 "UVH/7Wv9aWWzlYKmVQHA/156LtIBgGrUcWySZ2nyqV66F5hNACB5LjSquB6KJfn3JUtuLBfzU2eZ"+
                                 "rurGM+rGQ2q2o0aYNNUSICF4KrogSm7CMPYip9B8GGlKiF3raLIiJkL7nNaOq6ju5DTOQk6wkfdB"+
                                 "wCwcaEKB5rb2E4SrlWHIAhd/pyM0nBvQxAAQDTTRGlX4WM81VssDMhFHJaGlvRUztCvKRtPp5h+m"+
                                 "O8xn+B6zvTdmekKmmP4ijCUPvrevxFBas7vyxuenDL5MSr6/oA6jjytqDkxgLSf58UAFA6rb2lCG"+
                                 "gtlI+WR4Cczhuv1uQpH1zLT2ClBFaNQZsnESnUYgNlQNsrDi5nhplZUCtWm85JOh3LWjiF0SzAEx"+
                                 "0lCYv6M7/fu+nO0SxI/8tK0R1p+eOrQHgcIsqELUTxKEvhhtLuPdAfJUIAvUxmQwmAkTdAekR5iH"+
                                 "X1xfn3VwShoI5mA5ZELW2UKtr0Xmckj5AkwwP8dSnLN7BrZy4t4H/dHLehP/PZjxzTBs83DmhtGC"+
                                 "7bIKQ2HG3gfO68/tWel15fLj9SpAHh4p2TKCNJJyQoAkCYwFgNEAIL4BJoP62z1ybu1Jv/I1G2Wl"+
                                 "lt4EE/Fy6RzZgKnM6cSl88qusDKNh/K3KXM+V8e/MxWnK83dIykxliP2K6qN5agDkyizQZhJ5ZUN"+
                                 "rvs/PvmTYXll9WO1F2EqLNAbqtgl43kDcQQY8gNCPzB0dc5W9HhTYabo8C0jVFsgjZqa4M31EoXI"+
                                 "asfcY8DtO6A7R6s2zNR+rMp/ix+2CO2zBBVryqz0HMHbDlYfombsqovcmOOy5rLJp5Zmu+5BFvbt"+
                                 "hTvMrzDqyV7VV/a9jO8GRm+BXi9t9HmDAV9Nn9cg8igDunOC5jitEFAp9cjyDCYO2pZ5hhj3LS9/"+
                                 "LSv1w7Zbb1ICFt2/+E8bk3dtjur5/7I9wn19qONy7+PvOR/SvWD2lcOFE7Ac+KNNeEHtLtnNTvuw"+
                                 "u2ijtNsPPAwDHDdtcN0Bz0PT5TJJOCWtO6ZkuLe2khFFKSxcaleBe3PC/r6ybR3pH4We0LHXX+ps"+
                                 "tOzk/s+tThyKjAqPCfP2cz3qbn/Qzf6or+elxOR7uHrCk+SCyir+sS3pbQ5cT8oLAUPRgOkEWJdA"+
                                 "l4s2WM6aLufZbi82u6O2Oo+FTWbn2zKydow37VM2rS//dbHV7tUODk4xsXfvp6Q1NlGeqf5np9r1"+
                                 "yibGNyatastYJ+Hd1QiTZzsuzoWaYadsOzdJsZbQLnBYNDymiFsPYeacpSfrCQo/G6nQZSa9EWm1"+
                                 "5MJxs3IU9iWxR2kLT7pmVFhDxj5+07Vhsp+g8kB36T5Gvj4Bur0OatZOwxDQ+TxsPAtuQ0/SY0M/"+
                                 "IVz/sOjCe7EW79jvWeHv40Ekkf9PVbu31aUiYe5F8cezwkxSb5snhVhDIl1IhGpibR6nLrYz+3hL"+
                                 "4lcP4R93xOjc+nmZo/Fml+NGng6n4Xm5r0oujOujZk2EGkRpdmkxvKKiDIXBNTU0kTC57JpIdt7p"+
                                 "FshKYfFSRdk7dQFv2pmuuXbVF1FZRSQ+9Tb08vzz/+fMt6dgYGxkKC/fkpG6uhOqy4IsoUe9lWKv"+
                                 "42i5Oxf+1Ep4ee/xLvHcNmQUlFXm35n2MydtTX/u+9VBSxOcPwo6v8rTasN1n0sEQuOrSs+u1+er"+
                                 "hb8yUg7TIr8cy9MZgC4OsFrqcMYwNPhaCiSxpgb1V8hnx/XJWuQ0O178OlGWzkzFG+SgRaf2rwwM"+
                                 "DiM10/6i9z/ucEO8NSfkXyPQt3uTlsSdXGRluhVRjX4t5Iv6mhftGmGhe9/qE8iZdbb7Vjg72rwu"+
                                 "8kUqDoO8ecXZ5YyVr6vTbwFXq6qq/g71NRp/LPUfSYR4DzQt1xoAAAAASUVORK5CYII=")),0,$$.Length)))))
#endregion
#~~< lblComputer1 >~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
$lblComputer1 = New-Object System.Windows.Forms.Label
$lblComputer1.Font = New-Object System.Drawing.Font("Tahoma", 8.25, [System.Drawing.FontStyle]::Bold, [System.Drawing.GraphicsUnit]::Point, ([System.Byte](0)))
$lblComputer1.Location = New-Object System.Drawing.Point(72, 14)
$lblComputer1.Size = New-Object System.Drawing.Size(171, 16)
$lblComputer1.TabIndex = 1
$lblComputer1.Text = $TextStrings.ComputerSettings
#~~< lblLicence2 >~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
$lblLicence2 = New-Object System.Windows.Forms.Label
$lblLicence2.Font = New-Object System.Drawing.Font("Tahoma", 8.25, [System.Drawing.FontStyle]::Regular, [System.Drawing.GraphicsUnit]::Point, ([System.Byte](0)))
$lblLicence2.Location = New-Object System.Drawing.Point(70, 258)
$lblLicence2.Size = New-Object System.Drawing.Size(263, 31)
$lblLicence2.TabIndex = 1
$lblLicence2.Text = $TextStrings.LicenseDescription
#~~< lblLicence1 >~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
$lblLicence1 = New-Object System.Windows.Forms.Label
$lblLicence1.Font = New-Object System.Drawing.Font("Tahoma", 8.25, [System.Drawing.FontStyle]::Bold, [System.Drawing.GraphicsUnit]::Point, ([System.Byte](0)))
$lblLicence1.Location = New-Object System.Drawing.Point(72, 242)
$lblLicence1.Size = New-Object System.Drawing.Size(171, 16)
$lblLicence1.TabIndex = 1
$lblLicence1.Text = $TextStrings.LicenseSettings
$panelMenu.Controls.Add($btnHyperV)
$panelMenu.Controls.Add($btnNetwork)
$panelMenu.Controls.Add($btnControlPanel)
$panelMenu.Controls.Add($btnComputer)
$panelMenu.Controls.Add($btnLicence)
$panelMenu.Controls.Add($pboxHyperVDisabled)
$panelMenu.Controls.Add($pboxHyperV)
$panelMenu.Controls.Add($lblHyperv2)
$panelMenu.Controls.Add($pboxNetwork)
$panelMenu.Controls.Add($lblNetwork2)
$panelMenu.Controls.Add($pboxControl)
$panelMenu.Controls.Add($lblControl2)
$panelMenu.Controls.Add($lblHyperV1)
$panelMenu.Controls.Add($pboxComputer)
$panelMenu.Controls.Add($lblNetwork1)
$panelMenu.Controls.Add($lblComputer2)
$panelMenu.Controls.Add($lblControl1)
$panelMenu.Controls.Add($pboxLicence)
$panelMenu.Controls.Add($lblComputer1)
$panelMenu.Controls.Add($lblLicence2)
$panelMenu.Controls.Add($lblLicence1)
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
$FormMainMenu.Controls.Add($panelTools)
$FormMainMenu.Controls.Add($groupboxInfo)
$FormMainMenu.Controls.Add($btnClose)
$FormMainMenu.Controls.Add($lblCoreConfigText)
$FormMainMenu.Controls.Add($lblCoreConfigTitle)
$FormMainMenu.Controls.Add($panelMenu)
$FormMainMenu.Controls.Add($MenuStrip1)
#~~< ToolStripSeparator1 >~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
$ToolStripSeparator1 = New-Object System.Windows.Forms.ToolStripSeparator
$ToolStripSeparator1.Size = New-Object System.Drawing.Size(149, 6)

#endregion

#region Functions

function Main
{
	[System.Windows.Forms.Application]::EnableVisualStyles()
	Get-Status
	ControlsMin
	$formMainMenu.ShowDialog()
}

function Computer
{
	$formMainMenu.Hide()
	. .\Computer.ps1
}

function licencing
{
	$formMainMenu.Cursor = [System.Windows.Forms.Cursors]::WaitCursor
	$formMainMenu.enabled = $false
. .\licencing.ps1
}

function HyperV
{
$formMainMenu.enabled = $false
. .\HyperV.ps1
}

function Network
{
$formMainMenu.Hide()
. .\Networking.ps1 -MPIOEnabled $MPIOEnabled
}

function ControlPanel
{
	$formMainMenu.Hide()
	. .\ControlPanel.ps1
}

function Global:MenuTaskMgr
{
	$Shell = New-Object -Comobject("WScript.Shell")  
	$Temp = "Taskmgr.exe"
	$Shell.Run($Temp)
	#Output to Logfile
	$TextStrings.LogCommandExecuted -f $Logdate, $Temp | Out-File -FilePath $logfile -append
}

function Global:MenuSystem
{
	$Shell = New-Object -Comobject("WScript.Shell")  
	$Temp = "msinfo32.exe"
	$Shell.Run($Temp)
	#Output to Logfile
	$TextStrings.LogCommandExecuted -f $Logdate, $Temp | Out-File -FilePath $logfile -append
}

function Global:MenuRegistry
{
	$Shell = New-Object -Comobject("WScript.Shell")  
	$Temp = "Regedt32.exe"
	$Shell.Run($Temp)
	#Output to Logfile
	$TextStrings.LogCommandExecuted -f $Logdate, $Temp | Out-File -FilePath $logfile -append
}

function Global:MenuLogFile
{
	$Shell = New-Object -Comobject("WScript.Shell")  
	$Temp = "notepad.exe " + $logfile
	$Shell.Run($Temp)
}

function Global:MenuCMD
{
	$Shell = New-Object -Comobject("WScript.Shell") 
	$Temp = "cmd.exe"
	$Shell.Run($Temp)
	#Output to Logfile
	$TextStrings.LogCommandExecuted -f $Logdate, $Temp | Out-File -FilePath $logfile -append
}

function Global:MenuClearLogFile
{
	#Output to Logfile
	$TextStrings.LogCommandExecuted -f $Logdate, ($TextStrings.LogClearedBy -f $CoreUser) | Out-File -FilePath $logfile
	#Confirmation Dialog
	$Flag = $TextStrings.ClearLogFile
	$Message = $TextStrings.LogClearedBy -f $CoreUser
	. .\Common.ps1
	Message
	$pboxInfo.visible = $true
	$frmMessage.ShowDialog()
}

function Get-Status
{
	$Temp = gwmi Win32_ComputerSystem
	$lblComputerValue.Text = $Temp.Name
	$lblDomainValue.Text = $Temp.Domain
				
	$OS = gwmi Win32_OperatingSystem
	$lblVersionValue.Text = $OS.Caption

	# If the script was called by Start_Corefig.wsf, it will have already detected Hyper-V and MPIO
	if (($HyperVEnabled.Length -eq 0) -or ($MPIOEnabled.Length -eq 0))
	{
		if ((Get-WindowsFeature -Name Hyper-V).Installed -eq $true)
		{ $HyperVEnabled = "Yes" }
		else { $HyperVEnabled = "No" }
		if ((Get-WindowsFeature -Name Multipath-IO).Installed -eq $true)
		{ $MPIOEnabled = "Yes" }
		else {$MPIOEnabled = "No" }
	}
	
	# Check for Hyper-V
	if ($HyperVEnabled -ne "Yes")
	{
		$btnHyperV.enabled = $false
		$lblHyperV1.enabled = $false
		$lblHyperV1.enabled = $false
		$pboxHyperVDisabled.visible = $true
	}
			
	#Check Run at Startup
	$StartupStatus = (Get-Item "HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Run").GetValue("Corefig")
	if ($startupStatus -gt "")
	{
		$checkboxstartup.checked = $true
	}
	
	#Create Logfile
	$global:Logdate = Get-Date -format G
	$global:CurrentDirectory = "$env:Temp"
	$global:Logfile = $CurrentDirectory + "\CorefigLogfile.txt"
	$global:CoreUser = $env:userdomain + "\" + $env:username
	$TextStrings.AppStart -f $Logdate, $TextStrings.AppName, $CoreUser | Out-File -filepath $logfile -append
}

function BtnCloseClick( $object )
{
	#Output to Logfile
	$TextStrings.AppExit -f $Logdate, $TextStrings.AppName, $CoreUser | Out-File -filepath $logfile -append
	#Close form
	$FormMainMenu.Close()
}

function CheckboxStartupCheckedChanged( $object )
{
	if ($checkboxstartup.checked -eq $true)
	{
		$RegPath = "HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Run"
		$CurrentDirectory = Get-Location
		$Path = $currentDirectory.path+"\Start-Corefig.wsf"
		New-ItemProperty -path $Regpath -name "Corefig" -value $path -force
	}
	if ($checkboxstartup.checked -eq $false)
	{
		$path = "HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Run"
		Remove-ItemProperty -path $path -name "Corefig"
	}
}

function ControlsMin($object)
{
	$panelTools.Size = New-Object System.Drawing.Size(649, 14)
	$pboxArrowUp.visible = $true
	$pboxArrowDown.visible = $False
	
}

function ControlsMax($object)
{
	$panelTools.Size = New-Object System.Drawing.Size(649, 55)
	$pboxArrowDown.visible = $true
	$pboxArrowUp.visible = $False
	
}

function PboxLogOffClick($object)
{
	#Confirmation Dialog
	$Flag = $TextStrings.LogoffWarning
	$Message = $TextStrings.LogoffVerify
	. .\Common.ps1
	Message
	$pboxWarning.visible = $true
	$frmMessage.ShowDialog()
		
	if ($ReturnFlag -eq "YES")
	{
		#Output to Logfile
		$TextStrings.LogCommandExecuted -f $Logdate, ($TextStrings.LogoffBy -f $CoreUser) | Out-File -filepath $logfile -append
		#Execute Logoff
		$Shell = New-Object -Comobject("WScript.Shell")
		$Temp = "Logoff"
		$Shell.Run($Temp)
	}
}

function PboxRestartClick($object)
{
	#Confirmation Dialog
	$Flag = $TextStrings.RestartWarning
	$Message = $TextStrings.RestartVerify
	. .\Common.ps1
	Message
	$pboxWarning.visible = $true
	$frmMessage.ShowDialog()	
			
	if ($ReturnFlag -eq "YES")
	{
		#Output to Logfile
		$TextStrings.LogCommandExecuted -f $Logdate, ($TextStrings.RestartBy -f $CoreUser) | Out-File -filepath $logfile -append
		#Execute Restart
		$Temp = "Restart-Computer -Force"
		iex $Temp
	}
}

function PboxShutDownClick($object)
{
	#Confirmation Dialog
	$Flag = $TextStrings.ShutdownWarning
	$Message = $TextStrings.ShutdownVerify
	. .\Common.ps1
	Message
	$pboxWarning.visible = $true
	$frmMessage.ShowDialog()
	
	if ($ReturnFlag -eq "YES")
	{
		#Output to Logfile
		$TextStrings.LogCommandExecuted -f $Logdate, ($TextStrings.ShutdownBy -f $CoreUser) | Out-File -filepath $logfile -append
		#Execute Shutdown
		$Temp = "Stop-Computer -Force"
		iex $Temp
	}
}

function ULogoff
{
	$lblLogOff.Font = New-Object System.Drawing.Font("Tahoma", 8.25, [System.Drawing.FontStyle]::Underline, [System.Drawing.GraphicsUnit]::Point, ([System.Byte] ( 0 ) ))	
}

function URestart
{
	$lblRestart.Font = New-Object System.Drawing.Font("Tahoma", 8.25, [System.Drawing.FontStyle]::Underline, [System.Drawing.GraphicsUnit]::Point, ([System.Byte] ( 0 ) ))	
}

function UShutdown
{
	$lblshutdown.Font = New-Object System.Drawing.Font("Tahoma", 8.25, [System.Drawing.FontStyle]::Underline, [System.Drawing.GraphicsUnit]::Point, ([System.Byte] ( 0 ) ))	
}

function UOff( $object )
{
	$lblLogOff.Font = New-Object System.Drawing.Font("Tahoma", 8.25)
	$lblRestart.Font = New-Object System.Drawing.Font("Tahoma", 8.25)
	$lblShutdown.Font = New-Object System.Drawing.Font("Tahoma", 8.25)
}

function Global:MenuAbout($object)
{
	#Credits Dialog
	. .\Common.ps1
	Credits
	$frmMessage.ShowDialog()
}

Main | Out-Null

#endregion