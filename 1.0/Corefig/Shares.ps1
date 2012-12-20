Import-LocalizedData -BindingVariable TextStrings -FileName Shares.psd1
#region Constructor

[void][System.Reflection.Assembly]::LoadWithPartialName("System.Windows.Forms")
[void][System.Reflection.Assembly]::LoadWithPartialName("System.Drawing")

#endregion

#region Form Creation
#~~< Sharesform >~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
$Sharesform = New-Object System.Windows.Forms.Form
$Sharesform.ClientSize = New-Object System.Drawing.Size(1219, 749)
$Sharesform.ControlBox = $false
$Sharesform.Font = New-Object System.Drawing.Font("Tahoma", 8.25)
$Sharesform.FormBorderStyle = [System.Windows.Forms.FormBorderStyle]::FixedSingle
$Sharesform.MaximizeBox = $false
$Sharesform.MinimizeBox = $false
$Sharesform.ShowIcon = $false
$Sharesform.StartPosition = [System.Windows.Forms.FormStartPosition]::CenterScreen
$Sharesform.Text = $TextStrings.WindowTitle
$Sharesform.BackColor = [System.Drawing.Color]::White
#~~< SplitContainer1 >~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
$SplitContainer1 = New-Object System.Windows.Forms.SplitContainer
$SplitContainer1.Location = New-Object System.Drawing.Point(-3, 66)
$SplitContainer1.Panel1.Text = ""
$SplitContainer1.Panel2.Text = ""
$SplitContainer1.Size = New-Object System.Drawing.Size(1210, 328)
$SplitContainer1.SplitterDistance = 403
$SplitContainer1.TabIndex = 50
$SplitContainer1.Text = ""
$SplitContainer1.BackColor = [System.Drawing.Color]::Gainsboro
#~~< SplitContainer1.Panel1 >~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
#~~< Panel1 >~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
$Panel1 = New-Object System.Windows.Forms.Panel
$Panel1.BorderStyle = [System.Windows.Forms.BorderStyle]::FixedSingle
$Panel1.Dock = [System.Windows.Forms.DockStyle]::Fill
$Panel1.Location = New-Object System.Drawing.Point(0, 0)
$Panel1.Size = New-Object System.Drawing.Size(403, 328)
$Panel1.TabIndex = 2
$Panel1.Text = ""
$Panel1.BackColor = [System.Drawing.Color]::Gainsboro
#~~< LabelDelete >~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
$LabelDelete = New-Object System.Windows.Forms.Label
$LabelDelete.Location = New-Object System.Drawing.Point(14, 86)
$LabelDelete.Size = New-Object System.Drawing.Size(148, 18)
$LabelDelete.TabIndex = 65
$LabelDelete.Text = $TextStrings.RemoveShare
$LabelDelete.Cursor = [System.Windows.Forms.Cursors]::Hand
$LabelDelete.add_Click({LabelDeleteClick($LabelDelete)})
#~~< RadioDelete >~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
$RadioDelete = New-Object System.Windows.Forms.RadioButton
$RadioDelete.Enabled = $false
$RadioDelete.Location = New-Object System.Drawing.Point(153, 463)
$RadioDelete.Size = New-Object System.Drawing.Size(163, 24)
$RadioDelete.TabIndex = 7
$RadioDelete.Text = $TextStrings.RemoveShare
$RadioDelete.UseVisualStyleBackColor = $true
$RadioDelete.Visible = $false
#~~< LabelCreate >~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
$LabelCreate = New-Object System.Windows.Forms.Label
$LabelCreate.Location = New-Object System.Drawing.Point(14, 48)
$LabelCreate.Size = New-Object System.Drawing.Size(148, 22)
$LabelCreate.TabIndex = 63
$LabelCreate.Text = $TextStrings.CreateShare
$LabelCreate.Cursor = [System.Windows.Forms.Cursors]::Hand
$LabelCreate.add_Click({LabelCreateClick($LabelCreate)})
#~~< RadioProvision >~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
$RadioProvision = New-Object System.Windows.Forms.RadioButton
$RadioProvision.Checked = $true
$RadioProvision.Enabled = $false
$RadioProvision.Location = New-Object System.Drawing.Point(153, 418)
$RadioProvision.Size = New-Object System.Drawing.Size(163, 24)
$RadioProvision.TabIndex = 6
$RadioProvision.TabStop = $true
$RadioProvision.Text = $TextStrings.CreateShare
$RadioProvision.UseVisualStyleBackColor = $true
$RadioProvision.Visible = $false
#~~< LabelShares >~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
$LabelShares = New-Object System.Windows.Forms.Label
$LabelShares.Font = New-Object System.Drawing.Font("Tahoma", 8.25, [System.Drawing.FontStyle]::Bold, [System.Drawing.GraphicsUnit]::Point, ([System.Byte](0)))
$LabelShares.Location = New-Object System.Drawing.Point(14, 12)
$LabelShares.Size = New-Object System.Drawing.Size(148, 18)
$LabelShares.TabIndex = 64
$LabelShares.Text = $TextStrings.CurrentShares
$LabelShares.Cursor = [System.Windows.Forms.Cursors]::Hand
$LabelShares.add_Click({LabelSharesClick($LabelShares)})
$Panel1.Controls.Add($LabelDelete)
$Panel1.Controls.Add($RadioDelete)
$Panel1.Controls.Add($LabelCreate)
$Panel1.Controls.Add($RadioProvision)
$Panel1.Controls.Add($LabelShares)
$SplitContainer1.Panel1.Controls.Add($Panel1)
#~~< SplitContainer1.Panel2 >~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
#~~< PanelStatus >~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
$PanelStatus = New-Object System.Windows.Forms.Panel
$PanelStatus.BorderStyle = [System.Windows.Forms.BorderStyle]::FixedSingle
$PanelStatus.Location = New-Object System.Drawing.Point(19, 13)
$PanelStatus.Size = New-Object System.Drawing.Size(438, 283)
$PanelStatus.TabIndex = 45
$PanelStatus.Text = ""
$PanelStatus.BackColor = [System.Drawing.Color]::Gainsboro
#~~< GroupBoxCreateDelete >~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
$GroupBoxCreateDelete = New-Object System.Windows.Forms.GroupBox
$GroupBoxCreateDelete.Font = New-Object System.Drawing.Font("Tahoma", 8.25, [System.Drawing.FontStyle]::Regular, [System.Drawing.GraphicsUnit]::Point, ([System.Byte](0)))
$GroupBoxCreateDelete.Location = New-Object System.Drawing.Point(23, 12)
$GroupBoxCreateDelete.Size = New-Object System.Drawing.Size(393, 198)
$GroupBoxCreateDelete.TabIndex = 45
$GroupBoxCreateDelete.TabStop = $false
$GroupBoxCreateDelete.Text = ""
$GroupBoxCreateDelete.Visible = $false
#~~< PictNewshare >~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
$PictNewshare = New-Object System.Windows.Forms.PictureBox
$PictNewshare.BackgroundImageLayout = [System.Windows.Forms.ImageLayout]::Center
$PictNewshare.Location = New-Object System.Drawing.Point(19, 71)
$PictNewshare.Size = New-Object System.Drawing.Size(57, 50)
$PictNewshare.TabIndex = 52
$PictNewshare.TabStop = $false
$PictNewshare.Text = ""
#region$PictNewshare.BackgroundImage = ([System.Drawing.Image](...)
$PictNewshare.BackgroundImage = ([System.Drawing.Image]([System.Drawing.Image]::FromStream((New-Object System.IO.MemoryStream(($$ = [System.Convert]::FromBase64String(
"iVBORw0KGgoAAAANSUhEUgAAACUAAAAmCAIAAADMaMX6AAAAAXNSR0IArs4c6QAAAARnQU1BAACx"+
                                 "jwv8YQUAAAAgY0hSTQAAeiYAAICEAAD6AAAAgOgAAHUwAADqYAAAOpgAABdwnLpRPAAAAAlwSFlz"+
                                 "AAAOxAAADsQBlSsOGwAACA5JREFUWEfdl9lvVOcZxtMbjNUoUkpKpFKlpUVRRBMljRS1/RPamy5S"+
                                 "2qtcpBcoJYGAjXe84BiDwezg2Hiw8YIXwCse27N58MZiLNcL9uwz9niG2efs53xn/fqdGdtjJibm"+
                                 "AnHRo0dHc3E0Pz3P+7zfmfmJ2+N+43VeiPc69cbrhKlZvloebTxAaL/4ke9M8bjYJPPs9hbyd9JJ"+
                                 "+TqQKF87taqKXG0jvaoIbwfp66IDg3RgBL/x61D9PkXkXoRM8RAJ8uMQTKh3aXJdE1AcV8QxRRhN"+
                                 "6L7Mj8i8SQYGmTPIrEEmtby9WowOyPwCj40RjXuimr0S5kE8GbdxM+dkgG1mP88Do5C7D8EIlEah"+
                                 "dB+KZiiOKIJJEYwKb1B4vQx0Mjckc1qJHZCYAYkz8faL8as/pbV/FgM9wH2T6/4Qu/sR7x1ROJwe"+
                                 "/Dx87Wf0UssLeP5OqPLMEBigaIKIIegVXqfwwwoYkoFWBgMy1y+xfRLTgySqvEmZeUDp/ib1vQ+6"+
                                 "9tKGf8LRP0qjf2LMX4mT/+D6fxMd+lLkma15tL8DAjPkRiCrgwLCDCn8oAK0CriHMDLbK7MI0yXR"+
                                 "dyXqjkjdkehhiX0osY/ESD/TsQ8+/Ega/ADO/wFaP+VNH8DZ/VjnJz+cYipPVASVxxohi0hIA2sk"+
                                 "bp3E3JXo2yLVIZJtItEu0jqJfcCHutn5Str0L6bnV3DxQzi/F07/HE6+Cfo+ZsZz+dWxJFKRheSH"+
                                 "FA81DYWpsHqF2bDVJ6uw7oQtZKhTpNoRTCBaBfwWO/VVXPMertnFte0Wh34Jp96FU7vgRCY0Z0Jd"+
                                 "BuzdIbW+yTa+jdftitbtIZ9UpfOIlVaFHVEYnUInnfWhAGW2S0rZQrBbAtEi4E081kRPHYw0fxKq"+
                                 "ey/YtI9o2w1NO+FYJjRlQn0mHNgB72TgmneCdXuDtb8NNH4WfVidzsOXWxTWpNDDMt2fgG3Y2sgQ"+
                                 "2WoWsJt8vIGP3+BxZNcsYjrOdpE1fg669kBjJhzaCXszYNcOrmk3bTjAe0dlnt66L5inSUH7RA3K"+
                                 "dHJgaFp3JCqZ4ZotAWtUSbF6EK3jo40CMSiQI8DbxHfvgcM7mY798PZO2LaTafsd7H+bub1fitvT"+
                                 "KpOaX9x1U2Z0MqWVqKSzzbaSGaZgIFLDhWtArBWEu2j9X6n6jMj3u8ihv3OtbzENbzHj+UT778n6"+
                                 "DNJ0QCB8W/uLORtkekgiByRSbcemaqxnGNOA6HUQqUUkLnSFC15ig1fYhdyQZm+w5y+ct4WxXmEa"+
                                 "d0Xqdov+cQn3YLovA5qPyYUX7HvUrpEpxOsTidsi2bmpGpttfc+FryEYG7zIBs4zz6oZfzX14N9M"+
                                 "uEfAjXy4H697J1DzC5kOqeeZJHArI4LAb+0vYr2ODkOJ7BXxDpFo21QNDYhdB9HaRIZXudDlBOwc"+
                                 "8+ws46+ifado3xkmUAti/TwxEmt431+7/6XeDyFLrUTek4geAUOwls3VAJENW5fYwAX22TnGf4bx"+
                                 "naZXK2nvScpbQa9WscEbPGYIa7+IG46+FC+4WCMRvSLWLcRvofXa6OHztpIZJmytItJ31Eo5je7e"+
                                 "SsZ/iYt0hxz9sgheihdYuCriPWL8Dh9t5mMN6dVYs3WW8VUlbFUgErV8glwuo5bLEY/2nQ8uXlme"+
                                 "qXWMV63OtdIx55bU1D745y4LeLcQ6+QjN0G0flOGG9VIZnhSNbRyglouJT0llKeEXD6BeP7ZU+5H"+
                                 "35FeDRtoj7sbvLPP1XKDneL5Zi8K2F0h2g7CNxKl36oaaFqqrTJEIt3Hk6I8ZdTKKcf4Ce90Ce68"+
                                 "LIRu8eG7T40l2/hbnTmPzAmRVhCqR6Vn0XqlVwNlmLRVTLqLCFdBQoWku5TwVDrGS1ce5WPWsyI2"+
                                 "IRBT8/rj2/BWpquROT7cAoK1LCr92nptrgaClZAe5KmQcOUTzlzcmUs48wl3MeE5aRst9kxkx56e"+
                                 "TGJmdUXb8JanzggRFMVNEKhBzhh/WjVQhuu2nHmEIwe3Z6ty5BHO47irwnq/yDV2JDJXlsT8d6hw"+
                                 "G57n8Wk+jMJsAIFraunTq4Fg67Ycx3B7FmY7gtmO4vZjuLMAd5VbTAVO86HITGkSM6PN34bneljJ"+
                                 "h5tAsB48u0yjDUurhquQ2LBlO4pZv8Wsh+LWwyrSkYc5S5eM+U7j1+HptbFND+Rtw3NOVoBwIwhe"+
                                 "53wX0IalV8OZhyds4cgWwli+iS8djC99HbccxuzHMEfxoiHXoftP8PFajFP9OfHEFY1GcRwXRTH9"+
                                 "fesYL0+EWcf6zifMlZGJdhCJGFE1cEc2lozReji+zsMsh3Gbynuqy7HrvwlOFV+ZgAXd/MPebKvV"+
                                 "arFYfD4fz6eO7NT+2cbKkjxu9QKFeMvlpKeMdJeQruOEE4WZjzty0bQwWxZmRchv45ZDmAVFegS3"+
                                 "567xjFnB6Ypb5sWae4uTXVlms/nJkyckSW79frDeLwHBGyBQz/ouo/NXRa5UkAkq4S4hVGoR7ihQ"+
                                 "p2XPwWzZKtiGKppDOAoxe/HC8DHHaFFo7lzMVjdvKNJ2nm5ubtbpdCjSrXkW83EQ0CBx/mu0OsJq"+
                                 "ynuGWqlCZwe1cpJcriA95aQbsUsJVzGOdsCBTBfhrmLCWRxZLFwyFTgmK2PWOutY+eLjrtbWVr1e"+
                                 "n2buud+DlvHqJVPhorEA6akhX5U+bwFJl7ugy5kfTurY3BBStqrBrNmktEdn7h151H1orPMgkmO6"+
                                 "XZbW2vHDir7i/2M/8iZK7+e2j76SB/7f/f0PMlUdPbEAeK8AAAAASUVORK5CYII=")),0,$$.Length)))))
