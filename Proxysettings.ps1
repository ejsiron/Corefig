Import-LocalizedData -BindingVariable TextStrings -FileName Proxysettings.psd1
#region Constructor

[void][System.Reflection.Assembly]::LoadWithPartialName("System.Windows.Forms")
[void][System.Reflection.Assembly]::LoadWithPartialName("System.Drawing")

#endregion

#region Form Creation
#~~< ProxySettingsform >~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
$ProxySettingsform = New-Object System.Windows.Forms.Form
$ProxySettingsform.ClientSize = New-Object System.Drawing.Size(355, 401)
$ProxySettingsform.ControlBox = $false
$ProxySettingsform.Font = New-Object System.Drawing.Font("Tahoma", 8.25)
$ProxySettingsform.FormBorderStyle = [System.Windows.Forms.FormBorderStyle]::FixedSingle
$ProxySettingsform.MaximizeBox = $false
$ProxySettingsform.MinimizeBox = $false
$ProxySettingsform.ShowIcon = $false
$ProxySettingsform.StartPosition = [System.Windows.Forms.FormStartPosition]::CenterScreen
$ProxySettingsform.Text = $TextStrings.ProxySettings
$ProxySettingsform.BackColor = [System.Drawing.Color]::White
#~~< lblCoreConfigTitle >~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
$lblCoreConfigTitle = New-Object System.Windows.Forms.Label
$lblCoreConfigTitle.Font = New-Object System.Drawing.Font("Tahoma", 8.25, [System.Drawing.FontStyle]::Bold, [System.Drawing.GraphicsUnit]::Point, ([System.Byte](0)))
$lblCoreConfigTitle.Location = New-Object System.Drawing.Point(69, 9)
$lblCoreConfigTitle.Size = New-Object System.Drawing.Size(272, 17)
$lblCoreConfigTitle.TabIndex = 55
$lblCoreConfigTitle.Text = $TextStrings.WindowTitle
#~~< lblDescript >~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
$lblDescript = New-Object System.Windows.Forms.Label
$lblDescript.Font = New-Object System.Drawing.Font("Tahoma", 8.25, [System.Drawing.FontStyle]::Regular, [System.Drawing.GraphicsUnit]::Point, ([System.Byte](0)))
$lblDescript.Location = New-Object System.Drawing.Point(86, 30)
$lblDescript.Size = New-Object System.Drawing.Size(292, 22)
$lblDescript.TabIndex = 54
$lblDescript.Text = $TextStrings.WindowDescription
#~~< PictureBox1 >~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
$PictureBox1 = New-Object System.Windows.Forms.PictureBox
$PictureBox1.BackgroundImageLayout = [System.Windows.Forms.ImageLayout]::Center
$PictureBox1.Location = New-Object System.Drawing.Point(1, -1)
$PictureBox1.Size = New-Object System.Drawing.Size(52, 53)
$PictureBox1.TabIndex = 53
$PictureBox1.TabStop = $false
$PictureBox1.Text = ""
#region$PictureBox1.BackgroundImage = ([System.Drawing.Image](...)
$PictureBox1.BackgroundImage = ([System.Drawing.Image]([System.Drawing.Image]::FromStream((New-Object System.IO.MemoryStream(($$ = [System.Convert]::FromBase64String(
"iVBORw0KGgoAAAANSUhEUgAAADIAAAAqCAYAAADxughHAAAAAXNSR0IArs4c6QAAAARnQU1BAACx"+
                                 "jwv8YQUAAAAgY0hSTQAAeiYAAICEAAD6AAAAgOgAAHUwAADqYAAAOpgAABdwnLpRPAAAEq5JREFU"+
                                 "aEPdmXd0lVXWhx1nRhEIIYQSQgLpvRdSKCFAwNARFUR6ld4hhC6EFEACIYBIrwECAlKkRZr03ntX"+
                                 "DNIJBpLcPN/vDeqMI4Moa/75zlp73ffWdz/nt/c++5z7NzTe+P8wDJD/xch9Cmeu5LDrRA6rD5tY"+
                                 "ddLEylM5bLmew76Heu+piWtZcOe+CUyy1xxvvOb3f/f1UxfzmLfBxIjlOTQb+4zaQ58RnZBDvYRn"+
                                 "1Br9kHdHPaR+UiadVz4g9XuIP5JF3IqbHDiWxZOHuZD31zx6bZD8fMjX7F/WLB+UD2N3mmiUCLVH"+
                                 "QdRoqDkCIkeaqB6bT0SMiSoDTFTq/YSIQQ9oMv0u/XZm0yH9Ib03ZzH7molT90E4+tE/B/RaIEZE"+
                                 "XL4Ds/fAx59Dm4XQfDY0Tob6n8kmQMPxSBGoFwc1DLjhFACF9c0jvMcjArrcIqT7VVrOv0PCbfgs"+
                                 "E9J+gAs/wbM/AfOXQIyIfigVdt6ApEOykzByO4zZB/3XQwcBNZsJ702BD1KhkYDqjoM6gomSQtWH"+
                                 "yAblE9Ynm7Du9wnqlElYz8t8PPcecTdhvEIu+Sps1STd1n1eJYX+EshjkWz+EWK/hj6bYaPierNs"+
                                 "5SNIOafw2gttBfPxLBPvz7pHwxnfUW/yPaITs6n9aR4RQwUSA5X6Q1iPXII/ySao9ffUHH6DURcg"+
                                 "UYokXdPv6HqpgDJVFP4I5k+DZEnufc9AvjFIEMlHNXM5Ukdwsy9LFUH0WgedlkP7JU9ouGshUefb"+
                                 "UuPwYCK3xRGxNoVKS2cTPiudilO2EJJ4gIrDjxPY44SUOUnL1AeMvZjLeCkzRr839hTM06ORg7yk"+
                                 "uP0pECNkT2jml2jmVwtmwxOp8RgO6/UzenOvsnSaFOmzUTBroevKHJpuSScq25Xqj4OIvBVK1UtB"+
                                 "hJ4II2RvBAHbaxK0rh5+axrht7gdfqn9CR2fyMfpRxipUh0nNcacgVG6wRyp80T3/G/jlUFyNBsX"+
                                 "Zavl8PwHsF6xu0kgBsQB2THdZI4gYjJg8A6ptVuhJ8V6rs0n+lwPqt8PFkgAlW/4EXrOm5Cj3vjv"+
                                 "dSdwhyd+29zwyXDHe7sjXtM/xKfdOhWK2wVhNuoiDJcqA76Fhaef8eDJi2V5NRB99zs5v1qVZJWc"+
                                 "Xi+YNCXkhGOCUixv1XuHs2HmWRihhB+tAhAvG7If+p64xgd32hGdFUrkbYFc834OctwL/30C2fkc"+
                                 "xHezG26rquE1dAmezQ7i22ofbZfdYoTuMUK/O1iPDYbvZdMO3fgF1eyVQO6oti8/nMd8qaCIYZts"+
                                 "ixT4UlVltUrmcYXbdn1mnPIl/gTEXXnK8MxDfJI3kObUpiGh1MkLptbdICKu+xNxwYfwU/5UPOBN"+
                                 "0B4BbXPFc00obknj8Wp/Aq+mB3BrshOPhpvwbb2DBvHHiR5zAvvIGTTrvZZ7959irF//Pl4J5PCp"+
                                 "XMYeymWZlFF15RvZDjn/jVQ4oERX3pNx93kZjrt5neFPZ9DV1JKPiKCRrEF+KHWzw4l6IJDv/ah6"+
                                 "0Zfw036EH/EieJ8n/ju8cUvtinf3rXi1OIXPh4cEshu3+puxj16Na/Qy7Gouxjp0Gr61Z7Bus2Lu"+
                                 "P8YfghhlL3lpFuOvqF/Sl1WQ0JKBoobjsvMyLSfsyr7BsHsL6W5qTTup0IzqNKYSTWT1TMFEZwdR"+
                                 "414AVb7zo/Jlf0LP+hKq8ApWeHkuqYb7J1vxa3Eaj2aHCyBcG23Dqa5Aaq/DrkYa5SPmYRM2nbKB"+
                                 "CbTsnkbmvd9m/h+CZN7Jpf3sO8x+kMdqI6RkWw1FZKq0HDQ9ZKNpHyPzBtAyP5r3qSqIarwnJQyQ"+
                                 "BoTTwBRGndwQav4USM1bflQRSPh5Xyqd88JnQzAOsUn4ND+G54d78XhvH04Nt+FSbxMu0WtwqPUl"+
                                 "DpFp2FSZj23YDMoEjCeg5gS27b706qFlkhy79j+iVdp9FuXms9JI9J9Bdqmob87/jtG5CbTPbyin"+
                                 "Q2VVBBIuiKp8oOsGVC7Ij4IckSqRN32puN+LSpf8VYZ1fcoNh3Fd8Wi5Hc8me/BonIFrgwxc6m7A"+
                                 "6d212NVejl3UEmylRvmqn2NbcRJWgeOwDkggafpusnP+lSgvVeSpmp2UeT/SL+MRi5ULXwniawGs"+
                                 "y39ESv5auvzUhfo/VVYiy1lTRTkcopwwgAyYKtTXdQMqUuexH2Fn/XFd0BzXcf2pciSSat974bEi"+
                                 "CNd2q3Fv8q1CyYDYiKNywrn2KhyiVmJXbbFsITZVpUaVmViFpFDGfwKlfZJo1n0Nt25pyf95vBTk"+
                                 "jha7DqNu0HPrk4JqZeRHWv5dBmcnU//HKKJ+DCbqYQBRT4Kp+zSIaDldzwilApjnEBWvuuOUXh/n"+
                                 "iZNw77MFp7Y7cZ/fAtddDpTv1R7v9zfg3mCTFFhZ4LxD9TQqRM7HLnIhFarOplzlL7CV2YSmUqZi"+
                                 "ClYKrZK+CVRpMJvTp+//Wr1eCnL+2jMa9DtD6wWPWaTcmvI0g2a3WlDtcjBVrnpT/Ya3Fjl/rQ9+"+
                                 "1MqSPQ2mtimQd58EEnrBF8cFjbAbk4p3r8P49dhP+MBzeH+cQfkPxuE0uBuV+62hYuv9ONdfjUPd"+
                                 "dFzqryKwzWZCeuxWh3wAp8jZ2IYowSumUjZoCiX9J1PadxxWvpqUqjNZteEieT83YS8FOXQym+hu"+
                                 "Z4gce44WB5bQ4GIU4Sc9CL/gRVWtBRGXvKl23ZeIH3yocdefmne10J3wwHVJbRxGjsar+278eh6l"+
                                 "0oBjNJstJffl0G75A+pPO0WfjEyGa83ppyat5uCj1Is/R3M1cL02mui/S+uR+qugj9djFTRZEBOx"+
                                 "9k8uACjtOxFL32Tsqsxj+sKz5OQ9X+lfCrLnSDbV+q8gaGkrAnYEE7jXlZDDboSc9CL0tGDOexGp"+
                                 "xK18yU3thS9O0+vgMCQOt15b8e68S23GZQZse0bCtdyCfUayLPGWFk7V63j1UQkqPCMFM2CXidh9"+
                                 "JgaoK4jR3qafSmL3NTm4NkwTxGRs/SepWk0RhKHIZKz8P8cpbBHjpx8nx+id/gjk/K1DhCxsjcca"+
                                 "lcmvnPDb4lQAE3bCjbCTPlS+6I7/bg+cF/njP20Y1VI34tFlMx7tvyG48yHiLucyQR1FijrXZC2Y"+
                                 "k3SdeF0mgDg1g8NPC0TdwGBtLQeqlhv92SAtUkbT2X7xQ5xrzqWswqmMQKx8fwEx8mQO5cOWE59y"+
                                 "RiDPK9cLFckx5XDk8W5ab6mL60xHnObZ4bZEDd1qJynjQuhBd/x2u+KW5orLZy2pt2E93dRbDZRj"+
                                 "teLOUm3AJRrFZTJVxSJZewsDZoIAEoxuVovySDWXI9QIjtSKGnvkuQoD1RT226neTP1Pr2+gm/b9"+
                                 "/q2+FoQRUlOV4FMp7ac88ZlFcZ/5Umo5SVMNRZ5v8n8HYqwdGTczeG9tY5wmO1BhSnnsZ9jhON8B"+
                                 "rxX2+K11wnuVA7aTQrDu2xrXHlOpok1IpSFH+WjmHToteUBLPUbFniHx4jMS1b8kCWDsFYWTOlkD"+
                                 "YJTCybChghiqFsFQwoDob5hABmnF7a/OuUb3nQqlFIp7TcXCYwoW7tMo4pLKP+1mYOk5lwXLLpCX"+
                                 "9wJFck257Lm5hzqL6mM7tjxlE+2wH29H+anlcfnCHofZttgmO1FqSC2sOiZg89FMyjaeh33jFXh/"+
                                 "uAv/lt9Ssc1eAtvvxrPxJlrOvcE4KTFCYTTCCCMpYITSMFmMwmmQsTUWRIwAekiFXmobum4y1NDr"+
                                 "CjGPj7bwT/sE/l5hHP+wmcDfbD6TTZXNwiFkKQf33yX/567+V0XyTfmcvX2WVstaYBPnSJkR5bAe"+
                                 "U45yYytgM6EcFSbaYj3KnRI9W1C6WTyl30ulZP0ZlNXKW7bWKsrXXEbZ6umUq5mGdUQaVhFzaZP2"+
                                 "gFg53Uth00uVqJcc7ieH1RsWWBcjF7TKdlQT10ptg2FtlsKH8/OpNvo2xTxSeNM6gTfLpvBGuc95"+
                                 "02aebDFvVlhCZJMMrhkHY/+5IGZlZxGzPpayQ2yxjLGm9DBryoyyocwYK0oNs6P4gIqYt+qCed04"+
                                 "zN+dgGWNZCxV50tFLKRU1QVYhs/GMnSW7AuKB0/HImgadZOv01MA3eR0NzndSXv8jsbhhJxvrxW2"+
                                 "nQBaG86n6/QlTXt8QbRYrBOXCY+wCl3MG9YTect2On+3nSdVFvOW3UrerrBGKq2ij8pd1pMXtCjr"+
                                 "Tq3He0wQ5n2tsBwkG2hFyZiylI1xxrJdXYpE96Jo5CjZaMyqJmCpTrSknC8ZOp1iIZ9jETyVEnpe"+
                                 "qtJcigdOxlxJ6tl0Hc3nZdFJEJ8oXDqpNegsiE5rBKIOtMMvSmh/30bW/GeQWol3MfNbplxYJFtO"+
                                 "YYe1/MNxDe84bORthwwsAzazcq02Qv82CkLraW42rRd1pERvayx6lcGityUWfcpgN8yd3kuG0+ST"+
                                 "BZgHjeSdkL4UChuKWegkSlTUrAenYB44Se+lUML/MywDU7BUubTwGY+572cU8R5HiUozCOz2LQ2n"+
                                 "3aL9l9ByUTbNFjzVtakAxHittSDaylpJGeO6ccojSgVu4y3HjRRxzqCwyy7edt5OIec9FHLZT2Sz"+
                                 "Q1y9+YI2ft/VA3h/GohFjzJY9ihN8V6lKR/rQfI2HUxpbN11C8c6w3kjoDPv+MVpxpUfAcma9YkU"+
                                 "k8PF/CaoJCbpOglzr+dWzGscZj4JmHkkUtw7XspN0c5vPQ6N03F9f43C53vaynEjvNqtkCnEOgjC"+
                                 "eF4j9rZ++yhF3I/LTlLE8yxFPU5T2O2s2pQTzFho7IB+OwoUOXb9BIGfBlO8WxnMu5bAqk95Rq7R"+
                                 "idrP47HWg87DFvBPrx6a5TFYqEUwV89T4LxXPMXkaHHPeMxkxT0TKKZHc884zLwE4jkGc3fllXu8"+
                                 "nEqkqPs4vTeBwE6H6KDwMhzvLFU6yjoY+aLzMI+WdynhewNzn0zdJ1MT8gNm3pn63UyqfHCFCxd1"+
                                 "ePAiEGP/G7NylEDKUrhjCZzH+LLoUBpnfjrKhutr2XJzBW3mdKNoaHsKuY2hqNtoiujRzHj0GK3q"+
                                 "Yjx/br++5j5aThs2VqoYnxWEW5I+o5Bzm0K5auladx4VVCwDyEj+LsqdaB2xVqieI8WfUSIwn+IB"+
                                 "Jkr45WDhl49N+GPmLDMOuH4/fi2/x68exzPWn6KdrSmXVEH9VRCVlwRTaXEAoWm+eEx3x7xpHQq5"+
                                 "DqaQ03DecRlGYefhFHUdRjFZEefnZmZcu3xKMZeRFHURiItA3Mbr9fGCSi6AKOI2AwuvdDWLl+im"+
                                 "AtBd1ayL1pB+qm71ktBuEMqEyMLAUo+WQVAyWPnVN4sr1wuOuF+syC+v9pzfh7fa2/JWjAW2M0vj"+
                                 "MMcW+5nW2H9hhd2MMpQfaUup6k1527GfqsdAijjEqJLE8o5TLIUdY5SUsRRxGlYAWsRplADjBKSQ"+
                                 "cpmIuUsyZi5TBDSf4m7pCrWt2vWdpHV6Dr21CHbVSt5EB+GO0QKpLKsmixBMONjpeeWmOldTe/PL"+
                                 "AvjC0DJezNcnVhxYR+CImpTq4UW5GCecP/XGNz6YiEk1aLugMwkbkvkqYzvvfzSNwvZ9VeN7q64L"+
                                 "yr6/wGIo6hhLUXupJZDCjgo1x/FSSbnkPFHqCcJlNuauSwWxWW3HMZXRGzSdllfQtg9Qq1InXiB1"+
                                 "0AZL4VUD7GtC2Uid3reEZQq9l53//qbX+ulpNue/v8yyfauZunUOK3Z/xbbzB7l25zoPsv4Vm3eu"+
                                 "5FHvoy/k9EDeKmcA9eHt8oMoXEHq2A2lqN2nUmoUZo5KdqcJgpmGmfNcgaRTQkqU8D5Ecf8rlA54"+
                                 "gH/rXFoowY1OWB0Pru8Jph44Sxn7WlCllQ7I1Rlk61TzZeP33a8yPzcvj6c5z/SY+8JZyMvN48Ch"+
                                 "m/Qbtgob31FyPpa3bRRmFYZSyG6kbKzCTontqJxwSlUeLVRopavx+1q5sVNqnKSU74+UUiLbVtWM"+
                                 "61TeAOmthdNPs+9YH7wF02WYSr8gcnQw+EfjD4+D/tsPGJXuSZaJGQuOUePDhRR3TaBIhThBjZNS"+
                                 "kwWSKiXmyoycWI652zqBfIOlz2G15Oe0p7iHVbBJh26aeTmtpoHaiUajqP9Q2kKqWpbbOsl81fGX"+
                                 "QX65QZ62mj9kPmHijINENVuOtfYMZi7KIccvlOwLKea2VOH0tcJpOyU992LpfUZdwC1VoixKqyLZ"+
                                 "VFIeKKGtlNiVGmvPovJ7Rme9Ev1l/yK8vGq9Kv0LP6d9wbWrWcxafIoW3TbhE5WucrtMSf6l1Fgv"+
                                 "oG+0oB3Q4nkWC+8fsPQTiEqqn9Ro0kO7yEX6y0J7lXyjuv6Jv9x+8eW1FXkRVNbjZ5w885CV66+T"+
                                 "OP00PYYco02v81oHLtGuzzU6Dsskfspj0tbmcUR7lNvaBr/u+J+AvK5Tf+X7/wc6OxgwDPtEawAA"+
                                 "AABJRU5ErkJggg==")),0,$$.Length)))))
