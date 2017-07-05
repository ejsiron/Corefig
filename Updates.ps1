Import-LocalizedData -BindingVariable TextStrings -FileName Updates.psd1
#region Constructor

[void][System.Reflection.Assembly]::LoadWithPartialName("System.Windows.Forms")
[void][System.Reflection.Assembly]::LoadWithPartialName("System.Drawing")

#endregion

#region Form Creation
#~~< frmUpdates >~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
$frmUpdates = New-Object System.Windows.Forms.Form
$frmUpdates.ClientSize = New-Object System.Drawing.Size(1284, 708)
$frmUpdates.ControlBox = $false
$frmUpdates.Font = New-Object System.Drawing.Font("Tahoma", 8.25, [System.Drawing.FontStyle]::Regular, [System.Drawing.GraphicsUnit]::Point, ([System.Byte](0)))
$frmUpdates.FormBorderStyle = [System.Windows.Forms.FormBorderStyle]::FixedSingle
$frmUpdates.MaximizeBox = $false
$frmUpdates.MinimizeBox = $false
$frmUpdates.ShowIcon = $false
$frmUpdates.StartPosition = [System.Windows.Forms.FormStartPosition]::CenterScreen
$frmUpdates.Text = $TextStrings.WindowTitle
$frmUpdates.BackColor = [System.Drawing.Color]::White
#~~< SplitContainer1 >~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
$SplitContainer1 = New-Object System.Windows.Forms.SplitContainer
$SplitContainer1.Location = New-Object System.Drawing.Point(-3, 71)
$SplitContainer1.Panel1.Text = ""
$SplitContainer1.Panel2.Text = ""
$SplitContainer1.Size = New-Object System.Drawing.Size(1383, 625)
$SplitContainer1.SplitterDistance = 336
$SplitContainer1.TabIndex = 17
$SplitContainer1.Text = ""
#~~< SplitContainer1.Panel1 >~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
#~~< Panel1 >~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
$Panel1 = New-Object System.Windows.Forms.Panel
$Panel1.BorderStyle = [System.Windows.Forms.BorderStyle]::FixedSingle
$Panel1.Dock = [System.Windows.Forms.DockStyle]::Fill
$Panel1.Location = New-Object System.Drawing.Point(0, 0)
$Panel1.Size = New-Object System.Drawing.Size(336, 625)
$Panel1.TabIndex = 0
$Panel1.Text = ""
$Panel1.BackColor = [System.Drawing.Color]::Gainsboro
#~~< lblUpdatesettings >~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
$lblUpdatesettings = New-Object System.Windows.Forms.Label
$lblUpdatesettings.Font = New-Object System.Drawing.Font("Tahoma", 8.25, [System.Drawing.FontStyle]::Regular, [System.Drawing.GraphicsUnit]::Point, ([System.Byte](0)))
$lblUpdatesettings.Location = New-Object System.Drawing.Point(11, 14)
$lblUpdatesettings.Size = New-Object System.Drawing.Size(102, 18)
$lblUpdatesettings.TabIndex = 0
$lblUpdatesettings.Text = $TextStrings.UpdateSettings
$lblUpdatesettings.Cursor = [System.Windows.Forms.Cursors]::Hand
$lblUpdatesettings.add_Click({LblUpdatesettingsClick($lblUpdatesettings)})
#~~< lblUpdatehistory >~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
$lblUpdatehistory = New-Object System.Windows.Forms.Label
$lblUpdatehistory.Location = New-Object System.Drawing.Point(11, 93)
$lblUpdatehistory.Size = New-Object System.Drawing.Size(134, 29)
$lblUpdatehistory.TabIndex = 0
$lblUpdatehistory.Text = $TextStrings.ViewHistory
$lblUpdatehistory.Cursor = [System.Windows.Forms.Cursors]::Hand
$lblUpdatehistory.add_Click({LblUpdatehistoryClick($lblUpdatehistory)})
#~~< lblCheckupdates >~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
$lblCheckupdates = New-Object System.Windows.Forms.Label
$lblCheckupdates.Location = New-Object System.Drawing.Point(11, 53)
$lblCheckupdates.Size = New-Object System.Drawing.Size(136, 18)
$lblCheckupdates.TabIndex = 0
$lblCheckupdates.Text = $TextStrings.CheckForUpdates
$lblCheckupdates.Cursor = [System.Windows.Forms.Cursors]::Hand
$lblCheckupdates.add_Click({LblCheckupdatesClick($lblCheckupdates)})
$Panel1.Controls.Add($lblUpdatesettings)
$Panel1.Controls.Add($lblUpdatehistory)
$Panel1.Controls.Add($lblCheckupdates)
$SplitContainer1.Panel1.Controls.Add($Panel1)
#~~< SplitContainer1.Panel2 >~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
#~~< panelHistory >~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
$panelHistory = New-Object System.Windows.Forms.Panel
$panelHistory.BorderStyle = [System.Windows.Forms.BorderStyle]::FixedSingle
$panelHistory.Location = New-Object System.Drawing.Point(451, 314)
$panelHistory.Size = New-Object System.Drawing.Size(434, 282)
$panelHistory.TabIndex = 19
$panelHistory.Text = ""
$panelHistory.BackColor = [System.Drawing.Color]::Gainsboro
#~~< listboxHistory >~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
$listboxHistory = New-Object System.Windows.Forms.ListBox
$listboxHistory.FormattingEnabled = $true
$listboxHistory.HorizontalScrollbar = $true
$listboxHistory.Location = New-Object System.Drawing.Point(17, 72)
$listboxHistory.Size = New-Object System.Drawing.Size(395, 186)
$listboxHistory.TabIndex = 0
#~~< pboxHistory >~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
$pboxHistory = New-Object System.Windows.Forms.PictureBox
$pboxHistory.BackgroundImageLayout = [System.Windows.Forms.ImageLayout]::None
$pboxHistory.Location = New-Object System.Drawing.Point(17, 17)
$pboxHistory.Size = New-Object System.Drawing.Size(40, 38)
$pboxHistory.TabIndex = 15
$pboxHistory.TabStop = $false
$pboxHistory.Text = ""
#region pboxHistory.Image = ([System.Drawing.Image](...)
$pboxHistory.Image = ([System.Drawing.Image]([System.Drawing.Image]::FromStream((New-Object System.IO.MemoryStream(($$ = [System.Convert]::FromBase64String(
"iVBORw0KGgoAAAANSUhEUgAAACMAAAAkCAIAAACMvhS2AAAAAXNSR0IArs4c6QAAAARnQU1BAACx"+
                                 "jwv8YQUAAAAgY0hSTQAAeiYAAICEAAD6AAAAgOgAAHUwAADqYAAAOpgAABdwnLpRPAAAChxJREFU"+
                                 "SEuFl9dzG9cZxSFrnDw5k4dM/rzM+DkPmXHsjOWJYsuK20ikimVRIinLJEWJTaRYxA4WsIDoRF1g"+
                                 "F7vYXrAVnUQhcxagZUuWnJ07y8ud5f3tOV+5l5ey2azn3dcf//D+pUuX2u1WtVZr1E/OPOftTqfV"+
                                 "OvN4zt6/fPnSe+/99S9//tMHH1y+/F6t0W42m7+zlAekd10MnQ8Ejg79R6FwdHnz8MWKb2Zxe2p+"+
                                 "e3Jhd2bJN7W0Ozq9OjIxPzk1szA/Hw1HaJr+ndXeSYpGI9FozHcYm5rbfDKz6t2L7kWJgwSFcZjI"+
                                 "HyXzwTQdSuZ3/PGJ+Z0fx+fvD42NP5uMx2Lvgr2FRBDZYCjkD8THp1aWN4/2YuROOL0bJcJpOkGy"+
                                 "JCd7/eEsKxOsGM+xgXT+MJ4LpenVnfDAjzP3HwyvrKyRJPlb3pukePz4OJFYWtl7sbx7ECN3w0Qw"+
                                 "mad4SSganKQ6lbLpOHNrm7hjMKJSkFVBK5KsFCOYBMXOvty+eXv4ydhYJpN+A/YaCZhYPDk+vbbl"+
                                 "P96NZn3R9G4oquqmUSqppi0bpmyasm7tBaOYi7opajq+QNGNgqxt+cMkJ6ZocWs/fPPO8ODAYCqV"+
                                 "+jXsF1IqlYweJ0YnlvYjma1wOklxkm6Mzy+LRV21bMWwusPEULtIxTDkouHC1GIyS73c2uPUIi0p"+
                                 "WVY4Os581z8wOPAgl8u9gl2Q8CgcjU7MrO9H0ohKIldwKpWiU8pzAisqqmlhFN3hqO6wNJft6pMA"+
                                 "0/UURRdEhVc0VlJJTqJ48SCcvP7N7amJp6+RXEwkvLJxuHUY3QoTSbheNIq2fQGwHayrW3axOzDR"+
                                 "bFszbYA1w4a3LkxzxfFqkZWVgqSAxIjS0sbe1WtfH+77ejAPRVFEOhmMJKbm1pFmEYJx1ZjA4Nvt"+
                                 "C4ZTMmxHfzUcx7BKustzVMNSdUsugqcjNThFK8gK04XRinJz4Ml3fXc4mnJJBSYfiYQnZtcPj7Ob"+
                                 "/mNZN/HhqgW7XCmuji7ALJUNp2R1BxLEtMt4aEAiLMX7piHrBkgFRaFlOceLUYJMM4VAgvjos2ve"+
                                 "zQ1RFD25LBEKx57Orm1HiHiWGn2+GMvk3KjYrlGQYmLFLsAsV+xS2eoOu1zB3QTVcUBCzKCJV1VO"+
                                 "UXOFwrO5+eGpuXSeYWTl9sPx/r5+TVM9kXBkZt7rP86E0gyMVkyTlbVezIuOqwYYrAiGU6kCYJer"+
                                 "mMBhd15ylSFmyEYMRdcD4fDs3GwkkUK0cqyQ5+Vtf+zjz77kGNKTSiR/erawH4dYAX+mIM1cxyzd"+
                                 "cmNj4MPLFadUtSuVUrlWqtbK1e69Vi1VqngBprGKwgjSxs7uvz+/trCyni1wWY4nWIHkpWyBz6vG"+
                                 "1et9294NTzgcmV7Y3I4SkqZLhuUWimVpNjxxBcG0npoeo1yrVWo1uMoqWqbApehCgqKP4qmr165/"+
                                 "daMvks5mCnyGFbpDAgyTHC/dH346/mTMs7m1790PBVM0LSoSitEwNZBMB9YhC2BRD4MBGxFzosDF"+
                                 "KTQeOknRx7n8wKOfPvn0ym4wRPBShhOzvEQKMiVKecltVGmGQznPLm/dun3Hs+Y9PIymjkkeEULi"+
                                 "QZNmgGS74YGacgUuIelRKBQnZhg2TtEYaYb1Hhx99vkX04svSUHNyxolKlidRj3JagElrBYRdUZU"+
                                 "JdNCf/rPF9c9i6u7gWQux8uiVhQ0XdHRcpDclptv5TIyEAmC4sjxfCxLvljbWPPtP5ud+/y/X/fd"+
                                 "vZdFhao6XIKNabqQoQt5XuSLBo9CLlq4M5Jq1uqRZO6jj6945pe2AknSh8pdXl3b98NA1URJOYZd"+
                                 "hkSaR2uRciyfopmemt1ACBvr3z78sO/ewN0Hg3fuP+j/4Ye+u9/337nbd+f7hZU1BFu1HF7T7z2b"+
                                 "ezy3YlSqaYr5+z8+8Sws74SSZF5QOFVFx5T0rnuWw8oqxct5QQAmmXcxiE2CKqRoFiIoWfP6j3zB"+
                                 "YF6UZbfSHdUuq1ZZRftAjaMAUAn1umaV2+fniSzzz39dAcl7EElSguJuCsg9dxcwGUEmeZHkkDl8"+
                                 "krlQk6CYZL6QYTiCg5kSegEK8yga9wVCyGzNKVtVd3Wn1rBrDad+WqmfGqVqs32+H0h8+e0Nz8sV"+
                                 "79LWYYbhUWvYbFAfeWDQj7uYDM3GLtTQwCCXkLhZTkT8keicqovYSiwnTZKBSIwWBACqJ63qaat+"+
                                 "2q6ddjhZh6aF1Z2BwSHUU3hsehm2QAeyBbmO2s7xAsny3YR2YwPfYFq6Wys5FwM1Kq8VxaKByjNd"+
                                 "oyDiBIajO1AMf9LqNDvn5Xq90Wyen5/fezg283zGg2PJg5HZDCdjQ+sGX8iyYo7DnU/QhZ9JMI1F"+
                                 "uRC82C0UDd8kFC3FLumouUodmOpJs9bsnLbPnHI5S2QNw2y1oMe9rly7EQ4FPQSRGZtc8sfSQlFH"+
                                 "84hlqJ1AFFlAMK5vPUHpPIcsyLISSpJRFLa3qVs2Cs6q1Uq102qjVW+2TtrtztkZls5QbKfT0S0H"+
                                 "88Ng6otrX6mq5GEZxndw+GDkOa1oy/tHfY/Gw+lsjuMBeMM3FH9eRrfWcIJQsZWUqsCUGyeVRrPR"+
                                 "6py22m2X4l4MLw9NLtQbDcxvDYwNDg+JouDBcRBHu0dP5vzHBLoWAkaw/Kte4KY1fCu4vuGM4FZ+"+
                                 "V003j+tO4xSYerPTbJ2ddS4w+FGtNyAPk2iC/PTq9Vg0StN59xxBUeSWb+/20BQ6BTI7TtK9CPUS"+
                                 "wW2anADf3B7T7cI4X1johPVG1VXTanXOzn9Wg9WhDaQe9pv+wZGRkd7p7+LEkkwmZxfXR6ZfohdA"+
                                 "U4QgQUpSblojQt3qcbuZoLm+uclWPamcuLFpwbLXMejFrXYLz3Dy/fbGzVQqcXGOeHV2CQTDjycW"+
                                 "n6/vo0mjj6FPJ8nCyl7An8whrYFBg5HReZFstXq5cVo7bZ8iNF1Misxjr4I8yy6fQeL5+cZe+Jsb"+
                                 "tw8ODt48hfV+D4RDQ2NzUyu7CShjONj43aNnKCNkNiIkFE21VLLhW+0EGGTBBef83HYqTxfX7VK1"+
                                 "Zxr22f57D71bm28/Wfae+gPBRxMLw5NL6YKQpjl/kkCoKEHCNoP+b2DnrTUmVrYbzbNmx03ps077"+
                                 "5LSJTVIpmj3M5PzOrR8ebm2/hvklTr+GH8eOJ+eXbw1O+EKJvKYXVC0vSLAOXZhX9XL95NHssmqW"+
                                 "TptN3XQwXuVcNi8N/DR7597Dvb39//8fQO+NVDK5uuEdHp2+PzK7F02LTlk2HAubb/2k3umgO/wq"+
                                 "CbpxItixqZX+u0OjY08T8fhvMW/X1HsPJ85oLOLd3Bx58nxwdGbixcb6XiiSytGiqhqOrJgEWTgI"+
                                 "xOfXfA8fTw89fjo6/iwQDP5yDP8N7ff+J0RR8xxH56nAUcC7vbO8uvn4yfRPo5P3B0ex9Mj4xOLS"+
                                 "6vLLVd+uj6ZIdAGGYd6qpvfwf3ndTaw3M8uYAAAAAElFTkSuQmCC")),0,$$.Length)))))
