Import-LocalizedData -BindingVariable TextStrings -FileName IpSettings.psd1
#region Constructor

[void][System.Reflection.Assembly]::LoadWithPartialName("System.Windows.Forms")
[void][System.Reflection.Assembly]::LoadWithPartialName("System.Drawing")

#endregion

#region Form Creation
#~~< IPSettingsform >~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
$IPSettingsform = New-Object System.Windows.Forms.Form
$IPSettingsform.ClientSize = New-Object System.Drawing.Size(1028, 746)
$IPSettingsform.ControlBox = $false
$IPSettingsform.Font = New-Object System.Drawing.Font("Tahoma", 8.25)
$IPSettingsform.FormBorderStyle = [System.Windows.Forms.FormBorderStyle]::FixedSingle
$IPSettingsform.MaximizeBox = $false
$IPSettingsform.MinimizeBox = $false
$IPSettingsform.ShowIcon = $false
$IPSettingsform.StartPosition = [System.Windows.Forms.FormStartPosition]::CenterScreen
$IPSettingsform.Text = $TextStrings.PageTitle
$IPSettingsform.BackColor = [System.Drawing.Color]::White
#~~< SplitContainer1 >~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
$SplitContainer1 = New-Object System.Windows.Forms.SplitContainer
$SplitContainer1.Location = New-Object System.Drawing.Point(-1, 55)
$SplitContainer1.Panel1.Text = ""
$SplitContainer1.Panel2.Text = ""
$SplitContainer1.Size = New-Object System.Drawing.Size(1285, 724)
$SplitContainer1.SplitterDistance = 150
$SplitContainer1.TabIndex = 66
$SplitContainer1.Text = ""
#~~< SplitContainer1.Panel1 >~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
#~~< Panel6 >~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
$Panel6 = New-Object System.Windows.Forms.Panel
$Panel6.BorderStyle = [System.Windows.Forms.BorderStyle]::FixedSingle
$Panel6.Dock = [System.Windows.Forms.DockStyle]::Fill
$Panel6.Location = New-Object System.Drawing.Point(0, 0)
$Panel6.Size = New-Object System.Drawing.Size(150, 724)
$Panel6.TabIndex = 2
$Panel6.Text = ""
$Panel6.BackColor = [System.Drawing.Color]::Gainsboro
#~~< lblAdapterStatus >~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
$lblAdapterStatus = New-Object System.Windows.Forms.Label
$lblAdapterStatus.Location = New-Object System.Drawing.Point(12, 98)
$lblAdapterStatus.Size = New-Object System.Drawing.Size(119, 45)
$lblAdapterStatus.TabIndex = 65
$lblAdapterStatus.Text = $TextStrings.AdapterStatus
$lblAdapterStatus.Cursor = [System.Windows.Forms.Cursors]::Hand
$lblAdapterStatus.add_Click({lblAdapterStatusClick($lblAdapterStatus)})
#~~< lblAdvancedDNS >~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
$lblAdvancedDNS = New-Object System.Windows.Forms.Label
$lblAdvancedDNS.Location = New-Object System.Drawing.Point(12, 58)
$lblAdvancedDNS.Size = New-Object System.Drawing.Size(148, 18)
$lblAdvancedDNS.TabIndex = 63
$lblAdvancedDNS.Text = $TextStrings.DNSOptions
$lblAdvancedDNS.Cursor = [System.Windows.Forms.Cursors]::Hand
$lblAdvancedDNS.add_Click({lblAdvancedDNSClick($lblAdvancedDNS)})
#~~< lblCurrentIP >~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
$lblCurrentIP = New-Object System.Windows.Forms.Label
$lblCurrentIP.Font = New-Object System.Drawing.Font("Tahoma", 8.25, [System.Drawing.FontStyle]::Bold, [System.Drawing.GraphicsUnit]::Point, ([System.Byte](0)))
$lblCurrentIP.Location = New-Object System.Drawing.Point(12, 18)
$lblCurrentIP.Size = New-Object System.Drawing.Size(148, 18)
$lblCurrentIP.TabIndex = 64
$lblCurrentIP.Text = $TextStrings.CurrentIPSettings
$lblCurrentIP.Cursor = [System.Windows.Forms.Cursors]::Hand
$lblCurrentIP.add_Click({lblCurrentIPClick($lblCurrentIP)})
$Panel6.Controls.Add($lblAdapterStatus)
$Panel6.Controls.Add($lblAdvancedDNS)
$Panel6.Controls.Add($lblCurrentIP)
$SplitContainer1.Panel1.Controls.Add($Panel6)
#~~< SplitContainer1.Panel2 >~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
#~~< PanelDNS >~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
$PanelDNS = New-Object System.Windows.Forms.Panel
$PanelDNS.BorderStyle = [System.Windows.Forms.BorderStyle]::FixedSingle
$PanelDNS.Location = New-Object System.Drawing.Point(549, 409)
$PanelDNS.Size = New-Object System.Drawing.Size(240, 92)
$PanelDNS.TabIndex = 64
$PanelDNS.Text = ""
$PanelDNS.BackColor = [System.Drawing.Color]::Silver
#~~< BtnCancelDNSAdd >~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
$BtnCancelDNSAdd = New-Object System.Windows.Forms.Button
$BtnCancelDNSAdd.FlatStyle = [System.Windows.Forms.FlatStyle]::System
$BtnCancelDNSAdd.Location = New-Object System.Drawing.Point(144, 56)
$BtnCancelDNSAdd.Size = New-Object System.Drawing.Size(87, 23)
$BtnCancelDNSAdd.TabIndex = 67
$BtnCancelDNSAdd.Text = $TextStrings.Cancel
$BtnCancelDNSAdd.UseVisualStyleBackColor = $true
$BtnCancelDNSAdd.add_Click({CancelAddDNS($BtnCancelDNSAdd)})
#~~< TxtDNSadd >~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
$TxtDNSadd = New-Object System.Windows.Forms.TextBox
$TxtDNSadd.Location = New-Object System.Drawing.Point(24, 26)
$TxtDNSadd.Size = New-Object System.Drawing.Size(146, 21)
$TxtDNSadd.TabIndex = 51
$TxtDNSadd.Text = ""
#~~< BtnOkaddDNS >~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
$BtnOkaddDNS = New-Object System.Windows.Forms.Button
$BtnOkaddDNS.FlatStyle = [System.Windows.Forms.FlatStyle]::System
$BtnOkaddDNS.Location = New-Object System.Drawing.Point(24, 56)
$BtnOkaddDNS.Size = New-Object System.Drawing.Size(87, 23)
$BtnOkaddDNS.TabIndex = 66
$BtnOkaddDNS.Text = $TextStrings.OK
$BtnOkaddDNS.UseVisualStyleBackColor = $true
$BtnOkaddDNS.add_Click({OKDNSAdd($BtnOkaddDNS)})
#~~< Label4 >~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
$Label4 = New-Object System.Windows.Forms.Label
$Label4.Location = New-Object System.Drawing.Point(24, 1)
$Label4.Size = New-Object System.Drawing.Size(205, 15)
$Label4.TabIndex = 64
$Label4.Text = $TextStrings.AddDNSByIP
$PanelDNS.Controls.Add($BtnCancelDNSAdd)
$PanelDNS.Controls.Add($TxtDNSadd)
$PanelDNS.Controls.Add($BtnOkaddDNS)
$PanelDNS.Controls.Add($Label4)
#~~< PanelAllDNS >~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
$PanelAllDNS = New-Object System.Windows.Forms.Panel
$PanelAllDNS.BorderStyle = [System.Windows.Forms.BorderStyle]::FixedSingle
$PanelAllDNS.Location = New-Object System.Drawing.Point(461, 3)
$PanelAllDNS.Size = New-Object System.Drawing.Size(408, 336)
$PanelAllDNS.TabIndex = 85
$PanelAllDNS.Text = ""
$PanelAllDNS.Visible = $false
$PanelAllDNS.BackColor = [System.Drawing.Color]::Gainsboro
#~~< lblDNSSelectedAdapter >~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
$lblDNSSelectedAdapter = New-Object System.Windows.Forms.Label
$lblDNSSelectedAdapter.Font = New-Object System.Drawing.Font("Tahoma", 8.25, [System.Drawing.FontStyle]::Bold, [System.Drawing.GraphicsUnit]::Point, ([System.Byte](0)))
$lblDNSSelectedAdapter.Location = New-Object System.Drawing.Point(8, 32)
$lblDNSSelectedAdapter.Size = New-Object System.Drawing.Size(115, 14)
$lblDNSSelectedAdapter.TabStop = $false
$lblDNSSelectedAdapter.Text = $TextStrings.SelectedAdapter
#~~< TxtBoxName >~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
$DNSTxtBoxName = New-Object System.Windows.Forms.TextBox
$DNSTxtBoxName.BorderStyle = [System.Windows.Forms.BorderStyle]::None
$DNSTxtBoxName.Font = New-Object System.Drawing.Font("Tahoma", 8.25, [System.Drawing.FontStyle]::Italic, [System.Drawing.GraphicsUnit]::Point, ([System.Byte](0)))
$DNSTxtBoxName.Location = New-Object System.Drawing.Point(126, 32)
$DNSTxtBoxName.ReadOnly = $true
$DNSTxtBoxName.Size = New-Object System.Drawing.Size(180, 14)
$DNSTxtBoxName.TabIndex = 1
$DNSTxtBoxName.Text = ""
$DNSTxtBoxName.BackColor = [System.Drawing.Color]::Gainsboro
#~~< lblAdapterDescription >~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
$lblDNSAdapterDescription = New-Object System.Windows.Forms.Label
$lblDNSAdapterDescription.Font = New-Object System.Drawing.Font("Tahoma", 8.25, [System.Drawing.FontStyle]::Bold, [System.Drawing.GraphicsUnit]::Point, ([System.Byte](0)))
$lblDNSAdapterDescription.Location = New-Object System.Drawing.Point(8, 54)
$lblDNSAdapterDescription.Size = New-Object System.Drawing.Size(134, 14)
$lblDNSAdapterDescription.TabStop = $false
$lblDNSAdapterDescription.Text = $TextStrings.AdapterDescription
#~~< TxtBoxDescription >~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
$DNSTxtBoxDescription = New-Object System.Windows.Forms.TextBox
$DNSTxtBoxDescription.BorderStyle = [System.Windows.Forms.BorderStyle]::None
$DNSTxtBoxDescription.Font = New-Object System.Drawing.Font("Tahoma", 8.25, [System.Drawing.FontStyle]::Italic, [System.Drawing.GraphicsUnit]::Point, ([System.Byte](0)))
$DNSTxtBoxDescription.Location = New-Object System.Drawing.Point(144, 54)
$DNSTxtBoxDescription.ReadOnly = $true
$DNSTxtBoxDescription.Size = New-Object System.Drawing.Size(242, 14)
$DNSTxtBoxDescription.TabStop = $False
$DNSTxtBoxDescription.Text = ""
$DNSTxtBoxDescription.BackColor = [System.Drawing.Color]::Gainsboro
#~~< DNSListNetworkAdap >~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
$DNSListNetworkAdap = New-Object System.Windows.Forms.ComboBox
$DNSListNetworkAdap.DropDownStyle = [System.Windows.Forms.ComboBoxStyle]::DropDownList
$DNSListNetworkAdap.FormattingEnabled = $true
$DNSListNetworkAdap.Location = New-Object System.Drawing.Point(14, 6)
$DNSListNetworkAdap.Size = New-Object System.Drawing.Size(373, 21)
$DNSListNetworkAdap.TabIndex = 0
$DNSListNetworkAdap.Text = ""
$DNSListNetworkAdap.add_SelectedIndexChanged({GetDNS($DNSListNetworkAdap.selecteditem)})
#~~< GroupBox4 >~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
$GroupBox4 = New-Object System.Windows.Forms.GroupBox
$GroupBox4.Location = New-Object System.Drawing.Point(32, 232)
$GroupBox4.Size = New-Object System.Drawing.Size(352, 96)
$GroupBox4.TabIndex = 57
$GroupBox4.TabStop = $false
$GroupBox4.Text = $TextStrings.OtherDNS
#~~< BtnRegDNS >~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
$BtnRegDNS = New-Object System.Windows.Forms.Button
$BtnRegDNS.FlatStyle = [System.Windows.Forms.FlatStyle]::System
$BtnRegDNS.Location = New-Object System.Drawing.Point(200, 24)
$BtnRegDNS.Size = New-Object System.Drawing.Size(136, 24)
$BtnRegDNS.TabIndex = 52
$BtnRegDNS.Text = $TextStrings.RegisterInDNS
$BtnRegDNS.UseVisualStyleBackColor = $true
$BtnRegDNS.add_Click({RegisterDNS($BtnRegDNS)})
#~~< BtnFlushDNS >~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
$BtnFlushDNS = New-Object System.Windows.Forms.Button
$BtnFlushDNS.FlatStyle = [System.Windows.Forms.FlatStyle]::System
$BtnFlushDNS.Location = New-Object System.Drawing.Point(22, 24)
$BtnFlushDNS.Size = New-Object System.Drawing.Size(136, 24)
$BtnFlushDNS.TabIndex = 51
$BtnFlushDNS.Text = $TextStrings.FlushDNSCache
$BtnFlushDNS.UseVisualStyleBackColor = $true
$BtnFlushDNS.add_Click({FlushDNS($BtnFlushDNS)})
#~~< TxtBoxMAC >~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
$TxtBoxMAC = New-Object System.Windows.Forms.TextBox
$TxtBoxMAC.Location = New-Object System.Drawing.Point(127, 56)
$TxtBoxMAC.ReadOnly = $true
$TxtBoxMAC.Size = New-Object System.Drawing.Size(185, 21)
$TxtBoxMAC.TabIndex = 11
$TxtBoxMAC.Text = ""
#~~< LblMAC >~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
$LblMAC = New-Object System.Windows.Forms.Label
$LblMAC.Location = New-Object System.Drawing.Point(28, 58)
$LblMAC.Size = New-Object System.Drawing.Size(84, 18)
$LblMAC.TabIndex = 11
$LblMAC.Text = $TextStrings.MacAddress
$GroupBox4.Controls.Add($BtnRegDNS)
$GroupBox4.Controls.Add($BtnFlushDNS)
$GroupBox4.Controls.Add($TxtBoxMAC)
$GroupBox4.Controls.Add($LblMAC)
#~~< LblSelectedname >~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
$LblSelectedname = New-Object System.Windows.Forms.Label
$LblSelectedname.Font = New-Object System.Drawing.Font("Tahoma", 8.25, [System.Drawing.FontStyle]::Italic, [System.Drawing.GraphicsUnit]::Point, ([System.Byte](0)))
$LblSelectedname.Location = New-Object System.Drawing.Point(169, 15)
$LblSelectedname.Size = New-Object System.Drawing.Size(225, 13)
$LblSelectedname.TabIndex = 59
$LblSelectedname.Text = ""
#~~< GroupBox3 >~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
$GroupBox3 = New-Object System.Windows.Forms.GroupBox
$GroupBox3.Location = New-Object System.Drawing.Point(30, 72)
$GroupBox3.Size = New-Object System.Drawing.Size(354, 154)
$GroupBox3.TabIndex = 51
$GroupBox3.TabStop = $false
$GroupBox3.Text = $TextStrings.DNSList
#~~< BtnMoveDown >~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
$BtnMoveDown = New-Object System.Windows.Forms.Button
$BtnMoveDown.FlatStyle = [System.Windows.Forms.FlatStyle]::System
$BtnMoveDown.Location = New-Object System.Drawing.Point(197, 94)
$BtnMoveDown.Size = New-Object System.Drawing.Size(129, 21)
$BtnMoveDown.TabIndex = 58
$BtnMoveDown.Text = $TextStrings.MoveDown
$BtnMoveDown.UseVisualStyleBackColor = $true
$BtnMoveDown.add_Click({MoveDNSDown($BtnMoveDown)})
#~~< BtnMoveUp >~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
$BtnMoveUp = New-Object System.Windows.Forms.Button
$BtnMoveUp.FlatStyle = [System.Windows.Forms.FlatStyle]::System
$BtnMoveUp.Location = New-Object System.Drawing.Point(30, 94)
$BtnMoveUp.Size = New-Object System.Drawing.Size(123, 21)
$BtnMoveUp.TabIndex = 57
$BtnMoveUp.Text = $TextStrings.MoveUp
$BtnMoveUp.UseVisualStyleBackColor = $true
$BtnMoveUp.add_Click({MoveDNSUp($BtnMoveUp)})
#~~< Button3 >~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
$Button3 = New-Object System.Windows.Forms.Button
$Button3.FlatStyle = [System.Windows.Forms.FlatStyle]::System
$Button3.Location = New-Object System.Drawing.Point(234, 125)
$Button3.Size = New-Object System.Drawing.Size(92, 23)
$Button3.TabIndex = 56
$Button3.Text = $TextStrings.RemoveAll
$Button3.UseVisualStyleBackColor = $true
$Button3.add_Click({removeDNSALL($Button3)})
#~~< Button2 >~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
$Button2 = New-Object System.Windows.Forms.Button
$Button2.FlatStyle = [System.Windows.Forms.FlatStyle]::System
$Button2.Location = New-Object System.Drawing.Point(129, 125)
$Button2.Size = New-Object System.Drawing.Size(92, 23)
$Button2.TabIndex = 55
$Button2.Text = $TextStrings.Remove
$Button2.UseVisualStyleBackColor = $true
$Button2.add_Click({removeDNS($Button2)})
#~~< Button1 >~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
$Button1 = New-Object System.Windows.Forms.Button
$Button1.FlatStyle = [System.Windows.Forms.FlatStyle]::System
$Button1.Location = New-Object System.Drawing.Point(30, 125)
$Button1.Size = New-Object System.Drawing.Size(92, 23)
$Button1.TabIndex = 54
$Button1.Text = $TextStrings.Add
$Button1.UseVisualStyleBackColor = $true
$Button1.add_Click({AddDNS($Button1)})
#~~< ListDNS >~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
$ListDNS = New-Object System.Windows.Forms.ListBox
$ListDNS.BorderStyle = [System.Windows.Forms.BorderStyle]::FixedSingle
$ListDNS.FormattingEnabled = $true
$ListDNS.Location = New-Object System.Drawing.Point(30, 21)
$ListDNS.Size = New-Object System.Drawing.Size(296, 67)
$ListDNS.TabIndex = 0
$GroupBox3.Controls.Add($BtnMoveDown)
$GroupBox3.Controls.Add($BtnMoveUp)
$GroupBox3.Controls.Add($Button3)
$GroupBox3.Controls.Add($Button2)
$GroupBox3.Controls.Add($Button1)
$GroupBox3.Controls.Add($ListDNS)
#~~< Label1 >~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
$Label1 = New-Object System.Windows.Forms.Label
$Label1.Location = New-Object System.Drawing.Point(30, 36)
$Label1.Size = New-Object System.Drawing.Size(207, 13)
$Label1.TabIndex = 51
$Label1.Text = ""
$PanelAllDNS.Controls.Add($lblDNSSelectedAdapter)
$PanelAllDNS.Controls.Add($DNSTxtBoxName)
$PanelAllDNS.Controls.Add($lblDNSAdapterDescription)
$PanelAllDNS.Controls.Add($DNSTxtBoxDescription)
$PanelAllDNS.Controls.Add($DNSListNetworkAdap)
$PanelAllDNS.Controls.Add($GroupBox4)
$PanelAllDNS.Controls.Add($LblSelectedname)
$PanelAllDNS.Controls.Add($GroupBox3)
$PanelAllDNS.Controls.Add($Label1)
#~~< PanelNetworkCards >~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
$PanelNetworkCards = New-Object System.Windows.Forms.Panel
$PanelNetworkCards.BorderStyle = [System.Windows.Forms.BorderStyle]::FixedSingle
$PanelNetworkCards.Location = New-Object System.Drawing.Point(17, 355)
$PanelNetworkCards.Size = New-Object System.Drawing.Size(408, 336)
$PanelNetworkCards.TabIndex = 44
$PanelNetworkCards.Text = ""
$PanelNetworkCards.Visible = $false
$PanelNetworkCards.BackColor = [System.Drawing.Color]::Gainsboro
#~~< Panel4 >~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
$Panel4 = New-Object System.Windows.Forms.Panel
$Panel4.Location = New-Object System.Drawing.Point(19, 218)
$Panel4.Size = New-Object System.Drawing.Size(368, 110)
$Panel4.TabIndex = 84
$Panel4.Text = ""
$Panel4.BackColor = [System.Drawing.Color]::Gainsboro
#~~< Label8 >~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
$Label8 = New-Object System.Windows.Forms.Label
$Label8.Font = New-Object System.Drawing.Font("Tahoma", 8.25, [System.Drawing.FontStyle]::Bold, [System.Drawing.GraphicsUnit]::Point, ([System.Byte](0)))
$Label8.Location = New-Object System.Drawing.Point(40, 3)
$Label8.Size = New-Object System.Drawing.Size(154, 13)
$Label8.TabIndex = 51
$Label8.Text = $TextStrings.DisabledAdapters
#~~< ChkdDisabled >~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
$ChkdDisabled = New-Object System.Windows.Forms.CheckedListBox
$ChkdDisabled.BorderStyle = [System.Windows.Forms.BorderStyle]::FixedSingle
$ChkdDisabled.CheckOnClick = $true
$ChkdDisabled.FormattingEnabled = $true
$ChkdDisabled.Location = New-Object System.Drawing.Point(40, 19)
$ChkdDisabled.Size = New-Object System.Drawing.Size(307, 50)
$ChkdDisabled.TabIndex = 55
#~~< Button13 >~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
$Button13 = New-Object System.Windows.Forms.Button
$Button13.FlatStyle = [System.Windows.Forms.FlatStyle]::System
$Button13.Location = New-Object System.Drawing.Point(271, 75)
$Button13.Size = New-Object System.Drawing.Size(76, 23)
$Button13.TabIndex = 54
$Button13.Text = $TextStrings.Enable
$Button13.UseVisualStyleBackColor = $true
$Button13.add_Click({EnableNic($Button13)})
#~~< PictureBox7 >~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
$PictureBox7 = New-Object System.Windows.Forms.PictureBox
$PictureBox7.BackgroundImageLayout = [System.Windows.Forms.ImageLayout]::Center
$PictureBox7.Location = New-Object System.Drawing.Point(3, 3)
$PictureBox7.Size = New-Object System.Drawing.Size(31, 34)
$PictureBox7.TabIndex = 80
$PictureBox7.TabStop = $false
$PictureBox7.Text = ""
#region PictureBox7.BackgroundImage = ([System.Drawing.Image](...)
$PictureBox7.BackgroundImage = ([System.Drawing.Image]([System.Drawing.Image]::FromStream((New-Object System.IO.MemoryStream(($$ = [System.Convert]::FromBase64String(
"iVBORw0KGgoAAAANSUhEUgAAAB0AAAAeCAIAAABfZYL2AAAAAXNSR0IArs4c6QAAAARnQU1BAACx"+
                                 "jwv8YQUAAAAgY0hSTQAAeiYAAICEAAD6AAAAgOgAAHUwAADqYAAAOpgAABdwnLpRPAAAAAlwSFlz"+
                                 "AAAOwQAADsEBuJFr7QAAAslJREFUSEvdlT9r40AQxXMf6cr7KtceV5kUQaQ4RJogXATh4hAujHAR"+
                                 "kIuAUhjkIrBuAnJhkIsDqTAohYstXGyRQsUVut94hfPPjnRFijtpWKTV7ps3b2ZHn8qH8uQjLnA/"+
                                 "wk4+AlQ0+J9w12V6n5ZFWa5LszWVqeqqrn/XXUJ8oUP+KwdCP2i90aDw6l/5/sAPBkEwDJjkq4Da"+
                                 "NbvrmI9nuEXp/nD9vg9WOAyTaZIXOdBANFgbLayrCsoQ51miOVJOT7jZMgPXu/TADX4G8SS2+wWI"+
                                 "+7GCLxdwgr577YSbr3Kv7+1xw1EocPB7FOMZINYwGm6ujYZKO1+cxzdxI8VApBAI2GkhiCGrmiuU"+
                                 "QR+bTFG8VYd0nkaTCFz3olFZwtyliM1CtsjVnWIZ8xjzuGzHja4jYidve2jcZKsME447I5nEZA2X"+
                                 "6NOOS7qsvs65413IA9lTM0XsmOUOHGWHRHwSKY73lqYe8Nw77TlnTmPnDmoATRCw3hO0IoRjwSWO"+
                                 "dlzEYg/5JVgh1fdhLTnc1Zw1UMTNdZQtMiHbha/1bIyBBVEns6RxsxJNiR36LOCrLRsWUGlUYbu+"+
                                 "+xVsQFbgorGwEwerjIDk7FEVJBBnt0nXvFncZueuUQBByEALwWlCHLxi75TBntzr/gsX233kUNmy"+
                                 "L0pJ1yJlnkkO3tvYs20dFiZaP8lyoK9T//akieLaCOulcJQ+uW+SGghdauPMkbnuLfSXmTbPWujh"+
                                 "/wX7bR/Ax/OomU/uUsZoohgBiuf5t+/e51M/fdkruv6HaGrxNK2MEej7zBnQ8BJ/lHijJFtX0a0i"+
                                 "sXS+o/oerJtwHAfXKpoicdm7EES1LHGjVlotNbg8v9rYiW90myYT1xvF7lXgM/ZDva2zwgAa3nAC"+
                                 "Dxy8TrhUtLSLoZvOA/jiBlz3Uk7gX5yL93+Lap5+PfNbf52d+LaivF3wr+H+Ac+4LLJcqCD9AAAA"+
                                 "AElFTkSuQmCC")),0,$$.Length)))))
