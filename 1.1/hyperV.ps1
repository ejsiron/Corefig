Import-LocalizedData -BindingVariable TextStrings -FileName hyperV.psd1
#region Constructor

[void][System.Reflection.Assembly]::LoadWithPartialName("System.Windows.Forms")
[void][System.Reflection.Assembly]::LoadWithPartialName("System.Drawing")

#endregion

#region Form Creation
#~~< frmHyperV >~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
$frmHyperV = New-Object System.Windows.Forms.Form
$frmHyperV.ClientSize = New-Object System.Drawing.Size(553, 548)
$frmHyperV.ControlBox = $false
$frmHyperV.Font = New-Object System.Drawing.Font("Microsoft Sans Serif", 9.0, [System.Drawing.FontStyle]::Regular, [System.Drawing.GraphicsUnit]::Point, ([System.Byte](0)))
$frmHyperV.FormBorderStyle = [System.Windows.Forms.FormBorderStyle]::FixedSingle
$frmHyperV.MaximizeBox = $false
$frmHyperV.MinimizeBox = $false
$frmHyperV.ShowIcon = $false
$frmHyperV.StartPosition = [System.Windows.Forms.FormStartPosition]::CenterScreen
$frmHyperV.Text = $TextStrings.PageTitle
$frmHyperV.BackColor = [System.Drawing.Color]::White
#~~< SplitContainer1 >~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
$SplitContainer1 = New-Object System.Windows.Forms.SplitContainer
$SplitContainer1.BorderStyle = [System.Windows.Forms.BorderStyle]::FixedSingle
$SplitContainer1.Location = New-Object System.Drawing.Point(-4, 66)
$SplitContainer1.Panel1.Text = ""
$SplitContainer1.Panel2.Text = ""
$SplitContainer1.Size = New-Object System.Drawing.Size(563, 426)
$SplitContainer1.SplitterDistance = 364
$SplitContainer1.TabIndex = 19
$SplitContainer1.Text = ""
$SplitContainer1.BackColor = [System.Drawing.Color]::LightGray
#~~< SplitContainer1.Panel1 >~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
#~~< GroupBox2 >~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
$GroupBox2 = New-Object System.Windows.Forms.GroupBox
$GroupBox2.Font = New-Object System.Drawing.Font("Tahoma", 8.25, [System.Drawing.FontStyle]::Bold, [System.Drawing.GraphicsUnit]::Point, ([System.Byte](0)))
$GroupBox2.Location = New-Object System.Drawing.Point(15, 212)
$GroupBox2.Size = New-Object System.Drawing.Size(333, 199)
$GroupBox2.TabIndex = 10
$GroupBox2.TabStop = $false
$GroupBox2.Text = $TextStrings.StoppedVMs
#~~< listboxStoppedStatus >~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
$listboxStoppedStatus = New-Object System.Windows.Forms.ListBox
$listboxStoppedStatus.Font = New-Object System.Drawing.Font("Tahoma", 8.25, [System.Drawing.FontStyle]::Regular, [System.Drawing.GraphicsUnit]::Point, ([System.Byte](0)))
$listboxStoppedStatus.Location = New-Object System.Drawing.Point(253, 35)
$listboxStoppedStatus.SelectionMode = [System.Windows.Forms.SelectionMode]::None
$listboxStoppedStatus.Size = New-Object System.Drawing.Size(61, 108)
$listboxStoppedStatus.TabIndex = 0
$listboxStoppedStatus.ForeColor = [System.Drawing.Color]::DimGray
#~~< listboxStopped >~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
$listboxStopped = New-Object System.Windows.Forms.ListBox
$listboxStopped.Font = New-Object System.Drawing.Font("Tahoma", 8.25, [System.Drawing.FontStyle]::Regular, [System.Drawing.GraphicsUnit]::Point, ([System.Byte](0)))
$listboxStopped.FormattingEnabled = $true
$listboxStopped.Location = New-Object System.Drawing.Point(14, 35)
$listboxStopped.Size = New-Object System.Drawing.Size(240, 108)
$listboxStopped.TabIndex = 2
#~~< btnStartVM >~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
$btnStartVM = New-Object System.Windows.Forms.Button
$btnStartVM.FlatStyle = [System.Windows.Forms.FlatStyle]::System
$btnStartVM.Font = New-Object System.Drawing.Font("Tahoma", 8.25, [System.Drawing.FontStyle]::Regular, [System.Drawing.GraphicsUnit]::Point, ([System.Byte](0)))
$btnStartVM.Location = New-Object System.Drawing.Point(14, 158)
$btnStartVM.Size = New-Object System.Drawing.Size(306, 26)
$btnStartVM.TabIndex = 0
$btnStartVM.Text = $TextStrings.StartVM
$btnStartVM.UseVisualStyleBackColor = $true
$btnStartVM.add_Click({StartVM($ListboxStopped.selecteditem)})
$GroupBox2.Controls.Add($listboxStoppedStatus)
$GroupBox2.Controls.Add($listboxStopped)
$GroupBox2.Controls.Add($btnStartVM)
$GroupBox2.ForeColor = [System.Drawing.Color]::Black
#~~< GroupBox1 >~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
$GroupBox1 = New-Object System.Windows.Forms.GroupBox
$GroupBox1.FlatStyle = [System.Windows.Forms.FlatStyle]::Flat
$GroupBox1.Font = New-Object System.Drawing.Font("Tahoma", 8.25, [System.Drawing.FontStyle]::Bold, [System.Drawing.GraphicsUnit]::Point, ([System.Byte](0)))
$GroupBox1.Location = New-Object System.Drawing.Point(14, 16)
$GroupBox1.Size = New-Object System.Drawing.Size(333, 190)
$GroupBox1.TabIndex = 9
$GroupBox1.TabStop = $false
$GroupBox1.Text = $TextStrings.RunningVMs
#~~< listboxStatus >~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
$listboxStatus = New-Object System.Windows.Forms.ListBox
$listboxStatus.Font = New-Object System.Drawing.Font("Tahoma", 8.25, [System.Drawing.FontStyle]::Regular, [System.Drawing.GraphicsUnit]::Point, ([System.Byte](0)))
$listboxStatus.Location = New-Object System.Drawing.Point(254, 31)
$listboxStatus.SelectionMode = [System.Windows.Forms.SelectionMode]::None
$listboxStatus.Size = New-Object System.Drawing.Size(61, 108)
$listboxStatus.TabIndex = 0
$listboxStatus.ForeColor = [System.Drawing.Color]::DimGray
#~~< listboxActive >~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
$listboxActive = New-Object System.Windows.Forms.ListBox
$listboxActive.Font = New-Object System.Drawing.Font("Tahoma", 8.25, [System.Drawing.FontStyle]::Regular, [System.Drawing.GraphicsUnit]::Point, ([System.Byte](0)))
$listboxActive.FormattingEnabled = $true
$listboxActive.Location = New-Object System.Drawing.Point(23, 31)
$listboxActive.Size = New-Object System.Drawing.Size(232, 108)
$listboxActive.TabIndex = 2
$listboxActive.add_SelectedIndexChanged({Screenshot($listboxActive)})
#~~< btnStopVM >~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
$btnStopVM = New-Object System.Windows.Forms.Button
$btnStopVM.FlatStyle = [System.Windows.Forms.FlatStyle]::System
$btnStopVM.Font = New-Object System.Drawing.Font("Tahoma", 8.25, [System.Drawing.FontStyle]::Regular, [System.Drawing.GraphicsUnit]::Point, ([System.Byte](0)))
$btnStopVM.Location = New-Object System.Drawing.Point(23, 145)
$btnStopVM.Size = New-Object System.Drawing.Size(297, 26)
$btnStopVM.TabIndex = 0
$btnStopVM.Text = $TextStrings.StopVM
$btnStopVM.UseVisualStyleBackColor = $true
$btnStopVM.add_Click({StopVM($ListboxActive.selecteditem)})
$GroupBox1.Controls.Add($listboxStatus)
$GroupBox1.Controls.Add($listboxActive)
$GroupBox1.Controls.Add($btnStopVM)
$GroupBox1.ForeColor = [System.Drawing.Color]::Black
$SplitContainer1.Panel1.Controls.Add($GroupBox2)
$SplitContainer1.Panel1.Controls.Add($GroupBox1)
#~~< SplitContainer1.Panel2 >~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
$SplitContainer1.Panel2.BackColor = [System.Drawing.Color]::White
#~~< listboxNetwork >~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
$listboxNetwork = New-Object System.Windows.Forms.ListBox
$listboxNetwork.Font = New-Object System.Drawing.Font("Tahoma", 8.25, [System.Drawing.FontStyle]::Regular, [System.Drawing.GraphicsUnit]::Point, ([System.Byte](0)))
$listboxNetwork.FormattingEnabled = $true
$listboxNetwork.Location = New-Object System.Drawing.Point(15, 327)
$listboxNetwork.Size = New-Object System.Drawing.Size(161, 69)
$listboxNetwork.TabIndex = 42
#~~< Label2 >~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
$Label2 = New-Object System.Windows.Forms.Label
$Label2.Font = New-Object System.Drawing.Font("Tahoma", 8.25, [System.Drawing.FontStyle]::Bold, [System.Drawing.GraphicsUnit]::Point, ([System.Byte](0)))
$Label2.Location = New-Object System.Drawing.Point(12, 307)
$Label2.Size = New-Object System.Drawing.Size(172, 17)
$Label2.TabIndex = 44
$Label2.Text = $TextStrings.VSwitches
#~~< PictureBoxSS >~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
$PictureBoxSS = New-Object System.Windows.Forms.PictureBox
$PictureBoxSS.BorderStyle = [System.Windows.Forms.BorderStyle]::FixedSingle
$PictureBoxSS.Location = New-Object System.Drawing.Point(15, 130)
$PictureBoxSS.Size = New-Object System.Drawing.Size(161, 141)
$PictureBoxSS.SizeMode = [System.Windows.Forms.PictureBoxSizeMode]::StretchImage
$PictureBoxSS.TabIndex = 39
$PictureBoxSS.TabStop = $false
$PictureBoxSS.Text = ""
#~~< btnRefreshPic >~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
$btnRefreshPic = New-Object System.Windows.Forms.Button
$btnRefreshPic.FlatStyle = [System.Windows.Forms.FlatStyle]::System
$btnRefreshPic.Font = New-Object System.Drawing.Font("Tahoma", 8.25, [System.Drawing.FontStyle]::Regular, [System.Drawing.GraphicsUnit]::Point, ([System.Byte](0)))
$btnRefreshPic.Location = New-Object System.Drawing.Point(15, 68)
$btnRefreshPic.Size = New-Object System.Drawing.Size(161, 26)
$btnRefreshPic.TabIndex = 0
$btnRefreshPic.Text = $TextStrings.RefreshThumbs
$btnRefreshPic.UseVisualStyleBackColor = $true
$btnRefreshPic.add_Click({Screenshot($btnRefreshPic)})
#~~< btnRefreshVM >~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
$btnRefreshVM = New-Object System.Windows.Forms.Button
$btnRefreshVM.FlatStyle = [System.Windows.Forms.FlatStyle]::System
$btnRefreshVM.Font = New-Object System.Drawing.Font("Tahoma", 8.25, [System.Drawing.FontStyle]::Regular, [System.Drawing.GraphicsUnit]::Point, ([System.Byte](0)))
$btnRefreshVM.Location = New-Object System.Drawing.Point(15, 36)
$btnRefreshVM.Size = New-Object System.Drawing.Size(161, 26)
$btnRefreshVM.TabIndex = 0
$btnRefreshVM.Text = $TextStrings.RefreshVMs
$btnRefreshVM.UseVisualStyleBackColor = $true
$btnRefreshVM.add_Click({RefreshVM($btnRefreshVM)})
#~~< Label1 >~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
$Label1 = New-Object System.Windows.Forms.Label
$Label1.Font = New-Object System.Drawing.Font("Tahoma", 8.25, [System.Drawing.FontStyle]::Bold, [System.Drawing.GraphicsUnit]::Point, ([System.Byte](0)))
$Label1.Location = New-Object System.Drawing.Point(15, 111)
$Label1.Size = New-Object System.Drawing.Size(152, 16)
$Label1.TabIndex = 26
$Label1.Text = $TextStrings.Thumbnail
$Label1.add_Click({Label1Click($Label1)})
#~~< lblActions >~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
$lblActions = New-Object System.Windows.Forms.Label
$lblActions.Font = New-Object System.Drawing.Font("Tahoma", 8.25, [System.Drawing.FontStyle]::Bold, [System.Drawing.GraphicsUnit]::Point, ([System.Byte](0)))
$lblActions.Location = New-Object System.Drawing.Point(15, 16)
$lblActions.Size = New-Object System.Drawing.Size(172, 17)
$lblActions.TabIndex = 26
$lblActions.Text = $TextStrings.Actions
$SplitContainer1.Panel2.Controls.Add($listboxNetwork)
$SplitContainer1.Panel2.Controls.Add($Label2)
$SplitContainer1.Panel2.Controls.Add($PictureBoxSS)
$SplitContainer1.Panel2.Controls.Add($btnRefreshPic)
$SplitContainer1.Panel2.Controls.Add($btnRefreshVM)
$SplitContainer1.Panel2.Controls.Add($Label1)
$SplitContainer1.Panel2.Controls.Add($lblActions)
$SplitContainer1.Panel2.add_Paint({Panel2Paint($SplitContainer1.Panel2)})
#~~< lblCoreConfigText >~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
$lblCoreConfigText = New-Object System.Windows.Forms.Label
$lblCoreConfigText.Font = New-Object System.Drawing.Font("Tahoma", 8.25, [System.Drawing.FontStyle]::Regular, [System.Drawing.GraphicsUnit]::Point, ([System.Byte](0)))
$lblCoreConfigText.Location = New-Object System.Drawing.Point(107, 30)
$lblCoreConfigText.Size = New-Object System.Drawing.Size(442, 23)
$lblCoreConfigText.TabIndex = 17
$lblCoreConfigText.Text = $TextStrings.PageDescription
#~~< lblCoreConfigTitle >~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
$lblCoreConfigTitle = New-Object System.Windows.Forms.Label
$lblCoreConfigTitle.Font = New-Object System.Drawing.Font("Tahoma", 8.25, [System.Drawing.FontStyle]::Bold, [System.Drawing.GraphicsUnit]::Point, ([System.Byte](0)))
$lblCoreConfigTitle.Location = New-Object System.Drawing.Point(78, 13)
$lblCoreConfigTitle.Size = New-Object System.Drawing.Size(346, 17)
$lblCoreConfigTitle.TabIndex = 16
$lblCoreConfigTitle.Text = $TextStrings.PageTitle
#~~< pboxVirtualIMG >~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
$pboxVirtualIMG = New-Object System.Windows.Forms.PictureBox
$pboxVirtualIMG.Location = New-Object System.Drawing.Point(7, 13)
$pboxVirtualIMG.Size = New-Object System.Drawing.Size(59, 50)
$pboxVirtualIMG.TabIndex = 18
$pboxVirtualIMG.TabStop = $false
$pboxVirtualIMG.Text = ""
#region pboxVirtualIMG.Image = ([System.Drawing.Image](...)
$pboxVirtualIMG.Image = ([System.Drawing.Image]([System.Drawing.Image]::FromStream((New-Object System.IO.MemoryStream(($$ = [System.Convert]::FromBase64String(
"iVBORw0KGgoAAAANSUhEUgAAADwAAAAvCAYAAAC/vqlHAAAAAXNSR0IArs4c6QAAAARnQU1BAACx"+
                                 "jwv8YQUAAAAgY0hSTQAAeiYAAICEAAD6AAAAgOgAAHUwAADqYAAAOpgAABdwnLpRPAAAFGdJREFU"+
                                 "aEPtWglYVeXaTW/9dbXMKU1RQVEBmQRERQFREQVBRZB5lhnneWzSHHH2lmWOqGnOpDmUmZpevWY5"+
                                 "lJimZU4pcgbOgTOz7no30N9wu8+t2/Q/z3+eZ7H3OWfvffb61nqH79s88sj/v36dEcCxR+potoT7"+
                                 "arcNyVf9zWU0sKzur3PlP+FVygpbOGnfGrpEd3hCcfnO+GJuN2vejNij2RgcgON1vyXu4ebSsE1r"+
                                 "uy3Ec9z/vzcguBv+mGa171T9vrzd5cUZ2zVreqgN5zeifE8aNBt6f6A7kL+t8lDUEqyr35YkRzjY"+
                                 "t4ZXZw907+YLvtcQff6E+v34lqjaY9rNoZFUc7f+3UkbVKs8b1ScXQW+DJaHV01VgMVy/yI0m0LK"+
                                 "r6+LOrB5RrRl9GBn+Pr4ILBXIAoK8hA1dCjcXF2E+Emq3fpPS7xsedt+5TsTX9cdGLlFtcbvbPn+"+
                                 "fNhMepNN/43BVn63mrD+vrlKf89srtRVaT4uwj/me2LnnER8sCgEuYN6ICUlCQkJCUhJTkK/kGA4"+
                                 "tnMQ4ktJ/PE/nDiO16mnOzB6Vflbw8ZpN/R+QffelC2azaEHtNuGGi3qr2w2g9pgLb9nEMJW9c1K"+
                                 "89enKgzflFhN6tswq27CrL4Da4UahmPjcHp2F7w9LxpHl8ViTPogxMfFIjZ2GGJiomnzrqDlrSSe"+
                                 "SOJ1/jDiuj1pvrp3Jx6qODxhjW5/7lb1uoBS4xeHUGW1Gqy6u9Vky28bzHfP6Y3nN5qN1w5A/8lG"+
                                 "aC/tgeH+5wphs+prmLV3YS37HKotg3B2ZRSK50YjLjZWITtsWBQRjUER4XB16yRqlxCd/hDS6rX+"+
                                 "i3X78jbff/4RqFZ3NUucMkYNtopSEr1nsD64XGm8tNlkvLwL5vJvYNZ8DauhHOZbp6H7eB1014/B"+
                                 "SKUtlfzMoIP55GxolrfDiUXhSIiLIWEqHB3JmI5EZORgRHE/uE8Q2ju2FeJbqHaD35W49q3oqfp3"+
                                 "J39qvLQFlgclVu1bUVVU0WSrVFWarr9nqLy8o8r0gEpqqaRATcJU08J9m1ED81fHobuwDeVHnoN6"+
                                 "cxiMn+/HnW1DUDQnA3GRYdj1ciTeXxqP00vD8VLOAAweHIEIKj1oUDi6de0iNhfiY3+3MqbbnVZQ"+
                                 "cWb5R4YLRRQWVv6xMjNbVa+4Ww3Xj8BqMcOiu09175LwLZgeXCHpm7Dyvc1ihPHydjDeUfHhAuj+"+
                                 "vgKV1w7hzoYhOLM0FMWFWTixJBa3X/XDRwv74sjKNGyfNQg5sf0wMGwgwkJD0b9/P7hX2/wBEfCb"+
                                 "q63ZGjFNf2TaNe32WKtNd89qvLq/ynznH6CloX//OehPLlRGwVR6DaavT8Ny7zxMt8/CcPUANG8O"+
                                 "gf74HFgefgGr5hYs/F57YDTurg3G1S05+HS5L2xX1sFiNgK6L3B/UziOLByK95anY/XEEMREBGPA"+
                                 "gBAFvQL9aXNHIf4+0fw3I24u6j9dty+j6MGMR3QPXq5n03/woiQsVJkqpe6i8uQ80PYwXilW3lvL"+
                                 "rkFXnAHd29kw3TwJ092PSfgaJJkx20O7JwWlyztCe3QKTIYKGJnUDBISjH+LqQK2q9twY2VXHCxM"+
                                 "x9HFkZiX448Qlq7g4D7o168vuvp6o61DGyG+gDZ/7FcnjpMZ4z/fOvKK8coWmO5/BvWmAShb3R3G"+
                                 "z7ZDPK7dm4GyFSSwPQblb2ehfGcCbLS4TRRVfwmTJK938qDZlQzVukBodyXx+9tghleSmVF1C5V3"+
                                 "zzPZMRwYCmbNHViY3IwfTsf5BV2xb3Ea9s4eiOzoIPTt0xu9e/di8xJQ27SYSDzqVyHN0XuCF8t9"+
                                 "Kc3XeHrdRFp0l6KgzWaD7sRcPJjfFFqS0x0cC9UKJzxc2Az6D56HZstAWNVfoeLEHFp+Oo+JZwwP"+
                                 "gYZkzbR6lajITG5hvFeWXkf5jZPQfbQGuos7q8sYCZulhlN5m+oGVDujcXz+ALy7OBnTUgMRFNQL"+
                                 "vYICEejfA37du6JjB8XmF4iOv5g4T84klIstK+iJq29Ngb44AWZ9KQzMsuavPwR9jQrGp3ptD5KK"+
                                 "I9Fwxc4Vx2fDVLKb1k2FapUXVK93geF8UbXdy+/BVs5GhEoa73wC7ScbYLr2DktWqTIY+o/XV5ex"+
                                 "suvVpGlzmwxyyQZce9kR788LIeEABDKe/Xv6oWcPglvpz2tsvp5C1ftJ4vzSmcSWiJpyELfd+f6O"+
                                 "EO3SxVvBvLxg7JoVjVsvPoL7c55kEnqZd25BldlQHcPnXodmRwLYkMD05VGoN/RhDx2qWFe7PY5x"+
                                 "O4oDdEqxv1jdUloC46U3Yby4GRYNszlLmFK7tffYkalgvH5YIV5xkwnQaIDu2CwlbO5s7IM3Zw76"+
                                 "HuEeft3RnSor8OuKTi7OojbII+RfkpY2rmPH9lLrJOWvkJ7Wy8sT3TibqSX8ck4/XFg/ArYbmxmP"+
                                 "Z6BaH4SyNT1gurJHIax7pwDq1V2VGRInFCijohWnFkF39DmYrh9SjjGQnHZXIowlu4jdtPRN2PQk"+
                                 "r2UsS+1WfalsldptroTNoIF2Xz7K3vBj+MyD6atjuLF2IN6c/mPCfn7dFMK+vj7sydvW1u1FP0W4"+
                                 "X2CAP5NBEDzcXdGhfTtmQR/4suDXEl6WH4DzW6fA8MXe6hi22qD/+1I8WNEJmt3p0EsMv8IYXtyS"+
                                 "dp4F9ca+YN2G7sh0VJ4qrD7HxCT02Q4mtUzoD08iKT1slWXVZEs/Zzn7O0zfXGKBf0iFj0BDZ1R+"+
                                 "tFqxeeVHr6OipBi31vnjjWlx3yocUGPpHtw6O3VAayrrxK2A4o38EWHxOn2/Yfy4MSgsXKDMXmTK"+
                                 "1rpVSyV2fXy8FNIbJwbh6o5JwP5kNhImmBjHEsvmSqrw7lSUrvKBhmVJyy7K8uAyic5AxdlXoaHi"+
                                 "Dxc0paULYLpxRLG0YuuKMpS/MwLGq/vYpJTAcv8SqkjeQturi/ox9jNg/uYCzPcvw0LlDZd3Q711"+
                                 "CD55qRnWTwtnlpbEVQ1PDzfFwu0plDQn7hRN9v8lYdp308lTJzBu/FjFErkj8pA9Kg3DM4criUAu"+
                                 "JBcYnxiIS6sisHv2YHy6sAusJW9ysmtkQnkAKwnIPFi1dRgevtEDZonhov4oWxvAQRimJDLtjnio"+
                                 "GQaV595Q1JZX+d7hjPMwcFKilK8KOkF/YAzM91iz755j6PyDNj4BbXEWy2AY7Z2Lr9YFYdvUAIVk"+
                                 "d9q4XVt7WridUp7kPt1IuFMn558mzK7lhYMH31F8P3rkGBRMzsLU/UORmppKpCApKUG5kGQ/P19X"+
                                 "5IZ7Y9+cCJxYGoX7RaGwfXNOyaC6Q6OhWtuTMZqslKSHyxyh3T8KOnZh5i8OKwQlQak5IOqNITDf"+
                                 "OavEe9mS1kxwQRwM1ubdyUz6FlhV15XEpn9vClSveqJsXW+Gx0rg9hlYd4Zj04wwJUbt27SCE3OP"+
                                 "t3dneHAA5D5dSfzfEibRaUK4A9u1kQWjkDsqA6mjIkk2WZmgJycnKOQHRgxCG/6IT5cuSI6NxOKx"+
                                 "YZzPxuHMwn7Q7U9DxXuToFrZngRaQn/0BSVplR+bC86bYTi9rDqGmYgMl3eCa13gogGbk0Roqb5q"+
                                 "RXuYOCj696Ypx1V+9Bo0dIgMXOX5DbDc+RimC3TGha2YmcKa205UdUB7hpzMpmQrygpp2Qrpf2Pp"+
                                 "ttM+OHaUMxIfzHxuOnLH52L8riEkmqSom5iYgPT0NC7H5GPChHFKzLRs0VypgSlxg7FxagiOr4jD"+
                                 "Z4UB0G/hTW4PY+xdRPn+PJIdj9JtMbi3xIExPVUhxWynkKpiAtMdmkC1g5XyZblLxXenKg5R0baS"+
                                 "A6yaEtb06xyBEmwregPPtLBHiNezmBznDakqtYQdSbodB6BDDXFRWvZ/IoarCTdu2AAB/oHITI/B"+
                                 "89PjFaJiaSE6YkQB8vNzkZeXg5ycanhwJMVWffv2xqikEBTPDsX++Sm4tqw7cPMwtGu64fPlPXB9"+
                                 "fTx0W0Kh4UxJtbYXbV3E2s1JgoQBk5aGXZokuwqWndJ5DZSOzXzvItvRTwB1Cb68sB8evt3g5fgU"+
                                 "ZqZ1x5IsT2QO6aYQEhVF4VrCQrqWeE2Znf2jLN2hveOsq1ev4uj7RzByZAHXl6KwZlkSsrNzMXr0"+
                                 "KIWsLLbl5+YiNzeLn2chK0u2mRg6dIiS1FxYAiIGDsCohL44vSIWJZvycXaWM869GoNrm/NhvH20"+
                                 "2qrnVuPhaz5KtpVuq3xfHh5KDDMrc7kI2q2DWZLKSJRk755i6AyG47NPYWxkOyybmozlc6fgeVo6"+
                                 "fkCXnyQs5CXfiBguzh0SSfh7y8B13N1cVi1eVCgt2ge8+WvBVGzs2DEYN24cB2AkRuTnK8rm5WVT"+
                                 "2WxkMntnEcOHp9Hq6cr7Xmzi7Vo+q0zUl4/qi80vDsPRRVE4uSIClzYXABeVlUxYpexwxaP83Sl4"+
                                 "8Dc3qN+KVZoU1bJ2XBAoZmyP50G38dzUKWjZtBGG+zfFygkhWDg1AwumpGPpiyMxL70zsgd7f4+w"+
                                 "KK2oy4zdliDZk40aNuhGso2I7y0I1q1fr95f7e1bybpwq7p163Zk5nvNqaMjoocNxYSJE6rVpZ1z"+
                                 "c3MUZTOzMpCZkY4MIj1dMnkykaRspZcVxf3Z0If0D8WrY/vi4oYMXH9jCKo+Xc/wtSiLBFYjl3io"+
                                 "sHpvNkoZr5rNA9iGfYodhcPR2K4DenVqjLmZ/iQ6HAsmpyqECyfGY26KO8ZG+yAx2KmaMNGhxtKi"+
                                 "qn2b1voGDZ4qJJdhRFfhREhP/e1i4KN88zTRlggkBhFDH3/88ezWrewueri7I41ERo8eqagrNh4+"+
                                 "XNTNQFpaGpHC5JaoZPLk5GREhA9E5JDBSqlw5EhHh/mjaFowil/ojyOF0biztg9w7yzXtLRKKSs/"+
                                 "PA5VuxJw+ZX+8PJglm37NGYkeGGRKDo5RSFbODUNC7J9MSHKFXlDeyA6yEXpopSkVaOsg30bNGnS"+
                                 "+Cjv/SViPJFAiMJ2xF+/S/h/+OYZwp0YQMQRKUQOMeWp+vU3UPEKac6FbC5tnZmZ8a26UrYESUmJ"+
                                 "iE+IZ/HvpJSFsNAQ9OkbpKjtSdXD+gdjblZP7F8Yi5ML2HIWp9K6auD4WKT3tkd7+xYYM9QDi7N8"+
                                 "sHBGvkJW1F00ojdmxDhhVHQ3JA3whK+7I4n+L1mxb4vmza7Qmct5vzOIfBGshqx9jZgi6revWsJu"+
                                 "/KQX0ZvoW3OSkJ5GzG/SuNGxtqx9IVxpyKO1h9POoq7YWNSVdjQhLg4+bAB8vL3QmSQ7e3pwEW6g"+
                                 "8lkru5ZKUx8THohXaPNTf4vG1MiOaNHSHulhXliW5ohFM7IxPzcQC2cWYPH4wXgp0Rkjo3sgP7Iz"+
                                 "Aro4UdWOcK4hK7Ha2q7lwyeeeHzdd1SVBNWP8CDEyrLK+aOVEGHfkJBHHO0IB0LsLSdJXIvi0oA/"+
                                 "X7dOnaUtnm12WRp0sW1OTta36iYmxiM+PobK9lfWnNzY2glBF25lFhM6oL/S2Isi8nnbVq3g5+GI"+
                                 "iWxXZ6d4Ykm2F5bMnkTr+uPF1M5Um4kpqjsiAjrChVM9FxcnODt3VEqQg30ra4MGT+7hPb1MTCLS"+
                                 "iYFEl5p7l0Ql09y/ED9ayJeULVmsPvEkIQEuaEyIJToTYvVUQmLjJcb3Wo7uA+llY7menJaWSoXj"+
                                 "WLcTlX5W0JvNiUw4ZOYlsy75TOp1H0LKhcSeF50Q7u+MpLBumBTni5WTh2FBnB1yhgZiUC83dHZ3"+
                                 "UshKm9iRx7flec2aNjlTp06d+byP6YQ4MJLoQcgqR7Oae/+ehfnZ914yAkJatt+FnCTB3pRwJCQB"+
                                 "RBDDicnEHI7yXo62RZZXRGFR3Nurs9LXdvZ0V5r7IJYrmb2IrSWRhbFWe3q4c4LupPTBHtz39nTF"+
                                 "mBhfjIwNwuiYniTsD3dXZ+XJgzPPkXLTsmXzG48++ugK/u5MooCIJST8XIkWRK19a7n8kOd/9F5O"+
                                 "lhgX5eWiLoRkckn58qMzOdoLmz7T5Ex73lQfzqVTU5KVOXUn2k/m0qKsKCyzMCkbixYtRPHePcqU"+
                                 "UyHMgfFwd0NXb2f08XNFdB93DAkkWaoqDUTrNna6evWeKOJvzSImEGmEOM6baEM0JH7Svv8Ryx8c"+
                                 "VOsACX4ZRSEuCe678f3Co8ySVOG6xFko41isLkSliVdWIHjzhw4e5OSkQMniYm87uxYk7KYQdifc"+
                                 "3FyV2Y7UV3uH1mj09NMH+Ds/jFNffuZANCHEgf8yTn8J0R+eI8Tl4jKakhQkvmWUZbSljI0TFajG"+
                                 "Jq44aD2pnDwQCx8YqhB0ZAweP3YMTiQj68riBjtOQLy8PeHJWi/EZbDEBc2faXqOzlnA60mFqI1T"+
                                 "f+47Ed+N09/lPweEuMS3JLba+O7O/cFEFjGFmNuo0dMHJMl0pa2l3/ZlAhPCEpOibk9/P4WcqO/a"+
                                 "iQNCB7Sye/bWY4899irPf56QyhBf4ySJU2kgfpU4/aXq18a3ZPfa+JY6HkOMIGZQpcXNmzc9L/NW"+
                                 "F2cnnCBh6Y7k6UHvoCA4kHD1k8FWlfXr198mDiGkEkhF6F/joN8kTn8p6dr4lrImoy/FXjq2YEKa"+
                                 "gNHEC3/5S93FzZs9c/nkhyfQpPHTSl/excdLnhRUPfVk/R08Zg4h9TSTkEogPbD0BFIaf9M4/W+I"+
                                 "fze+HXghHyKUSBPFGzdqePD8Jx/jxPFjyM/LpeLO10i4nN9NJLIJqafyRNCZkAdk4hwJnd8lTn8p"+
                                 "cTmvNr6lP29PSHxHNGnSaFEu59FMYF9zNlPsyDbVtZMT+J3UUwkFKXktCXGKOOa/qqf/DYGfe26t"+
                                 "zWvrt6glXVAgG/xkbiXzvsj9yeyalnDfj3AgZMYmRH+zMvNzifzc42u7NiEuZUxIy2OPXEKSmsSr"+
                                 "NPpiYSH7b9vBn/vjf+TxQlziUeq2tKfhhCQmIduZEBtLifvTx+rPGUSxqtTsDoRkcfmvHOnPpZxJ"+
                                 "2yrq/nH/nvRzmPyHx9bOyIRcwxqSMgjSrkrM/i6vfwKg1+/8UfRK3AAAAABJRU5ErkJggg==")),0,$$.Length)))))
