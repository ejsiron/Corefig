Import-LocalizedData -BindingVariable TextStrings -FileName Display.psd1
#region Constructor

[void][System.Reflection.Assembly]::LoadWithPartialName("System.Windows.Forms")
[void][System.Reflection.Assembly]::LoadWithPartialName("System.Drawing")

#endregion

#region Form Creation
#~~< frmDisplay >~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
$frmDisplay = New-Object System.Windows.Forms.Form
$frmDisplay.ClientSize = New-Object System.Drawing.Size(1028, 748)
$frmDisplay.ControlBox = $false
$frmDisplay.Font = New-Object System.Drawing.Font("Tahoma", 8.25, [System.Drawing.FontStyle]::Regular, [System.Drawing.GraphicsUnit]::Point, ([System.Byte](0)))
$frmDisplay.FormBorderStyle = [System.Windows.Forms.FormBorderStyle]::FixedSingle
$frmDisplay.MaximizeBox = $false
$frmDisplay.MinimizeBox = $false
$frmDisplay.ShowIcon = $false
$frmDisplay.StartPosition = [System.Windows.Forms.FormStartPosition]::CenterScreen
$frmDisplay.Text = $TextStrings.WindowTitle
$frmDisplay.BackColor = [System.Drawing.Color]::White
#~~< SplitContainer1 >~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
$SplitContainer1 = New-Object System.Windows.Forms.SplitContainer
$SplitContainer1.Location = New-Object System.Drawing.Point(-3, 62)
$SplitContainer1.Panel1.Text = ""
$SplitContainer1.Panel2.Text = ""
$SplitContainer1.Size = New-Object System.Drawing.Size(1383, 674)
$SplitContainer1.SplitterDistance = 336
$SplitContainer1.TabIndex = 17
$SplitContainer1.Text = ""
#~~< SplitContainer1.Panel1 >~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
#~~< Panel1 >~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
$Panel1 = New-Object System.Windows.Forms.Panel
$Panel1.BorderStyle = [System.Windows.Forms.BorderStyle]::FixedSingle
$Panel1.Dock = [System.Windows.Forms.DockStyle]::Fill
$Panel1.Location = New-Object System.Drawing.Point(0, 0)
$Panel1.Size = New-Object System.Drawing.Size(336, 674)
$Panel1.TabIndex = 0
$Panel1.Text = ""
$Panel1.BackColor = [System.Drawing.Color]::Gainsboro
#~~< lblResolution >~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
$lblResolution = New-Object System.Windows.Forms.Label
$lblResolution.Font = New-Object System.Drawing.Font("Tahoma", 8.25, [System.Drawing.FontStyle]::Bold, [System.Drawing.GraphicsUnit]::Point, ([System.Byte](0)))
$lblResolution.Location = New-Object System.Drawing.Point(11, 14)
$lblResolution.Size = New-Object System.Drawing.Size(176, 18)
$lblResolution.TabIndex = 0
$lblResolution.Text = $TextStrings.DisplayResolution
$lblResolution.Cursor = [System.Windows.Forms.Cursors]::Hand
$lblResolution.add_Click({LblResolutionClick($lblResolution)})
#~~< lblScreensaver >~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
$lblScreensaver = New-Object System.Windows.Forms.Label
$lblScreensaver.Location = New-Object System.Drawing.Point(11, 53)
$lblScreensaver.Size = New-Object System.Drawing.Size(176, 18)
$lblScreensaver.TabIndex = 0
$lblScreensaver.Text = $TextStrings.ScreenSaver
$lblScreensaver.Cursor = [System.Windows.Forms.Cursors]::Hand
$lblScreensaver.add_Click({LblScreensaverClick($lblScreensaver)})
$Panel1.Controls.Add($lblResolution)
$Panel1.Controls.Add($lblScreensaver)
$SplitContainer1.Panel1.Controls.Add($Panel1)
#~~< SplitContainer1.Panel2 >~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
#~~< panelScreensaver >~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
$panelScreensaver = New-Object System.Windows.Forms.Panel
$panelScreensaver.BorderStyle = [System.Windows.Forms.BorderStyle]::FixedSingle
$panelScreensaver.Location = New-Object System.Drawing.Point(3, 333)
$panelScreensaver.Size = New-Object System.Drawing.Size(436, 318)
$panelScreensaver.TabIndex = 18
$panelScreensaver.Text = ""
$panelScreensaver.Visible = $false
$panelScreensaver.BackColor = [System.Drawing.Color]::Gainsboro
#~~< GroupBox1 >~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
$GroupBox1 = New-Object System.Windows.Forms.GroupBox
$GroupBox1.Font = New-Object System.Drawing.Font("Tahoma", 8.25, [System.Drawing.FontStyle]::Regular, [System.Drawing.GraphicsUnit]::Point, ([System.Byte](0)))
$GroupBox1.Location = New-Object System.Drawing.Point(32, 58)
$GroupBox1.Size = New-Object System.Drawing.Size(369, 68)
$GroupBox1.TabIndex = 7
$GroupBox1.TabStop = $false
$GroupBox1.Text = ""
#~~< chkboxOff >~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
$chkboxOff = New-Object System.Windows.Forms.RadioButton
$chkboxOff.Location = New-Object System.Drawing.Point(201, 25)
$chkboxOff.Size = New-Object System.Drawing.Size(115, 24)
$chkboxOff.TabIndex = 11
$chkboxOff.TabStop = $true
$chkboxOff.Text = $TextStrings.SSOff
$chkboxOff.UseVisualStyleBackColor = $true
$chkboxOff.add_CheckedChanged({SettingsEnable($chkboxOff)})
#~~< chkboxOn >~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
$chkboxOn = New-Object System.Windows.Forms.RadioButton
$chkboxOn.ImageAlign = [System.Drawing.ContentAlignment]::MiddleRight
$chkboxOn.Location = New-Object System.Drawing.Point(44, 25)
$chkboxOn.Size = New-Object System.Drawing.Size(115, 24)
$chkboxOn.TabIndex = 11
$chkboxOn.TabStop = $true
$chkboxOn.Text = $TextStrings.SSOn
$chkboxOn.UseVisualStyleBackColor = $true
$chkboxOn.add_CheckedChanged({SettingsEnable($chkboxOn)})
$GroupBox1.Controls.Add($chkboxOff)
$GroupBox1.Controls.Add($chkboxOn)
$GroupBox1.ForeColor = [System.Drawing.Color]::Black
#~~< GroupBox4 >~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
$GroupBox4 = New-Object System.Windows.Forms.GroupBox
$GroupBox4.Enabled = $false
$GroupBox4.Font = New-Object System.Drawing.Font("Tahoma", 8.25, [System.Drawing.FontStyle]::Regular, [System.Drawing.GraphicsUnit]::Point, ([System.Byte](0)))
$GroupBox4.Location = New-Object System.Drawing.Point(32, 143)
$GroupBox4.Size = New-Object System.Drawing.Size(369, 146)
$GroupBox4.TabIndex = 7
$GroupBox4.TabStop = $false
$GroupBox4.Text = $TextStrings.SSSettings
#~~< Label7 >~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
$Label7 = New-Object System.Windows.Forms.Label
$Label7.Location = New-Object System.Drawing.Point(31, 37)
$Label7.Size = New-Object System.Drawing.Size(132, 19)
$Label7.TabIndex = 3
$Label7.Text = $TextStrings.SSActive
#~~< Label2 >~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
$Label2 = New-Object System.Windows.Forms.Label
$Label2.Location = New-Object System.Drawing.Point(31, 97)
$Label2.Size = New-Object System.Drawing.Size(117, 19)
$Label2.TabIndex = 3
$Label2.Text = $TextStrings.TimeInMS
#~~< cmbScreenSVR >~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
$cmbScreenSVR = New-Object System.Windows.Forms.ComboBox
$cmbScreenSVR.Font = New-Object System.Drawing.Font("Tahoma", 8.25, [System.Drawing.FontStyle]::Regular, [System.Drawing.GraphicsUnit]::Point, ([System.Byte](0)))
$cmbScreenSVR.FormattingEnabled = $true
$cmbScreenSVR.Location = New-Object System.Drawing.Point(169, 37)
$cmbScreenSVR.Size = New-Object System.Drawing.Size(94, 21)
$cmbScreenSVR.TabIndex = 0
$cmbScreenSVR.Text = "Blank"
$cmbScreenSVR.Items.AddRange([System.Object[]](@("Blank")))
#~~< cmbScreenTime >~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
$cmbScreenTime = New-Object System.Windows.Forms.ComboBox
$cmbScreenTime.Font = New-Object System.Drawing.Font("Tahoma", 8.25, [System.Drawing.FontStyle]::Regular, [System.Drawing.GraphicsUnit]::Point, ([System.Byte](0)))
$cmbScreenTime.FormattingEnabled = $true
$cmbScreenTime.Location = New-Object System.Drawing.Point(169, 95)
$cmbScreenTime.Size = New-Object System.Drawing.Size(94, 21)
$cmbScreenTime.TabIndex = 0
$cmbScreenTime.Text = "600"
$cmbScreenTime.Items.AddRange([System.Object[]](@("300", "450", "600", "1200")))
$GroupBox4.Controls.Add($Label7)
$GroupBox4.Controls.Add($Label2)
$GroupBox4.Controls.Add($cmbScreenSVR)
$GroupBox4.Controls.Add($cmbScreenTime)
$GroupBox4.ForeColor = [System.Drawing.Color]::Black
#~~< lblStatus >~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
$lblStatus = New-Object System.Windows.Forms.Label
$lblStatus.Font = New-Object System.Drawing.Font("Tahoma", 8.25, [System.Drawing.FontStyle]::Bold, [System.Drawing.GraphicsUnit]::Point, ([System.Byte](0)))
$lblStatus.Location = New-Object System.Drawing.Point(283, 25)
$lblStatus.Size = New-Object System.Drawing.Size(54, 18)
$lblStatus.TabIndex = 10
$lblStatus.Text = "xxx"
#~~< Label6 >~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
$Label6 = New-Object System.Windows.Forms.Label
$Label6.Font = New-Object System.Drawing.Font("Tahoma", 8.25, [System.Drawing.FontStyle]::Regular, [System.Drawing.GraphicsUnit]::Point, ([System.Byte](0)))
$Label6.Location = New-Object System.Drawing.Point(32, 25)
$Label6.Size = New-Object System.Drawing.Size(245, 18)
$Label6.TabIndex = 10
$Label6.Text = $TextStrings.SSStatus
$Label6.add_Click({Label6Click($Label6)})
$panelScreensaver.Controls.Add($GroupBox1)
$panelScreensaver.Controls.Add($GroupBox4)
$panelScreensaver.Controls.Add($lblStatus)
$panelScreensaver.Controls.Add($Label6)
#~~< panelResolution >~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
$panelResolution = New-Object System.Windows.Forms.Panel
$panelResolution.BorderStyle = [System.Windows.Forms.BorderStyle]::FixedSingle
$panelResolution.Location = New-Object System.Drawing.Point(2, 3)
$panelResolution.Size = New-Object System.Drawing.Size(437, 315)
$panelResolution.TabIndex = 10
$panelResolution.Text = ""
$panelResolution.BackColor = [System.Drawing.Color]::Gainsboro
#~~< GroupBox3 >~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
$GroupBox3 = New-Object System.Windows.Forms.GroupBox
$GroupBox3.Font = New-Object System.Drawing.Font("Tahoma", 8.25, [System.Drawing.FontStyle]::Regular, [System.Drawing.GraphicsUnit]::Point, ([System.Byte](0)))
$GroupBox3.Location = New-Object System.Drawing.Point(33, 176)
$GroupBox3.Size = New-Object System.Drawing.Size(369, 95)
$GroupBox3.TabIndex = 7
$GroupBox3.TabStop = $false
$GroupBox3.Text = $TextStrings.ColorQuality
#~~< lblColourchange >~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
$lblColourchange = New-Object System.Windows.Forms.Label
$lblColourchange.Font = New-Object System.Drawing.Font("Tahoma", 8.25, [System.Drawing.FontStyle]::Regular, [System.Drawing.GraphicsUnit]::Point, ([System.Byte](0)))
$lblColourchange.Location = New-Object System.Drawing.Point(169, 72)
$lblColourchange.Size = New-Object System.Drawing.Size(48, 20)
$lblColourchange.TabIndex = 3
$lblColourchange.Text = $TextStrings.EightBit
#~~< TrackBar2 >~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
$TrackBar2 = New-Object System.Windows.Forms.TrackBar
$TrackBar2.LargeChange = 2
$TrackBar2.Location = New-Object System.Drawing.Point(19, 37)
$TrackBar2.Maximum = 2
$TrackBar2.Size = New-Object System.Drawing.Size(329, 45)
$TrackBar2.TabIndex = 0
$TrackBar2.Text = "TrackBar2"
$TrackBar2.TickStyle = [System.Windows.Forms.TickStyle]::Both
$TrackBar2.BackColor = [System.Drawing.Color]::Gainsboro
$TrackBar2.add_Scroll({Trackbar2scroll($TrackBar2)})
#~~< Label4 >~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
$Label4 = New-Object System.Windows.Forms.Label
$Label4.Font = New-Object System.Drawing.Font("Tahoma", 8.25, [System.Drawing.FontStyle]::Regular, [System.Drawing.GraphicsUnit]::Point, ([System.Byte](0)))
$Label4.Location = New-Object System.Drawing.Point(19, 17)
$Label4.Size = New-Object System.Drawing.Size(29, 17)
$Label4.TabIndex = 1
$Label4.Text = $TextStrings.Low
#~~< Label5 >~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
$Label5 = New-Object System.Windows.Forms.Label
$Label5.Font = New-Object System.Drawing.Font("Tahoma", 8.25, [System.Drawing.FontStyle]::Regular, [System.Drawing.GraphicsUnit]::Point, ([System.Byte](0)))
$Label5.Location = New-Object System.Drawing.Point(324, 17)
$Label5.Size = New-Object System.Drawing.Size(39, 17)
$Label5.TabIndex = 1
$Label5.Text = $TextStrings.High
$GroupBox3.Controls.Add($lblColourchange)
$GroupBox3.Controls.Add($TrackBar2)
$GroupBox3.Controls.Add($Label4)
$GroupBox3.Controls.Add($Label5)
$GroupBox3.ForeColor = [System.Drawing.Color]::Black
#~~< GroupBox2 >~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
$GroupBox2 = New-Object System.Windows.Forms.GroupBox
$GroupBox2.Font = New-Object System.Drawing.Font("Tahoma", 8.25, [System.Drawing.FontStyle]::Regular, [System.Drawing.GraphicsUnit]::Point, ([System.Byte](0)))
$GroupBox2.Location = New-Object System.Drawing.Point(33, 61)
$GroupBox2.Size = New-Object System.Drawing.Size(369, 95)
$GroupBox2.TabIndex = 7
$GroupBox2.TabStop = $false
$GroupBox2.Text = $TextStrings.DisplayResolution
#~~< lblResChange >~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
$lblResChange = New-Object System.Windows.Forms.Label
$lblResChange.Font = New-Object System.Drawing.Font("Tahoma", 8.25, [System.Drawing.FontStyle]::Regular, [System.Drawing.GraphicsUnit]::Point, ([System.Byte](0)))
$lblResChange.Location = New-Object System.Drawing.Point(154, 72)
$lblResChange.Size = New-Object System.Drawing.Size(109, 20)
$lblResChange.TabIndex = 3
$lblResChange.Text = $TextStrings.DefaultResolution
#~~< TrackBar1 >~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
$TrackBar1 = New-Object System.Windows.Forms.TrackBar
$TrackBar1.LargeChange = 4
$TrackBar1.Location = New-Object System.Drawing.Point(19, 37)
$TrackBar1.Maximum = 4
$TrackBar1.Size = New-Object System.Drawing.Size(329, 45)
$TrackBar1.TabIndex = 0
$TrackBar1.Text = "TrackBar1"
$TrackBar1.TickStyle = [System.Windows.Forms.TickStyle]::Both
$TrackBar1.BackColor = [System.Drawing.Color]::Gainsboro
$TrackBar1.add_Scroll({TrackBar1Scroll($TrackBar1)})
#~~< LabelLow >~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
$LabelLow = New-Object System.Windows.Forms.Label
$LabelLow.Font = New-Object System.Drawing.Font("Tahoma", 8.25, [System.Drawing.FontStyle]::Regular, [System.Drawing.GraphicsUnit]::Point, ([System.Byte](0)))
$LabelLow.Location = New-Object System.Drawing.Point(19, 17)
$LabelLow.Size = New-Object System.Drawing.Size(29, 17)
$LabelLow.TabIndex = 1
$LabelLow.Text = $TextStrings.Low
#~~< LabelHigh >~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
$LabelHigh = New-Object System.Windows.Forms.Label
$LabelHigh.Font = New-Object System.Drawing.Font("Tahoma", 8.25, [System.Drawing.FontStyle]::Regular, [System.Drawing.GraphicsUnit]::Point, ([System.Byte](0)))
$LabelHigh.Location = New-Object System.Drawing.Point(324, 17)
$LabelHigh.Size = New-Object System.Drawing.Size(39, 17)
$LabelHigh.TabIndex = 1
$LabelHigh.Text = $TextStrings.High
$GroupBox2.Controls.Add($lblResChange)
$GroupBox2.Controls.Add($TrackBar1)
$GroupBox2.Controls.Add($LabelLow)
$GroupBox2.Controls.Add($LabelHigh)
$GroupBox2.ForeColor = [System.Drawing.Color]::Black
#~~< lblAdapter >~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
$lblAdapter = New-Object System.Windows.Forms.Label
$lblAdapter.Font = New-Object System.Drawing.Font("Tahoma", 8.25, [System.Drawing.FontStyle]::Regular, [System.Drawing.GraphicsUnit]::Point, ([System.Byte](0)))
$lblAdapter.Location = New-Object System.Drawing.Point(33, 29)
$lblAdapter.Size = New-Object System.Drawing.Size(369, 20)
$lblAdapter.TabIndex = 10
$lblAdapter.Text = "xx"
#~~< Label1 >~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
$Label1 = New-Object System.Windows.Forms.Label
$Label1.Font = New-Object System.Drawing.Font("Tahoma", 8.25, [System.Drawing.FontStyle]::Bold, [System.Drawing.GraphicsUnit]::Point, ([System.Byte](0)))
$Label1.Location = New-Object System.Drawing.Point(33, 11)
$Label1.Size = New-Object System.Drawing.Size(161, 18)
$Label1.TabIndex = 10
$Label1.Text = $TextStrings.CurrentSettings
$panelResolution.Controls.Add($GroupBox3)
$panelResolution.Controls.Add($GroupBox2)
$panelResolution.Controls.Add($lblAdapter)
$panelResolution.Controls.Add($Label1)
$SplitContainer1.Panel2.Controls.Add($panelScreensaver)
$SplitContainer1.Panel2.Controls.Add($panelResolution)
#~~< BtnCancel >~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
$BtnCancel = New-Object System.Windows.Forms.Button
$BtnCancel.FlatStyle = [System.Windows.Forms.FlatStyle]::System
$BtnCancel.Location = New-Object System.Drawing.Point(613, 21)
$BtnCancel.Size = New-Object System.Drawing.Size(87, 23)
$BtnCancel.TabIndex = 6
$BtnCancel.Text = $TextStrings.Close
$BtnCancel.UseVisualStyleBackColor = $true
$BtnCancel.add_Click({BtnCancelClick($BtnCancel)})
##~~< lblCoreConfigText >~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
$lblCoreConfigText = New-Object System.Windows.Forms.Label
$lblCoreConfigText.Font = New-Object System.Drawing.Font("Tahoma", 8.25, [System.Drawing.FontStyle]::Regular, [System.Drawing.GraphicsUnit]::Point, ([System.Byte](0)))
$lblCoreConfigText.Location = New-Object System.Drawing.Point(83, 26)
$lblCoreConfigText.Size = New-Object System.Drawing.Size(403, 33)
$lblCoreConfigText.TabIndex = 12
$lblCoreConfigText.Text = $TextStrings.PageDescription
#~~< BtnOK >~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
$BtnOK = New-Object System.Windows.Forms.Button
$BtnOK.FlatStyle = [System.Windows.Forms.FlatStyle]::System
$BtnOK.Location = New-Object System.Drawing.Point(513, 21)
$BtnOK.Size = New-Object System.Drawing.Size(87, 23)
$BtnOK.TabIndex = 6
$BtnOK.Text = $TextStrings.Apply
$BtnOK.UseVisualStyleBackColor = $true
$BtnOK.add_Click({BtnOKClick($BtnOK)})
#~~< lblCoreConfigTitle >~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
$lblCoreConfigTitle = New-Object System.Windows.Forms.Label
$lblCoreConfigTitle.Font = New-Object System.Drawing.Font("Tahoma", 8.25, [System.Drawing.FontStyle]::Bold, [System.Drawing.GraphicsUnit]::Point, ([System.Byte](0)))
$lblCoreConfigTitle.Location = New-Object System.Drawing.Point(83, 9)
$lblCoreConfigTitle.Size = New-Object System.Drawing.Size(346, 17)
$lblCoreConfigTitle.TabIndex = 11
$lblCoreConfigTitle.Text = $TextStrings.WindowTitle
#~~< PictureBox1 >~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
$PictureBox1 = New-Object System.Windows.Forms.PictureBox
$PictureBox1.Location = New-Object System.Drawing.Point(5, 5)
$PictureBox1.Size = New-Object System.Drawing.Size(59, 56)
$PictureBox1.TabIndex = 15
$PictureBox1.TabStop = $false
$PictureBox1.Text = ""
#region PictureBox1.Image = ([System.Drawing.Image](...)
$PictureBox1.Image = ([System.Drawing.Image]([System.Drawing.Image]::FromStream((New-Object System.IO.MemoryStream(($$ = [System.Convert]::FromBase64String(
"iVBORw0KGgoAAAANSUhEUgAAADkAAAA3CAIAAAA5cHWiAAAAAXNSR0IArs4c6QAAAARnQU1BAACx"+
                                 "jwv8YQUAAAAgY0hSTQAAeiYAAICEAAD6AAAAgOgAAHUwAADqYAAAOpgAABdwnLpRPAAAAAlwSFlz"+
                                 "AAAOwQAADsEBuJFr7QAADVJJREFUaEPtmAlQ08cex5ciKqDcICAggopSBaQeDy88EAtWRUVF0epY"+
                                 "n3QUW7GK1rMKRAVFrgCicl9yBBKuhCNAwh3uACEJIRDuJCAgkUvct0DbedOHin3lvemMv2H+kwn7"+
                                 "3/3sd7+/325WDEII/i6BWP8uAf4uoOPr/5l1RhT4rOuMyPrZrzMj6/t1HR0d7exo5/M7e7qFIpFo"+
                                 "aGhohgim3+17c4teVZmVQcqjZpbRqNVVxYzaMkZdJbOe3sipb27idHS0CgT83t5XItHAmzcDw8ND"+
                                 "w8PD0x/1z7V8L2sZrTgqAqex5LHJtuBDx/Fnf8T/gkl+HkJKTqPk5xeU0fIqK2i19LJ6RjWLWcNm"+
                                 "1zdy2BwOm8ttaGtr6exs7xYKXvV09/f3oskMDg7+Obg/vPVe1qJ8qpdXlOR8bzA7BsxJAVJkIFcI"+
                                 "1CvnLWGpGjRbfMd7HsOLxHOjk5sSiIwsSk1haR2top5WXoOCzWJwOSxeM6e1tbm1taW7WzizrNQc"+
                                 "8qUrwXOlvYHSS6CaAhbmAA0a0GQCjRag9MrY+l0tB7JbYQkDUqtgZtkosWSYUDgSkyOKyhTEZ3cQ"+
                                 "C7uIBZ2Mhk5+V3tMTMxf4pD36pqdQdxz8OkcKW+gGAUWJAH1LKBZBLRrgW4jWNSlafqmoAp298E2"+
                                 "PmwXwPYe2N4N23pgqxBy+ZDVDmt5EFc4SqkQNnOZgYFBf0lqTs2KZMjOIP1ji9/suT5AIQKoJAL1"+
                                 "TKBRALSrgC4baHeI6/cHJYxTsngTf62Q3Q4bO2ATH7YIYFs35PfBonpYx3lVUV4SHR09gx7o7+/L"+
                                 "SEvZZPZUXS8YSAcD5XigRgIaVKBVDhbXA90WoNXzg8tIAw/SG2BVA6zmQDoX0pvG5WS0jKNzOmFK"+
                                 "yVh9o5CclY7HE2aQld/VSUgkrDcN2HUAD+YFAoWYXy2rVQIW14zbQJ2//aSouBqW1MJCOiyqhcUM"+
                                 "WFwPaSxYyoblaAJNMDJ7mMFuxePj09NJM8jKa+bGxSQarXt6+ly6onYwmBcKVBKAWua4ZRdVAR02"+
                                 "WNimY9aXQH5HLYfkEkguhTkVMKcS5lZBCh3m1UBKLQwkiho4jdHRUVQqdQZZmXW1L6MIq77yP3uB"+
                                 "tG5rNJjjDxTDJ5xAHHfCogqgUS9t0OYROkTKe4fPfkfIeZdEhcl5MKUAphbBdBrEF8DAlD5uIzss"+
                                 "LIxOp88ga1VFaeCLmOWGvifOJFlaJ4rJ+AKZIKAUNY67IAWoZwP1fKBRfuGXzti0gdBEUVjiUHjS"+
                                 "SETyaGTqWFQajM+AwQQYmdzLa2KhxGpra5tBVlphnotLiO5K7H6buG8O4RS0AoC034S0MUAFD1RJ"+
                                 "QI0CVAr3n+W+eNmLDe3Fhr32jRD5Rw+F4EfiMkZTct4mkceycjvJRFpxAa2Nyc+Nr2SUMgdFg32C"+
                                 "voHe138OfeqaRc3OPHc+QGeFr9nuiO2WEUuNggDaFOQCJ6SNAwuSx72rlGuyv87VX4DxFWJ8e9ye"+
                                 "9b2IExEpffcDOT87k31dKoNODN3bOfh4XzC0hXA3LNyfkXrNs8eOGGiLqS6rGOR3vBZ+2n42Bevb"+
                                 "t2+zSGn7rf20lvms2fjCaF3AcuMXEgo+YJ4fkA8Byr/hKpKWbqJdduZddmm77c4Pju+LS2v/7hfm"+
                                 "Nw/h5ntCV/PmgG1jj2zhwy28oZ09Y0egYDe9xwwDrXB88xcDDuavbhyhOp6vKKMNDr6ZpsxTsA4N"+
                                 "DaYmJa4xeaKu46W3yk9bz1tLz3ueqheQ9gKyT4FCKFCKHjeufKLKqpxTDsyrmKZwHB/jRz9wS7Dp"+
                                 "J3jgKjzoBrV25fpsY3lshrukOxMMCuAGyJRrK1nrNnbqKXfLU+GZ7fCKZe+p7eSQHSUlT4sLs6ez"+
                                 "CU/B+kYkSoyLU1n0QEXLQ13HU1nTXV7NTUrJDcx3BzI+QDZgHFc5GsjHztdOPXWxxj+Mc/4+0/I2"+
                                 "3HoJ2jpDq8tQ3RSCzSP6hvm3geiM5NsLSuUQiPrmwmoVd5HkwS7wA2Pf+tFre+nf7OpjWUC4r75o"+
                                 "Y2i4/0dxp2AVCrqiwl+KfXFbTMxZfN4DCRmM+DwXIOUMpDETuMi4AUA+FMhHSqjF21+rcrhfsvUW"+
                                 "3H0ZnsbADSehxGoIDKD2ISh3pNlKJfXRkpHNGmVkeapoNcxQCBJKH+1X9yjSUx00FmtYLtPB2gt5"+
                                 "RxvKt4cVb83OfVJTU/kBP0zByuM2hoeEe3sTnJwIh46Fai/zBOAeAHcBuAOAE5BwBVIeQMYfyKEq"+
                                 "Fmn7fZHloXuOkdD8AtSygEAfim+ERrYjX1o2Shs3ihumH5KhmIL2/bNww/LtaWKUUnmbOqULyf8w"+
                                 "Hjq4hG0sK2iQGaVrZsabvESOhgd8fA98oMBNwUqvrsY+cY+J909ND89MT8nOyslMpz57TrrgkLDL"+
                                 "InTRUj8gieifAOCF9gh9k8QbTqQNe25q2ECwGKrugeuO92ptrpm1tAzoNi2xEmobuNnJNpotJ6ZK"+
                                 "pjI1+1NkD7eBg4maRq2bFAlGCgMC+e4K4INXToMnqllmVsUnHMqetXVMXY+nYO3q6sqnUnHxMc+f"+
                                 "+T718UqIjSBnEAooaQVUUh4lg0jMjIvP8cZmnb+YtmFnguryWNM9mafssCuPkBfZQMN9zfJG5UCH"+
                                 "LmnEN9zL0FwfIr7Md4nGna8kg63l7kdqJbnOP1Ovei5Z06hTDQSvEG9hrmhI/dIhByRBabdiI0PO"+
                                 "HUsYYFdzv619CtwP3WWMDo+2traic35mRkZczMvI8NCI4OfhgX6RIVg8LoiUEp9OTMvNzk3PLCJm"+
                                 "1Bw/47z1u55ZWiyxZQy1zd1r9+TI6HmKafhLLItV34I1lsBslAv0kHiBneX2QHyLp6o+d6VCuNkc"+
                                 "Hlk8yVXWY3gpSQjMqNu2dvt+DyN17pgVFhb+p3E/7d4FSV6Qnx8VEeHx+JG76wNv94cBWPekxIjy"+
                                 "0tySkjyLIzfVzId0TRtXbo+cpf5EXDNI0TB2tXmY/CpnWY2LOvOvnlbywur7Bsrsuztf/9FsCb/D"+
                                 "C3rKlTEPxDECdb+S5V+UWS6AV7ZQ7C2t93G53P+Klc1mB4eEBDx7Fhwc7Ofnd+fOnVs3bt65dQvj"+
                                 "fC/A3x9pHB4WstP2heamTCDnKrU0Sndj3OrtPkDdEWjcl13zSH7huZVzrtqL3XVXOP2j8soIRTmn"+
                                 "HVJ4V4PLEVKePGAeZSw56iQl/G7RXsPk5GS0H/1JVlT5amtrcThcdnZ2amoq+hAXFxcZGYnF+rq4"+
                                 "uDg6Op61O3vxxx/RMcXx57vLtxGV9FMNzEK01mGA3FUp3ceLN3jpffWz5MKjMtLbrKVu3Jp7xk58"+
                                 "6WMDwwfHpP3sJc6HaT/JVpbArdMeurbwpDHq8H2/e6flASaTmTMRZDI5Nzc3Pz+/eCLy8vLS09Gx"+
                                 "Hx8UFITBYFxdXQkEwuFvr6zfT5TWug4Ub6oY+qza7LpE/zwAFgDsMNl4zHiF5W6p3b9omZ8BYndP"+
                                 "KLndkLf2BN88+EoC/hPE6lkfs/60mvUH8dGlS1paGolEysrKQqAFBQXl5eVIZhRlZWWIGx2l0b+S"+
                                 "kpKQ0igiwsOMd1yevchfc63XqnU3lVVPALD9C/GN9hcedvFHKHk5a3XMN0hp3VRb6Gghce4n5XOh"+
                                 "8xUer1VlfrvSavWHT+Uf17W/vx+BotWfBC0tLa2rq+NMRHV1NVIXPZHAFAoF+Sw2NhY1dnK6b3ro"+
                                 "ua7+D3NkbABYq6yyNyEhY1KCgQFRVkbRrqXrvpZVuHtU4Yj93N0PdQDRRHmPpre395Q2/V27j7Oi"+
                                 "psgDiLJkIioqKhgMRkNDA2JF5Qyho5xFT2QPVGjQCiCrIEN/e/Ksih5aeoNTJ+/RSpmT49XW1uNw"+
                                 "SYPDQzRazRolhSM75x65Iabivl7Re8Pp06d7eno+fOCaFivqAomHlENPBIoKQmNjI8JFrMgGCBp9"+
                                 "gxCR9ogSzYfH49FoNNOvz+Lw2aMjvwJUVdWEhb3kcJpKaRXF1QzH8w4mK8U3XlMSc1uxaZcp8tLr"+
                                 "f4sp02u6rGjAvr6++vp6hFtZWYnMij5PWhaJijxAJBKrqqrQHND2gVhReHh40mvqHBzsGYy62lqW"+
                                 "n18wk8mmUArzC2h8gTAqkrDGWFH+9iplM21PT8/m5uaWlpbJF/l8/pRnrk9gRbjv3r1DqYZSFVkW"+
                                 "sSJvIG5kD2SMjo6OyQHQFQuSGX2D5nDu3HkcLu3KlZ+MjU2w2CAyGRWQcvQqkZRZmFVhdHjxnK0L"+
                                 "jh8/PtnDpLuQuO9zwqexTvMAPzY2hnBROYuKirKxsbGwsLC0tLS1PUUgoBwtTEpKr6tjtnA7Vh3d"+
                                 "vGbNmsDAwMnc7ezsRC9+2plwmkAfbYaUTkhICAgI8PLywmKx9vb2hw8fi42N7+8fEAiEefmly/RX"+
                                 "XLp0Ce0gaH0+TDk51ozo+vs0UA1isVjIx8gqiOn69etmZjucnZ1QXh61OW5lZYVSCvnqo9P+X7D+"+
                                 "AQIZGpnYzs5ux0RMeUD5/3jgfaOi5UY3MahiTFPOT9sLPrXTGWo/s379a6E/s/61ev7W22ddP+v6"+
                                 "2QMz44F/AdN9g8ujTo7rAAAAAElFTkSuQmCC")),0,$$.Length)))))