#endregion
$Panel4.Controls.Add($Label8)
$Panel4.Controls.Add($ChkdDisabled)
$Panel4.Controls.Add($Button13)
$Panel4.Controls.Add($PictureBox7)
#~~< Panel5 >~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
$Panel5 = New-Object System.Windows.Forms.Panel
$Panel5.Location = New-Object System.Drawing.Point(19, 128)
$Panel5.Size = New-Object System.Drawing.Size(368, 84)
$Panel5.TabIndex = 83
$Panel5.Text = ""
$Panel5.BackColor = [System.Drawing.Color]::Gainsboro
#~~< ListBox3 >~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
$ListBox3 = New-Object System.Windows.Forms.ListBox
$ListBox3.BorderStyle = [System.Windows.Forms.BorderStyle]::FixedSingle
$ListBox3.FormattingEnabled = $true
$ListBox3.Location = New-Object System.Drawing.Point(40, 22)
$ListBox3.Size = New-Object System.Drawing.Size(307, 54)
$ListBox3.TabIndex = 81
#~~< Label10 >~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
$Label10 = New-Object System.Windows.Forms.Label
$Label10.Font = New-Object System.Drawing.Font("Tahoma", 8.25, [System.Drawing.FontStyle]::Bold, [System.Drawing.GraphicsUnit]::Point, ([System.Byte](0)))
$Label10.Location = New-Object System.Drawing.Point(40, 6)
$Label10.Size = New-Object System.Drawing.Size(181, 13)
$Label10.TabIndex = 57
$Label10.Text = $TextStrings.DisconnectedAdapters
#~~< PictureBox8 >~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
$PictureBox8 = New-Object System.Windows.Forms.PictureBox
$PictureBox8.BackgroundImageLayout = [System.Windows.Forms.ImageLayout]::Center
$PictureBox8.Location = New-Object System.Drawing.Point(3, 3)
$PictureBox8.Size = New-Object System.Drawing.Size(31, 34)
$PictureBox8.TabIndex = 80
$PictureBox8.TabStop = $false
$PictureBox8.Text = ""
#region PictureBox8.BackgroundImage = ([System.Drawing.Image](...)
$PictureBox8.BackgroundImage = ([System.Drawing.Image]([System.Drawing.Image]::FromStream((New-Object System.IO.MemoryStream(($$ = [System.Convert]::FromBase64String(
"iVBORw0KGgoAAAANSUhEUgAAABsAAAAcCAIAAAAfs1O6AAAAAXNSR0IArs4c6QAAAARnQU1BAACx"+
                                 "jwv8YQUAAAAgY0hSTQAAeiYAAICEAAD6AAAAgOgAAHUwAADqYAAAOpgAABdwnLpRPAAAAAlwSFlz"+
                                 "AAAOwQAADsEBuJFr7QAAA6lJREFUSEutlS9oM0kUwPfgxMqIExGfuIWawJm6i2zhxAUq+kFECxWl"+
                                 "VJTwiRIiSogpoeJYKkKICEtEYCsCGxGYiMLEBGZFYCICsyIwFREjIkZUjDjx7k2aa9M0397H0eUR"+
                                 "Zifzfu/fvLc/ySfpfO6DxM8VJwVHHymfCpkIvZBaKfNs8PlP829ENqJ8wlBfzoVaKL3UfoNli9ot"+
                                 "QvYKSj0gc6AoT4YlWsyVVhptfDTwRmy2I/fIOMeQuYTcNwhjiMaaTRUqi0SRiUYbcgnmbyvKgFxo"+
                                 "hKYRT6+pc6KcK8hUwLsBoUCblbzoa2AzHT5EQtu1WIKYCa1TiYVL6h4r5xIy1+DVwB9ZTfUM8tkS"+
                                 "V06ZsE/5AtgC6AJsinZVdR01Ji5/TLLn0j03zjfI3sBhw7rJlXWHo0fo2pMKejycQDSDIAYe0zSi"+
                                 "nIn9Y3p6p9BNC8XYr4Eka2Fzu1ALWe3q6gDqQytkEKUR2Zjun/PCjXCPhHOmnXNwzqA5hubIuoOC"+
                                 "a5nwwl9QaMHXti09HZJU4iPNnXGEZos8U5TuiXZPzEXXapb7gH6VHjBM5l1pr2K8CjQHGm9rGjHq"+
                                 "RZkDljmy4h5xtyix7vlbyN9DobHyqwVkGLGxKLV07sqEj4JPeBoxaDR5HPGYh31+WhHunyJzILKX"+
                                 "yrtGj0zuBi5aOnqIqpVy2A5sTeaSjtIrs7oHIhGkH4XdIOoGdLgyMJCHNeMUdbXBw27IRixoB0En"+
                                 "YDHD65Fa642bhb6gcv22Xq9VUR9rKqZMJBz3ZSLRjO33eHfIdpJt2WFjhuGgAqYJF+gOotFA2AnJ"+
                                 "gKxmx3dZL6gdRJvyRGJQuEA0GRIkBq3Ath229oc+wU6lytQn67+2iZhK1FRPNkcCR9nchomb+PqK"+
                                 "8xshvpYqPlUQJoYtTX6gqtPvEF9ceBkqiEbZdIrPZDRgagnNDgHA2aFKtWap0izfB6/H/u3re1/9"+
                                 "6q139zxoNM3WBV7guAyRgpOt2oiCdp2MJeKiR9HsEowJn3d5RJy+reOv2svBXV19yW66FnZJ0GNk"+
                                 "xFHQOzERfofgcGNTTWKFO5uH3/Kovnj6/MIcHMpf3uHwNI1xqkdsQvw2jYaMzxRPMDHgd2h9I97t"+
                                 "Wps7XzuOld/2t69UzKu1Mun7QesrT5R+Br9N1K4B/nZ7dKWskLXn6T8KzHHkXm5nP2DReYLF2d1/"+
                                 "73382X0Nlv+eDx3HYIf8rw/vOo+m907fjHdP/B+xkfa9/hH9j2c+n/gPnhO6qly6X4sAAAAASUVO"+
                                 "RK5CYII=")),0,$$.Length)))))