#endregion
#~~< PictDeleteShare >~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
$PictDeleteShare = New-Object System.Windows.Forms.PictureBox
$PictDeleteShare.BackgroundImageLayout = [System.Windows.Forms.ImageLayout]::Center
$PictDeleteShare.Location = New-Object System.Drawing.Point(19, 71)
$PictDeleteShare.Size = New-Object System.Drawing.Size(57, 50)
$PictDeleteShare.TabIndex = 51
$PictDeleteShare.TabStop = $false
$PictDeleteShare.Text = ""
$PictDeleteShare.Visible = $false
#region$PictDeleteShare.BackgroundImage = ([System.Drawing.Image](...)
$PictDeleteShare.BackgroundImage = ([System.Drawing.Image]([System.Drawing.Image]::FromStream((New-Object System.IO.MemoryStream(($$ = [System.Convert]::FromBase64String(
"iVBORw0KGgoAAAANSUhEUgAAACcAAAAnCAIAAAADwcZiAAAAAXNSR0IArs4c6QAAAARnQU1BAACx"+
                                 "jwv8YQUAAAAgY0hSTQAAeiYAAICEAAD6AAAAgOgAAHUwAADqYAAAOpgAABdwnLpRPAAAAAlwSFlz"+
                                 "AAAOxAAADsQBlSsOGwAAB7FJREFUWEftl1lsXFcdxot4QH0AARIIQVQWBfJQqKAU0wpagkQNokUg"+
                                 "qKCtoBQKFALe932Jl9iJ4wTXjpfYsWs7tmPH8ZqJPR4vsZ3Edpx4n33xzHg84/HM3fdl+N8Zb4Dd"+
                                 "aKQqTx19urpz7+j+7ved75yj+ZjFanni8X+A+vj1xONHKul+RLVaGN805bp2iDY6yJCc7SDC2UY4"+
                                 "FOGOq7gd1Iqtg1owWzNqbaE8U4dmeWTCwAuwk4q42wFxeldTAWFSFm7L/ERQ4xI3KnEaiVVLjFqi"+
                                 "hyRaJYIolUCpOLTXb2oKn8pMBJjxADsaECcC4nhAGAsIozKvkfkRmVPL3LDEDkmMSmIGRXpApPpE"+
                                 "qlcke0TyhkD2CGSvQPT7TVfCpG50BBTqWIBVBwRNAEj8sMwNydwtmVVJ7KDEDkhMn0j3itQNkeoW"+
                                 "yC6BuCbgHTzWLmBw7BTwGz5jfXhUcqNdMcpoAvRQgAeYSuZuyuygzPYDTKJ7JBpg10WySyQ6BaJD"+
                                 "wNt4rJVHm3n0fR6B41Ue7fTq68KjQk0UKj0SoIEHGtjhMbs8qkskrwlEu4BfFbCWIK+JQ65wflAj"+
                                 "B2CkbUtXEx4VChlgRmV6WKbAX8hir6Qgu4MWO0WyQyDaAMkrSPDXyPkbON9ldhtUz/rga6tn7VJ4"+
                                 "VGi/TGtkakgmQy57IVKJvi7uWwRkK4/tWaznfHXsdg3rBdWy2w2sr3lzpTI8KmprVqjkkET2BZF7"+
                                 "Fg+mumvRf5n1Aama9VYxW1Xs1iXGC2/Q6FqqCI+KWJtkWi2RKokIDSSMYqcIrVFS3bHIK6O4Z/ES"+
                                 "s1XJeCpoTwXjgZNqxlu/sXgxPKrf3ChRQxIxKBIhl4cWZw8JFt9jPP+m3ReCgpNKeqvO8bA8PKrP"+
                                 "1CCRt0R8QMSV7hxRnFrWWw2RgkXGfZHeLKddZZSrjHaVU5sArrHPl4VH3TZclgiViPUJmDL3jyjO"+
                                 "bqrgb/M85TpHbZQGdZZ2geOq9bmz4VG9uloJHxSxXgGFtQam/KHF2U11EyyepTZKSGcx6QCVUM7z"+
                                 "1GaldbYkPKpHWy3i/SLaDZNdWQEOLc5equDPeYZ0FJH2QsJeQDrOkE54j/cs94rDo7pXqxSjyHXe"+
                                 "38ohTQe6eqA4O6mGLALvNLGeT8LRXkQ6z5HOCvOdQklg/x+8v9N5bRaupcpzOt5TU6bt73HevyCg"+
                                 "NwR/J+97n/M1sNu1jKuKUJ/xX0jt+MsrI63vKsXZOEs5S4IWC4BH2PJwWy5hyw9Sy1yLJcbp08bJ"+
                                 "EsdiC+kzHWTvU+/eHFyI/ytbXcJXFdOl6WtZf7YvVAu+Dn67kd2uI+ZKmfK45eg/the97jUW7xRH"+
                                 "SbVQMbeeR9hycGs2Yc3GbXlA3VgottwrwNfr6M02v6XBvtB8OBWu2gyGicqLrowo7tRr1O9O6n/z"+
                                 "vH3yHOu5jLQmUS8/3ffqczO90fTB4sAoKhZzgYdbMkMirLnEerFxMs/xIA8zVfCeVm6ra2Uk+0gq"+
                                 "3JBleUGjGXv3D87vfsF74hOLJ4+vnfr54lNPqiJPrKsTgqnuFQdSDVnMwi0ZmDktqHTckoNZi4yT"+
                                 "OfbZDERXJiBTPDa7NJz5QdTQPZokp4v/tPTNzxi/9uTysY/fizyBqOOCqR4sDiCzcSv4S8fMqZgp"+
                                 "GTUlY6ZUzJKFWQv1E1m2O8m+1aLQAxeGMh5NhV+sd2WNf+/Y8jc+uf70p+Z/9Yx7Oe+/iwOp7lo0"+
                                 "pWDGJNSQoMiYgpkyUXOBbjzDOpXgXcoLwR6q0h9NpTTq5Yhjtuef6n7r5OA7LxHPfm78bz8k7AeL"+
                                 "A8hdi8ZE1BCP6GMRfRxqSERNaag5X6tJs0zEeR/mhmAPBlMfQSUnxxcivmz51qev/fZFn6WSdJSP"+
                                 "xrzsj/jSRM2b+8Uxp2N7FvVxiC4G0UX5ddEK2JiCmHLWRlLNYzFb8zsluj+Q8kFU78JD4ysRhmc+"+
                                 "2/fC17V3z7CbtbSz3G/KH37rheUXv2qdjd8pjikFDVpEwSLAtP/yr53yr/3Tr41GDImIMWtVnWwa"+
                                 "iXLP7ZRorj/5SCrldi+985ru2c/PffuL7UVvsu4G1lUDKyqsc7b5pMWfHL+Z+CMsGCwUBzUmIKFg"+
                                 "ddH+XSqijUb1CnVlKMmoiXXP5VRMBdK6uZnepMOpMGfwhhrzq8+Zv39M/bMfrF75O7tZz7hqaEc5"+
                                 "jCisONOtb8+8dFw/GY2ZIN5U1JgMo4jo4xEdgGP82ihECyHHoobkHepYknu+sHVstap/dab3CK8i"+
                                 "Sboy4pxv/Ngc+R1D8j+03fGMu5511VHOi7CHKOD1gtGYyMG8X2CWbMyciZkyUGOaMoqGJESfoOD1"+
                                 "UOMkzJiOGLKWbyWaJrM9S+d9+poldYZtue9wryyBr6RGb/8+cjHiK8j0mHY0k9msY1319EYV6Swn"+
                                 "HecIe+nyWFJP9i9Ry2ncVoBb83FLLgZrgjkLhdlihAAyUHMWZsryrqavadLMd0t9+lrd7XynfuR/"+
                                 "NoD9dRgSnmlpcrz+0ztv/5pnGO3kuTVN+upIGmhFnapoOGV5OGW2J3ZRlbh0KymoRDhfVCUouhm/"+
                                 "ENJg3IP+2HvdUbc7ToGM99skUTiSCjdIFB2pq12Znz90U/wQL370r/lDDPPQR/0HT0c2xmlSoWwA"+
                                 "AAAASUVORK5CYII=")),0,$$.Length)))))