#endregion
#~~< lblHistory >~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
$lblHistory = New-Object System.Windows.Forms.Label
$lblHistory.Font = New-Object System.Drawing.Font("Tahoma", 8.25, [System.Drawing.FontStyle]::Regular, [System.Drawing.GraphicsUnit]::Point, ([System.Byte](0)))
$lblHistory.Location = New-Object System.Drawing.Point(63, 17)
$lblHistory.Size = New-Object System.Drawing.Size(338, 38)
$lblHistory.TabIndex = 10
$lblHistory.Text = $TextStrings.HistoryDescription
$panelHistory.Controls.Add($listboxHistory)
$panelHistory.Controls.Add($pboxHistory)
$panelHistory.Controls.Add($lblHistory)
#~~< panelUpdates >~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
$panelUpdates = New-Object System.Windows.Forms.Panel
$panelUpdates.BorderStyle = [System.Windows.Forms.BorderStyle]::FixedSingle
$panelUpdates.Location = New-Object System.Drawing.Point(451, 19)
$panelUpdates.Size = New-Object System.Drawing.Size(434, 289)
$panelUpdates.TabIndex = 18
$panelUpdates.Text = ""
$panelUpdates.Visible = $false
$panelUpdates.BackColor = [System.Drawing.Color]::Gainsboro
#~~< lblRestart >~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
$lblRestart = New-Object System.Windows.Forms.Label
$lblRestart.Font = New-Object System.Drawing.Font("Tahoma", 8.25, [System.Drawing.FontStyle]::Bold, [System.Drawing.GraphicsUnit]::Point, ([System.Byte](0)))
$lblRestart.Location = New-Object System.Drawing.Point(63, 144)
$lblRestart.Size = New-Object System.Drawing.Size(299, 18)
$lblRestart.TabIndex = 19
$lblRestart.Text = $TextStrings.RebootRequired
$lblRestart.Visible = $false
$lblRestart.BackColor = [System.Drawing.Color]::White
#~~< txtboxListUpdates >~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
$txtboxListUpdates = New-Object System.Windows.Forms.CheckedListBox
$txtboxListUpdates.CheckOnClick = $true
$txtboxListUpdates.FormattingEnabled = $true
$txtboxListUpdates.HorizontalScrollbar = $true
$txtboxListUpdates.Location = New-Object System.Drawing.Point(17, 89)
$txtboxListUpdates.Size = New-Object System.Drawing.Size(384, 116)
$txtboxListUpdates.TabIndex = 16
#~~< btnDownload >~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
$btnDownload = New-Object System.Windows.Forms.Button
$btnDownload.FlatStyle = [System.Windows.Forms.FlatStyle]::System
$btnDownload.Location = New-Object System.Drawing.Point(223, 55)
$btnDownload.Size = New-Object System.Drawing.Size(178, 23)
$btnDownload.TabIndex = 6
$btnDownload.Text = "Download updates"
$btnDownload.UseVisualStyleBackColor = $true
$btnDownload.add_Click({DownloadUpdates($btnDownload)})
#~~< PictureBox2 >~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
$PictureBox2 = New-Object System.Windows.Forms.PictureBox
$PictureBox2.BackgroundImageLayout = [System.Windows.Forms.ImageLayout]::None
$PictureBox2.Location = New-Object System.Drawing.Point(17, 14)
$PictureBox2.Size = New-Object System.Drawing.Size(30, 35)
$PictureBox2.TabIndex = 15
$PictureBox2.TabStop = $false
$PictureBox2.Text = ""
#region PictureBox2.Image = ([System.Drawing.Image](...)
$PictureBox2.Image = ([System.Drawing.Image]([System.Drawing.Image]::FromStream((New-Object System.IO.MemoryStream(($$ = [System.Convert]::FromBase64String(
"iVBORw0KGgoAAAANSUhEUgAAABQAAAAZCAIAAAC+dZmEAAAAAXNSR0IArs4c6QAAAARnQU1BAACx"+
                                 "jwv8YQUAAAAgY0hSTQAAeiYAAICEAAD6AAAAgOgAAHUwAADqYAAAOpgAABdwnLpRPAAAAAlwSFlz"+
                                 "AAAOwQAADsEBuJFr7QAABKxJREFUOE+dlAlM01ccx5+AKMoxIZshCkJxUwcMZIsIGMaNBpcpZJkD"+
                                 "xuE4hcEQwkSQ+whyF9pyg+XWqoFyDUEoLQgKhba0UEYHWKAtSA+gF0e6f6NBxzBZ9vJe3vX7/F5+"+
                                 "7/3e9wCdTgf/u0DwvuVJfWBBtj9UMbX+H7MB+248KI9gzJB5PB6Xy6WQBsuQofua7YWfNgRhmrK4"+
                                 "3DeT4zg6PofUlTYy0EafolaVxTVW39zj4j3c/iQYXRlLHsdxuTwmrU3wymej15jbCJglSpQ/MmcY"+
                                 "sz1djXlZgZha310XcriyNKqtBTVBxotEovkZCmsKK17AyBbgO6QfpZ2662gwnwUmq52IQ90Mxl8v"+
                                 "BjrrazIR+QHymy4pCt3c3GSzmNPjrfOv8vj00h3RtEwyIZkt4Q16sR6fWa46ykMdXEgFE/EHB8q9"+
                                 "8VgUlTJKpVIykj1BcWEIm81eIVisDVlu0m/LVrGyNYJsFdPyMD85MdbDwz3F32i9VGklV4WdqjwX"+
                                 "CWghAHfvi76+PjmMgt+CYMGA/va4/fZ0zM5c7jYjVTYZXgm/Exoeffl79yh3I0EhWL5/iJV2ZDHu"+
                                 "yEIQIPhr9Pf3y2FkQTCLxRL0624OW0jHvKSjN8QEm51ek5y7151d3L40uRBx9SQ/BbB+V1iIPMyM"+
                                 "UHvtf5jgpwnB6UkeAJEfBMGrz7SlgxckQy7iHqONFrVtjFKYq56qhhYAisGXjgrugsUIwAxXZv6m"+
                                 "xryl2vurAQ6Hk8NFeYFLS0vsdh3pwDeSQWdhhy6vBIgygY+5CpS1B5RU71zW3EgArBjFpWiVxehP"+
                                 "WJHHOmMu4nDP0xLdQUN1AI1KXOowk+CMxP1OvFJdzj0gTAKhNhpAQUVTWz/DTVucrriSqrqcosVJ"+
                                 "1eYkHG/J9hwewpcjfgbYR/4T5EF6h4+wDSZosF/N0eMkAFEyiHY8dkj9M0NT8+KbMEmBBh9xkoeE"+
                                 "cZGfr+aewKKzatGFD9He8iTp7qoZeV7JLdXhV1pz4ac58QriZBB3RVPtOMzK9kpd2LmtSt21WqP1"+
                                 "RtO1OtOVElhvV3MxMl6eJFArQ0VNUskclI6g7GteoeFyvLIoCeReV4MZnHZ2dMBEG+48Nt7AWgjb"+
                                 "rUTN5rPFBsTR0fvp8jyXwxWoXyZpI6N1fnyEPq/wq5UU9ZVYwIlV7Aj5tD3qFLvsnLjVUtxjK+6x"+
                                 "ETab9VX5NT9FQwG/g6GuviZtbPQlB4LhZ99kaK8lKOFDVC3Pn7lxzZGCurjdYy3GO27ibBnVRkMv"+
                                 "BgpyQt7+jXe/qumBL2mMQENY8xF63GzYVrp6jquW2glDp2ve9SkOsv5vJQTH9dbz+ILvurswNWXy"+
                                 "Y9/D0Cg/O2B2dmak4of1YpP1rFPTMVoRribJIS4z1RZbvXaSHisC3J5MJr6Ndi8MzRtqM+n0KUaD"+
                                 "q7DGQYg03kCe5VeZSVvtpF12Y+WXiEQiouD2h3qwV0keNeZDuvG62VvS6bvd4bXzzFPU6TpeYUsm"+
                                 "jdXXZH1USXY3mupzGX9O0bBhlFo3UtXVITT0FtR/k/+I+UOvFaVxkzTS/Pz83Nzcy+FeJDzyPwng"+
                                 "rlFRrkda4k9QhQb7ktDi3yKdqkEaP7/sAAAAAElFTkSuQmCC")),0,$$.Length)))))
