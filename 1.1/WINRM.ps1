Import-LocalizedData -BindingVariable TextStrings -FileName WINRM.psd1
#region Constructor

[void][System.Reflection.Assembly]::LoadWithPartialName("System.Windows.Forms")
[void][System.Reflection.Assembly]::LoadWithPartialName("System.Drawing")

#endregion

#region Form Creation
#~~< WinRMform >~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
$WinRMform = New-Object System.Windows.Forms.Form
$WinRMform.ClientSize = New-Object System.Drawing.Size(388, 276)
$WinRMform.ControlBox = $false
$WinRMform.Font = New-Object System.Drawing.Font("Tahoma", 8.25)
$WinRMform.FormBorderStyle = [System.Windows.Forms.FormBorderStyle]::FixedSingle
$WinRMform.MaximizeBox = $false
$WinRMform.MinimizeBox = $false
$WinRMform.ShowIcon = $false
$WinRMform.StartPosition = [System.Windows.Forms.FormStartPosition]::CenterScreen
$WinRMform.Text = $TextStrings.WindowTitle
$WinRMform.BackColor = [System.Drawing.Color]::White
#~~< PictureBox1 >~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
$PictureBox1 = New-Object System.Windows.Forms.PictureBox
$PictureBox1.BackgroundImageLayout = [System.Windows.Forms.ImageLayout]::Center
$PictureBox1.Location = New-Object System.Drawing.Point(8, 8)
$PictureBox1.Size = New-Object System.Drawing.Size(54, 50)
$PictureBox1.TabIndex = 42
$PictureBox1.TabStop = $false
$PictureBox1.Text = ""
#region$PictureBox1.BackgroundImage = ([System.Drawing.Image](...)
$PictureBox1.BackgroundImage = ([System.Drawing.Image]([System.Drawing.Image]::FromStream((New-Object System.IO.MemoryStream(($$ = [System.Convert]::FromBase64String(
"iVBORw0KGgoAAAANSUhEUgAAADIAAAAtCAYAAADsvzj/AAAAAXNSR0IArs4c6QAAAARnQU1BAACx"+
                                 "jwv8YQUAAAAgY0hSTQAAeiYAAICEAAD6AAAAgOgAAHUwAADqYAAAOpgAABdwnLpRPAAAEC5JREFU"+
                                 "aEPtmfdTlOmWx+/+EfvTbm3dCTXeUccx673j6B11zAEjCiqigkpQyUFykpyR0EA3TTfQDd2AZAFR"+
                                 "JImKiaAOijkA4oBKxs8+NDOzzowoTtiturVP1VPN2+/T73u+J37P4d8Q6y//CmsUyG9Zw8PDMDLx"+
                                 "X74eHqG3p4sR8flnrL/81odq1JncbP5uQj/vffSQ74qSyU9PobdfKOBPWB8MpKmpEctDliz6egGb"+
                                 "NulRU131K7FGRkZ4er2RO7mJnI22J997D1qv3ZxJj/0TIIw9csJAunt6iIk6jt7aNSxaMJtZM75g"+
                                 "9qwvMTbaRuOVJkaF/3END42Qm5JEsbsRBZ5GaD13keFtREaACdU5CfR8/0y45R/rYhMColKlsX37"+
                                 "JpYuXci82XP49KP/YMaUSUz99CPmz5+NkaEBLTdafqbtu/fbyXDagcZ7FxofY9J8diPz20NygCn5"+
                                 "ykC62u9/UIy9z5TjAunu6ebUqVNY7jNh1aoVLFo4l38uWYiJjTnzv/o7M6ZOYv686Ww1MhRuNh+L"+
                                 "Awe51NDws/epI3zI8jJG7SsA+O0lJWgvkmBTYkItUaX60Nba+DNLvk/Yd91/K5DLDZc5ZGnJ2rWr"+
                                 "WbpwIctXfcOuA0ZsNzVin4U5c+fMZNb0ScyZ9jlbd23HwHgn3/5zERZmFtxua/vpfdVFWqIdd+Jq"+
                                 "sYtQl73E+B/geLDYUZYkxtuSro2i/cnDPwTMW4GUl5fzj3lzWLJ8EVv37eSAjRX62w3YsG41q1cu"+
                                 "4fPPJjF72iQmT/5EWGoBGzZvYcteY5YsXoSnuyf9/f06MNdbriMJ86ejZ5iGc9dITlEQEuRNWIQV"+
                                 "CUlHiU9xQ1OYSMezjt9jjHcH+5HDh9imvw19A32WLlrEN4u+Yu5XX7HDbD+zBMhZX37GrLkz2LDP"+
                                 "iMVLl7B2/Sq27jBEo9Lw+vXrnwS71yZi4Y010Avn668gV0hITvNFmhXJmfoy+kZv/I41bowEBASy"+
                                 "YP5XLFzwNRsMdggAZhjsN8Hc9jAzZk1n2rTPmDL5Mzbv2MYei0N8u3YVa1csE0LW/iTOwwePxhWt"+
                                 "t3eIiqoqZOo41Cfl3Lhz/XfAeEf6tbOxZt3W9RgLCxjsNER/43o2bVzL2pVL+XzSX5k+5W9M+dt/"+
                                 "suSbhWzWW4WhkREb9DfTcP48zzqfI01IIDzEjbiIUC7UX2VwcPCtgt5qfUJhWSGldSX0vHr5m+Nl"+
                                 "XItIEiWsEULrrV7JinUrWL5yGctWCoH3GzFt3lSmf/FXZs6egoGZCeu26InYWcZmEUOBfj6UFqpo"+
                                 "unyWu801NNUXU5Ynp6To5M9c7k1UXZ1dnGu6xN2H/5ModPc/oNSMCyQqPIxVenoYHDTHyOow+50c"+
                                 "MLaxwMzGkjlzvmT61E+YKoLdaMdOzOxs2WpsTLIkmuftjxjofszTRzdob2vi+cNW7rScpUCbhY6f"+
                                 "vWUN9b2m+nwLipwSiqsvUlPfRMXZBsrK6zlRVEvN+Wb6esdQjVdHfwXkRyUUyorYpLeaHYab2bll"+
                                 "I/qiom9YtoJ1q5bzxaRPmDH5Y6Z8/lfWrlnKhlUr2b19I2dK1WNiilgfHBiiv+cZD+9c48rFYtRp"+
                                 "qrcCqaxrJFFeQGvbY0Ze9PJUxNWNplucOnuV/II6ktMLsXWPY7WhM0v17ampu/ZWZfwKSFdvF071"+
                                 "9hyWmPLt+nVs32PEFmNDDPbsZJv4NPf25su583RApu6exIKE+ehb70V/23bksjDKT+aKqt3B0OAA"+
                                 "z5/ep+1mA5dqc8lMzxxD+IvVfPMemrw6sgvrcQ1Qsn6XC2t2OGFoGcRKQ0f2WAWz50gwO838sHCM"+
                                 "JDu/cmJA2obvsSFuNVOdP2aN3WoOmVtibmmG2QFT9psaY2N/hJkzZjD5i4+Z6z+dVQnfss/BhIMm"+
                                 "5pzMldFypZy+npcMvOji8b0Wbl2vovZMOkqZ7K0CNDbf4WT5FWrPf4d7gIKikjr224aizavBO1hJ"+
                                 "REIOEYk5OHknEifLez+Q4SHo7uglvzafxV6LWOIyj8VBC9i61RC9jXqsW7+WNWvWsFFvPZP/6yMm"+
                                 "Hfx3ZhyYxlz76SyzWYjesuWkKSKorDyhU3zn49ucq8ynsaGQa3UqPBytKCqoEEXyNt3P+37qSxqu"+
                                 "3UZbdJnahjY8gjIoKL2IiW0YmtxKAiIziZEUEi3Jw8EznmPR2eQW/pptj2pI51qjbLX1xh0KsguR"+
                                 "yqUcCTRn1aHFfOOwhF1WVuy1d8TE1Z29Ht7YRUQx83PBfs1EnFh9yt9dZ7I/wBkjQe1Li1LpuD/m"+
                                 "w82NFzF39CUkPJjSnOO4OliRmpJKmjKNgvwS7t1/ojt3uekOqapqcosv4x2iQZVVgemRcHxDVFi7"+
                                 "x3PEJU4kmAg27TrKSn1ncgrPju9aPc9fkH+iEGWKEoVcga+fl6AlJqx2/JrIUG/cjlpz2GQnpju3"+
                                 "YypcbMYnX7DITMTJ1iks278IY5M97NtqQHy0B99dOycsMsTVC9VIMtRUNNxGc6IEawsrVHIV8hQ5"+
                                 "SfESTuQW6QRqablHcUUz5bU3sPNUsHiTtRDYHnOXKGxcYvAJkuPtn8xhl+M4eiWQm/8OizzrfIFK"+
                                 "UIv4hHjS5ek6zSXGJxEuUrBaCJOcLCMsMozkhBQUMiUOtlYs9VjIsi2LsbM3F0xWRUhIBIG+jqiz"+
                                 "ZMJFn3LragmxQin1DRdE5T6Nj7dgwllZyFJkOB11JlmqBOHO11oeUHL6Bucu3iMwLpe8wnM4+iSh"+
                                 "zjlDWFwWSfISopNPYO8rxTMo9d0xMjAwSN35awSGhhMaEkpSXBIZQnsZygyRbbRIZNGERHqTkCAh"+
                                 "U5kpUqlaBJ8DsXFxuj36Xboig5DAICJCg3jYJshitK/QYgDq2svEl9bg6+1LbGQszo5O2Nu7UFc/"+
                                 "5oKXm9rQnGyg+uIDoqWlFBTX4eIvR6U5TVxSLsmKIsITNFi5xosWIozsovdkrb6+EZpvtKHWFuPl"+
                                 "5Y+TkxN+fr7ER8QTHh2GT4iDYK5BqJVZ5GhySJOnolaryczIJEOAyFJpdTs1NXVM6OgYYkQ8WR22"+
                                 "Y5+5PaYmB3F39yVTU0BbWwe9fWOUpfnmQ4pOXaes6h6hkmL8RYDbOMfjFZyKq38SAWEKHIU19tmE"+
                                 "YyhScHbhRNLvyGtd5Wzv6OPipSZyRKWNiIzHw9eDg067MTEzxNbOmaPOR3FxcsXF2RUnR2cc7Jyw"+
                                 "trUVLueMm4unuOeJm7MXrq5ewiUlaLT5XL3SSmfXS17/gnI13XhIadUdaq90Ept6WgBR4eaXSEZ2"+
                                 "FRJ5IenqSiSp+Tj7S7FzFTFSWD2xOvJDYRZVGNFXDNIn6EP7oy5SM2MIjXXneIyUstKzqIVVtJl5"+
                                 "pGVoyVTnotIWiEAspry8lnPCnRob7/DwfgfPu/sYEq77Jm3qfdVPVUWFTqC2OwJI7V0utHSTnHGO"+
                                 "/MJaguOyUYsimS4ymFpTpYsR1yApFs4RIrt9AJBfQx4U5leRog4RGkqmf+CHEwLsoOihBgeHGRSB"+
                                 "OyKu3zm2EmgKcktIkvhxtlRCXHQQsfEpaMtaaWwdQJlzgfzi88SI2NAW15CZe4Y0TQURsVrMnaPQ"+
                                 "2+EyQdd6q9FENhWNUnmlikSpO3ESN7KzNQyMSj7B1d/Xz7XLV1EkS7hy4TQPbzcIIlnH3dZaLpxN"+
                                 "J+J4HlfbhgSQi8TL8gmLFdkqtQipsli4VxEBERnYimA3MDv2/mB/n0w3mqtEFnEgIc6OkDAHCovL"+
                                 "BZ9636/G7p89Uyn6lBqRbgd52fGEp4/v0P3oNs/FbrxUQlCshgei2z1RckUneGxKvo5/aU+cEX19"+
                                 "hQ6YtVs8u8wCyJko1xpPtEHh1wqJE9FhhzkeaoGH60ERD6d1x/tFDLwUzHW8pRTMt74iR9z+wYqC"+
                                 "GfcIun//1jXqq9T4R2m4+xjyy5rIKz4nLFGENr8WpeoM0vQSAqOyMbMPY8Nu0eO/qyBOTK+vOVOS"+
                                 "zvEgMxKDTEgI3IeXgxlKbRlapYymxvFb1SyRoivLlVRWlPBSDPoGup/T/uA6rS1V1JWn4h+URmPb"+
                                 "K1S5dYJjVROblEdKerFwsxKCY1Si4seLIYgv32ywFsOKd1CUiQERRPDudaSB+0k6tgdlwF6kvnsJ"+
                                 "tNlGqP0uOp50jvuYtNQ0mi4WCCZcK9jLCD2d7aJoNgs6U8npkmQCgyXUXHiIJL2U47IT+Ira4R2m"+
                                 "xjNAjptvEocdwjEw8WKFoC6nqhonnn7fBSw/2QWFr5gcigmi2mcXOWIn+9ky8OoHtxltOcSf7U+/"+
                                 "51L9JfLz8rGxOkJxcaJomC6KFDfCo9tXuXpRMOErhVRVprLXzB2FppqQ2Gw8A2XYeMXjG6rAwUvC"+
                                 "Ecdo0aUG8O0We+avPkxsopbuTlGPxDveGNZMfPb7I7gLpZlkivGnxmsXuWLnj851o/0Fcx9rY9vu"+
                                 "PhDBXYM2K1vH2xQyBUcsrbjbIkY+XXfgVS9pKdFoAu3QyqOpqpaxceshrDylHDp6HN/wdMGao7B3"+
                                 "k2AqqvlOM39WibT7j7WHmb/iAA5HA8nOzOFU2WnBEERbLeJtdE1o9vsjiJvNN5G67yXXx4hCMQot"+
                                 "FECK3AwplITpjnQ9fkGuJpdUQV+UglzKRDOVJkvDzsqWbHWMGKmeFxZ5SckxK1A780jhTYzrPnab"+
                                 "OrBkqwObd3tg4yFBf78fxpb+6InrxRttmbNCTDeXHWSdoQNBwcdJkY2SVwUqwfFaW+/rLPNBQEaH"+
                                 "B8MD/fR1dtJ5XdSCqgKuqmNpPjuWvZobW5Empgj2LBdtr1wHRiGmi15e3iLbeQlLnaaXfvICrOlW"+
                                 "O0JZBNluWwTxTGPjTidmLj3ABmNPlgjh5600Z/ZyC9Ya2OHsFkhKcgqqtAxdmzFqablcjouYapaV"+
                                 "j1X6DwLyttgZHhoS4MZKffuTbpKkciLDIwSgZNKkaaSnijY3VUmwXxAxkSEicxXhsU+fR0nmUOlP"+
                                 "tss25GlaosLjmb7YlFnLLPh6vSWHbXyJik5CLk0RLDxdR0xHt1QmFQpSEOQbqONyV6+O/RfgdwN5"+
                                 "E9zAwDBNLbcEGCVurh6iPwkULDhWWEe4QkYaCqWS2JjRawXhHj7k+R4i0sqYFNGjpAlhrY6G4OAa"+
                                 "rAOek6UlLytXxEMGMqmUZKGY8IhwXB1dMT90RDDzYKpqL9HzYmzO/IcCGX3g6+HX9IoM1nb3ESfy"+
                                 "y3UN16gLODsexcvdh2PegYQEBxMdES2G2eFEHo8RDV0iMjEQTIiPJU5cR0VGEOAXgLebO/bWdliZ"+
                                 "22J9RDBrNz+UyjyuCRfu/v4VQ2+krT8cyJsWGhp6zbOuXm6InqOm+jzZucXIU9VEC5cJCo7E1ycI"+
                                 "d0/R+xz1EluAdfbA28OPY35hhETECbdKRyUYdllFPaPTlvYn34th969HSn+KRd4WRzpLiT0kMnSf"+
                                 "GF6/6OnnuehNOjue8/hxFw8E0XrwoJPHD9rpEPXn+bOXfN/dT7+w7KBQxpv1Yrzn/6kWGe+lP/t+"+
                                 "tFERWzcK/YBZ7y+f/X8PZEJo33/o/4G8X0f/uyf+ZSzy37b8LoDq1ne0AAAAAElFTkSuQmCC")),0,$$.Length)))))