#endregion
$Panel5.Controls.Add($ListBox3)
$Panel5.Controls.Add($Label10)
$Panel5.Controls.Add($PictureBox8)
#~~< Panel3 >~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
$Panel3 = New-Object System.Windows.Forms.Panel
$Panel3.Location = New-Object System.Drawing.Point(19, 24)
$Panel3.Size = New-Object System.Drawing.Size(368, 103)
$Panel3.TabIndex = 82
$Panel3.Text = ""
$Panel3.BackColor = [System.Drawing.Color]::Gainsboro
#~~< BtnRefresh >~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
$BtnRefresh = New-Object System.Windows.Forms.Button
$BtnRefresh.FlatStyle = [System.Windows.Forms.FlatStyle]::System
$BtnRefresh.Location = New-Object System.Drawing.Point(179, 75)
$BtnRefresh.Size = New-Object System.Drawing.Size(76, 23)
$BtnRefresh.TabIndex = 81
$BtnRefresh.Text = $TextStrings.Refresh
$BtnRefresh.UseVisualStyleBackColor = $true
$BtnRefresh.add_Click({RefreshNetwork($BtnRefresh)})
#~~< Button10 >~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
$Button10 = New-Object System.Windows.Forms.Button
$Button10.FlatStyle = [System.Windows.Forms.FlatStyle]::System
$Button10.Location = New-Object System.Drawing.Point(271, 75)
$Button10.Size = New-Object System.Drawing.Size(76, 23)
$Button10.TabIndex = 54
$Button10.Text = $TextStrings.Disable
$Button10.UseVisualStyleBackColor = $true
$Button10.add_Click({DisableNic($Button10)})
#~~< ChkdEnabled >~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
$ChkdEnabled = New-Object System.Windows.Forms.CheckedListBox
$ChkdEnabled.BorderStyle = [System.Windows.Forms.BorderStyle]::FixedSingle
$ChkdEnabled.CheckOnClick = $true
$ChkdEnabled.FormattingEnabled = $true
$ChkdEnabled.Location = New-Object System.Drawing.Point(40, 19)
$ChkdEnabled.Size = New-Object System.Drawing.Size(307, 50)
$ChkdEnabled.TabIndex = 55
#~~< Label7 >~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
$Label7 = New-Object System.Windows.Forms.Label
$Label7.Font = New-Object System.Drawing.Font("Tahoma", 8.25, [System.Drawing.FontStyle]::Bold, [System.Drawing.GraphicsUnit]::Point, ([System.Byte](0)))
$Label7.Location = New-Object System.Drawing.Point(40, 3)
$Label7.Size = New-Object System.Drawing.Size(145, 13)
$Label7.TabIndex = 57
$Label7.Text = $TextStrings.EnabledAdapters
#~~< PictureBox6 >~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
$PictureBox6 = New-Object System.Windows.Forms.PictureBox
$PictureBox6.BackgroundImageLayout = [System.Windows.Forms.ImageLayout]::Center
$PictureBox6.Location = New-Object System.Drawing.Point(3, 3)
$PictureBox6.Size = New-Object System.Drawing.Size(31, 34)
$PictureBox6.TabIndex = 80
$PictureBox6.TabStop = $false
$PictureBox6.Text = ""
#region PictureBox6.BackgroundImage = ([System.Drawing.Image](...)
$PictureBox6.BackgroundImage = ([System.Drawing.Image]([System.Drawing.Image]::FromStream((New-Object System.IO.MemoryStream(($$ = [System.Convert]::FromBase64String(
"iVBORw0KGgoAAAANSUhEUgAAABoAAAAbCAIAAADtdAg8AAAAAXNSR0IArs4c6QAAAARnQU1BAACx"+
                                 "jwv8YQUAAAAgY0hSTQAAeiYAAICEAAD6AAAAgOgAAHUwAADqYAAAOpgAABdwnLpRPAAAAAlwSFlz"+
                                 "AAAOwQAADsEBuJFr7QAAA1ZJREFUSEutlTFo40gUhnWdS5dpU7rc7hauuYUr1rBFAily4CIsKYJJ"+
                                 "EYyLxbhZTIogXASRIogUAakQjAvBuAiMG8FTYRgVhlEhGBcupkgxxRYqtnj3Zi+3e9nIm70j4iGE"+
                                 "xPvmn3nv/fpFr7X3ghfhXjC8F2S5jW7DyVz2P0KQaJ4pVWpdabsx1pgfL/+Akzn4U85SkBmYStb3"+
                                 "GjLx51B3TuvOGXbGKNYIa5QbFFUNVS3XVlfqKfoBB3Pu/aq8d+j1sH2MgxhlhVBatbFQGrG0srL2"+
                                 "3hqL9We0n1F/QrEQW3HhDff+0N4xts6wPcR+gnS5zNol012StELCymrrWGBQzPlWnH/J24fa69Xe"+
                                 "icO9OkcS4jK/JDucQVgAX1rYIIUg7YvtuNGY7X803p4hHAncGboEde8odKdwiJSHC4yWGBXIc6tX"+
                                 "cqu6/pC9v9DtPe0dGtqyd4STFPkKeemC0O455f0YRykO6FOmVbEd1z3h+2O921OtA+P1LBWke4Vh"+
                                 "hkGGYe6CF3UU89dT955CZMo09f9DZTuH0OlJitaeapHAQ9v54ApCMZhhf4Yi15Mpp8Nt0+GeolxK"+
                                 "s2nowX9w72BnT3q/idbv0nurvAPTPrbdKb75IodEiUyzmIWpeX9pu+Na5g1d8m0qeBqxhEcxDM7h"+
                                 "zYncJY0HpnVk28d1+7TeOUPIpX8x8c9HcMfUCqCp6b4fMrkEtRQwZyJlUSKimepfmdcf6t0jCzlQ"+
                                 "KaKY+dMgvA5ps43T9mRmS80SyvEn4xHJ4bOIFtClEneCENTJYi6iOFJFw4R9r06tXBpkQJn0EN1G"+
                                 "o/EouAyim5DWcJ8W0FiBr0ofqfubRSubtVGlclOVAUFpd7TTrV5iUWxqVtUNBkW6CEQSSCl9dkpz"+
                                 "Se70b5bIlcgk5Iqta76pB4V9lRoibvc7yq+0a671o+ZylMI5IIVcm2hOnhjuDqPB7KFvftaNSYu4"+
                                 "A10avpCji4DdQZhK/4aL3LD42zk8j4OlDK55cMPZXE6uGUtcQcho+UKRX4nCBtesuRSNhw1LI3Mm"+
                                 "Vyq4JagIbzkURpFfFTacySh5VKLn1XXf7rMkDK76LOn7lz4stTYYxoLm5KkLPI/7KlmVks8FaRSL"+
                                 "5pH40Z/s//0w/4O6n1ngL8yVSsB/vupFAAAAAElFTkSuQmCC")),0,$$.Length)))))
