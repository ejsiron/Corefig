Import-LocalizedData -BindingVariable TextStrings -FileName Programs.psd1
#region Constructor

[void][System.Reflection.Assembly]::LoadWithPartialName("System.Windows.Forms")
[void][System.Reflection.Assembly]::LoadWithPartialName("System.Drawing")

#endregion

#region Form Creation
#~~< frmPrograms >~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
$frmPrograms = New-Object System.Windows.Forms.Form
$frmPrograms.ClientSize = New-Object System.Drawing.Size(749, 726)
$frmPrograms.ControlBox = $false
$frmPrograms.Font = New-Object System.Drawing.Font("Tahoma", 8.25, [System.Drawing.FontStyle]::Regular, [System.Drawing.GraphicsUnit]::Point, ([System.Byte](0)))
$frmPrograms.FormBorderStyle = [System.Windows.Forms.FormBorderStyle]::FixedSingle
$frmPrograms.MaximizeBox = $false
$frmPrograms.MinimizeBox = $false
$frmPrograms.ShowIcon = $false
$frmPrograms.StartPosition = [System.Windows.Forms.FormStartPosition]::CenterScreen
$frmPrograms.Text = $TextStrings.PageTitle
$frmPrograms.BackColor = [System.Drawing.Color]::White
#~~< PictureBox1 >~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
$PictureBox1 = New-Object System.Windows.Forms.PictureBox
$PictureBox1.BackgroundImageLayout = [System.Windows.Forms.ImageLayout]::Center
$PictureBox1.Location = New-Object System.Drawing.Point(9, 9)
$PictureBox1.Size = New-Object System.Drawing.Size(60, 50)
$PictureBox1.TabIndex = 18
$PictureBox1.TabStop = $false
$PictureBox1.Text = ""
#region$PictureBox1.BackgroundImage = ([System.Drawing.Image](...)
$PictureBox1.BackgroundImage = ([System.Drawing.Image]([System.Drawing.Image]::FromStream((New-Object System.IO.MemoryStream(($$ = [System.Convert]::FromBase64String(
"iVBORw0KGgoAAAANSUhEUgAAAC4AAAAvCAIAAAATh2/FAAAAAXNSR0IArs4c6QAAAARnQU1BAACx"+
                                 "jwv8YQUAAAAgY0hSTQAAeiYAAICEAAD6AAAAgOgAAHUwAADqYAAAOpgAABdwnLpRPAAADTtJREFU"+
                                 "WEelmAlQW9cVhvGkmTZtkzZNJ81kph5P02TaTpcsnaZZOpOZpumk0zSt08QDdmwwBoewRAYbm83Y"+
                                 "VvHCYrAx2MRghU0gECCQWcQisQobHggJS+ybhMQmxGaBxZLT//kpCgFB3eTOGeZJvKf7vXPO/c+5"+
                                 "dwcRuTzY2Hyn0WhcWVmx2WwWi+Wxxx7btWvXI4888tBDD+Gbhx9+eMeOHdwPOy7+xzyYgBufbxoG"+
                                 "g2FwcLCrq6uxsbG+vr68vLygsFha3ijMKxeKFQVSplDKVClM1QpTfb05P78S98zMzOh0Orlc0dDQ"+
                                 "UFVVhUdu377d09NjtVpXV1cxg2O6zRcu+AoPNzU1SSSSPIybNSnZJZ/mVqSWMDdKmHRZd7bCKFQY"+
                                 "CxkqZkjKUBlDMoaqGJIzVMdQI0NKhm4xdLNUc+7cub6+vsJCyeIira7a54LnNBqNQqEoKipqaWmZ"+
                                 "nZ0Fk1MgFzwMgIDy+WO19J8mSmqlFIZSGbrBUDpDWQzlMCRiKJ+h7WkU9VNhYWF4H7V6cHaW1tNw"+
                                 "E8ND8fHxbW1ti/ifs+HS3d2Nm/aUkU81fUOaM2fO5OZKRkdpYoJAY7XSyop9zvn5+YiIiCNHjrS2"+
                                 "tt67d885ilarhcfml1blI6spHWvfhOazjKLm5tHBQQLN+DjNzLA0Nhs7LzLG3d09Li5ueHh4q4xx"+
                                 "KS0thcccI7519WvTyOSjnZ3U1UWbaRAaDw8PuB/u2SpzXerq6kZHR5H53CjvtT54pMR1dwtqZkVS"+
                                 "k6h4NCu3r39gemxs2WCg/n4aGCBcwDcWC6lUOh8fHwQIi3GrnGWVYnx8HLATX4wh46SHbG0DzbV6"+
                                 "61WZOUliSMzpvSzQJFxrjYmrjY1VXLxYl5DQcOlS45UrzcnJt7Va/dzcHEQFv4t8QLpMTtLYGOXm"+
                                 "ivft25eVlWU2m7dbzMvLy2KxWL9uRJfrDyWqeYnM8fM1J07fDAkRh4UVRkRIIiNLTp++yeeXRUVV"+
                                 "nDtXeeFC9Qaa9vY+vBFoEO6lpSWs2+npaYPBmJiYCK8olcqtEpbjc0ESIacgYv1fjNratoCAdB4v"+
                                 "MzAw+9ix3OPH87anyc5uLS5WV1VpBwaG8UZITAjjwMAAZALihqCo1er09HToCkR5uwBxEgdkvAQe"+
                                 "xjVGSIjQKU1srCw1tV4m09TW6jo7h43G8cnJSYTYZDIh4ZxyYIXeuXMHKgcUxIirFc4XM74FO9QW"+
                                 "vLhpamoKD6ellfn5CS5frkhNVZSVdahUQzqdAeK9sLAA/yO74Xnc+eAcHR0d7e3tEEAEC6+KSG1e"+
                                 "0qzw9/b2IkDgQN4g6XBf6+CU5d7ngMM3+IjYfw2OqvY+QdOQX/kEohMdHc3j8fz8/LCOAISU2hIF"+
                                 "lQypMjIywk2sNNzbX/P5/8VRqjZeuzUeUDm9u3juDyLrd1LpcQHtzKRnsykkJMTV1TUyMjI1NRUc"+
                                 "cA/UxTkKAgR1QVwEAgFuRdRvGRb/KKbwWytb+aPwjuVGuyVQMf9XyeKvcmzfTaUnBPTzbPp1Lr2c"+
                                 "PrM7XrU3ouzAUZG3d6K3d7KXV6yPT2xMTLpC0YSsQpSdJi8bIKDU1tYiTLhobm5GCt/WW9+V0jPZ"+
                                 "lKKxGaYXSvusyarF4w2LrxUu/zRz7Xtp9ORn9MscejGPXi8g3MnZe4Ih9xCxt3fKpUuykhLNrVum"+
                                 "xkaTWj0vl5vE4p6LFxXIv/DwDIWCgVc209hRUMQ7Ozs5r4yNjbXq77qV079L6ftp9KP7fv6tiF4R"+
                                 "05sSwvdOrMTqESkFhETCjIzMo/qgIhqNNDJCfX1YoaTREMNQU5MtKYnx9RVER+egGeLE0DFYFBRn"+
                                 "uVze3GcZNE5hKSFSbfoFryp6QDuUb/IKFvP5YrMZ78pWQaccra1AIbmciormjx4V83jJbW1qrAZH"+
                                 "0thRqqurQ6WmneG65BoD1qrKsMCT04OYf4HJ2zdFIFA4Xg5FZ7M/HBwyGUmlJBLZAgPFAQFX1rcv"+
                                 "dhQ0fyEVUy7H+lx81VLGpNbPh9XT/7QzxbaPP8lczwEgNAYb4rKBo6CAcnIoLc3G44mDg1mZ4SJl"+
                                 "R6msrDxRNe0SOQqakvaxTv3shWba3uIqKOiYODZWukE619bYJsGRH0450tPp+nVKTJz/+GMIaSry"+
                                 "Zm1tjUVBmZDJZCcU8y7nWRqJalyrn73SQttZFZ2N1fB4Aqv1K6nHYSFAXJ5uw5GSQjduUFQU4+0d"+
                                 "h/TACrejVFRUnGhccrm0BBpJx4RWb0GHu6U1UYqQ/AKESmWP02qC5vVBOLKyKDvbhgXF58ehgtpR"+
                                 "ysrKMjsXXFIINIXqKe3I9I122mBljar6Wplaern9pJvwg7dQMrdpPrRaYpSkaqBmBZunXH5wceH8"+
                                 "AY68PJJIiM9XHD7Mh5rYNx9oK1He2oanXy2wFXSatSPmDDVx1l902pK7nzJeJ+EblP8XW+rrQz7P"+
                                 "hHiElZVptkRZppUhIoZIBQElaz/VVzvnKC0lgaD/4ME41AQ7ys2bN1FmUaWgb9Bm7fBUTidxRoJX"+
                                 "HBwk+Zvt6ssa/+ehZkqlDQkBCfmqUBGtEY3dJ7hNY0qa6SAyEFmotmajP8BRWQmz4tdOnTplRykp"+
                                 "KXFwoKXQDU+JtcTZeg6SvmO79GJpwD/QTCEbHNbTQ+gV7Vutu8hbdu6mpvmYGOXVq/rGSvaj7S4b"+
                                 "FEdcOI7aWmpupsDATF/f43aU4uJizh/gQDnUDU9Kuokz6fg+Rvu+Wf4uOFiUhOeF/u6Jicr1KNy1"+
                                 "SsUCEVr6WUJG+/oLQvhS/D11itG0EC2zs3L5sZ4Dq+z0aamnJ49FgdKj9Dg40IzphiZKe4mz+HsH"+
                                 "OMuY3NvX9C5QzvoECwSazSj4BqoPFI0K8iXoaM/B48JGM/xfBvVZxkQsh0y2Wltna1LaWlptbapF"+
                                 "zZ2FM2eKPDz87Sjo9jh/gANdi25oXNZPnPFn9zjsX02/EyXsOusTLpWanKKwu5x5EotN/FPJlkkh"+
                                 "9wtA0XVZgGKevtvdP7HZ+PyCL1EKCwsdHOiTdYMm+RBxFmT8u8NeVTznkuLyTlBQRYUJOdvRsVE/"+
                                 "uABdvz7B++SacVSEx6/l3YaHZqeXgDIzt2gwzmy2iJOiL1EKCgo4f3D9um7Q2DBCnHkPvOmwl6p+"+
                                 "xqHIZCzKZh1D9QEK8jQ0VHEsWBARVXR/rfXQHBsg66LNbLk7Nb3RcM/BgwfZAKEjz8/Pd3Cgs+wa"+
                                 "NDYbiDPXO6857DflO4HyVrDn9euMUz2tqWFRbMMkFVFc3FB0tKa6cp7gKguLgoGWYHl5dWlpGRWD"+
                                 "M7V6xMPjoq+vrx0F5xqcP7jNUNfAKGMkzt5uecFhzxY/BZSXTr2DzdhW9aUTyobF3EPTjTTZRMu6"+
                                 "+7oyCwrniigSKd3cwkJDQ+0oIpHIwYHdUNeAQT1OnP2p7hcO21nwY6A8HftcUJCQ64O4/mODrt+u"+
                                 "obvQxvtqu6IjC5R36+MmFJA9ezyTkpLsKDk5OZw/7Fu6Ab12kjh7XrbLYU+JfggUmLtPfEGB2SmH"+
                                 "o77IpGzSQMcaG7esEEgjRAeJgtaARUFXKxQK0WBjD4dOG/1l95Cp10ycPSP5icOeznucQ3kjxD0q"+
                                 "SrF9nVuvY1NTzmngkvffP3zy5Ek0KnaU7OxsbIVSUlJQFwHUq58cmiHOnsz9gcOeED7KoTya+ATS"+
                                 "Pitrfqt6u0FPccaxeUilzIED5/fv34/zA2yn7SjYzaLNxKqA7KK57NNPGOaIs2+nfcthLxT+/s9F"+
                                 "7h+UxAdVKcITlMHBUqd1fwMHln1395eHYRxTT4/J0/PKe+/tO3v2LMKAvSmLAjdkZmbCH9hRYhOE"+
                                 "eA0YJsYXiLO3S/95VHmqcEAxMbeIjy0GSrnFWnK9zS9QiPqyof9wygGvoP12DL3eDN3bvdsbp3PY"+
                                 "bKCFs/e2QAEE2l34Iy0tDduzodFx8yI5tbEF9vAypYW1+HKzj5/gwoUep/UWq53zB3cChXaCGw6O"+
                                 "jz76CKFBR4DG1o6CLpfP5yNt4Q+cIOJ0dWR0fO4ebWUdY/ZeU9BO/M+U2IpGRlbn59u28ofjJAyn"+
                                 "GcgPJBn8cfjwYSgIpnaccbABQu8PLwUFBaFVwLEMDiD0o2OLy+TU4K+6hub4tLwTJ6O8vb2RdK6u"+
                                 "Bzw8zvN4wk8/xYaX7QQ2+AMnckajVS7vOXFCiDxFfvj7+0Pf13PYvQIxxjYM+w+cO0BqsNMfNZqW"+
                                 "18hh2u6eyuqapOSroaFhOGjcu3evm5vbhx9+6OXldfTo0ZiYmGvXroWExHp7X/LzS42JUWRkqKqq"+
                                 "TAqFqaHBlJOjjI8vg+egH1i3QI+KikKLjwOiDWc+rFcwEC1sqbGCwsPDocFQF5VKJZVKcdJ66NCh"+
                                 "+6/ODpy9oljgeAJzo5hjVws9QB1F24ULBD4khO/lddLDI8rd/eyBA6zt33/a1fWIm9shcEM/cA/W"+
                                 "C/KUy4/1w47CFSocYQAC03/heVc4wNPTE3mOJYfNPTQRPoMoo8+CI7nDI27gFaENeBy9e0ZGBg5q"+
                                 "8QgcgL8JCQmQUKwG/Bf3bHUA9l9uhLWYhCBoywAAAABJRU5ErkJggg==")),0,$$.Length)))))
