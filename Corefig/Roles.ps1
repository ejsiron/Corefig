Import-LocalizedData -BindingVariable TextStrings -FileName Roles.psd1
#region Constructor

[void][System.Reflection.Assembly]::LoadWithPartialName("System.Windows.Forms")
[void][System.Reflection.Assembly]::LoadWithPartialName("System.Drawing")

#endregion

#region Form Creation
#~~< Rolesform >~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
$Rolesform = New-Object System.Windows.Forms.Form
$Rolesform.ClientSize = New-Object System.Drawing.Size(1237, 749)
$Rolesform.ControlBox = $false
$Rolesform.Font = New-Object System.Drawing.Font("Tahoma", 8.25)
$Rolesform.FormBorderStyle = [System.Windows.Forms.FormBorderStyle]::FixedSingle
$Rolesform.MaximizeBox = $false
$Rolesform.MinimizeBox = $false
$Rolesform.ShowIcon = $false
$Rolesform.StartPosition = [System.Windows.Forms.FormStartPosition]::CenterScreen
$Rolesform.Text = $TextStrings.WindowTitle
$Rolesform.BackColor = [System.Drawing.Color]::White
#~~< SplitContainer1 >~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
$SplitContainer1 = New-Object System.Windows.Forms.SplitContainer
$SplitContainer1.Location = New-Object System.Drawing.Point(-3, 55)
$SplitContainer1.Panel1.Text = ""
$SplitContainer1.Panel2.Text = ""
$SplitContainer1.Size = New-Object System.Drawing.Size(1213, 665)
$SplitContainer1.SplitterDistance = 404
$SplitContainer1.TabIndex = 67
$SplitContainer1.Text = ""
#~~< SplitContainer1.Panel1 >~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
$SplitContainer1.Panel1.BackColor = [System.Drawing.Color]::White
#~~< Panel1 >~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
$Panel1 = New-Object System.Windows.Forms.Panel
$Panel1.BorderStyle = [System.Windows.Forms.BorderStyle]::FixedSingle
$Panel1.Dock = [System.Windows.Forms.DockStyle]::Fill
$Panel1.Location = New-Object System.Drawing.Point(0, 0)
$Panel1.Size = New-Object System.Drawing.Size(404, 665)
$Panel1.TabIndex = 1
$Panel1.Text = ""
$Panel1.BackColor = [System.Drawing.Color]::Gainsboro
#~~< RadioADD >~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
$RadioADD = New-Object System.Windows.Forms.RadioButton
$RadioADD.Checked = $true
$RadioADD.Location = New-Object System.Drawing.Point(110, 301)
$RadioADD.Size = New-Object System.Drawing.Size(19, 29)
$RadioADD.TabIndex = 65
$RadioADD.TabStop = $true
$RadioADD.Text = ""
$RadioADD.UseVisualStyleBackColor = $true
$RadioADD.Visible = $false
#~~< RadioRemove >~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
$RadioRemove = New-Object System.Windows.Forms.RadioButton
$RadioRemove.Location = New-Object System.Drawing.Point(110, 336)
$RadioRemove.Size = New-Object System.Drawing.Size(19, 26)
$RadioRemove.TabIndex = 66
$RadioRemove.Text = ""
$RadioRemove.UseVisualStyleBackColor = $true
$RadioRemove.Visible = $false
#~~< lblRemoveRoles >~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
$lblRemoveRoles = New-Object System.Windows.Forms.Label
$lblRemoveRoles.Location = New-Object System.Drawing.Point(12, 59)
$lblRemoveRoles.Size = New-Object System.Drawing.Size(160, 36)
$lblRemoveRoles.TabIndex = 63
$lblRemoveRoles.Text = $TextStrings.RemoveRolesFeatures
$lblRemoveRoles.Cursor = [System.Windows.Forms.Cursors]::Hand
$lblRemoveRoles.add_Enter({LblRemoveRolesClick($lblRemoveRoles)})
$lblRemoveRoles.add_Click({LblRemoveRolesClick($lblRemoveRoles)})
#~~< lblInstallRoles >~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
$lblInstallRoles = New-Object System.Windows.Forms.Label
$lblInstallRoles.Location = New-Object System.Drawing.Point(12, 23)
$lblInstallRoles.Size = New-Object System.Drawing.Size(148, 18)
$lblInstallRoles.TabIndex = 64
$lblInstallRoles.Text = $TextStrings.InstallRolesFeatures
$lblInstallRoles.Cursor = [System.Windows.Forms.Cursors]::Hand
$lblInstallRoles.add_Click({LblInstallRolesClick($lblInstallRoles)})
$Panel1.Controls.Add($RadioADD)
$Panel1.Controls.Add($RadioRemove)
$Panel1.Controls.Add($lblRemoveRoles)
$Panel1.Controls.Add($lblInstallRoles)
$SplitContainer1.Panel1.Controls.Add($Panel1)
#~~< SplitContainer1.Panel2 >~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
#~~< panelMenu >~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
$panelMenu = New-Object System.Windows.Forms.Panel
$panelMenu.BorderStyle = [System.Windows.Forms.BorderStyle]::FixedSingle
$panelMenu.Location = New-Object System.Drawing.Point(16, 12)
$panelMenu.Size = New-Object System.Drawing.Size(436, 300)
$panelMenu.TabIndex = 51
$panelMenu.Text = ""
$panelMenu.BackColor = [System.Drawing.Color]::Gainsboro
#~~< PictUninstallable >~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
$PictUninstallable = New-Object System.Windows.Forms.PictureBox
$PictUninstallable.BackgroundImageLayout = [System.Windows.Forms.ImageLayout]::Center
$PictUninstallable.Location = New-Object System.Drawing.Point(14, 11)
$PictUninstallable.Size = New-Object System.Drawing.Size(33, 32)
$PictUninstallable.TabIndex = 57
$PictUninstallable.TabStop = $false
$PictUninstallable.Text = ""
#region$PictUninstallable.BackgroundImage = ([System.Drawing.Image](...)
$PictUninstallable.BackgroundImage = ([System.Drawing.Image]([System.Drawing.Image]::FromStream((New-Object System.IO.MemoryStream(($$ = [System.Convert]::FromBase64String(
"iVBORw0KGgoAAAANSUhEUgAAABcAAAAZCAIAAABVQiKHAAAAAXNSR0IArs4c6QAAAARnQU1BAACx"+
                                 "jwv8YQUAAAAgY0hSTQAAeiYAAICEAAD6AAAAgOgAAHUwAADqYAAAOpgAABdwnLpRPAAAAAlwSFlz"+
                                 "AAAOwQAADsEBuJFr7QAABYZJREFUOE+NlFtMmmccxrFNzXazm11sV7vZliw7drtos6bZdrNsu1iX"+
                                 "pVmyNZvNPNcDKEc548epoHgAxBNMxGpFlA9EFBEBQZAqZ8SPwyegKEhP2mZb7OrafaZNT+vSPXkv"+
                                 "3/zy/J/n/75FSRi+s3/n3v379+/dO0D098Ffd+8e3D0oLj6G6OWXXjp69OixY8VHjhQVFxcXFRXt"+
                                 "7++j/q1xrRbfIq1uwJZVVeGIRJPVPjpl4ovamoUCBpdLAYAmFpPEoBMZDBaXm8vl4OcJhVCS2ey0"+
                                 "yzNlXVj0hzxQUqkzHlIEAgaPRwHYBAaDyua0SHpYXH4ul/8vCnj999v5vZvx7KYnlrAGow8oTP5F"+
                                 "BldAoAP1BGbXwKikbwBKpnPX9tLZHTidfYaFmgDBnd0b6UI+nEo5V2MW/6pSb+S3teFpzUQ6vYnF"+
                                 "qsERx0yOyrpGbxgq3Pozt/tHqnBrY3PrSRBKq9ONg7rufkVHd19H/0DviIYn6RG0t+OpdAKNSWUD"+
                                 "dFGX3hNdiW96k1uJ/O5W4Tq8sxeCnwoIBer1k6Y51aiG3yHDUDloGu98HaFVIkFCwVGYdA6X068e"+
                                 "tvnNvngQzqYyGRheT2/lZyNZCN58ZAelmzTMzC90y5VkQFCDpzZS2WWYpnaZjNvaiqcwkWqEo3Pj"+
                                 "zjCc2UylUnE4Y/PErl67uRjPDS9E4fXUAxBKbzCMaMCWDimGxKhuJDdQgDJ0k6Snr5l/kczksFuE"+
                                 "JGHXJVsgl99Z8q9bl2JxeCMCrV/fva1yww5v9CEFmQictfBFnTXYploCjQgI68jNMrmcyeXT2Txk"+
                                 "NEozQO3XLoQSyXQ+mdp0riQXvcnN7HYwlVfMR9ZiyNrCSLr61VzB6g+BFqvWbJmy2Yb1hj6lsk3a"+
                                 "RQP4nb29bTIZlsXnaRxXb+xZl+LReBpKZBBT2VxhfCWjc4SQSQ/TlcqV/HaxqKtHqR7Xzs4NaCYG"+
                                 "hocVly6xeEJxr7xXNcQTdZBkGp1nLZ/fcXqT9iuxWCKVymxYots9c5E1KI4CdXppjwJLpJVU1leg"+
                                 "iVgatwpHG1KrVWq1YnhYJJUJO6Wt4i4yW8AZc8BbhWAknkqlA4kNfWCjz+zXzS9ls1mko8nuflUj"+
                                 "iVleh6/EEDBNrIoGyuWJCTWoG5mYGNKMqUbVg6OjvcpBqnhwKpAJxdYtq9k+S1g14172h9Lp9MOO"+
                                 "2qVyDI5SUY+vwBAx5ObKRooGidw4PW4wjOn1ap3uMghe1mr7B4e6TQGFHZJPOpd8oVgs9nhf9FNT"+
                                 "beK+C/X4c79Wl9U0oMnNFY0UBGG0WCZnZ/WmGXB6Wms0agwGm3PR4vSYHVdi8cQDC48pk0Yjr0Va"+
                                 "WllfWo1BvKDJAOLFYDabHQ6T3U7v1J34eeJECXiyVPd5/fQZuv0s4PiOaf0eWDgDLH5Dd31FcsrB"+
                                 "IAqhcIXiGjSxtBZXg6cRmHwk3en5ebvHY3O7fiGOvlnie+Vc4A1S7Lgk86V6+1t94evx/ClF9m02"+
                                 "/Gp5+MOqAE7sPqRwBB2lVejKOmxZLbYWR63CUk02u8vncywv/4BWvlUbeY0AvS/JfKra+mxk++Rg"+
                                 "9t3OzOvEWPGPftQXjnfO2h9SAJ6oFkNCEEjADU2MCzgqMs5yOOwJBsqpI8dxvpPM0Glu+DQ3eIod"+
                                 "OMnwf0zwvle7/FHVlQ9KnJ+ct3J+WzlsWtjRS6AAFRcwP50vryfQq/H0eZfLvwZ5o1H97Hxbj0o7"+
                                 "ZfNFUq6VtWePF3J5oSiURJnMZgZHxOSLqQIJXSgVKPgMEcbqckdg2OZ2Dw4NQRD03F/yqY4SicSy"+
                                 "L6idnO1WqREQaQhd1lVic3vGQK3Nbo/H4y9EHG7do0uJZHI7l/cGwgMjGuOM6cmleiHoMeXJq8nk"+
                                 "4Xv///oH5PyHRrcZM4gAAAAASUVORK5CYII=")),0,$$.Length)))))
