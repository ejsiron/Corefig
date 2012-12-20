Import-LocalizedData -BindingVariable TextStrings -FileName JoinDomainAndRename.psd1
#region Constructor

[void][System.Reflection.Assembly]::LoadWithPartialName("System.Windows.Forms")
[void][System.Reflection.Assembly]::LoadWithPartialName("System.Drawing")

#endregion

#region Form Creation
#~~< CRenameDomainform >~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
$CRenameDomainform = New-Object System.Windows.Forms.Form
$CRenameDomainform.ClientSize = New-Object System.Drawing.Size(366, 437)
$CRenameDomainform.ControlBox = $false
$CRenameDomainform.Font = New-Object System.Drawing.Font("Tahoma", 8.25)
$CRenameDomainform.FormBorderStyle = [System.Windows.Forms.FormBorderStyle]::FixedSingle
$CRenameDomainform.MaximizeBox = $false
$CRenameDomainform.MinimizeBox = $false
$CRenameDomainform.ShowIcon = $false
$CRenameDomainform.StartPosition = [System.Windows.Forms.FormStartPosition]::CenterScreen
$CRenameDomainform.Text = $TextStrings.PageTitle
$CRenameDomainform.BackColor = [System.Drawing.Color]::White
#~~< lblCoreConfigTitle >~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
$lblCoreConfigTitle = New-Object System.Windows.Forms.Label
$lblCoreConfigTitle.Font = New-Object System.Drawing.Font("Tahoma", 8.25, [System.Drawing.FontStyle]::Bold, [System.Drawing.GraphicsUnit]::Point, ([System.Byte](0)))
$lblCoreConfigTitle.Location = New-Object System.Drawing.Point(63, 9)
$lblCoreConfigTitle.Size = New-Object System.Drawing.Size(272, 17)
$lblCoreConfigTitle.TabIndex = 61
$lblCoreConfigTitle.Text = $TextStrings.PageTitle
#~~< lblDescript >~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
$lblDescript = New-Object System.Windows.Forms.Label
$lblDescript.Font = New-Object System.Drawing.Font("Tahoma", 8.25, [System.Drawing.FontStyle]::Regular, [System.Drawing.GraphicsUnit]::Point, ([System.Byte](0)))
$lblDescript.Location = New-Object System.Drawing.Point(73, 26)
$lblDescript.Size = New-Object System.Drawing.Size(314, 34)
$lblDescript.TabIndex = 60
$lblDescript.Text = $TextStrings.PageDescription
$lblDescript.add_Click({LblDescriptClick($lblDescript)})
#~~< PictureBox1 >~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
$PictureBox1 = New-Object System.Windows.Forms.PictureBox
$PictureBox1.BackgroundImageLayout = [System.Windows.Forms.ImageLayout]::Center
$PictureBox1.Location = New-Object System.Drawing.Point(2, 2)
$PictureBox1.Size = New-Object System.Drawing.Size(55, 58)
$PictureBox1.TabIndex = 59
$PictureBox1.TabStop = $false
$PictureBox1.Text = ""
#region$PictureBox1.BackgroundImage = ([System.Drawing.Image](...)
$PictureBox1.BackgroundImage = ([System.Drawing.Image]([System.Drawing.Image]::FromStream((New-Object System.IO.MemoryStream(($$ = [System.Convert]::FromBase64String(
"iVBORw0KGgoAAAANSUhEUgAAADIAAAAtCAYAAADsvzj/AAAAAXNSR0IArs4c6QAAAARnQU1BAACx"+
                                 "jwv8YQUAAAAgY0hSTQAAeiYAAICEAAD6AAAAgOgAAHUwAADqYAAAOpgAABdwnLpRPAAAFJZJREFU"+
                                 "aEPdWXd4W/W5FlwaVsggCWQQiAlQCCmrLVBGKdwWCpQwkoYADy0Pq7TQkjaEzkBC4jhOvPfelpcs"+
                                 "L1mSbcmSLMuWl2zZkuUlz9jx3tuO3/ue4wQI9HnuLeH2j57H33MkWTrnvL/3+95v/C4BD8l/wiEA"+
                                 "+U84JBcLYn5+EbNzC1hYXLrYS13U7y8KyNmzQEfraThsTXA4nOjr7kdv3zDGRqYxPbmA2ZmzWJgF"+
                                 "Fvm9/+/jooDMLSygrtoOVY4GocEyJCWroVQYodcVw1RcjNrKWjis9WhubENHVx96evox0DeK4aEp"+
                                 "DI/Ok0XaPNlcOItFMsrLYekbEntRQGbngGpLHY65ZWPDjZ5wuSccP/xJEp7anYsXXsvE2wfk+OvR"+
                                 "dISGZUOeXgBdoRKVZTq0OGrQ2NiIlpY2dDp70NnZg/7uIQIdwtjoGKYmZzE5OY+p6XnMzSxhhvfB"+
                                 "/wLwooBM82ZVZdU4dESOS9ZFQrIul6aC5LpiSDaV4dKt1bj8ljqsuqsV6+7rxab7+3D7T7vx3ked"+
                                 "8ItqQXicA/JsJzSFDphKa1FbY0et3YG2pla0OdvQ3t6G/p5ejAyOY2psGrPTs+AfZghujucFxufE"+
                                 "BF8Iynsxvjs0PI6Kyiq8+0EyJNdEE0QaTQHJxgJINpdAsrUGkhsbIXE5DcnNg5DcNoG19y8hIhPo"+
                                 "OgOU1QCqUiBRC4RkLcA3ZQQ+qYMISD2D8PRBJGb3QK5uh764HQ11LWhtb8JYXz/GhobFxx7sHYTO"+
                                 "YBJd8qKADPYNoMJkwa69EZCsioJkffoykA0agtFDssVCIHUE4YTklgFIto/gmnunECblQ/QDQyNA"+
                                 "dy/Q0w20EVh7F9BIc7QB1mag0gGU1C1Aa5lDXsUMZMUziFGeRWBsg+hrbS1OyFK4KhfDyBKVqLOt"+
                                 "FyaDBffdHwzJyhhIrk0ikExIrieQzQSylUBucpCRZki2tUNy6xgu2zGFj9wBZyvQRxDdBNBDO9PH"+
                                 "9wR3ZhA4PcDXXPTeIb7nuUf4jDY8CtQRtNLIHxCIxWJBTpb6mwM5ryztrb0oMVRiy63BuHQNgayh"+
                                 "i62XE4iaQAyQ3FBBI5htZOTmLgIZguSOGezbT5Go50L0kIlOghIYOU1GaJ18xg5+TpHDGQI9Q1AU"+
                                 "O/QKwGiWdsBUww/PTsFsNKNQb/rXgAh+uLjI35OJ6aklzM7zpq1O6PPNuOP+WGzZkUAgiWSFcbI+"+
                                 "j2B0dC3GyRYrmWGcbGula/XRxSZx14vzkDEumHrQTBNcyUGGGjt45oM20b1aCKqZAAVQgtt1COwR"+
                                 "nM4KmK1jWBobRV5OHqzWxv8bkHlK3xSFYZYJbmJ8BtNjE5gcmcT0yBjstnqkp+fi8adleOI5JSSr"+
                                 "zwHZkMUYKSQr5bRKAmGcuHSQkX6CGcbmx6YQxDipbWIs8DkEq+NrWws/Y2zUEpyNoOwE2EjGBIDn"+
                                 "gaVTHMzWfoz39kGWmIK2Dn7hqzHC3MQVZ2KaP0tZm8Pk8BymRqcxOjRKGRxA3+keZvIONDsa4Kir"+
                                 "Q015JdxPRuPZF3Pw/oFirNoUxxihawkyvIHKtZGs3EAg2+qX1WtbG12sD1fdO439xxZhrqar1AHl"+
                                 "tTThzOAutzPIGcs1BGchOAuB1RCgneBqyFqM+ixqrH3oamlBWFgEenuoGF8GMj4+ifS0HCRLU1Fb"+
                                 "W4uFmQUMnWGSamtHU70DthobaiossFRaUMe7W6trUV1Whj98GIQX9uXi47+Zcdt9ZGQ1XWx9BnMJ"+
                                 "1WuzkWwwTs67l4sQJ71YcecYXtm/CA3du6wSKK4AjDxTN2CkJJsIkGmFK0/VstEYT5W0agKMzJ5G"+
                                 "jaOHi9mMsJAIjAxNXgikpbUNL760G27uPnjll3tRWVoOo0FHVTLBZDTBXGJGpbkSVeVVqGLuqLbU"+
                                 "MEtXYteLAdizLxMfHNDjF7tVuPxaSvFqIfBTyUw2mWHgbywlmLLloKeLXXLzGXz/pUkkZy1BVSSo"+
                                 "EKAuBvKEs5nvS4DCMiC/CtCUAwU8awmukMDCs6Zgo79ZqiwIDw1ngqQbfZmR5sYWvPSLl7B//z+w"+
                                 "b+8+aHVaFBYWorjQBIPBAHOxGWWlZaisqBQvUlFRAQvth4/44qVX5Xjzt/l44fU8XLedIAQpXptC"+
                                 "EGRGBJO/HDNb6GZbmCS32nHTT5jdY8aRTVdJUy8gqwDIoJJmUAQEyyoEMvVArg7IEcCSvRwDGZFP"+
                                 "oKW5U1zM6NhEzC4n9i8SYgP9ftczu7D3nffw+t5fw1BggK5AB32hXmSkwlQBc5kZllKLeJHykjIU"+
                                 "5BVg511e2L1Xhldez8Ge19T43kN0r1XMK6sEVqQEIjuXJAVmBDAsX26swOqddvz5BLN3xgziZIuI"+
                                 "l88hLv0s4jKXkJxxllmdGT8LSFMAyTmAPA+IyyCQpDG0tTtZGlVBkaMUlfQCIDZ7Pd546228G7IX"+
                                 "b736KxRqCimtehgKDWSlGCXGEpGVcrqc4F4lOgOS47Nw605fPL8nA8/slpEZJX78VAYuWxu0XLII"+
                                 "rKwTsj1ZuY4mZHvRzaqwYjvv96czCJROICRxFsFxM+I5TLqI0GRaEt0oBYhI4zkV4K3gGQeE8Ts9"+
                                 "HU4Us8I+n0MuAFJba4e7py8yshU4fNgNaoUa2jwttBotDBoDDHoDTEUmlJhKRHa0+Rp4eabj5tu8"+
                                 "8OSuVPz300l4/JlEPPBkGta6hBJIIBkRsj3BiICoZhuEglKow4y45MYyPPF6O9wChnEybBQewWM4"+
                                 "GTqJk+FT8A6bg3fEIrwiF+ETPQ+vqHkEJgBHAlinJZ5hpdyAfFUeyqspdeeOz2stQak8TvhCLs/F"+
                                 "ic9OQUnaClQF0ORpYNQaxTgxFhpRUrwMRMfPDx9OxZZtHnj8yUT86LFY3P9wPO5/VAqXOyJwyapz"+
                                 "rKyiiq1j4K9nbtlAJbteK7rYpZtK8KOfN+Kg6wAO+wzikMcoPvUaxSc+kzjqPY7DflNw9Z2Ba8Ac"+
                                 "jvrP41ToEg64zSM1sxMD3U2QJafAJiSffwbExysQWdn58HAPQKY8E3nqPGi48iIYDRsmvR4l+hIU"+
                                 "FRVBr87HxwdTcP1N3niAAO7+QRh23BOBnfeFwWVHJFasJyMrCWZN+LIkn2dFyDEiK0XY/ogF7x5s"+
                                 "x8HDPfj94UH8/kgvDnw2ggPHhghwAh8dH8XHJybwZ7cpfOI5g3f/PoO8/CZ0d9oQFx2Dtjam/q8B"+
                                 "sdnh7xOC/FwN/H2jkJqeCpVKBY1Kg/y8fBGMTqMTWdEyfnKyc/HOuyxNbgrAnfdGwOXOENx6exC2"+
                                 "3eqPjduDcNX6AAKhrQqhsVdZKyRLwcWoZIIkX6fGpntM2POOA28daMebB7p47sKbBwfwmz/T/tKP"+
                                 "d/86yIcfxft/G8bvPh3Dq3+cpEfY0dvWQCBxaOtiJfk1IHU2BAXG0PeMiApNQHqqDOocNQpyC0Rm"+
                                 "1Co1CvMKRUkuILi0lGw890IwVt/gA5fbgrDVJQjXb/PB2q1+WLfZAys3eEJytS/Nb1nF1gj5hcwI"+
                                 "MSMKQAbW3qbHY3vqsPc3Tdj9G8r/O068/F4Hfvm7Trz829N45YNuvPx+H17f34fXDgzjubf6YbXY"+
                                 "4XQ4IE1IxQjrra8BsRFIVEQC1cqEhDg5EuPikJWRBWWmUizO8lX5KFCzXSUr+QolEsITcftOD3zn"+
                                 "mlPYsNWXD++LtRtO4cr1HrhirTs/d4fkSi9IrvJn4DP4VxLMagEMmRHBZGLFVhV+8KQZP3/Ziqf2"+
                                 "1eGp1xz4+StNeOa1Jjz9eit2/aoVz77Rhmff7MJzb/Tgp79uhdVWI1YXmYzlqcnprwOxU37jY+WM"+
                                 "hVIkJysRHR4DhUyBDFkGMuQZyKUriaCUechOkSHILxEr15+A5L+OYcWaU1ix9hQuv+okLr36OB/e"+
                                 "jUYgV/B8tQdBMF4EVgQwIjNCcZmCyzbJceuDGjy8y4wHnqnEw89W40fPV+PxF+rx6PN2PPqSg4w1"+
                                 "4rFfNuPR3U7seaMOjQ21KC0pgYqLOi30vV91LVt9A5KkKhj1FmRnaBAeEIGUpGSkJadBLpOLlp2e"+
                                 "jZzMHMTFRCEiJBZvv+2JfS8H4elng/GDB09h5brjuIRgJJcTwHlbQWBXCm7mTTsH6Bp2k6sScemG"+
                                 "FGzcmYOdjxRix0Na3PnjYtz9WBm+93gJ7n7Cgrt+WoHvP2nFvU9V4+6f1eL9g1Wot1VT+guY34o5"+
                                 "lFguTy7IIw76XbpMjWKjhSOdInj5eLMEiKYvSpGUlESWkiFLkvE76YgMjkCAhwdCvAPgG38SAb7+"+
                                 "8DgZAW/3VPh6y/DhH6Pw6M8CcO0mX1xxrT++s8qNAMmMEC9X+yyr2TUUgTVRuPrmdLjcrcCN9+Th"+
                                 "pnvV2HafBrd8X49bHtBj+w9N2P6QEd99sAxbHyzlRKYSddYKqLNVzOw1rNK/GK18nkcaWOFmZ2pg"+
                                 "NtcxmE3w9wpAXEQcIqMiER8dj9iYWCTFJYnAIkMjERoYhFC/YPiFuCHA2xPh3h6QxochIZZCkZwK"+
                                 "Bd1RnpSNlORMuB6WsrCMxiNPJuOBxxOx6ZYodpTM/KtjceW1UVhzoxRrXFJx3W1ZWC/Yd1VYf0cu"+
                                 "rrs9FxvvLMCmnXnYsEODgKBykREhdm0sqb48A/sciEMEUgCLmVlTWQw/H38EBgUiODgYUSFRiIyI"+
                                 "RFxkHGJiYxAXGwcpwUkjpYiKjEIOy395QhpLlkQkspCLDYtCTFgM1S+U7IUiwj+AwP1pwfDxCMMJ"+
                                 "twQcOJCM9/fn4/m9edhytx6XbVbg8s2puOL6RFy1kecbUnD1VjlWumRhtYsC67YrEBpqIhAr5GkZ"+
                                 "nKiwjfzS8QWQhiZkcIhmLKqDKpeu5eUFbw9v+Pv5I4APEuhHUAHBCAkKQah/KOOEqibPgklrgjJX"+
                                 "iTSpDFLGUy7L1bxcA9TKQmTLspBKmYyMjGVMhSLIxxcBnqfg7+kOf29vBHr6IDowgEwmICkhH/EJ"+
                                 "dTj4SQ2e2FOBh54pw46HDbhyi1A9Z+HKremIjtShxlKBTE5OhvrH/zmQRlKVlqpkTVWB3Cwj/DwD"+
                                 "4HnSUwTj5+kHby9v+Hr5clVDkZmWyTGpioOHEo5Jk+DB/4WGxiMmSY40WQ4tm0qnYpWghkqpR45K"+
                                 "j1ylgRMPLd0zFomJjLvYWIT5+vDaPgj2D4Q0JoaSytylSIciOw8ZGaVIkFYjKLwBf/hrA15lrkmX"+
                                 "V6Cy3CyKzhg713/KSFNTM2+QyixuRGamlgwEwdXVFe6u7jh5ggHtF4BEuo4gv4KPJlMAjh9xxXvv"+
                                 "/w5J8Un8jQJpGblQ5euYPA3IYO5Jl+VClpqDVLpCKiVbnipHXFw8PjtylNc8gVAyHB0Ry9mUnP9P"+
                                 "Q7Y8B9pcLRlVEVAu8xYTckEeigqKoBHKI12JmMeEtDDA6aNwcGx8oWq1cNgVEy0VXSI1WYFTp07h"+
                                 "0KFD7Mnd2RuHQRonFZkIYpC7HT0J12PHWCYkUJazGdxyVgLZKDKUw97QxdJhFKUVVg4myBBbZ2lC"+
                                 "It1HKgqGEFOCWHh5eOHYp8dw8MOD+NP+P+HgxwfhdsQNoXRBNWdVGrVGbCGMBqNYtBayCtdr9WJ/"+
                                 "VGwoxvSEMC49y/kwwbAn+TxGOjpOIyqKlCcmI4LBevToUXh6UI3YTgpx4eXjiT/ypkePuiKEOUTI"+
                                 "J4kJSVzhROi05ajm1kLnmQlMsIVube1njVaIPMVyRaBWqqEWVpeNWD6LTa1KCwUZTKW6JfEawaHB"+
                                 "+OzTz/DBBx/grbffwv4P9+O423GEBIQglyybtEV0qWpUVltRWyXMiB1obh/C6Y5BdPZPYIRDks+B"+
                                 "9PcPISgoig19NIM6DIf+/g8cOXKEFe5H2LtnD57ftQsfceUy6SYJsVLRDTWFZjia2tHfO8mLLYir"+
                                 "MzK0yIfVQqVQif2M0GkKvYzQmJWXlMNcakY1H0po0IpMRWLTlq/MFxcmKTEJgYGBOO56HN6nvEUg"+
                                 "CZEJSKAYZLGt0OrMMBZXw1RSiUpuWVTXNfP+p9HaMfIFkPm5RRiN5fjkU1d88pdD+OjDj+F20g+J"+
                                 "SemIiU/GUfYox4+586LJvIgDTc4BDA7NYHx8FlNTnHvNLicnO4dR+QpWy+fqshJtiQiioqyCeyl1"+
                                 "qK+t51SmCQ22Bg4wuMqllWIrbdSzTaDr5ORQyhkzUVFRokqGB4UjlqqXkixjxV2AXLKZp2EbwbFL"+
                                 "SZkNNqtTdOfPGREmiMKKdpweZoVbjHpOvxs5EhW+ZG/oFK2pqRsdnUPoJ5Xjk2cxI+xGsUrgGiwH"+
                                 "Hl/XVNnESlnHoDfpTKI/l5vLWbVa0WBvgLPRidYWbhs0tXGny8HZWA1/UyO2z+YirjjbhAJlgSgo"+
                                 "6VLurTBmosKj6MZ0eyZXeboSOYoCFGiLUUx2yi2csfHZLpjGC2CEwJmaXOJUcRFjNOEs2Oi58+Q4"+
                                 "/zfDpyYBX91dEkqfjtZusdcXglJkgt1kdWU1bNU2tHHnyskxaxeTWYezA7Z6mziVsdXa4Gxywmww"+
                                 "o7S0lBtCOiiVSijSFWQihSIUzYo8hWLBmEphxcCRSyEbPDMHX9baFjS0cdJ/gRh/C2+muctUzvmX"+
                                 "4C5lJo6POPuqs9bBwQ2c1sZWOJ1Ozow74aRKCi5WV0V3Y+Xdx8Gundt4glJZq6xMzEZREDJlmVRE"+
                                 "qiI71wy5Etm5FBAN462inmVKB7q7RzA4PP/tAxFkfWBgGOVltbBWWsUVrxf2Ee3NcDY44eTUustJ"+
                                 "iW5uE13NWmOFnYOPMxzDt3C2ptfpxTFUBcePgospOARpaupFc3OXGA8Wjhutti6c7uIUtJ97kRNL"+
                                 "jNGz3z6Q86QKbtrUTPexN4lTSnudHd1d3aJ1tXWJgBwNDm6WchwruB2BtTe3o6q0CipWBDodJbe2"+
                                 "EfPcZpummAyNLmGUyjgwMIUh2tjYAkYEEMJWHAft37prfd07l9B1epT7gYNsESqgZPmRw6ytZYbW"+
                                 "anVsn/V0mSxWADJWDSr6PIcL3OkRhujiIVBME7YxhIZwnKDGJ5Zff6kd+XcA+Tq0OT7jLAVjamoB"+
                                 "M7RJrvr5ieE3DdN/AyPf9NH+td/9DxwFpJ8yX+lfAAAAAElFTkSuQmCC")),0,$$.Length)))))