#endregion
#~~< ListShares2 >~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
$ListShares2 = New-Object System.Windows.Forms.ComboBox
$ListShares2.DropDownStyle = [System.Windows.Forms.ComboBoxStyle]::DropDownList
$ListShares2.FormattingEnabled = $true
$ListShares2.Location = New-Object System.Drawing.Point(112, 93)
$ListShares2.Size = New-Object System.Drawing.Size(188, 21)
$ListShares2.TabIndex = 9
$ListShares2.Text = ""
$ListShares2.Visible = $false
#~~< TxtComment >~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
$TxtComment = New-Object System.Windows.Forms.TextBox
$TxtComment.Location = New-Object System.Drawing.Point(111, 145)
$TxtComment.ReadOnly = $true
$TxtComment.Size = New-Object System.Drawing.Size(189, 21)
$TxtComment.TabIndex = 5
$TxtComment.Text = ""
#~~< TxtShareName >~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
$TxtShareName = New-Object System.Windows.Forms.TextBox
$TxtShareName.Location = New-Object System.Drawing.Point(112, 93)
$TxtShareName.ReadOnly = $true
$TxtShareName.Size = New-Object System.Drawing.Size(189, 21)
$TxtShareName.TabIndex = 4
$TxtShareName.Text = ""
#~~< TxtLocation >~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
$TxtLocation = New-Object System.Windows.Forms.TextBox
$TxtLocation.Location = New-Object System.Drawing.Point(112, 39)
$TxtLocation.ReadOnly = $true
$TxtLocation.Size = New-Object System.Drawing.Size(188, 21)
$TxtLocation.TabIndex = 3
$TxtLocation.Text = ""
#~~< LblComment >~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
$LblComment = New-Object System.Windows.Forms.Label
$LblComment.Enabled = $false
$LblComment.Location = New-Object System.Drawing.Point(111, 127)
$LblComment.Size = New-Object System.Drawing.Size(100, 15)
$LblComment.TabIndex = 2
$LblComment.Text = $TextStrings.Comment
#~~< LblShareName >~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
$LblShareName = New-Object System.Windows.Forms.Label
$LblShareName.Enabled = $false
$LblShareName.Location = New-Object System.Drawing.Point(111, 76)
$LblShareName.Size = New-Object System.Drawing.Size(100, 14)
$LblShareName.TabIndex = 1
$LblShareName.Text = $TextStrings.ShareName
#~~< LblLocation >~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
$LblLocation = New-Object System.Windows.Forms.Label
$LblLocation.Enabled = $false
$LblLocation.Location = New-Object System.Drawing.Point(112, 22)
$LblLocation.Size = New-Object System.Drawing.Size(100, 14)
$LblLocation.TabIndex = 0
$LblLocation.Text = $TextStrings.Location
$GroupBoxCreateDelete.Controls.Add($PictNewshare)
$GroupBoxCreateDelete.Controls.Add($PictDeleteShare)
$GroupBoxCreateDelete.Controls.Add($ListShares2)
$GroupBoxCreateDelete.Controls.Add($TxtComment)
$GroupBoxCreateDelete.Controls.Add($TxtShareName)
$GroupBoxCreateDelete.Controls.Add($TxtLocation)
$GroupBoxCreateDelete.Controls.Add($LblComment)
$GroupBoxCreateDelete.Controls.Add($LblShareName)
$GroupBoxCreateDelete.Controls.Add($LblLocation)
#~~< GroupBoxListShares >~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
$GroupBoxListShares = New-Object System.Windows.Forms.GroupBox
$GroupBoxListShares.Font = New-Object System.Drawing.Font("Tahoma", 8.25, [System.Drawing.FontStyle]::Regular, [System.Drawing.GraphicsUnit]::Point, ([System.Byte](0)))
$GroupBoxListShares.Location = New-Object System.Drawing.Point(23, 12)
$GroupBoxListShares.Size = New-Object System.Drawing.Size(393, 243)
$GroupBoxListShares.TabIndex = 43
$GroupBoxListShares.TabStop = $false
$GroupBoxListShares.Text = "Current Shares:"
#~~< ListShares >~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
$ListShares = New-Object System.Windows.Forms.RichTextBox
$ListShares.Location = New-Object System.Drawing.Point(19, 23)
$ListShares.ScrollBars = [System.Windows.Forms.RichTextBoxScrollBars]::ForcedVertical
$ListShares.Size = New-Object System.Drawing.Size(355, 202)
$ListShares.TabIndex = 0
$ListShares.Text = ""
$GroupBoxListShares.Controls.Add($ListShares)
$PanelStatus.Controls.Add($GroupBoxCreateDelete)
$PanelStatus.Controls.Add($GroupBoxListShares)
$SplitContainer1.Panel2.Controls.Add($PanelStatus)
#~~< lblCoreConfigTitle >~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
$lblCoreConfigTitle = New-Object System.Windows.Forms.Label
$lblCoreConfigTitle.Font = New-Object System.Drawing.Font("Tahoma", 8.25, [System.Drawing.FontStyle]::Bold, [System.Drawing.GraphicsUnit]::Point, ([System.Byte](0)))
$lblCoreConfigTitle.Location = New-Object System.Drawing.Point(86, 9)
$lblCoreConfigTitle.Size = New-Object System.Drawing.Size(272, 17)
$lblCoreConfigTitle.TabIndex = 49
$lblCoreConfigTitle.Text = $TextStrings.WindowTitle
#~~< lblDescript >~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
$lblDescript = New-Object System.Windows.Forms.Label
$lblDescript.Font = New-Object System.Drawing.Font("Tahoma", 8.25, [System.Drawing.FontStyle]::Regular, [System.Drawing.GraphicsUnit]::Point, ([System.Byte](0)))
$lblDescript.Location = New-Object System.Drawing.Point(97, 35)
$lblDescript.Size = New-Object System.Drawing.Size(338, 14)
$lblDescript.TabIndex = 48
$lblDescript.Text = $TextStrings.WindowDescription
#~~< PictureBox1 >~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
$PictureBox1 = New-Object System.Windows.Forms.PictureBox
$PictureBox1.BackgroundImageLayout = [System.Windows.Forms.ImageLayout]::Center
$PictureBox1.Location = New-Object System.Drawing.Point(5, 5)
$PictureBox1.Size = New-Object System.Drawing.Size(61, 55)
$PictureBox1.TabIndex = 47
$PictureBox1.TabStop = $false
$PictureBox1.Text = ""
#region$PictureBox1.BackgroundImage = ([System.Drawing.Image](...)
$PictureBox1.BackgroundImage = ([System.Drawing.Image]([System.Drawing.Image]::FromStream((New-Object System.IO.MemoryStream(($$ = [System.Convert]::FromBase64String(
"iVBORw0KGgoAAAANSUhEUgAAAD0AAAA4CAYAAABOr/BaAAAAAXNSR0IArs4c6QAAAARnQU1BAACx"+
                                 "jwv8YQUAAAAgY0hSTQAAeiYAAICEAAD6AAAAgOgAAHUwAADqYAAAOpgAABdwnLpRPAAAAAlwSFlz"+
                                 "AAAOvgAADr4B6kKxwAAADY9JREFUaEPtmvlTlEcax7N/w27t/rTZJFVbtVubVDbJ5qhdXZMYYogi"+
                                 "4IVHNMcaNzFXoUYjIsh9eV8oGDXEkBgVFEQQRbmv4XK4Zoa5YO6DYS4YYAa++/TLDBmIg+MIa6rM"+
                                 "VH2ru58+eD/9dPfb3S+/Af0ee9R+DPpR+z32qAFzI/tX6EekB3719CPi6F/n9P/d0WZVM5TVu+5L"+
                                 "WmktRkZGMD4+HvDzPtQ5zYDtskxYhKf8Fquj0+k48EB/Dw3a42UGfa9f1CUg9Ai4jmHQguYiWCyW"+
                                 "gL390KDZw4+ay2CXpMFilM2ojEsS7MziwSKgsgTeUboTKpUqYG/PCK0UXoeeFztFusYY6BpioKmP"+
                                 "gaouGoqaXZBXRUFasROScqYoyCqj0VcTA2VdHDS8ROhbkmFsS4WJnw57ezIMTQkc8Jj+KOkQgWfA"+
                                 "JtlL2geb1C0uPVV2STZcqsMc9IN42yc0Aza1x8I51DjrcvXnwqU7GpgI2tAUB37xdqjV6oC87RPa"+
                                 "1J4IuPiA/jjG1IcwpiVpDlKcieJc6JaKQibtYYwZmPdIGoprWB2SipV3h+64i9IuquOifBeV5dJq"+
                                 "CqkNTszGROUnwok4a8vCT8Dtbzeip6cHdrv9XkvCz/JngI4DnG0Y1xyDS3mARA+ooJATxZnNO83i"+
                                 "Sg8APSCLszoMjCvvFotzaQbtBmdlWD514mQnuDuC6zBPp9LfHCN5oDs7O7kF7X5/94BuxbiahmGf"+
                                 "G5SB9e2Hq5fEhSzthvdAMW8xr03Csfz9GKPyE2KdM9GJEzATIJ4OnLB5RsbUMmOsHdIcQtPwdjaT"+
                                 "pwl60kv0cL374JK7wRk0E+dlj7fYMP3Jy2MMjnmIAVNnMWguzcRBuKFZJ/qpuYPmpwGjjQR9hIbh"+
                                 "T8N7vG8vBoXJnDqKt6L6x80Bq5Pqq+lNYOlIApi3Hz50OjBSPwHtnrvjyv0YpleKpDYBkqo9GNWd"+
                                 "B4bKHkisnVtnNk2AK2gU+QE+h55m0NUAg+bm4cRCxoAZrKs/j4Nl4UhvNhw9h0iH4RBPaHhSh7zi"+
                                 "3nZa3VWnuDYY+JmkYA68n3/AL5Wf+w9mfyGjjQSGywH2qmHzmICZp+9c34lxazH3wK6eDLiEqXdR"+
                                 "Ctmmy1Nuqt0b/Nu0EOTuDcOPB5cj78gqFGSuxbXsDbhx9gOUn9uE6h82o/7iZ2jKj0Rr4bafSVx7"+
                                 "AEblHYyOjs64oPtevRn00E2aawx6LwEfgLkrCdL6VMBxC05BMinlwdWdzHUg04NMF1a/tyoGwoZc"+
                                 "DAwMBAbdfycNY7YijMkPwCnNoFV3H8SVu2AQZmHclP/gsHfrMOoA530rieokcZ3WfWMn+I3F0Gg0"+
                                 "gUEbWlPhNF+CU5yBkZ50OOlg0F76FRy6S/Saypwb6AcYOcNdKbhTtAX81kbo9frAoHXNyRgx5GJE"+
                                 "kA4HPYxDmAReQSQtXFd+ccBs/RhoTQC/6EtucQt4eKvpdDSkPgt7J72TOxKhbdmDtmvb6ZDwwy8S"+
                                 "Wl0bjZbieAgEAlit1sA8raiPh7XvBLfls96Jo6H9JXpqaP4oz2CU5t0oeZ9Tt1uetMc2Pc3Kedtm"+
                                 "qu+rXR9tOgWp6Lm1A403syCRSO55CPG5esuqY9Evondm8x7SblSf3wxtx3GMSI/B0ZmE4a5kTg4a"+
                                 "CQ533NvmiU+WoXLetin175J3t3an12dlmG2E1Fa0FU1VeVAoFBgeHg7M02FLgrFsyVsIX/wmKQih"+
                                 "wUEIX7KISy/zqUWUR6JyUxTyFlaGLcbaleEYoqnirUE6wk63sbQvu6csm3KTZaiN+rxP0dZcw92f"+
                                 "OZ3OwKBPnTyK3LwC3Gzho6SxDdcaW1HC4+NaQyuK6ltwta6Z1ITCWh4KaxpRUN2Ay5V1yK+sxeWK"+
                                 "Kk75tyuRX1aBwsoK7D9xCutXL4WdHz8pG00bJm+bJ+7L7p1vuzPRlolGY+2lT7lFzGQyYWxsLDDo"+
                                 "Q+mJqJEqIB/QQGTQQGDQos9uhtysR59Fx0lBUlq0UJm10Fg0nHRWDfQko1WNftKATQ2bXQmhRo3V"+
                                 "4YtgbY2blKWN4kxeNk+cy7uLfUq+u0wv7R9q83agu7vbr/O1zznNoCsEUoiNWrSrNejWGyA1myHu"+
                                 "p5DJZIDMpIec1Dugh2KAOoGkJKmpE7QkHclAnWImcIGiFxFhb9KrJQ5mEgs9cU/a2+6r3GSZlol2"+
                                 "mDpKtqC2MAUikQg2m+2edwo+oQ9nJBG0BCK9Bu0qNUT9JoI2QUaAco8IuI8gNVYt9DYNDCQjC8nT"+
                                 "HLAb2mJVQaSQY1VoEPrp1TexONJC6a0WSnN50+yesizPu25TDFeWDe3G/E/RUPYNZDIZhoaGAoee"+
                                 "8LQEQoLuoAs4uc1Mw5k8bNRA3q+FmkDVVh03tCtbmpH17TkcOpmN7/MvQqqRwWxXw0jDvZ9ktakg"+
                                 "VsqxPOQNGHi7YWhkip4qHqW5vGl2T1mWd5e6RrLd/u5DNDXc8vui0KenD6bEo6KboHVqdGloThr7"+
                                 "cfbCJSSmpWNPQgJyLl5Er1GNmjsteGv+i3h74QKEhCxDcPAShIeHobOnAxYCHyCvM2gJB70Qunr6"+
                                 "QkHSTpPHPj3P2z69rq5hF9S1O1Ga8z7a+XwYjUa4XK7APb2PoKs4T6sJXIH9J7OwKugVLA1+g+DC"+
                                 "sCgoCBs/+hhtQj4k1d/RFvAYzqZ+jG3rg/D4H59A2t69tElQ0cKihp2g5SqCXroQmrqo2VN9FAQ3"+
                                 "t6Is9zN0dXXBTGuOP9+4fHqaQVcTtECrhIi83SkT0X3zebSXnEBu2n/xQfg8/PYPj+NW1U2MGwSw"+
                                 "SOqgqMpG5ZF3sGreU0jav49glQSt4kKZQoIlb87jPKNiqvlJzMbZvWwsrmZieV7h9HrNVz7DrYux"+
                                 "EAqFfi1iM/77RXpiLKppeAvUCprHOkgVPbCI66Hll0J4NRVXk5bghb8+idLqcrrpKIS4/Bx4P8bj"+
                                 "aupyvPLn3+N6eRls1j6CVmKQQrFchH+++DR1zI5Zk7J6ByrPb0JVaY7fi9iM0Cnxu1HTJab3qwJK"+
                                 "mwlCUStk5WfQVXoCtd9sQ9bnr+JvTz+Hnl4B+PmJqMvZjrKj7yNm3UuISUyBxawgaAWs5gloKUH/"+
                                 "66Vn0FuxfdbUV7kDpWffR2PtDb8XsRmhk2OjOOgegtYP28hT3ajO3ITyrM9wjby5PvhllNTWwm6W"+
                                 "oqPxKs5+8hyObfw7tq14gbaCUgyZZbAxcIsCQxbmaSEHLbu9bdYkvb0VRV/f3yI2I3R89Feo6+qB"+
                                 "RNMHzaAVamMvruSkIXvTs0hZ+RQyEr6AqV8GraEX57tlSNuyAvEhT+LTla9g9eki1IpFGDT3wk7Q"+
                                 "dksvRLQmzHv5aUhvbZ0VyQi4s/gLlJzbOrkT82cRmxF6T9QO8AQiCJQy2l7qwdPIcaKhAIc/eg3R"+
                                 "bz6BzV+uxu6y89h26TI23RQgM20Hjm14HpvTU7HsWhsWny9DURufRoKcvN0LAUHPf+UZ9NyInCLx"+
                                 "zUgwTbf3eOwsb5pE1Ia4bAsa8j5BWV7afX/T8rl6J+zagYZuMRRaOcokXTjSdRlZbSU4vXMjMj56"+
                                 "C7tuZCFVUoS45hyEZ59DSVUd8u50YnlhE2Jr2vHhTR7+cbIAKp0cln4J+GIB5tHwrsxlN5vvoSzn"+
                                 "XbrlXI/rp99B8Sm69cxag6sn16DwxGq6BY3wW1XXz0Aul8PhcNzz/ewp4BM6JXo7Clq6YRhQ4WDb"+
                                 "VSS05iK5IhdNfAmyBFVI6SzEN6LbSOy8gMWnE+hExUN8mxJrC6qR3tiJTSUN+F3CRVwsu40hWx+6"+
                                 "5FK8Me95mGjPPHAXmZrjaEsZh/4m2m6SjE2xnAzu7+Psu7i2YfcUXT+3BbzakvtaxGYc3p9/+B7y"+
                                 "6lvRp5YgsjQTu4TfI7LkOB01O5HcXYj9/CvIEZUjqvE7LDgZiYjoDKy71Yl1N5qxoYSHlzNv4LGI"+
                                 "s4j4JAEatQjN9Fl1/svP4sqJdcg/vgYXj0Tgx0Mr8f2B5fhubzhy0kNpcxOCr5MWIzshGCfjFiEz"+
                                 "NgjHdi/EkejXcSjqVRzcuQAHvvo3F7L0paOraCfW5vdO7J6eXrNsKQqbBHSAGEJxKx8bL6RjwfFP"+
                                 "EJN/FrGCC4hvz0MU7zxWXE7BX/aEITIpGanXaxB88gL+FHUaj4Wk4qlFcWgRyGGmQ0CTTI2FC+Zz"+
                                 "Z97ZEtuFsaHNTlb+LmIzenoF3ZwUNwswMOLEwLCTzslDaBbLUFhdhez6EkQWHMfbmdvwYnQEdp9I"+
                                 "h43AhkedMJqtUPVb0Gcw05l6CFayWagNXq8ewW8s5M67syn2Uf5eNyXTJ7vPOb3s7WCUd0jhoH/X"+
                                 "stLtyxBdRoxQnF3EOCk+SB1hGXTARnKRnW3z2ccUj9gt1aC7rp3Kt6gsWLwoyO/FZi4L+oReGR6K"+
                                 "769XQOsYpR3ZMDR2B/T2YRgHh2EaGoGVvDdIXhwcdcHsGOHsLF9HUlN5VqfPOgyZZQR9g6MobBEh"+
                                 "JHjRXLL43bZP6A3r1+P1117FiuXLERYWitClTCGclnJaOqnQUMoLDUN4WDiWL1uGlStWYNWqVVgd"+
                                 "EYF1a9Ziw/p3sXZ1BDZ+uNHvB5vLgj6h2XuP/SMLu0eeDYnFYhgMhrlk8bvth/bPc34/4RwU/BV6"+
                                 "Djr1F9nkI+np/wHQAhSGWU8H3wAAAABJRU5ErkJggg==")),0,$$.Length)))))