#endregion
#~~< LblUnistallableRoles >~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
$LblUninstallableRoles = New-Object System.Windows.Forms.Label
$LblUninstallableRoles.Font = New-Object System.Drawing.Font("Tahoma", 8.25, [System.Drawing.FontStyle]::Bold, [System.Drawing.GraphicsUnit]::Point, ([System.Byte](0)))
$LblUninstallableRoles.Location = New-Object System.Drawing.Point(62, 19)
$LblUninstallableRoles.Size = New-Object System.Drawing.Size(210, 17)
$LblUninstallableRoles.TabIndex = 68
$LblUninstallableRoles.Text = $TextStrings.Uninstallable
#~~< LblInstallableRoles >~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
$LblInstallableRoles = New-Object System.Windows.Forms.Label
$LblInstallableRoles.Font = New-Object System.Drawing.Font("Tahoma", 8.25, [System.Drawing.FontStyle]::Bold, [System.Drawing.GraphicsUnit]::Point, ([System.Byte](0)))
$LblInstallableRoles.Location = New-Object System.Drawing.Point(62, 19)
$LblInstallableRoles.Size = New-Object System.Drawing.Size(183, 17)
$LblInstallableRoles.TabIndex = 69
$LblInstallableRoles.Text = "Installable Roles | Features"
#~~< PctInstallable >~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
$PctInstallable = New-Object System.Windows.Forms.PictureBox
$PctInstallable.BackgroundImageLayout = [System.Windows.Forms.ImageLayout]::Center
$PctInstallable.Location = New-Object System.Drawing.Point(14, 11)
$PctInstallable.Size = New-Object System.Drawing.Size(33, 30)
$PctInstallable.TabIndex = 56
$PctInstallable.TabStop = $false
$PctInstallable.Text = ""
#region$PctInstallable.BackgroundImage = ([System.Drawing.Image](...)
$PctInstallable.BackgroundImage = ([System.Drawing.Image]([System.Drawing.Image]::FromStream((New-Object System.IO.MemoryStream(($$ = [System.Convert]::FromBase64String(
"iVBORw0KGgoAAAANSUhEUgAAABgAAAAbCAIAAADpgdgBAAAAAXNSR0IArs4c6QAAAARnQU1BAACx"+
                                 "jwv8YQUAAAAgY0hSTQAAeiYAAICEAAD6AAAAgOgAAHUwAADqYAAAOpgAABdwnLpRPAAAAAlwSFlz"+
                                 "AAAOwQAADsEBuJFr7QAABdlJREFUSEutlWtMk2cUx9kSPyxbsmQmi1+micui8wLqohMXI2qcyz5s"+
                                 "ZIub88IUUKFK7/fS9u2NXoBKGUzkZoFCC6X3ImChLfRqKb0Cbem9FChFNHFb9nVvBS9hLMuSPTl5"+
                                 "P5y8zy//8z/neZ63IpFI3v+yQFAkEp2dC8zMzPp8fpfLbX/sMJktk5Mmu/3x9LQrEAiEQqFYLJ5I"+
                                 "JDKZTCwWe7Fl88oDE/3SQQSn4VYVvPTmTQKp+tGEWSiVs+rqAS6XzGISaTQ8AOAoFCyZMjA4GI/H"+
                                 "/xEkVypn43GV0awe01vcPuts6L5YyqqvAzgcEoOBAwBUNQng1pKYnF5J/7+Anvz2fOnZWjCVsgXm"+
                                 "x92zOVBdHY3Do7B4GDILQ+bc75GqR8bnYwuL2WfBcBIsdJOuXGmgotXfnyefZH2xuGkmqHPNgCBm"+
                                 "XS2SSMVTqRgyhcpr4DS2IfCk5PJq9vmfi8/+SC4/jUajb7JyIJlCIZZK77W1N7V3togkXUot79dW"+
                                 "Np8PxRLwVBqWQuF3yXSuoDe25EtkwktrCytrvtTafDS5GaRQqYZ0eolczWtuRwJcGIVTDsfxBAIc"+
                                 "FcBTGXiA3ijVycy+EWfQE4pHo7HUwpI3tWqeTSYSr1k5RUq1ZmzC0twmxFCYlQg8ksiAoEn8pmYK"+
                                 "i4On0HBMLl828cgZjCcX4sm0wT4/5Y0vZp/22iI2b+iVqBxIoVY/EImZnLoqFKECjoUT6ZUoUsO9"+
                                 "FiLAoNRw8DQ6Q6ic9IaiyYxW7wvOx4PhhGcu7Yiu9Oh9kejGWL0AqVQiqZxMY5feRt1AEGFkdiW6"+
                                 "urmtDVtNZXBruQ0NaDpXoDSnM6vZ1bUJR9hgD8biqeRitt8R09l84XA4dzzWFQVWnoxPewYejkjU"+
                                 "WvnIaKdkoKXzAZ3Nq6lvaGhpYfBqUfwHWkcwmc7OBMDWp/W2eac/4Yostuq8oXBO1Eb7W0WSe909"+
                                 "PQrV0ITZ4HT1qdQdot7m9g4ygw1+G1tbiey7tL6xYGIxMJ8ECwyFc/O9sLTcbYkMWf2gqI32N7V0"+
                                 "YgjADSgWgiRiAQ6CRO+WSIRiSVNbO0/QzG9uZfL4mLp2lEaAGkUghmEMPc2fTA1OxVseecxT3g0Q"+
                                 "6FFHdz8cQ758vaIUPHI4ChRPFcvkfXK5SCrtkvQLxeLOvj5GveBgd8EBx8f57l1HjXtqdaYOtdHl"+
                                 "9qbT6ZceqdRcfjMEir5eASuDoqsI9Ds4qlSlGtRoB1QqiULRJ5OBAQr8fODIR853D/je+9J8UG7Q"+
                                 "vDncG3PEqfulrAJ6uQxSgSKhgdoqPE35cFgzOqocHlYMDcm02kGNRqpWFymOF87u+C66+0d7oXXG"+
                                 "unmylRoNg80vhyAhKNJtDAVOYsIINK1ON2wwPNTrmQrO1d6Sy6KrF7sunVAcLInnI9OFZa4zVeO3"+
                                 "8BNIMOodnA2PQFBNbRMClzO7EoHDVjMQRPqI0ai3WsfM5nOys4emPznq310cPgRNncYvnqJnztev"+
                                 "XKQuf1OaOHE28OlJa0EwHHxRmkZLZ9+trMKUVVSVlEMg6GoogTZmMpumpkaNE6ckJ/e4PygMbL8S"+
                                 "34tJf1G9eAaVLvw5sf90cMdO17Z3JvM+0x94DWJyBddv3Lly7WbpbSSMSIcR6Aarze7xGOy2r+Rn"+
                                 "riZPoJbPAdliZuZ75EIhSLwUPX42lH/YtW/f5L6juvwNkEqjBZi88pzZlRVIAgbgwEn0SceUc3bO"+
                                 "4pxmKtk/iS7ARiEkM+aCtag0cbhwbnvRVAHcVEm0osDgO196NCCT0dmCGn4rmdsIw1MJNB6aUmOe"+
                                 "nvaGQuDV3yMRWyyW9U5fe/xtUWDnh463j1n22wO2zV3zeL3CPlk1swHHuktiC+imYoKwxOZ2GyxW"+
                                 "UW+v3+9/teEH29e7nO9v0+Ud1m8FWv8vlUo5Pb4Rg6VTrECQWYNKtdFo3HTVF5vPH7EX7B3de2z4"+
                                 "0BaKtnpeouBb9ve80Nu+7kvtFGsuPLe5tC3fqf+a/AtgX/XLQCMmtwAAAABJRU5ErkJggg==")),0,$$.Length)))))