#endregion
#~~< btnInstall >~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
$btnInstall = New-Object System.Windows.Forms.Button
$btnInstall.FlatStyle = [System.Windows.Forms.FlatStyle]::System
$btnInstall.Location = New-Object System.Drawing.Point(216, 239)
$btnInstall.Size = New-Object System.Drawing.Size(185, 23)
$btnInstall.TabIndex = 6
$btnInstall.Text = $TextStrings.InstallUpdates
$btnInstall.UseVisualStyleBackColor = $true
$btnInstall.add_Click({DownloadandInstall($btnInstall)})
#~~< Label1 >~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
$Label1 = New-Object System.Windows.Forms.Label
$Label1.Font = New-Object System.Drawing.Font("Tahoma", 8.25, [System.Drawing.FontStyle]::Regular, [System.Drawing.GraphicsUnit]::Point, ([System.Byte](0)))
$Label1.Location = New-Object System.Drawing.Point(17, 216)
$Label1.Size = New-Object System.Drawing.Size(384, 44)
$Label1.TabIndex = 10
$Label1.Text = $TextStrings.InstallDescription
#~~< lbldownloadupdates >~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
$lbldownloadupdates = New-Object System.Windows.Forms.Label
$lbldownloadupdates.Font = New-Object System.Drawing.Font("Tahoma", 8.25, [System.Drawing.FontStyle]::Regular, [System.Drawing.GraphicsUnit]::Point, ([System.Byte](0)))
$lbldownloadupdates.Location = New-Object System.Drawing.Point(53, 14)
$lbldownloadupdates.Size = New-Object System.Drawing.Size(348, 38)
$lbldownloadupdates.TabIndex = 10
$lbldownloadupdates.Text = $TextStrings.UpdateDescription
$panelUpdates.Controls.Add($lblRestart)
$panelUpdates.Controls.Add($txtboxListUpdates)
$panelUpdates.Controls.Add($btnDownload)
$panelUpdates.Controls.Add($PictureBox2)
$panelUpdates.Controls.Add($btnInstall)
$panelUpdates.Controls.Add($Label1)
$panelUpdates.Controls.Add($lbldownloadupdates)
#~~< panelSettings >~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
$panelSettings = New-Object System.Windows.Forms.Panel
$panelSettings.BorderStyle = [System.Windows.Forms.BorderStyle]::FixedSingle
$panelSettings.Location = New-Object System.Drawing.Point(9, 19)
$panelSettings.Size = New-Object System.Drawing.Size(434, 289)
$panelSettings.TabIndex = 10
$panelSettings.Text = ""
$panelSettings.BackColor = [System.Drawing.Color]::Gainsboro
#~~< pictureTick2 >~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
$pictureTick2 = New-Object System.Windows.Forms.PictureBox
$pictureTick2.Location = New-Object System.Drawing.Point(17, 76)
$pictureTick2.Size = New-Object System.Drawing.Size(30, 35)
$pictureTick2.TabIndex = 16
$pictureTick2.TabStop = $false
$pictureTick2.Text = ""
#region pictureTick2.Image = ([System.Drawing.Image](...)
$pictureTick2.Image = ([System.Drawing.Image]([System.Drawing.Image]::FromStream((New-Object System.IO.MemoryStream(($$ = [System.Convert]::FromBase64String(
"iVBORw0KGgoAAAANSUhEUgAAAB4AAAAjCAIAAAAMti2GAAAAAXNSR0IArs4c6QAAAARnQU1BAACx"+
                                 "jwv8YQUAAAAgY0hSTQAAeiYAAICEAAD6AAAAgOgAAHUwAADqYAAAOpgAABdwnLpRPAAAAAlwSFlz"+
                                 "AAAOwQAADsEBuJFr7QAAB85JREFUSEu1lmlYk1cWx1OFIqXskVAQ2WLYSjDs4AhFbBFrtW6jA6Jl"+
                                 "SWAIYGhFIFQChBBIwhYhEJawhcWwB0E0ympAgRAIawhrKBKKnUGdkfnkM3fGPloQgS99n3x533vP"+
                                 "7557cs7/nE8kEgnkT3oA+k96ILvhCoXC/Pz89PR0CoXCZrPB626sdkaXlZXV1dUNDQ1NTEyMjo7y"+
                                 "+fzi/z870rdDj4+Pl5SUSKXS3pGe1D6yb4v3NyVuoTXBPAGvtbUV3AAsbXPA1ujZ2dm8vLyOjo7V"+
                                 "1dXHo91kQXykAOfX5X2iwQ2Zb26TbdXArx8bGysoKNjG/c1ogUBQWlra0NDw6tWrGelM63gLS8ws"+
                                 "kOQkDcdhu9FnuJ72xSiTTLguCRZaETw8Odzb20ulUoGJWCzedIP36K6urpGRkcnJydevX6+9XGsf"+
                                 "a+NO17c94/F+aWVLiqkiMq4n5HzLaecyO0uGOYJi/AVBC5FklMxNEo4Knzx5Av4PDodTUVHx7oDf"+
                                 "0WQy+c2bN1Ork8NSYfZARoaIUj5bDLiPZZ0tUm7JVGHycGIYP/hs82mncnsr5pdmaYfgJEPNKLU9"+
                                 "1yEWSaYn6R6VvIqeQf7du3cxGMxb+u9oIpG4vr5+SxQeIrhGHMXnTtNrFiqbpY318zXAZfpoWkxf"+
                                 "lG+7z4lGdzs2CplnYZaB0CVqu2e6naef08ZpqWFV1cJVXHKcQSJtgX7x4sWNwcAfhzDkMQJzKqts"+
                                 "msWaYmaNZVCGSPinN9EdfmdavnXi2FkWm1swTXSosAvF52YXZleXV2mcVPW/qyn9oGSZYA4SNCAg"+
                                 "YLPXIBnCBnyvCwKIop8zxiipIykEQcyNJ+Eh3UE+j7xO3fU8UuNgyTY3ZyH0s3Qccu2EYuFvst9+"+
                                 "Xf61p79HJ1Bnn9c+wyh9gPb399+MXllZCR/AYPt88YKfCAL8j72hV9u9Ljw4c6rF073R1YFja8E2"+
                                 "MczX186EqZJUqvhVi7OLE5MTkvEpf6L/p5c/Vbz4mWGEASiFLdAymSy8Nyiw91rE0+vhvSFejy4e"+
                                 "a3JxrrO3rUaZsRHaOTBlmrI8SR4SDcFyQp7NPwMOSiYkmaV0RS9FVX+1z72ULWLMANrPz2+z1wCN"+
                                 "bQ8IeHwF14MN7kafbvG0r7U+xDbSYKgr0BT2kuTkiHKQnyF2WfaSWcnC7PyMZKaZ12wQqK+EUdIM"+
                                 "0FS+qmwddxich0ajN6OXl5exPPTVzsuhj4Mwnf5fc49p5mpAkiHgJ0eWA/7ujd+rGKfYKODKFmUg"+
                                 "/QX9wqPRrnJBe6GhUM1ADRV/ZXeqG0AHBQVtQANBWFpaCm/FXm47G9yN8XnoDS+Ce3JOorkYo9vG"+
                                 "kDiIPPF/oQitDX35/CWwnByZDKOHQbAQ9Qg1KA4KDdH8HPOZD9Mb1GRsbOwGNIvFmpubi7l307PF"+
                                 "/W8PLjlWOmJa0Gv/WFt/uT6yMOqY4wiJhBhTjMRS8XPZ82nxdFk9Wx2nvi9GQQOvsT8Suh+nqRis"+
                                 "QG2i9Pf3p6WlbUDX1tYCNcjoSrXnoL6qcT1cZhXzIOafsrUV2cq/1v49JZW457jTHtHWX/xnfn5e"+
                                 "8HTwKMFlz61PVBNUoLHqsBgoNEJDKXxfVVdle3t7dXX1BjSooubm5ociHqoE6VBu9xe2synDhNpK"+
                                 "k84sShcWlhaX5hfmgYSCm02MTN5iEvZEQpRTlNTJqrBEqE6ClhYeCk8w4Av5oGO8axTv5YlAICwt"+
                                 "LzmwbGxKDzuVOJgwTFSSVAi1cROiybFRoKBjQLzGR8a5zU2GeANFirxmqqp2+n69NJ2DybrasdBT"+
                                 "uScAFEA2yxN4B8oLFJXWQjHLhdsV2qByrL6gwhQJCvhy/FDfEAji4ODgQI/gLPl7xSR5WJamHgNm"+
                                 "nKNnkmVkQjM8QNKq7uaAUPxRvt97De4L9E88J7ZlIlF5SOscK0Q6XIsEVY9XTawgDfAFw/0iaiFN"+
                                 "k6B2gKFtmKtrWqiPLERY5ZqYpxq73nYWDglDQ0P/KNkbWgGdTu/u7k5pJiNzTByYNofplnCqkTZp"+
                                 "v16iDrWCxihmWsVa6mXBEEwDiyIjVKmpfTHSjml5KFWvoace+MtgMD6KBgsJCQnSX6Qnio65FTm5"+
                                 "5Dla30aa0owNUw4YJOkaEw/C6Qe/zIMjiw7Zsi2cK1AupTa22eZerEuSack7Ld0i1m8/cbncpqYm"+
                                 "/hD/eJnT95XffF101JGBQmWaW2YikAyEdZ65bZGFQ5mla5XN8TuOx0rsHbNR41MToOKA4Ucb2LsF"+
                                 "EokEcrHgUd53d9x86s6eZrsfZx1xLbR3Ydm6lti5Vdod5zh6Vh/xvHP0aL5ta989Ho8XHx//YWvf"+
                                 "uqODsExNTdHukdH3LmJbr1xrPHe59tsLtR7nGzzON3pc4Hr8tdHzq1L7pHoiyEgcDrflyLA1GkhB"+
                                 "SkoKKJN0HvmnLt9b/OCbnQG4jh/C2n2w7VcwvEsnq1wK2piAGBUV9WEv31CNHx4LpiSgBjMzM3Xd"+
                                 "d8gDN2jCyGRBREIfLoofFNDkXd5WOj09nZiYCLZt6fL7trvlMjADcQdOPR3vud2bSHoYHd10Pab1"+
                                 "xsicCExo0dHR23B3QIPlt3V0//59kUgEhAl4ChQZTJR4PH77qWxn9NvbAOXKzs5OTk4GEgHyrLOz"+
                                 "82NB2K5kdmOzyz07D8G7BH247b8g79R7U4RGvwAAAABJRU5ErkJggg==")),0,$$.Length)))))
