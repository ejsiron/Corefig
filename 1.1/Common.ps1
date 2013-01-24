Import-LocalizedData -BindingVariable CommonStrings -FileName Common.psd1

#region Constructor

[void][System.Reflection.Assembly]::LoadWithPartialName("System.Windows.Forms")
[void][System.Reflection.Assembly]::LoadWithPartialName("System.Drawing")

#endregion

#region Form Creation
#Warning: It is recommended that changes inside this region be handled using the ScriptForm Designer.
#When working with the ScriptForm designer this region and any changes within may be overwritten.
#~~< frmMessage >~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
$frmMessage = New-Object System.Windows.Forms.Form
$frmMessage.ClientSize = New-Object System.Drawing.Size(1020, 545)
$frmMessage.Font = New-Object System.Drawing.Font("Tahoma", 8.25, [System.Drawing.FontStyle]::Regular, [System.Drawing.GraphicsUnit]::Point, ([System.Byte](0)))
$frmMessage.FormBorderStyle = [System.Windows.Forms.FormBorderStyle]::FixedSingle
$frmMessage.MaximizeBox = $false
$frmMessage.MinimizeBox = $false
$frmMessage.ShowIcon = $false
$frmMessage.StartPosition = [System.Windows.Forms.FormStartPosition]::CenterScreen
$frmMessage.Text = $CommonStrings.Confirmation
$frmMessage.BackColor = [System.Drawing.Color]::Gainsboro
#~~< PanelAbout >~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
$PanelAbout = New-Object System.Windows.Forms.Panel
$PanelAbout.Location = New-Object System.Drawing.Point(12, 170)
$PanelAbout.Size = New-Object System.Drawing.Size(447, 230)
$PanelAbout.TabIndex = 2
$PanelAbout.Text = ""
$PanelAbout.BackColor = [System.Drawing.Color]::White
#~~< Panel3 >~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
$Panel3 = New-Object System.Windows.Forms.Panel
$Panel3.BorderStyle = [System.Windows.Forms.BorderStyle]::FixedSingle
$Panel3.Location = New-Object System.Drawing.Point(-2, 0)
$Panel3.Size = New-Object System.Drawing.Size(449, 56)
$Panel3.TabIndex = 4
$Panel3.Text = ""
$Panel3.BackColor = [System.Drawing.Color]::Gainsboro
#~~< Label1 >~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
$Label1 = New-Object System.Windows.Forms.Label
$Label1.Font = New-Object System.Drawing.Font("Tahoma", 8.25, [System.Drawing.FontStyle]::Bold, [System.Drawing.GraphicsUnit]::Point, ([System.Byte](0)))
$Label1.Location = New-Object System.Drawing.Point(15, 12)
$Label1.Size = New-Object System.Drawing.Size(205, 19)
$Label1.TabIndex = 3
$Label1.Text = $CommonStrings.AppName
$Label1.ForeColor = [System.Drawing.Color]::Black
#~~< Label7 >~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
$Label7 = New-Object System.Windows.Forms.Label
$Label7.Location = New-Object System.Drawing.Point(22, 30)
$Label7.Size = New-Object System.Drawing.Size(340, 20)
$Label7.TabIndex = 0
$Label7.Text = $CommonStrings.AppDescription
$Label7.ForeColor = [System.Drawing.Color]::Black
$Panel3.Controls.Add($Label1)
$Panel3.Controls.Add($Label7)
#~~< btnCreditsClose >~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
$btnCreditsClose = New-Object System.Windows.Forms.Button
$btnCreditsClose.FlatStyle = [System.Windows.Forms.FlatStyle]::System
$btnCreditsClose.Font = New-Object System.Drawing.Font("Tahoma", 8.25, [System.Drawing.FontStyle]::Regular, [System.Drawing.GraphicsUnit]::Point, ([System.Byte](0)))
$btnCreditsClose.Location = New-Object System.Drawing.Point(163, 184)
$btnCreditsClose.Size = New-Object System.Drawing.Size(92, 23)
$btnCreditsClose.TabIndex = 1
$btnCreditsClose.Text = $CommonStrings.Close
$btnCreditsClose.UseVisualStyleBackColor = $true
$btnCreditsClose.add_Click({BtnCreditsCloseClick($btnCreditsClose)})
#~~< lblOriginalDev >~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
$lblOriginalDev = New-Object System.Windows.Forms.Label
$lblOriginalDev.Location = New-Object System.Drawing.Point(22, 70)
$lblOriginalDev.Size = New-Object System.Drawing.Size(100, 18)
$lblOriginalDev.TabIndex = 0
$lblOriginalDev.Text = $CommonStrings.OriginalDev
#~~< lblOriginalDevValue >~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
$lblOriginalDevValue = New-Object System.Windows.Forms.Label
$lblOriginalDevValue.Font = New-Object System.Drawing.Font("Tahoma", 8.25, [System.Drawing.FontStyle]::Bold, [System.Drawing.GraphicsUnit]::Point, ([System.Byte](0)))
$lblOriginalDevValue.Location = New-Object System.Drawing.Point(122, 70)
$lblOriginalDevValue.Size = New-Object System.Drawing.Size(251, 36)
$lblOriginalDevValue.TabIndex = 0
$lblOriginalDevValue.Text = $CommonStrings.OriginalDevValue
#~~< lblCurrentDev >~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
$lblCurrentDev = New-Object System.Windows.Forms.Label
$lblCurrentDev.Location = New-Object System.Drawing.Point(22, 108)
$lblCurrentDev.Size = New-Object System.Drawing.Size(100, 18)
$lblCurrentDev.TabIndex = 0
$lblCurrentDev.Text = $CommonStrings.CurrentDev
#~~< lblCurrentDevValue >~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
$lblCurrentDevValue = New-Object System.Windows.Forms.Label
$lblCurrentDevValue.Font = New-Object System.Drawing.Font("Tahoma", 8.25, [System.Drawing.FontStyle]::Bold, [System.Drawing.GraphicsUnit]::Point, ([System.Byte](0)))
$lblCurrentDevValue.Location = New-Object System.Drawing.Point(122, 108)
$lblCurrentDevValue.Size = New-Object System.Drawing.Size(251, 36)
$lblCurrentDevValue.TabIndex = 0
$lblCurrentDevValue.Text = $CommonStrings.CurrentDevValue
#~~< lblProjectURL >~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
$lblProjectURL = New-Object System.Windows.Forms.Label
$lblProjectURL.Font = New-Object System.Drawing.Font("Tahoma", 8.25, [System.Drawing.FontStyle]::Bold, [System.Drawing.GraphicsUnit]::Point, ([System.Byte](0)))
$lblProjectURL.Location = New-Object System.Drawing.Point(28, 160)
$lblProjectURL.Size = New-Object System.Drawing.Size(392, 18)
$lblProjectURL.TabIndex = 0
$lblProjectURL.Text = $CommonStrings.ProjectURL
$PanelAbout.Controls.Add($Panel3)
$PanelAbout.Controls.Add($lblOriginalDev)
$PanelAbout.Controls.Add($lblOriginalDevValue)
$PanelAbout.Controls.Add($lblCurrentDev)
$PanelAbout.Controls.Add($lblCurrentDevValue)
$PanelAbout.Controls.Add($lblProjectURL)
$PanelAbout.Controls.Add($btnCreditsClose)
#~~< btnOK >~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
$btnOK = New-Object System.Windows.Forms.Button
$btnOK.FlatStyle = [System.Windows.Forms.FlatStyle]::System
$btnOK.Location = New-Object System.Drawing.Point(198, 98)
$btnOK.Size = New-Object System.Drawing.Size(92, 23)
$btnOK.TabIndex = 1
$btnOK.Text = $CommonStrings.OK
$btnOK.UseVisualStyleBackColor = $true
$btnOK.add_Click({BtnOKClick($btnOK)})
#~~< btnClose >~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
$btnClose = New-Object System.Windows.Forms.Button
$btnClose.FlatStyle = [System.Windows.Forms.FlatStyle]::System
$btnClose.Font = New-Object System.Drawing.Font("Tahoma", 8.25, [System.Drawing.FontStyle]::Regular, [System.Drawing.GraphicsUnit]::Point, ([System.Byte](0)))
$btnClose.Location = New-Object System.Drawing.Point(313, 98)
$btnClose.Size = New-Object System.Drawing.Size(92, 23)
$btnClose.TabIndex = 1
$btnClose.Text = $CommonStrings.Close
$btnClose.UseVisualStyleBackColor = $true
$btnClose.add_Click({BtnCloseClick($btnClose)})
#~~< Panel1 >~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
$Panel1 = New-Object System.Windows.Forms.Panel
$Panel1.BorderStyle = [System.Windows.Forms.BorderStyle]::FixedSingle
$Panel1.Location = New-Object System.Drawing.Point(-1, -1)
$Panel1.Size = New-Object System.Drawing.Size(433, 83)
$Panel1.TabIndex = 0
$Panel1.Text = ""
$Panel1.BackColor = [System.Drawing.Color]::White
#~~< lblFlag >~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
$lblFlag = New-Object System.Windows.Forms.Label
$lblFlag.Font = New-Object System.Drawing.Font("Tahoma", 8.25, [System.Drawing.FontStyle]::Bold, [System.Drawing.GraphicsUnit]::Point, ([System.Byte](0)))
$lblFlag.Location = New-Object System.Drawing.Point(81, 10)
$lblFlag.Size = New-Object System.Drawing.Size(320, 17)
$lblFlag.TabIndex = 3
$lblFlag.Text = "Subject"
#~~< pboxError >~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
$pboxError = New-Object System.Windows.Forms.PictureBox
$pboxError.Location = New-Object System.Drawing.Point(22, 20)
$pboxError.Size = New-Object System.Drawing.Size(41, 51)
$pboxError.TabIndex = 2
$pboxError.TabStop = $false
$pboxError.Text = ""
$pboxError.Visible = $false
#region pboxError.Image = ([System.Drawing.Image](...)
$pboxError.Image = ([System.Drawing.Image]([System.Drawing.Image]::FromStream((New-Object System.IO.MemoryStream(($$ = [System.Convert]::FromBase64String(
"iVBORw0KGgoAAAANSUhEUgAAACgAAAAqCAYAAADBNhlmAAAAAXNSR0IArs4c6QAAAARnQU1BAACx"+
                                 "jwv8YQUAAAAgY0hSTQAAeiYAAICEAAD6AAAAgOgAAHUwAADqYAAAOpgAABdwnLpRPAAAC3VJREFU"+
                                 "WEfNmHlwlPUZxz05kiCiHEUMcntQQBw7raPt2JnSmdraGaozSlsYqyjUjrVV6XRQ0M4444Eoggho"+
                                 "IMduNnu8796bZHPtZo9ssgk5ICeEHERCFIhUDkHQb7/Pu7spOQgB/uGd+c5vj/f4/J7n+T3P83uv"+
                                 "B4/rruVDAK/l47prGU7z7tUCnjt3Dme+/RanTp/G18eP47/U8W++wdmzZ3HmzBl8//33V/WIKwb8"+
                                 "6ssvceDAAbQfPIi6+nrU7NmDeqqhoQFNTU1oaWtDZ1cXeo4cwaFDhzT4KzkuC1Cscbi7G9HKStTv"+
                                 "24fqaBT+jAwUrH0drmV/hP2x38L+u8fhevz3KHjxRZRt/Agt4RCOcDJHjx3DHsIf4/jDDz+MmHXE"+
                                 "gL29vaiuq0M1LRPMy4P9ry/CvOgBmO9MhTr1DlinTYc1dQaUVBmnQ502DZYfTYVlxkw4l/wakY82"+
                                 "4ejXvdTX2Md7SEiM5LgkoMTS/v37UV5eDp/FAsuf/gzrzNlQp8+A5S6KAJZZ1MyEZsc/yzhLk8Jz"+
                                 "lBkzYF20CKVvvoXjR49o4XH48GFIDA93DAv4LYO/jlaLEM69+WMY770PKq2jQfUDioGI1JlzoHAC"+
                                 "Q2oGYaelwvPEE2guKsYXX3RjH0PligC/++47VFVVIeD3w/jU01AHWev/FhoWaghYVUDnzENV2k50"+
                                 "Hezkomq+qCUvasEOxkmIcMo//0GrJVwpUBQtqF7KWgPBBIq/aeEh4nf7/YsRSc9A84E2bfEMdQwJ"+
                                 "2MNV5wsGCfcqLBJrEmOzYmDWBQsRWLWa8bSY32MPvZgERtO8exB4diWcj/wCCu+nAVI2Xm+55z7U"+
                                 "0N2RyiqcPHlyEOOQgOFwGEVeL0wLFnGmAscb8WbWe+ejMy9fu0l7cQlMfLAy0DIJC8VH+b/mvQ3a"+
                                 "NUd6DsP+s4e0a9TZhOSkbQwdx/LlaGxoQu3e+ksDdnZ0IBipgJF5zcqVp8xi0AtEHC6RwWRszDZA"+
                                 "mb8g9sABYNr3OXNRsf5NnGRqOcm0cuLUKXTs3g31IUJy0uocOYdKvQuFW7chVF4JWZgXHv0sKAk0"+
                                 "UhlFrt0Oy+y5MdcRUKzXanMMmt15pqD6HZ9BuW9BLCbFKvJAGefORejVV3GUqaSX8SUpRRMB9jU2"+
                                 "Qlm4CLbZc2Dlc6y0pPVXS1C7r1XLGBcFPMva6Q0EYfrLs7BxVonYMhEwun1733UykfOsKufPn8c5"+
                                 "Wkaz5N13w0ar2Gg1CYvwG6+jh97oJlRnZyc6+FnyaRevCZWVwTT/x3AIIM8X2efOQ4neAJ8/oNXw"+
                                 "xNHPgjW1tShhwFoefHBQ4BsJGX73XZxibT3D5HqaAf0NmwJNJ05g95atsC26Hw4+LPj3l3GIQJ2s"+
                                 "0wIluU7qc/3evfCnpyPjnnthZQUyMf5M0+/iQqQxKJULqayiCu3tbUMDBgIB5H/2Oa0wr39KiMeX"+
                                 "gW70v/4GTtJNR1n6jhBW3NbT06ON5Vu2oPSVV9BOkBaCNdKVe9hA1NbUaHXYtWkT3ifYp2OTsIXa"+
                                 "TH0sSk7BlqRk7CBkqS+ISubfRBfUZ0FZ4j6fD441a7Qc1S/oEyuOsWKmStb8C10EOMgupb29Ha38"+
                                 "LEAtLS1oJNxeqoZQlWwqKioqUB6JwLZhAzZMnIRPxozW4EQCt4naSG2Q74TM12WjqDTYl7j7AMUC"+
                                 "4VAIyooV/QEJJIEvwSwx46QLJSf6334bHWynxErSYtUyPARKqo/U7QihSktLuegqYdu8GRvvvBPb"+
                                 "Ro/FjqQkbE9OwjYCbaU+icMK6OYbR8HxwUa4vYWQSiZHH2BrayuCdLH5N49pjYBmQclTBLMTTOSi"+
                                 "3AT0MqAtd0yD+swz2M2EHiVUGQNfJGFSUlKC4uJiFEoufestbJo4EWljxyKNcDupz6nPqB0E3U4w"+
                                 "cbmAbr7hRljX/BuK041TTEmDAMMJQOY/sZqkAZEzDuchWJ5UlImTtYd9cNONcL//PsLsCxNQBQUF"+
                                 "8Hg88OTnw84FsYnNRfroMchMSkEGlU7t4rVyfQI0Yc2tN1wP+0svw6DatMXXD7BNaq+4eOkfYi6m"+
                                 "5frBEdIyiWApKdgh1khOhpUVwF9YiHxayuVywel0wmazQVEU5JhMyDEaYeKiyWLs6WmhLMaYjsqk"+
                                 "BPZCUHH7dlrQtf4/MNucfWWvz8WyEstY4mwvvKAlzgScuNTJ1WW47XZsj7tGZm9euhQFhHK43X1Q"+
                                 "RgLp9XpkZmbGlJWlgSrsrvXjb4WBkNmEuxBULCpuF5enjR4NFxtb1eHC6XhD2wcoydHP7iX3nXe1"+
                                 "eJPF4JZmk12xXLwt7hKZtfL0MjisVphpKYPBAJ1OpwHpCCffRWazGRY2uKqqwp2bC88b62GYcBuM"+
                                 "hMwhpIHSx2HFmjv5e/qkSfCaVTgYIoMWifjbzxgM0kUONqYuwhnoGrGarDyJl50p42DknsOcnQ0d"+
                                 "lbCUnp8FJpvdcubyFXDxs5OWFbfncXtQwHj08d7e116DecpkmAhjJJxYU6S5nHFq+MlPeW6RxpHY"+
                                 "t/SrJNI9l3FFqo/8HJl0iaQBAdRWH81vYONq4CYpgxYTV5rEfbSQkxCmdeuQMZV7ECZdZdky+BjP"+
                                 "JfSIn7k1yJUuqmKjUPreezByohbe20QwsabEpY7fHVwgLgI2NTUODSj7jxLGobpuPT69aVTMrQze"+
                                 "XVwUysqVUCoqYTQZNWvJYrBzUeRxgah8qG7yZLjGjIGHD7OOS4Fr1SpUEDBKqN1UdXW1VlVauf2s"+
                                 "YngojGmF54olxd3GyVPg8+Qhy2Ds19EM6mZCBIyyeUzjwoitVgFMgu3DjXDRwg66TdJIHt3mp5Vs"+
                                 "TDMZTMIuTsbDlZ1HeSk7V3v+6tVolpLX3IxmVpkWjl2sWLVsHsx3cCdIMAtlHjUazqVPoDgcRV6B"+
                                 "9+LdjPzTxeogtdD74YdaGthFl2USMO3WCbC/8w58TMJ+VogyVgon4bJoOQ/PE7B8qoAqjMtDyOLn"+
                                 "n0cLJ9bCQrCfijI2dSydjjFJnEQyVF6rciGWMjln6nK4emMJeshuJvFjEeOmgW8L9AsXIIOz0xFS"+
                                 "UkQW97+F+mw0nD2DQrovPTVVc+uFYMWEK6FkLObDcwkZYAgc5s3ruJUwPPAAcnlNLv938D8HP+f9"+
                                 "7SUU+0JweXK1Fu6SgFrjwKCu5GxNbI0kyeZI8HM03DYBOU8tg54LIpcAAicuLYqD+TmWUoELRi9j"+
                                 "0v3kk2yCZ6OQQGJhsXguF557yRKWyCgysvRa7A186zDknkRmIU1ALYM6xI45h+6V/KUwX9kJZR11"+
                                 "M9xxtyZc6uMDRUEqlDwOYU4oRMXGZPgJ4+M1co4AesXyixdzwdiRZTRrDcdQr0SG3bhHWWNr6eoq"+
                                 "vQ4qt4gq3W0npIuuERclLCfujFktBhahyqmK+FimgY7rs2ox4byPPorqcAQ53EpIB5RIzAP3FcMC"+
                                 "SrmRnq6GkG2EdfMdi2PcLX3WE0tIvIlbxXICJ2BRurSSk6iSkaqgBDqcNBb+22+Hf+1aVIciyDQr"+
                                 "CDITDNwoXTIGLzxBzF5HV/uYfo6xg26S5uCXj2qQhTffjBKOEm/iToGIChhVTdWK+F8VzwuyzJU+"+
                                 "9xzqfAEE9tQjTafXmlzJvcMdl3x5JBeL+Xu++korWw286TFuI5vZ75UyefsWLoR/yhSEWXkiKbcg"+
                                 "egsBx49H7YQJ2M38WP7ww6hY9yb2lkVQ17QfJpcHjtw8bYswkpebIwJMzFBu2MDNj5fVQ+Kzh1Xh"+
                                 "PB90gm7qzslBJ3d++5lSWrnHbVNUdEcr0XqgAwFuyA0Ey3E50dDcpN1upO8ILwswASo37+aLzADd"+
                                 "bmZlUYuKUMxSFmS8+gnu5T7EUlCINIsCE7sa2QL09l7ei8thE/WwQTHgT3G/5E15zStNr2ycZBQX"+
                                 "yu/y/0itNdRzr8iClzOBqz33mgf8H1XPmNottz3VAAAAAElFTkSuQmCC")),0,$$.Length)))))