#endregion
$PctInstallable.add_Click({PictureBox2Click($PctInstallable)})
#~~< ProgressBar >~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
$ProgressBar = New-Object System.Windows.Forms.ProgressBar
$ProgressBar.Location = New-Object System.Drawing.Point(14, 282)
$ProgressBar.Size = New-Object System.Drawing.Size(405, 13)
$ProgressBar.Style = [System.Windows.Forms.ProgressBarStyle]::Continuous
$ProgressBar.TabIndex = 62
$ProgressBar.Text = ""
$ProgressBar.Visible = $false
$ProgressBar.BackColor = [System.Drawing.Color]::LightSteelBlue
#~~< ListRoles >~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
$ListRoles = New-Object System.Windows.Forms.CheckedListBox
$ListRoles.CheckOnClick = $true
$ListRoles.FormattingEnabled = $true
$ListRoles.Location = New-Object System.Drawing.Point(14, 47)
$ListRoles.Size = New-Object System.Drawing.Size(405, 228)
$ListRoles.TabIndex = 60
$ListRoles.Sorted = $true
$panelMenu.Controls.Add($PictUninstallable)
$panelMenu.Controls.Add($LblUninstallableRoles)
$panelMenu.Controls.Add($LblInstallableRoles)
$panelMenu.Controls.Add($PctInstallable)
$panelMenu.Controls.Add($ProgressBar)
$panelMenu.Controls.Add($ListRoles)
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
#~~< PictureBox1 >~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
$PictureBox1 = New-Object System.Windows.Forms.PictureBox
$PictureBox1.BackgroundImageLayout = [System.Windows.Forms.ImageLayout]::Center
$PictureBox1.Location = New-Object System.Drawing.Point(5, 2)
$PictureBox1.Size = New-Object System.Drawing.Size(47, 52)
$PictureBox1.TabIndex = 50
$PictureBox1.TabStop = $false
$PictureBox1.Text = ""
#region$PictureBox1.BackgroundImage = ([System.Drawing.Image](...)
$PictureBox1.BackgroundImage = ([System.Drawing.Image]([System.Drawing.Image]::FromStream((New-Object System.IO.MemoryStream(($$ = [System.Convert]::FromBase64String(
"iVBORw0KGgoAAAANSUhEUgAAAC0AAAAxCAIAAADBbLctAAAAAXNSR0IArs4c6QAAAARnQU1BAACx"+
                                 "jwv8YQUAAAAgY0hSTQAAeiYAAICEAAD6AAAAgOgAAHUwAADqYAAAOpgAABdwnLpRPAAAEFpJREFU"+
                                 "WEfNmPdT4nmax/f+h/srrupqr2br7qervaqr2aqdu9qr2a3a2Zne6WB3i6kNKKBkJEjOSgYBFVRU"+
                                 "ghhQMQIGDJgT5qwkFSTDfejpGenZmZ7erflhPvWtb4no5/v6PuH9PJ/nn7LZ7K9+CQtw/BLWr34J"+
                                 "EDmffCxHOp3NXdm8O/jws608DvCYRCqdyKYTiXf3VDadzGSSqVQqnYonUslEKpFOJd7eU8lUPJlJ"+
                                 "ptOpTDaZSSeT4C+zydTbK51NJbOJt9Afvb7lSIMdk8Hr4MnR8cnB2cnB8dnh6dHh4ZH3YN+7u7W1"+
                                 "6Vla87g983MLs86ZlYXlpRXP+sq6d3P7aOcgeH16eX51fXIZ9AXvA8FAIBD23cci8WQsmc18LMij"+
                                 "PSK3weZmtbzDoursVcqb5XK1XNkslynVmjZDl2XI7jANTclVWq6wiSNo5Aoa2Y1itqBR0ChtEonB"+
                                 "EkgUEqlSLlcolCp5s7qtTX+0580mkjkLfcR65Ljz+7HEhtcNwv/8qvC3n372b5/8+7/8+teffPKb"+
                                 "z//0x9aWtqPTa/fGbpNcy+YKqSw2kcGopzJwFCqSSKzDkOAYHAKDr65DViHqqmprS2G1KAx+ZX4h"+
                                 "G03kfPQR65HDf30jkipuU9nmrgGWxsCQNLOF0pbW7onppbXNvZ2zG5vbw5Mo2fwcB43FIVIZeAoN"+
                                 "S6LUEYhIQj0cQ6xGIpEEMopALq1GIdC45cUVECKp5N/JEfLdYFBIgB6JRC4CQe/p+e7R5cn59fbx"+
                                 "5eLe0fTGjtXl5klUbL6IyuI0MLkkBpPJEzWweVQ2H0dl1eJJBDprzLE8Ob2m0ZmZnKalhdVsLBUP"+
                                 "x7MgTEAUfzBW8uxxc1NRhbi9vYtG06FEMnD3cH7t3zy58HiPnete1+qexbHAkyiAX2gcHonJoHMb"+
                                 "BdIWlkBG48rxdFktjqlqsyx49hYWNjKp7N1tfHf3/PjEf3riu/XfhYPheCT+AR89coTecUSCkaj/"+
                                 "LnJ54zs88a3vnc1vHTpWveNrOxbHYs4eAhGFya6ncmBY8qtCSEHBq6fPIE++LioqgfXaXc8KK/7j"+
                                 "t38gNrBuA3fAtJlMNhzJ7u4FNnavfeehD2TQe/ZA4Qg5vyRS/mj4zBfaO7/aPDyf39h3eLyTq/sW"+
                                 "1zxPpmULhRQ6qw5LqoChiTQ6gcLE09hVtTBkPWM7kMIQGP/16e/rUISd3VOwVTCcjkSzt9GM7yF7"+
                                 "eOYP+nzZH8mefHv46Ux2+O5hZXNz3Xu8sbu/tn04v7XnWtsaX96a3Tma8Z4KmnVcoYjK5cLRpBIo"+
                                 "EkemECkMFJlUg8bwtZb5PZ911NVqsMwsbV74H25CiYtg8vAmeuqPHt48bJw+HB/50rGHHwyUR46g"+
                                 "39dAY9ptkyRqA5lEojQwaAw2hcPjyjSS1s7W7n61aQCKwjeKREyBsBZLeAmpQJOoRDoTpExpBUxr"+
                                 "XzXN73i8l/vX4VNfesl7ubIf2L95iMVTwD3haGb1+GFh4/z67CoXtn8jtXkcPh+Hzzs6u56YXhgc"+
                                 "ceq7+lhiFY7KhuNocBwdReWWIklPC4qapDI6j08kN0DewHBkBoXJqG+gQirqWie3zM6t8ZWD6Y2T"+
                                 "4cWDkXnv/uVdMv1tkmTS66ehkfXL5a2T5H0YFJDvacojx60vwKSzjX02lb5d26pvbtazGmW4Bk4l"+
                                 "ilGGIcNJ3KJaWsHLsiaVksNrZHEFlQh8LbYBaAmeTEVQFG2jy+2Tq2bXjtW949i8uApF0ql3b/0N"+
                                 "y2Uw3rd6ObJ4crR7nAY6m3lPVx45AsAeXN7mmre93SjginHY+tJy6IvnL54/Ky4shtaiCEgso6io"+
                                 "TN7cyhEI6QJBDYoAR+KYfF55VR2nxyGxLipsS1Mrh/fhvHcFwhFLhoKpNBCRbGZ6xy+Z2uudWg/e"+
                                 "BEDhzjfJI8e9LyBualrePBgamei1jrZ2D/BV3Ti2DMWS4JgiPFNUiWI/LyxrVut5Iimb31SLrMcS"+
                                 "6FxRU0llFdvkZhtnDGNr+VuDon0XBBCJXGCC0p3KBiLxFqdX2L+xvLadjceyeRbJi4+Av1HQpO/p"+
                                 "ZdL59WQGAkmoqEBDSqvelCPKYHgEgVmNob58XaZStwmkMhaHXwatradyeRIpvp5UBifxB1b1Y0ug"+
                                 "/gOUeDwdvk/eh+IJIKPZbDSWvPNnoyBgs9m1ozve6L5uYO7Bd/sj9ggERBL57NKObdDZ2dUnEGmR"+
                                 "DQIYmlmFbajG0utIHCia/gpSodbqRTIVmc569bKMQmUIZRI2n1dSCUWLjY19i3Pbl2D3+7tE+A4A"+
                                 "ZRLJdCiUjNwnQaiAZiUTS4ejaYvnrLFvfWF6PR2NZb8N5Lz48PvpdLrdscjmCeuQhILCyi8LIF+/"+
                                 "LIdUICrg+FoSrwxJeVVUrm5tUzS3gSL3oqAYCGujTMURiug0ZnE1ktRi55pmzy5yL5qIJW/vkrFI"+
                                 "MhYDCJnb20TsPp1JvA3YwL3aedxsnT86PMikUhmAksnrC29vblgMFtjDvrzWPTQlam5lc8T4BhqN"+
                                 "zuc1iptULWpdD4pM1Wpb5VotgyWAQKq53CapSiUUSYUiGZpYX4pkYnRO3egKeFgskniIAP9nwvcJ"+
                                 "//V9OJz7GbgmHMpF7NyOTzzqNfY54tF4OpFr7vLsceOnk6ixbPbwPrZweOnybA05Z21T03bn3Lhr"+
                                 "dnLOvbi+JW4xKNV60OU0KZQINInOFMhUGqFUJlY0CyWyGjSuRmDCdzj3LoPgYalY9uL8PhSMg8eA"+
                                 "jwF/3Hf9kIjlIubcH9dMe5sGV5YXVpNvFTZPP/y+RqncG4iOLm2MTq/3OaYHXXNjbo9jfnV+dW9h"+
                                 "e981v6Jq7Wht61JpddqOLhKNXVaFFSnlCrVOKJc3KZVMBqsCTSeZPPL+6WgslXhIxqK5lIhHkmen"+
                                 "AWCYfEWf3LqRjR3qLbMPt3eg4c2rL4FAIw/UMF5ZeU11HRrXQOE1ybRdJottfHDSOTa95FxeF8jV"+
                                 "ug6DpqNDq2+XKtUkIgiMphZ9d6u+W9dpUmpbkAQ6VjVepwEvcpYrmeHo1U3Ud33/tzVlZO1S7jqU"+
                                 "DW9PzywAl+Vx+Hz8RnG3yS5VtJKIrNJyWGEZtOQN4k1VHSimNBqvgSUsLK/u6jLrOzr1BqOm3aTQ"+
                                 "thGI9CaFrkVv1hhsGr2VSOKUweoxmmGW2XPpvwetTAooR55kAa9c3sUtS+dK56FkeFNtGD49Ocim"+
                                 "8uwBdJ0vEKjUXYR6GhyBeV0EBcnyohxZBCNAMQw4SViGYrwuhhqMpo5uM7jrO436zm5NWzuTw8Hi"+
                                 "ySgMjkxlKjRtIJnhTBmjd31yNVf6H1c6exWKzWxdt0wfSu27IoOrw2Cbm3XH7iPvxSloDsQSkcOx"+
                                 "3CjRIDGUAkjVF18VPH36+sVzSHFJBWg4arH04vJqo6W3y9JvNPd3GE3tPeaOLlO7oVvfYWrrMOgM"+
                                 "ho5uk0ZngKOIeN20buYs/PBO4yPx9MpBoM19InMe8q1Lyk7r1PBI4OosHX+nqXn9ui8gEDaqmnug"+
                                 "tXh4HQmKYaGpIjRThiBx4SR2LZFfhWK8Kq3usViNVqvJOtDVawVAPSZLu8lkMAAacwcAMpg6e/rY"+
                                 "PEElQy60e8d2rq5D8Yubh4HVU9nUIceyIG4f6LMOnOxv5SIGSD04vL1d+XXfL5HIunpGifVseA2i"+
                                 "qLDky6+fPXny7K8vS4uLEeUoMgxDg5TCTL391n5b38Cwqd9m6rNZAI0ZAFm7TH0gprvMfYBM12Pi"+
                                 "gf613a6eOVE79jTTR/zhHY6ifdBi9p17M8m3cvb+euQIB/wisVSlMSKRFHhtQyWaiSDwYERwcdFk"+
                                 "LpUuwFA4r8tggGB4xG4bnrAO2fsGhyz9g70DgybroLnP1tM7aO7tt1iHANb4qE3Z1sO374onrxgt"+
                                 "Ewppx+7qMhDX3NNzh+Qf5wj6/SKJUtPah0CSil6X/P53f/jv3/3Pn758/qqoohxBAt6pQrEAR+/g"+
                                 "iG18cmhsfNA+YbPZbbZR69CIdWCkb9De22/vHxwcGBrusfRvbm2ve9w6tU4maXUPT0YCt0A3s+Aw"+
                                 "/COH3jx7+P1imUyt6kKiyEg8o7aeXUugQWtwpeW1b6DIahQRjqVBKmB9tuFRh2ti3DEy4Rwanxq2"+
                                 "uwZGJwaGx2z2icGRcfCtIeeg3kX3QjYWvbnwX51eJL4xQ+ZD5+78/tSvkDdLpLrnL4q++OLrJ09e"+
                                 "FEAqQNKW1zVA8TwEWVCFZ0HKYUPD9unZuUnHzJhzbnjKMeyYHXE6xiddo5Ou3gG7vr1botR2GS2L"+
                                 "nuXo7V06Hs/Go7m6+lPre/ZQqlTGekoThdIIheMKyxEABQIpraiEYbEUNIEG/DJkn3TML7hm5x0z"+
                                 "bsf03IRr1jEzPz41Y+yzysGZvEUHUqbH2OecdF6fnoWu/DcXvpDfB7qPD48h3rMHKBVCqbq0DF5S"+
                                 "Bi8oroZUosuRNAJTXM+TUdhyTAO/sAxmG5mYXVienl+ecbsds/Njjpkuk1mt1jar1KDQALXV6Xo6"+
                                 "jJalRU/g7Ozi4PgaZG0INMY/kCP5NnrvvC+RKUXiTmgNGo4kV8HQpVXwv3794su/PH3yArBha7DM"+
                                 "wkrYwMjY/PLanGd5dnHF5fZ0dpnlmraOHpO2tUPdChSkt629e9Qx5xx3rnlWg1eXsYdwNvUTEO/p"+
                                 "R8jvl8tVMllLcXH5n7969eWTV28q0TA0GYpiVCCJdQRWHYlfWAEbGRtbXt+eW1lxL6/OrSyPTrta"+
                                 "9QapSt3ZbWxpM7S3d0+4lwxmi22g3w8i9CGRjYMJ009FR76OgfmHAsxeVJ3ViHpEXX1hSfWzFxCQ"+
                                 "tuD4CilHQJFkOJ72shw2MupY2dxZXNtYWt8Ed+vQsEbX2d5l0bZ1mnpto5NOhUIFNOTs+DgZ+2kz"+
                                 "fAf4nl9AvghFij/+358hZdXQOmoFilGJZeDoPAKNhyMywFUKRdnHJ1d3dj0bu57N3ZX1HZd7odNs"+
                                 "kShUk1MztrExLps/NToevg2DmdrHmOEHOEIBv1Sq0LZ216Go1VDUq8Liz//3808/++wvzwpKatCw"+
                                 "enYVgf26ombM4dzyHqxv7a9uez3rW0Ojk8beQefcgkQikYpFZ4cnyehHDaJ+VNdDPj+FyeULmunc"+
                                 "5ialQShtY4s0tdj65wUlJW9gtXVUPElaUokeGXdsH51s7e5v7h3sn17snd0Mj00hMRhzt/HhDoQk"+
                                 "mAD9dDR8qL6EgnfgnRAoMgJDp9DFGKoIzxbTxS1CpZkt0Zscsh5bQ0E5amzCtXN04T06Oz71LW7t"+
                                 "iRVKJA5zsb+X2/rbg+Q/API4t0w+RDdW14x9I7xGVR2BA8cxawgsLE1E4auqkThp9l810X8uK6gd"+
                                 "GR2/i6eOji+NZquQx+/t6Y6EQilwfProEeUPUn7HkRsUg5Nx9D5ysHc0D9pj52KneQTIF5omxFP5"+
                                 "FcOvIFNP31Ri3avb7vUdsVyl02gvT992XH9nSH6Q47svwRz4m0BPZR5uo1vb+3NLq+6Z9QGtiwzv"+
                                 "ePlFZbfR2qzVzE5MxcPfVK9/wAk/8C95c+3vfQveMlemc1MUUCmj9+GT46ux0Un33ELi4RuCnwnh"+
                                 "7XN/nOM7rJzZH3PgXfUGv/xZ1/8DzNdkHkG1UWUAAAAASUVORK5CYII=")),0,$$.Length)))))