#endregion
$frmDisplay.Controls.Add($SplitContainer1)
$frmDisplay.Controls.Add($BtnCancel)
$frmDisplay.Controls.Add($lblCoreConfigText)
$frmDisplay.Controls.Add($BtnOK)
$frmDisplay.Controls.Add($lblCoreConfigTitle)
$frmDisplay.Controls.Add($PictureBox1)

#endregion

#region Functions

function Main
{
	[System.Windows.Forms.Application]::EnableVisualStyles()
	formload
	$frmDisplay.ShowDialog()
}

function formload
{
	#Moves objects into panels
	$SplitContainer1.Size = New-Object System.Drawing.Size(615, 304)
	$SplitContainer1.SplitterDistance = 150
	$frmDisplay.size = New-Object System.Drawing.Size(610, 445)
	$BtnCancel.Location = New-Object System.Drawing.Point(502, 380)
	$BtnOK.Location = New-Object System.Drawing.Point(391, 380)
				
	#Docks panels to split-container
	$panelResolution.Dock = [System.Windows.Forms.DockStyle]::Fill
	$panelScreensaver.Dock = [System.Windows.Forms.DockStyle]::Fill
				
	#Gets Screensaver status
	$Key = Get-Item "HKCU:\Control Panel\Desktop"
	$ScreenActive = $key.getvalue("ScreenSaveActive")
	$ScreenTime = $key.getvalue("ScreenSaveTimeOut")
	
	if ($ScreenActive -eq "0")
	{
		$chkboxOff.checked = $true
		$chkboxOn.checked = $False
		$Groupbox4.enabled = $False
		$lblStatus.text = "Off"
	}
	if ($ScreenActive -eq "1")
	{
		$chkboxOff.checked = $False
		$chkboxOn.checked = $True
		$cmbScreentime.Text = $ScreenTime
		$Groupbox4.enabled = $True
		$lblStatus.text = "On"
	}
			
	#Gets Display Resolution
	$vs = Get-ChildItem HKLM:\SYSTEM\CurrentControlSet\Control\Video\*\0000\VolatileSettings
	$parentKey = Get-Item $vs.PSParentPath
	$XStatus = $parentkey.getvalue("DefaultSettings.XResolution")
	$YStatus = $parentkey.getvalue("DefaultSettings.YResolution")
	$BitStatus = $parentkey.getvalue("DefaultSettings.BitsPerPel")
	$BitAdapter = $parentkey.getvalue("Device Description")
		
	$lblAdapter.text = $BitAdapter
			
	if ($XStatus -eq "640")
	{
		if ($YStatus -eq "480")
		{
			$TrackBar1.Value = 0
			$lblReschange.text = "640 x 480"
		}
	}
			
	if ($XStatus -eq "800")
	{
		if ($YStatus -eq "600")
		{
			$TrackBar1.Value = 1
			$lblReschange.text = "800 x 600"
		}
	}
			
	if ($XStatus -eq "1024")
	{
		if ($YStatus -eq "768")
		{
			$TrackBar1.Value = 2
			$lblReschange.text = "1024 x 768"
		}
	}
			
	if ($XStatus -eq "1280")
	{
		if ($YStatus -eq "800")
		{
			$TrackBar1.Value = 3
			$lblReschange.text = "1280 x 800"
		}
	}
			
	if ($XStatus -eq "1280")
	{
		if ($YStatus -eq "1024")
		{
			$TrackBar1.Value = 4
			$lblReschange.text = "1280 x 1024"
		}
	}
		
	if ($BitStatus -eq "00000008")
	{
		$TrackBar2.Value = 0
		$lblColourchange.text = "8 Bit"
	}
		
	if ($BitStatus -eq "00000010")
	{
		$TrackBar2.Value = 1
		$lblColourchange.text = "16 Bit"
	}
			
	if ($BitStatus -eq "00000020")
	{
		$TrackBar2.Value = 2
		$lblColourchange.text = "32 Bit"
	}
}



