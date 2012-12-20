Import-LocalizedData -BindingVariable TextStrings -FileName Drivers.psd1
#region Constructor

[void][System.Reflection.Assembly]::LoadWithPartialName("System.Windows.Forms")
[void][System.Reflection.Assembly]::LoadWithPartialName("System.Drawing")

#endregion

#region Form Creation
#~~< frmDrivers >~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
$frmDrivers = New-Object System.Windows.Forms.Form
$frmDrivers.ClientSize = New-Object System.Drawing.Size(427, 339)
$frmDrivers.ControlBox = $false
$frmDrivers.Font = New-Object System.Drawing.Font("Tahoma", 8.25, [System.Drawing.FontStyle]::Regular, [System.Drawing.GraphicsUnit]::Point, ([System.Byte](0)))
$frmDrivers.FormBorderStyle = [System.Windows.Forms.FormBorderStyle]::FixedSingle
$frmDrivers.MaximizeBox = $false
$frmDrivers.MinimizeBox = $false
$frmDrivers.StartPosition = [System.Windows.Forms.FormStartPosition]::CenterScreen
$frmDrivers.Text = $TextStrings.AddDriver
$frmDrivers.BackColor = [System.Drawing.Color]::White
#~~< lblCoreConfigText >~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
$lblCoreConfigText = New-Object System.Windows.Forms.Label
$lblCoreConfigText.Font = New-Object System.Drawing.Font("Tahoma", 8.25, [System.Drawing.FontStyle]::Regular, [System.Drawing.GraphicsUnit]::Point, ([System.Byte](0)))
$lblCoreConfigText.Location = New-Object System.Drawing.Point(84, 30)
$lblCoreConfigText.Size = New-Object System.Drawing.Size(321, 21)
$lblCoreConfigText.TabIndex = 0
$lblCoreConfigText.Text = $TextStrings.WindowDescription
#~~< panelAdd >~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
$panelAdd = New-Object System.Windows.Forms.Panel
$panelAdd.BorderStyle = [System.Windows.Forms.BorderStyle]::FixedSingle
$panelAdd.Location = New-Object System.Drawing.Point(-1, 54)
$panelAdd.Size = New-Object System.Drawing.Size(431, 235)
$panelAdd.TabIndex = 0
$panelAdd.Text = ""
$panelAdd.BackColor = [System.Drawing.Color]::Gainsboro
#~~< GroupBox1 >~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
$GroupBox1 = New-Object System.Windows.Forms.GroupBox
$GroupBox1.Location = New-Object System.Drawing.Point(26, 124)
$GroupBox1.Size = New-Object System.Drawing.Size(379, 88)
$GroupBox1.TabIndex = 0
$GroupBox1.TabStop = $false
$GroupBox1.Text = ""
#~~< Label10 >~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
$Label10 = New-Object System.Windows.Forms.Label
$Label10.Font = New-Object System.Drawing.Font("Tahoma", 8.25, [System.Drawing.FontStyle]::Regular, [System.Drawing.GraphicsUnit]::Point, ([System.Byte](0)))
$Label10.Location = New-Object System.Drawing.Point(19, 24)
$Label10.Size = New-Object System.Drawing.Size(346, 22)
$Label10.TabIndex = 0
$Label10.Text = $TextStrings.INFDescription
$Label10.BackColor = [System.Drawing.Color]::Gainsboro
$Label10.ForeColor = [System.Drawing.Color]::Black
#~~< Label1 >~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
$Label1 = New-Object System.Windows.Forms.Label
$Label1.Font = New-Object System.Drawing.Font("Tahoma", 8.25, [System.Drawing.FontStyle]::Regular, [System.Drawing.GraphicsUnit]::Point, ([System.Byte](0)))
$Label1.Location = New-Object System.Drawing.Point(53, 51)
$Label1.Size = New-Object System.Drawing.Size(53, 21)
$Label1.TabIndex = 0
$Label1.Text = $TextStrings.Location
$Label1.BackColor = [System.Drawing.Color]::Gainsboro
$Label1.ForeColor = [System.Drawing.Color]::Black
#~~< txtboxFilePath >~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
$txtboxFilePath = New-Object System.Windows.Forms.TextBox
$txtboxFilePath.BorderStyle = [System.Windows.Forms.BorderStyle]::FixedSingle
$txtboxFilePath.Font = New-Object System.Drawing.Font("Tahoma", 8.25, [System.Drawing.FontStyle]::Bold, [System.Drawing.GraphicsUnit]::Point, ([System.Byte](0)))
$txtboxFilePath.Location = New-Object System.Drawing.Point(112, 49)
$txtboxFilePath.Size = New-Object System.Drawing.Size(212, 21)
$txtboxFilePath.TabIndex = 1
$txtboxFilePath.Text = $TextStrings.NoFile
$txtboxFilePath.BackColor = [System.Drawing.Color]::White
$GroupBox1.Controls.Add($Label10)
$GroupBox1.Controls.Add($Label1)
$GroupBox1.Controls.Add($txtboxFilePath)
#~~< btnHaveDisk >~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
$btnHaveDisk = New-Object System.Windows.Forms.Button
$btnHaveDisk.FlatStyle = [System.Windows.Forms.FlatStyle]::System
$btnHaveDisk.Location = New-Object System.Drawing.Point(298, 85)
$btnHaveDisk.Size = New-Object System.Drawing.Size(107, 22)
$btnHaveDisk.TabIndex = 0
$btnHaveDisk.Text = $TextStrings.HaveDiskButton
$btnHaveDisk.UseVisualStyleBackColor = $true
$btnHaveDisk.add_Click({Button3Click($btnHaveDisk)})
#~~< Label7 >~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
$Label7 = New-Object System.Windows.Forms.Label
$Label7.Font = New-Object System.Drawing.Font("Tahoma", 8.25, [System.Drawing.FontStyle]::Bold, [System.Drawing.GraphicsUnit]::Point, ([System.Byte](0)))
$Label7.Location = New-Object System.Drawing.Point(26, 17)
$Label7.Size = New-Object System.Drawing.Size(379, 20)
$Label7.TabIndex = 0
$Label7.Text = $TextStrings.Welcome
#~~< Label5 >~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
$Label5 = New-Object System.Windows.Forms.Label
$Label5.Font = New-Object System.Drawing.Font("Tahoma", 8.25, [System.Drawing.FontStyle]::Regular, [System.Drawing.GraphicsUnit]::Point, ([System.Byte](0)))
$Label5.Location = New-Object System.Drawing.Point(26, 47)
$Label5.Size = New-Object System.Drawing.Size(369, 21)
$Label5.TabIndex = 7
$Label5.Text = $TextStrings.HaveDiskDescription
$Label5.add_Click({Label5Click($Label5)})
$panelAdd.Controls.Add($GroupBox1)
$panelAdd.Controls.Add($btnHaveDisk)
$panelAdd.Controls.Add($Label7)
$panelAdd.Controls.Add($Label5)
#~~< lblCoreConfigTitle >~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
$lblCoreConfigTitle = New-Object System.Windows.Forms.Label
$lblCoreConfigTitle.Font = New-Object System.Drawing.Font("Tahoma", 8.25, [System.Drawing.FontStyle]::Bold, [System.Drawing.GraphicsUnit]::Point, ([System.Byte](0)))
$lblCoreConfigTitle.Location = New-Object System.Drawing.Point(61, 9)
$lblCoreConfigTitle.Size = New-Object System.Drawing.Size(238, 15)
$lblCoreConfigTitle.TabIndex = 14
$lblCoreConfigTitle.Text = $TextStrings.WindowTitle
#~~< btnCancel >~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
$btnCancel = New-Object System.Windows.Forms.Button
$btnCancel.FlatStyle = [System.Windows.Forms.FlatStyle]::System
$btnCancel.Location = New-Object System.Drawing.Point(322, 305)
$btnCancel.Size = New-Object System.Drawing.Size(83, 22)
$btnCancel.TabIndex = 0
$btnCancel.Text = $TextStrings.Cancel
$btnCancel.UseVisualStyleBackColor = $true
$btnCancel.add_Click({BtnCancelClick($btnCancel)})
#~~< btnOK >~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
$btnOK = New-Object System.Windows.Forms.Button
$btnOK.FlatStyle = [System.Windows.Forms.FlatStyle]::System
$btnOK.Location = New-Object System.Drawing.Point(213, 305)
$btnOK.Size = New-Object System.Drawing.Size(86, 22)
$btnOK.TabIndex = 0
$btnOK.Text = $TextStrings.OK
$btnOK.UseVisualStyleBackColor = $true
$btnOK.add_Click({BtnOKClick($btnOK)})
#~~< PictureBox1 >~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
$PictureBox1 = New-Object System.Windows.Forms.PictureBox
$PictureBox1.Location = New-Object System.Drawing.Point(9, 9)
$PictureBox1.Size = New-Object System.Drawing.Size(37, 36)
$PictureBox1.TabIndex = 2
$PictureBox1.TabStop = $false
$PictureBox1.Text = ""
#region PictureBox1.Image = ([System.Drawing.Image](...)
$PictureBox1.Image = ([System.Drawing.Image]([System.Drawing.Image]::FromStream((New-Object System.IO.MemoryStream(($$ = [System.Convert]::FromBase64String(
"iVBORw0KGgoAAAANSUhEUgAAACQAAAAkCAIAAABuYg/PAAAAAXNSR0IArs4c6QAAAARnQU1BAACx"+
                                 "jwv8YQUAAAAgY0hSTQAAeiYAAICEAAD6AAAAgOgAAHUwAADqYAAAOpgAABdwnLpRPAAAAAlwSFlz"+
                                 "AAAOwQAADsEBuJFr7QAACAxJREFUWEe9l3lM2+cZx7u/10WqOm1a0gSUdGmmSduqpWonle4qLYqU"+
                                 "bNr+aNjaZLmhSThSCqQhXC2HwTCDMcyA7fj62fjn2zEk4Y4DxsYH92FzGHs2+BB3gCwH+9pGdGGs"+
                                 "cqUprxBg+8f7eb/P832e5+U7m5ubL72wBdgLWy+9MFIwhP8J83q9ZotV29gkVyhvaxuVGo1Sqb6t"+
                                 "1d65d6/xzl2ZQtVAylUarVKlJWVKQiThcHk1zFoKlZpfUMisq6OUUg2G3m84/XOwgYGBycnJsbHx"+
                                 "wcGhvtCy9vWZzBaj0dilN+h7DL29ZpVaw+Xxq2uY2F0ilZJSqUAo4PF5Aj7/ZnY2VyCIFDY8PLiw"+
                                 "MO/z+fw+39zc3CyWx+N2u51YMzPOGSe2xnZt7W3tHe3Nzc1yuZzL5TIYjDJqGb4yr19XKJSRwhqb"+
                                 "mmx22/j4OPTNzc4B6fF4QPXOzS0vL5vMZpzdYDBoNBoRQbBZLCaTWc1gVFVVlZeX08pp6ZmZUrk8"+
                                 "Ulh7R8fs3Jx9aspun2xt6Wxt1g0MjATDaDKP2WxqjaawqOjBgwdCoZAQEjwOj1XPqqmpqaLTabTy"+
                                 "ClpFekYmKSMjhT3o7jFZrCsrqx2duoSvEo9nfihUiNfXNzp1XUaTRSqTF1EonZ2dYrGYIAgej8sK"+
                                 "iUMYaTRaGCaRyiKFWfusjx8/Jkn58Wt/uNFxWjyeeK3qDFy3urpqsfSRUnlhEUWn0wEmEon4fB6L"+
                                 "zWLW1jKqGCBVVlZ+npEhJiNWZjKZFSr1o9V/nctK/GnenkTyzQqixDHlEoklPUYTKZMVFgdhEokE"+
                                 "PAFfwGFzagFjVANGp9MBEzVIIlUGCyiUajw9ZXN8VnA9i5HjcDjxUtxAwvqkTB6GkRISPIFAwGaz"+
                                 "QzBGRUUFbPJ5eoZYEjkMypSqjY1HT58+3Xy6ufl4EwlDCgFDkYXCWAyDkOQWjMPh1NXVVVdXAwZT"+
                                 "AiYUNUSsDDCFauPRxtr6GhZStbwCVhhmlJDSr2FiMTzJ4XIBq6muAQw1kJaeQYjEEcPMZrlCtb6x"+
                                 "DszSyvLiIqorSAvCDEaRhEQYu7q6ZFIZxBFCITekDDC4A/oAExKiSGFmsyUIWwdsZXFxaWFhYRE/"+
                                 "llcA6zGYRBLpFkwmk4ZhXG59fT1KjV5Jx/e09HRCHHEYQzDl2to65MwvLPj9gYB/YWlpCTCD0SQS"+
                                 "kwhjUBlgUhLu5/F4wVKrYcKKtUzAMngC4bdSBthaEDY/7/X6vD4fqGEYIWqAMr2+Gy0RMIJAqfEB"+
                                 "gyGDsFomrF/P4kQOC+ZsbX0duYKqUFP0BgLzqDPAkA/AMAHUarVUKg3VNZ/NYjNrmUWFRTnZOUlX"+
                                 "k65eTUpNSc3Pz0cJIgY7wM+NGHPIIGFYwB/woOnPzvr8/jBMIBShXVmt1qamJrVSicJGXcMd2cGV"+
                                 "g1ai1WpxFCz8gpd5efmoDbvdvo18Doai3ob5/AG3Z9bt9iCYW8pEomIKZWhoqKWlpVHbqJAp0Piz"+
                                 "btyorKRjUDx8+BDV+ezZsydPnsBifr8f0xEfYW3znoeZQtYPh9Hv97g9TrcbkQQMvZ8vJIopJdhX"+
                                 "16lrbWnF8QsKCrAd5jsYOD5HMZRKabmU11YtMvsD8wjL2OhoZWUV9IXF7aIMXQPlhei53B6MTIy0"+
                                 "MIwnIIpLSqanp/U9+k5dJ497KycnF+ww6ZbKvu93dXt/L/7ZSd2750e+qLE4Zhx2m02v1yOe9+/f"+
                                 "/x+wjS0YYuhwzOD7NoxSUorBbbFYenp6ysvKkBhED7uAdym/K/aCqrFjnCWzvnexP/ay0el0DQ4O"+
                                 "WixmPIa1E2Y0mRDGjQ30wxUUmcvtnnI4XC53GHZLQADm83qRNvCybmQhktt5cnoWJx2+QCDQYxl/"+
                                 "86OWmDNaPANZ7e3teAz+/C9lWzkLNl9YH5qmpqdxwC0YX0ApLUVbsdlsIyMjKckpMB40YQQizah9"+
                                 "XF5MfeMnkpoPHVMwlCZcIDAicFXBY6iHnTBYXyZXouujNwYCC8jW9LQDkQTMbLGwOdySUipE4y0Y"+
                                 "DH+PXeA9RAIk2ATXolOZdw8fv10m6LZYrcE7WVdXW1vb7rBuvR6zH38cgs2HleELvQNhDMKoVIhA"+
                                 "2mYcM7k5uYhPWFOYZJ+YeCde+sc0LVKF1d/fb0V29frdw0gto6FyR0fH4ENcqua8XhS1w+kErK9/"+
                                 "gMPlU8vKEQ3svry0hH6PzMO0YdLEhH10dLSWaGtoMo6O4X5kg3p4FUg8hoayM4y4J7719q8+iDuW"+
                                 "cPlKVm5eBb0KbLXmNpcvRAdhsTkZ179wuVzYpenOnS+/KsjKuonKxZUS74wMD0HNkRP1Mec1uAki"+
                                 "1K5/unAIk8kE64db19d1hhkR8+vfvBsTExUd/dqB6P1R0QcOHnz98JGf//LoW2+/gxN8eiU5KSU1"+
                                 "JzcPyLhjx/fu3/9+bCydzhgeHgEmfIP+IEF16kszGJDr9rhxCDywS1FjGv32/djzlxJPnzl76szZ"+
                                 "8wmJ5y5eOhkfHxsX94ujR3+0b+8rr37/9cNvRB089PKeV777vT2v/uCHbxz5yUcnT6JHwOK9vb0w"+
                                 "wsDgwITdHorqBDSBtHu7Cnrabr977x66O7W8PCk59ZPTf4v/68enz11IvvZZWkbmleSUE3/6c/Sh"+
                                 "H+87EPVaVHTsh3F/p1V0dXfj4AjUt27EOyYCUoh6am1t+weTmXUz+1paWsKnl+P/8vHZCxdhWo9n"+
                                 "dvt5pAQWQOWiHiIdMd8w9/4vH73Qfwb/DeYI3cQLMilxAAAAAElFTkSuQmCC")),0,$$.Length)))))