#endregion
#~~< lblFirewall2 >~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
$lblFirewall2 = New-Object System.Windows.Forms.Label
$lblFirewall2.Font = New-Object System.Drawing.Font("Tahoma", 8.25, [System.Drawing.FontStyle]::Regular, [System.Drawing.GraphicsUnit]::Point, ([System.Byte](0)))
$lblFirewall2.Location = New-Object System.Drawing.Point(94, 31)
$lblFirewall2.Size = New-Object System.Drawing.Size(266, 23)
$lblFirewall2.TabIndex = 54
$lblFirewall2.Text = $TextStrings.WindowDescription
#~~< ButtonCancel >~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
$ButtonCancel = New-Object System.Windows.Forms.Button
$ButtonCancel.FlatStyle = [System.Windows.Forms.FlatStyle]::System
$ButtonCancel.Location = New-Object System.Drawing.Point(926, 26)
$ButtonCancel.Size = New-Object System.Drawing.Size(87, 23)
$ButtonCancel.TabIndex = 53
$ButtonCancel.Text = $TextStrings.Close
$ButtonCancel.UseVisualStyleBackColor = $true
$ButtonCancel.add_Click({Close($ButtonCancel)})
#~~< lblCoreConfigTitle >~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
$lblCoreConfigTitle = New-Object System.Windows.Forms.Label
$lblCoreConfigTitle.Font = New-Object System.Drawing.Font("Tahoma", 8.25, [System.Drawing.FontStyle]::Bold, [System.Drawing.GraphicsUnit]::Point, ([System.Byte](0)))
$lblCoreConfigTitle.Location = New-Object System.Drawing.Point(71, 9)
$lblCoreConfigTitle.Size = New-Object System.Drawing.Size(253, 20)
$lblCoreConfigTitle.TabIndex = 52
$lblCoreConfigTitle.Text = $TextStrings.WindowTitle
$Rolesform.Controls.Add($SplitContainer1)
$Rolesform.Controls.Add($ButtonOK)
$Rolesform.Controls.Add($PictureBox1)
$Rolesform.Controls.Add($lblFirewall2)
$Rolesform.Controls.Add($ButtonCancel)
$Rolesform.Controls.Add($lblCoreConfigTitle)