#endregion
$Panel3.Controls.Add($BtnRefresh)
$Panel3.Controls.Add($Button10)
$Panel3.Controls.Add($ChkdEnabled)
$Panel3.Controls.Add($Label7)
$Panel3.Controls.Add($PictureBox6)
$PanelNetworkCards.Controls.Add($Panel4)
$PanelNetworkCards.Controls.Add($Panel5)
$PanelNetworkCards.Controls.Add($Panel3)
#~~< panelIP >~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
$panelIP = New-Object System.Windows.Forms.Panel
$panelIP.BorderStyle = [System.Windows.Forms.BorderStyle]::FixedSingle
$panelIP.Location = New-Object System.Drawing.Point(17, 3)
$panelIP.Size = New-Object System.Drawing.Size(408, 350)
$panelIP.TabIndex = 43
$panelIP.Text = ""
$panelIP.BackColor = [System.Drawing.Color]::Gainsboro
#~~< Panel1 >~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
$Panel1 = New-Object System.Windows.Forms.Panel
$Panel1.Location = New-Object System.Drawing.Point(14, 78)
$Panel1.Size = New-Object System.Drawing.Size(280, 46)
$Panel1.TabIndex = 13
$Panel1.Text = ""
#~~< StaticRadioButton >~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
$StaticRadioButton = New-Object System.Windows.Forms.RadioButton
$StaticRadioButton.Location = New-Object System.Drawing.Point(0, 25)
$StaticRadioButton.Size = New-Object System.Drawing.Size(280, 18)
$StaticRadioButton.TabIndex = 4
$StaticRadioButton.TabStop = $true
$StaticRadioButton.Text = $TextStrings.UseStaticIP
$StaticRadioButton.UseVisualStyleBackColor = $true
$StaticRadioButton.add_CheckedChanged({RadioStatic($StaticRadioButton)})
#~~< DHCPRadioButton >~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
$DHCPRadioButton = New-Object System.Windows.Forms.RadioButton
$DHCPRadioButton.Location = New-Object System.Drawing.Point(0, 7)
$DHCPRadioButton.Size = New-Object System.Drawing.Size(232, 18)
$DHCPRadioButton.TabIndex = 3
$DHCPRadioButton.TabStop = $true
$DHCPRadioButton.Text = $TextStrings.UseDHCP
$DHCPRadioButton.UseVisualStyleBackColor = $true
$DHCPRadioButton.add_CheckedChanged({RadioDHCP($DHCPRadioButton)})
$Panel1.Controls.Add($StaticRadioButton)
$Panel1.Controls.Add($DHCPRadioButton)
#~~< ListBoxSettings >~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
$ListBoxSettings = New-Object System.Windows.Forms.ListBox
$ListBoxSettings.FormattingEnabled = $true
$ListBoxSettings.Location = New-Object System.Drawing.Point(299, 214)
$ListBoxSettings.Size = New-Object System.Drawing.Size(88, 17)
$ListBoxSettings.TabIndex = 51
$ListBoxSettings.Visible = $false
#~~< lblSelectedAdapter >~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
$lblSelectedAdapter = New-Object System.Windows.Forms.Label
$lblSelectedAdapter.Font = New-Object System.Drawing.Font("Tahoma", 8.25, [System.Drawing.FontStyle]::Bold, [System.Drawing.GraphicsUnit]::Point, ([System.Byte](0)))
$lblSelectedAdapter.Location = New-Object System.Drawing.Point(8, 32)
$lblSelectedAdapter.Size = New-Object System.Drawing.Size(115, 14)
$lblSelectedAdapter.TabStop = $false
$lblSelectedAdapter.Text = $TextStrings.SelectedAdapter
#~~< TxtBoxName >~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
$TxtBoxName = New-Object System.Windows.Forms.TextBox
$TxtBoxName.BorderStyle = [System.Windows.Forms.BorderStyle]::None
$TxtBoxName.Font = New-Object System.Drawing.Font("Tahoma", 8.25, [System.Drawing.FontStyle]::Italic, [System.Drawing.GraphicsUnit]::Point, ([System.Byte](0)))
$TxtBoxName.Location = New-Object System.Drawing.Point(126, 32)
$TxtBoxName.ReadOnly = $true
$TxtBoxName.Size = New-Object System.Drawing.Size(180, 14)
$TxtBoxName.TabIndex = 1
$TxtBoxName.Text = ""
$TxtBoxName.BackColor = [System.Drawing.Color]::Gainsboro
#~~< lblAdapterDescription >~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
$lblAdapterDescription = New-Object System.Windows.Forms.Label
$lblAdapterDescription.Font = New-Object System.Drawing.Font("Tahoma", 8.25, [System.Drawing.FontStyle]::Bold, [System.Drawing.GraphicsUnit]::Point, ([System.Byte](0)))
$lblAdapterDescription.Location = New-Object System.Drawing.Point(8, 54)
$lblAdapterDescription.Size = New-Object System.Drawing.Size(134, 14)
$lblAdapterDescription.TabStop = $false
$lblAdapterDescription.Text = $TextStrings.AdapterDescription
#~~< TxtBoxDescription >~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
$TxtBoxDescription = New-Object System.Windows.Forms.TextBox
$TxtBoxDescription.BorderStyle = [System.Windows.Forms.BorderStyle]::None
$TxtBoxDescription.Font = New-Object System.Drawing.Font("Tahoma", 8.25, [System.Drawing.FontStyle]::Italic, [System.Drawing.GraphicsUnit]::Point, ([System.Byte](0)))
$TxtBoxDescription.Location = New-Object System.Drawing.Point(144, 54)
$TxtBoxDescription.ReadOnly = $true
$TxtBoxDescription.Size = New-Object System.Drawing.Size(242, 14)
$TxtBoxDescription.TabStop = $False
$TxtBoxDescription.Text = ""
$TxtBoxDescription.BackColor = [System.Drawing.Color]::Gainsboro
#~~< ChkBoxName >~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
$ChkBoxName = New-Object System.Windows.Forms.CheckBox
$ChkBoxName.Location = New-Object System.Drawing.Point(322, 28)
$ChkBoxName.Size = New-Object System.Drawing.Size(65, 24)
$ChkBoxName.TabIndex = 2
$ChkBoxName.Text = $TextStrings.Rename
$ChkBoxName.UseVisualStyleBackColor = $true
$ChkBoxName.add_CheckedChanged({CheckBoxName($ChkBoxName)})
#~~< gbStaticIP >~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
$gbStaticIP = New-Object System.Windows.Forms.GroupBox
$gbStaticIP.Location = New-Object System.Drawing.Point(14, 108)
$gbStaticIP.Size = New-Object System.Drawing.Size(373, 105)
$gbStaticIP.TabIndex = 3
$gbStaticIP.TabStop = $false
$gbStaticIP.Text = ""
#~~< LblIPAddress >~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
$LblIPAddress = New-Object System.Windows.Forms.Label
$LblIPAddress.Location = New-Object System.Drawing.Point(26, 26)
$LblIPAddress.Size = New-Object System.Drawing.Size(78, 13)
$LblIPAddress.TabStop = $false
$LblIPAddress.Text = $TextStrings.IPAddress
#~~< TxtBoxIP >~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
$TxtBoxIP = New-Object System.Windows.Forms.TextBox
$TxtBoxIP.Location = New-Object System.Drawing.Point(184, 22)
$TxtBoxIP.Size = New-Object System.Drawing.Size(146, 21)
$TxtBoxIP.TabIndex = 4
$TxtBoxIP.Text = ""
#~~< LblSubnetmask >~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
$LblSubnetmask = New-Object System.Windows.Forms.Label
$LblSubnetmask.Location = New-Object System.Drawing.Point(26, 52)
$LblSubnetmask.Size = New-Object System.Drawing.Size(78, 13)
$LblSubnetmask.TabStop = $false
$LblSubnetmask.Text = $TextStrings.SubnetMask
#~~< TxtBoxSubnetmask >~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
$TxtBoxSubnetmask = New-Object System.Windows.Forms.TextBox
$TxtBoxSubnetmask.Location = New-Object System.Drawing.Point(184, 48)
$TxtBoxSubnetmask.Size = New-Object System.Drawing.Size(146, 21)
$TxtBoxSubnetmask.TabIndex = 5
$TxtBoxSubnetmask.Text = ""
#~~< LblDefaultGateway >~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
$LblDefaultGateway = New-Object System.Windows.Forms.Label
$LblDefaultGateway.Location = New-Object System.Drawing.Point(26, 78)
$LblDefaultGateway.Size = New-Object System.Drawing.Size(104, 13)
$LblDefaultGateway.TabStop = $false
$LblDefaultGateway.Text = $TextStrings.DefaultGateway
#~~< TxtBoxDefaultGateway >~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
$TxtBoxDefaultGateway = New-Object System.Windows.Forms.TextBox
$TxtBoxDefaultGateway.Location = New-Object System.Drawing.Point(184, 74)
$TxtBoxDefaultGateway.Size = New-Object System.Drawing.Size(146, 21)
$TxtBoxDefaultGateway.TabIndex = 6
$TxtBoxDefaultGateway.Text = ""
$gbStaticIP.Controls.Add($TxtBoxDefaultGateway)
$gbStaticIP.Controls.Add($TxtBoxSubnetmask)
$gbStaticIP.Controls.Add($TxtBoxIP)
$gbStaticIP.Controls.Add($LblDefaultGateway)
$gbStaticIP.Controls.Add($LblSubnetmask)
$gbStaticIP.Controls.Add($LblIPAddress)
#~~< Panel2 >~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
$Panel2 = New-Object System.Windows.Forms.Panel
$Panel2.Location = New-Object System.Drawing.Point(14, 216)
$Panel2.Size = New-Object System.Drawing.Size(235, 49)
$Panel2.TabIndex = 7
$Panel2.Text = ""
#~~< DNSStaticRadioButton >~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
$DNSStaticRadioButton = New-Object System.Windows.Forms.RadioButton
$DNSStaticRadioButton.Location = New-Object System.Drawing.Point(0, 30)
$DNSStaticRadioButton.Size = New-Object System.Drawing.Size(232, 21)
$DNSStaticRadioButton.TabIndex = 9
$DNSStaticRadioButton.TabStop = $true
$DNSStaticRadioButton.Text = $TextStrings.UseStaticDNS
$DNSStaticRadioButton.UseVisualStyleBackColor = $true
$DNSStaticRadioButton.add_CheckedChanged({RadioDNSStatic($DNSStaticRadioButton)})
#~~< DNSDHCPRadioButton >~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
$DNSDHCPRadioButton = New-Object System.Windows.Forms.RadioButton
$DNSDHCPRadioButton.Location = New-Object System.Drawing.Point(0, 10)
$DNSDHCPRadioButton.Size = New-Object System.Drawing.Size(232, 21)
$DNSDHCPRadioButton.TabIndex = 8
$DNSDHCPRadioButton.TabStop = $true
$DNSDHCPRadioButton.Text = $TextStrings.UseDNSFromDHCP
$DNSDHCPRadioButton.UseVisualStyleBackColor = $true
$DNSDHCPRadioButton.add_CheckedChanged({RadioDNSDHCP($DNSDHCPRadioButton)})
$Panel2.Controls.Add($DNSStaticRadioButton)
$Panel2.Controls.Add($DNSDHCPRadioButton)
#~~< GroupBox2 >~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
$GroupBox2 = New-Object System.Windows.Forms.GroupBox
$GroupBox2.Location = New-Object System.Drawing.Point(14, 250)
$GroupBox2.Size = New-Object System.Drawing.Size(373, 91)
$GroupBox2.TabIndex = 6
$GroupBox2.TabStop = $false
$GroupBox2.Text = ""
#~~< TxtBoxAlernateDNS >~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
$TxtBoxAlernateDNS = New-Object System.Windows.Forms.TextBox
$TxtBoxAlernateDNS.Location = New-Object System.Drawing.Point(184, 57)
$TxtBoxAlernateDNS.Size = New-Object System.Drawing.Size(146, 21)
$TxtBoxAlernateDNS.TabIndex = 11
$TxtBoxAlernateDNS.Text = ""
#~~< TxtBoxPreferredDNS >~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
$TxtBoxPreferredDNS = New-Object System.Windows.Forms.TextBox
$TxtBoxPreferredDNS.Location = New-Object System.Drawing.Point(184, 30)
$TxtBoxPreferredDNS.Size = New-Object System.Drawing.Size(146, 21)
$TxtBoxPreferredDNS.TabIndex = 10
$TxtBoxPreferredDNS.Text = ""
#~~< LblAlernateDNS >~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
$LblAlernateDNS = New-Object System.Windows.Forms.Label
$LblAlernateDNS.Location = New-Object System.Drawing.Point(26, 60)
$LblAlernateDNS.Size = New-Object System.Drawing.Size(137, 13)
$LblAlernateDNS.TabStop = $false
$LblAlernateDNS.Text = $TextStrings.AlternateDNS
#~~< LblPreferredDNS >~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
$LblPreferredDNS = New-Object System.Windows.Forms.Label
$LblPreferredDNS.Location = New-Object System.Drawing.Point(26, 33)
$LblPreferredDNS.Size = New-Object System.Drawing.Size(137, 13)
$LblPreferredDNS.TabStop = $false
$LblPreferredDNS.Text = $TextStrings.PreferredDNS
$GroupBox2.Controls.Add($TxtBoxAlernateDNS)
$GroupBox2.Controls.Add($TxtBoxPreferredDNS)
$GroupBox2.Controls.Add($LblAlernateDNS)
$GroupBox2.Controls.Add($LblPreferredDNS)
#~~< ListNetworkAdap >~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
$ListNetworkAdap = New-Object System.Windows.Forms.ComboBox
$ListNetworkAdap.DropDownStyle = [System.Windows.Forms.ComboBoxStyle]::DropDownList
$ListNetworkAdap.FormattingEnabled = $true
$ListNetworkAdap.Location = New-Object System.Drawing.Point(14, 6)
$ListNetworkAdap.Size = New-Object System.Drawing.Size(373, 21)
$ListNetworkAdap.TabIndex = 0
$ListNetworkAdap.Text = ""
$ListNetworkAdap.add_SelectedIndexChanged({GetIp($ListNetworkAdap.selecteditem)})
$panelIP.Controls.Add($Panel1)
$panelIP.Controls.Add($ListBoxSettings)
$panelIP.Controls.Add($TxtBoxName)
$panelIP.Controls.Add($gbStaticIP)
$panelIP.Controls.Add($ChkBoxName)
$panelIP.Controls.Add($lblAdapterDescription)
$panelIP.Controls.Add($TxtBoxDescription)
$panelIP.Controls.Add($lblSelectedAdapter)
$panelIP.Controls.Add($Panel2)
$panelIP.Controls.Add($GroupBox2)
$panelIP.Controls.Add($ListNetworkAdap)
$SplitContainer1.Panel2.Controls.Add($PanelDNS)
$SplitContainer1.Panel2.Controls.Add($PanelAllDNS)
$SplitContainer1.Panel2.Controls.Add($PanelNetworkCards)
$SplitContainer1.Panel2.Controls.Add($panelIP)
#~~< ButtonOK >~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
$ButtonOK = New-Object System.Windows.Forms.Button
$ButtonOK.FlatStyle = [System.Windows.Forms.FlatStyle]::System
$ButtonOK.Location = New-Object System.Drawing.Point(912, 12)
$ButtonOK.Size = New-Object System.Drawing.Size(87, 23)
$ButtonOK.TabIndex = 49
$ButtonOK.Text = $TextStrings.Apply
$ButtonOK.UseVisualStyleBackColor = $true
$ButtonOK.add_Click({OK ($ButtonOK)})
#~~< PictureBox1 >~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
$PictureBox1 = New-Object System.Windows.Forms.PictureBox
$PictureBox1.BackgroundImageLayout = [System.Windows.Forms.ImageLayout]::Center
$PictureBox1.Location = New-Object System.Drawing.Point(2, 4)
$PictureBox1.Size = New-Object System.Drawing.Size(51, 45)
$PictureBox1.TabIndex = 42
$PictureBox1.TabStop = $false
$PictureBox1.Text = ""
#region PictureBox1.BackgroundImage = ([System.Drawing.Image](...)
$PictureBox1.BackgroundImage = ([System.Drawing.Image]([System.Drawing.Image]::FromStream((New-Object System.IO.MemoryStream(($$ = [System.Convert]::FromBase64String(
"iVBORw0KGgoAAAANSUhEUgAAACkAAAAqCAIAAAChluUPAAAAAXNSR0IArs4c6QAAAARnQU1BAACx"+
                                 "jwv8YQUAAAAgY0hSTQAAeiYAAICEAAD6AAAAgOgAAHUwAADqYAAAOpgAABdwnLpRPAAACF9JREFU"+
                                 "WEftl1lQU1kexntepqprHqaqR3ucGUcUbFkETAiRhCRkJ3sgIUACCYGEkJUQAglb2BET2SGBBGkM"+
                                 "O4zdAtpqawPSlm3ZCoiyiCAiJbK5Vs/LzJNzplPlaLeOwRrHF8/DrdQ9957f933/c885+c3z588/"+
                                 "+VANsD9U++RDgf+d90f2/z2Bj5mDyPObK9W24qLm6pa+jhOnTw6NjkxNT29sbLxbNS5eGKu3dtfZ"+
                                 "GtvaOoaHh389yH8yf/LkSdzxQ9Ht+UJbTpw9J8GRJ3aYJI0mqa1AYysubK529DiBoOHvL7xV0Pj4"+
                                 "RHt7T2fHqWMdg/mlpY6Wo/2DA/+NDfrCLYpdbGQwhaDIzsBJY/2T2fgCCeWQildriG3K5tqNMfYc"+
                                 "UVOerLFAZs3X2Epymyx2IOjMyZGLo0DQ5uamCzAwcKqmumf0wtXB02ed7e1ra2svul5W8MpcU5QZ"+
                                 "JJrkCHU8P0eWWqCXpiu5KhFXJoCxsXAeGc6nQ8X0+FIdq0hJLE4Jr1CTqtUcmzGuKSfBlpdkNYmt"+
                                 "JpWtqMBRVVxv6+789s7CUt1R+/TMzJtK9gr7+MipVntzkIAcoKSYmswtpQ1KjTKlwRiqZqdX5B2p"+
                                 "rZSlqQ7XFMiM8j+j9gdSkIq8dK4iyYMWuj+WgtDEYnJEpFIF06Kpqu0dG5taWl6ubW5aXV11i91+"+
                                 "vt95tHUPBYZM5+RaDxllOiQZSysQI4zcVEex096aJtMwjWKyThAQg02z5D5/8o/8LNPvYR50HhSG"+
                                 "h/0l2P8LBGxnSKDF0rG58ejhxsO27h532TktR8pLShKMqvBsYaQpiWIQsTPFynI9Wh6hqcqrMldQ"+
                                 "0MSIPCkhKRITS08pMygy03yRMKFaqi2SQGIwRA4zgs+D4RAu9trqOmA/ePDALd9IZQSTw+ofHCSp"+
                                 "YkJkLJyeH67j07RxEDmdnR4frU2EUTBKk5Yi5cL5JJlJHypk7EEFVJVZSqordxEg+7HBcBb+DxAP"+
                                 "s6XdxW7v7llZWXGLTc6IJ0Qz1eXZ0FgCnEfESiKTs7WyUr3UkkFM5yNULEhSuC8duY8KDxZS1EVZ"+
                                 "sXrZdrSPQCW1Oqx8iYicwPUiBW2H7qms7J6ZvaXOzWh0OG7cuOEWm24QBzLQcWoJT5d8gE+kZcbl"+
                                 "Ww9nZBoKTQXO410xmcmuq8yYFsQjBLDRniSYDwvhy0EVVpfnFZnUJdlUYdRemF9FZdfk1FSLs+32"+
                                 "7dvuZs7TiAPCYPri3Jb2Vpyc483HsON5qWptHDcmSZSYGC9WyRRZBoPxSCFTFo2JZyVnyYMY6L1o"+
                                 "WGqhkaeVoIWsMCZpp7+nK/OO3r5nz56tr6+75VuUo92PgPjTUWy5AC6iwURk4Fuvz4yLjhEIBFFR"+
                                 "XCIefxAeEsjBhgpo9CSGVC1CcUlhkcTkTE2+1Qzh4UjCyO0BXmCujd+4uTB/B+Bfu6q41Lzyfcsq"+
                                 "81qcztGzQ9xIjgcZStDwgG9hYgIvgsPhcKN4PCadEYJAAt+wKIJAQdyLDvCjodE8rCxHV29t0BjS"+
                                 "DjdU7wjyqqjoOjs8pMzVd/Udd5d9UEQTKZIsFjMkCHqAG+YTjQK+FTI5h8EkU8lUKpUQhodBocC3"+
                                 "JFvph4X8KdgnmB0WGo2PSUmUCiUsAlWlSw1khgK2a55vgY1M5Yjksh5nN4PN2BUOAQsc8K2Qy8Px"+
                                 "BAwSiYQjDkLh0MADwDf4Cj6HeP8R4hMYHoKOxgvSkpMSJSEQuFQj308NAfVeX988f25kC2xSVkpm"+
                                 "fVV+cZWHd8AOEsqLgQbsI811HEkcPZrNjGSiECgk7CDw7c1Aa3M0BYfS/cmhcDZKZkgV8AS+nvu0"+
                                 "WZkQJgZ8Yz9OTGwt88ePHw82Iity/RTp8WFC1l+JOA88eSeV4hfLEhmUPjREikkHrkBNMBvni/BH"+
                                 "UJG70YHbYPsYIh6XE7l35252QuwedEBNTe/q6hrIvPerE+7WGxwTFvrJa6cIU134rhK/2b6DfTWo"+
                                 "TD2GnED0ZOC2EXCfU8P94nif4aG7sJDtEM9PvXdug3h+BvEK4ZCKK81SrSqrPH831LeysnNjfXNx"+
                                 "8d4W2GDet9VJv7ZFzX2F7y7zXz+N+uk79E9DuGfnCSuDYadtmNpSUqIa78+l7SBifocI/i0cuZcc"+
                                 "4o/x+gLhT+Vy2LzIwsOl3ohAq7UbsO/eXe7s7nXXN2AvLd394dJob0dTRRbmWJWgu47bb4u86KQt"+
                                 "fI19ej7s7+cxj85g/1buf8bBKjEQdVo4VZcQV6QmGcXBYqYnMjBakeAR7ONoaQXsHy5dbrI3b4EN"+
                                 "8A8fPrx+/TpYh8GKODJ8rv3LyuYajbNa0FYd1VsXOVCHOVbkO3eCOd/P/OcIusqin5mZGfjmZHlt"+
                                 "RY6lRNdQis6IbWi0A7ajpWV8fBwcWsA0evr06VvOTC+6wUK4sLAA8GNjYxMT12/93C6MDHU564/W"+
                                 "6RrLaJ21/N4GwciXuKM2M1g4X7Q7d+60drbV25ofrKz2n/oGgO/fvw+mEfDjLtv1HDg9gsTAy/Pz"+
                                 "8yAJYOLnNjE9PX3x+wtdbdZWh/natWtAJWhLS0tg23CJMNfU3ltaPnPuu+XlZdd2AkRsjf3y0y4d"+
                                 "9+7dA2NNTk5euXLl0qVLIBWg5erVq0AB+A3uA1kgYXNFxezsrcnJm60dXVNTU0AWEPHu7JffBMUD"+
                                 "MQI3c3NzQARoIBigCegAIhYXF8vN5is/Xr09t+BoPQbYoAvU4n/D/sUoL88jYPrRo0d2h2NoeOT+"+
                                 "/ZW2nj4gCOBnZ2ffC/vXg46OjvYPnJyfX6xrsl++fPnmzZuv3cXf13/B+sbGsiPm7p4eUILXfmC/"+
                                 "3L/fdMB4h/sg+be+9b58vxX8Hn1/ZL85gQ9Z738B556u4CRV0UUAAAAASUVORK5CYII=")),0,$$.Length)))))