#endregion
#~~< SplitContainer1 >~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
$SplitContainer1 = New-Object System.Windows.Forms.SplitContainer
$SplitContainer1.Location = New-Object System.Drawing.Point(-3, 71)
$SplitContainer1.Panel1.Text = ""
$SplitContainer1.Panel2.Text = ""
$SplitContainer1.Size = New-Object System.Drawing.Size(720, 643)
$SplitContainer1.SplitterDistance = 138
$SplitContainer1.TabIndex = 17
$SplitContainer1.Text = ""
#~~< SplitContainer1.Panel1 >~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
#~~< Panel1 >~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
$Panel1 = New-Object System.Windows.Forms.Panel
$Panel1.BorderStyle = [System.Windows.Forms.BorderStyle]::FixedSingle
$Panel1.Dock = [System.Windows.Forms.DockStyle]::Fill
$Panel1.Location = New-Object System.Drawing.Point(0, 0)
$Panel1.Size = New-Object System.Drawing.Size(138, 643)
$Panel1.TabIndex = 0
$Panel1.Text = ""
$Panel1.BackColor = [System.Drawing.Color]::Gainsboro
#~~< lblAdd >~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
$lblAdd = New-Object System.Windows.Forms.Label
$lblAdd.Font = New-Object System.Drawing.Font("Tahoma", 8.25, [System.Drawing.FontStyle]::Regular, [System.Drawing.GraphicsUnit]::Point, ([System.Byte](0)))
$lblAdd.Location = New-Object System.Drawing.Point(11, 25)
$lblAdd.Size = New-Object System.Drawing.Size(120, 18)
$lblAdd.TabIndex = 0
$lblAdd.Text = $TextStrings.AddPrograms
$lblAdd.Cursor = [System.Windows.Forms.Cursors]::Hand
$lblAdd.add_Click({LblAddClick($lblAdd)})
#~~< lblRemove >~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
$lblRemove = New-Object System.Windows.Forms.Label
$lblRemove.Location = New-Object System.Drawing.Point(11, 67)
$lblRemove.Size = New-Object System.Drawing.Size(120, 18)
$lblRemove.TabIndex = 0
$lblRemove.Text = $TextStrings.RemovePrograms
$lblRemove.Cursor = [System.Windows.Forms.Cursors]::Hand
$lblRemove.add_Click({LblRemoveClick($lblRemove)})
$Panel1.Controls.Add($lblAdd)
$Panel1.Controls.Add($lblRemove)
$SplitContainer1.Panel1.Controls.Add($Panel1)
#~~< SplitContainer1.Panel2 >~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
#~~< panelAdd >~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
$panelAdd = New-Object System.Windows.Forms.Panel
$panelAdd.BorderStyle = [System.Windows.Forms.BorderStyle]::FixedSingle
$panelAdd.Location = New-Object System.Drawing.Point(21, 330)
$panelAdd.Size = New-Object System.Drawing.Size(451, 304)
$panelAdd.TabIndex = 18
$panelAdd.Text = ""
$panelAdd.Visible = $false
$panelAdd.BackColor = [System.Drawing.Color]::Gainsboro
#~~< txtboxFilePath >~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
$txtboxFilePath = New-Object System.Windows.Forms.TextBox
$txtboxFilePath.BorderStyle = [System.Windows.Forms.BorderStyle]::FixedSingle
$txtboxFilePath.Font = New-Object System.Drawing.Font("Tahoma", 8.25, [System.Drawing.FontStyle]::Bold, [System.Drawing.GraphicsUnit]::Point, ([System.Byte](0)))
$txtboxFilePath.Location = New-Object System.Drawing.Point(52, 99)
$txtboxFilePath.Size = New-Object System.Drawing.Size(247, 21)
$txtboxFilePath.TabIndex = 12
$txtboxFilePath.Text = $TextStrings.NoFile
$txtboxFilePath.BackColor = [System.Drawing.Color]::White
#~~< btnInstall >~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
$btnInstall = New-Object System.Windows.Forms.Button
$btnInstall.FlatStyle = [System.Windows.Forms.FlatStyle]::System
$btnInstall.Location = New-Object System.Drawing.Point(304, 156)
$btnInstall.Size = New-Object System.Drawing.Size(101, 23)
$btnInstall.TabIndex = 6
$btnInstall.Text = $TextStrings.InstallButton
$btnInstall.UseVisualStyleBackColor = $true
$btnInstall.add_Click({BtnInstallClick($btnInstall)})
#~~< btnBrowse >~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
$btnBrowse = New-Object System.Windows.Forms.Button
$btnBrowse.FlatStyle = [System.Windows.Forms.FlatStyle]::System
$btnBrowse.Location = New-Object System.Drawing.Point(304, 98)
$btnBrowse.Size = New-Object System.Drawing.Size(101, 23)
$btnBrowse.TabIndex = 6
$btnBrowse.Text = $TextStrings.BrowseButton
$btnBrowse.UseVisualStyleBackColor = $true
$btnBrowse.add_Click({BtnBrowseClick($btnBrowse)})
#~~< Label7 >~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
$Label7 = New-Object System.Windows.Forms.Label
$Label7.Font = New-Object System.Drawing.Font("Tahoma", 8.25, [System.Drawing.FontStyle]::Bold, [System.Drawing.GraphicsUnit]::Point, ([System.Byte](0)))
$Label7.Location = New-Object System.Drawing.Point(26, 20)
$Label7.Size = New-Object System.Drawing.Size(342, 20)
$Label7.TabIndex = 10
$Label7.Text = $TextStrings.AddProgram
#~~< Label1 >~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
$Label1 = New-Object System.Windows.Forms.Label
$Label1.Font = New-Object System.Drawing.Font("Tahoma", 8.25, [System.Drawing.FontStyle]::Regular, [System.Drawing.GraphicsUnit]::Point, ([System.Byte](0)))
$Label1.Location = New-Object System.Drawing.Point(52, 140)
$Label1.Size = New-Object System.Drawing.Size(371, 19)
$Label1.TabIndex = 7
$Label1.Text = $TextStrings.InstallDescription
#~~< Label9 >~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
$Label9 = New-Object System.Windows.Forms.Label
$Label9.Font = New-Object System.Drawing.Font("Tahoma", 9.0, [System.Drawing.FontStyle]::Bold, [System.Drawing.GraphicsUnit]::Point, ([System.Byte](0)))
$Label9.Location = New-Object System.Drawing.Point(26, 140)
$Label9.Size = New-Object System.Drawing.Size(20, 20)
$Label9.TabIndex = 7
$Label9.Text = "2."
$Label9.ForeColor = [System.Drawing.SystemColors]::ControlText
#~~< Label8 >~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
$Label8 = New-Object System.Windows.Forms.Label
$Label8.Font = New-Object System.Drawing.Font("Tahoma", 9.0, [System.Drawing.FontStyle]::Bold, [System.Drawing.GraphicsUnit]::Point, ([System.Byte](0)))
$Label8.Location = New-Object System.Drawing.Point(26, 60)
$Label8.Size = New-Object System.Drawing.Size(20, 20)
$Label8.TabIndex = 7
$Label8.Text = "1."
$Label8.ForeColor = [System.Drawing.SystemColors]::ControlText
#~~< Label5 >~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
$Label5 = New-Object System.Windows.Forms.Label
$Label5.Font = New-Object System.Drawing.Font("Tahoma", 8.25, [System.Drawing.FontStyle]::Regular, [System.Drawing.GraphicsUnit]::Point, ([System.Byte](0)))
$Label5.Location = New-Object System.Drawing.Point(52, 61)
$Label5.Size = New-Object System.Drawing.Size(369, 36)
$Label5.TabIndex = 7
$Label5.Text = $TextStrings.AddProgramDescription
$panelAdd.Controls.Add($lblFilePath)
$panelAdd.Controls.Add($txtboxFilePath)
$panelAdd.Controls.Add($btnInstall)
$panelAdd.Controls.Add($btnBrowse)
$panelAdd.Controls.Add($Label7)
$panelAdd.Controls.Add($Label1)
$panelAdd.Controls.Add($Label9)
$panelAdd.Controls.Add($Label8)
$panelAdd.Controls.Add($Label5)
#~~< panelRemove >~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
$panelRemove = New-Object System.Windows.Forms.Panel
$panelRemove.BorderStyle = [System.Windows.Forms.BorderStyle]::FixedSingle
$panelRemove.Location = New-Object System.Drawing.Point(21, 15)
$panelRemove.Size = New-Object System.Drawing.Size(451, 304)
$panelRemove.TabIndex = 18
$panelRemove.Text = ""
$panelRemove.Visible = $false
$panelRemove.BackColor = [System.Drawing.Color]::Gainsboro
#~~< lstboxPrograms >~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
$lstboxPrograms = New-Object System.Windows.Forms.ListBox
$lstboxPrograms.BorderStyle = [System.Windows.Forms.BorderStyle]::FixedSingle
$lstboxPrograms.FormattingEnabled = $true
$lstboxPrograms.Location = New-Object System.Drawing.Point(17, 75)
$lstboxPrograms.Size = New-Object System.Drawing.Size(404, 171)
$lstboxPrograms.Sorted = $true
$lstboxPrograms.TabIndex = 19
#~~< btnRemove >~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
$btnRemove = New-Object System.Windows.Forms.Button
$btnRemove.FlatStyle = [System.Windows.Forms.FlatStyle]::System
$btnRemove.Location = New-Object System.Drawing.Point(236, 264)
$btnRemove.Size = New-Object System.Drawing.Size(185, 23)
$btnRemove.TabIndex = 6
$btnRemove.Text = $TextStrings.RemoveProgramButton
$btnRemove.UseVisualStyleBackColor = $true
$btnRemove.add_Click({BtnRemoveClick($btnRemove)})
#~~< Label6 >~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
$Label6 = New-Object System.Windows.Forms.Label
$Label6.Font = New-Object System.Drawing.Font("Tahoma", 8.25, [System.Drawing.FontStyle]::Regular, [System.Drawing.GraphicsUnit]::Point, ([System.Byte](0)))
$Label6.Location = New-Object System.Drawing.Point(17, 14)
$Label6.Size = New-Object System.Drawing.Size(404, 38)
$Label6.TabIndex = 10
$Label6.Text = $TextStrings.RemoveDescription
#~~< lbldownloadupdates >~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
$lbldownloadupdates = New-Object System.Windows.Forms.Label
$lbldownloadupdates.Font = New-Object System.Drawing.Font("Tahoma", 8.25, [System.Drawing.FontStyle]::Bold, [System.Drawing.GraphicsUnit]::Point, ([System.Byte](0)))
$lbldownloadupdates.Location = New-Object System.Drawing.Point(17, 52)
$lbldownloadupdates.Size = New-Object System.Drawing.Size(188, 14)
$lbldownloadupdates.TabIndex = 10
$lbldownloadupdates.Text = $TextStrings.CurrentlyInstalled
$panelRemove.Controls.Add($lstboxPrograms)
$panelRemove.Controls.Add($btnRemove)
$panelRemove.Controls.Add($Label6)
$panelRemove.Controls.Add($lbldownloadupdates)
$SplitContainer1.Panel2.Controls.Add($panelAdd)
$SplitContainer1.Panel2.Controls.Add($panelRemove)
#~~< BtnCancel >~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
$BtnCancel = New-Object System.Windows.Forms.Button
$BtnCancel.FlatStyle = [System.Windows.Forms.FlatStyle]::System
$BtnCancel.Location = New-Object System.Drawing.Point(612, 26)
$BtnCancel.Size = New-Object System.Drawing.Size(87, 23)
$BtnCancel.TabIndex = 6
$BtnCancel.Text = $TextStrings.Close
$BtnCancel.UseVisualStyleBackColor = $true
$BtnCancel.add_Click({BtnCancelClick($BtnCancel)})
#~~< lblCoreConfigText >~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
$lblCoreConfigText = New-Object System.Windows.Forms.Label
$lblCoreConfigText.Font = New-Object System.Drawing.Font("Tahoma", 8.25, [System.Drawing.FontStyle]::Regular, [System.Drawing.GraphicsUnit]::Point, ([System.Byte](0)))
$lblCoreConfigText.Location = New-Object System.Drawing.Point(111, 31)
$lblCoreConfigText.Size = New-Object System.Drawing.Size(491, 18)
$lblCoreConfigText.TabIndex = 12
$lblCoreConfigText.Text = $TextStrings.PageDescription
#~~< lblCoreConfigTitle >~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
$lblCoreConfigTitle = New-Object System.Windows.Forms.Label
$lblCoreConfigTitle.Font = New-Object System.Drawing.Font("Tahoma", 8.25, [System.Drawing.FontStyle]::Bold, [System.Drawing.GraphicsUnit]::Point, ([System.Byte](0)))
$lblCoreConfigTitle.Location = New-Object System.Drawing.Point(83, 9)
$lblCoreConfigTitle.Size = New-Object System.Drawing.Size(346, 17)
$lblCoreConfigTitle.TabIndex = 11
$lblCoreConfigTitle.Text = $TextStrings.PageTitle
$frmPrograms.Controls.Add($PictureBox1)
$frmPrograms.Controls.Add($SplitContainer1)
$frmPrograms.Controls.Add($BtnCancel)
$frmPrograms.Controls.Add($lblCoreConfigText)
$frmPrograms.Controls.Add($lblCoreConfigTitle)