#endregion
#~~< GroupBox1 >~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
$GroupBox1 = New-Object System.Windows.Forms.GroupBox
$GroupBox1.Font = New-Object System.Drawing.Font("Tahoma", 8.25, [System.Drawing.FontStyle]::Bold, [System.Drawing.GraphicsUnit]::Point, ([System.Byte](0)))
$GroupBox1.Location = New-Object System.Drawing.Point(12, 64)
$GroupBox1.Size = New-Object System.Drawing.Size(363, 62)
$GroupBox1.TabIndex = 49
$GroupBox1.TabStop = $false
$GroupBox1.Text = $TextStrings.WinRMStatus
#~~< ChkboxDisable >~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
$ChkboxDisable = New-Object System.Windows.Forms.RadioButton
$ChkboxDisable.Font = New-Object System.Drawing.Font("Tahoma", 8.25, [System.Drawing.FontStyle]::Regular, [System.Drawing.GraphicsUnit]::Point, ([System.Byte](0)))
$ChkboxDisable.Location = New-Object System.Drawing.Point(250, 32)
$ChkboxDisable.Size = New-Object System.Drawing.Size(104, 24)
$ChkboxDisable.TabIndex = 43
$ChkboxDisable.TabStop = $true
$ChkboxDisable.Text = $TextStrings.DisableWinRM
$ChkboxDisable.UseVisualStyleBackColor = $true
#~~< ChkboxEnable >~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
$ChkboxEnable = New-Object System.Windows.Forms.RadioButton
$ChkboxEnable.Font = New-Object System.Drawing.Font("Tahoma", 8.25, [System.Drawing.FontStyle]::Regular, [System.Drawing.GraphicsUnit]::Point, ([System.Byte](0)))
$ChkboxEnable.Location = New-Object System.Drawing.Point(250, 11)
$ChkboxEnable.Size = New-Object System.Drawing.Size(104, 24)
$ChkboxEnable.TabIndex = 42
$ChkboxEnable.TabStop = $true
$ChkboxEnable.Text = $TextStrings.EnableWinRM
$ChkboxEnable.UseVisualStyleBackColor = $true
#~~< LblMAC >~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
$LblMAC = New-Object System.Windows.Forms.Label
$LblMAC.Font = New-Object System.Drawing.Font("Tahoma", 8.25, [System.Drawing.FontStyle]::Bold, [System.Drawing.GraphicsUnit]::Point, ([System.Byte](0)))
$LblMAC.Location = New-Object System.Drawing.Point(17, 26)
$LblMAC.Size = New-Object System.Drawing.Size(93, 18)
$LblMAC.TabIndex = 24
$LblMAC.Text = $TextStrings.CurrentState
#~~< PictureBoxEnabled >~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
$PictureBoxEnabled = New-Object System.Windows.Forms.PictureBox
$PictureBoxEnabled.BackgroundImageLayout = [System.Windows.Forms.ImageLayout]::Center
$PictureBoxEnabled.Location = New-Object System.Drawing.Point(116, 20)
$PictureBoxEnabled.Size = New-Object System.Drawing.Size(23, 26)
$PictureBoxEnabled.TabIndex = 41
$PictureBoxEnabled.TabStop = $false
$PictureBoxEnabled.Text = ""
$PictureBoxEnabled.Visible = $false
#region$PictureBoxEnabled.BackgroundImage = ([System.Drawing.Image](...)
$PictureBoxEnabled.BackgroundImage = ([System.Drawing.Image]([System.Drawing.Image]::FromStream((New-Object System.IO.MemoryStream(($$ = [System.Convert]::FromBase64String(
"iVBORw0KGgoAAAANSUhEUgAAABUAAAAXCAYAAADk3wSdAAAAAXNSR0IArs4c6QAAAARnQU1BAACx"+
                                 "jwv8YQUAAAAgY0hSTQAAeiYAAICEAAD6AAAAgOgAAHUwAADqYAAAOpgAABdwnLpRPAAAAAlwSFlz"+
                                 "AAAOvgAADr4B6kKxwAAAArhJREFUSEu9VGtIk1EYVuc1c9+3NOctzEzBy9SazTlBox/9sh8Ls59F"+
                                 "dsGCwm46aY6stCLB5SC8RDAvxNym35q0UPOWmaZm1A8hCIr6E61Aiop+PO09sKE2VsLwhQOHc57n"+
                                 "Oe/tvIFwWYC/jUT9bQH+FmSRr6vo4uIihH4B+mY9ajW1bNGezujOl/3lqdPphE2wQa+/DbPFivGx"+
                                 "MczNzrJFezqjO8IQ1putECVQd1c3Oju7MDBtxeWFSpTPy1EyI0XxlBTqyR04N3gIwpNehiGsN+EV"+
                                 "ovQ6gY3zBhyYz0PRLA/VNA/lJAfFGIfSIRm0L49DbVeibbyZYYmz2jyilCcKy/7MirK5PKhmJCic"+
                                 "lEAxyiF/2LUcHF5/fIFfv39Cbo7BHksG+kZNjLM6xx5RKgDlSzd3AoVTEigneCiGecgfipFnE0Nt"+
                                 "UjGHrg9pkX5vA7Z3RKBKqGAc4i43jyhVlgpR9lSOgsc8djkk2GnjkGsWI7tHDGHBxHiKOynY1hKB"+
                                 "5OYIlLTKGIe4XkWpZajCRcNxkA/wODhYjIqRUsiMrrx2pDKO9fl9JDeFI+lGGBKuhWJrA8c4xPUp"+
                                 "qnwQjxwTh5aJRoY70rMf9fZqtt9rUCCxMQzx9aGQ1oUgSRflW9Qd/r7+fGQao5DbHoulH0v44HyP"+
                                 "r9++4NW7BSReDUecLgSbLwUjulqEgoYs3+G7C6WxVyK9LRKphkjcclzxRHW4vRxSrUtQE4xNF0Xg"+
                                 "z4pwquOo70K5W0oYsWD33SyWO3lTCpzfP+PtpzfYohUjuiYYkvMicFVByNWlwfqo13dLkUvu5m91"+
                                 "tEBlyGS5i3XlLsbjXRDEZwKRU5cGQ5/+381Posu/ad+QGaeNx6C8mY2Emo2IuxCJ/PoMnGyvgMXl"+
                                 "4X9/U7ewXwfK8l7z6+jzOsvWeLi+k3+Nzq2A/wHH7wNCX2/7IQAAAABJRU5ErkJggg==")),0,$$.Length)))))