#endregion
#~~< pboxWarning >~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
$pboxWarning = New-Object System.Windows.Forms.PictureBox
$pboxWarning.Location = New-Object System.Drawing.Point(22, 20)
$pboxWarning.Size = New-Object System.Drawing.Size(41, 51)
$pboxWarning.TabIndex = 2
$pboxWarning.TabStop = $false
$pboxWarning.Text = ""
$pboxWarning.Visible = $false
#region pboxWarning.Image = ([System.Drawing.Image](...)
$pboxWarning.Image = ([System.Drawing.Image]([System.Drawing.Image]::FromStream((New-Object System.IO.MemoryStream(($$ = [System.Convert]::FromBase64String(
"iVBORw0KGgoAAAANSUhEUgAAACgAAAAnCAYAAAB9qAq4AAAAAXNSR0IArs4c6QAAAARnQU1BAACx"+
                                 "jwv8YQUAAAAgY0hSTQAAeiYAAICEAAD6AAAAgOgAAHUwAADqYAAAOpgAABdwnLpRPAAACHZJREFU"+
                                 "WEftmFlsXGcZhovgCqlcpDNjZ7Edu3GcOB6Pt2wlEaVCSIhCK1XiooCqSEHkJkKVKCoSEgpcVIIb"+
                                 "EKUiaqGooXZiJ3FmseN1xst4GXs8nhnPeOzZN89mz+I9JE5e3v/YTlOSEGdrc8GRXn3/OZ6Z8/j9"+
                                 "vu///3O+Ah7PPcuHAHyWj+eeZTgpu08K8MaNG0in0wgEAlJ8UscTAbx16xZ8Ph9stnGMjrbDbB5H"+
                                 "KBR+IoxPBHBpaQl2uxPG3vcQtFbB2Pcxug3GZwfQ6XRh3GxCzFGHtcQBTJtehXnUAavNhps3bz4W"+
                                 "6GM7mM1m4HTGYBn8NZYi5cgGlFgIqWDsPgvjwCiuXbv25QGK2nO5pmEbH0PWX4v5iBLZoBLzgQqE"+
                                 "xl/C4GCA9Tj25QFGozNsjnk4Rl/FYrwcuRkCbkBe5/mQ4QwhTUilko8M+cgpvnHjOjwePyyj3VhN"+
                                 "lWE+ztTGlMhFqbCKLlYiNXUEA316DAwMffGAHo8PgWAaPucPsJxWYjGxARhTIRepwnyoCouhClj7"+
                                 "fg7joAuRSPSRIB/JwdXVFc5zKdjMf8Bqbj+W5phapjcdrkAqrMScrxKZIEEDKkJWo1/fAKNxANev"+
                                 "X39oyIcGFI3h9Xq4YkSRjBzDckaJFTr44QdH8NZPj+PEW4dx8sTLuFJfQzimmrAe0/dh7J9kt08+"+
                                 "fcDZ2TlkMmuwj71D9w5gcU6Fa1kl3vt9HWpqj+Po0WM4dvxl/P39SiyyFjNeFZbD5ejt+Ad6egY5"+
                                 "7aw+FORDOSjcc7v9cE/bkInvw2KaEKlKCfBPf1ShSnUYhw4exDePHkXTPyskBzP+amQ9VYhav4X+"+
                                 "/l4MDg8/PUAxrczNZeF1nMQ1pnVpthILySqsplX4219UUCrrUF1djZeOHITufAXmg9XI+KqQnq7C"+
                                 "gkeJ4a53YDBYkMvltgz5UA6GQnG4HBp2KVObVBGOiquwwjR/8mEl9u9XoqKiAocPVeNqIzt7phZZ"+
                                 "bw0ybk7ivlqkXYfRZ+hHX9/W1+ktA7pcbqTmlhByfpvOsfgJN5+gOK2spKpw4WMVysr2UWWoqVai"+
                                 "R13KZa8UqclizNoLMWstQtpRAEvbd9BntLDJ/FtycUuAmUwW8UQCNsufsRgl1AwlYrRa0spsNdQN"+
                                 "FdizpxTFxSWoqymHvjEPCascsRE5ZobkiBoZ++VIGGTQtzSgq7uXgLceCLklQKdzmqtGDJHJWixE"+
                                 "qrEQpqJMW7SGa+8+rsPbof1kB0pKSrBzZyFqqvZhsDkfCTOhTITcAIz0cdwjg1X7CjcSFtjs9scH"+
                                 "DATCXAVSsA//AivCOU68uUgN0v5SzE7mITkhY5SjvSEfu3cXQSbLR11VCUa1CsSFe4N0b0COSK8c"+
                                 "YYMcIT3PO7dB3/wuOvVDWFlZ+Z+QD3RwcnIa1pE2zE4dlJzL+ssJtAsJG9Nlp5jG1IQchiY6WLwD"+
                                 "zz+/DYdqi2BrVUjpFamNMLXRTcAugnbI4NPu5aZ2BMPDpkcH9Hq9mJpagMv0OlOqImQpktY8xC1y"+
                                 "xAkmRSrJsfFyPoqLZPjq176OQzW74LiaJ7kn0ioUpnORbjrYSbVxfFWOnkun0dM/hmTy/rud+zoo"+
                                 "1lu73cHdyFks+ZRI2grpiAwx1lVibF2xUYrnccqsy8ePXivGK8fy8bM3i+GmU1E6F+lZhwvxPNQh"+
                                 "R7BdjkALoy4PwSsKdLQ3o729+74u3hdQwJnNLvhNx5AaK5A6URT8zDAlamsziibgOMlryw45EJAh"+
                                 "J5xlaqW03glH5wJ0LtCigF+jQPiKHMONb6DHOMoVyn1PyHsC5nLzGBlxYVD/O6THdmBG3Gyj2KOi"+
                                 "I8VYSIzZACKVod48qM8W45enXoT2I7pN5yKiKTadI1yolXA6wrGBAnTPf1kBX9N2tGk+4LQzsHVA"+
                                 "s9mKvh4ton17EeVNRAeKOhLzWGSj6G+PeT1OyN+cLsP27SVQKLazm0vw19/uXq+5zbRuwtE5H+F8"+
                                 "zQp4LzE2ymGvL0dX7xgfWUfvgrzLwVgsht7+aZh0rxFOJt1ETA9hUUuMUtrEmIoKEdDLwn/9e/sJ"+
                                 "9iKKiopQUFCMU2+WIMrvBkVK2TDBjbRKcHTOe5FqpC4oEGqQo+PSGXTr+yEewu48Pgd48+YaJ9AR"+
                                 "tLU2Id6Vx+lgo+tEmoQbjBHWlAQsnBXXxHmXDKd+okTp3kquJmWMB3DmdAki/H6A041/M63qz+B8"+
                                 "hPOcV8Bdz/gvBRzn9qCDq4uhp+/+gGJD2dnZD+uVuvX/nHUjui64kaYgnZKg71C4g8XepcDQp3l4"+
                                 "+0Q5fvjdCvzq5F6M0ZVgax7rjRJpZUqltNI5zx1w04SbPsfPfPoCDPU/RodhAOFw6DbkbQfFA7bu"+
                                 "qgGdzW8j3vINRLXr04EobAEbbJMx3luxdk4//Lu/5QWMN2wjEOuV340yBtRy1pwc/ksshYscs+a8"+
                                 "5+V0Tg7Puc8U4NhdvxPdbe8z1b23Hw9uA4qXP5c1V9GtexduzR64NIVwajekKeK4YEPi2i5MUFb1"+
                                 "LoxTFs0u2KkJyqEuxIS6gFkowHhzAWyXOb7EeLEA9iaqkbrA8wauNvWFsJ2nGgrhoKxNKpiMH0Gt"+
                                 "boV4nSKOz9WgeLC5SMieoWEMmIYxPMbO4gshy+QEbJ4pOAI+TEWC8MSjCM4mMDM/h+RiDpnVJeT+"+
                                 "vYT06iJSixnEF9KIZlMIpxMIpmb4+TDc0SCcYR+cATdsXr4qmXZi3GXHqGMcIxNmmCwm9I9Y0HhR"+
                                 "y8fUAYjd+12Ay8vL0uszfbceLboW6HSt0GqFWtalEdJBo9FCTWl4Lo3VQhqKf5PGG59h3BxrpGtC"+
                                 "4rfWo076TY6le7Wgm/cVE7bg2DzummYE+dramlQDX7TEff/7eOBu5oEbtqf8gf8DPq7B/wFMlK/M"+
                                 "hIK+HQAAAABJRU5ErkJggg==")),0,$$.Length)))))