#endregion

#region Functions

function Main
{
	[System.Windows.Forms.Application]::EnableVisualStyles()
	formload
	$frmPrograms.ShowDialog()
}

function formload
{
	$SplitContainer1.Size = New-Object System.Drawing.Size(580, 304)
	$SplitContainer1.SplitterDistance = 130
	$frmPrograms.size = New-Object System.Drawing.Size(580, 450)
	$BtnCancel.Location = New-Object System.Drawing.Point(450, 388)
	
	$panelAdd.Dock = [System.Windows.Forms.DockStyle]::Fill
	$panelRemove.Dock = [System.Windows.Forms.DockStyle]::Fill
			
	LblAddClick
		
}

function BtnCancelClick($object)
{
	$frmPrograms.Hide()
	$formControl.enabled = $True
}

function LblRemoveClick( $object )
{
	$lblRemove.Font = New-Object System.Drawing.Font("Tahoma", 8.25, [System.Drawing.FontStyle]::Bold, [System.Drawing.GraphicsUnit]::Point, ([System.Byte] ( 0 ) ))
	$lblAdd.Font = New-Object System.Drawing.Font("Tahoma", 8.25, [System.Drawing.FontStyle]::Regular, [System.Drawing.GraphicsUnit]::Point, ([System.Byte] ( 0 ) ))
			
	$PanelAdd.visible = $False
	$PanelRemove.visible = $True
	
			
	$lstboxPrograms.Items.Clear()
			
	$RootKey = Get-ChildItem HKLM:\SOFTWARE\WOW6432Node\Microsoft\Windows\CurrentVersion\Uninstall
	foreach ($ChildKey in $RootKey)
	{
		$DName = $Childkey.getvalue("DisplayName")
		if (($DName.Length -gt 0) -and (-not $lstboxPrograms.items.Contains($DName)))
		{ $lstboxPrograms.items.Add($DName) }
	}
}