function LblResolutionClick( $object )
{
	$lblScreensaver.Font = New-Object System.Drawing.Font("Tahoma", 8.25, [System.Drawing.FontStyle]::Regular, [System.Drawing.GraphicsUnit]::Point, ([System.Byte] ( 0 ) ))
	$lblResolution.Font = New-Object System.Drawing.Font("Tahoma", 8.25, [System.Drawing.FontStyle]::Bold, [System.Drawing.GraphicsUnit]::Point, ([System.Byte] ( 0 ) ))
	
	$PanelResolution.visible = $true
	$PanelScreensaver.visible = $False
}

function LblScreensaverClick( $object )
{
	$lblScreensaver.Font = New-Object System.Drawing.Font("Tahoma", 8.25, [System.Drawing.FontStyle]::Bold, [System.Drawing.GraphicsUnit]::Point, ([System.Byte] ( 0 ) ))
	$lblResolution.Font = New-Object System.Drawing.Font("Tahoma", 8.25, [System.Drawing.FontStyle]::Regular, [System.Drawing.GraphicsUnit]::Point, ([System.Byte] ( 0 ) ))

	$PanelResolution.visible = $False
	$PanelScreensaver.visible = $True
}

function TrackBar1Scroll($object)
{
	if ($TrackBar1.Value -eq 0)
	{
		$lblReschange.text = "640 x 480"
	}	
	if ($TrackBar1.Value -eq 1)
	{
		$lblReschange.text = "800 x 600"
	}	
	if ($TrackBar1.Value -eq 2)
	{
		$lblReschange.text = "1024 x 768"
	}
	if ($TrackBar1.Value -eq 3)
	{
		$lblReschange.text = "1280 x 800"
	}
	if ($TrackBar1.Value -eq 4)
	{
		$lblReschange.text = "1280 x 1024"
	}
}