#endregion
#~~< PageDescription >~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
$PageDescription = New-Object System.Windows.Forms.Label
$PageDescription.Font = New-Object System.Drawing.Font("Tahoma", 8.25, [System.Drawing.FontStyle]::Regular, [System.Drawing.GraphicsUnit]::Point, ([System.Byte](0)))
$PageDescription.Location = New-Object System.Drawing.Point(86, 28)
$PageDescription.Size = New-Object System.Drawing.Size(518, 16)
$PageDescription.TabIndex = 48
$PageDescription.Text = $TextStrings.PageDescription
#~~< ButtonCancel >~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
$ButtonCancel = New-Object System.Windows.Forms.Button
$ButtonCancel.FlatStyle = [System.Windows.Forms.FlatStyle]::System
$ButtonCancel.Location = New-Object System.Drawing.Point(1020, 12)
$ButtonCancel.Size = New-Object System.Drawing.Size(87, 23)
$ButtonCancel.TabIndex = 45
$ButtonCancel.Text = $TextStrings.Close
$ButtonCancel.UseVisualStyleBackColor = $true
$ButtonCancel.add_Click({Close($ButtonCancel)})
#~~< lblCoreConfigTitle >~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
$lblCoreConfigTitle = New-Object System.Windows.Forms.Label
$lblCoreConfigTitle.Font = New-Object System.Drawing.Font("Tahoma", 8.25, [System.Drawing.FontStyle]::Bold, [System.Drawing.GraphicsUnit]::Point, ([System.Byte](0)))
$lblCoreConfigTitle.Location = New-Object System.Drawing.Point(71, 7)
$lblCoreConfigTitle.Size = New-Object System.Drawing.Size(350, 20)
$lblCoreConfigTitle.TabIndex = 44
$lblCoreConfigTitle.Text = $TextStrings.PageTitle
$IPSettingsform.Controls.Add($SplitContainer1)
$IPSettingsform.Controls.Add($ButtonOK)
$IPSettingsform.Controls.Add($PictureBox1)
$IPSettingsform.Controls.Add($PageDescription)
$IPSettingsform.Controls.Add($ButtonCancel)
$IPSettingsform.Controls.Add($lblCoreConfigTitle)

