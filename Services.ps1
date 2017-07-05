Import-LocalizedData -BindingVariable TextStrings -FileName Services.psd1
#region Constructor

[void][System.Reflection.Assembly]::LoadWithPartialName("System.Windows.Forms")
[void][System.Reflection.Assembly]::LoadWithPartialName("System.Drawing")

#endregion

#region Form Creation
#~~< frmServices >~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
$frmServices = New-Object System.Windows.Forms.Form
$frmServices.ClientSize = New-Object System.Drawing.Size(525, 443)
$frmServices.ControlBox = $false
$frmServices.Font = New-Object System.Drawing.Font("Tahoma", 8.25, [System.Drawing.FontStyle]::Regular, [System.Drawing.GraphicsUnit]::Point, ([System.Byte](0)))
$frmServices.FormBorderStyle = [System.Windows.Forms.FormBorderStyle]::FixedSingle
$frmServices.ShowIcon = $false
$frmServices.StartPosition = [System.Windows.Forms.FormStartPosition]::CenterScreen
$frmServices.Text = $TextStrings.WindowTitle
$frmServices.BackColor = [System.Drawing.Color]::White
#~~< PictureBox1 >~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
$PictureBox1 = New-Object System.Windows.Forms.PictureBox
$PictureBox1.Location = New-Object System.Drawing.Point(4, 4)
$PictureBox1.Size = New-Object System.Drawing.Size(44, 44)
$PictureBox1.TabIndex = 6
$PictureBox1.TabStop = $false
$PictureBox1.Text = ""
#region$PictureBox1.Image = ([System.Drawing.Image](...)
$PictureBox1.Image = ([System.Drawing.Image]([System.Drawing.Image]::FromStream((New-Object System.IO.MemoryStream(($$ = [System.Convert]::FromBase64String(
"iVBORw0KGgoAAAANSUhEUgAAACgAAAAoCAYAAACM/rhtAAAAAXNSR0IArs4c6QAAAARnQU1BAACx"+
                                 "jwv8YQUAAAAgY0hSTQAAeiYAAICEAAD6AAAAgOgAAHUwAADqYAAAOpgAABdwnLpRPAAADNlJREFU"+
                                 "WEe9mAlQlGeax9OMm5mamOzGI8ZKzda4m8nuZGtSZmOMJtlo4hUSVAiDo2Y8UUIgJBAVr3iLgjeC"+
                                 "IigiIIjc0DR90HTT9H1zdNPd0DTQ3PfVgNDd33/fxmA5zkbAZOereqq7qr/veX/v8/zf//t+TXvu"+
                                 "GS5rWzet32bbYaqpfdPNjeacM2sW7/De7zhCQQmeId3Pe8TS2OqmrKiafepsBM2VyVhTSxNr9Qs5"+
                                 "yhoUKc0oVteDJ9V0rffynj0xUl1rt5tEo3vx5408had7B4de7+odzBRrqmwMNncriytwy8ylu3EV"+
                                 "FbuZ8lrwNFaUlDejRGVwngo/v9SV0tDQ5tbQ3X9ZZ+3uLTPVnc0pYL80haGmf4vG1LBUZ27uLRTq"+
                                 "UFCqQ7FYPcIUSE6rTfVZVdbuPn5ZC0or2yDSd0JS1Q6FqbmBr9bf0tc2XDd22CmVlYK28QEk5Sbd"+
                                 "pei4V6dPMMkTuRzBZ0l0IZgSI9gyVzvrwNdaIShvJVV7CCaq6oLU1Ad5jQ1KywOoGsZQ1jgKTRNA"+
                                 "+FHeDtzjSEY8vHze/MUBi0WKl5LpJe0usGLSSn5ZMwQVbRDqOiE29EBi7MWdbFZ7Fk9rU9WPQW11"+
                                 "QusCa30IVtkJVHSM4VxsovjFF1/6zS8CyBZIZ+YxuW6uZObG1jXK6g6bq5WCynYI9V3jYFJTP+Rm"+
                                 "GxS1Q+AqDB2y6o4hFxgpLCp+BNN3A1V9gKHfCaG6wpKeW7DAlZOv0s+g8+S/fiZYU3PXInGFpZ2n"+
                                 "MUp4ck24samvv5RUS0jaKCbVklYPELAhKOtIK0nIzAOQmEiLa7qhbhyBrpOCvuchmHEAMA0B1SNA"+
                                 "zYgdssoqg9JkCavv6S8TlukVFyJjZk0L0ljfOkNb3yXlk/48rJarjb0ErI+ADf4INkqqZkOR3ACW"+
                                 "SE0+y8FTVRGbqSLfK8CSlqPU0ACjzUGgAPMYYHEAdRQJhxN1o6OoA6nqoA05hdzwWbPnjNvWlC6W"+
                                 "QudRou8g+uqCiIBJSBulRPjy2hFSsVGiLwdZGI1gCuUo0ZrsKQV8bURMYtTRiKjAM1HxgTFpjGsF"+
                                 "Mp2xVF9L0UsV0PX0o56A1RMgF5SFRC0JM4kaEsVl+l7/kAO/mxKc66aE9Pw3o5Jy2gREPDLzMBRk"+
                                 "RSrr7Q+F30wRuAYUSTW4zxZaNm7f7UOj0Vwm/KgCa73+TPtw+coXLiZkbCqqMLfllMig6+0fB3sS"+
                                 "jm+ux87gQ6qF7y6ZnvWci4p7+w69tE1FoNSNFFRE+PJGgKPrQBKdgzt5RfqPV3268HGw/6sC0UlZ"+
                                 "i+ia6pYb2WwYSFtdFXNFNQnd8AP4hx5T/Ndbb//blKs3cWN5TfOv+cZOq7gB4JG+FJH+cInZRmew"+
                                 "kFGq7F/5qcf7gcH7JtWNorKWdrugZPUtrmosXiCHioBpSFSS0I/ZkZxTmEvGHHeKaV0SfcP7bLON"+
                                 "4rjASPX4xDaY5h4ksgW4FJ8ST5LNmGrCD5etpKUpTAXHkvMhJQtEQuBcISORK1G1+gftmfoq1lnb"+
                                 "/TJ4osoSY51N1AGUEC8TEbsQE7vI1lQjR17h8A0IXj1VuIn7spSm7VcYchR1943DSUmIXZC2YeQr"+
                                 "ytvzhcpiZolkfP9+6pWlqG0QdlMQEHMV9boAhxHPFDq4bb1IJCsyWaDoeXfpR/Mny/Pk75niyndS"+
                                 "VHXOPGs7UjR6KpLBt4spahzSBSsioOfikuL/4z//+HTZpMuMbdJBMjNirIoHgLCtBzF3s1gsa7sj"+
                                 "RaxCmkjd9u6S/5l6S34kZZWb38g1ttoZLT24L1b3ZJeqheIxxzigKwTDIzgRfTNlskX3XFQWR1NQ"+
                                 "Uw+FbWRczDIySykxU9dntkaHDFn5wIa/7nxtuhUUVTd9zLS0U9y+IcjsDihGxx7COSkw27pwvVgE"+
                                 "//3HYiYFDDl08g87Avce373vOD+j2vJohq5kHGszsmWV1IXYJI/pAqqsnQe5ta2QkKoJiWmXOol8"+
                                 "yM4SnsFwLHf3ylz52frQJR989Psp571+N2d+FEc4PCFmF6DwwShySpW4J1ClzZ4zd8rWYLK2P6+w"+
                                 "tOmkrb0oJtsexwaw+kn0ORF0+op57iuvTP8Qm8uVuEUWlMpkZLYuuAlr4BhrQNfU2BPzi9ynMltD"+
                                 "XStN29BxTGVpAq9nFPnEFXLJ2TCbWFcKOUn4hx65O20frGntp3UNPthV76BGJ0T86JPoh6XQgqFr"+
                                 "6M4TyD+OT07/yVVnbe+mlTd0fCMx1NlVHYNIJ4Z/j2zAKSYg2QAk6ZzIF+s62FzeB1OZ7KN7ssX6"+
                                 "FUbbiMNVtQmwx7+LhofBIZAcQ+OwyGQ9LlRXviaQaR+1XF/X+qvqlq635DXNiTJDnbOspQ+pRgp3"+
                                 "KoDbWuCmGohTALHEqWOlTiQzpF1ZjKK5xZq6eQyZ6fUEuvi3TwUOj0lecCY91+bS30RrJwBFpOUC"+
                                 "Im7+kB0iaws5SLSRY1XTCKesTsHR1t4v0lqyisosVSKdxaGva0Jp3RBukv3tBkl2XQREl1K4WuJE"+
                                 "JM+By0WjuMi2Yfeh86bELNa/KHQWiayi1smV6a2Hz996+6mQfodOn7tXacQNYs57o26NZTc0gzdK"+
                                 "BE48spAYeD7ZZbKJlvIb7SgwtCKNJ0dCHheJBSXIllah0GBDvMIxDnOl2I6LnAc4z7ThHGMAQRcL"+
                                 "4Xs4Dgdvl+OrsPvOkKPh+2+kMUKLZTpnaoEQ11LZ2BUa4fNUwLORcS+t3ex7fdlqj0PLVrov3fzt"+
                                 "wZJEXSNyyZ6caQXSXFoiOkoku348Mcw4JYWIfCMuMNtxhVTnkguocBDh9F6cye3E6cwWnMxohO/x"+
                                 "FIRH3aIy2TLsD4umjlyIxe0sLjJYEqTSS5GQxSOTlOLQlbS0I1EZr0ymTdcCGF8EvgHfzz55l2lJ"+
                                 "raaIuB9qyaWjGCLSKFKlC8xefLXnB8XRWEbT2byucaATaQ04mmLGD0kmHErQYe8NBQIPhDmy2VKk"+
                                 "FYqRxVUhl6dBJkeBTLYcKQVi0IU6ilXWRA4RNThzm1EZcibh9bA7/OcPRec+/XBiaB+Yx2yy903o"+
                                 "KVpAIbLYQcCGxqt0OrsNsSzzWGxRo/NwkhEHEyoRelOLvbFKfH9Ngu+uChF0RYCtIeHOc3EZVAap"+
                                 "YF6JFiyJHkp9HTjiMuQVy6nS8npIzH1QWskJ3tKDQqmhUV3TUn32Dj33jT8tfv4nK5ot1a2LKmnG"+
                                 "VT5pH3uEAJTjL99GPNh5PJXaQypzONGA/bfKSZWUCIkWY9uRFHj5h1Gfb9s/tjssF35h+dh1Og+e"+
                                 "u45hX1h0D0NE3mHUNSirbsTZ63dVG/32+GwOOPBR8KnoCLrEMKzvtMPYR6GSmLl6gHQop8ThvevA"+
                                 "ez8JGB4Z8/L6v3593/fEPfveGCk+Wb+pavnKNUvXfrHB23OLX1HgpWIEXeYh4DwHG0MuU+6e3nfd"+
                                 "13l5bvX1W/XJn3d3en97Fas3BY2sWe+TGJfF6SmU653kpREXb94zLVyy7G9OR+EJ9N0iSy80nU7I"+
                                 "OxzgNttw8Ga202P7nm1P1eTn676Y4b15m8eqdT6pC99Z/N8T+rx0O3XVliPJ8D2ZhR3H0rEh4IcR"+
                                 "97Wej/492O4XsHyN54bUVe4eqxgc/qt0hW5U29xDVTd3Y6Pf3hNPHhAi7xX9Nk/d2MG1DKPAPIiv"+
                                 "z8T3um8JPvbq7/795ckWzcTvbj8cO/loB7mfz57tuXNP2+pNwY6VPoEOj43bNS/MnDnz8WRz5s51"+
                                 "GxoefUGltxytaO2lagedsHbZ8OXXoaFPDlqkND5foG1tvZCjdiRIGihP/6P8GTP+6dle8CeSb92x"+
                                 "a56Hp/eitV7ei9559735v1+w4O+2QK5cn1fdPgBTvx01PXbUd4/halKe9osdIS88DkmXmTdmypup"+
                                 "a+xanE1XYNXm75Keo9GmfDiZapX/7r5r9/lRzLI2sCq6wdC0g6ltB0PZiMspRYXnbuctuZUnfCNP"+
                                 "bAzJkdb3R9KrcSqtAjtO3MXKDYEHJj0nPjPVYw+ejmd96H/8ZueX+yI7vzmX7gxP0yAyT4/4IjNu"+
                                 "s/VUAqvCfqOgAqdSVDhyR0VsSo6Qa6VY//VZ3See2+b8EgxPzbF0xTrakhXrXvnT4uXzNn1/8YzP"+
                                 "nmgq+CoT+2K4+Opkoj00hoPgSCa+uczE7vB8BF0twf74CqwLiqI++HyL9/874OMDuG/wm+Hlf+Kb"+
                                 "LYfj+r6KyEFARDZ8T2fAK/gaVmw/QS31DKj8aOP+ls8Dr+KDdbuyZs2d/+gv5X8Y6Mx/fpl2JJZ1"+
                                 "N+gSEwEXOVj+5aGBRZ9ujVm8yucvs+e9NnfRMo9X31uzefPc+f867x8G9eRAOw7fuLg+KNK5Nuga"+
                                 "Fn+23XW6/nl28kvP5K0lK36z3HPH+x+u99254M13/jBZ/v8Fpi3K2fVrfvgAAAAASUVORK5CYII=")),0,$$.Length)))))