#endregion
#~~< ButtonOK >~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
$ButtonOK = New-Object System.Windows.Forms.Button
$ButtonOK.FlatStyle = [System.Windows.Forms.FlatStyle]::System
$ButtonOK.Location = New-Object System.Drawing.Point(128, 366)
$ButtonOK.Size = New-Object System.Drawing.Size(87, 23)
$ButtonOK.TabIndex = 52
$ButtonOK.Text = "Apply"
$ButtonOK.UseVisualStyleBackColor = $true
$ButtonOK.add_Click({Ok($ButtonOK)})
#~~< ButtonCancel >~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
$ButtonCancel = New-Object System.Windows.Forms.Button
$ButtonCancel.FlatStyle = [System.Windows.Forms.FlatStyle]::System
$ButtonCancel.Location = New-Object System.Drawing.Point(241, 366)
$ButtonCancel.Size = New-Object System.Drawing.Size(87, 23)
$ButtonCancel.TabIndex = 51
$ButtonCancel.Text = $TextStrings.Close
$ButtonCancel.UseVisualStyleBackColor = $true
$ButtonCancel.add_Click({Close($ButtonCancel)})
#~~< panelMenu >~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
$panelMenu = New-Object System.Windows.Forms.Panel
$panelMenu.BorderStyle = [System.Windows.Forms.BorderStyle]::FixedSingle
$panelMenu.Location = New-Object System.Drawing.Point(-1, 55)
$panelMenu.Size = New-Object System.Drawing.Size(358, 292)
$panelMenu.TabIndex = 50
$panelMenu.Text = ""
$panelMenu.BackColor = [System.Drawing.Color]::Gainsboro
#~~< Panel3 >~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
$Panel3 = New-Object System.Windows.Forms.Panel
$Panel3.Location = New-Object System.Drawing.Point(15, 3)
$Panel3.Size = New-Object System.Drawing.Size(184, 44)
$Panel3.TabIndex = 56
$Panel3.Text = ""
#~~< ProxyRadioButton >~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
$ProxyRadioButton = New-Object System.Windows.Forms.RadioButton
$ProxyRadioButton.Location = New-Object System.Drawing.Point(0, 24)
$ProxyRadioButton.Size = New-Object System.Drawing.Size(250, 17)
$ProxyRadioButton.TabIndex = 13
$ProxyRadioButton.TabStop = $true
$ProxyRadioButton.Text = $TextStrings.UseProxy
$ProxyRadioButton.UseVisualStyleBackColor = $true
$ProxyRadioButton.add_CheckedChanged({ProxyRadioButton($ProxyRadioButton)})
#~~< DirectAccessRadioButton >~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
$DirectAccessRadioButton = New-Object System.Windows.Forms.RadioButton
$DirectAccessRadioButton.Location = New-Object System.Drawing.Point(0, 0)
$DirectAccessRadioButton.Size = New-Object System.Drawing.Size(235, 21)
$DirectAccessRadioButton.TabIndex = 12
$DirectAccessRadioButton.TabStop = $true
$DirectAccessRadioButton.Text = $TextStrings.DirectAccess
$DirectAccessRadioButton.UseVisualStyleBackColor = $true
$DirectAccessRadioButton.add_CheckedChanged({DirectAccessRadioButton($DirectAccessRadioButton)})
$Panel3.Controls.Add($ProxyRadioButton)
$Panel3.Controls.Add($DirectAccessRadioButton)
#~~< ListBoxSettings >~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
$ListBoxSettings = New-Object System.Windows.Forms.RichTextBox
$ListBoxSettings.Location = New-Object System.Drawing.Point(14, 231)
$ListBoxSettings.ScrollBars = [System.Windows.Forms.RichTextBoxScrollBars]::ForcedVertical
$ListBoxSettings.Size = New-Object System.Drawing.Size(327, 49)
$ListBoxSettings.TabIndex = 52
$ListBoxSettings.Text = ""
#~~< Panel1 >~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
$Panel1 = New-Object System.Windows.Forms.Panel
$Panel1.BorderStyle = [System.Windows.Forms.BorderStyle]::FixedSingle
$Panel1.Location = New-Object System.Drawing.Point(2, 223)
$Panel1.Size = New-Object System.Drawing.Size(438, 2)
$Panel1.TabIndex = 51
$Panel1.Text = ""
$Panel1.BackColor = [System.Drawing.Color]::Gainsboro
#~~< GroupBox2 >~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
$GroupBox2 = New-Object System.Windows.Forms.GroupBox
$GroupBox2.Location = New-Object System.Drawing.Point(14, 91)
$GroupBox2.Size = New-Object System.Drawing.Size(327, 116)
$GroupBox2.TabIndex = 3
$GroupBox2.TabStop = $false
$GroupBox2.Text = ""
#~~< ListBoxExceptions >~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
$ListBoxExceptions = New-Object System.Windows.Forms.RichTextBox
$ListBoxExceptions.Location = New-Object System.Drawing.Point(69, 46)
$ListBoxExceptions.ScrollBars = [System.Windows.Forms.RichTextBoxScrollBars]::ForcedVertical
$ListBoxExceptions.Size = New-Object System.Drawing.Size(234, 46)
$ListBoxExceptions.TabIndex = 53
$ListBoxExceptions.Text = ""
#~~< LblDoUse >~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
$LblDoUse = New-Object System.Windows.Forms.Label
$LblDoUse.Location = New-Object System.Drawing.Point(104, 95)
$LblDoUse.Size = New-Object System.Drawing.Size(210, 15)
$LblDoUse.TabIndex = 59
$LblDoUse.Text = $TextStrings.UseSemicolons
#~~< LblDoNotUse >~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
$LblDoNotUse = New-Object System.Windows.Forms.Label
$LblDoNotUse.Location = New-Object System.Drawing.Point(62, 27)
$LblDoNotUse.Size = New-Object System.Drawing.Size(252, 16)
$LblDoNotUse.TabIndex = 58
$LblDoNotUse.Text = $TextStrings.ProxyExceptions
#~~< PictureBox2 >~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
$PictureBox2 = New-Object System.Windows.Forms.PictureBox
$PictureBox2.BackgroundImageLayout = [System.Windows.Forms.ImageLayout]::Center
$PictureBox2.Location = New-Object System.Drawing.Point(8, 46)
$PictureBox2.Size = New-Object System.Drawing.Size(43, 46)
$PictureBox2.TabIndex = 54
$PictureBox2.TabStop = $false
$PictureBox2.Text = ""
#region PictureBox2.BackgroundImage = ([System.Drawing.Image](...)
$PictureBox2.BackgroundImage = ([System.Drawing.Image]([System.Drawing.Image]::FromStream((New-Object System.IO.MemoryStream(($$ = [System.Convert]::FromBase64String(
"iVBORw0KGgoAAAANSUhEUgAAACkAAAAtCAIAAAC8k9W3AAAAAXNSR0IArs4c6QAAAARnQU1BAACx"+
                                 "jwv8YQUAAAAgY0hSTQAAeiYAAICEAAD6AAAAgOgAAHUwAADqYAAAOpgAABdwnLpRPAAAAAlwSFlz"+
                                 "AAAOwQAADsEBuJFr7QAABY9JREFUWEftmGtMU2cYx1+d2TUyh8Qwb9ucu8Vsyj5sumxLnGGLaNxM"+
                                 "NjOzLVvMZrahy5hG0BkbvGHBy7hYQSkWubRqW2jpBXpOKaeUKhQopRQshVIbwAllIE4pWDh76Bs6"+
                                 "xmhpaxO++M/Tk5PT57y/5/+c97zntHOsHVY0WwL2bAWaLfB4vx+x/3vhHQ5Ha2uryWSyWq3d3d19"+
                                 "fX0h75DXntvt9oJCrlJJUFSFUkkqFGWgUoWc0pLX66qhpg6braenBwpyBFuWV7bNZiNJor7hdmVV"+
                                 "l9F0q7nZbmxqM5luNBqa9HV6rVZLKMkSqVQskShIBVVZaTabA22MV7bFYiEIyRffiMIWCxatvr7k"+
                                 "XcvKDxzxJ+5WN9ytMw4YTH0trb1t1t6b9j57Z1+NTi+RSELGNhqNVAURveUqmleAIlQosgEttEXF"+
                                 "9IvL75VfuytS3oEoUQ2WaQZ5JQ5CZZZKQ8eura1VVahitvLRY5dQJIleqEWL2yJWDwgI2tJJ6y10"+
                                 "QxutM4/Vt7kKpQMlciNBlIXMt1qtLlWoN24F31koQoiWlKOlhrnL7Iw0p9ZAl12jCR2trKe1ZppT"+
                                 "MiCR6ysqykPGlsslIrEmegvvmYhzaP5FtEiAnidQ+PUvd3UKypwFJcMFEhevdIxH0Omc/tLSWq1W"+
                                 "EzL21SsF+YWV6zbkLVzOmjMfrHNRpBg9p1y7qflMzl+n2XdOsf9OveRMYbuYGT0EodXpakLGvszl"+
                                 "nM2kXltzIWJ5xhML09GzbLToClogXh6l/eWQfe+xP3872huf3P8zY/BYql1JqhobDSFj5+VmH2WS"+
                                 "C5akzY88+Xh4CgrLQOEctIAX9qJUH7imLcvr/X2Zl3cokZjz9Ck0NwmhIwgx0bw09GT23AguoOlA"+
                                 "xGKxAmNzLrIptY7H0+RyqhISZDEb8199PScsnD3vqWxgj42NBW5eP6UCr75hQc3MzL6Uy9FoSI2m"+
                                 "AqSmqkhSx2JVediBmKf/797X81smk7LZ7AsX2GfPsg4fPnz6VEp+Pqe46KqHDe49mraOyQmBsXGL"+
                                 "jE1NhVweny/Iy8s/dy4rKYkJ7NHRUVyBb0EaCOcEw5bL5bC4woOrpqbGYDDAdlo2MHKE1O9ZZZuO"+
                                 "UjgwGORyy192S/W/C6RMJlMQhE6na25u7ujoaGlpATaMhSuYUS7XAxx+sUUn4yZPyPb2dmFRkUKh"+
                                 "ANNt7e0T7AeYDUXANrdYnZwj+zWD+OEMuT1ZBaY/ZKhXxWujGLUPxjUCn5nZKhFXeZE55Wbo7OyE"+
                                 "x5rGPd1JkgQqjIXduz2N471pgj0yM7vg4LeTGz7tmuBmj7jZuJ8un75HsGZmCxJ3NBmNvldmoMJY"+
                                 "2L3Hlrux0wRk4iS/2JwD3/X390/G12Qeqr5W5TniZg9j9/ha+nG9/fDNZ6fdTFyfmxjb1dXlgVGp"+
                                 "CbeTtlWqSHwEqMPD42zcTG+OPcf97fmNGy1UQnQ7Yz2xL0bITjfo6wGmTD9IJ37tYG6XC7gTbCd2"+
                                 "746R3GLK2zx3g8fTZu45DH3l/Bkr46ObjOiBpE2O45+ZknfcSv5q9MgnQ/vXOva9Lcz+A6hO5xB2"+
                                 "D5qowOsOTvOLDfjLKfGDzM33TnzqSv6cTtzsil83GPdWd+wb5p0rLLtWZDF2DQ3dd7Od7hj24dvN"+
                                 "HU/zlw1zTZiTYTu+jT7wMR33ztCeNbd2rzLvXKnfsbRq58upR/ZjNriHgHHxzrTh+dZfNp5TsKKJ"+
                                 "884XndhTt3dDx0+vNH2/jPzxTRGfB9T79+/BFirAPB++cQJkBsb2zPNiZlzX7pdEse+VkwQchJ8/"+
                                 "fD4fsz14H9ZxWpBsMXO3MPb9KW+i2L3/ESRbcnpPo6FhymKH3cOIfgqS/X1nCvSFN4j8R/95BNG0"+
                                 "hzzlUc8fsoFBnD6bPf8HPcBsK3biqJAAAAAASUVORK5CYII=")),0,$$.Length)))))
