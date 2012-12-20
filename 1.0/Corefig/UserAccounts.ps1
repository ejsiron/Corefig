Import-LocalizedData -BindingVariable TextStrings -FileName UserAccounts.psd1
#region Constructor

[void][System.Reflection.Assembly]::LoadWithPartialName("System.Windows.Forms")
[void][System.Reflection.Assembly]::LoadWithPartialName("System.Drawing")

#endregion

#region Form Creation
#~~< UserAccountsform >~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
$UserAccountsform = New-Object System.Windows.Forms.Form
$UserAccountsform.ClientSize = New-Object System.Drawing.Size(1186, 749)
$UserAccountsform.ControlBox = $false
$UserAccountsform.Font = New-Object System.Drawing.Font("Tahoma", 8.25)
$UserAccountsform.FormBorderStyle = [System.Windows.Forms.FormBorderStyle]::FixedSingle
$UserAccountsform.MaximizeBox = $false
$UserAccountsform.MinimizeBox = $false
$UserAccountsform.ShowIcon = $false
$UserAccountsform.StartPosition = [System.Windows.Forms.FormStartPosition]::CenterScreen
$UserAccountsform.Text = $TextStrings.WindowTitle
$UserAccountsform.BackColor = [System.Drawing.Color]::White
#~~< PanelAddusers >~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
$PanelAddusers = New-Object System.Windows.Forms.Panel
$PanelAddusers.BorderStyle = [System.Windows.Forms.BorderStyle]::FixedSingle
$PanelAddusers.Location = New-Object System.Drawing.Point(663, 29)
$PanelAddusers.Size = New-Object System.Drawing.Size(310, 158)
$PanelAddusers.TabIndex = 70
$PanelAddusers.Text = ""
$PanelAddusers.BackColor = [System.Drawing.Color]::Gainsboro
#~~< LablelAddUsers >~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
$LablelAddUsers = New-Object System.Windows.Forms.Label
$LablelAddUsers.Font = New-Object System.Drawing.Font("Tahoma", 8.25, [System.Drawing.FontStyle]::Regular, [System.Drawing.GraphicsUnit]::Point, ([System.Byte](0)))
$LablelAddUsers.Location = New-Object System.Drawing.Point(58, 10)
$LablelAddUsers.Size = New-Object System.Drawing.Size(205, 19)
$LablelAddUsers.TabIndex = 71
$LablelAddUsers.Text = $TextStrings.UNDescription
$LablelAddUsers.ForeColor = [System.Drawing.SystemColors]::Desktop
#~~< CancelUserAdd >~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
$CancelUserAdd = New-Object System.Windows.Forms.Button
$CancelUserAdd.FlatStyle = [System.Windows.Forms.FlatStyle]::System
$CancelUserAdd.Location = New-Object System.Drawing.Point(225, 118)
$CancelUserAdd.Size = New-Object System.Drawing.Size(68, 23)
$CancelUserAdd.TabIndex = 5
$CancelUserAdd.Text = $TextStrings.Cancel
$CancelUserAdd.UseVisualStyleBackColor = $true
$CancelUserAdd.add_Click({CancelUserAdd($CancelUserAdd)})
#~~< BtnAddUsers >~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
$BtnAddUsers = New-Object System.Windows.Forms.Button
$BtnAddUsers.FlatStyle = [System.Windows.Forms.FlatStyle]::System
$BtnAddUsers.Location = New-Object System.Drawing.Point(132, 118)
$BtnAddUsers.Size = New-Object System.Drawing.Size(68, 23)
$BtnAddUsers.TabIndex = 4
$BtnAddUsers.Text = $TextStrings.OK
$BtnAddUsers.UseVisualStyleBackColor = $true
$BtnAddUsers.add_Click({OKAddUsers($BtnAddUsers)})
#~~< GroupBox1 >~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
$GroupBox1 = New-Object System.Windows.Forms.GroupBox
$GroupBox1.Location = New-Object System.Drawing.Point(14, 32)
$GroupBox1.Size = New-Object System.Drawing.Size(279, 70)
$GroupBox1.TabIndex = 3
$GroupBox1.TabStop = $false
$GroupBox1.Text = $TextStrings.AddUsers
#~~< AddUsertxt >~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
$AddUsertxt = New-Object System.Windows.Forms.RichTextBox
$AddUsertxt.Location = New-Object System.Drawing.Point(17, 29)
$AddUsertxt.Size = New-Object System.Drawing.Size(247, 24)
$AddUsertxt.TabIndex = 0
$AddUsertxt.Text = ""
$GroupBox1.Controls.Add($AddUsertxt)
$PanelAddusers.Controls.Add($LablelAddUsers)
$PanelAddusers.Controls.Add($CancelUserAdd)
$PanelAddusers.Controls.Add($BtnAddUsers)
$PanelAddusers.Controls.Add($GroupBox1)
#~~< lblCoreConfigTitle >~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
$lblCoreConfigTitle = New-Object System.Windows.Forms.Label
$lblCoreConfigTitle.Font = New-Object System.Drawing.Font("Tahoma", 8.25, [System.Drawing.FontStyle]::Bold, [System.Drawing.GraphicsUnit]::Point, ([System.Byte](0)))
$lblCoreConfigTitle.Location = New-Object System.Drawing.Point(76, 4)
$lblCoreConfigTitle.Size = New-Object System.Drawing.Size(320, 17)
$lblCoreConfigTitle.TabIndex = 67
$lblCoreConfigTitle.Text = $TextStrings.WindowTitle
#~~< lblDescript >~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
$lblDescript = New-Object System.Windows.Forms.Label
$lblDescript.Font = New-Object System.Drawing.Font("Tahoma", 8.25, [System.Drawing.FontStyle]::Regular, [System.Drawing.GraphicsUnit]::Point, ([System.Byte](0)))
$lblDescript.Location = New-Object System.Drawing.Point(76, 20)
$lblDescript.Size = New-Object System.Drawing.Size(258, 54)
$lblDescript.TabIndex = 66
$lblDescript.Text = "" #Administrators have complete and unrestricted access to the computer/domain"
#~~< PictureBox1 >~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
$PictureBox1 = New-Object System.Windows.Forms.PictureBox
$PictureBox1.BackgroundImageLayout = [System.Windows.Forms.ImageLayout]::Center
$PictureBox1.Location = New-Object System.Drawing.Point(12, 5)
$PictureBox1.Size = New-Object System.Drawing.Size(58, 54)
$PictureBox1.TabIndex = 65
$PictureBox1.TabStop = $false
$PictureBox1.Text = ""
#region PictureBox1.BackgroundImage = ([System.Drawing.Image](...)
$PictureBox1.BackgroundImage = ([System.Drawing.Image]([System.Drawing.Image]::FromStream((New-Object System.IO.MemoryStream(($$ = [System.Convert]::FromBase64String(
"iVBORw0KGgoAAAANSUhEUgAAADIAAAAtCAYAAADsvzj/AAAAAXNSR0IArs4c6QAAAARnQU1BAACx"+
                                 "jwv8YQUAAAAgY0hSTQAAeiYAAICEAAD6AAAAgOgAAHUwAADqYAAAOpgAABdwnLpRPAAAEtpJREFU"+
                                 "aEPdmYlTVXeWx2f+kqmaqZmqTM1Ud9KdnsTEpE1M1KCJS8QNjaAiLgTZd0GQfQdZHjzgsT72fZNN"+
                                 "HjsIAqLIIsiu7LuCIJ85D5N027Gd6bTdNTW36tTjce/93d/nd77n/M657x+R4x/+PxxakDcdLzY2"+
                                 "WVt7zuLiBLOT9xkfqudxXzHDXcUMdt9iZLCd+alxnq3+MMrm/zTi3+b8P7wZYp2VxSkWHzcx0Z/H"+
                                 "+P1EhtvC6G/ypqvmOm0VTjSVOtBaeo2OumTGh/tZf/qUjfWNv81s3zDqnwXRemJxup+ZEQ1zg0VM"+
                                 "96Ywei+Ohy2hdDX5c0/jRnuZHU3FltRkm1KeakhK+HEyVW4MDQzBi78vy58FWZ6d5nFvKZO9BQyJ"+
                                 "J8baohhouUGXADQU2FOmvkiu4hQq/29RuOzlhs3nOJz9La62pjzo6vu/A9LdXsDD23H0t0TTe9uX"+
                                 "Ts01KlMvkeBzCH+bHbhe2Ia3yQ7cL2zH/rvfYaL7n5gbHSIzM4OVhR8D5g9eWV9dZ2ZymuGhUR71"+
                                 "DTE6Ms7S3Mpbc9trPfLs+RqNxW7U51pTlWVMVuwRwpx2Enb1c1n9byhRmHI7WWIj2YlKpRnJzidw"+
                                 "szSkpKqBqYnlVyY3MTFNeXE5ygglLs4umJqYcvHiJc6fv4CVlSXRodE01jeyMvfqfX8p4WtBJkd6"+
                                 "0GRZkK04jsp3P7VJtjRnu9FRGsBocwIzTWqmqlUMFIbSkuREofdFUhTRPHv2h8f39PZTkF9MgG8Q"+
                                 "zk7O2FjbYG5qzuWLlzl39hynTp3iyLEj7D+wH73v9IiJjGFp8ZfD/Azkxfo6DzuKKUu/gsrva5ID"+
                                 "vmW5s5CnQ9WsjteJ1fKsr4L5lnTGKiLpTHejJsSYVGUgT57MbZF0tnegUCgJCgoi0DcQbzcfXOxd"+
                                 "sLd25PIlE86dMeTUdwJyVED272eXzi50D+rS0XnvL3XET9f/DGR1ZYk75WEUxRgQ5/UN1XGWzN/J"+
                                 "YHOsgfWFDjZmO1jtr2ClTc14WSj3MzyoCDMhMdKPx2NTWwP3dvdjb3uVq1YOONo74uhgLxB2mBpf"+
                                 "wdjIiPP6hpzW0+fEET0OHziMzi4dPtn+CUGBN1h7vv6LYH4Gsrwww60cV1LCdEn316M3J5ilO5ls"+
                                 "DGt4Pn2HzZk7rD0sYaklRUDC6c70pCbSkpToEMbHZrYmsbm8THm8D3lhzmSGOKMOtCfJx4wEj8tE"+
                                 "2J3FxegoRnq6HDx4gD179rDz05189OFHGBgYMDE58XZAnowOUJJoTaLERoyrLt25wcw3pbDWU8LG"+
                                 "YCVrYqs9+Sw1J/GkTKSV4Ul1pB3q+DhmZ19moUWJsZ78QIZuhjFcrpBPSdvZvtxN86Ah7ioVgZeI"+
                                 "ttPlyF4dduzYwcfbP2b7tu0c2H+AjpaOtwQy1E2BygSVzz4CbfZQFePATFUUC41qVjuyWe3MZbk1"+
                                 "g9k6FYPaCaZ7UK2wQOVlx5Opxa1JjHdUy7kIZhuTmbudwpMq5db39uwA6qMcKPIzIuf6CSz1dfh8"+
                                 "x+/Z/tF2Ptz2Ibt376akqPgtgYyPkBtjQaybDn5WnxB57RAPMj2YqghnoSFeLEEgEnlSHs5gfgAd"+
                                 "alc04WY4n9lJuaaGpyLxgeo0BkvCma6LZ6ZBJKiJZaA4VLznTW2kFcW+58l0PoXLGR12boF8yocf"+
                                 "bGP3F7spzL/5dkDm5xYoSLxGtPs+/K1/j5vxDjRKS4aLw3gsMnkscTFSFsGjwmD6sry4neRC6Y0r"+
                                 "WB97l4gQT8bHl+kuiqYvP4QxTRwTGvFGuVIk6kdrohNVYWbkCUiqy3FcTuvwhYB88tGHfCAgOl/t"+
                                 "o6a69u2AbDx/TnVxOsH2u/G3+gxPk49J9zkjXvGkJzeQh3l+9OX60p3lTWeCIw3RtmR4n8Xkm3/D"+
                                 "xcyAxvaH3M2SbJYu1+ffoLcgmK4cL+4ku3A7xobyEFNyvQxIu3oUD6OvuXz4M6xPbGfX9v/iwKFD"+
                                 "jA2Mvh0QpAwfH5sg2PkY7gLhdukj/My+pl5pQ5vIqDNFql61G21J12hWWlOruEK4+QEMv3kHJ4vT"+
                                 "tLb305joS7MAtmivF2tLcKI51oEahSWlgefJdTMgwf4oUaZ78Dv/Gf762zn62XvYWNmxuLD0lkBk"+
                                 "mOfLTynIiOL6lV3Yn34PxzPbSHU9TpPSSoLVhvoYS+pEbpUikwQXA5xOvs8FnXcIvxFAz/BTKuNc"+
                                 "KQ8yplFgGpXm1ERZCbCFeMOEAh8jMiTQk2wOo7yylwDDz3A/+j67P3yfmwXlvwhCe9Mb+5He9mGc"+
                                 "bE5y/uS7eF74jCSRQ76PoQTrWfI8zpER7EKePNzLWg/b7w3QaJpZk/K9Wn2DIk99ioKNqRSgm4GX"+
                                 "KZRMVeRzlqxreiTbHybSYh+RJntx1/+Ys1/9u5Qu53/xHvJGEG1rVFyVi4n3Yc5JrCQ465HqpEec"+
                                 "5P9Y64PE2RzE2d2AxKJUMotyaG3qYf2HHqTtZjLqq8fJ9TxNngBluYu5nUbtchK1/bfEmu0jzPhL"+
                                 "Qi7vwfHIB4T6uPN4epEXL355E/Mzj2yub8p+MExKvS/+uYbYKI9xwfNLErwNKPSRbHPtJKnimXh7"+
                                 "XSxtpEYye58z9l8TEOXDwKOXgTrW1ECM7SHSHI/KtcdIdBITL6hsdFFa7iPi8k6CLn3ODaPd2B3b"+
                                 "xky/9C9/5fEKyOraKp3DzWTf9iZGY0H4TWP8cs5jpviWiMAz3AwQjXufI9/9NKniDdereuhbf8ER"+
                                 "s4/4zvEjbMKPoa5S0HH3IXHWh4m4so8Yi2+IsthPpKkOYd9/ReiFXQSe/5SAc19yVffXmH/zaxpK"+
                                 "cl6WNloZ/MKe/yeQTdHFwFgrN9uUpDe5kKRxQFlhRliZMV6ZZ/GVkr5EisPK4IuUBlykWILW20Uf"+
                                 "Qwcd9B0/5aLnbiyjDnFVdZyIPC/CnY8SZPQFIRd3EnJBZGS0UwA+xsfgE7zPyv504mOsvvoXrA7+"+
                                 "ipyYSJ5LL7a8/EJagU2eP3/BpqhsU6C0avvR3tQ+b4FoF2FuZYXi9hiB8CKzwYVojT2R1dL43BLP"+
                                 "lBjjnSQ6V17iVpQ1FRFm5Ida4OtmxKXrB7jkrYN52H4c447jEHMY64gjePsb4G2wA6/vPsbPYBse"+
                                 "pz7YMm/9D3HT24aFZDlznX/F/shvUTpdYEay7oJUOAsLG8wuPWd5aWOrv1kRWxVI7d/PxaTLeO2x"+
                                 "BbIhZ1sHqslo9hXzIqHOSaRlRXS1DUqNOWG3bPDJN0aZZ0tlbSElFXEUajIIlLhwURniqDqGk/ok"+
                                 "15OPYKc8jFnoAayCTxLselnKkN/jeuQ3OOu+h9Ox32D77a8w2/vPWOz+J5wOvoPHife4dv4gtr4R"+
                                 "pBXU0fdokrnZVaZmnzE9+5SZmXVmZ1a3PudmBHBxgxevgdkCmVmYprhVRWaLLylN14ivsRUIK6IE"+
                                 "QnnLnAjxSmiRMcElV6joLaJ9YZQ7c0OoC9JRFDtKUjgv8tPnWsJx7GKOYh5xEOPAr1GmRpOiTsfD"+
                                 "3hbnU59if/jXWO1/B6t972At5nDkXa7r78BcepUzzjGY+mcSmdFI691BhscWmHyyyOPJJWnYFiUB"+
                                 "LUvPL2Bzz8Q7Ekx/EktbIENP+kir9SOl2RNVzTUiNbYoq8yJEojISoEoNyG46DKB+edQ1wdwf/YR"+
                                 "fXPjpFdkEFVmL/8/j2fqaZySjuAg/b1luMjN/xg+abnENy4SWngftytHcTn6LnaHfiX2H9iJZ1yP"+
                                 "/Q7nyyewCEiQ2GrCKaFFvNqKX1obBdUP6Op9zKPBBYZHZxkeX2Ti8byArTI3vyYqelVhWyBdw00k"+
                                 "y1uSmCp7IkotiSw1kcmbEVluvgWhKDYhIP8CAZLB/HKNqR1qYnhxkYzCNMLyHfDJvYhXhj5uiUex"+
                                 "j/4Wq4iLuKeXiTeniG+FgOgsrp/fi/epbbjqySuj42InP8Dr+8O4hiXild0li9GPX34v3mkPcE6+"+
                                 "K2m/Dp+Eam419tHdN0L/wCSDI1M8EZi5mWdbyeCPjy2Qjr5aVKW2hBd/T5BMOFAsuOgSIYUXX3qi"+
                                 "0Aj/HEO8ZbLu6afIa06hZ2oOdWYiYXnWIisD3NL1cRQQs0h9nFOLUNYskHZ7RWwer5B4qdv0CDH8"+
                                 "HE/JWv7Gsqt72BCSWEhQwQAhN0cJKRklqLCfwJyHuGfdxz6uA9PQWpwiyiiq6qSre4TBoUkBWWBx"+
                                 "fpUXf/Iycwuk8UEZigILQnKN8Ms6g4/W5G/t5H3E/PIuyKqdwSvtNNfUx4kr9aRjcBhVUiJB2Ve4"+
                                 "nnYKjxR9rmplFemPV9YjVPXzpLaukN48TVBkKuoYFXmqMJJCPSkvLCav+iERJWOEVUwSXTZBRPm4"+
                                 "fA4RVdIrC9mDe8o9bGIaMPKrwC2mhHv3hnkyscLk7HPJXtrc/BqP3L5fJpO/iHfKadyST+Cackw0"+
                                 "r49n+uktc0/7Do/UEzilHBcd6+KVaoamo4WI6DC80i/glCxZK+FbLCJOYB5TgFvOI+Jqp0hunCel"+
                                 "+gmB0al0DswzPg0TErRN/bNEVYgXBECpmSO5boakxmmpJmZIrh0jtrSfgNz7OCe1YRF+i7Oe+eSV"+
                                 "d4gnNtn8+bu/LaItjwyMDBCa6SDu1MUh7vBLSzjKNQneLUs8gUOiLo6xh7GPPSjpVo/0ymxCVCFy"+
                                 "rR42cp+dci/fB0sVoCzHLbMPRdkocZopEsv7CQuQTvLBJNpOePgJZDdPEVoqq3/rMUkNc2Q0zZHW"+
                                 "NEV20wTpdcPElA8QmHcPV/UdLCKbMPQtwDeqkGGR1dOl128kWyCLCwuU1hZwNfIMJqE6WCpkl1bu"+
                                 "xzJ6P3ZiNtq/ow6IbL6RQN4rK7+fUHUwQSpPTCP2cDF4F5d8P+W0t4ncdwu3rF5J1UOElY4QVnyX"+
                                 "0MAA7vXOMTYLt3uXJdMNCcgYMbWzJDUvS7acF5AFUusnSKsZJlZAgnIEJKUVC2WjLFAZJp5pVDfL"+
                                 "zxojE6ytiFteJy3t1v9seWPr5XN2vhqvCFssffW47HYQI9evMHT7EsPruzBw3Y2Byxecc9mBhace"+
                                 "xu66nHT8HCOnA9hJlXvJ318erMEz8x7+eSKPwgHCRSIKeV3a1bMknt8gveYxAcXDUvpMS/Ug0pP0"+
                                 "rG6aR10zQULNFAlVoyhL+vARj7gltmMR1YBJuEaemSkxmUtL632GH828rMv+6PhD0Sgwq9JMrEh5"+
                                 "MDo8Sd3tZorKikjPTSE+I5rotEgSUiKJEVOlKIlPV6HKSJDzaZRVldP/oBNVVgXW0bWykg8k5rrw"+
                                 "zn1IQEYLMVHxDPQv0Nb7jLDCQcmC4q3yUVTVkp4lLmJr54itmiCualxiZ5zQkof4S0q+JvuKhbIZ"+
                                 "UwExdM/FLUhJZWUDXQ9G5HeYVyX22sZKW6xJ686a7KBPF9dYkBfMr7WFZyytPJVfq14OGleq1XSd"+
                                 "gNyVOLmPR2YPfhntJMXlMjb4lKr2lZd7hsBos5RCM4Gqdp4oAVJWam0Exc1Bwop68Ujv4Gpcs3ik"+
                                 "GpuIWxh65WLneoOc/HIaWzuZm3s16t/YIb7qvDd/WxdvZubVYxtWztX425LF2nBRd+Klvk1KWjk9"+
                                 "j9bI0IzKPtQlGUn2juJBFBVPCBcPhFfKp8SUQhJAWEGf7CW9eKZ0YBfbgIVCLLxaAv4mpnb+xMan"+
                                 "Ud/QId3kq739WwPZkJqhpVXkFF2AtUIjGbAJBwFyi5eqIbOetu41Yor68Uhrl4n2EFjwiBsy+dCb"+
                                 "Y1uBf6NokKA8kaKc88y6x/WkFqnb6gSkWpJLtcRfCZdt/UlU59DW/oBVUcrrY+QvWf7XXSsx9nh8"+
                                 "juLKZrwVmZiF3RR9t8gmqSE9u5aGtjkC0mWC6rt4yu7tn9eHb8EQIUXiHYHyK5DkkNUtoHelROnA"+
                                 "VtWOuaJepFojbYHEiFcRJraBFJfXMyyZa+PHvvqHubw1j2jH0/YNc9PP6O2SVjmnVOqoLCyCSyRB"+
                                 "1JGrmZTgbZPK4B7ektW8ZeUDcvqkcu6XCqJPvouc0gVCQB3iWqT4rJWUXy/pXiNbgkaq4wQ8glT0"+
                                 "948xp/XG62qtv9YZP96vHfuFdHfLS2uMjC9wp72H6NQyIlV5KNTN2MukrGNbpBbrkEnfk4Duxifz"+
                                 "AR4ZXfL9Pi6SJJyT72AbU4upopYrQVWY+ORh4pYsW0IqVTXtLMhC/Wnl+9PO/rZAfhpHst7ahgA9"+
                                 "3WRSeoi2jm7yCysIik6SFJqMXZAa68BMbPxLsQiqxDLkFlb+FZhrA9onBxOvBL73VuHgn4AiNlvS"+
                                 "exPdvcPytn8ZGfa1x1uV1s+eoN19tZutAGlL75GxOTq6HlHX1EnZrTvkFNeSmlNGQuZNUjJLScku"+
                                 "JaegWn6LbKax+R7dPaM8nphlTdreNW1MvOHFxN8W5EeyH4BePN9kZWWTJZHe0uIzZqSdnZlZYHZq"+
                                 "gektW5KmaYXl+Wcsr6zz9OkG66v/u3ddfx+Qt67dnw/430gtnbaCBlesAAAAAElFTkSuQmCC")),0,$$.Length)))))