#endregion
#~~< btnCancel >~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
$btnCancel = New-Object System.Windows.Forms.Button
$btnCancel.FlatStyle = [System.Windows.Forms.FlatStyle]::System
$btnCancel.Font = New-Object System.Drawing.Font("Tahoma", 8.25, [System.Drawing.FontStyle]::Regular, [System.Drawing.GraphicsUnit]::Point, ([System.Byte](0)))
$btnCancel.Location = New-Object System.Drawing.Point(434, 510)
$btnCancel.Size = New-Object System.Drawing.Size(98, 26)
$btnCancel.TabIndex = 0
$btnCancel.Text = "Close"
$btnCancel.UseVisualStyleBackColor = $true
$btnCancel.add_Click({BtnCancelClick($btnCancel)})
$frmHyperV.Controls.Add($SplitContainer1)
$frmHyperV.Controls.Add($lblCoreConfigText)
$frmHyperV.Controls.Add($lblCoreConfigTitle)
$frmHyperV.Controls.Add($pboxVirtualIMG)
$frmHyperV.Controls.Add($btnCancel)

#endregion

#region Functions

function Main
{
	[System.Windows.Forms.Application]::EnableVisualStyles()
	startHyperV
	$frmHyperV.ShowDialog()
}

function startHyperV
{
	$ErrorActionPreference = "SilentlyContinue"
	
	$GatherActiveVM = Get-WmiObject -Class Msvm_ComputerSystem -Namespace "root\virtualization" | where-object { $_.EnabledState -eq "2" } | where-object { $_.caption -ne "Hosting Computer System" }
			
	$GatherSavedVM = Get-WmiObject -Class Msvm_ComputerSystem -Namespace "root\virtualization" | where-object { $_.EnabledState -eq "32769" }
	
	$GatherStoppedVM = Get-WmiObject -Class Msvm_ComputerSystem -Namespace "root\virtualization" | where-object { $_.EnabledState -eq "3" }
		
	$GatherNetwork = Get-WmiObject -Class Msvm_InternalEthernetPort -Namespace "root\virtualization" | where-object { $_.EnabledState -eq "5" }
		
	foreach ($Active in $GatherActiveVM)
	{
		$ListboxActive.Items.Add($Active.Elementname) + $ListboxStatus.Items.Add("Running")
	}
	foreach ($Saved in $GatherSavedVM)
	{
		$ListboxActive.Items.Add($Saved.Elementname) + $ListboxStatus.Items.Add("Saved")
	}
	foreach ($Stopped in $GatherStoppedVM)
	{
		$ListboxStopped.Items.Add($Stopped.Elementname) + $ListboxStoppedStatus.Items.Add("Stopped")
	}
	foreach ($Network in $GatherNetwork)
	{
		$ListboxNetwork.Items.Add($Network.Elementname)
	}
	
}