#endregion
#~~< ButtonOK >~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
$ButtonOK = New-Object System.Windows.Forms.Button
$ButtonOK.FlatStyle = [System.Windows.Forms.FlatStyle]::System
$ButtonOK.Location = New-Object System.Drawing.Point(440, 9)
$ButtonOK.Size = New-Object System.Drawing.Size(87, 23)
$ButtonOK.TabIndex = 46
$ButtonOK.Text = $TextStrings.Apply
$ButtonOK.UseVisualStyleBackColor = $true
$ButtonOK.add_Click({Ok($ButtonOK)})
#~~< ButtonCancel >~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
$ButtonCancel = New-Object System.Windows.Forms.Button
$ButtonCancel.FlatStyle = [System.Windows.Forms.FlatStyle]::System
$ButtonCancel.Location = New-Object System.Drawing.Point(543, 9)
$ButtonCancel.Size = New-Object System.Drawing.Size(87, 23)
$ButtonCancel.TabIndex = 45
$ButtonCancel.Text = $TextStrings.Close
$ButtonCancel.UseVisualStyleBackColor = $true
$ButtonCancel.add_Click({Close($ButtonCancel)})
$Sharesform.Controls.Add($SplitContainer1)
$Sharesform.Controls.Add($lblCoreConfigTitle)
$Sharesform.Controls.Add($lblDescript)
$Sharesform.Controls.Add($PictureBox1)
$Sharesform.Controls.Add($ButtonOK)
$Sharesform.Controls.Add($ButtonCancel)