#endregion
#~~< ChkboxExceptions >~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
$ChkboxExceptions = New-Object System.Windows.Forms.CheckBox
$ChkboxExceptions.Location = New-Object System.Drawing.Point(1, 0)
$ChkboxExceptions.Size = New-Object System.Drawing.Size(78, 24)
$ChkboxExceptions.TabIndex = 0
$ChkboxExceptions.Text = $TextStrings.Exceptions
$ChkboxExceptions.UseVisualStyleBackColor = $true
$ChkboxExceptions.add_CheckedChanged({Exceptions($ChkboxExceptions)})
$GroupBox2.Controls.Add($ListBoxExceptions)
$GroupBox2.Controls.Add($LblDoUse)
$GroupBox2.Controls.Add($LblDoNotUse)
$GroupBox2.Controls.Add($PictureBox2)
$GroupBox2.Controls.Add($ChkboxExceptions)
#~~< GroupBox1 >~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
$GroupBox1 = New-Object System.Windows.Forms.GroupBox
$GroupBox1.Location = New-Object System.Drawing.Point(15, 24)
$GroupBox1.Size = New-Object System.Drawing.Size(326, 61)
$GroupBox1.TabIndex = 2
$GroupBox1.TabStop = $false
$GroupBox1.Text = ""
#~~< TxtBoxPort >~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
$TxtBoxPort = New-Object System.Windows.Forms.TextBox
$TxtBoxPort.Location = New-Object System.Drawing.Point(245, 28)
$TxtBoxPort.Size = New-Object System.Drawing.Size(57, 21)
$TxtBoxPort.TabIndex = 57
$TxtBoxPort.Text = ""
#~~< LblPort >~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
$LblPort = New-Object System.Windows.Forms.Label
$LblPort.Location = New-Object System.Drawing.Point(211, 31)
$LblPort.Size = New-Object System.Drawing.Size(39, 15)
$LblPort.TabIndex = 56
$LblPort.Text = $TextStrings.Port
#~~< TxtBoxAddress >~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
$TxtBoxAddress = New-Object System.Windows.Forms.TextBox
$TxtBoxAddress.Location = New-Object System.Drawing.Point(68, 28)
$TxtBoxAddress.Size = New-Object System.Drawing.Size(132, 21)
$TxtBoxAddress.TabIndex = 55
$TxtBoxAddress.Text = ""
#~~< LblIPAddress >~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
$LblIPAddress = New-Object System.Windows.Forms.Label
$LblIPAddress.Location = New-Object System.Drawing.Point(7, 31)
$LblIPAddress.Size = New-Object System.Drawing.Size(55, 15)
$LblIPAddress.TabIndex = 54
$LblIPAddress.Text = $TextStrings.Address
$GroupBox1.Controls.Add($TxtBoxPort)
$GroupBox1.Controls.Add($LblPort)
$GroupBox1.Controls.Add($TxtBoxAddress)
$GroupBox1.Controls.Add($LblIPAddress)
$panelMenu.Controls.Add($Panel3)
$panelMenu.Controls.Add($ListBoxSettings)
$panelMenu.Controls.Add($Panel1)
$panelMenu.Controls.Add($GroupBox2)
$panelMenu.Controls.Add($GroupBox1)
$ProxySettingsform.Controls.Add($lblCoreConfigTitle)
$ProxySettingsform.Controls.Add($lblDescript)
$ProxySettingsform.Controls.Add($PictureBox1)
$ProxySettingsform.Controls.Add($ButtonOK)
$ProxySettingsform.Controls.Add($ButtonCancel)
$ProxySettingsform.Controls.Add($panelMenu)