#endregion
#~~< lblCoreConfigText >~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
$lblCoreConfigText = New-Object System.Windows.Forms.Label
$lblCoreConfigText.Font = New-Object System.Drawing.Font("Tahoma", 8.25, [System.Drawing.FontStyle]::Regular, [System.Drawing.GraphicsUnit]::Point, ([System.Byte](0)))
$lblCoreConfigText.Location = New-Object System.Drawing.Point(73, 29)
$lblCoreConfigText.Size = New-Object System.Drawing.Size(367, 19)
$lblCoreConfigText.TabIndex = 5
$lblCoreConfigText.Text = $TextStrings.ServiceControl
#~~< lblCoreConfigTitle >~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
$lblCoreConfigTitle = New-Object System.Windows.Forms.Label
$lblCoreConfigTitle.Font = New-Object System.Drawing.Font("Tahoma", 8.25, [System.Drawing.FontStyle]::Bold, [System.Drawing.GraphicsUnit]::Point, ([System.Byte](0)))
$lblCoreConfigTitle.Location = New-Object System.Drawing.Point(59, 9)
$lblCoreConfigTitle.Size = New-Object System.Drawing.Size(270, 18)
$lblCoreConfigTitle.TabIndex = 4
$lblCoreConfigTitle.Text = $TextStrings.WindowTitle
#~~< btnClose >~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
$btnClose = New-Object System.Windows.Forms.Button
$btnClose.FlatStyle = [System.Windows.Forms.FlatStyle]::System
$btnClose.Location = New-Object System.Drawing.Point(409, 403)
$btnClose.Size = New-Object System.Drawing.Size(87, 23)
$btnClose.TabIndex = 3
$btnClose.Text = $TextStrings.Close
$btnClose.UseVisualStyleBackColor = $true
$btnClose.add_Click({BtnCloseClick($btnClose)})
#~~< Panel1 >~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
$Panel1 = New-Object System.Windows.Forms.Panel
$Panel1.BorderStyle = [System.Windows.Forms.BorderStyle]::FixedSingle
$Panel1.Location = New-Object System.Drawing.Point(-3, 50)
$Panel1.Size = New-Object System.Drawing.Size(531, 338)
$Panel1.TabIndex = 7
$Panel1.Text = ""
$Panel1.BackColor = [System.Drawing.Color]::Gainsboro
#~~< btnRestartService >~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
$btnRestartService = New-Object System.Windows.Forms.Button
$btnRestartService.FlatStyle = [System.Windows.Forms.FlatStyle]::System
$btnRestartService.Location = New-Object System.Drawing.Point(363, 298)
$btnRestartService.Size = New-Object System.Drawing.Size(135, 24)
$btnRestartService.TabIndex = 3
$btnRestartService.Text = $TextStrings.RestartService
$btnRestartService.UseVisualStyleBackColor = $true
$btnRestartService.add_Click({RestartService($btnRestartService)})
#~~< btnStopService >~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
$btnStopService = New-Object System.Windows.Forms.Button
$btnStopService.FlatStyle = [System.Windows.Forms.FlatStyle]::System
$btnStopService.Location = New-Object System.Drawing.Point(196, 298)
$btnStopService.Size = New-Object System.Drawing.Size(135, 24)
$btnStopService.TabIndex = 3
$btnStopService.Text = $TextStrings.StopService
$btnStopService.UseVisualStyleBackColor = $true
$btnStopService.add_Click({StopService($btnStopService)})
#~~< btnStartService >~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
$btnStartService = New-Object System.Windows.Forms.Button
$btnStartService.FlatStyle = [System.Windows.Forms.FlatStyle]::System
$btnStartService.Location = New-Object System.Drawing.Point(28, 298)
$btnStartService.Size = New-Object System.Drawing.Size(135, 24)
$btnStartService.TabIndex = 3
$btnStartService.Text = $TextStrings.StartService
$btnStartService.UseVisualStyleBackColor = $true
$btnStartService.add_Click({StartService($btnStartService)})
#~~< DataGridView1 >~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
$DataGridView1 = New-Object System.Windows.Forms.DataGridView
$DataGridView1.AutoSizeColumnsMode = [System.Windows.Forms.DataGridViewAutoSizeColumnsMode]::AllCells
$DataGridView1.AutoSizeRowsMode = [System.Windows.Forms.DataGridViewAutoSizeRowsMode]::AllCells
$DataGridView1.Location = New-Object System.Drawing.Point(14, 14)
$DataGridView1.RowHeadersVisible = $false
$DataGridView1.Size = New-Object System.Drawing.Size(501, 269)
$DataGridView1.TabIndex = 2
$DataGridView1.Text = ""
$DataGridView1.GridColor = [System.Drawing.Color]::White
$Panel1.Controls.Add($btnRestartService)
$Panel1.Controls.Add($btnStopService)
$Panel1.Controls.Add($btnStartService)
$Panel1.Controls.Add($DataGridView1)
$frmServices.Controls.Add($PictureBox1)
$frmServices.Controls.Add($lblCoreConfigText)
$frmServices.Controls.Add($lblCoreConfigTitle)
$frmServices.Controls.Add($btnClose)
$frmServices.Controls.Add($Panel1)