#endregion

#region Functions

function Main
{
	[System.Windows.Forms.Application]::EnableVisualStyles()
	Get-Status
	$LblLocation.enabled = $True
	$LblShareName.enabled = $True
	$LblComment.enabled = $True
	$RadioProvision.enabled = $True
	$RadioDelete.enabled = $True	
	RadionCheck
	FormLoad
}

function FormLoad
{
	$SplitContainer1.Size = New-Object System.Drawing.Size(618, 280)
	$SplitContainer1.SplitterDistance = 160	
	$SharesForm.size = New-Object System.Drawing.Size(610, 420)
	$ButtonCancel.Location = New-Object System.Drawing.Point(502, 358)
	$ButtonOK.Location = New-Object System.Drawing.Point(391, 358)
					
	$PanelStatus.Dock = [System.Windows.Forms.DockStyle]::Fill
			
				
	$Sharesform.ShowDialog()
}

function LabelSharesClick($object)
{
	$LabelShares.Font = New-Object System.Drawing.Font("Tahoma", 8.25, [System.Drawing.FontStyle]::Bold, [System.Drawing.GraphicsUnit]::Point, ([System.Byte] ( 0 ) ))
	$LabelCreate.Font = New-Object System.Drawing.Font("Tahoma", 8.25, [System.Drawing.FontStyle]::Regular, [System.Drawing.GraphicsUnit]::Point, ([System.Byte] ( 0 ) ))
	$LabelDelete.Font = New-Object System.Drawing.Font("Tahoma", 8.25, [System.Drawing.FontStyle]::Regular, [System.Drawing.GraphicsUnit]::Point, ([System.Byte] ( 0 ) ))
				
	$GroupBoxListShares.visible = $True
	$GroupBoxCreateDelete.visible = $False
}