#endregion
$frmDrivers.Controls.Add($lblCoreConfigText)
$frmDrivers.Controls.Add($panelAdd)
$frmDrivers.Controls.Add($lblCoreConfigTitle)
$frmDrivers.Controls.Add($btnCancel)
$frmDrivers.Controls.Add($btnOK)
$frmDrivers.Controls.Add($PictureBox1)
#~~< OpenFileDialog1 >~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
$OpenFileDialog1 = New-Object System.Windows.Forms.OpenFileDialog
$OpenFileDialog1.CheckFileExists = $false
$OpenFileDialog1.InitialDirectory = "C:\"

#endregion

#region Functions

function Main{
	[System.Windows.Forms.Application]::EnableVisualStyles()
	$frmDrivers.ShowDialog()
}


function Button3Click($object)
	{ 	
	$OpenFile = New-Object -TypeName Windows.Forms.OpenFileDialog;
	$OpenFile.ShowHelp = $true

	$OpenFile.Filter = $TextStrings.OFFilter
	$OpenFile.FilterIndex = 2
	$OpenFile.Title = $TextStrings.OFTitle

	$OpenFile.ShowDialog()
		
	$choice = $OpenFile.Filename
		
	$txtboxFilePath.text = $choice
	}

function BtnOKClick( $object )
{
	$Shell = New-Object -Comobject("WScript.Shell")
	$Temp = "pnputil -i -a " + [char]34 + $txtboxFilePath.text + [char]34
	$shell.Run($Temp)
	#Output to Logfile
	$Logdate + " Command Executed: " + $Temp | Out-File -filepath $logfile -append
}

function BtnCancelClick( $object )
{
$frmDrivers.Hide()
$FormControl.enabled = $True
}

Main

#endregion