#endregion
#~~< ButtonOK >~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
$ButtonOK = New-Object System.Windows.Forms.Button
$ButtonOK.FlatStyle = [System.Windows.Forms.FlatStyle]::System
$ButtonOK.Location = New-Object System.Drawing.Point(137, 402)
$ButtonOK.Size = New-Object System.Drawing.Size(87, 23)
$ButtonOK.TabIndex = 58
$ButtonOK.Text = $TextStrings.Apply
$ButtonOK.UseVisualStyleBackColor = $true
$ButtonOK.add_Click({Ok($ButtonOK)})
#~~< ButtonCancel >~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
$ButtonCancel = New-Object System.Windows.Forms.Button
$ButtonCancel.FlatStyle = [System.Windows.Forms.FlatStyle]::System
$ButtonCancel.Location = New-Object System.Drawing.Point(248, 402)
$ButtonCancel.Size = New-Object System.Drawing.Size(87, 23)
$ButtonCancel.TabIndex = 57
$ButtonCancel.Text = $TextStrings.Close
$ButtonCancel.UseVisualStyleBackColor = $true
$ButtonCancel.add_Click({Close($ButtonCancel)})
#~~< panelMenu >~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
$panelMenu = New-Object System.Windows.Forms.Panel
$panelMenu.BorderStyle = [System.Windows.Forms.BorderStyle]::FixedSingle
$panelMenu.Location = New-Object System.Drawing.Point(-1, 60)
$panelMenu.Size = New-Object System.Drawing.Size(369, 329)
$panelMenu.TabIndex = 56
$panelMenu.Text = ""
$panelMenu.BackColor = [System.Drawing.Color]::Gainsboro
#~~< Label3 >~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
$Label3 = New-Object System.Windows.Forms.Label
$Label3.Location = New-Object System.Drawing.Point(30, 97)
$Label3.Size = New-Object System.Drawing.Size(232, 29)
$Label3.TabIndex = 63
$Label3.Text = "Label3"
#~~< Label2 >~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
$Label2 = New-Object System.Windows.Forms.Label
$Label2.Location = New-Object System.Drawing.Point(30, 82)
$Label2.Size = New-Object System.Drawing.Size(133, 15)
$Label2.TabIndex = 62
$Label2.Text = $TextStrings.FullName
#~~< TxtComputerName >~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
$TxtComputerName = New-Object System.Windows.Forms.TextBox
$TxtComputerName.Location = New-Object System.Drawing.Point(30, 45)
$TxtComputerName.Size = New-Object System.Drawing.Size(265, 21)
$TxtComputerName.TabIndex = 61
$TxtComputerName.Text = ""
#~~< LblComputerName >~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
$LblComputerName = New-Object System.Windows.Forms.Label
$LblComputerName.Location = New-Object System.Drawing.Point(29, 27)
$LblComputerName.Size = New-Object System.Drawing.Size(97, 15)
$LblComputerName.TabIndex = 60
$LblComputerName.Text = $TextStrings.ComputerName
#~~< GroupBox2 >~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
$GroupBox2 = New-Object System.Windows.Forms.GroupBox
$GroupBox2.Location = New-Object System.Drawing.Point(29, 129)
$GroupBox2.Size = New-Object System.Drawing.Size(302, 169)
$GroupBox2.TabIndex = 3
$GroupBox2.TabStop = $false
$GroupBox2.Text = $TextStrings.MemberOf
#~~< TxtWorkGroup >~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
$TxtWorkGroup = New-Object System.Windows.Forms.TextBox
$TxtWorkGroup.Location = New-Object System.Drawing.Point(34, 129)
$TxtWorkGroup.Size = New-Object System.Drawing.Size(232, 21)
$TxtWorkGroup.TabIndex = 65
$TxtWorkGroup.Text = ""
#~~< TxtDomainName >~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
$TxtDomainName = New-Object System.Windows.Forms.TextBox
$TxtDomainName.Location = New-Object System.Drawing.Point(34, 58)
$TxtDomainName.Size = New-Object System.Drawing.Size(232, 21)
$TxtDomainName.TabIndex = 64
$TxtDomainName.Text = ""
#~~< RadioWorkGroup >~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
$RadioWorkGroup = New-Object System.Windows.Forms.RadioButton
$RadioWorkGroup.Location = New-Object System.Drawing.Point(17, 99)
$RadioWorkGroup.Size = New-Object System.Drawing.Size(104, 24)
$RadioWorkGroup.TabIndex = 1
$RadioWorkGroup.TabStop = $true
$RadioWorkGroup.Text = $TextStrings.Workgroup
$RadioWorkGroup.UseVisualStyleBackColor = $true
$RadioWorkGroup.add_CheckedChanged({RadioWorkGroup($RadioWorkGroup)})
#~~< RadioDomain >~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
$RadioDomain = New-Object System.Windows.Forms.RadioButton
$RadioDomain.Location = New-Object System.Drawing.Point(17, 37)
$RadioDomain.Size = New-Object System.Drawing.Size(104, 15)
$RadioDomain.TabIndex = 0
$RadioDomain.TabStop = $true
$RadioDomain.Text = $TextStrings.Domain
$RadioDomain.UseVisualStyleBackColor = $true
$RadioDomain.add_CheckedChanged({RadioDomain($RadioDomain)})
$GroupBox2.Controls.Add($TxtWorkGroup)
$GroupBox2.Controls.Add($TxtDomainName)
$GroupBox2.Controls.Add($RadioWorkGroup)
$GroupBox2.Controls.Add($RadioDomain)
$panelMenu.Controls.Add($Label3)
$panelMenu.Controls.Add($Label2)
$panelMenu.Controls.Add($TxtComputerName)
$panelMenu.Controls.Add($LblComputerName)
$panelMenu.Controls.Add($GroupBox2)
$CRenameDomainform.Controls.Add($lblCoreConfigTitle)
$CRenameDomainform.Controls.Add($lblDescript)
$CRenameDomainform.Controls.Add($PictureBox1)
$CRenameDomainform.Controls.Add($ButtonOK)
$CRenameDomainform.Controls.Add($ButtonCancel)
$CRenameDomainform.Controls.Add($panelMenu)