function BtnCancelClick($object)
{
	$frmHyperV.Hide()
	$formMainMenu.enabled = $true
}

function StartVM($object)
{
	$StartVM = Get-WmiObject -Namespace "root\virtualization" -Query "Select * From Msvm_ComputerSystem Where ElementName='$object'"
	
	$StartVM.requeststatechange(2)
		
	$frmHyperV.Cursor = [System.Windows.Forms.Cursors]::WaitCursor
	
	Start-Sleep -s 5	
	
	RefreshVM
		
	$frmHyperV.Cursor = [System.Windows.Forms.Cursors]::Default
		
	#Output to Logfile
	$TextStrings.LogVirtualMachineStarted -f (Get-Date -F G), $object | Out-File -FilePath $Logfile -append
	
}

function StopVM($object)
{
	$StopVM = Get-WmiObject -Namespace "root\virtualization" -Query "Select * From Msvm_ComputerSystem Where ElementName='$object'"
		
	$StopVM.requeststatechange(3)
		
	$frmHyperV.Cursor = [System.Windows.Forms.Cursors]::WaitCursor
	
	Start-Sleep -s 5	
	
	RefreshVM
		
	$frmHyperV.Cursor = [System.Windows.Forms.Cursors]::Default
		
	#Output to Logfile
	$TextStrings.LogVirtualMachineStopped -f (Get-Date -F G), $object | Out-File -FilePath $Logfile -append
}