#endregion
#~~< ButtonCancel >~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
$ButtonCancel = New-Object System.Windows.Forms.Button
$ButtonCancel.FlatStyle = [System.Windows.Forms.FlatStyle]::System
$ButtonCancel.Location = New-Object System.Drawing.Point(255, 395)
$ButtonCancel.Size = New-Object System.Drawing.Size(87, 23)
$ButtonCancel.TabIndex = 63
$ButtonCancel.Text = $TextStrings.Close
$ButtonCancel.UseVisualStyleBackColor = $true
$ButtonCancel.add_Click({Close($ButtonCancel)})
#~~< panelMenu >~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
$panelMenu = New-Object System.Windows.Forms.Panel
$panelMenu.BorderStyle = [System.Windows.Forms.BorderStyle]::FixedSingle
$panelMenu.Location = New-Object System.Drawing.Point(-3, 75)
$panelMenu.Size = New-Object System.Drawing.Size(369, 318)
$panelMenu.TabIndex = 62
$panelMenu.Text = ""
$panelMenu.BackColor = [System.Drawing.Color]::Gainsboro
#~~< ListGroups >~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
$ListGroups = New-Object System.Windows.Forms.ComboBox
$ListGroups.DropDownStyle = [System.Windows.Forms.ComboBoxStyle]::DropDownList
$ListGroups.FormattingEnabled = $true
$ListGroups.Location = New-Object System.Drawing.Point(60, 15)
$ListGroups.Size = New-Object System.Drawing.Size(243, 21)
$ListGroups.TabIndex = 70
$ListGroups.Text = ""
$ListGroups.add_SelectedIndexChanged({ListMembers $ListGroups.selecteditem})
#~~< ButtonRemove >~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
$ButtonRemove = New-Object System.Windows.Forms.Button
$ButtonRemove.FlatStyle = [System.Windows.Forms.FlatStyle]::System
$ButtonRemove.Location = New-Object System.Drawing.Point(276, 279)
$ButtonRemove.Size = New-Object System.Drawing.Size(68, 23)
$ButtonRemove.TabIndex = 69
$ButtonRemove.Text = $TextStrings.Remove
$ButtonRemove.UseVisualStyleBackColor = $true
$ButtonRemove.add_Click({RemoveUsers($ButtonRemove)})
#~~< ButtonAdd >~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
$ButtonAdd = New-Object System.Windows.Forms.Button
$ButtonAdd.FlatStyle = [System.Windows.Forms.FlatStyle]::System
$ButtonAdd.Location = New-Object System.Drawing.Point(193, 279)
$ButtonAdd.Size = New-Object System.Drawing.Size(68, 23)
$ButtonAdd.TabIndex = 68
$ButtonAdd.Text = $TextStrings.Add
$ButtonAdd.UseVisualStyleBackColor = $true
$ButtonAdd.add_Click({AddUsers($ButtonAdd)})
#~~< GroupBox2 >~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
$GroupBox2 = New-Object System.Windows.Forms.GroupBox
$GroupBox2.Location = New-Object System.Drawing.Point(14, 52)
$GroupBox2.Size = New-Object System.Drawing.Size(330, 211)
$GroupBox2.TabIndex = 3
$GroupBox2.TabStop = $false
$GroupBox2.Text = $TextStrings.Members
#~~< ListViewMembers >~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
$ListViewMembers = New-Object System.Windows.Forms.ListBox
$ListViewMembers.FormattingEnabled = $true
$ListViewMembers.Location = New-Object System.Drawing.Point(17, 25)
$ListViewMembers.Size = New-Object System.Drawing.Size(298, 190)
$ListViewMembers.TabIndex = 0
$GroupBox2.Controls.Add($ListViewMembers)
$panelMenu.Controls.Add($ListGroups)
$panelMenu.Controls.Add($ButtonRemove)
$panelMenu.Controls.Add($ButtonAdd)
$panelMenu.Controls.Add($GroupBox2)
$UserAccountsform.Controls.Add($PanelAddusers)
$UserAccountsform.Controls.Add($lblCoreConfigTitle)
$UserAccountsform.Controls.Add($lblDescript)
$UserAccountsform.Controls.Add($PictureBox1)
$UserAccountsform.Controls.Add($ButtonCancel)
$UserAccountsform.Controls.Add($panelMenu)