#endregion
#~~< pictureCross1 >~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
$pictureCross1 = New-Object System.Windows.Forms.PictureBox
$pictureCross1.Location = New-Object System.Drawing.Point(17, 178)
$pictureCross1.Size = New-Object System.Drawing.Size(30, 35)
$pictureCross1.TabIndex = 17
$pictureCross1.TabStop = $false
$pictureCross1.Text = ""
#region pictureCross1.Image = ([System.Drawing.Image](...)
$pictureCross1.Image = ([System.Drawing.Image]([System.Drawing.Image]::FromStream((New-Object System.IO.MemoryStream(($$ = [System.Convert]::FromBase64String(
"iVBORw0KGgoAAAANSUhEUgAAAB8AAAAiCAIAAAAoKJUdAAAAAXNSR0IArs4c6QAAAARnQU1BAACx"+
                                 "jwv8YQUAAAAgY0hSTQAAeiYAAICEAAD6AAAAgOgAAHUwAADqYAAAOpgAABdwnLpRPAAAAAlwSFlz"+
                                 "AAAOwQAADsEBuJFr7QAAB69JREFUSEu1lvlTk0kax2f/ho0LTg3XBgNxAB0sgVUQ0C1FRkAdWK4g"+
                                 "RyDF4AiIxbEsi8MlEK6BUWsqKgKCwHBIwnIZFAKEkDvkfvPmJCEQwr3cC2a7yipnxID8Ml3vL293"+
                                 "P5/n6e6nv0//CYbhL/64Buh/XPviiGgul0sgPK2s+qkUX/7iRSP4PYrhkegA19HZxeYJpGJIIBBR"+
                                 "Rum1z1/U1dV91sFn6GKxuL6+Xq3RSbiTup+rYWysFBPBKysVCsQ9fWQ8Hn+4gwPpSqWSQCAMD1MM"+
                                 "xgX56OhcVcVcbq4yJUUWGy0PvsmKDGcOvuGLZE+e1h6yCDN0Npvd0NDwikhcXVvT67QzvT2bL5vW"+
                                 "m5vnHj3WFRSq0tLkiYkKTCQ74BqjolIkgcdoDDy+HJhAELRvKR/RR0ZG+UKhRAqtb22tAzR1bIX4"+
                                 "ysRkmjjcjYGBlaamuepq3Y95yvR0Rdo9eQJu8tq34zdvsJ494wskYzRWWyexpbW9qenlBx+/0YuL"+
                                 "i9+ZTGuLi/+FZcb/dM8/f75L7DJJpSaNxiQQbg8Orba0Gh8+1OXnqzIylRlZ8oxMyQ93hMHBdF/v"+
                                 "kWvf0rMymM3NfDqLSOrD4XDvHfxGLygs3Flb02Slz+XmGPH4tcbGbTJ5l0rdHRsD30ZP32JDw0xZ"+
                                 "uSozE05JhZNTYCwWTkgUJt1mhoRQzp97e9rlLQrJTEtjcYTm6RsLC9p7adp/ZetLSuYJhOXa2q3h"+
                                 "4XdG42pb2wKBMFNVpcrMEifg+JER/BvfKUndoqoqcQSGFxc34u/f7eJMPIYYicKIJLL4+HgzsS/P"+
                                 "zEzdTVHeTVFnZWr/nbPwstm0t2cymTZ1OnVODpyI48fGcgIDWRe8FO3t86urhnkjp6CQh4mihYT1"+
                                 "nT3beezPI5ERgI4Fy/p0Z5Z005rkZHlSIpQYL42OWqfTAfodaCbTgljE8vfvd0CRrL6CQP4sLqrV"+
                                 "arlabVSp3ly/MRqB6fG+8Ku1FYhdKIbM0xd008ofbsO4eOEtDDguXmT4kkj03sH/TCbFILkdhWJU"+
                                 "Vs4uLipVKgkEbW1uEi77vQ26MYHFkYOudzk5UWJihGJpXFycmdiN03o4CQdhY/kR4bzQEM7VK0x/"+
                                 "v1n6BHCwt7e3urEhpFINc3MqlUoqkwF0jbtbl7PzeGQUI+nOaGTUgLsbBRsnkkAJCQlm6Ab9DHz7"+
                                 "e0lsDEDzQoM5390kOzu22ttpqNSd3d3Nra2NzU2NRiORSAC6yt2t2dqa7OtDjYxiJ9+diMEOenqN"+
                                 "Z2aAfU9MTNxPB6Khm9ar0tOEmHBuaDDN70q/62niSXQrAvH8xAmjQrEEjtFgAGbrm5uPzp9vRCB6"+
                                 "XV0HfC/SoqInU+4xY7BDPj7sinIpBOfm5u6n1z6rhdVaZU2NKDR47MrlnlPOXU4nu+yRLRYWkoaG"+
                                 "nZ0djUar1+vBYWq0WphO70Iie1GooSt+7FgsPzWNFRU9dOkS1NnJYLIqKyv30zs6OkboTHVLM8vv"+
                                 "731uZ0kuTkQH+1aLv/AJv4CcmTUYJFLp1va2CuBBtmg0KiajH4Ua9/aZxCWJU9O44RhqQABEm3g7"+
                                 "TGlra9tP5/F43b1905Rh2tXL/W5nSE7oji+Psx7+vLK9rdVqIYViZ3u7yttbRqMpNGrQo9LpdCzm"+
                                 "xMVL0th4SXKqMCKKjsVCYinhyZMPteUjFcu9/6N+xsAIDxv0cO+0Pk7JzzOsrADl4/L5AI33cK9H"+
                                 "INqsrOQc9uz8/NLS0uLysp5BF0RgoPhEaWgYr6KcxRHcv3/fjIqBLqDUDA5PUls75HWu09aq91aU"+
                                 "TK2mc7jbW1vlHh4NCAQJaUs8bvnK1lY9ObmwvLy1s9NTimcHBKkw0dywMOX4+K9tHb+X+/36/qC4"+
                                 "VK/Vjwb4d58+1YxAtP8jRCESlZ05A6Im2tiAk+w+gRw8dmzA1m6ayezOy+v/2kkWEKS4Fsi6lzbJ"+
                                 "nbxzJ/n3Er+fXlNTMzQ+AT199sb9TBvasdnS4omlRZ2lZYeNdaetDQlp12uPJNvbj1pZkb88TrZD"+
                                 "Cs+dl3leYAddnx4fr6urf/z48WF0MJafX6ifnaOFh712O9v29Ulwm5rtbFtsbDptrEl2Nq+RdkOA"+
                                 "7oCiOzqynVy4Li6T37hyiwpgWPFBeM3v+/teEonURerRMBjMwIB+L6+OU6daT6Ba/2rXaWvbjUS+"+
                                 "RiKHUKhRFIrm4AgcCO3tx8PDpsWSMnwZMDys8n0YKyp6wOKKFE0vBaGhlKv+vW7uRCDfaHQf2uEN"+
                                 "Gj2MRo+hHWkoB5611cSlizMUCplMzsvL+/R9cOCbID+/QCxXQqVlUyl3gYKDm0Lx9aF4eo55/I3u"+
                                 "5s447TrpiJ7w9BRV/yQQCFJTU80+PQ6kgzQvKcEr1TpZRZUxr0iTkytOui24FcMLDuUHBMK+vhz/"+
                                 "q/IXDXIYzsrK+vQ1sP+ufuqcSqVWVFTCcrXkF4KuqGSl+uHcA/xsds40LokZE61qbZErFIWFhWCa"+
                                 "2cA/qtpmZwDLosIHEqlcOUqFyytl6RmC5BRxUdG8RCwUirL/mX0I+vN0MGNqaqqkuGSgf4AnEAL9"+
                                 "gpVKMQQ1NTZmZ2cfFPJhGWnWpqen5+GjRyWlpUBGQCWgUCifRR8p9qNQDprzf27FhjeD5EY0AAAA"+
                                 "AElFTkSuQmCC")),0,$$.Length)))))
#endregion
#~~< pictureTick1 >~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
$pictureTick1 = New-Object System.Windows.Forms.PictureBox
$pictureTick1.Location = New-Object System.Drawing.Point(17, 14)
$pictureTick1.Size = New-Object System.Drawing.Size(30, 35)
$pictureTick1.TabIndex = 15
$pictureTick1.TabStop = $false
$pictureTick1.Text = ""
#region pictureTick1.Image = ([System.Drawing.Image](...)
$pictureTick1.Image = ([System.Drawing.Image]([System.Drawing.Image]::FromStream((New-Object System.IO.MemoryStream(($$ = [System.Convert]::FromBase64String(
"iVBORw0KGgoAAAANSUhEUgAAAB4AAAAjCAIAAAAMti2GAAAAAXNSR0IArs4c6QAAAARnQU1BAACx"+
                                 "jwv8YQUAAAAgY0hSTQAAeiYAAICEAAD6AAAAgOgAAHUwAADqYAAAOpgAABdwnLpRPAAAAAlwSFlz"+
                                 "AAAOwQAADsEBuJFr7QAAB85JREFUSEu1lmlYk1cWx1OFIqXskVAQ2WLYSjDs4AhFbBFrtW6jA6Jl"+
                                 "SWAIYGhFIFQChBBIwhYhEJawhcWwB0E0ympAgRAIawhrKBKKnUGdkfnkM3fGPloQgS99n3x533vP"+
                                 "7557cs7/nE8kEgnkT3oA+k96ILvhCoXC/Pz89PR0CoXCZrPB626sdkaXlZXV1dUNDQ1NTEyMjo7y"+
                                 "+fzi/z870rdDj4+Pl5SUSKXS3pGe1D6yb4v3NyVuoTXBPAGvtbUV3AAsbXPA1ujZ2dm8vLyOjo7V"+
                                 "1dXHo91kQXykAOfX5X2iwQ2Zb26TbdXArx8bGysoKNjG/c1ogUBQWlra0NDw6tWrGelM63gLS8ws"+
                                 "kOQkDcdhu9FnuJ72xSiTTLguCRZaETw8Odzb20ulUoGJWCzedIP36K6urpGRkcnJydevX6+9XGsf"+
                                 "a+NO17c94/F+aWVLiqkiMq4n5HzLaecyO0uGOYJi/AVBC5FklMxNEo4Knzx5Av4PDodTUVHx7oDf"+
                                 "0WQy+c2bN1Ork8NSYfZARoaIUj5bDLiPZZ0tUm7JVGHycGIYP/hs82mncnsr5pdmaYfgJEPNKLU9"+
                                 "1yEWSaYn6R6VvIqeQf7du3cxGMxb+u9oIpG4vr5+SxQeIrhGHMXnTtNrFiqbpY318zXAZfpoWkxf"+
                                 "lG+7z4lGdzs2CplnYZaB0CVqu2e6naef08ZpqWFV1cJVXHKcQSJtgX7x4sWNwcAfhzDkMQJzKqts"+
                                 "msWaYmaNZVCGSPinN9EdfmdavnXi2FkWm1swTXSosAvF52YXZleXV2mcVPW/qyn9oGSZYA4SNCAg"+
                                 "YLPXIBnCBnyvCwKIop8zxiipIykEQcyNJ+Eh3UE+j7xO3fU8UuNgyTY3ZyH0s3Qccu2EYuFvst9+"+
                                 "Xf61p79HJ1Bnn9c+wyh9gPb399+MXllZCR/AYPt88YKfCAL8j72hV9u9Ljw4c6rF073R1YFja8E2"+
                                 "MczX186EqZJUqvhVi7OLE5MTkvEpf6L/p5c/Vbz4mWGEASiFLdAymSy8Nyiw91rE0+vhvSFejy4e"+
                                 "a3JxrrO3rUaZsRHaOTBlmrI8SR4SDcFyQp7NPwMOSiYkmaV0RS9FVX+1z72ULWLMANrPz2+z1wCN"+
                                 "bQ8IeHwF14MN7kafbvG0r7U+xDbSYKgr0BT2kuTkiHKQnyF2WfaSWcnC7PyMZKaZ12wQqK+EUdIM"+
                                 "0FS+qmwddxich0ajN6OXl5exPPTVzsuhj4Mwnf5fc49p5mpAkiHgJ0eWA/7ujd+rGKfYKODKFmUg"+
                                 "/QX9wqPRrnJBe6GhUM1ADRV/ZXeqG0AHBQVtQANBWFpaCm/FXm47G9yN8XnoDS+Ce3JOorkYo9vG"+
                                 "kDiIPPF/oQitDX35/CWwnByZDKOHQbAQ9Qg1KA4KDdH8HPOZD9Mb1GRsbOwGNIvFmpubi7l307PF"+
                                 "/W8PLjlWOmJa0Gv/WFt/uT6yMOqY4wiJhBhTjMRS8XPZ82nxdFk9Wx2nvi9GQQOvsT8Suh+nqRis"+
                                 "QG2i9Pf3p6WlbUDX1tYCNcjoSrXnoL6qcT1cZhXzIOafsrUV2cq/1v49JZW457jTHtHWX/xnfn5e"+
                                 "8HTwKMFlz61PVBNUoLHqsBgoNEJDKXxfVVdle3t7dXX1BjSooubm5ociHqoE6VBu9xe2synDhNpK"+
                                 "k84sShcWlhaX5hfmgYSCm02MTN5iEvZEQpRTlNTJqrBEqE6ClhYeCk8w4Av5oGO8axTv5YlAICwt"+
                                 "LzmwbGxKDzuVOJgwTFSSVAi1cROiybFRoKBjQLzGR8a5zU2GeANFirxmqqp2+n69NJ2DybrasdBT"+
                                 "uScAFEA2yxN4B8oLFJXWQjHLhdsV2qByrL6gwhQJCvhy/FDfEAji4ODgQI/gLPl7xSR5WJamHgNm"+
                                 "nKNnkmVkQjM8QNKq7uaAUPxRvt97De4L9E88J7ZlIlF5SOscK0Q6XIsEVY9XTawgDfAFw/0iaiFN"+
                                 "k6B2gKFtmKtrWqiPLERY5ZqYpxq73nYWDglDQ0P/KNkbWgGdTu/u7k5pJiNzTByYNofplnCqkTZp"+
                                 "v16iDrWCxihmWsVa6mXBEEwDiyIjVKmpfTHSjml5KFWvoace+MtgMD6KBgsJCQnSX6Qnio65FTm5"+
                                 "5Dla30aa0owNUw4YJOkaEw/C6Qe/zIMjiw7Zsi2cK1AupTa22eZerEuSack7Ld0i1m8/cbncpqYm"+
                                 "/hD/eJnT95XffF101JGBQmWaW2YikAyEdZ65bZGFQ5mla5XN8TuOx0rsHbNR41MToOKA4Ucb2LsF"+
                                 "EokEcrHgUd53d9x86s6eZrsfZx1xLbR3Ydm6lti5Vdod5zh6Vh/xvHP0aL5ta989Ho8XHx//YWvf"+
                                 "uqODsExNTdHukdH3LmJbr1xrPHe59tsLtR7nGzzON3pc4Hr8tdHzq1L7pHoiyEgcDrflyLA1GkhB"+
                                 "SkoKKJN0HvmnLt9b/OCbnQG4jh/C2n2w7VcwvEsnq1wK2piAGBUV9WEv31CNHx4LpiSgBjMzM3Xd"+
                                 "d8gDN2jCyGRBREIfLoofFNDkXd5WOj09nZiYCLZt6fL7trvlMjADcQdOPR3vud2bSHoYHd10Pab1"+
                                 "xsicCExo0dHR23B3QIPlt3V0//59kUgEhAl4ChQZTJR4PH77qWxn9NvbAOXKzs5OTk4GEgHyrLOz"+
                                 "82NB2K5kdmOzyz07D8G7BH247b8g79R7U4RGvwAAAABJRU5ErkJggg==")),0,$$.Length)))))