#endregion

#region Functions

function Main{
	[System.Windows.Forms.Application]::EnableVisualStyles()
	Get-ProxyServer
	$ProxySettingsform.ShowDialog()
}

function Close{
	$ProxySettingsform.Hide()
	$formNetwork.enabled = $true
}
#*****************************************************************************************************************************************************************
function DirectAccessRadioButton{
	$LblIPAddress.enabled = $False
	$TxtBoxAddress.ReadOnly = $True
	$LblPort.enabled = $False
	$TxtBoxPort.ReadOnly = $True
	$ChkboxExceptions.enabled = $False
	$LblDoNotUse.enabled = $False
	$ChkboxExceptions.Checked = $False
	$LblDoUse.enabled = $False
	#$ProxyRadioButton.Checked = $False
}
#*****************************************************************************************************************************************************************
function Exceptions{
	if ($ChkboxExceptions.Checked)
	{
		$ListBoxExceptions.ReadOnly = $False
		$LblDoNotUse.enabled = $True
		$LblDoUse.enabled = $True
	}
	else
	{
		$ListBoxExceptions.ReadOnly = $True
		$LblDoNotUse.enabled = $False
		$LblDoUse.enabled = $False
	}
}
#*****************************************************************************************************************************************************************
function ProxyRadioButton{
	$LblIPAddress.enabled = $True
	$TxtBoxAddress.ReadOnly = $False
	$LblPort.enabled = $True
	$TxtBoxPort.ReadOnly = $False
	$ChkboxExceptions.enabled = $True    
	$LblDoNotUse.enabled = $False
	$LblDoUse.enabled = $False
	#$DirectAccessRadioButton.checked = $false
}
#*****************************************************************************************************************************************************************
function OK{
	$ButtonOK.enabled = $False
	if ($ProxyRadioButton.Checked)
	{
		[string]$enabled = 1
	}
	else
	{
		[string]$enabled = 0
	}
	if ($enabled -eq 1)
	{
		$a = $TxtBoxAddress.Text
		$b = $TxtBoxPort.Text
		$server = $a + ":" + $b
		$override = $ListBoxExceptions.Text
		$Proxy = "netsh winhttp set proxy " + $server + " bypass-list=" + [char]34 + $override + [char]34
	}
	else
	{
		$Proxy = "netsh winhttp reset proxy"		
	}
	Invoke-Expression $Proxy
	$ButtonOK.enabled = $True
		
	#Output to Logfile
	$TextStrings.LogCommandExecuted -f (Get-Date -F G), $Proxy | Out-File -FilePath $Logfile -append
	
	Get-ProxyServer
	$ProxySettingsform.Update()
}
#*****************************************************************************************************************************************************************
function Get-ProxyServer{
	$Temp = "netsh winhttp show proxy"
	$ListBoxSettings.text = Invoke-Expression $Temp
	$a = $ListBoxSettings.text
	if ($a.contains("Direct access"))
	{
		$DirectAccessRadioButton.Checked = $True
	}
	else
	{
		$ProxyRadioButton.checked = $True
		if ($a.contains("(none)"))
		{
			#"no bypass list"
		}
		else
		{
			$b = $a.indexof("B")
			$c = $a.substring($b + 19)
			$ListBoxExceptions.text = $c.Trim()
		}
		$k = $a.indexof(":")
		$l = $a.substring($k + 26)
		$j = $l.indexof(":")
		$m = $a.substring($k + 26, $j)
		$TxtBoxAddress.text = $m
		$n = $a.substring($k + 26 + $j+1)
		$o = $n.indexof("B")
		$p = $a.substring($k + 26 + $j + 1, $o)
		$TxtBoxPort.text = $p.Trim()
	}
}

Main

#endregion
