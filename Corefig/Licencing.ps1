Import-LocalizedData -BindingVariable TextStrings -FileName Licencing.psd1
#region Constructor

[void][System.Reflection.Assembly]::LoadWithPartialName("System.Windows.Forms")
[void][System.Reflection.Assembly]::LoadWithPartialName("System.Drawing")

#endregion

#region Form Creation
#~~< LicenseSettingsform >~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
$LicenseSettingsform = New-Object System.Windows.Forms.Form
$LicenseSettingsform.ClientSize = New-Object System.Drawing.Size(1222, 808)
$LicenseSettingsform.ControlBox = $false
$LicenseSettingsform.Font = New-Object System.Drawing.Font("Tahoma", 8.25)
$LicenseSettingsform.FormBorderStyle = [System.Windows.Forms.FormBorderStyle]::FixedSingle
$LicenseSettingsform.MaximizeBox = $false
$LicenseSettingsform.MinimizeBox = $false
$LicenseSettingsform.ShowIcon = $false
$LicenseSettingsform.StartPosition = [System.Windows.Forms.FormStartPosition]::CenterScreen
$LicenseSettingsform.Text = $TextStrings.PageTitle
$LicenseSettingsform.BackColor = [System.Drawing.Color]::White
#~~< lblCoreConfigTitle >~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
$lblCoreConfigTitle = New-Object System.Windows.Forms.Label
$lblCoreConfigTitle.Font = New-Object System.Drawing.Font("Tahoma", 8.25, [System.Drawing.FontStyle]::Bold, [System.Drawing.GraphicsUnit]::Point, ([System.Byte](0)))
$lblCoreConfigTitle.Location = New-Object System.Drawing.Point(82, 9)
$lblCoreConfigTitle.Size = New-Object System.Drawing.Size(306, 17)
$lblCoreConfigTitle.TabIndex = 76
$lblCoreConfigTitle.Text = $TextStrings.PageTitle
#~~< lblDescript >~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
$lblDescript = New-Object System.Windows.Forms.Label
$lblDescript.Font = New-Object System.Drawing.Font("Tahoma", 8.25, [System.Drawing.FontStyle]::Regular, [System.Drawing.GraphicsUnit]::Point, ([System.Byte](0)))
$lblDescript.Location = New-Object System.Drawing.Point(96, 31)
$lblDescript.Size = New-Object System.Drawing.Size(330, 31)
$lblDescript.TabIndex = 75
$lblDescript.Text = $TextStrings.PageDescription
#~~< PictureBox1 >~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
$PictureBox1 = New-Object System.Windows.Forms.PictureBox
$PictureBox1.BackgroundImageLayout = [System.Windows.Forms.ImageLayout]::Center
$PictureBox1.Location = New-Object System.Drawing.Point(12, 6)
$PictureBox1.Size = New-Object System.Drawing.Size(64, 63)
$PictureBox1.TabIndex = 74
$PictureBox1.TabStop = $false
$PictureBox1.Text = ""
#region PictureBox1.BackgroundImage = ([System.Drawing.Image](...)
$PictureBox1.BackgroundImage = ([System.Drawing.Image]([System.Drawing.Image]::FromStream((New-Object System.IO.MemoryStream(($$ = [System.Convert]::FromBase64String(
"iVBORw0KGgoAAAANSUhEUgAAADwAAAA7CAIAAACom36dAAAAAXNSR0IArs4c6QAAAARnQU1BAACx"+
                                 "jwv8YQUAAAAgY0hSTQAAeiYAAICEAAD6AAAAgOgAAHUwAADqYAAAOpgAABdwnLpRPAAAEflJREFU"+
                                 "aEPVmld0W/d9x9Onnr7koQ89Padp0jRN48RO4tiJFcWJFbt2JDvxkC1r0NqypEiyhi1xiBY1OcQp"+
                                 "Eot7gZS4SRAEJwgQJEAABLH33iBAAsTe69cLpcdJTimToFWf5veAgwNc3Pv5/+73/1sXfwcA3/ib"+
                                 "MwT6b86+sRXidBqSyVQ6ndrKwV/DMZtAp9Nph9PF4yvEEq3N4lxf8zgc64Fg+Gsg+5JLfBn0ustL"+
                                 "mqDdKsfiWvvYXEkiklJrrePTi9MLXK5EGQnENjxvIg3pJCCv/3f2ROhAKNT2iFRS9wjdPNjVP0Eg"+
                                 "0RY5UoVKL1fZBHx5/xAJ3zcllqgRMoQvmU5FIym/P+yx6G1asV6+5NDw1+1rXq8/HEklkWU81RU8"+
                                 "EZq6KK2o62JzZV9cLhEDmcrK4MjmF0W0RXFje8/tMmwLfkSgdfoMKje9ITBxFmaPAS0HyG+nBl4O"+
                                 "dL628uiMjtyrU8ns3lg0iqzt6bBvDB2KxFsfkorKUFrjGuIljzvi9oQ8/uSKM2izOiUiLX1RNDy+"+
                                 "UNPU/2lRZUVlg4l2EVa6YWU+JiAEZ9uC5NYoGw+iHqBcSXW+4m37QEFs0ehMXn8UnsZm3hja6w5h"+
                                 "O0ZPfFI0R+crpQYuV8ZaEvKW+ByWgjolWGYprKs++0qgow2Paxq5UFjRgm729RYain4s/uQ7wkvf"+
                                 "0eT9h/rSt825zwfaD0ep5dB3JIR9Rd18enl+0rMeSCe+KvjG0IFwpGtgprC4FteIl4v1arVu1bEe"+
                                 "DERMOheLoRgdXSCOLM4PNahJucNdffUPxz8rrKy5cAh94o3C42fzc2929A6Sp6dm+4fZ2POaitfd"+
                                 "PUeiPcd8tTtV1XuXqJPr64Fk6itxbwSdgkgIFthigUBZjXnI4Ui+uKcGnYtAkhQVN+Ar76gG81jj"+
                                 "XVMVn6DKy29Wdx49f62le3iSzm9sHH2AbmbxpFYPyAzuJTpP1HIuPPi2B/+Bp/JnwrpTXO6yN5D8"+
                                 "KureGDoUTGj160q1mUJjhx9H5fVV78DAdEER6srlW831qJC5B8Bq6b3Ssf+7H31wtBb3KO9G8bkr"+
                                 "txdZUqPBSyQuNbV0S6S6cBS8IWT7gql3b3RyXxS/N1L8EyouX65fS8S3j72xPKJx0BvXkDDnXPMg"+
                                 "5zYZ7ZjG/rMXCqvKH9AZcqNgCvkM1jVrN/+58PSBympsY2tXS0fzmcs3rt96MDXNEEtMnV0zHfh+"+
                                 "kz1lc8R1SxMxyoHoxMuJuU+imOc0xS+PTi+EEFdsVyMbQ8fjYLW7lph8iEMynu7oHj9x+vrl3M/d"+
                                 "a/6oLwxOPoAbaKebTj5fXtWkUuv7R8kdPaN3KhubW3vyijBSuYlCkZRUNE1Q6GrmcFRcAJyjCequ"+
                                 "GGt/euQw4P4dX37X7Qon4tsUyROgY7DmCLocfsQZAp7ys/ya3W8fevV3e0+dzx3o7gTwwQor0fPs"+
                                 "+RPnl9jCoB/uVzQ2t7TSaAydztTVNVZS1S6Vr+PaJwmNBSk9Gow4kJUBcy/w3gf+Bej5MTlvD4On"+
                                 "DoaQgmY7ItkIOg2RcFpvWo0GIB4DbH3/x2evHj7z6eHT+a+9eaCsuAi5TlTay/r8e28evIzCtl+/"+
                                 "WXXp8qW+gVGBSLHq8CnVpuKKtoE+yhKlL6TvBPsoWAkgPAeC/SDOSfHOpbp2ynN/1DFBda1HkttS"+
                                 "yAbQqQSE/HG9yRb2pE2GtTuluML8/NY2fFl1w6FThX34JoBgeL4cd/zfvvvjN3737qkdew6XVaMp"+
                                 "NKZCYVx3R6zOCLaxnzTQELKNgZsBHhZoSkB2GGTHQXkqLT4X7nxDde27Je2dxhX/9gSyATQSRN3r"+
                                 "Mat13euAOaqo4FY1gUiKRcBsdY2T6ALGEBI33GO56CM/+MXrJy9f+RyF7VxYWFYozG4/RMNgNAW5"+
                                 "NCL4OBAQQ1ALJhyoL4LmIugugvGzlOxioO115aV/vY/Dmo1r8W0lmg2gE7GUwxnQ6Ww2fWRomH7i"+
                                 "TN7gwLje4FxdDRltCbOcCsB1E+5053w793YtEsW5XKlKbbGs+KyOsEJp1SvnE+5ZCCyCXwnKUhAe"+
                                 "BPEREOQA/yBwDyXZh/z1v5FdfLauodmIQMe2o48NoBGnrq2G1SqTVu3pHZi/V9YklVotJrfd6nTY"+
                                 "11fEdEhRvfN1jGPfPJl7b3lZ5HG6TdY1udw2Py9j0AnRAANiHAipQFcHvEMgfB8E+0C0H5bfBfa7"+
                                 "kekDppKfjp97qWVwzGLxxBNPaSMinnatBrQam1rjGiOxHtQPcTjyL87tMeogQE5pev3FP7r0x3MS"+
                                 "heZPX7lcMa2CCcCHlBTCmoyOhftBeghUH4HyI5DmgPggCD4MknO4N16oPrp7nMJZc/qRhmgb1Bt4"+
                                 "Op5KOT1RhdwgV7hoNFF9C6kbPysUqjJBIwkuuyOuGQbvmOfRgZ7jLzV0EKzW+PpKyqqkx0MUSAog"+
                                 "oQd9eSZWKI6AOge0p0B3ClQ5oDwK0gNJ7n77yKFbxy9TmXzfegLZ9NuwjaJHCoKBpECs4PPNXIEB"+
                                 "30t+1LfQPzQ/RuKQZ8Q0slww3QHu9rR2UJL/n/n73rl+v5U7R0wGxyG5AFEtKKqAmwOyHNDkgP44"+
                                 "GE6B4XTmjeZYhltyIMnfvzZznUrhrrmiqW2llyfFaXCseGkLooUFxcQkd5TAmRgTzk7KqRTZHFVF"+
                                 "I7L9wlZw4MIjV/mFP+wveQ90tUltTdrQDawCYPw+owTV8Qyo6SSYT4H5j2A8maFXnwDlIRDvA83R"+
                                 "9v4Bo8UR3VbMe2Iad7sTHLZ4bJI7T1PMz0hps1IOQ8eYVzMYBgZNwRodSehqQV8WHDm5XvezcPPO"+
                                 "WO9/xQl7YPZN4O0D5WMfm86C5RTYzoDlDBhOgu5kZiWSHETZLnJOGXrQZnYn409J038SWSAYN+rt"+
                                 "szPLRCKXz9Gy6dqlJdMyx8Jj65fYhnkKnzXak1ZXgLoYGEW+7nfCfb9Njb0CjLdBdAA0JzPE1kuw"+
                                 "8mnm1XYZTJ+B8RPQnU3JzodmX1WgvvmwFc3TurfX/z6xR0zGYd0V5QrU46TlBaZGLrGLuHYB3yLh"+
                                 "WXlcq5BtpMyIOUPtkaVqkOTDYn5i+jzMfQT806A9B6YrYPgUDPlgvAHmPDBdAN05UH8MqrNxwSF1"+
                                 "07/4Gv8hPvMha6xdoTNFIslklsp+IjQyBgiFknari0blzE4tyaRWmzmkUjvlwhWJYI3HcXBZxvkZ"+
                                 "LhHfqxq4DrSLkbGPYgP7oqMH09ST8cWLwLkK8nugrQZ9JWgvgvJjkJ+MMw+B+kKE+bau7jvQ/Wyc"+
                                 "uH9hDGc2OxFuZB60dfuyuQfSEwUDoDd7ZuZYCLdc4Qx5wah2C4V2scDGX9KzWXoKRdOLpzd9fpdS"+
                                 "c1GJ2W9o2O3ofMvV+/5K335735G5BwfLPj0z338/pjoXo+/mXPt7K/4VRCQh3kF13UuR7hdh9C36"+
                                 "CFYu1fn98a1zbzJhSiTAH0iv2NxMpmhoiMxaFEoEZhHXLBQ5JHzb0qJucUE7T9UQCPzSqkfvv36o"+
                                 "4MSJyqL8+rLb92+XVt+vwbYRhgjzU7NKFbsdOIftLc9Qz/6TpX83KI8Hye9o638Z7X4xOfIhh4hR"+
                                 "KNSR4FZ1svksD+EOBZI+T0yvX5mZmqXPiwU8O49rFvHMEp6NuaBfoOuW6JbeHnJ5VS2Lr+Dy1Dyu"+
                                 "RCjUiSQmlW51zRFwepISrcnARsHCPhv254sFz9pG/gCifcGpN9WoXyX7fpUm7F0g4tSGtVAosRV/"+
                                 "bw6dkVoakCyAtDMGk53P1NCpmjmKjMc1shc1VLJobFxAnpThWwZp84xoIh0NpXw+CPjifl88GIFA"+
                                 "KBGKQjgISo1NsfwIhEfsj37LyPuJa/IAaI+FWB9qsDvD+Odg+LXF4Qq5RBUIbp4ktwb9eI9EoqBW"+
                                 "W5GqqLl5qrAIs7ioe9hJOX26JK+g8UbB7S78gEKuDwUzgSCRBGTC+lfZDpn4+BNKjUXNb4TlY86+"+
                                 "N5k3f2Gfeh/UJ4PUPVr0z4Ptz8PwbtYozmz3bdo7ZgEdDqV0SsvMDL+ktOPMmVtspqoeQzx9trSl"+
                                 "ZaqqrNZq9wYDyADpickCKTN8gaRCrVdz64F3zIF/mX3nBevQWyDc55/eo6h9EQZepGCv0nhm5M5k"+
                                 "1vzkaJIFdCiUUqptc7Pysqreq4V1PI4Jixu5VlhPJAnRjTiLzYf08JtYCryBuFJrkbO7gP6BveWX"+
                                 "89d+YMTvgoU/hCd/Z2x6WdzwHpPQopcx9VpDIBR/EniW0BorhSZ5gBq+fa9lialtbCTeudc6RhKh"+
                                 "0Si9fjUY2jwnI/72+pIqnUVDqwHSW+6GHayCnxrbXwPGH6LkPdaWV6BvFwy8zx6pVKsNCURnG1l2"+
                                 "0Dq1dY4mwTSMVVW1MRZUWPTovbJHo5PiOlSd0egKhzbz9OPvEQX5gylEJyo6Bibe9bfsXL65U4ff"+
                                 "jegkSNunxPwG2l5aa9ndS1xw++MbloHZQWs0KzSqFFM/XFPTzmObUOjB+xVdk5PCugd1Jv0qIvot"+
                                 "UWfAwedPaLR2JaMTKB94un6zfGOHsQPh/jDIes+E+bWpfGdJfadtNY0k5kyu/Ot8mR20UmWao0iw"+
                                 "GAKqrpPHNWHQpMqqXgS6trZOuzV5fLGqzL70JxCdqOi1QNnr7vot6+oLxrY9oNgf47wnrvwlqrZe"+
                                 "vmI16PVWFzIPTf6lUrKARhypV1hnZwQo7FDVg+6lZTMOR6iu7iGRBHXoOtOW5fFn7hTEgimVxqJc"+
                                 "7gFGjhv/68UrP9HU7wLTAVC8Iyt/fq34OWfFzykdd8Rild8d+0IqWUAj+0whs0wSl6tq+krLGujz"+
                                 "WnT9UHllzyhBgMlAZyOPP4ODN+Nvm5jzKMU9bH+4Y/7Ct1TYHWD5IKZ4S1HyfePlfzQWPDPXUKCW"+
                                 "qrxB5CFb5pdZQCOelipMIyRmVU3PrVvYGbIUixkqq+jpHeJh0Jhs5fGXOslwa60SJjZK/b2h/Bna"+
                                 "ue8pW15Ocl5d7/uFtOD7+svf4uS/Oj09616PJh8/nMoOWi2zkkaXMOjBeyVNM1OSxobR2rqh/mEm"+
                                 "BtdsNm01emywWTM6SSP7UkpudDbtstx9hn7hOWXpDk/Dz9aqnpPkPss+80Jz04NVqzscziT5LKAR"+
                                 "eSgVFvIEv7aur7isnjwubGwkNDSMoNA9Dx8OOVZ8ka1Hj/8FnomD/oTesCKi4ryPdplqnlv85HlN"+
                                 "zc7QwE4X9oe0j3dUPKhRG5zIs7LsoBF5INFjcnq5FjdSVtE+My2pbyaVVTdfzs9bXpaue5AZ6JZD"+
                                 "3kahEYknwSDyqNIiXajzzrxhxj7PPvPsatMumH7J/eDFZtRtqcIcDWaybhaeztQecus0iYdtGKiq"+
                                 "aCKTRfjWWXwXaYJEFUsUfk90K1Xlpnk+EUqbbW6piOgf/5iJOYotqZ7sb2V2Fw32P9TprIHHBVkW"+
                                 "0Bl5yC0INBrbf7+ieXpa2NI6jq4fGSNyuvqG7TZf/PG9+6qWROrYhNnqmWOKJmcXmDypWu+USHRS"+
                                 "md7uCCHPQ7KD/h95TCzXovqLyxsnpwVtzZMo7MDDbiquvl1rdm2l9tjKkpBJezSWdrvDq6s+lyfu"+
                                 "DUTCwVQgkAiHIfm42M7C049LUxt1SlxZ/bDoTsPUhKSrfbyi5mFpGWp4lOiw+5HJ5VM0JHMjTRNs"+
                                 "1BJkAY04UiI1E0dYpWVt14tQE6PCJtzg6T/mlZZWGUxOjy+RqYK/FssCGvG0SKRrbSXm3azN/bxm"+
                                 "nMCrbxy+ex9FJs+uOcNIifcUNuLW1pwdtExkbGgl3ijC3LqDJY5wUJiR4vuts5RFlcbm88f/P3oa"+
                                 "kYdQamxrJxbdwd68g+vpojRjB89dLi6u6urpJdhsvthTiR5bcHZ2npZLkGZ25s69xlv3GlDo/uKy"+
                                 "pqt5NVevo7CNbVqj82lFj02xs4BGekStaoUwvHjjbuvd0mY0joC8yS3C5BbWtLZ0W83OLJqATbm+"+
                                 "9IAsoBPRlMPhW2Tw75a1lJQ1tzRN3Cxp+LTwwdkL1ybH51xrwdSmje1XY/3i11lAI8HB64kqtSv4"+
                                 "7uFqTGtrJ7XodsOxM1dqqhv0Wpvfn97e49dtLCQLaKQcQv7S4/WlTCZn5m9Mg5RreZWl96sYTKHH"+
                                 "E008TrBfj2UBjQD9qb9E5hthf4InUre29srkmlj0cer6Gu2/AbBDPJHAqBQ/AAAAAElFTkSuQmCC")),0,$$.Length)))))