#endregion

#region Functions

function Main{
	[System.Windows.Forms.Application]::EnableVisualStyles()
	FormLoad
	$Global:Install = $True
	$Rolesform.ShowDialog()
}

#---------------------------------------------------
function FormLoad
{
	$SplitContainer1.Size = New-Object System.Drawing.Size(618, 304)
	$SplitContainer1.SplitterDistance = 170	
	$Rolesform.size = New-Object System.Drawing.Size(620, 440)
	$ButtonCancel.Location = New-Object System.Drawing.Point(502, 375)
	$ButtonOK.Location = New-Object System.Drawing.Point(391, 375)
		
	$panelMenu.Dock = [System.Windows.Forms.DockStyle]::Fill
	LblInstallRolesClick
}
function Close
{
  $Rolesform.hide()
  $formComputer.enabled = $true
}
#*****************************************************************************************************************************************************************
function CheckConfiguration($FeatureName)
{
  $processStartInfo = New-Object System.Diagnostics.ProcessStartInfo 
  $processStartInfo.FileName = "DISM.exe "
  $processStartInfo.Arguments = "/Online /Get-FeatureInfo /FeatureName:" + $FeatureName
  $processStartInfo.UseShellExecute = $false 
  $processStartInfo.RedirectStandardOutput = $true 
  #
  $process = [System.Diagnostics.Process]::Start($processStartInfo)
  while (!$process.StandardOutput.endofStream)
	{
		$myoutputline = $process.StandardOutput.ReadLine()
		Write-Host $myoutputline
		# for localization, convert the following line to search for a string item that indicates a restart is pending
		if ($myoutputline.Contains($TextStrings.PendingRestartSearchString))
		{
			Write-Host $TextStrings.RestartRequired $FeatureName
			$Global:RebootRequired = $True
		}		
	}
}
#*****************************************************************************************************************************************************************
function OK
{
  $ButtonOK.enabled = $False
  $ButtonCancel.enabled = $False
  $ListRoles.enabled = $False
  $ProgressBar.Visible = $True
  $Global:RebootRequired = $False
  #
  $Rolesform.Cursor = [System.Windows.Forms.Cursors]::WaitCursor
  #
  if ($RadioADD.Checked)
  {
    $Step = ("100"/($ListRoles.CheckedItems.Count))
    $ProgressBar.Step = $Step
    foreach ($Role in $ListRoles.CheckedItems)
    {
		$String = $Role
		$Temp = "cmd /c Start /wait /Min DISM.exe /Online /Enable-Feature /FeatureName:" + $String + " /NoRestart"
		Write-Host "executing " $Temp
		$RetVal = iex $Temp
		$ProgressBar.PerformStep()
		CheckConfiguration $String
		#Output to Logfile
		$Logdate + " Command Executed: " + $Temp | Out-File -filepath $logfile -append
    }
    $ListRoles.enabled = $True
    $ProgressBar.Visible = $False
    $ListRoles.Items.Clear()
    Get-Status $True
    $Rolesform.Update()
    $panelMenu.enabled = $False
    if ($RebootRequired -eq $True)
    {
      RestartNow
    }
    else
    {
      $panelMenu.enabled = $True
      $ButtonOK.enabled = $True
      $ButtonCancel.enabled = $True
    }
  }
  if ($RadioRemove.Checked)
  {
    $Step = ("100"/($ListRoles.CheckedItems.Count))
    $ProgressBar.Step = $Step
    foreach ($Role in $ListRoles.CheckedItems)
    {
		$String = $Role
		$Temp = "cmd /c Start /wait /Min DISM.exe /Online /Disable-Feature /FeatureName:" + $String + " /NoRestart"
		Write-Host "executing " $Temp
		$RetVal = iex $Temp
		$ProgressBar.PerformStep()
		CheckConfiguration $String
		#Output to Logfile
		$Logdate + " Command Executed: " + $Temp | Out-File -filepath $logfile -append
    }
    $ListRoles.enabled = $True
    $ProgressBar.Visible = $False
    $ListRoles.Items.Clear()
    Get-Status $False
    $Rolesform.Update()
    $panelMenu.enabled = $False
    if ($RebootRequired -eq $True)
    {
      RestartNow
    }
    else
    {
      $panelMenu.enabled = $True
      $ButtonOK.enabled = $True
      $ButtonCancel.enabled = $True
    }
  }
  #
  $Rolesform.Cursor = [System.Windows.Forms.Cursors]::Default
}
#*****************************************************************************************************************************************************************
function RestartNow
{
  #Confirmation Dialog
  $Flag = $TextStrings.Warning
  $Message = $TextStrings.RebootWarning
	. .\Common.ps1
	Message
  $btnok.text = $TextStrings.RestartNow
  $btnClose.text = $TextStrings.RestartLater
  $pboxWarning.visible = $true
  $frmMessage.ShowDialog()
                  
  if ($ReturnFlag -eq "YES")
  {
		$Temp = "Restart-Computer -Force"
		
		#Output to Logfile
		$TextStrings.LogCommandExecuted -f $Logdate, $Temp | Out-File -filepath $logfile -append
		
		iex $Temp
	}
	else
	{
		 $panelMenu.enabled = $True
		 $ButtonOK.enabled = $True
		 $ButtonCancel.enabled = $True
	}
}