#endregion
#~~< pboxInfo >~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
$pboxInfo = New-Object System.Windows.Forms.PictureBox
$pboxInfo.Location = New-Object System.Drawing.Point(22, 23)
$pboxInfo.Size = New-Object System.Drawing.Size(41, 51)
$pboxInfo.TabIndex = 2
$pboxInfo.TabStop = $false
$pboxInfo.Text = ""
$pboxInfo.Visible = $false
#region pboxInfo.Image = ([System.Drawing.Image](...)
$pboxInfo.Image = ([System.Drawing.Image]([System.Drawing.Image]::FromStream((New-Object System.IO.MemoryStream(($$ = [System.Convert]::FromBase64String(
"iVBORw0KGgoAAAANSUhEUgAAACgAAAAkCAYAAAD7PHgWAAAAAXNSR0IArs4c6QAAAARnQU1BAACx"+
                                 "jwv8YQUAAAAgY0hSTQAAeiYAAICEAAD6AAAAgOgAAHUwAADqYAAAOpgAABdwnLpRPAAACjpJREFU"+
                                 "WEfNmPlTVecZx9M/oD/EqCyiosiiQjUmk3RskkYNcUFxj2hEDChYp+p0Jk2tSSbTpmmmM+1MZ9Im"+
                                 "MckYZb1wuRfuvu8LO5cdESQGURS1VnEJRvPt9z0Xke0qJL/0nXnmnMs5h/dzvs/yPuf9GTie+n8e"+
                                 "AnCq4/vvv8fArVvou3gR7W2taGluRltrK9rb29DRcRpnz3ait7cHAwMDuMX7fsp4aqoPtxLkm65O"+
                                 "dLTUw19VgxJDJT464cSxz514/ws3Pjrlh9zSgNYz3bh5rQ+XL11Cx5nTuHbt2lSnku6fFKBQ7OzZ"+
                                 "LjTU+tHUWId/5umx4ogCMRk6RO82IS7Diri9liGzIjrdRNPj5SMafJznQW9fP+4M/AddXV24ffv2"+
                                 "lEAfC/jgwQNcv34ddfX18Poq8OcvNPjVYR0S9pqQkGHBQh4XvTXCxO8hE9cSJGgTlv3GiL/m+tDV"+
                                 "cxk9PeckVcVLT2Y8FrCvrw9VlRWQ66zYeFSB2AwToYJgIy023YiY3XrEUrWYXfpx18W9C/jsireN"+
                                 "0LpacIGxe/p0+2T4Qru4t7cXHo8b/zihQ2KWUG08mKRShhFfas7gu8FB/PDDfRj85/B8tnEYcvEI"+
                                 "VYW6C/bqqWYFlexDW1sb7t+//1jQCRUc5GQ+nxef5OvxbLY2JFwclcv82Ddugq/VLYilkmPhHrp/"+
                                 "yQET/vSVG2c6z+Dy5ctTAxRxFwjUQ2uy4pXD5SHhhHoC8F+lLcCD+xj87i7u3bsnTVbdfB5xu9TD"+
                                 "8fgQbOQxab8RBncdAnUNLEWhE2ecgleu9KPSY8OmPxRLWTk23h6qIo7xBDz2qVeCunHjv1LdE8Po"+
                                 "bWQsjgHMHJ1QIpZfOaxGbW0D6urqQqo4DrCSSVGqUmNh1qM4EpAh3bVXg9qmDmDwBh4MDqD3/DdY"+
                                 "c0QZzPAxUKMyntkfR/uk0IrqCj/u3r07IeQoQFFMayvcePMDxbBrQ4GNctfecqS9q8SeD5RYukdO"+
                                 "OCPLj4Vmntiy+PdMYRasfFuPtuYGKlnzZMDGhgCUapaJrGCpmCh2hv9GdRYKE66W6p0V8YRKoCVm"+
                                 "WbFkn23YkrKtSNxnxSLJCDYEuDjTioX8fVxugtftHo7hkaSjFHTYzPjwczViOVlI5SS3PVIniZPi"+
                                 "Zhcs3maYPU14cLsbm4/ZEc9CHp9hQMxOPaK3axC1RYnI1FJErC9B2AYZwlJKELGhGGGpSmz/vQIe"+
                                 "h11aFMaOYUBRWgwGI3Z+UEZl+KYjFXwYS1lUh9eShDrZdskW82/ftDeh43QjujqacLW3Ey/tU2LG"+
                                 "6iLMSM7DtFW5mL7qFKatPIVnVp7EMzx/esXXmPbqCR5P4Ocvf4nYTadgtzvQ2dkZGvDcuXMwWZ1I"+
                                 "fls7Gm5oKUtkzPxCgO0XYA4sO+hCUrYTYWuL0RioQQUDvbq6Bm0tjXhxTwlmvl5EK6QVIIw2YzXP"+
                                 "kwsw/fV8TH8tV4IXx2krTyB8XR7KtE74fZ7QgE1NTdCaPVj+W80jQMIl0p3CjUkEW5ptw9IDDjyb"+
                                 "42SJMSFyo4IT5KKywgun08mVx8O6Vk1AOcLXFNNkiOAxbG0RwlfLMHMNoVcTODkIPv21fEnRacm5"+
                                 "OCl3wWLRczX6YRTksIsDgQD0Vg9+eZD1a0i1xQzmRLpQUi3HgecOurm0mRG5vpQKcCLJjQVwO20w"+
                                 "mUywWq0S7It7FIhcJ0eEiLO1ckSmEHYdzyVYGcGDoDOShZp5eJrHzwqc0KiV45qIYUChoNHmZYuk"+
                                 "kwATWSIextpSKiYKa/gGeRCME4TTtZGcVKhkMuqgUqmg1WrhtFskBWelMClSSmmEXc/f65ggKYQd"+
                                 "AzpDuH9tAQoULhgN2tCAPT09sNpdWHeULhZuZalYmmOXIKO3aYbcUygBhVMVoc4sKhlBpdRlxSgp"+
                                 "kUOhUBBWRcBSRG0opykRlVqG2esVmCXOCTuLsBECfAh0Jr0QvbUYpeUWuFx2iKV2wjJz584dWC0W"+
                                 "7P1QxcxknDERFmXaEZGqYHDnS+4UbopcSzCqIZQRAOJYLMtFXl4e8vMLUFYmk1w8Z6MWc1PLMZs2"+
                                 "Z6NKAp5N2GFQvlgkXzSMbl/GpDLozahn3xmyzIgLdpsFx0u4xGU5MW+HLph5IgtFkIs3pmrCXVF0"+
                                 "n5hsDiePWl8GZWmhBHjy5EkUFp6UAOdu0tPUiN6sJqBGOp9N0DkjQMX/mrmmBDkfqaHVqHGJjexj"+
                                 "AWtrauBwexC/u5zlgLFBE9kXIbJRwAkXbQgqJyaTJk1VwaBTQCYrRlGRDArCLn+rHPO2GDF/K4v0"+
                                 "Zi2it+gwbxOPmx+BRvHlZtH1c7comMFWKOSlE34OjFpJRAfdWFeJ9D/K8cxrBcy0QskFUiaKQCdc"+
                                 "UAHhNo00uXCfzaqha8uhVJYxE+V4KUuNmG0mArLTJuT8bQbeS1iCziWoeEa4PyqlDMnsaHweP/RM"+
                                 "sInGuG7G43KiPlCLWalFUrZGMltFzAm3ird+CDdXqCLUofm9NugNBuh0ephNGryao8eC7RbEvGEm"+
                                 "qJHnJoIaMY+g87cyNjdpJMhIWq7SieJCGW7fGr/MCeBxgH19l1BfV4Pf/V0jlZIIkRjM1tmMNSmG"+
                                 "NgnXaiT3xXDCeQStq/HDZrOz0Frhclqw4oABsTtsiE1jE7HDitghWAl0m57PiPjUIu19LUsb659G"+
                                 "Nfl+UHwjeBwO+Gva8OoBBcKonoiVORvK6BYGvRRLWqohVBJxZkRLE7/6vD6uJF5UVfmx6iAbhV0u"+
                                 "xO1k0zAMakbsG0NKEjAxXQuVuQZFeUW4cKFv8oDiTtG6e1wOuCpa8XwmCy3hJNcyyIVi87cI5YJJ"+
                                 "IOz2lQ60t7YQtBGXzwWw+pAZCWkOxKdxSdxlR8JOR1BRyeUWLGO7f7y4AipFCT+cmsYtbyHbrZEX"+
                                 "vv32W0kNk7sVqw5pJfdG07XRkmsFnIgnAapFoNaLf+c78Gmek8XWgV/vN2BRug+Ld3uw6E0XFu50"+
                                 "SsCxO+x4IceEL0urYbaY4XDYIOrv40bI72JR0bu7u+k6NxpPX8SBv1kQyZoWTffM38rPxzdEbAnj"+
                                 "+XYD4gkdv4OupVJCscR0PxL3VBDUg4Rdbiygyze/Z4bR3QytWs3WTjupfZsn7ixcvXoVNrMZ/f29"+
                                 "CLR3Iv0vDPw0BjoDPzYt6L6FVEmolbjHh6SMIFhShoCrwOIMN1LftUPnqkZrezPrZQG3T6og+s/J"+
                                 "jCfuzQglb968yW+GatTUVHFH6wrqW7vx3nEfUt5x4AUuiUsy3QRyY8lbXjyX7cfyQ5VIOerDO5/5"+
                                 "obY3sEdspztNXKtl3PU6P2FrHwr2iYAjH+zv64XbbYfLYeQH90XcpAhNvfdgC1yHwnURMtt56Ksv"+
                                 "oKrzEs7393N7IwCdVs5GIg/NDXVP3EWYVKGejOzinmbuCapUZTBoZGxWNax/otVSwWyUQ1nCNZmN"+
                                 "g8/nk9T/KWNKCo6dSNRMUZJu3LgBEav9VE18+IgtNrF7NbY7/jGgPwnwx0w41Wf+B8uN1Pb1uMar"+
                                 "AAAAAElFTkSuQmCC")),0,$$.Length)))))