function LabelCreateClick($object)
{
	$LabelCreate.Font = New-Object System.Drawing.Font("Tahoma", 8.25, [System.Drawing.FontStyle]::Bold, [System.Drawing.GraphicsUnit]::Point, ([System.Byte] ( 0 ) ))
	$LabelShares.Font = New-Object System.Drawing.Font("Tahoma", 8.25, [System.Drawing.FontStyle]::Regular, [System.Drawing.GraphicsUnit]::Point, ([System.Byte] ( 0 ) ))
	$LabelDelete.Font = New-Object System.Drawing.Font("Tahoma", 8.25, [System.Drawing.FontStyle]::Regular, [System.Drawing.GraphicsUnit]::Point, ([System.Byte] ( 0 ) ))
				
	$RadioProvision.checked = $True
	RadionCheck
	$GroupBoxListShares.visible = $False
	$GroupBoxCreateDelete.visible = $True
	$PictNewshare.visible = $True
	$PictDeleteShare.visible = $False
}
function LabelDeleteClick($object)
{
	$LabelDelete.Font = New-Object System.Drawing.Font("Tahoma", 8.25, [System.Drawing.FontStyle]::Bold, [System.Drawing.GraphicsUnit]::Point, ([System.Byte] ( 0 ) ))
	$LabelShares.Font = New-Object System.Drawing.Font("Tahoma", 8.25, [System.Drawing.FontStyle]::Regular, [System.Drawing.GraphicsUnit]::Point, ([System.Byte] ( 0 ) ))
	$LabelCreate.Font = New-Object System.Drawing.Font("Tahoma", 8.25, [System.Drawing.FontStyle]::Regular, [System.Drawing.GraphicsUnit]::Point, ([System.Byte] ( 0 ) ))
					
	$RadioDelete.checked = $True
	RadionCheck
	$GroupBoxListShares.visible = $False
	$GroupBoxCreateDelete.visible = $True
	$PictNewshare.visible = $False
	$PictDeleteShare.visible = $True
}