#*****************************************************************************************************************************************************************
function Get-Status($Value)
{
	if ($Value -eq $True)
	{
		$dismTest = $TextStrings.Disabled
	}
	else
	{
		$dismTest = $TextStrings.Enabled
	}
	
	$processStartInfo = New-Object System.Diagnostics.ProcessStartInfo 
	$processStartInfo.FileName = "dism.exe" 
	$processStartInfo.Arguments = "/Online /Get-Features /Format:Table"
	$processStartInfo.UseShellExecute = $false 
	$processStartInfo.RedirectStandardOutput = $true 
	$processStartInfo.CreateNoWindow = $true
	if (Test-Path variable:matchedArray) { Clear-Variable -Name matchedArray }

	$process = [System.Diagnostics.Process]::Start($processStartInfo)
	while (!$process.StandardOutput.endofStream)
	{
		$dismOutput = $process.StandardOutput.ReadLine()
		if ($dismOutput -cmatch "\|[ \t]$dismTest")
		{
			$matchedArray += @($dismOutput -creplace "[ \t]*\|.*$dismTest")
		}
	}
	
	#
	foreach ($element in $matchedArray)
   {
     $tt = $ListRoles.items
	  
     if (-not $tt.Contains($element))
#     {
#       #Do Nothing
#     }
#     else
     {
       $ListRoles.Items.Add($element, $Null)
     }
	}
	$process.WaitForExit()
}