#endregion
#~~< lblMessage >~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
$lblMessage = New-Object System.Windows.Forms.Label
$lblMessage.Location = New-Object System.Drawing.Point(81, 27)
$lblMessage.Size = New-Object System.Drawing.Size(324, 46)
$lblMessage.TabIndex = 0
$lblMessage.Text = "phmsg"
$Panel1.Controls.Add($lblFlag)
$Panel1.Controls.Add($pboxError)
$Panel1.Controls.Add($pboxWarning)
$Panel1.Controls.Add($pboxInfo)
$Panel1.Controls.Add($lblMessage)
$frmMessage.Controls.Add($Panel4)
$frmMessage.Controls.Add($PanelAbout)
$frmMessage.Controls.Add($btnOK)
$frmMessage.Controls.Add($btnClose)
$frmMessage.Controls.Add($Panel1)

#endregion

#region Functions

function CommonMain
{
	[System.Windows.Forms.Application]::EnableVisualStyles()
}

function Message
{
	$lblFlag.text = $Flag
	$lblMessage.text = $Message
	$frmMessage.size = New-Object System.Drawing.Size(435, 165)
}

function Credits
{
	$frmMessage.text = $CommonStrings.Credits
	$frmMessage.size = New-Object System.Drawing.Size(435, 250)
	$PanelAbout.Location = New-Object System.Drawing.Point(-1, -1)
}

function BtnCloseClick($object)
{
	$global:ReturnFlag = "NO"
	$frmMessage.Close()
}

function BtnOKClick($object)
{
	$global:ReturnFlag = "YES"
	$frmMessage.Close()
}

function BtnDeclineClick($object)
{
	$global:ReturnFlag = "NO"
	$frmMessage.Close()
}

function BtnAcceptClick($object)
{
	$global:ReturnFlag = "YES"
	$frmMessage.Close()
}

function BtnCreditsCloseClick( $object )
{
	$frmMessage.Close()
}

$CommonLoaded = $True
CommonMain

#endregion