function Close{
	$SharesForm.Hide()
	$formNetwork.enabled = $true
}
#*****************************************************************************************************************************************************************
function OK{
	$ButtonOK.enabled = $False
	#
		if ($RadioProvision.Checked)
		{
			$ShareName = $TxtShareName.Text
			if (ResolvePath $TxtLocation.Text)
			{				          
				$objWMI = [wmiClass] 'Win32_share'
				$RetVal = $objWMI.create($TxtLocation.Text, $ShareName, 0, $Null, $TxtComment.Text)
		
				switch($RetVal.ReturnValue)
				{
					"0"
					{
					#Output to Logfile
					$TextStrings.LogShareCreated -f $Logdate, $ShareName | Out-File -filepath $logfile -append
					} 
					"2"
					{
						$Shell.Popup(($TextStrings.ErrorAccessDenied -f $ShareName), 0, $TextStrings.Error, 0 + 16)
					}
					"9"
					{
						$Shell.Popup(($TextStrings.ErrorInvalidName -f $ShareName), 0, $TextStrings.Error, 0 + 16)
					}
					"10"
					{
						$Shell.Popup(($TextStrings.ErrorInvalidLevel -f $ShareName), 0, $TextStrings.Error, 0 + 16)
					}
					"21"
					{
						$Shell.Popup(($TextStrings.ErrorInvalidParameter -f $ShareName), 0, $TextStrings.Error, 0 + 16)
					}
					"22"
					{
						$Shell.Popup(($TextStrings.ErrorShareAlreadyExists -f $ShareName), 0, $TextStrings.Error, 0 + 64)
					}
					"23"
					{
						$Shell.Popup(($TextStrings.ErrorRedirectedPath -f $ShareName), 0, $TextStrings.Error, 0 + 16)
					}
					"24"
					{
						$Shell.Popup(($TextStrings.ErrorUnknownDirectory -f $ShareName), 0, $TextStrings.Error, 0 + 16)
					}
					"25"
					{
						$Shell.Popup(($TextStrings.ErrorNameNotFound -f $ShareName), 0, $TextStrings.Error, 0 + 16)
					}
					default
					{
						$Shell.Popup(($TextStrings.ErrorUnknown -f $ShareName), 0, $TextStrings.Error, 0 + 16)
					}
				}
			}
		}
		else
		{
			$ShareName = $ListShares2.SelectedItem			
			$ErrorActionPreference = "SilentlyContinue"
			#-----------------------------------------
			trap[System.Management.Automation.RuntimeException]
			{
				continue
			}          
			$DelShares = Get-WmiObject -query "select * from win32_share where name='$ShareName'"
			foreach ($Share in $DelShares)
			{
				$RetVal = $Share.Delete()
				switch($RetVal.ReturnValue)
				{
					"0"
					{
						#Output to Logfile
						$TextStrings.LogShareDeleted -f $Logdate, $Share | Out-File -filepath $logfile -append
					}
					"2"
					{
						$Shell.Popup(($TextStrings.DeleteAccessDenied -f $ShareName), 0, $TextStrings.Error, 0 + 16)
					}
					"9"
					{
						$Shell.Popup(($TextStrings.ErrorDeleteInvalidName -f $ShareName), 0, $TextStrings.Error, 0 + 16)
					}
					"21"
					{
						$Shell.Popup(($TextStrings.ErrorDeleteInvalidParameter -f $ShareName), 0, $TextStrings.Error, 0 + 16)
					}
					"24"
					{
						$Shell.Popup(($TextStrings.ErrorDeleteUnknownDirectory -f $ShareName), 0, $TextStrings.Error, 0 + 16)
					}
					"25"
					{
						$Shell.Popup(($TextStrings.ErrorDeleteNameNotFound -f $ShareName), 0, $TextStrings.Error, 0 + 16)
					}
					default
					{
						$Shell.Popup(($TextStrings.ErrorDeleteUnknown -f $ShareName), 0, $TextStrings.Error, 0 + 16)
					}
				}
			}
	}
	$ButtonOK.enabled = $True
	Get-Status
	RadionCheck
	$Sharesform.Update()
}
#*****************************************************************************************************************************************************************
function ResolvePath([string]$Path)
{
	$ErrorActionPreference = "SilentlyContinue"
	trap[System.Management.Automation.RuntimeException]
	{
		continue
	}
	$errorVar.Clear()
	$ErrorActionPreference = "Continue"
	Resolve-Path -Path $Path -ErrorAction SilentlyContinue -ErrorVariable errorVar
	if ($errorVar)
	{
		$CabNew = New-Item -path $Path -type directory -Force -ErrorVariable $Err -ErrorAction SilentlyContinue
		if ($Err)
		{
			$Shell.Popup(($TextStrings.ErrorCreateFolderStructure -f $Path), 0, $TextStrings.Error, 0 + 16)
			continue
			return $False
		}
		else
		{
			return $True
		}
	}
	else
	{
		#Write-Host -ForegroundColor Green "`n -OK !"
		return $TRUE
	}
}
#*****************************************************************************************************************************************************************
function RadionCheck{
	if ($RadioProvision.Checked)
	{
		if ($RadioProvision.enabled)
		{
			$TxtLocation.ReadOnly = $False
			$TxtShareName.ReadOnly = $False
			$TxtShareName.Visible = $True
			$TxtComment.ReadOnly = $False
			$ListShares2.Visible = $False
		}
		else
		{
			$TxtLocation.ReadOnly = $True
			$TxtShareName.Visible = $True
			$ListShares2.Visible  = $False
			$TxtComment.ReadOnly = $True
			$TxtShareName.ReadOnly = $True
		}
	}
	else
	{
		if ($RadioDelete.enabled)
		{
			$TxtLocation.ReadOnly  = $True
			$TxtShareName.ReadOnly = $False
			$TxtComment.ReadOnly   = $True
			$TxtShareName.Visible  = $False
			$ListShares2.Visible   = $True
		}
		else
		{
			$TxtLocation.ReadOnly = $True
			$TxtShareName.ReadOnly = $True
			$TxtLocation.ReadOnly = $True
			$TxtShareName.Visible = $false
			$ListShares2.Visible = $True
		}
		$ListShares2.Items.Clear()
		Get-ListStatus
	}
}
#*****************************************************************************************************************************************************************
function Get-Status
{
	$Win32_Share = gwmi Win32_Share
	foreach ($Share in $Win32_Share)
	{
		$Shares += $TextStrings.ShareBuilder -f $Share.Name, $Share.Path, $Share.Description, $Share.Status
		#$Shares + "Name:" + $Share.Name + "`r`n" + "Path:" + $Share.Path + "`r`n" + "Description:" + $Share.Description + "`r`n" + "Status:" + $Share.Status + "`r`n" + "=========================================" + "`r`n"
	}
	$ListShares.Text = $Shares
}
#*********************************************
function Get-ListStatus{
	$Win32_Share = gwmi Win32_Share
	foreach ($Share in $Win32_Share)
	{
		$ListShares2.Items.Add($Share.Name)
		$ListShares2.set_SelectedItem($Share.Name)
	}

}

Main

#endregion