function RefreshVM
{
	$ListboxStopped.Items.Clear()
	$ListboxActive.Items.Clear()
	$ListboxNetwork.Items.Clear()
	$listboxStatus.Items.Clear()
	$listboxStoppedStatus.Items.clear()
	startHyperV
	$frmHyperV.refresh()
}

function Screenshot($object)
{
		
	$HyperVParent = "localhost" 
	$HyperVGuest = $ListboxActive.selecteditem 
	$xRes = 640 
	$yRes = 480
	
	
	$VMManagementService = Get-WmiObject -class "Msvm_VirtualSystemManagementService" -namespace "root\virtualization" -ComputerName $HyperVParent
		
	$Vm = Get-WmiObject -Namespace "root\virtualization" -ComputerName $HyperVParent -Query "Select * From Msvm_ComputerSystem Where ElementName='$HyperVGuest'"
		
	$VMSettingData = Get-WmiObject -Namespace "root\virtualization" -Query "Associators of {$Vm} Where ResultClass=Msvm_VirtualSystemSettingData AssocClass=Msvm_SettingsDefineState" -ComputerName $HyperVParent
		
	$RawImageData = $VMManagementService.GetVirtualSystemThumbnailImage($VMSettingData, "$xRes", "$yRes") 
		
	#| ProcessWMIJob $VMManagementService.PSBase.ClassPath "GetVirtualSystemThumbnailImage" 
	
	$VMThumbnail = New-Object System.Drawing.Bitmap($xRes, $yRes, [System.Drawing.Imaging.PixelFormat]::Format16bppRgb565) 
		
	$rectangle = New-Object System.Drawing.Rectangle(0, 0, $xRes, $yRes) 
		
	[System.Drawing.Imaging.BitmapData] $VMThumbnailBitmapData = $VMThumbnail.LockBits($rectangle, [System.Drawing.Imaging.ImageLockMode]::WriteOnly, [System.Drawing.Imaging.PixelFormat]::Format16bppRgb565)
		
	[System.Runtime.InteropServices.marshal]::Copy($RawImageData.ImageData, 0, $VMThumbnailBitmapData.Scan0, $xRes*$yRes*2)
		
	$VMThumbnail.UnlockBits($VMThumbnailBitmapData);
		
	$VMThumbnail
		
	$PictureBoxSS.Image = $VMThumbnail
}

function Label1Click( $object ){

}

function Panel2Paint( $object ){

}

Main

#endregion