#endregion
#~~< SplitContainer1 >~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
$SplitContainer1 = New-Object System.Windows.Forms.SplitContainer
$SplitContainer1.Location = New-Object System.Drawing.Point(-3, 72)
$SplitContainer1.Panel1.Text = ""
$SplitContainer1.Panel2.Text = ""
$SplitContainer1.Size = New-Object System.Drawing.Size(1387, 724)
$SplitContainer1.SplitterDistance = 185
$SplitContainer1.TabIndex = 67
$SplitContainer1.Text = ""
#~~< SplitContainer1.Panel1 >~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
$SplitContainer1.Panel1.BackColor = [System.Drawing.Color]::White
#~~< Panel1 >~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
$Panel1 = New-Object System.Windows.Forms.Panel
$Panel1.BorderStyle = [System.Windows.Forms.BorderStyle]::FixedSingle
$Panel1.Dock = [System.Windows.Forms.DockStyle]::Fill
$Panel1.Location = New-Object System.Drawing.Point(0, 0)
$Panel1.Size = New-Object System.Drawing.Size(185, 724)
$Panel1.TabIndex = 1
$Panel1.Text = ""
$Panel1.BackColor = [System.Drawing.Color]::Gainsboro
#~~< LabelKMS >~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
$LabelKMS = New-Object System.Windows.Forms.Label
$LabelKMS.Location = New-Object System.Drawing.Point(11, 106)
$LabelKMS.Size = New-Object System.Drawing.Size(167, 18)
$LabelKMS.TabIndex = 65
$LabelKMS.Text = $TextStrings.KMSOptions
$LabelKMS.Cursor = [System.Windows.Forms.Cursors]::Hand
$LabelKMS.add_Click({LabelKMSClick($LabelKMS)})
#~~< lblConfig >~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
$lblConfig = New-Object System.Windows.Forms.Label
$lblConfig.Location = New-Object System.Drawing.Point(11, 66)
$lblConfig.Size = New-Object System.Drawing.Size(175, 18)
$lblConfig.TabIndex = 63
$lblConfig.Text = $TextStrings.LicenseConfig
$lblConfig.Cursor = [System.Windows.Forms.Cursors]::Hand
$lblConfig.add_Enter({LblRemoveRolesClick($lblConfig)})
$lblConfig.add_Click({lblConfigClick($lblConfig)})
#~~< lblState >~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
$lblState = New-Object System.Windows.Forms.Label
$lblState.Font = New-Object System.Drawing.Font("Tahoma", 8.25, [System.Drawing.FontStyle]::Bold, [System.Drawing.GraphicsUnit]::Point, ([System.Byte](0)))
$lblState.Location = New-Object System.Drawing.Point(11, 23)
$lblState.Size = New-Object System.Drawing.Size(167, 18)
$lblState.TabIndex = 64
$lblState.Text = $TextStrings.LicenseInfo
$lblState.Cursor = [System.Windows.Forms.Cursors]::Hand
$lblState.add_Click({lblStateClick($lblState)})
$Panel1.Controls.Add($LabelKMS)
$Panel1.Controls.Add($lblConfig)
$Panel1.Controls.Add($lblState)
$SplitContainer1.Panel1.Controls.Add($Panel1)
#~~< SplitContainer1.Panel2 >~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
#~~< PanelKMS >~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
$PanelKMS = New-Object System.Windows.Forms.Panel
$PanelKMS.BorderStyle = [System.Windows.Forms.BorderStyle]::FixedSingle
$PanelKMS.Location = New-Object System.Drawing.Point(458, 12)
$PanelKMS.Size = New-Object System.Drawing.Size(391, 344)
$PanelKMS.TabIndex = 85
$PanelKMS.Text = ""
$PanelKMS.Visible = $false
$PanelKMS.BackColor = [System.Drawing.Color]::Gainsboro
#~~< ListStatus3 >~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
$ListStatus3 = New-Object System.Windows.Forms.RichTextBox
$ListStatus3.Location = New-Object System.Drawing.Point(20, 284)
$ListStatus3.ScrollBars = [System.Windows.Forms.RichTextBoxScrollBars]::ForcedVertical
$ListStatus3.Size = New-Object System.Drawing.Size(366, 45)
$ListStatus3.TabIndex = 86
$ListStatus3.Text = ""
#~~< TxtBoxSKMS >~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
$TxtBoxSKMS = New-Object System.Windows.Forms.TextBox
$TxtBoxSKMS.Location = New-Object System.Drawing.Point(106, 247)
$TxtBoxSKMS.ReadOnly = $true
$TxtBoxSKMS.Size = New-Object System.Drawing.Size(177, 21)
$TxtBoxSKMS.TabIndex = 81
$TxtBoxSKMS.Text = $TextStrings.KMSPlaceHolder + ":1688"
#~~< ChkboxSKMS >~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
$ChkboxSKMS = New-Object System.Windows.Forms.CheckBox
$ChkboxSKMS.Location = New-Object System.Drawing.Point(99, 222)
$ChkboxSKMS.Size = New-Object System.Drawing.Size(257, 19)
$ChkboxSKMS.TabIndex = 80
$ChkboxSKMS.Text = $TextStrings.KMSDescription 
$ChkboxSKMS.UseVisualStyleBackColor = $true
$ChkboxSKMS.add_CheckedChanged({ChkboxSKMS($ChkboxSKMS)})
#~~< ChkboxCKMS >~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
$ChkboxCKMS = New-Object System.Windows.Forms.CheckBox
$ChkboxCKMS.Location = New-Object System.Drawing.Point(99, 197)
$ChkboxCKMS.Size = New-Object System.Drawing.Size(184, 19)
$ChkboxCKMS.TabIndex = 79
$ChkboxCKMS.Text = $TextStrings.KMSClear
$ChkboxCKMS.UseVisualStyleBackColor = $true
#~~< PictureBox5 >~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
$PictureBox5 = New-Object System.Windows.Forms.PictureBox
$PictureBox5.BackgroundImageLayout = [System.Windows.Forms.ImageLayout]::Center
$PictureBox5.Location = New-Object System.Drawing.Point(106, 11)
$PictureBox5.Size = New-Object System.Drawing.Size(177, 168)
$PictureBox5.TabIndex = 78
$PictureBox5.TabStop = $false
$PictureBox5.Text = ""
#region PictureBox5.BackgroundImage = ([System.Drawing.Image](...)
$PictureBox5.BackgroundImage = ([System.Drawing.Image]([System.Drawing.Image]::FromStream((New-Object System.IO.MemoryStream(($$ = [System.Convert]::FromBase64String(
"iVBORw0KGgoAAAANSUhEUgAAAIsAAAClCAIAAADj3ZnuAAAAAXNSR0IArs4c6QAAAARnQU1BAACx"+
                                 "jwv8YQUAAAAgY0hSTQAAeiYAAICEAAD6AAAAgOgAAHUwAADqYAAAOpgAABdwnLpRPAAAAAlwSFlz"+
                                 "AAAOxAAADsQBlSsOGwAARb9JREFUeF7tnQdYVFe3hg/YRaOOpqgxiSX2boy9F+wae+8Ne+9dsYCg"+
                                 "YC+Aoggi2JEqqPQ69N67FMGKhTn7fvvsmcMwYGKuJoE/4dmPz39zE4V5Xd/61lq7qMXGxnL/fZXl"+
                                 "TwCE/vsqy58AV5a/uf++N6pw/30KZfwT+I9QGQf0XwyVdUD/EfqPUJn/BMr6N/hfHvqPUFn/BMr6"+
                                 "9/dfDP1HqKx/AmX9+/svhv4j9OU+gaiYWH9pYGBQSFx84pf7Xcv671Q+YigsPNLU7PqQocM6duzc"+
                                 "+Zeus2bPd3J+FBeXUNY/3S/x/ZV1QlHRsbfu2IwYObpKlSriiEBNTa1Bw4bbd+4NCgmPjY37Ep9D"+
                                 "2f09yi6hmJgY50eus+fMq1W7dqnjm4oVK3bo2PmquWUUMP7vfpVFQjGxsT6+0s3bdtZv0OAPR2vV"+
                                 "NTSmTJv52NUjNi7+fxJTmSMUHhmjf/xEy1atK1SooIKndq0aw4b+2rN7m8qVKyn/vyB63zf64eBh"+
                                 "3ZDQ8Lj/OU5liBC0yuTy1W7de1auXJRyGInq1av06tl2x9ZZxue2nzmxccmi0T/9+B3AKHOqVKlS"+
                                 "9569rW/di/nfglQmCEXHxN174DBy9Niq1aqpxE3VKpU7dmi2bvXkC2e22Nuc8XI1d3905aal7hHt"+
                                 "pePG9EJUqcZZ7doLFi119/BGGvvfEL1/mlBcnKe336IlWnUkEpXPukIF9WZNGi6aP+rk8XX3bh73"+
                                 "fGLm427h63FdWJYuDkaXL+7atH5al87NK1Yspofq6urNfm5+3PB0ZNT/AqN/jBD+hvsHBO7Ytbd+"+
                                 "/QYqegX1atCg3pRJA/R1VlhZ6CBofNzlYMAGy8/zBpaPu6XNnZPgN3vm0O8bfl1c8zi48yHDht+6"+
                                 "axMdXb6D6Z8hFBIWcfLM+dZt2qmwQRhJJF+NGdlTe9+i61cPPnl4SUBCg0YEQ/F4WWH5e1kHeN/y"+
                                 "eGJuZa6jvXfhoAGda9ZQFck6dSSr1m7w9vErv9H0dxOCHbh23br/wEFI7CqyVq1alb692+/YMsvU"+
                                 "aPdD+4tC3JQOxt/7JhbwYEl9bmO5OJrARKxZObFlix9UTCBEr2279mfOGZXTqunvIwSxsbG1nzBx"+
                                 "SvXq1VXYVKpUEXZgPbUDW+3vn/F2t0CgKOFBxFhj+XvdxGJgRDZSnztYgb53/b1v2dw+dezoqqmT"+
                                 "BnzztWqRC9EbM268rcPDmPLWg/g7CKFGcfPwXrZi9ddff6PCBkn+52YNly4ag3Ric/uEtxtlU2wJ"+
                                 "alYyaBA3gb4AQ9nQ5XcvyO9esL+Nl6ulxdVDe3bM69WjbbWqqq792+++275rX0BgcDkSvb+YUFyc"+
                                 "NChkx659jZs0VVNTV8ajrqZW/zvJtMmD9HSW37LU83hs5iuyUaQZxkYpXKigKVNhYOjyvw88WCEB"+
                                 "D4L9H7g4XDp/egvKpqZNGkDliv256updfvn1kqlZdDkJpr+QELoDp86cL9kdgOmqV6/WyOHdDx9Y"+
                                 "Yn5F283FVMHmd9RMLmXyiJEHzf0gPzkYUAkJsKVLahsaaIcV6Hf/7s0T+jorx47uXadOzRI5r9q0"+
                                 "mbPRKyr7VdNfQyguwdL61qDBQ5Ub0uwzqlmz+oB+HXdtm2NqvBvp3c+TujLRm31czeRSVmrQIG7A"+
                                 "JlRqR1egXViQvbAcwoIdvdysr5rs37F1dvdf21SpoupNGv3w45592hg4lWXR+8KE8FcSk5up02dq"+
                                 "aKhW+2imdencAt2Bi2e3Odic8/WgppnqmFKaYcaMraI0oyRlymrGgqZUMGATHuzEVliQ00O7S6cN"+
                                 "NyLb/dDoG3X1Yr0iGL/uPXrduHkHfY2yyemLEUJZ6Onlu3b9JpQgJbsDMMHLl447c2LD/dsnUGmK"+
                                 "YIq7MtXkL48YpRzDwkUORlAz5YhRBhMR8hArMsSZrtBHIQEONy2Po1c0BqJX+yuV71BDQ2PegkWu"+
                                 "7p5lcNr0ZQhhkobWMnotKj85Uk6jRt/MnD4Y3YHbVsfQVaM69nHHLBozgY2YZopyjJhmQgMVUhbk"+
                                 "GIalCJqIYIBxxooMccGKCn0EPPg1KuwxlpfbTVPjfds2z0I0qzTI8Z3DzugdOxEWUbamTZ9NKD7h"+
                                 "itl1uCOVOhFs6tSuOW5070P7F1teO+zmcpXlGBVvpuKYxaBRUTNRyooFjZBpRDUrCppQl8hQykYE"+
                                 "AzbR4U+E5RoZ8siJit6GhfNG/dDoOxWnhzp60BDNuzZ2ZcdBfC6hS6bXSs5Aa9SoNrB/57275pka"+
                                 "73308LIYNKXmGOXkz8AIUlZMzYqkTKDyB2CEcGFLBBMT4YYVG+lOV5RHsNTBykIPojd6RO9atVSd"+
                                 "Xq1atVasXOMbEFQWRO+zCAWFhCF6lJWtatXKv3RpsWHtFKNz25zsjNAIKLX+VyozizlmuWmWFplm"+
                                 "Qc0chEXBFFMzQdCYmsmlTK5mT6LCaLhgMTAxke5YjA1WXJRnfLRXXJSXxxNr4/O7tmyc2aF985JT"+
                                 "wVat254+eyE84h/ukH8WoSfuvhhCi4QaN/5+hdYECMiDu6f9PK2VjZlKpVmyzPz/WoBS1ayIjRg0"+
                                 "AhiPOICJ9oqP9k6IwfJJjPWLDne3u29kqL920YKxDRt8W3IqiKmVrb3TPyh6n0Xonq1T1apVGSHk"+
                                 "oTWr5iMVe7tZil2Ako0ZlfpfxTH/vjdTGLOPpZniYOThwsB4KsD4AAxdsb7C8kuM88cKljpfN9PV"+
                                 "3rd4xPBeX32lWidgdrVpy7aAwH+mbPpihGANRo4clJ2VkpUZD1ECpBLtmY/W/5CyYmr2EW9WZMwU"+
                                 "3qyYmolSJqgZpIypmbC8hbgBG1+6FGAS4wKS4rGkyQmB+Icerjcvnt2xYe30tm2alZwKduzUxcjE"+
                                 "NDr2796v8sUIIYbGjh/sabOaz3v89k1uSlJIcIAt8g0LGhULUEqZ+fkWoChoWMQUqZlS3PgxPAIY"+
                                 "yobhSRFWamJwTISX7b2LBnpr5swc2bDBNyqiV6Vq1YmTpz5x8/o7HcQXI4S/dGN+G+JpPZ4Pnccn"+
                                 "6Mpehr96mYOPQ2hlMntWWv1f3DHDOpdimksYM9ECKCV/JmUsaFi4FFMzFTCgIoJJSQwCG7qSQrDS"+
                                 "kkKD/J2umR4+fGDZ0MHdNaoXnwqqqX33Xf2du/cFBYfGxv0dbYgvTmgcHzKLQopYw6eaFL5OysvL"+
                                 "jIlwV3QBRDWTl5nMm9Eys3il+Xve7KNqJkqZoGax8nARMk2AIGjSZLZoxATRlRiMlZpIqQgrLC05"+
                                 "LD05PCM1Ijkh6LHz9bMnN69fO71d2+Yq1V6FChW79+x13epWzF8vel+akNVIPngqHzKbD13Ehy3j"+
                                 "o7bxT20+FGTnZCXiQ5cnG6UykwXN/9cCyPN/qUHDLECpalYyaNIpGMomPYXiYetpenRstO+dm2eO"+
                                 "6a6eM2v0t9/UUxG9GjVqTp0+y93L5y91el+WkKbn9XZ80Hg+eDofMo8PW8pHrOQjNvDxOnyex9s3"+
                                 "z9JTIyNDnVHZCBFTBEal/ldUmnJvVsIxMzVTjhjmzYqCRgTzMTVjQSOCyUiRUwGYzLRIYUVlpkc/"+
                                 "TY/JTIsO9H942Wjf/j1LNIf2qlZN7l2ZgwWzH39qrH1IJzQ84i9KTl+W0DAv87q8tCsfNIUPhtYt"+
                                 "4MOXUbmL3MRH7yIpF2Qvo16/yoXaCJWms0rTDMasdG+mKDMV3uxjaiaXsk9RMxouQsQoBY1Aha5o"+
                                 "utJjnqbHYmVlxGU/jU9NDndxMj9lsGHj+tmtWjZV6RVVrly5d5/+d+7Z/hXB9KUJmUl4Hw1eOowP"+
                                 "gtbN4cMW8+Er+Ij1fORWCin2IJ9xQ/Ym9Xl+ZkKMH3SP5hul3szHLYDozUovaJSN2e9YAHnQQMo+"+
                                 "EjQsbujKoGwonsx4EMp+mpCbnRQXHWBtaah3ZNWcWWO/+bquiuihV7RwiZaPn/TL7kz+0oSuSogX"+
                                 "x/s25oMm8sEzqGWgWreaj9zIR+0gMXsAiSQY8rkuQnLCz+zN4ka5aaao/8UyU8WbqahZMceMHKOc"+
                                 "ZlTVTJFjiqRMUDM5mIzYkmCQQXPZyk56lp2c/TTRz9ve+PzuQwdWDBrYQ2VEqaaujpmywYkzX7BX"+
                                 "9KUJXZEQD473UucDelKto75uAR+2XNC6zXz0ThK7j8QdJvF6JOUS/yLoXUFeRnoMkNC+2UfVTF5m"+
                                 "Fq80BTCCMZN7M4UxU/ZmJdQsMiOVqZlcypTVLCszDotFTA5WViL+DuViZSdjPctOwcrLSc3PTUtP"+
                                 "iXawvXLSYMPaVbNatmimEkzoswwbPuqBnWNc/Bc4g/alCZlKiDtHIXnX5KUj+OBpfMhcPlShdbB2"+
                                 "MbtJrDaJ0yEJx0niST79Bv8mHskpLSWMNs2ilOt/saD5XQsgBo2imimyAKWomZBplKSs1KAR4kYE"+
                                 "k/wsJwULbBgerOfPMl7kP42NCrC4qntMd+28uRPr1aurMhurV+/rdRu3SINCP3N0+6UJXZYQN45C"+
                                 "8uR4v5/5wAmC1s2nWhe+ilqGqO1U6+IOkvijkDuSdIakGPPZD2UF6S+eZ6FsjI/xjpf3zUqv/+Vp"+
                                 "pgSYYo5ZNc2oginKMYo0o1CzUsAwKvnP0rHAhq68zOd5T1/kZ+XlZnh72l44s2Pfbq2B/XupiB6q"+
                                 "qP4DBvlJP2vz1xclNH6Y1yUJecxRSFTrKvLS3oJlgNYtFLRurVzrYvYLWqePMCLJ50mKCUm7zuf5"+
                                 "fHj7LDcnjXXJWKWpbMyUK01ImULN5GWmijFTqJkgaDDNgjdjYBRSFk+l7CmkTKFmQtyIapaXm4aV"+
                                 "nwswGVjPn2XSlfeUrvysF8+zhZXz8kVuRnq8zV2jE8fWr1szr1mzxsrBBAFctnzV54TRlyZkIiGP"+
                                 "OPJEEUY+tfjAUQqtW8KHozxaT8vYaFHrDEjSaZJ8kaSYkrRrJNOGvAx/V5CfnZWEqj4pLkDZmH3E"+
                                 "AhQrM3/fAlBjRoMGOYamGcECgAoDIyxlNRODhkaMnA3ihq7n2S9fgA3Fg/X6Vd7rV/kxkf7XrhzR"+
                                 "1103a+b4Bg2+Ezl9/c03ZYmQkYQ4cxSSq6h1LeW+LgRapyX4OpRH8HX7SOwhqnWJJ0jSWWgdSb2C"+
                                 "SCIZt/mcx/yblDev85Ek0JtRaZrJ00yxUqZYmVkyzZQAI8//IpXfByNSUQHz6uUzgU3em1f5Ba+f"+
                                 "F7x+8Twvy9P9vrOjhc7hreKmomrVqpUlQhcl5CFHIUHrBEi8d2Ve2k+oYYVWUDjTui20PKJad4Qk"+
                                 "HCOJpwStu0RSr5F0K5J5lzy1J3n+src5r17kQKbkgqZozHxKmcnUDKMQeDNRzWjEKHkzlvyL1EwQ"+
                                 "tCI1y89SUTOEC6gIK+811qv8NxQMZfP2zcu3BS/fvX31/t2b2Gi/VcunigavjBG6ICFOHIXkImgd"+
                                 "S0g+Ej5wDB8k+LqwIq0TyiNtEq9LEpjWGZFUaJ05ybhJMu+Tpw4k+zF5Gfnh3fMXeU/hwdJTwsSm"+
                                 "mXJvpvQyU1AzQdAEKZPnGLmUsaD5mAVgLoBlGlHNGBsxaFjcvH0DNi8om4JX796+fv++IC0l6pbl"+
                                 "0eVLxpdVQuclxIEjjsXCiPo6/zZ84GQ+eKbg6xRaF7WDh9bFwzIoh5EZSbeE1pGnD0iWE8l+Qp75"+
                                 "8a9T3r19kfcsDfk/Q9E0+90ys3Qwyo65uDFTSjNFYGiOUQKTr1AzJTBvKZh37968f1dQ+P5tbk7q"+
                                 "vZuGFlf2L186sawSOich9hyFhEhCGIm+zrsKLx0g+Dpo3UKF1qEVtJvEHRKE7iRJOk+STeRhlG4t"+
                                 "aJ0dyXIhOW7kmQ95Eca/zSkoeJGbnQLdE3ozgjcrpcwsChrmzUQ1o8ZM2ZspjNlH1CyPqhmkTK5m"+
                                 "L0Q1e1vw6q3ABmA+YL1/W1j4Pjs7+f6dU+am+65fPVCGCZ2REFuOQmJhJPo6qnVfU61jNSz6dWh7"+
                                 "oxUUvYuPPcwnGvBU5S5QQtTUIYxgGQSty4LWPSK5HkhLJD+YvE6UvX/x+nV+ztMk5aaZwpv9gZop"+
                                 "VTPyguZ31IyCkVsAFjRCpmFqJgQNBfPhHdgUFn7IzUm5baXP8JR5QjYcsVOEUTFfp877t1fydcv4"+
                                 "yA18zF4+Xo9PPM0nX+CTjalZSLlCUs1ImgVJvyFonS3VuhxXkutN8qXkRSh5GcO/fVr4/jUkCHZZ"+
                                 "Uf9/xDELlaZymSnPMcXSTOlqJs8xCgsgqhkF8/4dYyOTFQIP4tjHwxLixvCUbUKnJOQ+R1QgFWld"+
                                 "TT5gsJCQoHWLaQzFavOJhnziGT7pAo/mAgIIeODoUs1JmiX1dRl3SSYgOQta50vyg8iLCPIylrxJ"+
                                 "5d8///D+DToRxcpMwZt9TM3EMpNVmoo0ozBmoprJI+YV1EwpYpSCRlYINjJe9v7926QEKY6keTy5"+
                                 "KuIp84TuchSSqHWir6OtoEq8bwdeOk4WCK1bQGMo/pAgcaf4pDNCGJnwqVf4NHM+1YKkXidpN0g6"+
                                 "tO4eybIn2UhI0Do/8jyYvIgirxPImzTy7hlfWPDu3WvagFHyZh9TM+UyU7QAqmpWADUT8v9bSJmS"+
                                 "mtGg+UDByGQ8z+NX/G6RYY9wmhNHbj1dzcoJoRMScocjDJKodcwy0PJInfduwvsPkUnHy4Ln8BHr"+
                                 "aAwl6COMaEkESEnn+eRLfOpVHiqHGJKH0S1FQnpMcj1pQnpOtY68TiIFmeRdHiDhg0OeQDeTFjQf"+
                                 "r/+VHTOzAMqOmRU0MGZYH94XSzMyGdhQMDyhv3x4/w6uEjtksA1duDegvBCaMMzLUEJucRTSPY48"+
                                 "ECCJlgGE3Djeoy7v3Y33G44wkoWtgJfj5UUrIJ1EMKG/gIQkRBIgIYasCHwdTUg2gmtAQvKiCel5"+
                                 "OHkVR96kkLfZ5P0LUvgOf60LoXqvX7zIRx3DqpkcpmZFZaZS8ocxKyihZsyYfWD5X/ahUJAyykTx"+
                                 "hTDKe5aBgRZ2meGEc4DPLRxSY4RuXNPGsrhSlvMQCBlIyE2OQhK1Ds5b9AsoYN0qEc+feZ8+Mmhd"+
                                 "8EIZhkYxB/i4o3zCcT4JkE4ItlvwdXANadd41EYglH5LAcmJ5KJC8hESUiR5lUAK0sm7HPLhFeEL"+
                                 "8RdcyA3vwOnli2eUzYtiZaZQ/yuqGWoBmJpRb0bBKHkzlmZY0BDhC5YApNHJDQ1ywP5yHJ7BbkBG"+
                                 "iN6R4miyaP6EqZOHm13aU4bzEAgdlxArjkK6rQgjOG+xCUQJcbzbV7xne5nvEFngDFn4KhmtWw9S"+
                                 "R0cnRgaEKh6NJ9qsSzaC4tFmHY0kaN0doYx9SHLdlLQumWkdKXyLKGIqhM/33buCN2+es56mEpgi"+
                                 "x6wAo6JmcjCMCr7wuyGSXr7ITk0OjQx7jBN92LGEzWVFhLysnGyNpk8b26xZs44d2p04tsHSrMzW"+
                                 "QyB0TEIsOTkkaB3LRqheWWEkECJu6rxHfZl3d5n/2MKghbLw9TJoHaoiARKfYADvIEBCPEH0UMYi"+
                                 "mMwFX4dIQhlrS7IBCa5BoXWvoXU55P1LIntPo4h+qsgaMMIIp4ICxMprCkaIGLk3Y2lGrmaCoBVp"+
                                 "mRA0TNVg1eDOUxJDYiM9MK2PCHUJD36IozKMkNT3jtT39vVrx4cM7gs8zZr9/EuXjhdObyvbhPQl"+
                                 "5DpHbnDEWtA6lo2QilibTkhF+JV3q8Z7Npf5DCiUTpGFLJNFbpHF7OPjBEjxxxTBpOBEg8mYziYo"+
                                 "pNuCtbMjOY/IM1RIQeRlNHmVSAoyyLtc8uE1kX2gn678EwalD8gcaJcpl5kUjKLSpCQFC1AsaAqR"+
                                 "z56j0sIWVIwTMfkFIXo6LPSRMqEA79u6Ols7depA4QhfELqyXQ8hho5KiDlXBImFEYQOnpvZOWHx"+
                                 "bmq8ex2ZV0eZ7whZ4BxZ6GpZJLRuP1yDEEnHaB9ILnrghPHEGQqJdb4z7sitHcpYar7h62LJa2jd"+
                                 "U/I+H1qHMEIMiIyQTmhZCVSKNMOMGUszopRRo1H4Ad4hPy8D0wrMODCaSsIUMdYPe/NUCIVKbV0c"+
                                 "zBbNn9aiRXPGpkXz5ovmjze7tPf6VVq3ltWuDwjpSogZRyw4udYxy4Awgl8QPbcQRsS1Iu/xvcy7"+
                                 "h8x/gix4MdW6qJ2yGG0B0lE+Xl/OKfG4gAqix5rfaAjB2gGS0FeF1tFGQwR5FS+UR4JlKKRapxAq"+
                                 "Qa1YpCjKTCVrhn/4AYpXUPDy5fNs9L+zM+PQRMdeLczUMTDEJq+ShHBi4JTh/l49uzUVQge/tG3b"+
                                 "Rnv/WqGnIG8rlGFCOhJyhSsGiVkGFLBiNiqKJA3es6XMd3ChdIYsdAV8nSxqD3UNsTp8HOROH4qn"+
                                 "CCZwEmqmIkjCDAktO/i65yFU6xTlEfnwhmodTSei3BVBkQcNyLx/i8wEKwE2qKIwjxAIxWMzcGZq"+
                                 "ZElCMRFU5e5YG02b8htCR1C25k2aNB3Qv5ep8WEvt2vloWJFDB2REFOOXOWKtA6+DlqHPpBo6lhC"+
                                 "YmHkVk/m/Qu1DMELhDDaQRNS7CE+lkWSnkBIX84JYyR5JME4sDIWLTv4ugDygpVHqWJ5JNc6Ue4E"+
                                 "RgwbNQIytNbeQNNev4Ipz0aRi5bExwjhGAV2Jj9xubly+QKEC6iw0AGnObMn2tsYoWgtJz0FEDos"+
                                 "IZc5OaRStU503iwhuVbhPRpTy4ACFmEUgdnrblohwdrFIZKo3CkIsXhikGAc0PyG+YavcyHPUMOi"+
                                 "PIoSLAPKo2eiZWAJSZ6T2P9isfVphJITpNgR/tD+xqYNKzt2bD9mtOa8ORMnTtBs06ZVjx6/Gh7b"+
                                 "5etpLVas5SSGDkqICUchQeuuKRISfB3rMpTQOv6JGu9aR+bZudB/rCx4kRBGuzDWk4cRIAmRhM6Q"+
                                 "gEdYNCdhD9dlYV6OUawjyaFTPvI8jLyKEboMWeT98yLLQKlQUGJmEtz4H8RQVnpkVJjX7ZumCxfM"+
                                 "7typY8eOHYzOG3g8tn7ifMn8yv5d2xY8tL+CtoJyT6GcENKWEGOOQiqpdbAMJbXuEcc/0uDdkI00"+
                                 "aQEbtkowdSCEbIQwOsLH6SrJHVM8GAe4u3OCa4DWIYycBcsQiJG5IoyY85ZbBnnuEUJJHlJIQyVU"+
                                 "DhtLsKMhLTnc38flyKG9o0YOQ6pp2rRpixYtLMwvo5vg73XP2cHomum+Y7or2KV25ZDQAQm5wFFI"+
                                 "l4Qwgq+D+WY1rNhlEH0d/DdEz6kSedxY5t1X5v+bLGShLGITHRqho4ryiBKC1lFIdHMdxaPISXSj"+
                                 "HdO6e3RHQ85jkuer6KgijJjzLiCyQnkIKcUQBYUiqRgh7IOIc3F6YHhcZ/q0ya1btxIyDbVqjRs3"+
                                 "XrlqZW52Wly0LyNkdnkvzruXW0L7JeQ8Ry4KYVRS65R9Hcw3Gg2okxzUifO3vEdXmDqZdKosdJUs"+
                                 "emdRKsLZI7pYJCnnJCQkaJ2poHWsFcSct9Cse8OadegyvPtDQjjN6eP1ZOyY0R06tAcPBA3ANG/e"+
                                 "vGnTZj/91Lhr118ePHiA6QYj9NDu4vVrh29bnQj0vaccQ/BycNtlfsYKp7BPQs5xNIyMhDAStE52"+
                                 "jXuHnIRGg7KvY3MjtBtotVSDf9Kc9+om8xsmC5orhBEVOuzV4uOxKCHsrFMkJDGMTtAGK2Z91DII"+
                                 "G4PQZaDOG4MJVsCiWQfnLYSR3MjJkxFqIzGGCt48XzB/LgPDQgds2rRpM2rU8BMGhz3d7d4WvM7P"+
                                 "wy5tHz/Pu+6PLdJSoyNDHyMJKXdOb1gc1Vo6yuTC9jLfU9grIWc4ERJ/mUsz5DaMqTKqb1Pz1dw7"+
                                 "uDvlGhYVErp2aDo8qECcvyburXivrrzfSKEPtIOPPYCdw0IBq0PoEgjRMBL9N8LolNACv0E3q9Iw"+
                                 "cif5/kIBC+edRp33B2YZmNbJCyRq5ZTyUMGb/A3r14AQ2LRp3XrC+HG7dmx2sLVOig+kFWucH9o/"+
                                 "aO5lpselJoU9z0ebLig4oKi3jfn32VPbZswYYHBsk5XFETYLL8MV624JOcWRsxy07v157sRMbtqY"+
                                 "Ho+cH2Bn8zH9PTMH1wk5rkhIbAgL7wAHAZtnV4V/3IB3b4HpkQzNuvB1fDQ9bMQICZAgdNTUCb0G"+
                                 "0dpho905uvOEDpBYNlI0617DeWeS96LzlilnIjpKUuQhbJqMCAvYu2fHmZPHfLxdEuKCstKjM1LC"+
                                 "WU8Bbjs+2gcNOmxGQBmL7hyu5WCd02D/e48fXtmxfd7s2YP375nv4+Vgb3OhzBPaJSEnOXKahlHk"+
                                 "fq5R/XqbN66OiwnMzUl6lhsfEfJk3qyxe6ZXzrrK8WADfQMe+ahCnXeswbvW590xPeorC5oni8Do"+
                                 "CO3UQ0zoisJIDknRbkhilsGyKIzoEBbOmxWwcN755INoGeSYBJVD27uoYn2Zn5mfm/KRnoIXjrPj"+
                                 "rGBEiAumD6y3LfW5a2Z6ZNHiMQaGu47qrDt6WMvXx8nhwcWyTWjiMC8QOsFRSGe4yL3c9i0b7Oxt"+
                                 "Ro8aeurEwayMsJynkTlPIx45W0wZ3fnCSq6Azfpg87Bucfy9SvzDmrzrN7xHCx4JCVpHR0fQOhES"+
                                 "zUYIINr8LiqPhDCC86ZhhJ43aiPlMBIsA4aw1DIUsoaCQuWKEfqdnkKJzqmDk93lzZtnb9220NfH"+
                                 "Pijosf7RDeWH0A4JMeCIIQeti9zDbduy7vmL7KyslKO6B4YP6+9ody0rMyQzIyA1wd1Qf/v4vhKf"+
                                 "wxyPaYUwsOCtK8geVOGdBUiebXnpRFnYOh4FLHXeh2C+6bkwuoWYCp0wSVIKI5xvybghTMqxK0jY"+
                                 "XCfvAyULzhta91KsYdmITyWGPoUQWnPeHpg4rFu+YuIVU73oSI+UpKBA6SM9XcTQ0nISQ9slBJkG"+
                                 "kE5wkbu5bZvXPM/D1g66YiKDliyau2zJ9ADvOxnJXmmJHmGBtssWTdg4tkrSCY63ACo1mXVl2YOq"+
                                 "vAvk7jve+1e5r4veoyiPsH+YWQZAMiiKJEz8koUwwjbVLLQYXAVTFywUsGwvw1OhFfRKqGGpr/t0"+
                                 "QjjJhBjC9U0BvrZnTu9eqjXOwGCLr9fdKNxWh38e42tpee6o7hadQ6t8vB3Lg8ptkxB9jkIy5OL3"+
                                 "cCuXzsGGwrxcYeWkP8tOf/L4wdgxQ/bsWBEX6Zwc55oY8/ihvdHUsb8en6325jIgVZTdrCqzq8o/"+
                                 "qsG7NeJ9h/AhWvQcOTXfOFsJQlhM6+g0VqF1xwm2oNAwsqLDPdhuutsE7dQwYb6H8ggJCZDyhEYD"+
                                 "9XV/2PUp6m3H+fv72Bkc3758xYQD+7Uc7U2kfjYhgY6RYU/8fOyvmB63uXsO3bmHDhaJiTG2986W"+
                                 "+Ty0VUKOchSSAVdoyE3tXjM+JjQnK02xUp/lJmY/jTp/Vndg/25XL+skRLvExzjERtzHVQVjetZ9"+
                                 "uF1NZl5JdquqzL4a//gr3qMV7z+RD1uDc+R0vsfkToD0Nkon1GGLz511WQEHhJksaqPzdFgOoaM7"+
                                 "69yF7Y+BVOvoYAKQUkiB4BrQaPgEQk/TIhPjpc4Pbxw6tHbx4tGHDi7DkwV4BcTHw1qKC1gD7O/f"+
                                 "u3z5kp7bIwtc3YFDTq9e5vp628Bnl3lCWyRElyN6HDlGw8hzPbdxvdazZ0m5uQlgI6yEZzmxz7Kj"+
                                 "MRnbvFFr+tThjg/OxkfZxEXeCva/unntpOXDq0cdr1x4uyrvWI13rYcKSRY0Gx1VusOb7go6mO23"+
                                 "a//6YQvnjN2za432vrUrtaYtm90v0+8gJUSF7h5t02EkgTDCBBY9b/g6eSQJFRJcA3YFldY5RV8O"+
                                 "24xTk8NCg1xNjHRXrJi8aNGIY3qr7946jpdCHjldcn9s7u1h/dDR7JKJ3v07Rri3A0PYZznJ2NoY"+
                                 "GuSIhoK4Mbis1kPwcpsk5AhHIQlaJzPk5vX9KiLM41luXNESCMHXZWeGeXnemTRBc9mS8YF+V2PC"+
                                 "b0QHmzvd0Zsyuuv+aZXyr8M1VOfdvqfdoJAlOABbGLXLxmjWzz/V7dSxlYH+vvhY94wU75R4N7v7"+
                                 "F8YO75Luf0w4ZwlCD2lhxCCxSGKQaIUkzCZkH/gSndNnOan+vi6mpgabNy9AfbNMa9TeXXNOGqy9"+
                                 "e1Pf9t5JR9vzj5xM7B8YX71y7Lr5KamvHdhkZybAr6OeRXOhnOwKZoQOcxQS07rjnNd6bvsmLSBR"+
                                 "XrlZUSCUlRn2NCMwI9XX4urxfn06nzq2Jjr4WrjPlWB3k3PHVw/v8fX9fZUK4Ro8mvP+v70NXLZs"+
                                 "RudlC0bfurrfzlpHT3ux5pAe8BoglBDz0MXh/KQxPd4kIIaE4xLoL1Cte0KbdYCUh+kR5A7bGbBN"+
                                 "9Sn8QklCOVnJs2drrlg+Zs/O2Ue0F+sdWQYDfcpg3R1rPRC6ZWVwyeSI2RUDb4/7yfEBYIMzeDjH"+
                                 "ieEe7nL1disve05BaIOEHOQoJB251hUe55YOltjcvYJKSKiH5Cs7M4ISypQ+TfPLTPGGZdi/e/VI"+
                                 "ze4WxrtAKNjjgu+jk1vWjJ83spbUuFahV5cdi9oand4U7n0lxONSsLtxsOeF+9f3D+r/i4/Hzfjo"+
                                 "h9BJS3PtdUtHy9jslZ6YYJyEjcSYHuFkC22qCtsZZO9KqhwIzZmrqXt4KdgISwuEDI+tMb2kfeH8"+
                                 "ASvLs35etqlJwVBCgMH4HOfLQqR29NkdxZ7T8jAfYoS0OXKoWBjlHOZ2DK8wb+booICH2Znh4srK"+
                                 "DM3MDGSE0pM8USQFeN2eOW3U9IkDnO/rSN3PSh8bOtzcNXVcl0Vjvlo6b2ik1CzM21QkFOh+9va1"+
                                 "XZqDu0WEPACh2AjrlUvHOVnukO+so5xwQAyKh0hCTgoQZhPYkp9IZHTvo8p8iBHSObQUYHQPax05"+
                                 "tOLI4bXnzuy/f/dSaKALtv6gYMIWLWy3x8lL9BdwCbXKruByQmidhOzn5JAQRtA6WAYDjj/BhWzn"+
                                 "pvepffjQpvQ0/6eZQWxlZshjiBFi/tv6uuHggb/s3jw94NHxgMdHfR8eHj+yyy2LAyUJBbiePqW7"+
                                 "dM2q6QIhK6mH8aghnd4nYSSBbarCoQlAYsaBbiRm1i4Odq5UQrPnaGrv10JBeurknhuWp7zc70ZH"+
                                 "uGWkhqNUwLb9goJXOAaDDQvYc6qyK7j87KxHDK2WkL0cOcDJtY75OqE8Qiuo8BTnsJqb2K/RZRPd"+
                                 "DIROuj/W0zRfMYYYIVjwmAjb43obB/Rpd0Jnvof9gf6928JERAaoxhAIIc5mTe5rbqodE2EVKb22"+
                                 "e/PsWxdXEraXWOUUH52UCydbPkJo4aIxN2+ccHt0Hc23pDi/rPSYl89z6H6gl3mZ6VG4Oy082Fl4"+
                                 "6qP4ruDypHKThnmtlJBdXFEYKVkG2q9D2/s090qfOzZBbdrYXm4uFk9TfbBKEoqPcYyPxkW2FsuX"+
                                 "TOjaqcnurXNjQiwQQ8p5CCrHCLk+ODCgb/vIkOv4FzwcTi2c1gfnkIQZOTuxjFYQtgQxrUM3KAxD"+
                                 "o5IxlP00efXqqaFSR2xkxM4sCBq2fec9S8e9mrjAi3ZOw59gNxYcdniwQ7F92+WM0HIJ2c6R3QpI"+
                                 "SpZB3q8DJ0OON+QS93Ja/apuXT83NsIZEocmkKhyQhnrGB9lGx95Py7qtv0Dg0AfU0ZIJQ8xQtIn"+
                                 "+tvWjjuuuypKahbiYbJkrmaKtw7dakI3EmN0JJxYLtK6YFL4uiSh3KzkWzeNnqZFwwjgcEsWLttI"+
                                 "CqbThxhMH7Dn1B33qznZm188p3Ph7CFX5+shATbYt13e9ikghrQkZAtHdnByrWOWgZVHSEhYrGuH"+
                                 "zCQkJ9/N3PAePwBJcULOyoRiIqxjwixLEgryOCcQOgFCng6Hhg7qHBFwFT7C6OQ6w72TeflNNNhZ"+
                                 "p3JiOQANulIrVmH6EAdI2HMKa6C059QrOtxt08ZlDRt+p1FHo0YdjZYtmxqfP1wO9/qA0BIJ2ciR"+
                                 "bZxc60TnzRISODFUwINIQsP0DHd5Hmegtx1lDZYiD30SIVHlQAiGYtGcQfetDoOQt7PhpFFdChPo"+
                                 "rVs0IdFj5YrbGehswgd97j/RlxM6p7t2rK1Ru0bPKT2XGCxZcWpF6x6tOnVo7epsXg5jaJGErOfI"+
                                 "ZiGM9igsgxhJsHaM03EBzymOP6v26qTahAHNoHVJsU+wmFMoiqHI2yyGqFP4qMrp+T/SvXR6+col"+
                                 "40AIsTVlXK90X6EPRGfkSEjsJhpB61DD/hlC6B042Vl+8229rpO7rr+2/ozLKQtfs80XNtX4SsPs"+
                                 "sl6Az+1yVQ8hhhZIyBqObODIVo7fxfHwdfsETsqQ9DleiRB/Xs1krtoV4yMJ0Y/ARlhKMaQgJFc5"+
                                 "L7EeOq8UQ5SQm+3+Pt1bBbkZ45/ra8+/pDdD2J2KrSbiTTTCOUuE0YcXnx5DKYlSbAau9UPt8ToT"+
                                 "N1lsMvUwsQu7f9xev2adGjqHNuH8UHkjNE9CVnJkHUc2CVq3U3ANov9mOUlPQQjD8rMcf04t/7ja"+
                                 "1BEd4mOcEqLlCw1veDnqFIoTUvJyyoT0QcjP5cjIIR3trI4Eup9zur1vyfQeJEFx61YatE5xEw3C"+
                                 "6P3zTycUEerWt3f3+t0ajNX/bZnxMu27B47Z620y3ahRS+PiuYN4E6a8EZot4Zdx/CqO38Dx0Lqt"+
                                 "HLV28N8qkFgMgdAZKnSAtGc0Z3VdLz7avmgpvNxHnMJ5qJmXk57t9dUedntByNf5yJ5N4/dunQNC"+
                                 "ga6G44e3l8WJNwwyXydoHUZ87/M/nVCQ1KVjuzbf9W/Qb/+ACfqTFp5fqGWybNDSQd98W9fmzoXy"+
                                 "p3KeMyX8Eo5fwfFrBUiIJBVIkDuE0THBKQjlETmjRs6p5eirjR3SHoOi+MgHimXD3HYRoWIV63kf"+
                                 "l2NnDg92urvfYG8PB6u1IHTz8ppxI3qAnPSJweQxv+ZK9ypu3booaJ0FrWGRjd7nfTqhsOAn3X/t"+
                                 "UrtrnbabO/Tc1WeItubg3UPrNqs3ftzQcrgrePIwz+kSfiHHawlhtE4BCf6bRRJyErp20DoIHeyc"+
                                 "sCuIP6OGMAKka4vUxg1pa3vXMCHqXnzkXbbiom59LIasTeb7uZskxz0+d2Twif09vRy1ve33denQ"+
                                 "OBiEHh9fvWSY/92V9FJitskbE1jq67Al6D69guGPdtaLM9bkeP8Vy+ZXllT+Ye5Pzde2arWqTd2O"+
                                 "uHWx7h3rs4F+5W7fNghNlfDzOH4xR5Zz/GqOXy9Agv9WhqQII3QZqJ07rQZIIATLkHFMbcuoiovn"+
                                 "aT5xPgs2sZE3sT5WD5kcHx0f5RQXYW98bMQd04U3Teb4PTzYp3tzN3t96WODgzun3Twzne5rkN8w"+
                                 "iOP/gtbBeb/L/XRCmDT6eNj27PFLpVqVqzfRqFyrcuMmjS6ePRTsT08alze3PXmY12QJmcXxCzh+"+
                                 "KUctA7QOkLBESDAOsHYII3huNOvkrSA1gjA6r8YbqfGX1cOOqM0brLFt04wQqVlMuBVdiopVdAoh"+
                                 "Xhcv6g2LDbePjbA30h/u7aR97vAAXyftaeO7W17ehhgyPqFldGgsvYCdbmrAji2chMUhyyu0y/Bn"+
                                 "CLGdJBg97Nm1fsnCGbu2r37oYIb3k5TvUyg/nVMQmighMzh+DkcWcUSLIwgjaB0qJAESL7YbEEao"+
                                 "jdBfYJvrTqvRbHRejVBCauSq+vurFe5sUh/Rp+HFM5tjQy1jQq+XcNsXLhmMCfG3iIuyO6871N9F"+
                                 "97zOIB9H7bVLhp3Q1QKhm6YbTu4eJr+APUFJ65CN3uX8qRhi++ViIt2iwx8LL4uU384pCI2XkKkc"+
                                 "mcmReRwRtA7lEYNEF7PgSEgII8wmxDA6qUYhnVMjF9X4S2r8VXViUYG3qvjasuJJrQrTx3W0sT4i"+
                                 "r1jFesjjwq3Li1we7IkNt752fvqje1uN9DR9HPYf3D5pz9YZIGRzfcuxbYPkF7Arax2y0bvs/weh"+
                                 "kqf1y6VT8BonIZM5Mp0jszmygCNLFFoHSIzTJo6Ha0C7QQwjqnUCIQgdI2SmTq5X4K0r8ncq8jaV"+
                                 "Uq9WGjOkTVSAWYTfVeXetofDkUsG48J9r3g46BrrD794dIiP4/4zOnPXLvtN+oQS0t/an48ueQH7"+
                                 "Zewn+RcTGiMhEzkyhYPWEVHrVtGEhDJWDmkLbTcUZSNh+yNBGIEQUzkzNd5Snb9Vkb9bkX9QSWZf"+
                                 "adbQmt4Pz4Z5mYZ6XhZnrHDV53WGutsdCnI/B8U7fbCPr6O26amlC2cPhdu2vrz+xI7+wgXsuJSY"+
                                 "PTbByiMj7J37FxMaJSHjOAoJWjdLoXXLOCJAooSwkJBQJCGM0FcVaiPa7UY2wokJEDJV483V+Bvq"+
                                 "/O2K/D3EUEXeruL5Neqn9daAjYDHRNinQHsKno66p7T73ru65ILukAcWK3wdD4DQ3BmU0OmjCy8f"+
                                 "HkwvSIvaSuhjE9j/LTw2gd2p/2pCIyRkNEfGc2RSca1DQlotRBLjBK1jEwoMkMQhLAiZIAnRACLW"+
                                 "6vydCuR+Bd5GnbdVT7yirjV3cLCHMWXjbkSXQAjTB29HnVuX5jndXI+KFYROHZ69eO4wENq0avTj"+
                                 "y6N5XJCGR8SituPkpdzXYXfq28x/cQxpSshIjozhyASF1s3lyELB160QIgl9VeYdBK3jmfNmkNBf"+
                                 "wNnKa2rEUo3cBCF1cleNv6fG26gV2nKLxtT1e3wKYOjyoL+qTB8YoR3rxuzYOA2EJozqnP14Eh+C"+
                                 "O9jxIgjTOuECdhwlf5vxbyH0yNVTQ/HqNH3tc8owryESosmRURzVOoQR07r5gq8DJMgdOKFOYi4c"+
                                 "kPZwPLSO7TlBNsLZSjOBkLUaf1ONnl25zfHCIXKTdZy+9iJQUV7ijJX15UBo+vjuxqfW+jzUmzy0"+
                                 "IS7S4IPwKAieqKJaJ39sAqfD3qb/WwjhpaoGDb9nT1DICQ2SkMEcGcbJtQ6+bprC1wESiiS4O8aJ"+
                                 "ZSYMKQAJrSAmdwgjQBLvYmCnVoTTr3nXuRH9G0vdToNK0Xpyik3B6ZYg5yP+D7W7dvzJ1U7vjJ7W"+
                                 "6Y31eZ/+fACeTcQ7Ykzr8NjEXrox/23av4VQZFRMgwYNixEaICEDODKEIyM4Mra41sF8Q/GYBUfH"+
                                 "AZmJNR2YtUPLjhkHyB07Z4njyjhNjvP+4GTN8be5fTM4I8OVFEmxZQBCLIbsrm/u36tNkNvp8SM6"+
                                 "Ztz7hnh24P2G8IF4SkxJ63ABe0Hqv4VQRFQMHvgtRqifhPTlyECumNYhjJivg/9maYlBQjCx9h0m"+
                                 "fkIli4kfMhPPxn2oZ2HwcPAfIQVIVlzeNW5E3x/8XHSlT/SUFgKITvBAaJ3WCL39c6wubVw7tSLv"+
                                 "WoO4/0iEo8tyrcPZWDysA1P3ryL07bfyh3bkKtdHQnpzpB9HtW64YBl+44pqWEACIfzK5I5lJkBC"+
                                 "MME+oJ4VRkrU5rHdQuCEehbBBEg4AmbFndfi9m2dDB4ll+uDfX17NPd2Ojxv6q+xFmrErQJxq03c"+
                                 "m/HeffiA3/hgXJQvaF3MHlKQ8i+KIVVCvSSkB0f6cFTrhiq0jtWwaAUxlcNCGDHvAK1j3gFpCXac"+
                                 "cUKble10gPTBRMBBABKuZjDn3l/nVo2ufProfD/4AufDSuvIzg3jd274bdPKkXsXqPOu6sJ1nZWJ"+
                                 "G7SuHe87kJfC1+G9idV4+oh/k/xvIvRdsRjy7CEhv3KkF0e1bpBC6xBG8HVM65ivYyonmDqRDes7"+
                                 "0D0OjBDr4MFEwEFA7hSQCq5xy4ZX2L52LLpwaCKwdcN49Xdf1xzZu5atHifDrVtuIIQYwq/ViPv3"+
                                 "vFdnHF3mg6bzoTjlsol/k/RvIQSn8K0SodFThvl0r0u6cKQbR7Wuv5LWoYaFr2OtIAQQcwqojYQa"+
                                 "loLBYmDQbgAbBBD2OLDdQggjVi0hJwne4b05d3ye2uRRHc3PLXtovfXs0XkdW9U7tIB7gTsa5Lep"+
                                 "Ak8lIYzwP74i7o157+68P95Amk3D6HV8ydMpn3LSWOWe02K3xriamZuWvXcfIqNiRadQoYL6iN8G"+
                                 "mXet/7IDR7pyxbQONSx8HWsFsbY3m00IXo4GDXrebMQHKmzzCdt/glQEF84MHrSOtoXkkHAyOUiP"+
                                 "05mttnNKhZNLuLQrHI/7M3DJCW6iwYVOVOUgcRWJG0tIEnoDgE8/PmACH6rFv4zmP7z79BsAS95z"+
                                 "qnKbs5vL1bWr5w0e1Pu47tqydWtMZHTsd/XlXg5PZY8d179926aTaqn5tuQKEUY9FVqH8gg1rKh1"+
                                 "aHtD6yB0LIzY/jq2lxiJR9zAxfZwsSFFUeNOcesWLgoSDJ78inxcPcMuOSmCxFQOhLBA61uemm9N"+
                                 "Png+/yKc//D2CxG67ex4efasCbh0Bnc37tiyoGwRioiMEZ0CPHfbts1mzhzRq0/nJrWrH2zIZSGS"+
                                 "YBng61AewdehX4dWkKh18AuKOSzVN4gbq4oAhp1AYtGDJMSa38I9J/Jbt1hJK9RJ8ouC2A0ngCQ+"+
                                 "TgW5oyonruq8RxPeG6+PzuDzQ/j3eHLj9SfeovmxGAryv4dzk2PHDAMefM2YNuqK8e6yRQhPyU+e"+
                                 "Mk35+dG69WoP1ewxdZpmq9ZNe9SqeL8l9xaQUB7B14lax3wd0zrW9kYYQejELfniXmLF8SPxJhrq"+
                                 "F9C7u6q4tg7tBtyIxm4GQhixSGKQcDWaPCcxSAiperxnR146hc8L+iKErpnq9+zxK9i0bt1y66Yl"+
                                 "4tVlZejmJTxiae/48KfGTZQhISE1adJw4qQhw0f2/rF+Pa36atHdOBl8HWsFKWsd6y+wtjeyEVIR"+
                                 "kpDyzjrFwX92DY385jpcigZCFsLFgoghEGLrTonHJmhCEmMIhOidqrjqhM//XEJS3/uHtbfgLnTc"+
                                 "p4Vf9Y5spjfRmsmfhypbhADJy8dv7G8TkIeUOVWvXrVHj/YzZ47s3rNDqzrVLrTgXgASWkGoYVV8"+
                                 "HbMMzMvBxbFaVUxCbDsD6lZR5UAIKoduECDdUFwLBFRiPLFIKkpIDFI13r0B79WBD5zKPw/jPxT8"+
                                 "/1QuMtTF1cVyyeJZLVu2aNykSb++PU2Ndfy9brg4Gp88tpGGUZl6O0V8CDYmNvb8BWOVYAKwevVq"+
                                 "Dx/Ra8pUzWY//zi0XoUn3bh30DpxxCduZ4DWIYwAiVkGmGxAErUOqUi4nUE+5YPnNhYcHSIJ2Qic"+
                                 "WDzBNQg9VvlTBqJrYFrnXpH3asL7dKOvJb6M/P94uQhX3I1lYXZqwIA+7ELnGdPHO9qaBPjctL17"+
                                 "buwYeoHw1o3zylYeUnmqVxoYrLV8ZY0aNYuLXoXmzX+YPGWo5rCeTerX3dBYLU2Tk7ERn9j2htah"+
                                 "s6DYkk+1jlkG0S8IxyXYhU7s8jrlOyCLXUqMgQXSknJCgv8WXAPvUZX3+p4+3wtC9NGOT71vm93r"+
                                 "4+1+f9OGZa1bt4aytWvbZs/ONfR+Et/bNy1PDBnUF/cHtmjZYvf2xWWaEIAhmOzsnQYMHCS+Rspo"+
                                 "aWhU7dWr48xZI3/t1q5j3SpmXbi34zke5ZG4nQG+jm1nEPcDIYyYqUN3jlkGVhUpQ4JrEINJGFUU"+
                                 "aR3cnZ3gGh4qP9+rTnwbkJe+n16x4vaEqHB34wvHBvTvg0scET3Dhw22uGqI411Yl4x0fvmlM8xC"+
                                 "27at16yaYaEoWsvKnSQffe46Lt7w5OnGTZoqBxP+9zffSEaP6QcT0bxZo0mNKkiHcIVi2xutIKZ1"+
                                 "rDxCT4E1FErVOrgGOG/4OsidmJbMS9M6QHIsDsmrBnnp9Sldn7TkkNgobytL40kTxzE2uKp2xzaE"+
                                 "zp2wQHvcAKi9b0PbNq2B55dfOp0y3GllfrDMvSX5+w+SB0iDVqxaU726hjIntMBbt2kydarmEM2e"+
                                 "LevX3t9WLWuisAOSlUfQOtZlQHnEfB3CCJBYGDGtQxgpWzuWk5h3YGHEDJ6odUhIgOSseE/eU+NT"+
                                 "CCUnBFvfuDxrxpSWOBHZtCleSJk5Y9K9WyZ43QYnjT2eWC9dNJPdJzxwQG+Lq3re7mXy3YdPeTLe"+
                                 "loreYDW1Yk6vRo3qffp0mjFzZJcurXvXr3x/IPduDseLrSBYBlYeoYYVtY5Nyll/QSxgxYTEtA5h"+
                                 "VFLrxF4DIMF/u2uQF6XHUF5OyrOcpMAAN1OTM2PGjETKaSJ8jRyhednYICzIGRddYM+p1fWzmkMG"+
                                 "sCuFp0wa/dD+UoCX1S0rw3WrZ104vbWs56FSmUXHxJ48dRZ3V6uIXoMGX48dN+C3CYNbNm04/+cK"+
                                 "UZM4nGz5Y61jlgFhxPy3itaJvg6WAb4OlgG9BmWtcyuFUP6zzPi4MLMrRvPnze7Roztu3f6pcWMQ"+
                                 "GjtmpPFFA9xJkhCNq07dcOGS9v7N7du3g+LBLGzfusLb/Ya/t7XJhYM9e3T94YefVmhNLZeEGDY/"+
                                 "f+mKlWvEnSeMVqVKFdu2azZt+vCBg7q1b1jzZE/u+SJhoCdqHWsFiZYBfaCSvg7+m1kG1g1idZKo"+
                                 "dbAMLIxYQnqiQZ6rxlBqStxvv41lEYPgQL5ZprXI0twYeQi3OSfEUC93y8powvhRuI8bote/X69L"+
                                 "Rrrs1hjD4zs7C894dezYTkd7ZTkmRJ1eTKytnWPvvv1UytuaNTX69/9l6vQRnTq2GP5TJdcJXKGw"+
                                 "GUju61gNi2zEGqkoj5S1rqT5FrUOkFh5JPo6lLGPSyGUkZaAS9F79ew5c8ZUg2NHgqVuyENwCrhP"+
                                 "ISUhwNv9wcb1y1nooFBFufrIyRz3Kfh53cIdd61b0UTVo/svRw+vFm4ALEuvfX5KHir578TExp08"+
                                 "fVbF6cGdf//9txMmDBo3fnCbpvXXdVRPQjCJw1blVhBrp4pap+zrRMugrHXMMkDrWBg90iD5peSh"+
                                 "lMSo8BDf7KfxuVnxeCEqIzkMd2wHBTw6sG9rT6p7NLaGDB5gYqSHe33g5XDpxcL502AW8M9HDBt4"+
                                 "y9IQDxQyPGWu6/P/4+QvDVq6bKWK6FWuXKl9+58hen37d+32Y42rI7k3GIqztrdKeST6OpRHYssO"+
                                 "WodhOes1fMzXOZdOSJzgZWXE4L1iqa/L/r3b+/fri/oUjqBz5467dq73dr8XGeIcEeJ4+8a54cMG"+
                                 "sac75s6e6OJg4qX06jR6PwP7dxGTLgY0/7+PiP1X3Of8x5/938Y9sHPo07e/iujVrl1j0OBfp80Y"+
                                 "3rF9s6mtKwXM42Rs3qri61DDir5O1DoRkoqvE7XOqXRC+blpz/PS4mKCHty3WrtmRZcunQEAhgEv"+
                                 "Dy1ftuDxQ+vo8CfwcsEB9vq6u5B4oGytWrXcvnW5l+t18YQXu0Vz/txRKCpEQprDR37OB/XPEqLf"+
                                 "OZye4ckzTZo2U3Z66upqP/zw3YQJg0ePG9ih6Tf7+6llokhiHVVWw6pYBqZ1YstObK2yfh1rBQES"+
                                 "tM6xFELwci5Otps3rhs0aAAKoB9//BEAunXrumXzGmcna+oUoukJL9zrM33aBMQNElKf3j1MLhxR"+
                                 "OQtuefXA1k1zNDSqiT9LzZpfmVveLN+E2HcfIA1eumxFtWpFPxt+yCpVKnfq1GLm7FG9ence2Fzj"+
                                 "/gzurbKvUy6PxFYQ83VM65Qtg1jDOpRCKCkhevDgQagHEDd4D2r8uDEnDI74euOeLKng5XzCg1z0"+
                                 "dfeAGXtiZdaMCQ42l1Tu9bE00z60TwvNYhFPpUqVdu3eB3/0OV//fAwpN8htbB36DRhYQvRq0qng"+
                                 "9OGd2jdb/GvFiLWcDDGExXydqHWAxMoj7GVAK0gFktj2ttMgeapOAVeXHdi/a+rUyYcP7/Nwc0hO"+
                                 "CFF+mcPS/MJv40YCDPB07dpFT2dngPc9lZPGeH/oiPbyBvXriXjgfWbMnBsZHfc5eP7xPFTKNx8V"+
                                 "HQ3R+7F4eYupYOPGDSZhKjiqX5fmdU+NVXuGtARCylpXaiuIlUds1sdqWNtSCLG3JLMy4vNykuEU"+
                                 "4OUyUyMSYgPsbS3nzp3eqlUr1LDIOvPnTcfN5+HBjir3y+EtSVPjg/W/K8IDTn369Q8KCf9MPGWR"+
                                 "EPuR4PS0lq2sWrWqcnKqVq1K165tZkH0enUa16Ga+zLuvdivY5bh99verIa1+SghvPaZ8zQeT9sk"+
                                 "x4dYmF2cN3cG3olisjZm9PArlwwxH8L956onjb2sThzb/n3Db5W/1U6dujxx9fx8PGWXEP3Z4uJt"+
                                 "Htj36TegQoUiXwTpkNStpanZc+q0YZ3aNd48oELSTk4G5820TrkVJGodOqosITHLcE8Dr4OW7G0/"+
                                 "f5aelZnw5JGdrs6BYUMHo9CBHYDPHjF86JmTR8JDHrEXc5XfBcd+OX/vm7t3rqhdq9hIrF37Dm4e"+
                                 "3p+XfYrglqE8VOrfODi9U2fO/fjjTypbIZo1a4TRreaI3r3bSMxmqL2C3IEQ69eJ5ZFy21tsBd0t"+
                                 "hRAeIjx/7uSI4Zrw1j8JX+3atZ04YZzRRUPcGoM7T0u+3B7sb+P5xHLu7PFVq1ZR/t46dups7+T8"+
                                 "RaKH/SZlnRD7Ln39pQsXa1WtWszpVdeo2q1bu5mzRvXp1WF61yrSTfSlCbnWlbQMYg17WwMXnqrE"+
                                 "UGJCVP/+/dCUQ+j07dNr+9YNtvctE+MCqJcr8XI7egp4uR3XLvXv103F1HTq/MsTV48viKfcEBJE"+
                                 "L87e4WG//gOLix739dfYCtF78hTNbu0bHRxT4SkeNGJdBhVIotbdKoVQXm6GudnlXTu3olxNig9B"+
                                 "T0H0ciqEkIdwEfrhg5u+/baYLwCqgYOGeHr7fSlxEzGXjxgSv93IqGiDE6dVtqyggG/Z8ie6FWJ4"+
                                 "7+Gd69zT4grgGtBlKHU2YV0KIXi5F3kZL/LSc7MSPvZyO268QFvB9t7lMaMHVyuubJUrV54zb2Fg"+
                                 "cOiXjZ7ypHIqP7l/QNCCRUtURK9GjWo9e3aYPnNkz+5tFvetHHOAk4EQRnzKNSy0zkqD5HzSFFzx"+
                                 "UqH8hSipn/3mDVrfN/yOUys256pVu/be/Qdx2O2vwFOuVK7EB/DAznHAoCEqTu/bb+uOGt130mTN"+
                                 "Hh2+Pz1DPf8kx7NWkFjDWv45Qknx/iFSl6M6u9q2aaH8Z4ESjGX7Dp2sb91Dt/4vwlO+CeG7j4qO"+
                                 "PW548vtGPyj/rUaDHCXmlKnDhg/rOfbXWo83cx+UR3wWn0ooMy0sJPDxcf39HTu0rVixosqAGA2q"+
                                 "mbPm+vgF/nVsyrHKqXwofgGBi5doVa9eXflD/Oorjd69O02bPqJfr1ZbRlVKxa2QmB6hFWSuQbJ/"+
                                 "T+WyM2PTU8Klfi7btq5t376NStzgj4ApaNW6jfGlK0iKfzWech9D4gcUh/LW1r5f/0HKHyga5NgK"+
                                 "MXpMf+z/GtLte/Nlaq+MON68eqmEMH1A4ycmMuDypTOzZk6pW1ei4qSZrNX7+pu16zdJg0Li4v5C"+
                                 "ZVMGX8683O//nY2KjjE4carh942Ug6lKlUrt2v08ZdrwYUN/nTuwpv+R6ny2N6uH3r99/e7tKxi5"+
                                 "0GB/a6trs2ZORXe0SpViFaj4W9WRSCZOnubo/Pgze9V/Nuy+ACH8/U1ISPqzf/Bf9+/7+gUsWqKl"+
                                 "Mr39qlaNgQO7gtOCWcOePU3Me/YsMSH+7p1bGzeuB7ofGjUqqWYim9q160ybMfvufdtodDj+9q8v"+
                                 "QIh9z/HxCX/7N//xPzAuDvv0+tNBRlFPD6rVqNF3msN6//bbuK5df6lVqxY6syq7l4tvvqz4ww8/"+
                                 "YlTv4PTon0Aj/+m+GKEyhEfxrSCR6x8/oSJ6SE4qrqzk/ymR1O3bb4C+wSk3dy80cP/ZH+1/mRD7"+
                                 "ZP0DApcsXaYieiWpVKpcuW7dej169d6vfQSVVnTM32QE/hD//z4h9hE8sHUYNHgIxtIiGyQedGvq"+
                                 "1JH82q0HOhT6Bidd3b0jcLz9ryw//5BHyX/hHyD0t/lUlZ82Kir6uqX19p27Dh46su/AofMXL1vf"+
                                 "vv/osWtQSBjasv+Pz+7v+U/+AUJ/zw8m/ilJyamJyal/8x/6Bf+4/31CX/DD+kd+q/8I/SMf+5/4"+
                                 "Q/8j9Cc+rH/kX/2P0D/ysf+JP/Q/Qn/iw/pH/tX/A8Lah9/f3Ot1AAAAAElFTkSuQmCC")),0,$$.Length)))))