#endregion
#~~< PictureBoxDisabled >~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
$PictureBoxDisabled = New-Object System.Windows.Forms.PictureBox
$PictureBoxDisabled.BackgroundImageLayout = [System.Windows.Forms.ImageLayout]::Center
$PictureBoxDisabled.Location = New-Object System.Drawing.Point(116, 20)
$PictureBoxDisabled.Size = New-Object System.Drawing.Size(23, 26)
$PictureBoxDisabled.TabIndex = 36
$PictureBoxDisabled.TabStop = $false
$PictureBoxDisabled.Text = ""
$PictureBoxDisabled.Visible = $false
#region$PictureBoxDisabled.BackgroundImage = ([System.Drawing.Image](...)
$PictureBoxDisabled.BackgroundImage = ([System.Drawing.Image]([System.Drawing.Image]::FromStream((New-Object System.IO.MemoryStream(($$ = [System.Convert]::FromBase64String(
"iVBORw0KGgoAAAANSUhEUgAAABQAAAAXCAYAAAALHW+jAAAAAXNSR0IArs4c6QAAAARnQU1BAACx"+
                                 "jwv8YQUAAAAgY0hSTQAAeiYAAICEAAD6AAAAgOgAAHUwAADqYAAAOpgAABdwnLpRPAAAAAlwSFlz"+
                                 "AAAOvgAADr4B6kKxwAAAAxhJREFUSEvVld1PU3cYx/WfkSUKk1axo1gofUFe1AEWKCAtsqzVGzBu"+
                                 "eiG7WfTOLZvRKsk0GbsSwVeMMepeEhMjixfbkk1R3uzLac/pOae8WVpSPvsBCdoc3GLCjc/l7zzP"+
                                 "J7/n9/0+z9mMiE0bGcvAjYxNGwlb6fbDA+ZmZ5m7N4x6+iukLi9xfxPxjgPI3QFm+n8gOznxn03l"+
                                 "tZwZfYbSe4xoy16UljpSLTVMe/aQanCj17tQ9lWSaK1HvzbwTugaMPPiObGgT8DqiDbVct9dzrcO"+
                                 "O9/5DhI6HGTY18Yfe2wo1buJu8uIhL5nKZczgFeAudkZ5JOrN0s01yJ5qhkIBNAlicVsdqVoYX6e"+
                                 "qd9H+DN4iKSzFMlh4e/Bq+sD5+7eIiZgUU8No5+6iDW6UQ42MPfgnqFgQdPQjnSiV+7iaY0DZWoq"+
                                 "L2flhslTvcii1Z+ryvnx+HEiPUHi+x1E9jtRb183QDNPHqM4rcTLzPwSOm8ESl3NTAsBQm4XaiLB"+
                                 "QjRCuKudRG0Fr6rKSN4YyivKpXSSbY3oZSbu+DvWAXY2ozdVcc7vX3uztLDHlN9Lwm0lIsRQ34YK"+
                                 "MVInjqJ9UsxPu61G4LLP9EYXfULNt+P12EtetXuQnRYiFSWoQ6t2WZqfQzvUjm7ZzkVzsREo9wRI"+
                                 "1Tu52dFGJp3OS0iPjxFubUSx7SRaYUG/e4esOEvareglH3PJbjcCZ/ovIe+181dtJRMjIwYR0mMv"+
                                 "CDfXI5eaiJZbSHS0ou4oImraRt/nASNwcXJc+E9MR7WNf458Rk7XDNBsXELyeVFEm7KAaTsKufVR"+
                                 "Ab9dzffi2qRM3xhEEgIkXaXIhztZePyInKYK1+dYEvO9ODGO+kU3cQFTzYVMFG3ljMdD5nX+E72Z"+
                                 "ZVEYC50lZi9Bd+xCtltQ2w6Q+rIHrbMdpVLYxyxuZhKw7Vv52mYjNm5cFIZ9ODo0yEhdFVFhWs1q"+
                                 "QhfWWFZT31lErLiQ4YItfOP1En45tu6CWHfBauEwv4ZCDPt99Auf9ZlNXBZqXggGeXhlgMVM5v+3"+
                                 "zTsz3vPDhv8C/gUDi/Nrim8TvwAAAABJRU5ErkJggg==")),0,$$.Length)))))