#endregion
#~~< lblWarning >~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
$lblWarning = New-Object System.Windows.Forms.Label
$lblWarning.Font = New-Object System.Drawing.Font("Tahoma", 8.25, [System.Drawing.FontStyle]::Bold, [System.Drawing.GraphicsUnit]::Point, ([System.Byte](0)))
$lblWarning.Location = New-Object System.Drawing.Point(62, 216)
$lblWarning.Size = New-Object System.Drawing.Size(349, 46)
$lblWarning.TabIndex = 10
$lblWarning.Text = $TextStrings.NoUpdatesWarning
$lblWarning.ForeColor = [System.Drawing.Color]::Firebrick
#~~< radioNever >~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
$radioNever = New-Object System.Windows.Forms.RadioButton
$radioNever.Location = New-Object System.Drawing.Point(62, 188)
$radioNever.Size = New-Object System.Drawing.Size(298, 25)
$radioNever.TabIndex = 14
$radioNever.TabStop = $true
$radioNever.Text = $TextStrings.NeverConnect
$radioNever.UseVisualStyleBackColor = $true
$radioNever.add_CheckedChanged({RadioNeverCheckedChanged($radioNever)})
#~~< GroupBoxWSUS >~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
$GroupBoxWSUS = New-Object System.Windows.Forms.GroupBox
$GroupBoxWSUS.Enabled = $false
$GroupBoxWSUS.Font = New-Object System.Drawing.Font("Tahoma", 8.25, [System.Drawing.FontStyle]::Bold, [System.Drawing.GraphicsUnit]::Point, ([System.Byte](0)))
$GroupBoxWSUS.Location = New-Object System.Drawing.Point(17, 128)
$GroupBoxWSUS.Size = New-Object System.Drawing.Size(403, 24)
$GroupBoxWSUS.TabIndex = 13
$GroupBoxWSUS.TabStop = $false
$GroupBoxWSUS.Text = $TextStrings.AdvancedOptions
#~~< pboxUpArrow >~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
$pboxUpArrow = New-Object System.Windows.Forms.PictureBox
$pboxUpArrow.BackgroundImageLayout = [System.Windows.Forms.ImageLayout]::Center
$pboxUpArrow.Location = New-Object System.Drawing.Point(184, -2)
$pboxUpArrow.Size = New-Object System.Drawing.Size(17, 20)
$pboxUpArrow.TabIndex = 18
$pboxUpArrow.TabStop = $false
$pboxUpArrow.Text = ""
$pboxUpArrow.Visible = $false
#region pboxUpArrow.BackgroundImage = ([System.Drawing.Image](...)
$pboxUpArrow.BackgroundImage = ([System.Drawing.Image]([System.Drawing.Image]::FromStream((New-Object System.IO.MemoryStream(($$ = [System.Convert]::FromBase64String(
"iVBORw0KGgoAAAANSUhEUgAAAA4AAAAOCAIAAACQKrqGAAAAAXNSR0IArs4c6QAAAARnQU1BAACx"+
                                 "jwv8YQUAAAAgY0hSTQAAeiYAAICEAAD6AAAAgOgAAHUwAADqYAAAOpgAABdwnLpRPAAAAAlwSFlz"+
                                 "AAAOwQAADsEBuJFr7QAAALVJREFUKFN1kTESBCEIBL3MyIf4Fv9rbmyqVYb+wuxudCyWdfeIABuE"+
                                 "4dNaM8ustbVW+mLe+zHGDoHCcs4xxlJK7/27DA5CJPFExghH4mlCG1Qj+McxDwCY4b8aReYo5iQT"+
                                 "leHYwDmHPQ76QrnNjBckjvx268p+IQQ+w0EovW9dMVBKiTLxE4TQh5mNci1kkaKE9KVmryViUXOa"+
                                 "LrjEOk7AxtKPHA82r6UPqwV+OawMR5m06el/3unQ3hoH2NIAAAAASUVORK5CYII=")),0,$$.Length)))))
#endregion
$pboxUpArrow.Cursor = [System.Windows.Forms.Cursors]::Hand
$pboxUpArrow.add_Click({PboxUpArrowClick($pboxUpArrow)})
#~~< pboxDownArrow >~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
$pboxDownArrow = New-Object System.Windows.Forms.PictureBox
$pboxDownArrow.BackgroundImageLayout = [System.Windows.Forms.ImageLayout]::Center
$pboxDownArrow.Location = New-Object System.Drawing.Point(184, -2)
$pboxDownArrow.Size = New-Object System.Drawing.Size(17, 20)
$pboxDownArrow.TabIndex = 18
$pboxDownArrow.TabStop = $false
$pboxDownArrow.Text = ""
#region pboxDownArrow.BackgroundImage = ([System.Drawing.Image](...)
$pboxDownArrow.BackgroundImage = ([System.Drawing.Image]([System.Drawing.Image]::FromStream((New-Object System.IO.MemoryStream(($$ = [System.Convert]::FromBase64String(
"iVBORw0KGgoAAAANSUhEUgAAAA4AAAAOCAIAAACQKrqGAAAAAXNSR0IArs4c6QAAAARnQU1BAACx"+
                                 "jwv8YQUAAAAgY0hSTQAAeiYAAICEAAD6AAAAgOgAAHUwAADqYAAAOpgAABdwnLpRPAAAALFJREFU"+
                                 "KFNlUbkRBCEM4zIiCqEW+iUnJoUZQroguxMrxvi8Cnb8yMJrfcYY7oH3vvfOWBBjXGudFFSg1ppz"+
                                 "bq19FZCiiBY5TnjkzDlRwRdgRdgOJSQkQYagDGfIRuDkXTY0SbS5yaaKZCmFMcWQYpKVS+UrIYSU"+
                                 "EldEgJRC7F7Vk7td2Y0nkHv8qcofQMzwrqo5J1XfB77H0j0Tn2MZC94D1wJjrJhER6yxYgy31NCm"+
                                 "/ABBhdDeaFZB5wAAAABJRU5ErkJggg==")),0,$$.Length)))))