#endregion

#region Functions

function Main{
	[System.Windows.Forms.Application]::EnableVisualStyles()
	formLoad

	$frmServices.ShowDialog()
}

function formload
{
	$Global:Shell = New-Object -comobject wscript.shell
	servicesTable
}


function ServicesTable
{
		
	$TableName = "OS Services"
	$table = New-Object system.Data.DataTable  $TableName 
		
	$col1 = New-Object system.Data.DataColumn Service_Name
	$col2 = New-Object system.Data.DataColumn Status
	$col3 = New-Object system.Data.DataColumn Service_Description

	$table.columns.add($col1)
	$table.columns.add($col2)
	$table.columns.add($col3)

	# create our WMI Object

	$GatherServices = Get-Service *

	
	$GatherServices | ? { $row = $table.NewRow() ; $row.Service_name = $_.Name ; $row.Status = $_.Status ; $row.Service_Description = $_.Displayname ; $table.Rows.Add($row) } 

	#Save Table

	$DataGridview1.DataSource = $table
	$DataGridview1.SelectionMode = 'FullRowSelect'
	#$DataGridview1.ColumnHeadersHeightSizeMode = [System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode]::AutoSize 
	$DataGridview1.AutoResizeRows()
	$DataGridview1.AutoResizeColumns()


}