#endregion
$PanelKMS.Controls.Add($ListStatus3)
$PanelKMS.Controls.Add($TxtBoxSKMS)
$PanelKMS.Controls.Add($ChkboxSKMS)
$PanelKMS.Controls.Add($ChkboxCKMS)
$PanelKMS.Controls.Add($PictureBox5)
#~~< PanelConfig >~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
$PanelConfig = New-Object System.Windows.Forms.Panel
$PanelConfig.BorderStyle = [System.Windows.Forms.BorderStyle]::FixedSingle
$PanelConfig.Location = New-Object System.Drawing.Point(123, 362)
$PanelConfig.Size = New-Object System.Drawing.Size(403, 344)
$PanelConfig.TabIndex = 85
$PanelConfig.Text = ""
$PanelConfig.Visible = $false
$PanelConfig.BackColor = [System.Drawing.Color]::Gainsboro
#~~< ListStatus2 >~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
$ListStatus2 = New-Object System.Windows.Forms.RichTextBox
$ListStatus2.Location = New-Object System.Drawing.Point(14, 294)
$ListStatus2.ScrollBars = [System.Windows.Forms.RichTextBoxScrollBars]::ForcedVertical
$ListStatus2.Size = New-Object System.Drawing.Size(366, 45)
$ListStatus2.TabIndex = 85
$ListStatus2.Text = ""
#~~< GroupBox2 >~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
$GroupBox2 = New-Object System.Windows.Forms.GroupBox
$GroupBox2.Location = New-Object System.Drawing.Point(14, 176)
$GroupBox2.Size = New-Object System.Drawing.Size(366, 112)
$GroupBox2.TabIndex = 78
$GroupBox2.TabStop = $false
$GroupBox2.Text = $TextStrings.ActivationOptions
#~~< PictureBox4 >~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
$PictureBox4 = New-Object System.Windows.Forms.PictureBox
$PictureBox4.BackgroundImageLayout = [System.Windows.Forms.ImageLayout]::Center
$PictureBox4.Location = New-Object System.Drawing.Point(310, 12)
$PictureBox4.Size = New-Object System.Drawing.Size(48, 63)
$PictureBox4.TabIndex = 75
$PictureBox4.TabStop = $false
$PictureBox4.Text = ""
#region PictureBox4.BackgroundImage = ([System.Drawing.Image](...)
$PictureBox4.BackgroundImage = ([System.Drawing.Image]([System.Drawing.Image]::FromStream((New-Object System.IO.MemoryStream(($$ = [System.Convert]::FromBase64String(
"iVBORw0KGgoAAAANSUhEUgAAADYAAAA8CAIAAACivN7sAAAAAXNSR0IArs4c6QAAAARnQU1BAACx"+
                                 "jwv8YQUAAAAgY0hSTQAAeiYAAICEAAD6AAAAgOgAAHUwAADqYAAAOpgAABdwnLpRPAAAAAlwSFlz"+
                                 "AAAOxAAADsQBlSsOGwAAEYlJREFUaEPtmvdzGue6x8/9S84P5+QkcZxeXHPsFNtyVeIkjnOT2Clu"+
                                 "ie04TuL4Oo7tuMlW70IVVAAhJIGQhJAQCCEJEBIdFlhgKcuy9CpQcZKZ+2Dl+pw4RSjjuZO5c595"+
                                 "eeddZstH36e877voPxwOx1/+5AaIf3L7y5+cL+vk/0d8AAr831JRi1jVRosZtdkfgDSruEVOKmpQ"+
                                 "rFdjFKDYoNVZOaUrH9e0ygy8GZNYgyj0Zi2CWlDbKp65ylNzQuxSm3X+uMBOfiFSnxAoT4/MfCVS"+
                                 "X5LqChVIjcrarLLSZs30GaRnFuGrELHaNG0wGyy2B8WdIyIq9KX6bb6rkwaAOydSX5bqb0+bKlUW"+
                                 "igZt1Nmg1Wqs5TPIzSnDZYnmG9HsReH0TdFMjVTNmjaM6a2zJtRoQVcp30+n54CIYVV9o/0a67Ar"+
                                 "3O8JMzGi2eqqNdqajSgdcXQirmadvXLWUqQwXZ/UfyNWnR2e/mRw8ihv/EgfNMkRruQEb/ySSNk4"+
                                 "bRQabGpk1aArI3q8ZNuobBJx2P0Rmz9sxAMaF6lw+UcxsteO01EXy+HpxPA2m6vRiNapkTKF4RuR"+
                                 "8hhv/GOu5GPu2HGe5DP+xDnh9NUJdZnK1G1xThpWl3E5IfZOqRWoyxufi2QWwun5QDLjjaWc4biV"+
                                 "jOjxwIzTN2XHJTavwEZ0o3gH6h5w+xT+MM/qKZfrvxiWfT06fVmqvqXU1xlRrssr8QWkCJZ7XVgZ"+
                                 "0eXG++RaOSAmM6GFO8H5O/70oi+94EvNE9mWwRNpVyxlDycQf1TlDU5iPqHFNYQ4JzDSEIibwslO"+
                                 "E1asMjYhdq7bO+YPKiJRoT8oNtntuVWvnBCHZoxSswOPz4UWvw8ufO+fv0NklvD0ontuAUvO2xIZ"+
                                 "Syxtjs6ZIykkksy2UELnj0pdJNeI9RkwQyBmDCdGfYGJYEgSDHF8JIvwtblwmSGnuFwZ0eHAxFrr"+
                                 "mBF1RhLBhTuB+Tvk/JI3s+RJLzrnFu3JBWt8HolnDNE5TSQ1G0wo/PFJMjZFxpSB2AwZHXYQHWqr"+
                                 "wIobojFRMARwjW681O4sRDEm4kCsKxfUXBAdUoNdbEDtoXggswQS+n6ScBFLLtgS8+Z4xhhLa6Nz"+
                                 "qnBKGUxOBhISMiYiosN4eBgPjRNhgZOkqVGm1sH1euvdnkIbdsVsu2Cwfme0yXMQMifEaYsLEG3B"+
                                 "mD+z6M8sEeklfG7RlVqwA190Th9KaoMJdSg5E0rKgwmpPy7yRUe8ET4e5rlDHGeg3xnoQb11SnOj"+
                                 "FmtxYpcQ2zm99ZQKOSI3cPUrx2NOiONaS7dMjZAhMr1AZhEXPRCFiYwtmnTGU67EHAxmvKFxTxBc"+
                                 "DBKOElGBN9LvCXFcQTYWYNhJho1o1juLpHq21XUdsX8yg3wwaTgo1pXIEQik3y/pOSFOGWxVA2MS"+
                                 "mweJztmT8yAe9OZwIjS/FF64A31gfsmXXpzxBkROUugJZiX0hHmuYLfDz7T7Omw+qsXbYHSXKJDq"+
                                 "KWOLDTs0YTgg0uYPqb8ZNxotK4RjTohq1FXCFQotTvCpKZaGzNBGUgoiDFhkGlyfbWRmccSIYom5"+
                                 "aSIocBCDdmLIQUx4Q20GrM3qa7YQdSZP6Sx6ZVTFc7gOjOr2DqryuMozQq3WZHkAKpocnls9Ar7J"+
                                 "ofLH9XczdyaUmCUj+NwC1B1Xat6ZnIeep0E8qQV3KluJ7ImMNZ6We4OUGaQVJZot3jqTu1Rt+25M"+
                                 "16pFPhQZtvcqtrEmTg5Mm1ZK6pxURF3EjS4+T2dTkBF1GPiSMn9MF4gDjTM1nwVKZkyRBFttBiyA"+
                                 "w5IZ6NF4mm92UkHFu4gUk6dc47gu1bdqLJ8IdduY0m0dolOcSTvmfAAqOnHyOmuwR2MGxymDCXkg"+
                                 "MUZEFHhgQI/2qpEeNTKOEZNu/7DVbYrOGaIpPdTw2Bwan2NpLB0WvB31tVgICoJXaB0Fk8YuA3Za"+
                                 "oNrWPrq9dfgMR7ri8icnFXHCf401yJo1idyBKX+2rEBOgKMt0ZQtkTZFUkLU0yjTTXmDAKcLpzTh"+
                                 "pCqUgFYn07FsPrrNR7MSDQhercMK5SYO4j7NV26nDW+nDn3NnXgwiF5fABxNV+gFGJkty76o0OUH"+
                                 "58LUB541x9Km2BxDbWbpUOhH7MSY299ndtYr9FelulqTh2H3ga+bzHitwVmiMA9Y8JM8+Y4W/o7m"+
                                 "/u8Gph4MottDFPWO0GTafjuRrXl4WOIJoDA1Z/nmwLkgXpNMA+KNewJso52htfYiTobBcVWOXFfb"+
                                 "CzQOmtULrdHoqlBahqzek32TeU28nY2c4mH5qhFtNrsNPj+v+bDYqeCJmyfUvVZ8yBPudwVkRBj4"+
                                 "IOCywRdJyYlw+6xJBRNMMKEMxuWB+KQ/ViU3XJYjl2dsF5XWi0q0weShIe5alVVoJ05xxnc1cnY1"+
                                 "9FSNyFaNiHvwO0tL6XQ6Eon4fCSGYajN5nTjNYPj9ZIZFuLqdwe7bYQ2lNBDwAVimlBCG071mTCe"+
                                 "xQV804Gf+KRk7Mqo8qLccmHaek5uOTuBfDFhajJiTRqrxOk/2SPaXd+9h9LVPKZcNaLH4wmHAyTp"+
                                 "hT6ZjC8szC8sLCQSSb0NE+vMPIONaye6UIJtwmpkugqZvkJmYOjtTUqj1BtWBOIyf3zCHxsno0I8"+
                                 "dGZw6rzc/NWU+XOp6dS4/oRY+5VE26yxyjzB4yzBHgprby2TOaleNaLb7UkkYiSJ+3yeey0YJOPx"+
                                 "SDo9t7S0mE5nvKGI2k0MW110kxOqHZQS2ApyrPgEGZOSUYkvKiYisKc5JZj+csJ0Ztzw6ZjuuEjz"+
                                 "8cjsieGZLwSyGW/4o46BfbWMfTUdHIV21Ygul+fHH3/84YcfQLxkMhEOBwGXINw+wrPc/H4iEgml"+
                                 "UonFxUXcR5ap0AqDq1iLXZMh18Y1pTJ96ZTuimj6NH/qM7H2tET/iVhzdFT14cjsoaHpj/myt1gC"+
                                 "uSd4iNabX9OeX9XGV+pWjWi32QHxnmWWMukFiMy5VDIRAVyf9x5rKOT3EMT1cTXw3YJpQ2W7rLRc"+
                                 "mDJ+Na47K9F+NqY7KdYeF6mPCGcPDyvfG1IcHJh8jyd5nT6gIsIHGzrzq1rzK6kitWnViJDOIOGy"+
                                 "pRaS11TnjIQuk0mD9+fnM3fu3IHohBiFSIXm9OCXxTM3Vfars+hlpfWCAjk3aTwr1Z8e034iUh8V"+
                                 "zn40ojwkkP/n4NTb/dI3uGNv947ubePqyOjr1a2vVVLzK1py2RvcP7sA4vfffz8bky0sLdSSBTKf"+
                                 "ZGlpCbCADyiXye7hYm7PBaHiyozlogI5P2X6Umo4I9GeHFMfF6mOjMx8IFC8z596Z0B6gCfZzxXn"+
                                 "9woP9Yl2t/bqfZFlvtcqWmZNq98YoGgWURwavGA70e/pAtkAEQDhy2WDQ/B7LBYBaW1O1xf8CXDu"+
                                 "uQn92XHd6THNpyLVMaHyI4HiMF/27uDEwX7Jm33i1zmje3tGdrMF73FGdrR0aYkw8O0rbz5Y2zat"+
                                 "N6/a0YC4jMW1dC0uLS6PgQYGvzSrAzvVN/bluO6MRHNKpDohnDk6rPhwaOr9wYl3+iUHeOL93NH8"+
                                 "npE9bMHOLv6Ozv632fy85k6l2w98+8qaPmhk/BFEK2oDt4JO0GAAfMuyLQ/uM7PdcaxH+JlY9eno"+
                                 "zLGR6Y+GZIf5E+8OSA7yxG9yR1/vHdnXLdjVxc/rHHiVyXuFzn2DxdvV3Cm1eYBvb2nj0WbWjGGF"+
                                 "9eyvvEhGEASqybJlMpm5uRS0eDwKNeje9/cGJtT2AYt/YkRxZHjqA/7E+wPj7/DGDnBH9/eO5HcL"+
                                 "9rD5O1kD27NwnK3tvf9s685n9O5uYQ4Z7cC3t6ThBLVrVg97lxXs/nQxIwiQ+RiMsEYDWPPRKACl"+
                                 "UkkAhf7uANT9Cddgsb5L7/toSHp4cPzdfvHbXNGbHOFrPYK9bP5u1kBeJ+9VOvfljt4tbezNrV2b"+
                                 "qJ172tl7WxiwxNxT0rCnuP5TKlulX33RsVgsABE2Golz5+JUaujbb1NQwRNxmGCCQT/Ima2RP7Gm"+
                                 "dGbLW63s9/rH3ukbfYszsr9HsK+bv7trII/J207nvNLRu7W9+8VW1kYqc30zfX1T+65WZj6VwVDo"+
                                 "gG9PMeU0rVuHrN7RVqs1mUzOzc4GH32U+OtfPSoVpDNAZqtOJhOPxwAUJhiYdaCgaxAkv4lxgCt8"+
                                 "o1eQ3z24t2tgVydvB4P7akfvS+3sLa2szbTOjS30dU0dzze0vtBA20Ht2E+lUydmdxdRdhfVfUZl"+
                                 "r7T7y8bA/Y4GFQExUlRkO3/ecuiQ5eZNIAMVof93A2gQe9Zg3EVp3d/N39c1sLuzL4/B2UbveaWd"+
                                 "vbW160Uqc1NLVrkXGlufq6c9U9fybF3TtmbaW7QOilgOfLsKaz+nsh3YCpvoX0E0my0QdPB4ECkR"+
                                 "DBorK2EM4sHhL02p12+rbtrb2beTyd1B73m1g/1SG2sLjbm5hb6hqX1dY+vzDdRnKc1P1zU9WdPw"+
                                 "dA3llYbmg60dFcNS4MsrrDnfzvGSoRUp71fRiqLLTMsNcIHstxAVWt1LFZQ8es+2DvbLbaytNOaL"+
                                 "LfRNze3rG8Gt1Ofqm5+ta3yqtv6J6rq1VbVPVta8RGl4v41eOCDadbs273b1ZWa/PzIXjKVhb/Q7"+
                                 "Wf3LCdAOiP9jUG7isVg0FIJJL+vZ+0yu1W4uqXqljfUSjbGFSt/c3L6xkbaugfr8XbinaxuerK57"+
                                 "vKpmbWX1mvLKJ8orttTWfdjBuMYR7Lpds/NW9U32EO6P+ULJQDRNBmO/Jef9iC6nOwk5nM3ZVDQe"+
                                 "aTXWEwEiGo0AajQahc+ytMs2pVZvuF26tYX+YnPbpiba+gbqC/XNz9U1PlNb/1R13RMAV1H9WHnl"+
                                 "mrLyR0pL15aWvlhddYTO/JY1AHx5t6qLegV2N+n2hYlAHCh9/vCvank/IkEQBr+G7aO6I85i1zcc"+
                                 "SyeoCAbr8LtL8SDomj2ORuD7EZl8XUHxPxupGxta1lGanq9rfLa2/unquierah6vqFpbXgFwj5aW"+
                                 "PlJa/HBJ0dqSos2V5ccZjHMdnJ0F1XkFVZV9QgR1oU7CRYQA0UsGV0aEfRVsWcCnV/Sfn0eOqQkl"+
                                 "ZDdgQQ8GeR0KBX0+WOHiwWDW9czh4Wev3thcU7+1vmlrQ9OGWsozVdVPVlQ+Xl7xWHnZmrLSR0qK"+
                                 "Hy4u/EfR7YcKCx4rvrWpouQkk3mGxga+vJtVTXyJWm81WZ24P0qG4r8Vjj9T0el0gTaAghIW3A87"+
                                 "hKwt0/y7gZDACqd19fMv0OjH6KwtldWbKqtepVBeplDWV1c9VVa2pqT4keLCh4tu/aOw4KHbN/5+"+
                                 "6/pjhTc2lhWe7mR+2sQEvryblW3D4/JZPajoDyex335t8i9EkBDH8RgssyLhcDgEPYyj2YPQfYjL"+
                                 "hwA6OjbB6BO0D0mahsYKeEMft3dsKitdX1byz6qKF6srnisrXlN086Fb1/5e8N3fbl557Pa1jSUF"+
                                 "n3cyj1LagQ8ac0SqQ+xEIPr7rxh/pqLd4bSgdgfm8nohRbJ4AT8JiIAKQPcZ6SOVKoMdw91E0GzH"+
                                 "BZOqNv5YA198jdN/mEbbWHx7Y+ntrZUlG8oKH7997aEbl9beurKh+PpXrM4Pa2jA91/tPaNyNU4E"+
                                 "VlpF/PpP5pgdc1ms8MuI0+PBITqBNRQKAStw3wM1m1F9ds2cnR4wJ2y1fcusw1OqtsExysDodz3c"+
                                 "91saNxReX190fVPJzU0lN54vuPQ1i3m4mnqM0t43Jvd4f68c3kNf6bUT5jJbIQQw2LyC+7MREAoC"+
                                 "MkmSKq3pl+/dIKSA1fMvVjGlX3iZ3fN+E2VdwaU1l86eZzEvMDjt/LG7/s3JVkK8dxNgtdhQG+jl"+
                                 "8hGEVm8CjX/nCfdYLQ7vyJQamOr6Ry6yWKUDg21DEjcZdbrcOQH+kf+NcLrN1qxrc3zAMivuCzk8"+
                                 "/gmNmTkyaXWR8Ltijpf/yjIi9ytXeya8HnJ7vB7CjxOr4PtfRVztn5RzuvzhGz+4C3NOlwf3yNXe"+
                                 "6b8Bp94g9o3YdU8AAAAASUVORK5CYII=")),0,$$.Length)))))