#endregion
$pboxDownArrow.Cursor = [System.Windows.Forms.Cursors]::Hand
$pboxDownArrow.add_Click({PboxDownArrowClick($pboxDownArrow)})
#~~< textboxURLPath >~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
$textboxURLPath = New-Object System.Windows.Forms.TextBox
$textboxURLPath.Font = New-Object System.Drawing.Font("Tahoma", 8.25, [System.Drawing.FontStyle]::Bold, [System.Drawing.GraphicsUnit]::Point, ([System.Byte](0)))
$textboxURLPath.Location = New-Object System.Drawing.Point(17, 50)
$textboxURLPath.Size = New-Object System.Drawing.Size(334, 21)
$textboxURLPath.TabIndex = 0
$textboxURLPath.Text = "http://"
#~~< lblWSUS >~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
$lblWSUS = New-Object System.Windows.Forms.Label
$lblWSUS.Font = New-Object System.Drawing.Font("Microsoft Sans Serif", 8.25, [System.Drawing.FontStyle]::Regular, [System.Drawing.GraphicsUnit]::Point, ([System.Byte](0)))
$lblWSUS.Location = New-Object System.Drawing.Point(17, 27)
$lblWSUS.Size = New-Object System.Drawing.Size(334, 20)
$lblWSUS.TabIndex = 1
$lblWSUS.Text = $TextStrings.WSUSAddress
$GroupBoxWSUS.Controls.Add($pboxUpArrow)
$GroupBoxWSUS.Controls.Add($pboxDownArrow)
$GroupBoxWSUS.Controls.Add($textboxURLPath)
$GroupBoxWSUS.Controls.Add($lblWSUS)
$GroupBoxWSUS.ForeColor = [System.Drawing.Color]::Black
#~~< radioWSUS >~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
$radioWSUS = New-Object System.Windows.Forms.RadioButton
$radioWSUS.Location = New-Object System.Drawing.Point(62, 89)
$radioWSUS.Size = New-Object System.Drawing.Size(358, 22)
$radioWSUS.TabIndex = 12
$radioWSUS.TabStop = $true
$radioWSUS.Text = $TextStrings.InstallWithWSUS
$radioWSUS.UseVisualStyleBackColor = $true
$radioWSUS.add_CheckedChanged({RadioWSUSCheckedChanged($radioWSUS)})
#~~< radioAutomatically >~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
$radioAutomatically = New-Object System.Windows.Forms.RadioButton
$radioAutomatically.Font = New-Object System.Drawing.Font("Tahoma", 8.25, [System.Drawing.FontStyle]::Bold, [System.Drawing.GraphicsUnit]::Point, ([System.Byte](0)))
$radioAutomatically.Location = New-Object System.Drawing.Point(62, 26)
$radioAutomatically.Size = New-Object System.Drawing.Size(358, 23)
$radioAutomatically.TabIndex = 11
$radioAutomatically.TabStop = $true
$radioAutomatically.Text = $TextStrings.AutoInstall
$radioAutomatically.UseVisualStyleBackColor = $true
$radioAutomatically.add_CheckedChanged({RadioAutomaticallyCheckedChanged($radioAutomatically)})
$panelSettings.Controls.Add($pictureTick2)
$panelSettings.Controls.Add($pictureCross1)
$panelSettings.Controls.Add($pictureTick1)
$panelSettings.Controls.Add($lblWarning)
$panelSettings.Controls.Add($radioNever)
$panelSettings.Controls.Add($GroupBoxWSUS)
$panelSettings.Controls.Add($radioWSUS)
$panelSettings.Controls.Add($radioAutomatically)
$SplitContainer1.Panel2.Controls.Add($panelHistory)
$SplitContainer1.Panel2.Controls.Add($panelUpdates)
$SplitContainer1.Panel2.Controls.Add($panelSettings)
#~~< BtnCancel >~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
$BtnCancel = New-Object System.Windows.Forms.Button
$BtnCancel.FlatStyle = [System.Windows.Forms.FlatStyle]::System
$BtnCancel.Location = New-Object System.Drawing.Point(613, 21)
$BtnCancel.Size = New-Object System.Drawing.Size(87, 23)
$BtnCancel.TabIndex = 6
$BtnCancel.Text = $TextStrings.Close
$BtnCancel.UseVisualStyleBackColor = $true
$BtnCancel.add_Click({BtnCancelClick($BtnCancel)})
#~~< lblCoreConfigText >~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
$lblCoreConfigText = New-Object System.Windows.Forms.Label
$lblCoreConfigText.Font = New-Object System.Drawing.Font("Tahoma", 8.25, [System.Drawing.FontStyle]::Regular, [System.Drawing.GraphicsUnit]::Point, ([System.Byte](0)))
$lblCoreConfigText.Location = New-Object System.Drawing.Point(111, 26)
$lblCoreConfigText.Size = New-Object System.Drawing.Size(420, 33)
$lblCoreConfigText.TabIndex = 12
$lblCoreConfigText.Text = $TextStrings.AutoInstallDescription
#~~< BtnOK >~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
$BtnOK = New-Object System.Windows.Forms.Button
$BtnOK.FlatStyle = [System.Windows.Forms.FlatStyle]::System
$BtnOK.Location = New-Object System.Drawing.Point(520, 21)
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
$PictureBox1.Location = New-Object System.Drawing.Point(12, 9)
$PictureBox1.Size = New-Object System.Drawing.Size(59, 56)
$PictureBox1.TabIndex = 15
$PictureBox1.TabStop = $false
$PictureBox1.Text = ""
#region PictureBox1.Image = ([System.Drawing.Image](...)
$PictureBox1.Image = ([System.Drawing.Image]([System.Drawing.Image]::FromStream((New-Object System.IO.MemoryStream(($$ = [System.Convert]::FromBase64String(
"iVBORw0KGgoAAAANSUhEUgAAADsAAAA4CAIAAADM0xdKAAAAAXNSR0IArs4c6QAAAARnQU1BAACx"+
                                 "jwv8YQUAAAAgY0hSTQAAeiYAAICEAAD6AAAAgOgAAHUwAADqYAAAOpgAABdwnLpRPAAAAAlwSFlz"+
                                 "AAAOwQAADsEBuJFr7QAAEZZJREFUaEPtmnlwU/edwNXJbmc7+8cek27TJg2UcCQQAiEJEEKADRCy"+
                                 "hDYkKU3o5CAlBwkQHCAOGDABH/i+LVm2ZNmWJUuWLMuXfFu3rNO6ZV22ZB2WZEuydV/vPe8zJDTT"+
                                 "zTZGQ3bamf3NG43s0e/p8/vo+77f7+9JP1laWkLcHiAI3nnyNzseeOCBZTaY+M4A/ubHHc7/J/6R"+
                                 "P6i/M8ewjXSI44kke3qWKDdJbB6lwzNhc/lC4VQq9SPL/eb06RDzJs1Zfdy36tuON5DexnYca+g4"+
                                 "Q+ou7WG2c2VsrUlgtChmnJF4IhpPxBIJeCX3dzHpEBd3sm8NCd/F9xxA4g9U4g/UEvbUEg42tL3e"+
                                 "3HG6ffA0Zeg8faR8aLyFK+uR6nj6aZ3D4w6EA9FYOBaPJ+GxvIS0P5J0iKuoDNaUS+yP1st0+SPi"+
                                 "z6mDHxC7TxJ7T2A73kS3Hka1HMPR3mru+j2RcZw09Kduztl+fg5T1ijVCacdaofHtRh0BULeQChx"+
                                 "h/0eRzrE5RQGXaKeiYLTkdR0NDkZSehDCUMkLvB48QpdwfB4Vhczgzp4vIX+ZlPfUXzPcRLjGGXo"+
                                 "KGX4bRrrk0FhldxA1Jh7lHq7LxCNx+8ROK0rDybmqvXaUFwaiCoDsYlATBaED/jPGHyoQ3FNKG6I"+
                                 "JHvc3rZJa6fOUsJVXBoUnunjfkwfzujjnh/kZ3Kl7R7f2MysdsZ9r5rTcVzc1juqmTLFkopQ3BpM"+
                                 "GYMxdTAsD0TvEEsCMXEgCj/KAjF5MDYZjlkjCV8cmPQEcHJz3rg8Z1yF0Zl6rA7jEmhdWpKabPek"+
                                 "OR3igtZulm7aGAMUwYQ+kNQtxjTeoCYYUwUTmmBSF05qgvGJQES2EJEuRMT+iHghIlmIGMOJOAiZ"+
                                 "/eF+h5vjcSv9ft6sa2BxbmjBa3PNAIkgkIIj5IfDOh3iInLvkEo/E16yhiBjIKZbjKsXwnL/omQ+"+
                                 "LHIHBJ4FvnuB615gexeFi8uyYeWwb4k/JJpfNM8tRJJJU8g94DSTTRKcarTBPDIibU9Nt4HzQiDs"+
                                 "AJKxv648HeJCYl+3RG1cjFkCKd1CUO4Lyr3wEVK6F9QG7aScpzQbRbNeGJo3H+L5wlxfiD8fEPpD"+
                                 "Yn+IaXfxjRb1vLPNqqlWseqkfTWsJqoMu9j1CsDYDUnPgV4BEPP9FdnpEOfh6USeTOcLmcJJlT8E"+
                                 "s07MhzRjFFvJ+7OX99lLT2hplQomXcphsGwO5qyH63Lz3G6uxz/m9jPd/i79TL/WynHaClWCG2L2"+
                                 "LU5XwSBS1/FxouGRFO4hqGM9aEYDYTuQSnyv7HSIb+I7MEM8pScwGU3K/WHJXEg6F5z+8rD7/XWu"+
                                 "99a431vt+WCt++QGfevVHt0QUUnlTJvGzFMD045ui6vdPEWacmKlRo7B2mU3nhQIznH57/d3dgyV"+
                                 "QtQnkvU/T2J+CZEeBVW3gIjre02nRdxCrWGwJK6gKhST+uDoDKgF/fZPnps7sXru5Kr5T9f4zv4m"+
                                 "dPYRGRtXIs77jHYgg/7G5cEPM/r+uB/91BHCvjbzbPWEqVms18273+arjg1P7OsVfsWWpKaaocG9"+
                                 "YPMvU9hfQYRVoGsESEb/p+Z0iAsI3dUMlnB2Ec5oMK5wPmBszXVkHZr7ZLX33Bp/5mP+K+viZ34t"+
                                 "tVtOit77avD1T7oPHyO+eACzbTdy8yuoV1uNzlrlVK3IOKw1XVVad9DGd1BFZ0fV4ZAf9Imh4f0A"+
                                 "7j+Aup9BymtAbP5b4j/nkHSIi9t7S7qZotmFCX9E4FmEM4O58pQ+91j89L/GLz4Yvv5YoHBz+Osd"+
                                 "4w7LedmpK9x3zw0de4d26HDz8zvLNl1n1jdMOsoV5nKRoZojbTW6Hm8a20XgftorXIZLRsAZIkT8"+
                                 "FVDzE4h7HAjNfEP8HdlpEZN7C7tGBC6/2Bvmubxcl483QOon42RSlkwlsIwUAcX/YB0tITtGi1QZ"+
                                 "uaKPvmK/83Hfa68T9xzE7MJoVFUqa/HEVLFwspQt6zDNrq3r29sy/BmNexsuBbqHINKvgRoExH0b"+
                                 "CFm/If6z7HSqdKqM0nezo5/nnBe75/kOF8/pRQvMWaOmI73mo2wb0uQeN82MOn0ZTiRaf7Fk4tNs"+
                                 "3ntnBt44Sjp4avQKWmcvkk/lS015AhWSr6YZXOuqO/fhhs5QmMtwiRBoqgNbHgJRP4UzHRD1fEN8"+
                                 "V/a9d/RwPKUqOxjXCF0Ci1lkM3HsnktMx5oC+a5K1l6ceG+X/jnuLEIWHXb6BG5Orpl2WpH3Af/i"+
                                 "u2OXLo5lNOqNxQrLDZkpR2K4LtDW8rXUSfu68va92P4L5JHlzBCcgjhvgOh/hHAPgvYOIBH+lvhb"+
                                 "2fdIvIwL11IUrSOf0CiZ5PDsNpbD83uUcGfO4DPlgmexip0dhj1jM7+dCBqc1z0zG7lO86jTP2L3"+
                                 "jFnGBYLPkFrb1xLTNbExTzZ1la+t4qnIauu6IuK+hu7CPi4QXwCnsBDxF2DlAxDnLSBgAFLJb4jv"+
                                 "yr5nYrj0R5wMWl59S67AqGBb7RyH+/HTvU9mMzcXi7ai5DuJunXdsxTLvN2yP6hHeOUIzzjCOYKw"+
                                 "diGM1J9XqWeuiA2XhPobQtMVvrZOpO5UWdffajqApjUwReA8H+reAtUilshrQffIcqdxt824K/te"+
                                 "iGG7SSAyCxpQFuJBJKGSb1SOWi1NStvqE73rLow9cVPwVIV0e8PEz7BB5qzfq0YE5Ai/COHjIeaG"+
                                 "Ec4OBEd885Z8KlM4eYGv+5KvvczX4BX6Ls3U2jzMITSFwhVCrKNQwz9BjQ+C0zggOndb8LdJ7a7s"+
                                 "FRPfjoeYD7QQgI6dzu6TVS3lTJ1wwObaeZ3z8B+6Vn008HgW+4lcwdZy8b9Uhjk2vUuI8AsQ82yE"+
                                 "ZwjhoiNsBAReI7ssnPyCp/mcozrLUWWyVWTNVNuEcUMO8lUkic2jQ5ifQk3/BmpufVuiv9vHpZGP"+
                                 "E0FwlgHSn0l2/26e9lZ9S06vcZJunTtB0bYZ3d3WOZrFAz8ebzVcGbWrJccdgwjPIMLdt2zX1oqY"+
                                 "avnnCuX0Ba6qUKavUZozmBOZLCVFa8UI1U/nlJ1D5dgYp6CWf4cmsoDg9O2O4i/aznslTsXBBSU0"+
                                 "8FKqfUeq679czVsrOsnkSQvZ7CGbXXiDA6Oz12kcKI2tXmfDG2Z1o+tdNISjHWEnImaaEdYGBH/g"+
                                 "5a+F2vMsKXJCSVSrs8Y4l9kTAyY7emQ4p/yYvf7hKH41qCtZTsA/1CWvpIKk4KYEkl8CCeuStH1g"+
                                 "53ZOx5mCnuFmjRWuWDi9A6ZEamzwVVUGlwbFdKncAv9nSFo60b9b1rdLzNjbKSjMF2uyOZw6QR9f"+
                                 "zxTpR5o4hDzmoNA6TeouV5evMmE2TPGKl5vj78Tr/9Ylr4AYFjzPgyhrUi1rgZZHofGTzV0tN7uZ"+
                                 "dXILzuBC62w1aluleqZUOV0gn8qVmr6WGLMlhpsSQ77UmC/V3xRprnOFpdz+XilVYxzweBQeJ18p"+
                                 "QzUMwVMny8jIr8o/zG4u1Op1K9mArOyeUMwLKbOBll+mCGuhzo2ga7CC2nWZOlwlNdYbnNWamXLl"+
                                 "NKw2f8IMU2aLJrPGdZl8zXmO8hx74gJLkMMe6pJ2KqbGZ9ym+UVXJOoPh2fnLd0j3NJZh+wsFvti"+
                                 "btGHjW0Gy+wKd3srcBw0QaOvAM0PAy0PQZLTQNhW0t73BYlRLJ5EGRyliukimSlPavxarL86rr0k"+
                                 "UF/kKTPY8gym+CaXT1IKpSberFPu80wGFh2RWCCZiifiwYhfbVVU+K39p9CoXXllp/AdRut9I06B"+
                                 "XiFE35hqWweS14DGWiARuEVmnCYxcse1VdqZW1Jjjkh/fXzyikCdyVNe4MgzWNILY/wc1jBGzJQY"+
                                 "+D5zb8TJj4ac8WQ0BaYAEARSUSDmXbQPheyDF7A1+/JKzrR0TDvm7pNjOIidDHgnA5A3QrRNcBWF"+
                                 "m5WCtp5PCL15Il2R3ARngKt8dRZP9SVnAmbNGBNmjrIKWAw8r0sxjgzKiiNWRiwyB++SkzArCEBg"+
                                 "AkwsJoIWv20g7JGU0ClHiqs+a6J4F+AKt6LxQ1GRSoBuFkR9DKRvh8hrIdk5OAGVkOgfNHde4ypy"+
                                 "JPosnuIyR5rJFmaOsK4N9ZUNExpHGoeZFYuy4ritLx5xxYFECoin4gtA0AZFXVBiIRYwes1tLAHS"+
                                 "ZVe9WV51qLD6dBMFvl+6It4V1byAHurfA9KfBenPLXU+AamzRxjln+NQX/X3l45zikZptYN1xJ4r"+
                                 "A/SPxPR3RUOXpgT5cQs1FTIBqQCQ8IHBadDNh6w0YKYLCBhji0aXFtkzVphDqzXaZ57OKjhUVHu2"+
                                 "mbpC3BXmCh+oKYDa10CjRyDGi0ukR8Ok1caWx3XkF6apL1jbn5/r3Bcc/kNUdDExWQbYyaCXCwbV"+
                                 "0KIcmuNAFjKkqUhN5EU1tT5Tm98+aNS1VXTd+BBf/jGxVWeb25R56+WCmvP3mRiumQsaaOy3EGXt"+
                                 "EvONJc5bEPMoxHwNYr0J8d+FJjKgyVzIWgs5miEHEXKSoBk8ZEJDmiJAlh0XZy3Kbk5LckjD+fXD"+
                                 "tT3ygTxG4+HGygMYzMk2qsbi3nDhxqGC2kxS7311fGf75ZNAY69BhIeWercvCf64pMhY0l1dMuQu"+
                                 "mfKXDPlLuhtLqqwlacYS/yOAczLO+mCR/eEU61QnI/NKe+6J1pLfN1d/1klEjbOPNGF21GP2ous/"+
                                 "JFFlJudj57MPFdflM3j3m/g2NLCoBVU3IPqTSeIvwq2PxCkbkp1PJTq3JGhPxTq2hGnbFrtemGO8"+
                                 "ou06TO/801XS9XfwFUeaG/4T1/gCBvdiA+ZlHHZfQ8OzqPptSPQeFPpjMmVcN/ObL7JfraivHhX/"+
                                 "CMTLu8bEctu6oNZJ8W3YPw4TjnDaD7HaDg60HSGS3ymnnL9EvnG6rfB9QuXRloaDTc17G/G7MC07"+
                                 "MU076hufRzfsxaCfQaI219RuqandjUR9Sqay5ebVGddeq2ysHb6zLYVv3P84dwoNlpl8bPP5ZswJ"+
                                 "SvN77bj3SPg/kImvEdoO4cn7m0n7moh7G1t3Y1t2YXA76rHP1WGeRaK3o1A7UKgt1TWbKqueqqzc"+
                                 "XVN9lkIdkupXnbv6Zk1LWcdyHMfj8Wg0Cn/p8Nd9/1A+/r7ZVoeznEj/jNi1v4n0QgNuLxa/H0c8"+
                                 "iCO8hCPswxH2NLbsasDtQGO3o+EYQG+rRW2trt1WU7u1unpTZfkT5WVPlpe8WFPxBZXSI1StPnf1"+
                                 "GLK1GE+Ccb1er9/vh5/cf+JoLKY2mrGj3IuMsffpjINY/NbK2qerkc83YGDc3fWNO1D1zyLrttXW"+
                                 "PV2D3FJdvbmycktlxeaKso3lJevLSjbBxNWlF9vJFKZs1efZxzEEFJkK41oslvn5+UTi+28Q3l1G"+
                                 "Oo7vTJ7z+rT2WZbeXDrCPkGjvUog7kLVb69G7qytewGOASTq6eUYqNhYWb4JZi0r2VhS8nhx0Ybi"+
                                 "gk1lhXuqSi60k/DDolWfXzmBbSd0MWBcvV4PR8UPXoLpE989tc3lkRlN7SLZpd6ht0ntr+PbXsbi"+
                                 "nq+p2VpWsnzcxl1bUrC+OH9DYf76wryNJXl7q4oyqRQsg/fo2WsnGqlNFDqM63a7fxB3ZTVvJacB"+
                                 "gEAwqNAamAotjic6R+t6owX/Cha7H416vqJ0c1H+E6X5jxfnrS/IWZP/9YbCmzDxlyRSWcfw6vPZ"+
                                 "X1AGq5D1K8S9n8R31+VbWFTop4YVk2iu4Cyd9rvGusP1yJeRVdtKbq7LvfrYzaub8q+9VHnrIoFw"+
                                 "ndD/TG5V4yBbqVStTMvyq+5DVNxNpX+RTe2zLpZI3itVYoWij8lte2pK9tQW7akuerLw6rMFWWea"+
                                 "seUMyTkCXSqWrRz3fhJ/912/iw7nV7XO0McVUqVKtGD8Ewppe3HOloJrX9Lpw3IrdWjsnnB/LOI7"+
                                 "1esvlAeDIYFY1jHIIXAkJWOsOr6AJ72HYLgP2e1e3dx5Pfxd9JzPJ5Irmbzx9M5w3+I4vbdPY9bf"+
                                 "OfGdXzrdHWkI+D+YAuP9N2D7tuEQcYXcAAAAAElFTkSuQmCC")),0,$$.Length)))))