function TrackBar2Scroll($object)
{
	if ($TrackBar2.Value -eq 0)
	{
		$lblColourchange.text = "8 Bit"
	}	
	if ($TrackBar2.Value -eq 1)
	{
		$lblColourchange.text = "16 Bit"
	}	
	if ($TrackBar2.Value -eq 2)
	{
		$lblColourchange.text = "32 bit"
	}
}

function SettingsEnable($object)
{
	if ($chkboxOn.checked -eq $true)
	{
		$Groupbox4.enabled = $True
	}
	if ($chkboxOff.checked -eq $true)
	{
		$Groupbox4.enabled = $False
	}
}

function BtnOKClick($object)
{
	if ($chkboxOn.checked -eq $true)
	{
		New-ItemProperty -path "HKCU:\Control Panel\Desktop" -name "ScreenSaveActive" -value "1" -force
		New-ItemProperty -path "HKCU:\Control Panel\Desktop" -name "ScreenSaveTimeOut" -value $cmbScreenTime.selecteditem -force
		$lblStatus.text = "On"
		#Output to Logfile
		(Get-Date -F G) + " Command Executed: New-ItemProperty -path HKCU:\Control Panel\Desktop -name ScreenSaveActive -value 1 -force"  | Out-File -FilePath $Logfile -append
		(Get-Date -F G) + " Command Executed: New-ItemProperty -path HKCU:\Control Panel\Desktop -name ScreenSaveTimeOut -value " + $cmbScreenTime.selecteditem + " -force" | Out-File -FilePath $Logfile -append
	}
	if ($chkboxOff.checked -eq $true)
	{
		New-ItemProperty -path "HKCU:\Control Panel\Desktop" -name "ScreenSaveActive" -value "0" -force
		$lblStatus.text = "Off"
		#Output to Logfile
		(Get-Date -F G) + " Command Executed: New-ItemProperty -path HKCU:\Control Panel\Desktop -name ScreenSaveActive -value 0 -force" | Out-File -FilePath $Logfile -append

	}
	
	#Display Resolution
	$vs = Get-ChildItem HKLM:\SYSTEM\CurrentControlSet\Control\Video\*\0000\VolatileSettings
		
	$parentKey = Get-Item $vs.PSParentPath
		
	if ($TrackBar1.value -eq 0)
	{
		$xvalue = "640"
		New-ItemProperty -path $parentKey.PSpath -name "DefaultSettings.XResolution" -propertytype DWord -value $xvalue -force
				
		$yvalue = "480"
		New-ItemProperty -path $parentKey.PSpath -name "DefaultSettings.YResolution" -propertytype DWord -value $yvalue -force
	}
		
	if ($TrackBar1.value -eq 1)
	{
		$xvalue = "800"
		New-ItemProperty -path $parentKey.PSpath -name "DefaultSettings.XResolution" -propertytype DWord -value $xvalue -force
												
		$yvalue = "600"
		New-ItemProperty -path $parentKey.PSpath -name "DefaultSettings.YResolution" -propertytype DWord -value $yvalue -force
	}
	
	if ($TrackBar1.value -eq 2)
	{
		$xvalue = "1024"
		New-ItemProperty -path $parentKey.PSpath -name "DefaultSettings.XResolution" -propertytype DWord -value $xvalue -force
								
		$yvalue = "768"
		New-ItemProperty -path $parentKey.PSpath -name "DefaultSettings.YResolution" -propertytype DWord -value $yvalue -force
	}
		
	if ($TrackBar1.value -eq 3)
	{
		$xvalue = "1280"
		New-ItemProperty -path $parentKey.PSpath -name "DefaultSettings.XResolution" -propertytype DWord -value $xvalue -force
								
		$yvalue = "800"
		New-ItemProperty -path $parentKey.PSpath -name "DefaultSettings.YResolution" -propertytype DWord -value $yvalue -force
	}
		
	if ($TrackBar1.value -eq 4)
	{
		$xvalue = "1280"
		New-ItemProperty -path $parentKey.PSpath -name "DefaultSettings.XResolution" -propertytype DWord -value $xvalue -force
											
		$yvalue = "1024"
		New-ItemProperty -path $parentKey.PSpath -name "DefaultSettings.YResolution" -propertytype DWord -value $yvalue -force
	}
		
	if ($TrackBar2.value -eq 0)
	{
		$BITvalue = "00000008"
		New-ItemProperty -path $parentKey.PSpath -name "DefaultSettings.BitsPerPel" -propertytype DWord -value $BITvalue -force
	}
		
	if ($TrackBar2.value -eq 1)
	{
		$BITvalue = "00000010"
		New-ItemProperty -path $parentKey.PSpath -name "DefaultSettings.BitsPerPel" -propertytype DWord -value $BITvalue -force
	}
		
	if ($TrackBar2.value -eq 2)
	{
		$BITvalue = "00000020"
		New-ItemProperty -path $parentKey.PSpath -name "DefaultSettings.BitsPerPel" -propertytype DWord -value $BITvalue -force
	}
		
	#Confirmation Dialog
	$Flag = "Information"
	$Message = "Your display settings have been saved to the registry`n Please restart you computer for the settings to be applied.."
	. $ScriptDirectory\Common.ps1
	Message
	$pboxinfo.visible = $true
	$frmMessage.ShowDialog()
		
	#Output to Logfile
	(Get-Date -F G) + " Command Executed: New-ItemProperty -path " + $parentKey.PSpath + "-name DefaultSettings.XResolution -propertytype DWord -value " + $xvalue + " -force" | Out-File -FilePath $Logfile -append
	(Get-Date -F G) + " Command Executed: New-ItemProperty -path " + $parentKey.PSpath + "-name DefaultSettings.YResolution -propertytype DWord -value " + $yvalue + " -force" | Out-File -FilePath $Logfile -append
	(Get-Date -F G) + " Command Executed: New-ItemProperty -path " + $parentKey.PSpath + "-name DefaultSettings.BitsPerPel -propertytype DWord -value " + $bitvalue + " -force" | Out-File -FilePath $Logfile -append
}


function BtnCancelClick( $object )
{
$frmDisplay.Hide()
$FormControl.enabled = $True
}

if(!(Test-Path variable:\ScriptDirectory))
{ ScriptDirectory = Split-Path $MyInvocation.MyCommand.Path }

Main

#endregion