#endregion
#~~< TxtBoxUPCI >~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
$TxtBoxUPCI = New-Object System.Windows.Forms.TextBox
$TxtBoxUPCI.Location = New-Object System.Drawing.Point(46, 81)
$TxtBoxUPCI.ReadOnly = $true
$TxtBoxUPCI.Size = New-Object System.Drawing.Size(244, 21)
$TxtBoxUPCI.TabIndex = 5
$TxtBoxUPCI.Text = ""
#~~< ChkboxUPCI >~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
$ChkboxUPCI = New-Object System.Windows.Forms.CheckBox
$ChkboxUPCI.Location = New-Object System.Drawing.Point(21, 56)
$ChkboxUPCI.Size = New-Object System.Drawing.Size(271, 19)
$ChkboxUPCI.TabIndex = 5
$ChkboxUPCI.Text = $TextStrings.UserCID
$ChkboxUPCI.UseVisualStyleBackColor = $true
$ChkboxUPCI.add_CheckedChanged({ChkboxUPCI($ChkboxUPCI)})
#~~< ChkboxASCW >~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
$ChkboxASCW = New-Object System.Windows.Forms.CheckBox
$ChkboxASCW.Location = New-Object System.Drawing.Point(21, 31)
$ChkboxASCW.Size = New-Object System.Drawing.Size(188, 19)
$ChkboxASCW.TabIndex = 5
$ChkboxASCW.Text = $TextStrings.ActivateWeb
$ChkboxASCW.UseVisualStyleBackColor = $true
$GroupBox2.Controls.Add($PictureBox4)
$GroupBox2.Controls.Add($TxtBoxUPCI)
$GroupBox2.Controls.Add($ChkboxUPCI)
$GroupBox2.Controls.Add($ChkboxASCW)
#~~< GroupBox1 >~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
$GroupBox1 = New-Object System.Windows.Forms.GroupBox
$GroupBox1.Location = New-Object System.Drawing.Point(14, 12)
$GroupBox1.Size = New-Object System.Drawing.Size(366, 159)
$GroupBox1.TabIndex = 77
$GroupBox1.TabStop = $false
$GroupBox1.Text = $TextStrings.KeyConfig
#~~< ChkboxClearPKey >~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
$ChkboxClearPKey = New-Object System.Windows.Forms.CheckBox
$ChkboxClearPKey.Location = New-Object System.Drawing.Point(21, 28)
$ChkboxClearPKey.Size = New-Object System.Drawing.Size(210, 19)
$ChkboxClearPKey.TabIndex = 75
$ChkboxClearPKey.Text = $TextStrings.KeyClear
$ChkboxClearPKey.UseVisualStyleBackColor = $true
#~~< PictureBox3 >~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
$PictureBox3 = New-Object System.Windows.Forms.PictureBox
$PictureBox3.BackgroundImageLayout = [System.Windows.Forms.ImageLayout]::Center
$PictureBox3.Location = New-Object System.Drawing.Point(261, 28)
$PictureBox3.Size = New-Object System.Drawing.Size(86, 27)
$PictureBox3.TabIndex = 74
$PictureBox3.TabStop = $false
$PictureBox3.Text = ""
#region PictureBox3.BackgroundImage = ([System.Drawing.Image](...)
$PictureBox3.BackgroundImage = ([System.Drawing.Image]([System.Drawing.Image]::FromStream((New-Object System.IO.MemoryStream(($$ = [System.Convert]::FromBase64String(
"iVBORw0KGgoAAAANSUhEUgAAAFQAAAAZCAIAAAAgz54kAAAAAXNSR0IArs4c6QAAAARnQU1BAACx"+
                                 "jwv8YQUAAAAgY0hSTQAAeiYAAICEAAD6AAAAgOgAAHUwAADqYAAAOpgAABdwnLpRPAAAAAlwSFlz"+
                                 "AAAOxAAADsQBlSsOGwAAC+dJREFUWEeFWD1o5FgS7gMHPZkv88ImDRtcwwbTMME0TDKCDUZwwQo2"+
                                 "OGWLcGCEg0E4MGISIyYYxASDcGCEA4McNMiBQRMY5MQgB4Z20NAdNKiDDhQo0IIDGWzQfVUlybJ3"+
                                 "985TvKl+qvfz1d979f5R5f79/aK/0b+/7/X7972NrPf4zx7/3ffu+xu93iPzj/0eePRt9HuP971e"+
                                 "H3y/hwGb/Z7IF73eH72NH+4fy97GK0zY29js9V7xmBKT9DdeYWw98rGg8Y9/9B/RYmGs0u9vbNKK"+
                                 "NGfTQv4Re+BW9iM7o7GYkFtsGi3+YR7qgcirPlbEH/VgEO2ZZqT9YKub94+8vd5mr1qbVW6ER4r5"+
                                 "n0EBfq1VK6taGVUG0qtMe2rxiX5KDxN6crsq/OourAqvyp2qwE8hl3ru8Cmgr2jLsCqjqoyrO7QB"+
                                 "fS1Ynka51R1+Pm9pBiGnuuMWvAhT6zxr6St9ymau91nzDpToRMuWTrGyC7RrN1s5Ze6X6zA6tZNz"+
                                 "8Nhw3APyYq1bO8PBj31rd+h/G3p7o+DroMpNgpd38QO22lDdX0JHAIDNPQAecPoNZiAXPIz/Afj9"+
                                 "RgbIAcauMujdqoeLsnJuay2AkZ4GsyiC9MVEDIazFojQ4wVH+uinzeFPW+O3A2N7rH7Y0v49VN8P"+
                                 "xm+2jN8U7Zex9n5k7YyzFbYX9tjCVnio6h+2sgUsr5cLgyy/ZuOvxcJo2RFycQe0vG9qAd6o7oDf"+
                                 "J6uSbUFhVQEtFnCrEpijhkLCT/1s9js2V8k/hbq8DCebd+3feId0ikfULVk+nsCLDe9AD76BtOjY"+
                                 "CA/18NDwv2r+oREcW6DkAqaKq4dEwBtk57WAaUxNDOyskW+Lt+ddn+chre6xD4CE5TEpwEsLg1NE"+
                                 "NP3UCWdj0xFs2JOR1LpgO0ukCFOTWL61v3h7i7xRTc4+QvYX32niohsgpErolwOQNgPwAAlUuVos"+
                                 "tWxmFEszvVWJWenZTE9vtexWK2ZGudLTa+JZnvQFmWxpF2snW/rFOkiXfrryitwtVkG2dEHFyq9y"+
                                 "rESWz1ZBsY6KLMgWTjazSgTh0oNAtnCzhVdmHjM2Wx7K8tJbO5vZFLErxC0NwVol1lpQT7a0ME+V"+
                                 "ie6wkIXALtd2eoN+Cz+zlZ2h5VEF+mcQ6CQXicQyguXZ1LlWLA1ne5DemMl3zd0flJnpfBxNL7X5"+
                                 "teHsDsqV4R+M41MVTHQyhI+Eh+PgUCnWlr09Thfe9NJ1Pill4Tn72vTKSheu81Ep8mB6bc1vkG8C"+
                                 "awdfo/DERlgi99i7POracfbHZRG4B2pyYZW5F50YmMT/pofHMIBn7QzKdRCdGvDhMg8wCrPNbyz7"+
                                 "4wiaTb7r6cyGIuzdUZF5ARz7SEN6s3ZGxYpCwP+iFrmHr/Nr+GmTKevc6Ql4ouxGi06U+bWenI+j"+
                                 "YyVbGPFETc6U6YUaneIn4keJJwrMXq6Jkgn6yUeiE31+Y2Pr0akOs8RnZnyuzy+teKKTueCQRZDO"+
                                 "3PjMThd+8t2Jz2EQN5qY82s7ubTCE3iQi874HEEHJ6JIwdd4YgIYAKQ3TnKOnxDzolNzeuVMr0yo"+
                                 "o1z7ZeZi/vk11jLhO9EpGINHmfMrK8FOaJQD4ekl4lROhJYA/g4J06zuoBjOnGjRAyrxkxlqkZaQ"+
                                 "2JBa0M/C9JWTPFJdyYmHYh5OyGkMnZLPSJIZyEjmo3iTk48PPHTiIKRTkFMDTYWwhDAfHJiQRkks"+
                                 "MLVniiwHSXwlhiVlwvonj3poxCSb0swg3s8dwJfY/QsCQviSWeawjBGfGfF3c35jTi9s+BtsO720"+
                                 "oPt0BguAbMQ5mOQSoeWSvs+NMncQZtEEjoAMArXipEWswtr29AquTnZGpoAKUqSAZcA/vWgCLcNH"+
                                 "HIQMeIhhWrhAeYfU4M1vEfA+jqgyC8JjrO7CaxA40ZkJecjEZ9ibT2Irtyx8BBSGxxcWJEkFogXS"+
                                 "lOiLzuYWPJTRVQFcBeFk2TuK8nag/zp2D3R7R3c+acmla21r1q7qH5r2R93aVucz19xWrG3F/2Y4"+
                                 "e6r2ywC78b+pypsBtIYgRJZCFoi/W8qbobWr2Xua8n4rPLGKHO5tQCPah2E4wddBtgqDI8Stqbwd"+
                                 "2h81Z88Y/WurzCP0eF90PqUAyRtubfrfTCzqHznj11vBkYWMq7zZwt7cz3p8DtW79i5tUv9t7H2F"+
                                 "98HdBD/Mzi5AfA0eyIWAn9sHG3ZLF7a1q6jvxvpvivvZsHd197OWXLkAgH7/yMD+rB2At5DMzO2x"+
                                 "f6jZ+7hIDNOV6x8C/AiKD45UJG14CsCP3wysXR3g1V+GwTHSQUjgz1z1wzA6d8Y/b2Xr0D8ikMq7"+
                                 "ob2vQbkYUuRhcGJ5X3UkS0wyvfGGP24CMMAHxy5uL5DPMl95t5VcORCLzu10iU2qWAjg/UOrQS74"+
                                 "OXaIcMmpYb+wPMBr85mHKZR3I/1XxTkwrF3D+aQnV7a5o1g7mn9EmwMP8Oa2iq14h4r9SQGwdOV4"+
                                 "T+C1dOlMr5EFbba8bu3pkAlPLZx8DN5WP4zCiT1+M8zWfnBs+EeW8nZk72P3xuj1FoE/NoEKIGNY"+
                                 "/sYdwPKHsLwaHBF4/9jIsnD8li3/VYUeAd7eU7EWzIaD4ylf1LBr/Az+4YXl6SdbHieNor4fQn9w"+
                                 "JyjCPYDbmzA7DA5/JrcH+AWiQzN/H5M6YPkPY6yN80x5PUouneBQL9ZeQpa3EUEWnIUsPwhPkVOC"+
                                 "cKJHZxbcHioY/4ziIqgtD7ffQ4Do8GqAD49by9vIBTX435UAbk+WN7N1pAj4LxrAI6HYHxVsDwGL"+
                                 "YKxvnECOeye1MDvwk+XF1Ts+zz9hK2SO8ASurvq4J07gdTr2ikQA2DiE4ws9OjGDY2CzYS5cKuML"+
                                 "BLAG+SJHpjHcT9p8QYmwyHyoY37rIWXAgWFzyCAh4XjHaTe9sb2vGn66+zokkcYQ2O6BAe1A0vmk"+
                                 "QgyTQHdQJZwRJkE8Jxe4L5i4qDpkDypUnAM1nfnInVgIHoThwYmJKy0k+dIprs7UeD7AU25/RnR6"+
                                 "CYlS5GxoOyHP1+m6BSM3MzlF5MyDNyGvsJrpzsvHG51zfMmX0w4kdmh387RFrv8gUEs+RanEageM"+
                                 "oGolZZUWZ7NQPY+s1bawPMoSXFeFcOA/tejRq4ILO2q1Ds83XLnntjLEy22/uUXQLbI9e+Uw59Ob"+
                                 "7qTSLz1NAUNnPickuTXQXUDObR4iTH3/RX+3CpLZ+N5O1YTcDjp2lhna/dSrI9vXJXpTpROktnqT"+
                                 "IqdLUuFxJU/3wk7lQz3Paz66NUnVhUseAxOcUr2iB1ai4ge83JeozKx3T/uTWlAU1NRI9QNBM1Vd"+
                                 "C+LWBDG6SjKDsaJr9jJ5O3iBnKtsAS8YWiQtwg5OYPszYWA96oUWmhmoXkSxiNId9ZbF1LpGY8y6"+
                                 "MpVatSHZ+kNSh0ld6olHNFR7iqhGEAp40UVTO9f6EkeTr/XTA8Dzvp/Zv/ti0/0kkn9uRebFPG39"+
                                 "K/gBGzHVjQt+5xCPoH0Liee3yFF14+WHH0IgU8cC716IkLRvAZ37b41QIkV0IRmHy2qqrCms2PJS"+
                                 "sYsn1/xf4myfcVqmO7at/F/4kehFakcOqPqdS8pyebcBcRKtawT4JDu8+HxtQ3F1wSw3/6byfxHP"+
                                 "pEHJu00urCTLcisRxHpsY7674//Ld7397/gmjp7yAscCeX7zkkGvVJ3Xi5pvXFf2+mQxNh15gVCA"+
                                 "ErAJAXEE8QhYVbQTJud28t0FpcsA73YoK+NTlJ6o2ZFiMBseM/Bc1bU2YvhZbLMv/DUx7Fq+y7fy"+
                                 "erVis7cyFB2IAnl7k8qvsXnzAtm85zSvOpK3a2s3NpcwqQu49ozo5AL2diq0br34wsaxTzXYJS4v"+
                                 "TnqLegn397i8S3ol3n0yk94hc2nl3dYgviHh5ev/bv80lufE6xjehWkVqvDI2s/esNrI5+NNwr5+"+
                                 "z2LX7Ua4+O2TLsQLxCO4Fe+obxO175RPMS+Rn8DsVZn2qirDf9VDWrcPc+a5JX7OvLTS07TS87Jl"+
                                 "4Wf93RlkOFbMqH2ignm0Qn/3tSvTCnfkq2aesvmKHlqrI1yV1UNZ8d9/AUcT3270fevLAAAAAElF"+
                                 "TkSuQmCC")),0,$$.Length)))))