#endregion
$frmUpdates.Controls.Add($SplitContainer1)
$frmUpdates.Controls.Add($BtnCancel)
$frmUpdates.Controls.Add($lblCoreConfigText)
$frmUpdates.Controls.Add($BtnOK)
$frmUpdates.Controls.Add($lblCoreConfigTitle)
$frmUpdates.Controls.Add($PictureBox1)

#endregion

#region Functions

function Main
{
	[System.Windows.Forms.Application]::EnableVisualStyles()
	formload
	$frmupdates.ShowDialog()
}

function formload
{
	$SplitContainer1.Size = New-Object System.Drawing.Size(615, 304)
	$SplitContainer1.SplitterDistance = 150
	$frmupdates.size = New-Object System.Drawing.Size(590, 445)
	$BtnCancel.Location = New-Object System.Drawing.Point(480, 388)
	$BtnOK.Location = New-Object System.Drawing.Point(370, 388)
	
	$panelUpdates.Dock = [System.Windows.Forms.DockStyle]::Fill
	$panelsettings.Dock = [System.Windows.Forms.DockStyle]::Fill
	$panelhistory.Dock = [System.Windows.Forms.DockStyle]::Fill
			
	LblUpdatesettingsClick
			
	RebootRequired
		
	updatestatus
}

function RebootRequired
{
	$objSession = New-Object -com "Microsoft.Update.SystemInfo"
		
	if ($objsession.RebootRequired -eq "True")
	{	
		$lblRestart.visible = $True
		$lblRestart.enabled = $False
		$txtboxlistupdates.enabled = $False
		$btnDownload.enabled = $False
		$btnInstall.enabled = $False
	}
}
	


function PboxDownArrowClick($object)
{
	$GroupBoxWSUS.size = New-Object System.Drawing.Size(400, 90)
	$radioNever.location = New-Object System.Drawing.Size(67, 237)
	$pictureCross1.location = New-Object System.Drawing.Size(31, 227)
	$lblWarning.location = New-Object System.Drawing.Size(72, 265)
	$pboxUpArrow.visible = $true
	$pboxDownArrow.visible = $false
}

function PboxUpArrowClick($object)
{
	$GroupBoxWSUS.size = New-Object System.Drawing.Size(403, 24)
	$radioNever.location = New-Object System.Drawing.Size(62, 188)
	$pictureCross1.location = New-Object System.Drawing.Size(17, 178)
	$lblWarning.location = New-Object System.Drawing.Size(62, 216)
	$pboxUpArrow.visible = $False
	$pboxDownArrow.visible = $True
}

function Updatestatus
{
	$RootKey = "HKLM:\SOFTWARE\Microsoft\Core Configurator"
	New-Item -path $RootKey -ErrorAction SilentlyContinue
	New-ItemProperty -path $RootKey -name "Update Status" -propertytype DWord -value "0" -ErrorAction SilentlyContinue
	
	$Status = (Get-Item "HKLM:\SOFTWARE\Microsoft\Core Configurator").GetValue("Update Status")
		
	if ($Status -eq 0)
	{
		$path = "HKLM:\SOFTWARE\Microsoft\Core Configurator"
		$value = " 4 "
		New-ItemProperty -path $path -name "Update Status" -propertytype DWord -value $value -force
				
		$a = New-Object -comobject wscript.shell
		$b = $a.Run("Cscript %windir%\system32\SCregEdit.wsf /AU 4")
				
		$RadioAutomatically.Checked = $true
						
		#Output to Logfile
		$LogDefaultToAuto -f (Get-Date -F G) | Out-File -FilePath $Logfile -append 
	}
	if ($Status -eq 2)
	{
		$WSUS = (Get-Item "HKLM:\SOFTWARE\Policies\Microsoft\Windows\WindowsUpdate").GetValue("WUServer")
		$GroupBoxWSUS.Enabled = $True
		$RadioWSUS.Checked = $true
		$textboxURLPath.Text = $WSUS		
	}
	if ($Status -eq 4)
	{
		$RadioAutomatically.Checked = $true
	}
	if ($Status -eq 1)
	{
		$RadioNever.Checked = $true
	}
}

function RadioWSUSCheckedChanged($object)
{
	$GroupBoxWSUS.Enabled = $True
}

function RadioAutomaticallyCheckedChanged($object)
{
	$GroupBoxWSUS.Enabled = $False
}

function RadioNeverCheckedChanged($object)
{
	$GroupBoxWSUS.Enabled = $False
}