#endregion

#region Functions

function Main{
	[System.Windows.Forms.Application]::EnableVisualStyles()
	$Global:Shell = New-Object -comobject wscript.shell
	FormLoad
	Get-Status
	$CRenameDomainform.ShowDialog()
}

function FormLoad
{
	$CRenameDomainform.size = New-Object System.Drawing.Size(371, 467)
}
function Close{
	$CRenameDomainform.Hide()
	$Formcomputer.enabled = $true
}
#*****************************************************************************************************************************************************************
function OK
{
  $RebootNeeded = $False
  $ButtonOK.enabled = $False
  $CRenameDomainform.Cursor = [System.Windows.Forms.Cursors]::WaitCursor
  $Temp = gwmi Win32_ComputerSystem
  ##Rename Computer
	if (($Temp.Name.ToLower()) -ne ($TxtComputerName.Text.ToLower()))
  {
    if ($Temp.PartofDomain -eq $True)
    {
      $credential = $host.ui.PromptForCredential($TextStrings.CredentialsNeeded, $TextStrings.CredentialsPrompt, "$env:userdomain\$env:username", "") 
      $RetVal = $Temp.Rename($TxtComputerName.Text, $credential.GetNetworkCredential().Password, $credential.UserName)
    }
    else
    {
      $RetVal = $Temp.Rename($TxtComputerName.Text, $Null, $Null)
    }
    switch($RetVal.ReturnValue)
    {
      "0"
      {
				$RebootNeeded = $True
				#Output to Logfile
				$TextStrings.LogRenamedComputer -f $Logdate, $TxtComputerName, $CoreUser, $credential.UserName | Out-File -filepath $logfile -append
		} 
      default
      {
        ErrorForm $RetVal.ReturnValue "7"
      }
    }
  }
  #Join Domain
	if ($RadioDomain.Checked -eq $True)
  {
		if ($TxtDomainName.Text -eq "")
    {
      ErrorForm $TextStrings.NoDomainEntered "7"    
    }
    elseif ($TxtDomainName.Text -ne "")
    {
      if (($credential.UserName -eq $Null)-or($credential.UserName -eq ""))
      {
        $credential = $host.ui.PromptForCredential($TextStrings.CredentialsNeeded, $TextStrings.CredentialsPrompt, "$env:userdomain\$env:username", "")
      }
      $Retval = Add-Computer -domainname $TxtDomainName.Text -cred $credential -ErrorAction SilentlyContinue -ErrorVariable errorVar
      if ($errorVar)
      {
        ErrorForm $errorVar "7"
      }
      else
      {
				$RebootNeeded = $True
				#Output to Logfile
				$TextStrings.LogDomainJoined -f $Logdate, $TxtDomainName, $CoreUser, $credential.UserName | Out-File -filepath $logfile -append
      }
    }
  }
	else
  {
    if ($TxtWorkGroup.Text -eq "")
    {
      ErrorForm $TextStrings.NoWorkgroupEntered "7"    
    }
    elseif ($TxtWorkGroup.Text -ne "")
    {
      if (($credential.UserName -eq $Null) -or ($credential.UserName -eq ""))
      {
        $credential = $host.ui.PromptForCredential($TextStrings.CredentialsNeeded, $TextStrings.CredentialsPrompt, "$env:userdomain\$env:username", "")
      }
      $Retval = Add-Computer -WorkGroupName $TxtWorkGroup.Text -cred $credential -ErrorAction SilentlyContinue -ErrorVariable errorVar
      if ($errorVar)
      {
        ErrorForm $errorVar "7"
      }
      else
      {
				$RebootNeeded = $True
				#Output to Logfile
				$TextStrings.LogWorkgroupJoined -f $Logdate, $TxtWorkGroupName, $CoreUser, $credential.UserName | Out-File -filepath $logfile -append
      }
    }
  }
  if ($RebootNeeded -eq $True)
  {
    $panelMenu.enabled = $False
    $ButtonOK.enabled = $False
    $ButtonCancel.enabled = $False
    RestartForm        
  }

  $CRenameDomainform.Cursor = [System.Windows.Forms.Cursors]::Default
	$ButtonOK.enabled = $True
	Get-Status
	$CRenameDomainform.Update()
}
#*****************************************************************************************************************************************************************
function RadioWorkGroup{
	$TxtDomainName.enabled = $False
	$TxtWorkGroup.enabled = $True
}
#*****************************************************************************************************************************************************************
function RadioDomain{
	$TxtDomainName.enabled = $True
	$TxtWorkGroup.enabled = $False
}
#*****************************************************************************************************************************************************************
function Get-Status{
	$Temp = gwmi Win32_ComputerSystem
	$TxtComputerName.Text = $Temp.Name
	if ($Temp.PartofDomain -eq $True)
	{
		$RadioDomain.Checked = $True
		$TxtDomainName.Text = $Temp.Domain
		$TxtWorkGroup.Enabled = $False
		$Label3.Text = $Temp.Name + "." + $Temp.Domain
	}
	else
	{
		$RadioWorkGroup.Checked = $True
		$TxtWorkGroup.Text = $Temp.Workgroup
		$TxtDomainName.Enabled = $False
		$Label3.Text = $Temp.Name
	}
}
#*****************************************************************************************************************************************************************
function RestartForm
{
  #Confirmation Dialog
  $Flag = $TextStrings.Warning
	$Message = $TextStrings.RestartPrompt
	. .\Common.ps1
	Message
  $pboxWarning.visible = $true
  $frmMessage.ShowDialog()	
        
  if ($ReturnFlag -eq "YES")
  {
    $Temp = "Restart-computer -force"
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
function ErrorForm([string]$Messagetxt, [int32]$Font)
{
  #Confirmation Dialog
  $Flag = "Error"
  $Message = $Messagetxt
	. .\Common.ps1
	Message
  $btnOK.visible = $False
  $lblMessage.Font = New-Object System.Drawing.Font("Tahoma", $Font, [System.Drawing.FontStyle]::Regular, [System.Drawing.GraphicsUnit]::Point, ([System.Byte] ( 0 ) ))  
  $btnClose.Text = $TextStrings.OK
  $pboxError.visible = $true
  $frmMessage.ShowDialog()
}

Main

#endregion