#endregion
#~~< TxtBoxIPK >~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
$TxtBoxIPK = New-Object System.Windows.Forms.TextBox
$TxtBoxIPK.Location = New-Object System.Drawing.Point(46, 128)
$TxtBoxIPK.ReadOnly = $true
$TxtBoxIPK.Size = New-Object System.Drawing.Size(244, 21)
$TxtBoxIPK.TabIndex = 4
$TxtBoxIPK.Text = ""
#~~< ChkboxUPK >~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
$ChkboxUPK = New-Object System.Windows.Forms.CheckBox
$ChkboxUPK.Location = New-Object System.Drawing.Point(21, 78)
$ChkboxUPK.Size = New-Object System.Drawing.Size(175, 19)
$ChkboxUPK.TabIndex = 3
$ChkboxUPK.Text = $TextStrings.KeyUninstall
$ChkboxUPK.UseVisualStyleBackColor = $true
#~~< ChkboxIPK >~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
$ChkboxIPK = New-Object System.Windows.Forms.CheckBox
$ChkboxIPK.Location = New-Object System.Drawing.Point(21, 103)
$ChkboxIPK.Size = New-Object System.Drawing.Size(256, 19)
$ChkboxIPK.TabIndex = 2
$ChkboxIPK.Text = $TextStrings.KeyInstall
$ChkboxIPK.UseVisualStyleBackColor = $true
$ChkboxIPK.add_CheckedChanged({ChkboxIPK($ChkboxIPK)})
#~~< ChkboxRLStatus >~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
$ChkboxRLStatus = New-Object System.Windows.Forms.CheckBox
$ChkboxRLStatus.Location = New-Object System.Drawing.Point(21, 53)
$ChkboxRLStatus.Size = New-Object System.Drawing.Size(234, 19)
$ChkboxRLStatus.TabIndex = 1
$ChkboxRLStatus.Text = $TextStrings.LicenseReset
$ChkboxRLStatus.UseVisualStyleBackColor = $true
$GroupBox1.Controls.Add($ChkboxClearPKey)
$GroupBox1.Controls.Add($PictureBox3)
$GroupBox1.Controls.Add($TxtBoxIPK)
$GroupBox1.Controls.Add($ChkboxUPK)
$GroupBox1.Controls.Add($ChkboxIPK)
$GroupBox1.Controls.Add($ChkboxRLStatus)
$PanelConfig.Controls.Add($ListStatus2)
$PanelConfig.Controls.Add($GroupBox2)
$PanelConfig.Controls.Add($GroupBox1)
#~~< panelMenu >~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
$panelMenu = New-Object System.Windows.Forms.Panel
$panelMenu.BorderStyle = [System.Windows.Forms.BorderStyle]::FixedSingle
$panelMenu.Location = New-Object System.Drawing.Point(16, 12)
$panelMenu.Size = New-Object System.Drawing.Size(403, 346)
$panelMenu.TabIndex = 51
$panelMenu.Text = ""
$panelMenu.BackColor = [System.Drawing.Color]::Gainsboro
#~~< RadioButtonInstallationID >~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
$RadioButtonInstallationID = New-Object System.Windows.Forms.RadioButton
$RadioButtonInstallationID.Location = New-Object System.Drawing.Point(92, 66)
$RadioButtonInstallationID.Size = New-Object System.Drawing.Size(269, 18)
$RadioButtonInstallationID.TabIndex = 84
$RadioButtonInstallationID.Text = $TextStrings.DisplayInstallation
$RadioButtonInstallationID.UseVisualStyleBackColor = $true
$RadioButtonInstallationID.add_CheckedChanged({RadioButtonInstallationID($RadioButtonInstallationID)})
#~~< RadioButtonExpirationStatus >~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
$RadioButtonExpirationStatus = New-Object System.Windows.Forms.RadioButton
$RadioButtonExpirationStatus.Checked = $true
$RadioButtonExpirationStatus.Location = New-Object System.Drawing.Point(92, 42)
$RadioButtonExpirationStatus.Size = New-Object System.Drawing.Size(286, 18)
$RadioButtonExpirationStatus.TabIndex = 83
$RadioButtonExpirationStatus.TabStop = $true
$RadioButtonExpirationStatus.Text = $TextStrings.LicenseExpiration
$RadioButtonExpirationStatus.UseVisualStyleBackColor = $true
$RadioButtonExpirationStatus.add_CheckedChanged({RadioButtonExpirationStatus($RadioButtonExpirationStatus)})
#~~< PictureBox2 >~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
$PictureBox2 = New-Object System.Windows.Forms.PictureBox
$PictureBox2.BackgroundImageLayout = [System.Windows.Forms.ImageLayout]::Center
$PictureBox2.Location = New-Object System.Drawing.Point(3, 11)
$PictureBox2.Size = New-Object System.Drawing.Size(75, 73)
$PictureBox2.TabIndex = 80
$PictureBox2.TabStop = $false
$PictureBox2.Text = ""
#region PictureBox2.BackgroundImage = ([System.Drawing.Image](...)
$PictureBox2.BackgroundImage = ([System.Drawing.Image]([System.Drawing.Image]::FromStream((New-Object System.IO.MemoryStream(($$ = [System.Convert]::FromBase64String(
"iVBORw0KGgoAAAANSUhEUgAAAEsAAABJCAIAAAD65Ey2AAAAAXNSR0IArs4c6QAAAARnQU1BAACx"+
                                 "jwv8YQUAAAAgY0hSTQAAeiYAAICEAAD6AAAAgOgAAHUwAADqYAAAOpgAABdwnLpRPAAAAAlwSFlz"+
                                 "AAAOxAAADsQBlSsOGwAAEGxJREFUeF7tmwd3GknWhvf7wbvrGduSx1EOWoejsUfBkm3lnIUESEKB"+
                                 "JHLOGbqhmybnHCTv9zbYWnscRg4w4QznHg40WNTTb91Qt8r/5/f7//HXfoDwr/34x18bj52hfxP+"+
                                 "6e/A3xr+6SX82w///BL+rWFHNSTIYDgSj8Qz8XQxna+dWzJbYWJJfETREXznG8fw+8RSmonFUvlE"+
                                 "tszEM0SIIYJUiArTdDgcZiiKJsiQz0+4vYEgHYtnStFkDrRkMPR1qN0mxEDj6QJEC1IRimai0ZhC"+
                                 "IV+YnxseHhl4Ovjw8cCzwZGXrybWVldVKlUwGPL5fFa7k4qkcDug9ldI2k3CABNNJHOVIB1hmIjF"+
                                 "Yvl54Od//Xjt9n8Gn75aHZ7eej67PTq3M7bAG5vnj87xnr5Y6n8yPDE5YzAYoJ7BaAnHspjAUPuL"+
                                 "xOwSYSBARBPZaDLPzkCf78GD/qs3HwxObgxPb47OccaX+DMbBws7opVd2bpABVvmy+c44snVw1eL"+
                                 "+4Mvl16OTzudTqPR5PISyVw1RDEXh+wGIfASmWI4mgqGKD6P+88fep+Nr43Nb0+u7C5xxZxj7b7C"+
                                 "JtR5pWZSYaeVzghMbqMlJvJQ49kWmRZ35FNrwpHxpaOjI7fbbTBZE6ySF4XsBiHUo1m80Njo82t9"+
                                 "A0PTW1NrgrV9BcBOLEGtJ24ispZQwUaXbUzFzlQdTNUWrlipkilY0PnTMmt4V+Zc5Wtm1483t3Z8"+
                                 "Pr9Wb0pmywGCvIiSHSdE3I8kspBxeGio78nYyMz2/LZoT2aFSsZAxkaXwOOI1GH2SON9w5W6namB"+
                                 "1kjkpEaaJ3Js7Ou3d3a9Xq/J6qTC0RDN/GaM7SxhkKITmbLb7V1aWLjZPzg6x13ckYr0PoMvBcUc"+
                                 "kRqQbJGGhWmYwg0j3TDAqJbR7FsT3TCHG1amYWPqFqqiciSPVeSe1CUUSfR6fSAUSeVrMMwRvz/w"+
                                 "KT07SAjdMJc8PkKpVF66emtsngc8oc5vIrPQDfpg6GDQUw1tqKEJ1tVkXfW+qYN1bbCuD7G0lnDD"+
                                 "TFW17qzMEDuUux0OB9wymirEM2XEnnA0+TsQIk0jobtc7qtXe0dmd+a2RPsKp5HIshOvJRrYAAYq"+
                                 "JVFXEHX5xwzX8SlQdS1OU6imceZU1sy+UA2kE7mKimZi6RIgP5UqO6dhAKnP7nRvbmzceTQyuSLY"+
                                 "EZsU9qg9XIV0GKs2xI77fbaGgnhjcqLxLjDLSbY56/pARW3LKixJg9G8v7fvJRlAQkmUPh+VsVOE"+
                                 "yMuRRN5isfb0/vRigb/Cl4sMpM6ft4TrcDNIhxG38FgkJYxsqD4wXHzLzIqM70NwLVnTuAoqa/ZQ"+
                                 "akCSFEkVvmA0kizghsIvPoTsFCEqLLeXkEgkV2/cn1o94EmtMntMR5QMVP3NzCTfUKmDDZgGFmId"+
                                 "8tzwtv0RyM9RW5A1ta+stmalRjYlrq6tO7xBKppGkqQj8e4RxjNFg8kyOjI8OL66xJUeaQMyZ0pD"+
                                 "VLRBKFaT+6sn3rLUU5K4ixJXQeLMi515PJ+b1FVgzV088RRl3pLMV5EHqsADKqt2oKq25RXWrMZg"+
                                 "4fF4JrvXH4rCG1tB9dePjmiIihpJQqPR3r59Z3x5f/NQJzaFpY6MyJE7tGT3TRmBOXMAs2QOLZkj"+
                                 "a/bYmhXaWBO9tfZbXIcdtb6G7+NfCSzZQ1te5CgqrHmlOStUmNVqlehE6fRRTCKfyJQ+TBsdIQxH"+
                                 "E0wih8XBlZ7r0+uHPKlNYo2L7dkj6/+oQHviLih8JXWgrCUrhlDVSNVMdM0crluYOp5hJhpOW9cH"+
                                 "axqyqvRX5JDdXRQ68kfWnMiQkWpTuxKb3e7Y4PDMDh/iDSLqhwVARwgj8RRBRbVa7b9+6Jnfluwp"+
                                 "fWJbSmTPip0FhR8TtYaEbgo3zUzTwjStkaYt2rRHm473DVdgtgj7BXzNHG4a6SYSDNIGPFnjqahN"+
                                 "uSOV3+f3T88u6MxOMpyEKwZD9K+maUcIsVr3EpROp//35Z+Wd5UH2qDYnhbas3JvCUPEQDFcDBqj"+
                                 "b4M5Y00XLN50v2O4guuO2HucuC8GqomcofNVdZaCWBckCPLl+KTaYCOoOAhRynWJ0OMPgfDSlRtr"+
                                 "At2RISy2Z8T2nMxdBF5bN5atxQAqDyzR9MKSTV/L2NcJ9iI+baO29cS/ZSFR3PlqemtBqg8RJDn2"+
                                 "4pVSZwl0mdAfZNRq9eXeW5vH5mNTVOLIIk4iPKIEbUv3hq1FAiR/8jSQes9wxd9CPeeE2uykZWds"+
                                 "w+SrGm1FqYH0eDzQUKk1B6hY9zRED4aOZZAMb92+xxHbheaY1Jk7cRXk7gJiCQYKWSBOmw1gROqU"+
                                 "TJ8GYZm3lmav4Do+BSrL2RITssNpURVZPCyhTOdBCT49t6jQmLpKiBVTNFU8FoqePH68LXWC8MSV"+
                                 "k3sKSm/BQJYxUAwXg8bQ37BlTkOZUyp7Sr81vMYVGLDbnLgXEPPNjA03bO6qwVHQmt08Lnedw2sR"+
                                 "dtEP0WJC4+hIKF5fW53ZEgstcbk7r/QV1f6iLlB0xeq+xBvpAAAMgIVzp0zuNALLs4bXMFwHKoSF"+
                                 "nu9Bhup2V0XnyKIl93xkhLt3rNJb27G0S9kC0QyEJotTo9H0D4xK7EmlN9/GMxBFrGjb6gEPAGAD"+
                                 "WDR/GiuwFi+cxVsvcKWNCk7chf9BxhruQM3uKqusFE3T9+494O0L9RYX/AKEH64wOpItQIikH0+X"+
                                 "Dg4Oh4aGpfak2ldki1ISjYmSJVT2JxrneG02gCWKZ8niWap0loQV2bdAxae/hmQaHk/N4ikYrJ79"+
                                 "vd1XkzP7xyc2N4HiG/7fpaqt/TNoioolMpVK+WJ2QwP12nhU2U6XXUwllGlCvTYeYACWLp1lym8s"+
                                 "XW6hspBn55CYrgS8l2i4vZiiDB59fX2rWzyJQuslI6hLI/F0twmZeG5vd29yYkJioQ1kEerZ6Ioz"+
                                 "XHFHKoF4NZJrAq+tG9iylbNc9SzfslyFfQvmdyEpzNVww++rWX05i8O9y+f/MjzK4R/qTI5QJI2S"+
                                 "7cOCprO73Oig4L5KZEq9To+hGAJ5K1V2hCsQ0ButBGIVKlVLFE6Bly2zSIXq62LtdanGPuM1OM8h"+
                                 "cSPgq1SsQZB1F1nUWb0kSfb2Xltc5RxJFE5fiG1npItdXQHjx9geUaoYZFIrK2t6nW5ibhUNQidT"+
                                 "8USrvliVSFRDySqTqaVLp208sFUar6sN9rlcZznbkLgFuBFMqhGkaj6qZHCQ2N+419c3Pj3P4R9o"+
                                 "TY4gw0ZR7IV0mxC/Cg0xf3CP5+cX1CrVwhrXFQFeLRCvBRM1KlVn0vVYrp4tN9t4tebrepN9Bicg"+
                                 "gQ143IJoqhFiagG6aHKR2MwYGvzl2eDz5Y0diVzrIdBqLuK3PtVu61QsbYdT/DBCHCANZge80WQ0"+
                                 "zi+tu5kiEWcFDKdr0Ww9nqvHUoVsoVapnzZOXzfP/otnQAK4WD3LFE9jqTodrQbCeYPNEwqFRoaH"+
                                 "sH8zt7whEJ5YXQEamxno89OfbIF3kBA3Fb7RVlKPBb/FMv7qpc1mW15eURpdRLxEp6qRTC2Rrydz"+
                                 "tVyxUag0y9Vmo3HWaJ7VGmfl2mkm34inquF40UNGDWYbfA+T88nPv8wurvEFIoPVDRdADwodk880"+
                                 "vztK6G9vyGC9r1Sq0aiWyWQP7t1DDMTCfGNzW2V0hGL5SLqEu5Ap1PKlerFSL1XqxXItW6wks6Vw"+
                                 "POcmwlqDORAIHB8fXfr3peGx8dmldf6BSGdyEnQc964VYD7ZDu5sLG3fV+w0aTSYnuadnZ2FhYWe"+
                                 "np57d+8+evToQCAwGo2Hh4f7giO1zozVFh1JxpI5rJ5JinG4vBqdwWA0gU0qldy4fv3O3fsTs4uL"+
                                 "axyBUAb1gNdyv/Lv3NX3en0nUqzDiUgkAqrLP15+cP/B5NTM/PLGy4np+/f7x0ZHIY7BoLfb7Var"+
                                 "xWwy2e02LIjQ0haLxc9Hhq9cvnL3fv/4zAKk2+QKJAodfA+Ts9UF/kiN1tWMD7zjY5nD7k4mk1NT"+
                                 "Uz/+8OOzZ8+m5pZYKVa3Nrn7O7tHW7yDiam5h4+e3Lx5G20r2M2bt6729F776cajJz8jH0zPr8yv"+
                                 "bG7u7CPvIbN7CAZTF7MaTacL7gd3yg+xB3ZwIDEarOl0emtr69KlS0+ePJmZW5xeWN3Y2ROeqLEa"+
                                 "wMIcwz4QylA6I7MBY317b43DX9nkLm9wUY5t8QS7h2KkBLRhXH4KOzGYmYicrdDyOd97V8lOER4e"+
                                 "SJQKXSqVFolEUK//Qf/c/AJi4BZXoMCqLkBjsUOGE9AERTNWBgCWa0wyleGNqY24An+ze0j0QtHw"+
                                 "bSc9SIcDGp+JnN2ZpQGRUC4WyuPxBLbge3t6++70zc7MLqxsQBapUo8cjSSJKA+DO6HPiUYgXIug"+
                                 "E1jFtg2vkUXD8Wz7m9DtLdtFpTtH/f4anpyoBHuicDiCgAHfunH9xsT4xPomB+6EMAjF4Eit/bAE"+
                                 "dqrbh2lQ37EMkOit4W3LKji4gRXDBV2uG1WbWq3nbh+QRAilIxwPuWFsdGyHy5tdgn+xNWRrJV5m"+
                                 "Yr9e5mDLGo3Ad+2LpmKXMr7RaNna2HW5vIlE4sWLF8gNg4OD3B3uyjqHrSEVurc1ZPniceLbOb/b"+
                                 "LLXZnRvrfIvZjuC5vLz8w6UfBgYGNjc3+buC+eXN/SOpxemHX32+hvx2nk5FGmz0bm3uadTGdDoj"+
                                 "EAiA9/Dhw5XlFaFIjEyN+akx2oPh5G/WkH9QQhSc3J0DqUSVTCTVKvWVK1fu3b03PzcvlZ4srW2t"+
                                 "bvJOlHrs1LLhPlO64BGR74j67bM0INgXHR5II5EYSi1Ezls3b01NTiENbvP2ED8PRfLz+PnRLsN3"+
                                 "hOlILBWLZHzeUShIB4PB/v7+a73XXr54eYDHkXBmcQ3FCrI2ahE2fn76uERHIb9JQ5Vaz9nc83oD"+
                                 "0Wh0aGgIVfLw8DCfz5eeyFCdofJEXYJm+0XWOJ2D/HpCk8m6scaz2VypVGp2dhbR5enTpxwOR6FU"+
                                 "zS2to3w5URlQlKEoucga5w9H6HC4NtZ5ep0ZwZPL5aKwfvz48draGvZ9EV2W1reFUhUOELTLF6z8"+
                                 "Ogfwm3/56zQMcLb25DINCmupVNpe9S0uLCoUiq0dPtZ+6KAg+7Xb7Ews9ZuD6OgXvpgQ4d5kcSF+"+
                                 "xmIJs9mM0HLn9p2Z6RmpRCo4FM4srPIEbHRpd1A+ejiiozzfmvHRd0GV7PQQx8fHOK1zt+/u9Z+u"+
                                 "j78axxGzE5kCq1UO7wAbzlgctKPLR4/w/KEJURlj4iE8PnzItiR6rvY8f/58b29PrdZCPRTXMrUR"+
                                 "WwjsOvVj20BdZmv/3JfN0jYhZqBQqhwYeAr1sC0hlyvml9dRW4tkGlfrXEvroPKXncbuHPzXEGJt"+
                                 "ikCCTgSHt7++xcXkRPA8kiitLqz92Nr6o6evOsfw+b/8ZYRkkGLbJMkCDsuhdwIq7r6QJxC1WmA4"+
                                 "QsMeLvt8f7b7nF9GiPFhnrYh0bF0eEM4jIT2HgprdNfZrkSq0M2130Xu1xcTAgC7PIio7FIoWYDX"+
                                 "wRA5WfVwnvtip8svMrLv9Z2vIGR/GieR4GzIB63/AFPA6dXW3sgXt4m+F8Zn/s5XEnZhZN/rJ/76"+
                                 "hP8PZyTFQ8R/FtYAAAAASUVORK5CYII=")),0,$$.Length)))))