#endregion

#region Functions

function Main{
	[System.Windows.Forms.Application]::EnableVisualStyles()
	FormLoad
	$UserAccountsform.ShowDialog()
}

function FormLoad
{
	$UserAccountsForm.size = New-Object System.Drawing.Size(370, 460)
	$Global:server = [System.Environment]::MachineName
	ListAllGroups
}
	
function AddUsers {
	$panelMenu.enabled = $False
	$ButtonCancel.enabled = $False
	$PanelAddusers.location = New-Object System.Drawing.Size(20,140)
}

function Close{
	$UserAccountsform.Hide()
	$FormNetwork.enabled = $True 
}
#---------------------------------------------------
function CancelUserAdd
{
	$panelMenu.enabled = $True
	$ButtonCancel.enabled = $True
	$PanelAddusers.location = New-Object System.Drawing.Size(663, 29)
}
#*****************************************************************************************************************************************************************
function AddUser([string]$Global:aMember)
{
	$ListViewMembers.Items.Add($aMember)
	$Global:Check = $TextStrings.Add
} 

function ListAllGroups
{
	$Groups = Get-WmiObject Win32_Group -Filter "LocalAccount = True"
	foreach ($group in $Groups)
	{
		$ListGroups.Items.Add($group.Name)
		if ($group.Name -cmatch $TextStrings.AdminsRegEx)
		{
			$ListGroups.set_SelectedItem($group.Name)
		}
	}
}
#*****************************************************************************************************************************************************************
function RemoveUsers
{
	$userName = $ListViewMembers.SelectedItem.split("\")
	if ($server.ToLower() -eq $userName[0].toLower())
	{
		$userNameToRemove = $userName[1]
	}
	else
	{
		$userNameToRemove = $userName[0] + "/" + $userName[1]
	}
	$GroupName =  $ListGroups.SelectedItem
	$group = [ADSI] "WinNT://./$GroupName,group" 
	$group.remove("WinNT://$userNameToRemove")
	#Output to Logfile
	$TextStrings.LogUserRemoved -f $Logdate, $usernametoremove, $GroupName | Out-File -filepath $logfile -append
	
	$ListViewMembers.Items.Clear()
	ListMembers $ListGroups.SelectedItem
}
function OKAddUsers
{ 
	$ErrorActionPreference = "SilentlyContinue"
	#-----------------------------------------
	trap [System.Runtime.InteropServices.COMException]
	{
		$error = $_.Exception.get_Message()
		ErrorForm $error
		continue
	}
	
	$aMember = $AddUsertxt.text
	$useraName = $aMember.split("\")
	if ($server.ToLower() -eq $useraName[0].toLower())
	{
		$userNameToAdd = $useraName[1]
	}
	else
	{
		$userNameToAdd = $useraName[0] + "/" + $useraName[1]
	}
	$GroupName = $ListGroups.SelectedItem
	$group = [ADSI] "WinNT://./$GroupName,group"
	$group.Add("WinNT://$userNameToAdd")
	#Output to Logfile
	$TextStrings.LogUserAdded -f $Logdate, $userNameToAdd, $GroupName | Out-File -filepath $logfile -append
	
	$ListViewMembers.Items.Clear()
	ListMembers $ListGroups.SelectedItem
	CancelUserAdd
}  
#*****************************************************************************************************************************************************************
function Remove([string]$Global:rMember)
{
	$ListViewMembers.Items.Remove($rMember)
	$Global:Check = $TextStrings.Remove
}  
#*****************************************************************************************************************************************************************
function ListMembers([string]$GroupName)
{
	ChangeDescription
	$ListViewMembers.items.Clear()
	$aMember = $null
	$rMember = $null
	$ADSIGroup = [ADSI] "WinNT://./$GroupName" 
	  
	foreach ($member in $ADSIGroup.Members())
	{
		$ADSIName = $member.GetType().InvokeMember("AdsPath", "GetProperty", $null, $member, $null) 
		    
		if ($ADSIName -match "[^/]/[^/]")
		{
			$StrTemp = [String]::Join("\", $ADSIName.Split("/")[-2..-1])
			$ListViewMembers.Items.Add($StrTemp)
		}
		else 
		{ 
			$StrTemp = $ADSIName.Split("/")[-1 ]
			$ListViewMembers.Items.Add($StrTemp)
		} 
	} 
} 
function ChangeDescription
{
	$Groups = Get-WmiObject Win32_Group -Filter "LocalAccount = True"
	foreach ($group in $Groups)
	{
		if ($group.Name -cmatch "^" + $ListGroups.SelectedItem + "$")
		{
			$lblDescript.Text = $group.Description
		}
	}
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

Main

#endregion