function LblAddClick($object)
{
	$lblRemove.Font = New-Object System.Drawing.Font("Tahoma", 8.25, [System.Drawing.FontStyle]::Regular, [System.Drawing.GraphicsUnit]::Point, ([System.Byte] ( 0 ) ))
	$lblAdd.Font = New-Object System.Drawing.Font("Tahoma", 8.25, [System.Drawing.FontStyle]::Bold, [System.Drawing.GraphicsUnit]::Point, ([System.Byte] ( 0 ) ))
		
	$PanelAdd.visible = $True
	$PanelRemove.visible = $False
}

function BtnBrowseClick($object)
{
	$OpenFile = New-Object -TypeName Windows.Forms.OpenFileDialog;
	$OpenFile.ShowHelp = $true
	
	$OpenFile.Filter = $TextStrings.OFDFilter
	$OpenFile.FilterIndex = 1
	$OpenFile.title = $TextStrings.OFDTitle
	
	$OpenFile.ShowDialog()
			
	$choice = $OpenFile.Filename
			
	$txtboxFilePath.text = $choice
}

function BtnInstallClick( $object )
{
	if (($txtboxFilePath.text -eq $TextStrings.NoFile) -or ($txtboxFilePath.Length -eq 0))
	{
		$a = New-Object -comobject wscript.shell
		$c = $a.popup($TextStrings.ErrorText, 0, $TextStrings.Error, 64)
	}
	else
	{
		$Shell = New-Object -Comobject("WScript.Shell")
		$Temp = $txtboxFilePath.text
		$shell.Run($Temp)
				
		#Output to Logfile
		$TextStrings.LogCommandExecuted -f (Get-Date -F G), $Temp | Out-File -FilePath $Logfile -append	
	}
}

function BtnRemoveClick( $object )
{
	$RootKey = Get-ChildItem HKLM:\SOFTWARE\WOW6432Node\Microsoft\Windows\CurrentVersion\Uninstall
	foreach ($ChildKey in $RootKey)
	{
		$DName = $Childkey.getvalue("DisplayName")
		if ($DName -eq $lstboxPrograms.SelectedItems)
		{
			$U = $ChildKey.getvalue("UninstallString")
									
			$Shell = New-Object -Comobject("WScript.Shell")
			$Temp = $U
			$shell.Run($Temp)
			
			#Output to Logfile
			$TextStrings.LogProgramRemoved -f (Get-Date -F G), $Dname | Out-File -FilePath $Logfile -append
		}
	}
	LblAddClick
}

Main

#endregion