#endregion
#~~< RadioButtonCurrentLicenceStatus >~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
$RadioButtonCurrentLicenceStatus = New-Object System.Windows.Forms.RadioButton
$RadioButtonCurrentLicenceStatus.Location = New-Object System.Drawing.Point(92, 18)
$RadioButtonCurrentLicenceStatus.Size = New-Object System.Drawing.Size(199, 18)
$RadioButtonCurrentLicenceStatus.TabIndex = 82
$RadioButtonCurrentLicenceStatus.Text = $TextStrings.LicenseStatus
$RadioButtonCurrentLicenceStatus.UseVisualStyleBackColor = $true
$RadioButtonCurrentLicenceStatus.add_CheckedChanged({RadioButtonCurrentLicenceStatus($RadioButtonCurrentLicenceStatus)})
#~~< ListStatus >~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
$ListStatus = New-Object System.Windows.Forms.RichTextBox
$ListStatus.Location = New-Object System.Drawing.Point(20, 107)
$ListStatus.ScrollBars = [System.Windows.Forms.RichTextBoxScrollBars]::ForcedVertical
$ListStatus.Size = New-Object System.Drawing.Size(347, 222)
$ListStatus.TabIndex = 81
$ListStatus.Text = ""
$panelMenu.Controls.Add($RadioButtonInstallationID)
$panelMenu.Controls.Add($RadioButtonExpirationStatus)
$panelMenu.Controls.Add($PictureBox2)
$panelMenu.Controls.Add($RadioButtonCurrentLicenceStatus)
$panelMenu.Controls.Add($ListStatus)
$SplitContainer1.Panel2.Controls.Add($PanelKMS)
$SplitContainer1.Panel2.Controls.Add($PanelConfig)
$SplitContainer1.Panel2.Controls.Add($panelMenu)
#~~< ButtonOK >~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
$ButtonOK = New-Object System.Windows.Forms.Button
$ButtonOK.FlatStyle = [System.Windows.Forms.FlatStyle]::System
$ButtonOK.Location = New-Object System.Drawing.Point(821, 26)
$ButtonOK.Size = New-Object System.Drawing.Size(87, 23)
$ButtonOK.TabIndex = 55
$ButtonOK.Text = $TextStrings.Apply
$ButtonOK.UseVisualStyleBackColor = $true
$ButtonOK.add_Click({OK($ButtonOK)})
#~~< ButtonCancel >~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
$ButtonCancel = New-Object System.Windows.Forms.Button
$ButtonCancel.FlatStyle = [System.Windows.Forms.FlatStyle]::System
$ButtonCancel.Location = New-Object System.Drawing.Point(926, 26)
$ButtonCancel.Size = New-Object System.Drawing.Size(87, 23)
$ButtonCancel.TabIndex = 53
$ButtonCancel.Text = $TextStrings.Close
$ButtonCancel.UseVisualStyleBackColor = $true
$ButtonCancel.add_Click({Close($ButtonCancel)})
$LicenseSettingsform.Controls.Add($lblCoreConfigTitle)
$LicenseSettingsform.Controls.Add($lblDescript)
$LicenseSettingsform.Controls.Add($PictureBox1)
$LicenseSettingsform.Controls.Add($SplitContainer1)
$LicenseSettingsform.Controls.Add($ButtonOK)
$LicenseSettingsform.Controls.Add($ButtonCancel)