function BtnCloseClick( $object )
{
$frmServices.Hide()
$formComputer.enabled = $True
}



function StartService ( $object )
{
	$frmServices.Cursor = [System.Windows.Forms.Cursors]::WaitCursor
	Start-Service $DataGridView1.CurrentCell.Value -ErrorAction SilentlyContinue -ErrorVariable errorVar
	if ($errorVar)
	{
		Write-Host -ForegroundColor RED $TextStrings.ErrorText
		Write-Host -ForegroundColor Yellow "`n" $errorVar
		Write-Host -ForegroundColor RED $TextStrings.ErrorText
		$Shell.Popup($errorVar, 0, $TextStrings.ErrorTitle, 0 + 16) 
	}
	#Output to Logfile
	$TextStrings.LogServiceStarted -f (Get-Date -F G), $DataGridView1.CurrentCell.Value | Out-File -FilePath $Logfile -append
	
	ServicesTable
	$frmServices.refresh()
	$frmServices.Cursor = [System.Windows.Forms.Cursors]::Default
}

function RestartService($object)
{
	$frmServices.Cursor = [System.Windows.Forms.Cursors]::WaitCursor
	Restart-Service $DataGridView1.CurrentCell.Value -ErrorAction SilentlyContinue -ErrorVariable errorVar
	if ($errorVar)
	{
		Write-Host -ForegroundColor RED $TextStrings.ErrorText
		Write-Host -ForegroundColor Yellow "`n" $errorVar
		Write-Host -ForegroundColor RED $TextStrings.ErrorText
		$Shell.Popup($errorVar, 0, $TextStrings.ErrorTitle, 0 + 16) 
	}
	#Output to Logfile
	$LogServiceRestarted -f (Get-Date -F G), $DataGridView1.CurrentCell.Value | Out-File -FilePath $Logfile -append
	
	ServicesTable
	$frmServices.refresh()
	$frmServices.Cursor = [System.Windows.Forms.Cursors]::Default
}
function StopService($object)
{
	$frmServices.Cursor = [System.Windows.Forms.Cursors]::WaitCursor
	Stop-Service $DataGridView1.CurrentCell.Value -ErrorAction SilentlyContinue -ErrorVariable errorVar
	if ($errorVar)
	{
		Write-Host -ForegroundColor RED $TextStrings.ErrorText
		Write-Host -ForegroundColor Yellow "`n" $errorVar
		Write-Host -ForegroundColor RED $TextStrings.ErrorText
		$Shell.Popup($errorVar, 0, $TextStrings.ErrorTitle, 0 + 16) 
	}
	#Output to Logfile
	$LogServiceStopped -f (Get-Date -F G), $DataGridView1.CurrentCell.Value | Out-File -FilePath $Logfile -append
	
	ServicesTable
	$frmServices.refresh()
	$frmServices.Cursor = [System.Windows.Forms.Cursors]::Default
}

Main

#endregion