#endregion

#region Functions
function Main{
	IPStatus
	FormLoad
	$IPSettingsform.ShowDialog()
}

function FormLoad
{
	$SplitContainer1.Size = New-Object System.Drawing.Size(618, 354)
	$SplitContainer1.SplitterDistance = 150	
	$IPSettingsform.size = New-Object System.Drawing.Size(570, 485)
	$ButtonCancel.Location = New-Object System.Drawing.Point(455, 425)
	$ButtonOK.Location = New-Object System.Drawing.Point(345, 425)
	
	$panelIP.Dock = [System.Windows.Forms.DockStyle]::Fill
	$PanelNetworkCards.Dock = [System.Windows.Forms.DockStyle]::Fill
	$PanelAllDNS.Dock = [System.Windows.Forms.DockStyle]::Fill
	
	GetAdapterStatus
}
function lblCurrentIPClick($object)
{
	$lblCurrentIP.Font = New-Object System.Drawing.Font("Tahoma", 8.25, [System.Drawing.FontStyle]::Bold, [System.Drawing.GraphicsUnit]::Point, ([System.Byte] ( 0 ) ))
	$lblAdvancedDNS.Font = New-Object System.Drawing.Font("Tahoma", 8.25, [System.Drawing.FontStyle]::Regular, [System.Drawing.GraphicsUnit]::Point, ([System.Byte] ( 0 ) ))
	$lblAdapterStatus.Font = New-Object System.Drawing.Font("Tahoma", 8.25, [System.Drawing.FontStyle]::Regular, [System.Drawing.GraphicsUnit]::Point, ([System.Byte] ( 0 ) ))
			
	$panelIP.visible = $True
	$PanelNetworkCards.visible = $False
	$PanelAllDNS.visible = $False
}
function lblAdvancedDNSClick($object)
{
	$lblAdvancedDNS.Font = New-Object System.Drawing.Font("Tahoma", 8.25, [System.Drawing.FontStyle]::Bold, [System.Drawing.GraphicsUnit]::Point, ([System.Byte] ( 0 ) ))
	$lblCurrentIP.Font = New-Object System.Drawing.Font("Tahoma", 8.25, [System.Drawing.FontStyle]::Regular, [System.Drawing.GraphicsUnit]::Point, ([System.Byte] ( 0 ) ))
	$lblAdapterStatus.Font = New-Object System.Drawing.Font("Tahoma", 8.25, [System.Drawing.FontStyle]::Regular, [System.Drawing.GraphicsUnit]::Point, ([System.Byte] ( 0 ) ))
				
	$panelIP.visible = $False
	$PanelNetworkCards.visible = $False
	$PanelAllDNS.visible = $True
}
function lblAdapterStatusClick($object)
{
	$lblAdapterStatus.Font = New-Object System.Drawing.Font("Tahoma", 8.25, [System.Drawing.FontStyle]::Bold, [System.Drawing.GraphicsUnit]::Point, ([System.Byte] ( 0 ) ))
	$lblAdvancedDNS.Font = New-Object System.Drawing.Font("Tahoma", 8.25, [System.Drawing.FontStyle]::Regular, [System.Drawing.GraphicsUnit]::Point, ([System.Byte] ( 0 ) ))
	$lblCurrentIP.Font = New-Object System.Drawing.Font("Tahoma", 8.25, [System.Drawing.FontStyle]::Regular, [System.Drawing.GraphicsUnit]::Point, ([System.Byte] ( 0 ) ))
				
	$panelIP.visible = $False
	$PanelNetworkCards.visible = $True
	$PanelAllDNS.visible = $False
}
#*****************************************************************************************************************************************************************
function RadioDHCP{
	$TxtBoxIP.ReadOnly = $True
	$TxtBoxSubnetmask.ReadOnly = $True
	$TxtBoxDefaultGateway.ReadOnly = $True
	$LblIPAddress.enabled = $False
	$LblSubnetmask.enabled = $False
	$LblDefaultGateway.enabled = $False
	$DNSDHCPRadioButton.enabled = $true
}
#*****************************************************************************************************************************************************************
function RadioDNSDHCP{
	$TxtBoxPreferredDNS.ReadOnly = $True
	$TxtBoxAlernateDNS.ReadOnly = $True
	$LblPreferredDNS.enabled = $False
	$LblAlernateDNS.enabled = $False
}
#*****************************************************************************************************************************************************************
function RadioDNSStatic{
	$TxtBoxPreferredDNS.ReadOnly = $False
	$TxtBoxAlernateDNS.ReadOnly = $False
	$LblPreferredDNS.enabled = $True
	$LblAlernateDNS.enabled = $True
}
#*****************************************************************************************************************************************************************
function RadioStatic{
	$TxtBoxIP.ReadOnly = $False
	$TxtBoxSubnetmask.ReadOnly = $False
	$TxtBoxDefaultGateway.ReadOnly = $False
	$LblIPAddress.enabled = $True
	$LblSubnetmask.enabled = $True
	$LblDefaultGateway.enabled = $True
	$DNSDHCPRadioButton.enabled = $false
	$DNSDHCPRadioButton.checked = $false
	$DNSStaticRadioButton.checked = $true
}
#*****************************************************************************************************************************************************************
function CheckBoxName{
	if ($ChkBoxName.Checked -eq $True)
	{
		$TxtBoxName.BorderStyle = [System.Windows.Forms.BorderStyle]::FixedSingle
		$TxtBoxName.BackColor = [System.Drawing.Color]::White
		$TxtBoxName.ReadOnly = $False
	}
	else
	{
		$TxtBoxName.BorderStyle = [System.Windows.Forms.BorderStyle]::None
		$TxtBoxName.BackColor = [System.Drawing.Color]::Gainsboro
		$TxtBoxName.ReadOnly = $True
	}
}
#---------------------------------------------------
function Close
{
  $IPSettingsform.Hide()
  $FormNetwork.enabled = $True
}
#---------------------------------------------------
function OK
{
	if($panelIP.visible -eq $True)
	{
		$Adapter = Get-NetAdapter -InterfaceAlias $ListNetworkAdap.SelectedItem
		$DNSServerArray = (Get-DnsClientServerAddress -InterfaceAlias $Adapter.Name -AddressFamily IPv4).ServerAddresses
		$CommandLine = "netsh interface ipv4 show dnsservers name= " + [char]34 + $Adapter.Name + [char]34
		$CommandOutput = Invoke-Expression $CommandLine
		$DNSfromDHCP = $true
		if (($CommandOutput -cmatch "\bStatically\b").Count -gt 0)
		{
			$DNSfromDHCP = $false
		}
		if($DHCPRadioButton.Checked -eq $true)
		{
			# only modify if there's a change
			if ((Get-NetIPInterface -InterfaceAlias $Adapter.Name).Dhcp -ne "Enabled")
			{
				Remove-NetIPAddress -InterfaceAlias $Adapter.Name -AddressFamily IPv4 -ErrorAction Ignore -Confirm:$false
				Set-NetIPInterface -InterfaceAlias $Adapter.Name -Dhcp Enabled
				$TextStrings.LogDHCPEnabled -f $Logdate, $Adapter.Name | Out-File -FilePath $logfile -append
			}
		}
		else
		{
			$NewIP = $TxtBoxIP.Text
			if($TxtBoxSubnetmask -inotmatch "\.")
			{
				if($TxtBoxSubnetmask.Text -gt 32 -or $TxtBoxSubnetmask.Text -lt 0)
				{
					ErrorForm($TextStrings.InvalidSubnetMask)
					return
				}
				$Prefix = $TxtBoxSubnetmask.Text
			}
			else
			{
				$Prefix = Convert-SubnetCIDR($TxtBoxSubnetmask.Text)
				if ($Prefix -eq 0)
				{
					ErrorForm($TextStrings.InvalidSubnetMask)
					return
				}
			}
			
			$TextStrings.LogDHCPDisabled -f $Logdate, $Adapter.Name | Out-File -FilePath $logfile -append
			try
			{
				Remove-NetIPAddress -InterfaceAlias $Adapter.Name -AddressFamily IPv4 -ErrorAction Ignore -Confirm:$false
				if($TxtBoxDefaultGateway.Text.Length -gt 0)
				{
					New-NetIPAddress -InterfaceAlias $Adapter.Name -IPAddress $NewIP -PrefixLength $Prefix -DefaultGateway $TxtBoxDefaultGateway.Text -ErrorAction Stop -Confirm:$false
					$DottedSubnet = Convert-SubnetCIDR($Prefix)
					$TextStrings.IPManual -f $Logdate, $Adapter.Name, $NewIP, $DottedSubnet, $TxtBoxDefaultGateway.Text | Out-File -FilePath $logfile -append
				}
				else
				{
					New-NetIPAddress -InterfaceAlias $Adapter.Name -IPAddress $NewIP -PrefixLength $Prefix -ErrorAction Stop -Confirm:$false
					$TextStrings.IPManual -f $Logdate, $Adapter.Name, $NewIP, $DottedSubnet, "" | Out-File -FilePath $logfile -append
				}
			}
			catch [Exception]
			{
				ErrorForm($_.Exception.Message)
				return
			}
		}
		if ($DNSDHCPRadioButton.Checked -eq $true)
		{
			if($DNSfromDHCP -eq $true)
			{ return }
			else
			{
				Set-DnsClientServerAddress –InterfaceAlias $Adapter.Name -ResetServerAddresses
				$TextStrings.DNSResetToDHCP -f $Logdate, $Adapter.Name | Out-File -FilePath $logfile -append
			}
		}
		$DNS1 = $TxtBoxPreferredDNS.Text
		$DNS2 = $TxtBoxAlernateDNS.Text
		if($DNSServerArray.Count -eq 0)
		{
			$DNSServerArray = @()
		}
		if($DNSServerArray.Count -gt 0)
		{
			if($TxtBoxPreferredDNS.Text.Length -gt 0)
			{
				$DNSServerArray[0] = ""
				do
				{
					$FoundIndex = $DNSServerArray.IndexOf($DNS1)
					if ($FoundIndex -ne -1)
					{ $DNSServerArray.RemoveAt($FoundIndex) }
				} while ($FoundIndex -ne -1)
				$DNSServerArray[0] = $DNS1
				if($DNSServerArray.Count -gt 1)
				{
					if($DNS2.Length -gt 0)
					{
						do
						{
							$FoundIndex = $DNSServerArray.IndexOf($DNS2)
							if ($FoundIndex -ne -1)
							{ $DNSServerArray.RemoveAt($FoundIndex) }
						} while ($FoundIndex -ne -1)
						if($DNSServerArray.Count -gt 1)
						{ $DNSServerArray[1] = $DNS2 }
						else { $DNSServerArray += $DNS2 }
					}
					else
					{
						$DNSServerArray.RemoveAt[1]
					}
				}
				else
				{
					if ($DNS2.Length -gt 0)
					{
						$DNSServerArray += $DNS2
					}
				}
			}
			else
			{
				$DNSServerArray = @()
			}
		}
		else
		{
			if($DNS1.Length -gt 0)
			{
				$DNSServerArray += $DNS1
			}
			if($DNS2.Length -gt 0)
			{
				$DNSServerArray += $DNS2
			}
		}
		if($DNSServerArray.Count -gt 0)
		{
			try
			{
				Set-DNSClientServerAddress -InterfaceAlias $Adapter.Name -ServerAddress $DNSServerArray
				$TextStrings.DNSManual -f $Logdate, $Adapter.Name | Out-File -FilePath $logfile -append
			}
			catch [Exception]
			{
				ErrorForm ($_.Exception.Message)
			}
		}
		else
		{
			Set-DNSClientServerAddress -InterfaceAlias $Adapter.Name -ResetServerAddresses
			$TextStrings.DNSResetToDHCP -f $Logdate, $Adapter.Name | Out-File -FilePath $logfile -append
		}
		if ($Adapter.Name -ne $TxtBoxName.Text)
		{
			Rename-NetAdapter -Name $Adapter.Name -NewName $TxtBoxName.Text
			$TextStrings.AdapterRenamed -f $Logdate, $Adapter.Name, $TxtBoxName.Text | Out-File -FilePath $logfile -append
		}
	}
	elseif($PanelNetworkCards.visible -eq $True)
	{
		# nothing really happens on this one by pushing Apply
		return
	}
	else #	$PanelAllDNS.visible = $True
	{
		if ($BtnOkaddDNS.Enabled -eq $true) # check so that the user doesn't accidentally override DHCP
		{
			$Adapter = Get-NetAdapter -InterfaceAlias $DNSTxtBoxName.Text
			$DNSServerArray = @()
			foreach ($Server in $ListDNS.Items)
			{ $DNSServerArray += $Server }
			if ($DNSServerArray.Count -gt 0)
			{
				Set-DNSClientServerAddress -InterfaceAlias $Adapter.Name -ServerAddress $DNSServerArray
				$TextStrings.DNSManual -f $Logdate, $Adapter.Name | Out-File -FilePath $logfile -append
			}
			else
			{
				Set-DNSClientServerAddress -InterfaceAlias $Adapter.Name -ResetServerAddresses
				$TextStrings.DNSResetToDHCP -f $Logdate, $Adapter.Name | Out-File -FilePath $logfile -append
			}
		}
	}
}
#---------------------------------------------------
function Convert-SubnetCIDR([String]$InputVal)
{
	$SubnetLookup = New-Object System.Collections.Specialized.StringCollection
	$SubnetLookup += $TextStrings.Invalid
	$SubnetLookup += "128.0.0.0"
	$SubnetLookup += "192.0.0.0"
	$SubnetLookup += "224.0.0.0"
	$SubnetLookup += "240.0.0.0"
	$SubnetLookup += "248.0.0.0"
	$SubnetLookup += "252.0.0.0"
	$SubnetLookup += "254.0.0.0"
	$SubnetLookup += "255.0.0.0"
	$SubnetLookup += "255.128.0.0"
	$SubnetLookup += "255.192.0.0"
	$SubnetLookup += "255.224.0.0"
	$SubnetLookup += "255.240.0.0"
	$SubnetLookup += "255.248.0.0"
	$SubnetLookup += "255.252.0.0"
	$SubnetLookup += "255.254.0.0"
	$SubnetLookup += "255.255.0.0"
	$SubnetLookup += "255.255.128.0"
	$SubnetLookup += "255.255.192.0"
	$SubnetLookup += "255.255.224.0"
	$SubnetLookup += "255.255.240.0"
	$SubnetLookup += "255.255.248.0"
	$SubnetLookup += "255.255.252.0"
	$SubnetLookup += "255.255.254.0"
	$SubnetLookup += "255.255.255.0"
	$SubnetLookup += "255.255.255.128"
	$SubnetLookup += "255.255.255.192"
	$SubnetLookup += "255.255.255.224"
	$SubnetLookup += "255.255.255.240"
	$SubnetLookup += "255.255.255.248"
	$SubnetLookup += "255.255.255.252"
	$SubnetLookup += "255.255.255.254"
	$SubnetLookup += "255.255.255.255"
	
	if ($InputVal -match "\.")	# treat like a subnet mask wanting a CIDR; return "Invalid" if garbage in
	{
		$TestVal = $SubnetLookup.IndexOf($InputVal)
		if($TestVal -eq -1)
		{ return $SubnetLookup[0] }
		else { return $TestVal }
	}
	else	# treat like a CIDR wanting a subnet mask; return "Invalid" if garbage in
	{
		$TestVal = $SubnetLookup[$InputVal]
		if($TestVal.Length -eq 0)
		{ return $SubnetLookup[0] }
		else
		{ return $TestVal }
	}
}
#*****************************************************************************************************************************************************************
function IPStatus
{
	$ListNetworkAdap.Items.Clear()
	$AdapterArray = Get-NetAdapter
	foreach ($Adapter in $AdapterArray)
	{
		if ((Get-NetAdapterBinding -Name $Adapter.Name -ComponentID ms_tcpip).Enabled -eq $True -and $Adapter.MediaType -eq "802.3" -and $Adapter.AdminStatus -eq "Up")
		{
			$ListNetworkAdap.Items.Add($Adapter.Name)
			$ListNetworkAdap.set_SelectedItem($Adapter.Name)
			$DNSListNetworkAdap.Items.Add($Adapter.Name)
			$DNSListNetworkAdap.set_SelectedItem($Adapter.Name)
		}
	}
}
#*****************************************************************************************************************************************************************
function GetAdapterStatus
{
	$ChkdEnabled.Items.Clear()
	$ChkdDisabled.Items.Clear()
	$ListBox3.Items.Clear()
	$AdapterArray = Get-NetAdapter
	foreach ($Adapter in $AdapterArray)
	{
		if ($Adapter.AdminStatus -eq "Up" -and $Adapter.MediaConnectionState -eq "Connected")
		{ $ChkdEnabled.Items.Add($Adapter.Name) }
		elseif ($Adapter.AdminStatus -eq "Up" -and $Adapter.MediaConnectionState -eq "Disconnected")
		{ $ListBox3.Items.Add($Adapter.Name) }
		else
		{ $ChkdDisabled.Items.Add($Adapter.Name) }
	}
}
#*****************************************************************************************************************************************************************
function GetDNS([String]$InAdapter)
{
	$Adapter = Get-NetAdapter -Name $InAdapter
	$DNSTxtBoxName.Text = $Adapter.Name
	$DNSTxtBoxDescription.Text = $Adapter.InterfaceDescription
	$ListDNS.Items.Clear()
	$DNSServerArray = Get-DnsClientServerAddress -InterfaceAlias $Adapter.Name -AddressFamily IPv4
	foreach ($DNSServer in $DNSServerArray.ServerAddresses)
	{
		$ListDNS.Items.Add($DNSServer)
	}
	$TxtBoxMAC.Text = $Adapter.MACAddress
	$CommandLine = "netsh interface ipv4 show dnsservers name= " + [char]34 + $Adapter.Name + [char]34
	$CommandOutput = Invoke-Expression $CommandLine
	if (($CommandOutput -cmatch "\bStatically\b").Count -gt 0)
	{
		$Button1.Enabled = $True
		$Button2.Enabled = $True
		$Button3.Enabled = $True
	}
	else
	{
		$Button1.Enabled = $False
		$Button2.Enabled = $False
		$Button3.Enabled = $False
	}
}
#*****************************************************************************************************************************************************************
function GetIp([string]$InAdapter)
{
	$TxtBoxIP.Clear()
	$TxtBoxSubnetmask.Clear()
	$TxtBoxDefaultGateway.Clear()
	$TxtBoxPreferredDNS.Clear()
	$TxtBoxAlernateDNS.Clear()
	$ChkBoxName.Checked = $False
	$Adapter = Get-NetAdapter -Name $InAdapter
	$IPInt = Get-NetIPInterface -InterfaceIndex $Adapter.InterfaceIndex -AddressFamily IPv4
	$TxtBoxName.Text = $Adapter.Name
	$TxtBoxDescription.Text = $Adapter.InterfaceDescription
	$ChkBoxName.Checked = $False
	
	if ($IPInt.Dhcp -eq "Enabled")
	{
		$DHCPRadioButton.Checked = $True
		$StaticRadioButton.Checked = $False
	}
	else
	{
		$DHCPRadioButton.Checked = $False
		$StaticRadioButton.Checked = $True
	}
	$IPInfo = Get-NetIPAddress -InterfaceAlias $Adapter.Name -AddressFamily IPv4
	if ($IPInfo.Count -gt 0)
	{
		# the highest order item is the first one entered
		$IPInfo = $IPInfo[($IPInfo.Count - 1)]
	}
	$TxtBoxIP.Text = $IPInfo.IPAddress
	$TxtBoxSubnetmask.Text = Convert-SubnetCIDR($IPInfo.PrefixLength)
	$TxtBoxDefaultGateway.Text = (Get-NetIPConfiguration -InterfaceAlias $Adapter.Name).IPv4DefaultGateway.NextHop
	$DNSServers = (Get-DNSClientServerAddress -InterfaceAlias $Adapter.Name -AddressFamily IPv4).ServerAddresses
	$TxtBoxPreferredDNS.Text = $DNSServers[0]
	$TxtBoxAlernateDNS.Text = $DNSServers[1]
	# the next lines check to see if DNS servers are delivered by DHCP or statically set; it would be nice if there were a better way
	$CommandLine = "netsh interface ipv4 show dnsservers name= " + [char]34 + $Adapter.Name + [char]34
	$CommandOutput = Invoke-Expression $CommandLine
	if (($CommandOutput -cmatch "\bStatically\b").Count -gt 0)
	{
		$DNSStaticRadioButton.Checked = $True
	}
	else
	{
		$DNSDHCPRadioButton.Checked = $True
	}
}
#*****************************************************************************************************************************************************************
function MoveDNSUp
{
	if ($ListDNS.Items.Count -gt 0)
	{
		$CurrentIndex = $ListDNS.SelectedIndex
		$CurrentItem = $ListDNS.SelectedItem
		if ($CurrentIndex -gt 0)
		{
			$ItemHolder = $ListDNS.Items.Item($CurrentIndex - 1)
			$ListDNS.Items.Item($CurrentIndex - 1) = $CurrentItem
			$ListDNS.Items.Item($CurrentIndex) = $ItemHolder
			$ListDNS.SetSelected($CurrentIndex - 1, $True)
		}
	}
}
#*****************************************************************************************************************************************************************
function MoveDNSDown
{
	if ($ListDNS.Items.Count -gt 0)
	{
		$CurrentIndex = $ListDNS.SelectedIndex
		$CurrentItem = $ListDNS.SelectedItem
		if ($CurrentIndex -lt $ListDNS.Items.Count)
		{
			$ItemHolder = $ListDNS.Items.Item($CurrentIndex + 1)
			$ListDNS.Items.Item($CurrentIndex + 1) = $CurrentItem
			$ListDNS.Items.Item($CurrentIndex) = $ItemHolder
			$ListDNS.SetSelected($CurrentIndex + 1, $True)
		}
	}
}
#*****************************************************************************************************************************************************************
function AddDNS
{
	$PanelAllDNS.enabled = $False
	$PanelDNS.location = New-Object System.Drawing.Size(55,70)
}
#*****************************************************************************************************************************************************************
function OKDNSAdd
{
	$PanelAllDNS.enabled = $true
	$ListDNS.Items.Add($TxtDNSadd.Text)
	$ListDNS.Update
	$PanelDNS.location = New-Object System.Drawing.Size(500, 500)
}
#*****************************************************************************************************************************************************************
function CancelAddDNS
{
	$PanelDNS.location = New-Object System.Drawing.Size(500, 500)
	$PanelAllDNS.enabled = $true
}
#*****************************************************************************************************************************************************************
function removeDNS
{
	$ListDNS.Items.Remove($ListDNS.SelectedItem)
}
#*****************************************************************************************************************************************************************
function removeDNSALL
{
	$ListDNS.Items.Clear()
}
#*****************************************************************************************************************************************************************
function FlushDNS
{
	Clear-DNSClientCache
}
#*****************************************************************************************************************************************************************
function RegisterDNS
{
	Register-DnsClient
}
#*****************************************************************************************************************************************************************
function ErrorForm([string]$Messagetxt)
{
  #Confirmation Dialog
  $Flag = $TextStrings.Error
  $Message = $Messagetxt
  . .\Common.ps1
  Message
  $btnOK.visible = $False
  $btnClose.Text = $TextStrings.OK
  $pboxError.visible = $true
  $frmMessage.ShowDialog()
}
#*****************************************************************************************************************************************************************
function RefreshNetwork
{
	GetAdapterStatus
}
#*****************************************************************************************************************************************************************
function EnableNic
{
	$IPSettingsform.Cursor = [System.Windows.Forms.Cursors]::WaitCursor
	foreach ($AdapterName in $ChkdDisabled.CheckedItems)
	{
		Enable-NetAdapter -Name $AdapterName -Confirm:$false
		$TextStrings.AdapterEnabled -f $Logdate, $AdapterName | Out-File -FilePath $logfile -append
	}
	IPStatus
	GetAdapterStatus
	$IPSettingsform.Cursor = [System.Windows.Forms.Cursors]::Default
}
#*****************************************************************************************************************************************************************
function DisableNic
{
	$IPSettingsform.Cursor = [System.Windows.Forms.Cursors]::WaitCursor
	foreach ($AdapterName in $ChkdEnabled.CheckedItems)
	{
		Disable-NetAdapter -Name $AdapterName -Confirm:$false
		$TextStrings.AdapterDisabled -f $Logdate, $AdapterName | Out-File -FilePath $logfile -append
	}
	IPStatus
	GetAdapterStatus
	$IPSettingsform.Cursor = [System.Windows.Forms.Cursors]::Default
}
Main

#endregion