#endregion

#region Functions

function Main{
	[System.Windows.Forms.Application]::EnableVisualStyles()
	FormLoad
	$LicenseSettingsform.ShowDialog()
}

function FormLoad
{
	$SplitContainer1.Size = New-Object System.Drawing.Size(618, 344)
	$SplitContainer1.SplitterDistance = 155	
	$LicenseSettingsform.size = New-Object System.Drawing.Size(560, 500)
	$ButtonCancel.Location = New-Object System.Drawing.Point(450, 440)
	$ButtonOK.Location = New-Object System.Drawing.Point(340, 440)
			
	$panelMenu.Dock = [System.Windows.Forms.DockStyle]::Fill
	$PanelConfig.Dock = [System.Windows.Forms.DockStyle]::Fill
	$PanelKMS.Dock = [System.Windows.Forms.DockStyle]::Fill
	$Global:Shell = New-Object -Comobject("WScript.Shell")
	Get-Status
		
}
function lblStateClick($object)
{
	$lblState.Font = New-Object System.Drawing.Font("Tahoma", 8.25, [System.Drawing.FontStyle]::Bold, [System.Drawing.GraphicsUnit]::Point, ([System.Byte] ( 0 ) ))
	$lblConfig.Font = New-Object System.Drawing.Font("Tahoma", 8.25, [System.Drawing.FontStyle]::Regular, [System.Drawing.GraphicsUnit]::Point, ([System.Byte] ( 0 ) ))
	$LabelKMS.Font = New-Object System.Drawing.Font("Tahoma", 8.25, [System.Drawing.FontStyle]::Regular, [System.Drawing.GraphicsUnit]::Point, ([System.Byte] ( 0 ) ))
					
	$panelMenu.visible = $True
	$PanelConfig.visible = $False
	$PanelKMS.visible = $False
}
function lblConfigClick($object)
{
	$lblConfig.Font = New-Object System.Drawing.Font("Tahoma", 8.25, [System.Drawing.FontStyle]::Bold, [System.Drawing.GraphicsUnit]::Point, ([System.Byte] ( 0 ) ))
	$lblState.Font = New-Object System.Drawing.Font("Tahoma", 8.25, [System.Drawing.FontStyle]::Regular, [System.Drawing.GraphicsUnit]::Point, ([System.Byte] ( 0 ) ))
	$LabelKMS.Font = New-Object System.Drawing.Font("Tahoma", 8.25, [System.Drawing.FontStyle]::Regular, [System.Drawing.GraphicsUnit]::Point, ([System.Byte] ( 0 ) ))
					
	$panelMenu.visible = $False
	$PanelConfig.visible = $True
	$PanelKMS.visible = $False
}
function LabelKMSClick($object)
{
	$LabelKMS.Font = New-Object System.Drawing.Font("Tahoma", 8.25, [System.Drawing.FontStyle]::Bold, [System.Drawing.GraphicsUnit]::Point, ([System.Byte] ( 0 ) ))
	$lblState.Font = New-Object System.Drawing.Font("Tahoma", 8.25, [System.Drawing.FontStyle]::Regular, [System.Drawing.GraphicsUnit]::Point, ([System.Byte] ( 0 ) ))
	$lblConfig.Font = New-Object System.Drawing.Font("Tahoma", 8.25, [System.Drawing.FontStyle]::Regular, [System.Drawing.GraphicsUnit]::Point, ([System.Byte] ( 0 ) ))
					
	$panelMenu.visible = $False
	$PanelConfig.visible = $False
	$PanelKMS.visible = $True
}