#endregion
#~~< Label1 >~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
$Label1 = New-Object System.Windows.Forms.Label
$Label1.Font = New-Object System.Drawing.Font("Tahoma", 8.25, [System.Drawing.FontStyle]::Bold, [System.Drawing.GraphicsUnit]::Point, ([System.Byte](0)))
$Label1.Location = New-Object System.Drawing.Point(159, 26)
$Label1.Size = New-Object System.Drawing.Size(97, 18)
$Label1.TabIndex = 38
$Label1.Text = $TextStrings.ChangeState
$GroupBox1.Controls.Add($ChkboxDisable)
$GroupBox1.Controls.Add($ChkboxEnable)
$GroupBox1.Controls.Add($LblMAC)
$GroupBox1.Controls.Add($PictureBoxEnabled)
$GroupBox1.Controls.Add($PictureBoxDisabled)
$GroupBox1.Controls.Add($Label1)
#~~< lblFirewall2 >~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
$lblFirewall2 = New-Object System.Windows.Forms.Label
$lblFirewall2.Font = New-Object System.Drawing.Font("Tahoma", 8.25, [System.Drawing.FontStyle]::Regular, [System.Drawing.GraphicsUnit]::Point, ([System.Byte](0)))
$lblFirewall2.Location = New-Object System.Drawing.Point(101, 28)
$lblFirewall2.Size = New-Object System.Drawing.Size(265, 30)
$lblFirewall2.TabIndex = 48
$lblFirewall2.Text = $TextStrings.WindowDescription
#~~< Button1 >~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
$Button1 = New-Object System.Windows.Forms.Button
$Button1.FlatStyle = [System.Windows.Forms.FlatStyle]::System
$Button1.Location = New-Object System.Drawing.Point(171, 241)
$Button1.Size = New-Object System.Drawing.Size(87, 23)
$Button1.TabIndex = 45
$Button1.Text = $TextStrings.Apply
$Button1.UseVisualStyleBackColor = $true
$Button1.add_Click({OK($Button1)})
#~~< ButtonCancel >~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
$ButtonCancel = New-Object System.Windows.Forms.Button
$ButtonCancel.FlatStyle = [System.Windows.Forms.FlatStyle]::System
$ButtonCancel.Location = New-Object System.Drawing.Point(279, 241)
$ButtonCancel.Size = New-Object System.Drawing.Size(87, 23)
$ButtonCancel.TabIndex = 45
$ButtonCancel.Text = $TextStrings.Close
$ButtonCancel.UseVisualStyleBackColor = $true
$ButtonCancel.add_Click({Close($ButtonCancel)})
#~~< lblCoreConfigTitle >~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
$lblCoreConfigTitle = New-Object System.Windows.Forms.Label
$lblCoreConfigTitle.Font = New-Object System.Drawing.Font("Tahoma", 8.25, [System.Drawing.FontStyle]::Bold, [System.Drawing.GraphicsUnit]::Point, ([System.Byte](0)))
$lblCoreConfigTitle.Location = New-Object System.Drawing.Point(80, 8)
$lblCoreConfigTitle.Size = New-Object System.Drawing.Size(253, 20)
$lblCoreConfigTitle.TabIndex = 44
$lblCoreConfigTitle.Text = $TextStrings.WindowTitle
#~~< panelMenu >~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
$panelMenu = New-Object System.Windows.Forms.Panel
$panelMenu.BorderStyle = [System.Windows.Forms.BorderStyle]::FixedSingle
$panelMenu.Location = New-Object System.Drawing.Point(-3, 140)
$panelMenu.Size = New-Object System.Drawing.Size(392, 84)
$panelMenu.TabIndex = 43
$panelMenu.Text = ""
$panelMenu.BackColor = [System.Drawing.Color]::Gainsboro
#~~< ListBoxStatus >~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
$ListBoxStatus = New-Object System.Windows.Forms.RichTextBox
$ListBoxStatus.Location = New-Object System.Drawing.Point(18, 12)
$ListBoxStatus.ReadOnly = $true
$ListBoxStatus.ScrollBars = [System.Windows.Forms.RichTextBoxScrollBars]::ForcedVertical
$ListBoxStatus.Size = New-Object System.Drawing.Size(359, 54)
$ListBoxStatus.TabIndex = 0
$ListBoxStatus.Text = ""
$panelMenu.Controls.Add($ListBoxStatus)
$WinRMform.Controls.Add($PictureBox1)
$WinRMform.Controls.Add($GroupBox1)
$WinRMform.Controls.Add($lblFirewall2)
$WinRMform.Controls.Add($Button1)
$WinRMform.Controls.Add($ButtonCancel)
$WinRMform.Controls.Add($lblCoreConfigTitle)
$WinRMform.Controls.Add($panelMenu)