function BtnOKClick($object)
{
	$ErrorActionPreference = "SilentlyContinue"
	if ($RadioAutomatically.Checked -eq $True)
	{
										
		$path = "HKLM:\SOFTWARE\Microsoft\Core Configurator"
		$value = " 4 "
		New-ItemProperty -path $path -name "Update Status" -propertytype DWord -value $value -force
				
		Remove-Item HKLM:\SOFTWARE\Policies\Microsoft\Windows\WindowsUpdate -force -recurse
		
				
		$a = New-Object -comobject wscript.shell
		$b = $a.Run("Cscript %windir%\system32\SCregEdit.wsf /AU 4")
				
		#Output to Logfile
		$TextStrings.LogCommandExecuted -f (Get-Date -F G), "Cscript %windir%\system32\SCregEdit.wsf /AU 4" | Out-File -FilePath $Logfile -append
		$TextStrings.LogCommandExecuted -f (Get-Date -F G), ("New-ItemProperty  -path " + $path + " -name Update Status -value " + $value + " -force") | Out-File -FilePath $Logfile -append 
										
		updatestatus
	}
	if ($RadioWSUS.Checked -eq $True)
	{
						
		$path = "HKLM:\SOFTWARE\Policies\Microsoft\Windows"
		New-Item -path $path -name "WindowsUpdate"
		#Output to Logfile
		$TextStrings.LogCommandExecuted -f (Get-Date -F G), ("New-Item -path " + $path + " -name WindowsUpdate") | Out-File -FilePath $Logfile -append

		$path = "HKLM:\SOFTWARE\Policies\Microsoft\Windows\WindowsUpdate"
		New-Item -path $path -name "AU"
		#Output to Logfile
		$TextStrings.LogCommandExecuted -f (Get-Date -F G), ("New-Item -path " + $path + " -name AU") | Out-File -FilePath $Logfile -append

		$path = "HKLM:\SOFTWARE\Policies\Microsoft\Windows\WindowsUpdate\AU"
		$value = " 0 "
		New-ItemProperty -path $path -name "NoAutoUpdate" -value $value -force
		#Output to Logfile
		$TextStrings.LogCommandExecuted -f (Get-Date -F G), ("New-ItemProperty  -path " + $path + " -name NoAutoUpdate -value " + $value + " -force") | Out-File -FilePath $Logfile -append

		$path = "HKLM:\SOFTWARE\Policies\Microsoft\Windows\WindowsUpdate\AU"
		$value = " 1 "
		New-ItemProperty -path $path -name "UseWUServer" -value $value -force
		#Output to Logfile
		$TextStrings.LogCommandExecuted -f (Get-Date -F G), ("New-ItemProperty  -path " + $path + " -name UseWUServer -value " + $value + " -force") | Out-File -FilePath $Logfile -append

		$path = "HKLM:\SOFTWARE\Policies\Microsoft\Windows\WindowsUpdate\AU"
		$value = " 1 "
		New-ItemProperty -path $path -name "NoAutoRebootWithLoggedOnUsers" -propertytype DWord -value $value
		#Output to Logfile
		$TextStrings.LogCommandExecuted -f (Get-Date -F G), ("New-ItemProperty  -path " + $path + " -name NoAutoRebootWithLoggedOnUsers -value " + $value + " -force") | Out-File -FilePath $Logfile -append

		$path = "HKLM:\SOFTWARE\Policies\Microsoft\Windows\WindowsUpdate"
		$value = $textboxURLPath.text
		New-ItemProperty -path $path -name "WUServer" -value $value -force
		#Output to Logfile
		$TextStrings.LogCommandExecuted -f (Get-Date -F G), ("New-ItemProperty  -path " + $path + " -name WUServer -value " + $value + " -force") | Out-File -FilePath $Logfile -append

		$path = "HKLM:\SOFTWARE\Policies\Microsoft\Windows\WindowsUpdate"
		$value = $textboxURLPath.text
		New-ItemProperty -path $path -name "WUStatusServer" -value $value -force
		#Output to Logfile
		$TextStrings.LogCommandExecuted -f (Get-Date -F G), ("New-ItemProperty  -path " + $path + " -name WUStatusServer -value " + $value + " -force") | Out-File -FilePath $Logfile -append

		$path = "HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\WindowsUpdate\Auto Update"
		$value = " 2 "
		Set-ItemProperty -path $path -name "AUState" -value $value -force
		#Output to Logfile
		(Get-Date -F G) + " Command Executed: New-ItemProperty  -path " + $path + " -name AUState -value " + $value + " -force" | Out-File -FilePath $Logfile -append
										
		$path = "HKLM:\SOFTWARE\Microsoft\Core Configurator"
		$value = " 2 "
		New-ItemProperty -path $path -name "Update Status" -propertytype DWord -value $value -force
		#Output to Logfile
		(Get-Date -F G) + " Command Executed: New-ItemProperty  -path " + $path + " -name Update Status -value " + $value + " -force" | Out-File -FilePath $Logfile -append
								
		updatestatus
	}
	if ($RadioNever.Checked -eq $True)
	{
		$a = New-Object -comobject wscript.shell
		$b = $a.Run("Cscript %windir%\system32\SCregEdit.wsf /AU 1")
										
		$path = "HKLM:\SOFTWARE\Microsoft\Core Configurator"
		$value = " 1 "
		New-ItemProperty -path $path -name "Update Status" -propertytype DWord -value $value -force
										
		Remove-Item HKLM:\SOFTWARE\Policies\Microsoft\Windows\WindowsUpdate-force -recurse
				
		#Output to Logfile
		$TextStrings.LogCommandExecuted -f (Get-Date -F G), ("New-ItemProperty  -path " + $path + " -name Update Status -value " + $value + " -force") | Out-File -FilePath $Logfile -append
		$TextStrings.LogCommandExecuted -f (Get-Date -F G), ("Remove-Item HKLM:\SOFTWARE\Policies\Microsoft\Windows\WindowsUpdate-force -recurse") | Out-File -FilePath $Logfile -append

		updatestatus
	}
}

function BtnCancelClick($object)
{
	$frmUpdates.Hide()
	$formControl.enabled = $True
}

function DownloadUpdates($object)
{
	$txtboxListUpdates.Items.Clear()
		
	$frmUpdates.Cursor = [System.Windows.Forms.Cursors]::WaitCursor

	$objSession = New-Object -com "Microsoft.Update.Session"
		
	$objSearcher = $objSession.CreateUpdateSearcher()
		
	$objResult = $objSearcher.search("IsInstalled=0")
	
	$results = $objResult.updates.count
	if($results -eq "0")
	{
         $Flag = $TextStrings.Information
         $Message = $TextStrings.NoUpdates
         . $ScriptDirectory\Common.ps1
         Message
         $btnok.Visible = $false
         $btnClose.text = $TextStrings.OK
         $pboxInfo.visible = $true
         $frmMessage.ShowDialog()

	}

	for ($i = 0; $i -lt $Results; $i++)
	{
		$update = $objResult.Updates.Item($i)
		$txtboxListUpdates.items.Add($update.title)
	}
	$frmUpdates.Cursor = [System.Windows.Forms.Cursors]::Default
}

function DownloadandInstall($object)
{

	$Global:Reboot = $False
	$frmUpdates.Cursor = [System.Windows.Forms.Cursors]::WaitCursor

	foreach ($update in $txtboxlistupdates.CheckedItems)
	{
		$objSession = New-Object -com "Microsoft.Update.Session"	
		$objSearcher = $objSession.CreateUpdateSearcher()
		$objResult = $objSearcher.search("IsInstalled=0")
		$results = $objResult.updates.count
		$updatesToDownload = New-Object -com "Microsoft.Update.UpdateColl"
		for ($i = 0; $i -lt $results; $i++)
		{
			$updates = $objResult.Updates.Item($i)
			if (($updates.title.ToUpper()) -eq ($update.ToUpper()))
			{
				$updates = $objResult.Updates.Item($i)
				$updatesToDownload.Add($updates) | Out-Null
				$downloader = $objSession.CreateUpdateDownloader()
				$downloader.Updates = $updatesToDownload
				$downloader.Download() | Out-Null
				$TextStrings.LogCommandExecuted -f (Get-Date -F G), ($updates.title + " downloaded.") | Out-File -FilePath $Logfile -append
				$updatesToDownload.Add($updates) | Out-Null
				$installer = $objSession.CreateUpdateInstaller()
				$installer.Updates = $updatesToDownload
				$installationResult = $installer.Install()
				
				if ($installationResult.RebootRequired -eq "True")
				{
					$Reboot = $True
				}			
			}
		}
	}
	if ($Reboot -eq "True")
	{
		 #Confirmation Dialog
		 $Flag = $TextStrings.Warning
		 $Message = $TextStrings.RebootConfirmation
		 . $ScriptDirectory\Common.ps1
		 Message
		 $btnok.text = $TextStrings.RestartNow
		 $btnClose.text = $TextStrings.RestartLater
		 $pboxWarning.visible = $true
		 $frmMessage.ShowDialog()

		 if ($ReturnFlag -eq "YES")
		 {
			$Temp = "Restart-computer -force"
			iex $Temp				
		}
	}			

	$txtboxlistupdates.enabled = $false
	$txtboxlistupdates.Items.Clear()
	$frmUpdates.Cursor = [System.Windows.Forms.Cursors]::Default

	RebootRequired
}
	

function LblUpdatesettingsClick( $object )
{
	$lblUpdatesettings.Font = New-Object System.Drawing.Font("Tahoma", 8.25, [System.Drawing.FontStyle]::Bold, [System.Drawing.GraphicsUnit]::Point, ([System.Byte] ( 0 ) ))
	$lblCheckupdates.Font = New-Object System.Drawing.Font("Tahoma", 8.25, [System.Drawing.FontStyle]::Regular, [System.Drawing.GraphicsUnit]::Point, ([System.Byte] ( 0 ) ))
	$lblUpdateHistory.Font = New-Object System.Drawing.Font("Tahoma", 8.25, [System.Drawing.FontStyle]::Regular, [System.Drawing.GraphicsUnit]::Point, ([System.Byte] ( 0 ) ))

	$Panelsettings.visible = $true
	$Panelupdates.visible = $false
	$Panelhistory.visible = $false

}


function LblUpdatehistoryClick( $object )
{
	$lblUpdatesettings.Font = New-Object System.Drawing.Font("Tahoma", 8.25, [System.Drawing.FontStyle]::Regular, [System.Drawing.GraphicsUnit]::Point, ([System.Byte] ( 0 ) ))
	$lblCheckupdates.Font = New-Object System.Drawing.Font("Tahoma", 8.25, [System.Drawing.FontStyle]::Regular, [System.Drawing.GraphicsUnit]::Point, ([System.Byte] ( 0 ) ))
	$lblUpdateHistory.Font = New-Object System.Drawing.Font("Tahoma", 8.25, [System.Drawing.FontStyle]::Bold, [System.Drawing.GraphicsUnit]::Point, ([System.Byte] ( 0 ) ))

	$Panelhistory.visible = $True
	$Panelsettings.visible = $False
	$Panelupdates.visible = $false
		
	$listboxHistory.Items.Clear()
	
	$n = 100
		
	$objSession = New-Object -com "Microsoft.Update.Session"
		
	$objSearcher = $objSession.CreateUpdateSearcher()
		
	$colHistory = $objSearcher.QueryHistory(1, $n)
		
	foreach ($objEntry in $colHistory)
	{
	$listboxHistory.items.Add($objEntry.title)
	}
}

function LblCheckupdatesClick( $object )
{
	$lblUpdatesettings.Font = New-Object System.Drawing.Font("Tahoma", 8.25, [System.Drawing.FontStyle]::Regular, [System.Drawing.GraphicsUnit]::Point, ([System.Byte] ( 0 ) ))
	$lblCheckupdates.Font = New-Object System.Drawing.Font("Tahoma", 8.25, [System.Drawing.FontStyle]::Bold, [System.Drawing.GraphicsUnit]::Point, ([System.Byte] ( 0 ) ))
	$lblUpdateHistory.Font = New-Object System.Drawing.Font("Tahoma", 8.25, [System.Drawing.FontStyle]::Regular, [System.Drawing.GraphicsUnit]::Point, ([System.Byte] ( 0 ) ))
	
	$panelUpdates.visible = $true
	$Panelsettings.visible = $False
	$Panelhistory.visible = $false
}

if(!(Test-Path variable:\ScriptDirectory))
{ ScriptDirectory = Split-Path $MyInvocation.MyCommand.Path }

Main

#endregion