function LblRemoveRolesClick($object)
{
	$LblRemoveRoles.Font = New-Object System.Drawing.Font("Tahoma", 8.25, [System.Drawing.FontStyle]::Bold, [System.Drawing.GraphicsUnit]::Point, ([System.Byte] ( 0 ) ))
	$LblInstallRoles.Font = New-Object System.Drawing.Font("Tahoma", 8.25, [System.Drawing.FontStyle]::Regular, [System.Drawing.GraphicsUnit]::Point, ([System.Byte] ( 0 ) ))
		
	$panelMenu.visible = $True
		
	$RadioRemove.Checked = $True
	$RadioADD.Checked = $False	
	
	$PctInstallable.visible = $False
	$PictUninstallable.visible = $True
	$LblInstallableRoles.visible = $False
	$LblUninstallableRoles.visible = $True
	$ListRoles.Items.Clear()
	Get-Status $False
}

function LblInstallRolesClick($object)
{
	$LblInstallRoles.Font = New-Object System.Drawing.Font("Tahoma", 8.25, [System.Drawing.FontStyle]::Bold, [System.Drawing.GraphicsUnit]::Point, ([System.Byte] ( 0 ) ))
	$LblRemoveRoles.Font = New-Object System.Drawing.Font("Tahoma", 8.25, [System.Drawing.FontStyle]::Regular, [System.Drawing.GraphicsUnit]::Point, ([System.Byte] ( 0 ) ))
	
	$panelMenu.visible = $True
		
	$RadioRemove.Checked = $False
	$RadioADD.Checked = $True	
	
	$PctInstallable.visible = $True
	$PictUninstallable.visible = $False
	$LblInstallableRoles.visible = $True
	$LblUninstallableRoles.visible = $False
	$ListRoles.Items.Clear()
	Get-Status $True
}

Main

#endregion