#endregion

#region Functions

function Main{
	[System.Windows.Forms.Application]::EnableVisualStyles()
	Get-Status
	$WinRMform.ShowDialog()
}
#---------------------------------------------------
function Close{
	$WinRMform.Hide()
	$formcomputer.enabled = $true
}
#*****************************************************************************************************************************************************************
function OK{
	if ($ChkboxEnable.Checked -eq $True)
	{
		$Cmd = "winrm quickconfig -quiet"
		iex $Cmd
		$ChkboxEnable.Checked = $True
		#Enable Firewall too
		$Temp = "netsh advfirewall set currentprofile settings remotemanagement enable"
		Invoke-Expression $Temp
		Set-NetFirewallRule -Group "@FirewallAPI.dll,-30267" -Enabled True
		$TextStrings.LogCommandExecuted -f (Get-Date -F G), $Temp | Out-File -FilePath $Logfile -Append
		$TextStrings.LogRuleGroupChanged -f (Get-Date -F G), $TextStrings.WindowsRemoteManagement, $TextStrings.Enabled | Out-File -FilePath $Logfile -Append
	}
	if ($ChkboxDisable.Checked -eq $True)
	{
		$Cmd = "winrm delete winrm/config/Listener?Address=*+Transport=HTTP"
		iex $Cmd
		$ChkboxDisable.Checked = $True
		if ((Get-NetFirewallRule -Name RemoteFwAdmin-In-TCP).Enabled -eq "False")
		{
			#Disable remote management firewall rule, but only if it's not enabled for FW management
			$Temp = "netsh advfirewall set currentprofile settings remotemanagement disable"
			Invoke-Expression $Temp
			$TextStrings.LogCommandExecuted -f (Get-Date -F G), $Temp | Out-File -FilePath $Logfile -Append
		}
		Set-NetFirewallRule -Group "@FirewallAPI.dll,-30267" -Enabled False
		$TextStrings.LogRuleGroupChanged -f (Get-Date -F G), $TextStrings.WindowsRemoteManagement, $TextStrings.Disabled | Out-File -FilePath $Logfile -Append
	}	
	Get-Status
	$WinRMform.Update()
}
#*****************************************************************************************************************************************************************
function Get-Status
{
	$Test = "winrm enumerate winrm/config/Listener"
	$ListBoxStatus.Text = iex $Test
	if ($ListBoxStatus.Text -eq "")
	{
		$PictureBoxDisabled.Visible = $True
		$PictureBoxEnabled.Visible = $False
		$ChkboxDisable.Checked = $True		
	}
	else
	{
		$PictureBoxDisabled.Visible = $False
		$PictureBoxEnabled.Visible = $True
		$ChkboxEnable.Checked = $True		
	}
}

Main

#endregion