function Close
{
	$LicenseSettingsform.Hide()
	$formMainMenu.Cursor = [System.Windows.Forms.Cursors]::Default
	$formMainMenu.enabled = $True   
}
#*****************************************************************************************************************************************************************
function RadioButtonCurrentLicenceStatus
{
	if ($RadioButtonCurrentLicenceStatus.Checked)
	{
		Get-Status
	}
}
#*****************************************************************************************************************************************************************
function RadioButtonExpirationStatus
{
	if ($RadioButtonExpirationStatus.Checked)
	{
		Get-Status
	}
}
#*****************************************************************************************************************************************************************
function RadioButtonInstallationID
{
	if ($RadioButtonInstallationID.Checked)
	{
		Get-Status
	}
}
#*****************************************************************************************************************************************************************
function ChkboxIPK
{
	if ($ChkboxIPK.Checked)
	{
		$TxtBoxIPK.ReadOnly = $False
	}
	else
	{
		$TxtBoxIPK.ReadOnly = $True
	}
}
#*****************************************************************************************************************************************************************
function ChkboxUPCI
{
	if ($ChkboxUPCI.Checked)
	{
		$TxtBoxUPCI.ReadOnly = $False
	}
	else
	{
		$TxtBoxUPCI.ReadOnly = $True
	}
}
#*****************************************************************************************************************************************************************
function ChkboxSKMS
{
	if ($ChkboxSKMS.Checked)
	{
		$TxtBoxSKMS.ReadOnly = $False
	}
	else
	{
		$TxtBoxSKMS.ReadOnly = $True
	}
}
#*****************************************************************************************************************************************************************
function OK
{
	$ServiceClass = Get-WmiObject SoftwareLicensingService
	$sCommand = [System.Environment]::GetEnvironmentVariable("SystemRoot") + "\system32\slmgr.vbs"
	$ButtonOK.enabled = $False
	$LicenseSettingsform.Cursor = [System.Windows.Forms.Cursors]::WaitCursor
	#
	if ($ChkboxClearPKey.Checked -eq $True)
	{
		foreach ($Service in $ServiceClass)
		{
			$Service.ClearProductKeyFromRegistry()
		}
    Write-Host -ForegroundColor Yellow "`n" $TextStrings.ClearKeyCompleted
    InfoForm $TextStrings.ClearKeyCompleted "8" $TextStrings.Info
	}
	if ($ChkboxRLStatus.Checked -eq $True)
	{
		foreach ($Service in $ServiceClass)
		{
			$Service.ReArmWindows()
		}
		Write-Host -ForegroundColor Yellow "`n" $TextStrings.Rearmed 
    $PanelConfig.enabled = $False
    RestartForm
	}
	if ($ChkboxUPK.Checked -eq $True)
	{
		$Cmd = "cscript //Nologo " + $sCommand + " /upk"
		$ListStatus2.text = iex $Cmd
		#Output to Logfile
		$TextStrings.LogCommandExecuted -f $Logdate, $Cmd | Out-File -filepath $logfile -append
	}
	if ($ChkboxIPK.Checked -eq $True)
	{
		if ($TxtBoxIPK.Text -eq "")
		{
			Write-Host -ForegroundColor Red "`n" $TextStrings.InputRequest
			InfoForm $TextStrings.EnterKey "8" $TextStrings.Error
		}
		else
		{
			$Cmd = "cscript //Nologo " + $sCommand + " /ipk " + $TxtBoxIPK.Text
			$ListStatus2.text = iex $Cmd
			#Output to Logfile
			$TextStrings.LogCommandExecuted -f $Logdate, $Cmd | Out-File -filepath $logfile -append
		}
	}
	if ($ChkboxASCW.Checked -eq $True)
	{
		$Cmd = "cscript //Nologo " + $sCommand + " /ato"
		$ListStatus2.text =iex $Cmd
	}
	if ($ChkboxUPCI.Checked -eq $True)
	{
		if ($TxtBoxUPCI.Text -eq "")
		{
      	InfoForm $TextStrings.InputRequest "8" $TextStrings.Error
			Write-Host -ForegroundColor Red "`n" $TextStrings.InputRequest
		}
		else
		{
			$Cmd = "cscript //Nologo " + $sCommand + " /atp " + $TxtBoxUPCI.Text
			$ListStatus2.text = iex $Cmd
			#Output to Logfile
			$TextStrings.LogCommandExecuted -f $Logdate, $Cmd | Out-File -filepath $logfile -append		
		}
	}
	if ($ChkboxEHC.Checked -eq $True)
	{
		$Cmd = "cscript //Nologo " + $sCommand + " /skhc"
		iex $Cmd | Write-Host -ForegroundColor Yellow
		#Output to Logfile
		$TextStrings.LogCommandExecuted -f $Logdate, $Cmd | Out-File -filepath $logfile -append	
	}
	if ($ChkboxDHC.Checked -eq $True)
	{
		foreach ($Service in $ServiceClass)
		{
			$Service.DisableKeyManagementServiceHostCaching()
		}
		
	}
	if ($ChkboxCKMS.Checked -eq $True)
	{
		foreach ($Service in $ServiceClass)
		{
			$Service.ClearKeyManagementServiceMachine()
		}
		$ErrorActionPreference = "SilentlyContinue"
		$PathAuth = "HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion\SL"
		Set-ItemProperty -Name KeyManagementServicePort -Path $PathAuth -Value 1688
    $ErrorActionPreference = "Continue"
    InfoForm $TextStrings.KMSCleared "8" $TextStrings.Info
	}
	if ($ChkboxEDPKMS.Checked -eq $True)
	{
	   $Cmd = "cscript //Nologo " + $sCommand + " /sdns"
		$ListStatus3.text = iex $Cmd
		#Output to Logfile
		$TextStrings.LogCommandExecuted -f $Logdate, $Cmd | Out-File -filepath $logfile -append			
	}
	if ($ChkboxDDPKMS.Checked -eq $True)
	{
		foreach ($Service in $ServiceClass)
		{
			$Service.DisableKeyManagementServiceDnsPublishing()
		}
		
	}
	if ($ChkboxSKMS.Checked -eq $True)
	{
		if ($TxtBoxSKMS.Text -eq "")
		{
			Write-Host -ForegroundColor Red "`n" $TextStrings.InputRequested
			InfoForm $TextStrings.KMSRequested "8" $TextStrings.Error
		}
		else
		{
			$Cmd = "cscript //Nologo " + $sCommand + " /skms " + $TxtBoxSKMS.Text
			$ListStatus3.text = iex $Cmd
			#Output to Logfile
			$TextStrings.LogCommandExecuted -f $Logdate, $Cmd | Out-File -filepath $logfile -append			
		}
	}
  $LicenseSettingsform.Cursor = [System.Windows.Forms.Cursors]::Default
	$ButtonOK.enabled = $True
	Get-Status
	$LicenseSettingsform.Update()
}
#*****************************************************************************************************************************************************************
function Get-Status
{
	$sCommand = [System.Environment]::GetEnvironmentVariable("SystemRoot") + "\system32\slmgr.vbs"
	if ($RadioButtonCurrentLicenceStatus.Checked -eq $True)
	{
		$Cmd = "cscript //Nologo " + $sCommand + " -dlv"
		$ListStatus.Text = iex $Cmd
	}
	if ($RadioButtonExpirationStatus.Checked -eq $True)
	{
		$Cmd = "cscript //Nologo " + $sCommand + " -xpr"
		$ListStatus.Text = iex $Cmd
	}
	if ($RadioButtonInstallationID.Checked -eq $True)
	{
		$Cmd = "cscript //Nologo " + $sCommand + " -dti"
		$ListStatus.Text = iex $Cmd
	}
}
#*****************************************************************************************************************************************************************
function InfoForm([string]$Messagetxt, [int32] $Font,[string]$Type)
{
  #Confirmation Dialog
  $Flag = $TextStrings.Info
  $Message = $Messagetxt
  . .\Common.ps1
  $btnOK.visible = $False
  $lblMessage.Font = New-Object System.Drawing.Font("Tahoma", $Font, [System.Drawing.FontStyle]::Regular, [System.Drawing.GraphicsUnit]::Point, ([System.Byte] (0)))  
  $btnClose.Text = $TextStrings.OK
  switch($Type)
  {
    $TextStrings.Info{$pboxInfo.visible = $true}
    $TextStrings.Error {$pboxError.visible = $true }
    $TextStrings.Warning{$pboxWarning.visible = $true }
  }
  $frmMessage.ShowDialog()
}
#*****************************************************************************************************************************************************************
function RestartForm
{
  #Confirmation Dialog
  $Flag = $TextStrings.Warning
  $Message = $TextStrings.RearmNeedsReboot
  . .\Common.ps1
  $lblMessage.Font = New-Object System.Drawing.Font("Tahoma", "7", [System.Drawing.FontStyle]::Regular, [System.Drawing.GraphicsUnit]::Point, ([System.Byte] ( 0 ) ))  
  $pboxWarning.visible = $true
  $frmMessage.ShowDialog()	
          
  if ($ReturnFlag -eq "YES")
  {
    $Temp = "Restart-Computer -Force"
    iex $Temp
  }
  else
  {
    $panelMenu.enabled = $True
    $ButtonOK.enabled = $True
    $ButtonCancel.enabled = $True
  }
}

Main

#endregion
