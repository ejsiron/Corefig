Import-LocalizedData -BindingVariable TextStrings -FileName RemoteDesktop.psd1
#region Constructor

[void][System.Reflection.Assembly]::LoadWithPartialName("System.Windows.Forms")
[void][System.Reflection.Assembly]::LoadWithPartialName("System.Drawing")

#endregion

#region Form Creation
#~~< RemoteDesktoplSettingsform >~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
$RemoteDesktoplSettingsform = New-Object System.Windows.Forms.Form
$RemoteDesktoplSettingsform.ClientSize = New-Object System.Drawing.Size(405, 275)
$RemoteDesktoplSettingsform.ControlBox = $false
$RemoteDesktoplSettingsform.Font = New-Object System.Drawing.Font("Tahoma", 8.25, [System.Drawing.FontStyle]::Regular, [System.Drawing.GraphicsUnit]::Point, ([System.Byte](0)))
$RemoteDesktoplSettingsform.FormBorderStyle = [System.Windows.Forms.FormBorderStyle]::FixedSingle
$RemoteDesktoplSettingsform.MaximizeBox = $false
$RemoteDesktoplSettingsform.MinimizeBox = $false
$RemoteDesktoplSettingsform.ShowIcon = $false
$RemoteDesktoplSettingsform.StartPosition = [System.Windows.Forms.FormStartPosition]::CenterScreen
$RemoteDesktoplSettingsform.Text = $TextStrings.WindowTitle
$RemoteDesktoplSettingsform.BackColor = [System.Drawing.Color]::White
#~~< PictureBox1 >~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
$PictureBox1 = New-Object System.Windows.Forms.PictureBox
$PictureBox1.BackgroundImageLayout = [System.Windows.Forms.ImageLayout]::Center
$PictureBox1.Location = New-Object System.Drawing.Point(1, 1)
$PictureBox1.Size = New-Object System.Drawing.Size(55, 53)
$PictureBox1.TabIndex = 50
$PictureBox1.TabStop = $false
$PictureBox1.Text = ""
#region$PictureBox1.BackgroundImage = ([System.Drawing.Image](...)
$PictureBox1.BackgroundImage = ([System.Drawing.Image]([System.Drawing.Image]::FromStream((New-Object System.IO.MemoryStream(($$ = [System.Convert]::FromBase64String(
"iVBORw0KGgoAAAANSUhEUgAAADIAAAAwCAYAAABT9ym6AAAAAXNSR0IArs4c6QAAAARnQU1BAACx"+
                                 "jwv8YQUAAAAgY0hSTQAAeiYAAICEAAD6AAAAgOgAAHUwAADqYAAAOpgAABdwnLpRPAAAEwFJREFU"+
                                 "aEPNmgl4VOW5x0efa2mLLCIo4FKt2sXHrVKuV+tStWrd22LxVtFKUfFabaVYLgpI2CF7QkJCErLv"+
                                 "+75M9kz2TJZJJvsySSY72fdkkvzuewZsuYA+pRfL/Z58z3dyJjNzfuf/Lt/7nlyFDNU/NeRtXKVS"+
                                 "yc//i6GAfNWYn4PZqTm6egapbTJSWdtKbXMPHb3jDA5NsTAj71z4uk/4172muthXzc/PMzk1i7Fv"+
                                 "lGRNGU7eoRxzD8HGKwyX0ATCU/LJ0bVi6B1gYHicuTkhvsLjQpB5ON0/QmZuGRa2p9j6+RE+s3TC"+
                                 "yjOc48HxuEWm4RqbhVdKHokl1dQahxgenWHuCitzAcjk+AwxyXnssLDlzxaW7HP2w8YvEtfoTPyS"+
                                 "cvFNKyEws5SALC1h2ZUk69sw9E8yMSN3QH6u1PhfIOMCkZevZ/O2L/jgM2v2nfDFOSQRz4QMAjK1"+
                                 "+GWVEqLREV5QTlihnqiiSsKLqslv7qa9e5S5mdkrxcHfQcQ26g3d7DzszHt/3c9eRx8cgmLxTMox"+
                                 "A4QX1RBbUktEWS0J5fXEltURXdFAbHmjqGJAb+yjq2/gyoPMTkFEXAZ/+NMudhx2wdYvRiAyiczX"+
                                 "EadrIaWmnYy6HtT1HebjJIlgKdVGkqvluKaVoo5BKiprrzCIqNHbN8xH/32U93ccxcYnmFPxGUQW"+
                                 "VpFY3Upe+yDarnGKuobJ6xwkv32IdDGnnIY+Uho6SWvoorhjhGKtTsL1lTEvs2mZTHNotHo2bv2M"+
                                 "T4+64BKuJiS7jKTKdnLaR6ganKZlbIGm0QVqhmao6h8jv6uf7I4+MttlNQxS0DlCWkGp5JfJK6KK"+
                                 "GWRifBoX73De/cSCwydDCU7Xkl5jJFfufsOwie5p6FGmmF+3zLox0A3PUtY1iaa+E02NgQIxrbQC"+
                                 "Hd2dvWYQk8nE/Nw8CwsSl/8F0cwM0m4c5DNx8g8/t8I+II7IIj05LX3UDpnompzntGTw02IxvQLR"+
                                 "LmuzZPv60SkqOsbJzismKTGF7LQ8MrNyKBHzaqlvxNBioLO9k77uPoYGhhgfHWdmSj7oG8qdZpCq"+
                                 "ulY+sbDjMyt3XCNSSNAZKO4ZpnV8gQEFQNQQYRAusypdE1Avqmi7hsjOKeLP27y48x4bXnrNRY5j"+
                                 "2Lk7Dhu7ZNx9EoiOUqPJLaGkpAK9robGugaaGxrp7jIy2NdHf18/I0OjTIxNMDMjoAqr7I3mZudk"+
                                 "97OAssv4R4YZpLrByF8PHGfvcR884vJJr+2mUiQwjsOggCgACtCgfMmAzG4BaZDXysT0cnML2bDR"+
                                 "FtWSAFTXhcpMRrUyh0U3FbDix8XcvL6UB59t46GXDPzm/RqcTjYSGdOEOssggAby8+soL61GV6Wn"+
                                 "1SAqGoz0GbtEyV5GhkeYEuVnp2eZnplmfnbebK6TU+KH5/GZQfSNkj8OuXLQOQCfhEIyG3vQ98+Y"+
                                 "/UIxqYGzavQpMDLFNagTEJ04eGmhlv/4ub2A+KNaEXIWJAvVjVpUaxpQ3dSK6tZBVLdPc/vTcDwE"+
                                 "csoWSMyeISJ1Cp/ECdyixnEOG8E1bACfyH5C4ntJSDVSWNSEob6ewe5OpqdHMc2YzEC5WbnMnpd8"+
                                 "zSCG9j6OOQdx2DUMz8QC1OLo2r5JM4iiRJ+o0C9bkI4RE80SwZoEolZRpK2b9NQUfnDvcVTXeqFa"+
                                 "Hojq+gSBUKNaXSBrJaq1jahuMaK6bYhbnpgmKF7MVN57elCU7ZLvltnSKWuH3JxWsY62ebmx8+TV"+
                                 "z5NdsUBU8TwhWQsc9B+iWrZDU8OjODo6MjgoH3DOMIP0DYzjG6bG0j0M/6RCdE2n0Xf2o2/voqSx"+
                                 "iWZ5XdfeQ6Fs4fU9o9SNzNE4Ij5S30xkWByrb3cURRSQYFEkWpRJRbUqTxRRQFpQfU9Abh9i5fpJ"+
                                 "bLznMBrF7+Tiu7tF3T7xO5m9/XIsG4Muub4eWXuHZD177vQopBYr4L30dPXgdtKN8TG5G+eDzM4s"+
                                 "UKCt5+CJYDIL6ugTR25oHaZreIasDA121k7E5JWTpW+luHUUbc8Y2uEFtKV1eLsncesP3blmmYCs"+
                                 "UHwkSnxEFLlRI6qUobq5TkC6RZF+Fv14mvf3SnCpB2ObRD9Robld5llFJMdilOjdKqsCIQHPrFyb"+
                                 "HEfnzWEaG6S9pZ2oyKgLEq9KKYxmZubolq27lWcc2flV5JYaidTUE5hSzQHbQP7zzc2ckCQZmlku"+
                                 "2V5PQmktoQXVlJWVY2kdxQuvhrPqLh9RRHH4CAFKEkWyRREBWasX02oXP+nm6rvGeeZtEykaMc0m"+
                                 "qFFms4C1QJOYlex8qBPABgGsFdUUs+vukXNyPjh9hpnRAUpzS0lXp5sd/wJFlAg3PCJFVF41e+29"+
                                 "cA1JIDAxD7tTcbzy+sc88swGLD0DcQhMwCU4GaewRDHDYCrLNey28GPD28mseyKCq68TVZbGiJ/E"+
                                 "iyICsrZQVgFZI35yc5eY1yj3vTiNX7QSYMTH9FBRI2uDBI46OZa1QqAqBLDKIH8jkE0CUS6/h6eO"+
                                 "MTnUizpBTUFBgTnhXgCinFDidbtxmIyCJvbZ+XDYJYCT4al8sOMgDz/7G7bvt+Yvh235ywEHPtpz"+
                                 "lG0WVtRoC9m82UFmIpveTmPZWkUViVwrFD9JFxPLFZByiVz1Yl6dYl69rHpkjL1O4sxlkFWOedVU"+
                                 "yKyUqZMpcIUCJ9UBhQKnE5gUeT02Y5DhHgNhQWGSi+QunDf+to1XVJmYkO2IFEn+YWlsfH8H72yz"+
                                 "4HdbtvHky2/w5n99yrvbLdj8yS5effs9/vjJdvTFJbz8qgO/eyuBN99N5fZ7TonTKzASvcxOnyIw"+
                                 "4vRrqwTGICbWwbX3DfD7nXMSfkGdJxeZD8m5MotkikOnaiFd4NJKZQpAnsD4p0FiziADRgM+Hj7m"+
                                 "XcNXgpxRBaam5qmU+mLPIWfe2LKT17ds5/mN7/LMa7/nlTe2sO7xX4hP/Bp7J1eq8vL4xQtO/ObN"+
                                 "WN55P4WHn5JcstRNpu9ZGMVfxMxWKuoUi/PruOa2RvGTHkLiFohJNRGZLOVDikw1RGVApADGZ4oC"+
                                 "OeLgAqgWOLcwyMg5TU+D+K2YeL8S4r5KkXPPL8yZaDO0S1LKxc0ngqO27hywdOCV115n06Z3zH86"+
                                 "PztBRGA2P3vMlld/G85GUeXFDbEsXeN8BmaF9znKKCCSJFeLOreUc/eTLbj6jhAUMYFXqAnf8Dl8"+
                                 "IhYIjJzDPxYCxYcCZA2Kk+MksPQSk8vtpa2mjmDvYOYnLty2XLSL8jcoiWjj41MM9EtQl+HhE4al"+
                                 "jYP52NgkMkswuPMea17+Vag5cj336yjW/kAcfokkyOV+Z/NK+Jlsv0JC8g1KJCtl9bpa9tsP4+I3"+
                                 "znGvSZz8ZnH1M3HCfxb3wHncg0SFYPk+2QV4RsCREwKikXaURMkgf3nxItuvrwc5R6aZaRNevkES"+
                                 "qarMZ2t1OqyPhbDyVmuefjaAR58K4OfPBfGjn/hx1VIl04u/KOF4RdgZf7lOMTGBWZXFt7+v5b1d"+
                                 "vRx06ufw8SEOn5jgiNMYh1ymOXJyEivXBazcTVi5zUhKgH2201K0NVKcX0x0mMh1kY7NPwwyOz0v"+
                                 "NlzI3OSZCrBCq8VifzA33GLLwz/z5P713jzwkDt33O/Dd25UzMtVYDxlFWWuU/ZgkWfCsihz9U0a"+
                                 "Xn3XyOdHuvn0UB87j46x49gQu2zGpfU0yl67KXbbTLHHwcQu6xm+sBmmqrKBzPRM0hLF8y8yvhZE"+
                                 "Cclzk9PU17VQ1thGUHIBXl4+ktG1NOvz+HibL6tvc+aB9V7c9cBJ7r7blTvvdmHZmhNcda2iiouo"+
                                 "4oFqmZIoz8KsSOCa1Wqeeq2ODz8z8NHOXj74fICPRaE/7hnhj7sH+XjvCB/tG2P7gQm27jHxhVUX"+
                                 "dfomMlIy0CvJ55JAJN8YZL8VpSkiIq8UtZTCgclZbDtgwwcSerPV0Tz9ogMrbrLnth85s/oOJ276"+
                                 "ni033GzPdTfYcfW1NgLiIIoIzBJR5rpzlFkZx12PlbLhvQYJ661s/LBZppFNH/Xyxp+62PRxP299"+
                                 "cpotn/by2w+HsXYyotdLEyQ2lg5ld3kpINPTcxS1dJHX2CWVoHRPatsEqALnmEQOObqQEZ/Egz+1"+
                                 "ZulKK1bKxV+/xsYMsHi5Fd9ZYclVSw6jWmwtU5RZIjDLBOYcZb73k2ye/V0FL71dzXObGnj5rRZe"+
                                 "/H0Lv9rczst/aOdXW7rYsLWDZ97qw9KpleracmJjoulovUQQkxQzFXVG6tsk7A2OUNcnzYWyJlKl"+
                                 "0nM55Y+XS4jc/aOorjnMouWWfGf5Eb619JiocBDVdw+gWiSvfdtSQKToUmAUZZaJmSnRTMxs5V1x"+
                                 "PPRcDo+8UsrPXqnk4ZdqefxVPY/+up4nNjTz89dkvt4svzfj4FpJg76S+Mh4envO9ATOH1/tIxLi"+
                                 "unul/VNejaaojJisfDzCpYEdp8bfLxDn49788nk7HnvCkfvWHWXxyn1y4aLCtwRkkayL9stUjo+c"+
                                 "VUbMbLHALJX8sjSAJWsiuWt9Cvc+nsmPHs2VNZ97n9Jyj8z7nq7gweeqeOC5Gn76gg4Pj0p0Oi3x"+
                                 "YfGMyA29NBD5ayXTz89L3S655LQUCh2dA4xPTJCalIiznT1HD9lgaWvFwX0O7Pr8FJ/v8eXNN5y5"+
                                 "Z52dRDNHlt1gyb8tPsjV3z3MVd+1EhCBUQLAYgkG13uz+scx3PpgHGvvTeH7D6Zxy/1q7vhpDnes"+
                                 "z+POhzTc8e8lrHumAN8ALcUluSREJzAqhdUlg1z0HXKysqyS2PBoQnyDpY1ki4OdDSednfD3PEVM"+
                                 "cLB8YQRuzt5YHQ1l9xe+/PKlkzz6pA/3P+Qpeeck11zvwTUrvFi0ypvlNwez/PZQmTGsujOGFT9I"+
                                 "lJIgkZV3q1n5wyTWPZlOeHQ+2uICNOkaKXmlbL0k0/oqCjk/J/XL/OwMA1Ju9ki/uLKijKy0LOKj"+
                                 "ZPt/yhtPV088XE7i43aCkyecsDlqg5PdSRyPubFjpw8ffRzExtejefyFGO57JIk1P4yT3BMmYJF8"+
                                 "a2Uo314VxLVrw1l8Yyjrn0wQJy8iP0eDtkh7Qa3+5WX+wwnxolxKj0rJsrJOTUwxMTxBV1snBiki"+
                                 "KktKSJXIFh4QIkDSvTzuKDDHcLS3wcFWVLR2wMHBHVvrQI47pePtX8mm94p4/MUSHng8mzV3J7Dk"+
                                 "1ggeez6RuJhcMtVp1FTWYJJ94GVT5IIPUoAk4StKzU3MMT06jWnKxIKcn56Ypaa6hryMAk6dOInV"+
                                 "gUPYWtpywtqeEw6OBJ9yEzMNIzE6TLJ2gpTWmaiTSvDw1LP/SB1W9lJip+XLuRQa6qXy+oo21/9N"+
                                 "kXOJlM7ogrRITXIgAIMDgzTWNpKRnkF4eDhhfmF4uHlge9Sa/bvkscWunVjs/QJHG3tzMyHE34fo"+
                                 "8FjiQuNIjYuRhJtKZmoGaeoccjKzSYiLp7lFqqwvx8X6Wl/jDpf80pw0xPulwa3U1cFBwYSEhhAe"+
                                 "FE5QYBD+Af4E+QVxysMTe3t79u3exwdbP2DzO5vZumUrFl9Y4OLsQlR0lETGVFKSpRWbkUVmWhrZ"+
                                 "6dl0G7vNzTnF4efPe0J2+RQ5i6xk3sy0TLHrONTxatQparLUWWSkZZCRkYFGujJqtVrusDixKODr"+
                                 "7YuTrRMWuy3Yvm07+/bsw87OjkDvQKLCo8iT4k1bWISutJK21jZpI/UyJGXF9JjAmP4uy+UFEavK"+
                                 "zc6VKBMrJpGGJlVDZmYmhfmFlJaUUqGroKqqCl2FjkJpteZk55hNLyUuhcjQSHw9BMrJCWdHZ9xO"+
                                 "uOHt6U1sfCw5GdIcL9Cafa2lvsUMMzY0xsy08nz8zLisIEojOlVsWy3ZX5OmIS8zj1xNLpVyN+uq"+
                                 "6miU5rWh0YChziD93nKK8ooo15ajydKQkZVBYmwioSGheHt44yhRzt3FnbCAMOJj4klPSzeHXwVG"+
                                 "6fIP9w9jmvx7BLusIEo/Vrmo5ORkc+2Qn51PkZhFZWUlTXVNdMkm1NAmIA3yzLFCb1ZJgSrNLyUn"+
                                 "V5w6JYdo2RiGhYTh5+0nvnQKvwA/wkPD5dFFEkX5ReYb0tfZx9jgGCYp9r4RRZQPNTRLl12SV25u"+
                                 "LiX5JZRLeVpfXU+9NKMVNYzNRrMy1fpqKsoq6GntoUEeNWSoMygtKkWTqZHoFU1ESAQJMQmkp6ST"+
                                 "Js5ekFMgjyX05g7K+NA48/LchnNSymVVRAFRHua0Sx+0qEDMpqQcXZk8+KlpoUlaiy1NLVLrG2lp"+
                                 "bDGD6Mp15gtTzisXmpaSJvkmj7ioOPPN6JVHC92yczDUG2iWPvOg7PdGBkbM+epciMvuI1/KrDyg"+
                                 "mZyepLGxEV2lTsrUKhoaGsyKKElNr9ebHV4xLWXfVq2rNtfjySnJ8sSrhKGeoTMfpWxapcRWuibK"+
                                 "zkFJuguzElEuktwvuyLnJ56pSdm6DE7QLu2leuleK2bU1NBEmzR5G/QNVEuZUFtRS0dHB+Mj47Ib"+
                                 "+Of+F+QbB7nkjPpPvuF/AAvmFy6yNDW6AAAAAElFTkSuQmCC")),0,$$.Length)))))
#endregion
#region$PictureBox1.InitialImage = ([System.Drawing.Image](...)
$PictureBox1.InitialImage = ([System.Drawing.Image]([System.Drawing.Image]::FromStream((New-Object System.IO.MemoryStream(($$ = [System.Convert]::FromBase64String(
"iVBORw0KGgoAAAANSUhEUgAAAFcAAABNCAIAAABc52/GAAAAAXNSR0IArs4c6QAAAARnQU1BAACx"+
                                 "jwv8YQUAAAAgY0hSTQAAeiYAAICEAAD6AAAAgOgAAHUwAADqYAAAOpgAABdwnLpRPAAAAAlwSFlz"+
                                 "AAAOwQAADsEBuJFr7QAAJHZJREFUeF7tnHd8FHX+/yegKIiABKmC/Dx7OT29s5zinZ5duVMBO0VB"+
                                 "BARRLCA1AZKQTnrv2c3uJrvJpvdk08smW7LZ3rO9957M970J6J1H9XcH94fzeD3mMfnMZ2fm/fy8"+
                                 "3+9PmYEQkcqB/LaJ1I7fhPxqBGKNU3JOLjiekUTjkmiDf/7qy16XHyJiteNqBaYKVfZxuZ4p04/J"+
                                 "DSy5ga80i9RWntLMEGup47IxsUascUg1LjDpai9+XepfHQWwX6SyC1Q2odrMlql6mYK2ITq5e5jc"+
                                 "NdzYP9o6MtbHFrGESsGEjsqbGJcaJgze62LV1d4U+cmZL3sArj5tv5Uj0/XSxsnNnYVl1Sm5mKis"+
                                 "ktOZmKgcXGpZTWXH4KhIIdVaWEIZlSvlKaxyveeyV77uFZDzsf1TkF/iwDEu141JNe399MiErI92"+
                                 "f/fZN0d2H4o9Ep8TmV12JrsiKqs8MosQjyXXDTDsbp9YpaXQeXB9qdZ1NXe5kif5D9e5IgpgBvgY"+
                                 "U6ziKvRFVc3v7fzmrY92fROeHJaSH5GBS8BUp1XUZlc15tW159W15dW2pRBqM+u7RCabymxtGhyT"+
                                 "6dyy/20QiFQLbXUpyXTQkg6+0sTkKw5FJK3/eNe2/YcPRaefTsfFFZan4atzqltya1oL6juLWvqK"+
                                 "WnoxncOlnUO5te0lnYM8vdliszcPsyCbTui94PmXvd11qXAZCnKdW6SGXGChsiT7j0S+/v5nW/f9"+
                                 "eDgm80xOxdmymjRCdQ65qaCpq7Cpu7ilD9tJxXQMYSlUEL5nJLept5HB1Tg9HJmeK9cDSqnOdV2M"+
                                 "vOxNL+cLGpdM7xrhy6OS89a9+f6GbV8fjEqJzMYmYqrTSXX5dR0FjZTi1n5s1wioDIzvo+N7abie"+
                                 "0YrBMUIfvaRzqE844fRPtgzQ2FKDxhK47ANdlwqXogCxIFbbpVp7VXPXq5u2vr31q71HYo8n5iaU"+
                                 "VmaRmyD+S9oHS9oGwAUI/YzyfiaISB0nDk9riEWmcUso1JoRts4/2dxPG+HKJwxuuOZ1sfPSN0Vk"+
                                 "OucFJYdyrUuqc/TRecciEv+y/oO9R+OOn82JzsFkkhqLmroh/nG9NGhw0jCbRB2vHGFXMwVkBo/M"+
                                 "4M+ohimoHOVU0XgDKrNQb+1jcFkijcrsvdgdr2M5AtZeUBN6J0y0hEpLFqbyxXc2f/jFd4eiU2Pz"+
                                 "8WnlNdAXYCgj0OBgcx1H0ipUNPFlcFDPldTD/p8E5VUMfjWdp0dRyhBzhCXV2SYvdsfrWI7I9a4L"+
                                 "S+eU6OwdA6z9B0//df2HXx1LPJGcF1dCyqnrhORHGmGDtS18eZtU0yPXdcm0bTJtu1zXLtVA4T+r"+
                                 "iglOwVf7JjsHmCPjMp196qJ3vNiT/PfLkQm962ISqS05uKqNn+57b8fXh2PSY/LwGcT60o4BcH5o"+
                                 "drC/V2Wi6h00g5NmdA7pbH1qM5RAObAAB2nhydqEinq2uIEjkbgn69r6hhkCgxO9xB2v16mLUgAE"+
                                 "0MuHx6a/uGHL5wfDw5JzU8qqChu7icOseq60U66jGhwjBifP7hU6/CCO3Uu3eKh6e4/KBE7RKla1"+
                                 "SdVw0CRRd8h1St8UtqG9h863ev4nKSgMrguKqzC09zL2/XDqb9A9hiVG55Xl1LThe2h1bDFlQj9q"+
                                 "cAgcPqHDK3f5Jtx+hdsvcfn5Tj/X5oVT3Upjt8rUASCYvLZRVjtXLrB5c2rbSO3DMo1daXQrjV6V"+
                                 "yauCvdGjBBncM7rYw/y3yxGlwXVB8ZVGLLlt65eH3tm690hMdgqODOMCyPktYuWQwcF1BI1XeXwK"+
                                 "d1BKt2/C5ZO5/GKnn2FyDetswyZn25iwsam5p7N2mNEjULC7RymjjD6ZXDihVkyo1GK5TjyhF08Y"+
                                 "pUqzXGOVa+wyrUOhnwZk9EzLfU7nGF34OS/2/FdVflEKAqUhpYT00Z4fPv36yOn0wpyqRixlGPrC"+
                                 "LoWeYfGIXH6wPGi/xw+aYQFcIDTg7JjZPWxyddDHG6uJeExRblZRbWUpdaBZKOhmcyi00c5xBmV8"+
                                 "rE/AG+JxRyTica1GqNXKVDqFzqjRGQ1KnUmhsyr1doXONqG1QW+lMDh/8pegK533nasy9RKVL0qB"+
                                 "LVWfScd+sufHfcciz+TiCuo7ygeYDWzJoMbCc/jkrnOWq70BrTcwA2LC7RM5IUH4eM5Av8ZKE/J6"+
                                 "Oup37MpYuCzuz8+f/Whz6Z5D+B+jcJHR+IxMPJmE62yr6u0kMkYaRfz+CQlVJR9WyYakQhqHR+Py"+
                                 "2SKxWCQRSaQSiUo9odWp9Ga1wa4yOJT6GTkVMwpGNBz8f3kK8rPj/eSB0wdAITqj7OM9h/Yfi44v"+
                                 "rC5u669hCSkSFc3kFLsDSrcXzNZ4Az9J7fHL3X6Rw8c32XlOX4/KJlLx+vpJb30ciSDRCJKDzMpF"+
                                 "ZpUiIThkTvmspeRFa8vXPl7/whukT7aTt31F3XdUEJ3CjEoeyygaK6vrr29r66J0jYxQ+dygFFKG"+
                                 "Ws5QK7gqpUwuk8MmVWikCq1MbZDrLHKtWa61qACNwXUxcy5djqhN7guKI9OcScds/Sr8YFRaMrYa"+
                                 "kgJQgHAYt3qm02EwBGYQgC+ofuELrkCbzMwUUWtJpU+vS0BCkpBbC5FFOGRBJTK/FllIQZYNIUsH"+
                                 "kBvFN9wgu3mu5OZ58rnzJ25dqJh/j/aDr9SR2eqILG14siEi3RSVqY9PZxTiR0uJtPIaZlMvu4fO"+
                                 "GGPSuByWUj5m0bPtZqnLovK7tX6vw2qzWexOm8NpdXrMNpdaZ9CYPWoT6MI2/lR+KQpRqaVb9p08"+
                                 "dCYzBVeDoVCbOBJI/uxpCpALf+kLXr/C4xe5AmyHn+ue7BHoBcL+0uLSO36XhszKQUKLkNvLkNBK"+
                                 "5PYG5PY25PYeZMUoctsYsliMLJEgiyeQRQZkkf7Wx5yns31MYYDG8zQNuqu7pzAtk7kkRzrOFptv"+
                                 "jcrRxxYqz2IUaVhFJk6ZW6HGkTmNbfTOPk7PAJfNE6o1CrtFYbPqvP5Jm8Pe29vb3Tco11h0Vv+l"+
                                 "QSAas/uC4isMZ4uIO76P+j4iLRVfO50UxBSlcdzu0wRQA4pqA1Mqb0AXmNJPokroKe1usc0ltLqB"+
                                 "As89NSLTiyX9yYk5c+ZFhczOD1lchCzBIKEk5PZ6ZGkTspSCrBhBVg4ha9nIXVxkrQy504zcYZj/"+
                                 "oCUqP2Bxof7JSaUxINejQjXKlqKjXLSXg1KY/rYhb0O/r6bHV9HuK2r051Ra8yr0eURdTuUEplGB"+
                                 "q1fn49T17UKzzeJyuqoqKzPT0/gSFQxSLmbmTDmiNbt/IZ3ZDYKektDY+f2p5G9Pp2WQGmGyXM0S"+
                                 "9kq1DLWJpdJzdCatJ+BBUZggSC0OttIwpjKwDVa2yQkUGDYvU6EWCLqPHUlBkBOzZhecp1CBLKlF"+
                                 "ljUjy9uRFf3IimFkDQdZy0PWyJHVZmS5Hlmh337YJpAHXF5UoUc1JlRnRvUW1GBFTZ4pkwc12FCt"+
                                 "FVWZUKkW5SlRmgjtG0c7mVMddG8bzUfqdJ/KcmTgBWq9xuVyEwiE+NgEnkhp96L/buY/l1yUAluu"+
                                 "6x1hRScX7Q9PSS1vKGju65WohEo9VyQfZHLbBmhD9HGNTicwObrHxZ103qBENao2MkxOjjPQq7WN"+
                                 "ScRcJmXvV+kIEh4yO+c8BTxye/W0LzQiKzqQFUPIanAEPrJGgqzRIasM4A6vbNFSqF6TA5WoUZHq"+
                                 "Z8GfMi0K3qE0oGojqjYFiVgckyZvwOibsrlQuxs1ONDqAWAhM1mNNqsFg8UWFGJEkD/dl6VgcWv/"+
                                 "VTqLB8SWa1gSVXpR5e7DcWdLa2upbIM9YLY4ZRNqjd7IZrMzs7JOxiaS2nsrh1hVdF6HRNUn0zC1"+
                                 "Jrbd1ybXj0mEDGr3p5+mIcgx5KY0JLQQCcUioTMUGoMgVnQGKdzBDlK4k4vcKULuMCKrDQ++Ziiu"+
                                 "82ssqFyLcuQod+Kc4FioDIqrQMVAR4MKNUGPkOtgSB7kAl6jMKIEiqexV+l1GrXqieLiYjK5SqY2"+
                                 "mlxTv7DxF38ieqvnFzLYvAarV6wyTBiduLqO/afPlrX1+lAILbSNpiZ2CoakFpHFmZ5d8uTzLx1P"+
                                 "yiENj1fSuLVjgnahol+hH9BaSHQBX8YeoLS8s/Hs7Plxt6wsDLktBwmmBkIwQQaDYobCMLJ8GFk9"+
                                 "Pu0O4pDVQQq3/N4emT8p0aJiNcoUoyzJzxoTo2wZylOcE+AAZ5GqgzUl0yzgLKbV3UnVul1mLo+f"+
                                 "l5vb3t6u0ltNjsC/m/nPJRegMHNaZ/VodJZetjgGV5NQgGfxFfAOpqKHnt/cUzMkInfzv/g+ct3r"+
                                 "GyMiokqbKMWw4tJFrRrl1o0JYYkpu76HI+hpbmh54+38+x5Le+zPxTfMSQl2lstwSGg5sqTuPAXq"+
                                 "NAXWDAVktQkoIKGGfac8Y5Jgs4/wUZowKBbYfx7HuBSdEQACTxGoglBgDzj6eWh+o3eIofE71dSR"+
                                 "0eyszL6+Po3RbrT7fyUFs8MPAyeV2TnAlu09cXbf4Yi0smoYQeY3d2dXd+w9fOa+x5996MnnD56M"+
                                 "SSkjJ+Nq0isasms7smo7UnBNMVkYPr+vDNvw5LrkF9/Ebfik9saFqcj8rFlLMchiPLKEHEyQK6Cb"+
                                 "6EaWD077ggC5E3KkNEhhsf6Dr6y9jABfifax0EFOUMNcdIiDjgpQhhilC/9FLGnQBUACJdpMRXPJ"+
                                 "JhpT7rIqOju70tNTqcxxcH5w7ctQMNg8F5TJ7lUaHVK1XqG3VHUMfrD7u7DUAlhuJXdRCc09X4VF"+
                                 "3/uHP6998A+fHTgWnpwXnpp/Kq0wMhsTllKw84eIYyejFdJhLKbxocdj//4++eDJ4dvuKkFuyJq9"+
                                 "sHQ6KKb7y2Ut0wlyEFlJQ9awgxTu5CMQFMuNz7+nJzS72XK0m4l2Mc6LHjzoH0eHeegQQJnRNKBR"+
                                 "PgrBAu5DbEczCbpxzoTdJKuuqU9NTWULZUY7BLj7YmbOlCNGm+disrsnpWqDwmDWOTx5pOadB099"+
                                 "dyY5tYiYR6gPTy9484PPHnzimY2ffvlNWOLXYXH7jkYeCA/u3/1035HwM1LJCBbb9MgfY9e/Xx2T"+
                                 "zn7oGfyskPSQWwqRpRAURCS05nw3MR0UqxjIWmGQwhoF9BQPv6o9W+Ic5KIUOtpKPaeWYbSNinaM"+
                                 "op0MtHvsZ3WNoSCoDDjyyZNJpTqeUGU1istw5ampaTDKtjj9eovrEmbCqUtRgNM29yRklwm9TW0L"+
                                 "HIxMfmXD1ne27YfW3nfszMe7Djz70luvbty648DJPYeidhw49vm3xz7Y+fUL6z84GhEnktAzsuof"+
                                 "ejzx7Q+rTsX1r3+/Yi4ExU0ZIUsgRwKIKuR2yA4tyPLecxTAFyAuYOwQqr3jKfOhsx4wG1Tbf071"+
                                 "A2jzMNo0iDYMoS10tIX2s5pH0Y4xtJeFpuEDKWVasUxl1AqKS7EZGRkqvcXqngRfuAwF8PxLCEBq"+
                                 "zU610eadnOJpLF8cOvnsa5ve+GDHu9v2vrNt72vvb1/3+qb3tu/b+f3p7d+EwcFTL7/98JPPRcck"+
                                 "GjXMUxHkNfdnfLSN+PX3FbsOtC+/Lz8kJH72LVnI7cVIaCkSOt1fQMe5rCsIYuXIdH/JC7lRMvsO"+
                                 "wyeH3dVdUzV94ORTxI6pivap2l6U3I2SOqYAR10fCvtz6kcbBtF2RhBKEiZQWK9U6RVaBR+DwRYV"+
                                 "FurMTocXvbSNcBa5bA2zwwcsYd4GL+mIlMEt+w+//O6W9z//ZuNnX234dN+rmz59ddNnz7/+zqNP"+
                                 "r1t1z8OPPPV8Ib6SzmSxxwf3foO59/eZ720mf7a3ffu+jmf+lnfLgkTkxnQkNA8JnQEBI4hyZDGk"+
                                 "iSZkJSRLEDUEcKzof22zJK/ST+qcwtZOltX9q6ZLAE0lZQoqzIjcHdyfTHPhagU6rUQm4uDx5cSK"+
                                 "KogFOww6L9nSQQpmh/dKBB5lsHqkWnNd19DptIIvDp78YOc36z/+Yv0nu5584fUHHn86dPXdL7/1"+
                                 "7hibpzM79DrNQG/9u++fveuhrHc/IP7jfdJnX7a/8g5hYWg8Mitu1pLs8xRgfvXTCAKSJYwgKMjK"+
                                 "YeS24SdeYZ7JVpU0ObNwruygnHkkf2H1ZAE5UFAVgP3McWndJL5xElc3iWuYLKwOnEhx4euECqWI"+
                                 "x2ZWVFQ0NrcabW67Z/KyBl4pBbiQxeGDvdrk4Mu1ozCzGmRWNnUQGzta29sPh0fd+ei6bbu+mUJR"+
                                 "lx8V8kerK4kvvXRmzV1xGz+uevNdwjsfVr37IXH577IQ5OyseRnI4vxpEDC/AhAwgoBk2Tzda3Qi"+
                                 "t3ciCwfuXcc6FK0urHJl4QBEUNkEd065Jwf2BBcoG+8CZ8knevOJnuLqyUJyILnMfzzZXdsq1GvF"+
                                 "MPUmlJd39/QABas7cHkKFqf3ymV1eu1uv8s35fGjDs+U0ebUW+w2b6C4rGLD+5vjk9K9U1Ae4Iz1"+
                                 "5ZcUPvp0+NJVse9trvr7xoq3NhA2flR53+M5N8yJCZmdEHIbuEPR+aDAI6Hk6blmYxBEaAuyeGDV"+
                                 "H5mf/yjPKnckY6wpGCvsk0otSaXm5FJ7CtabgvWkYDxpeH9qmQ/+TMUH4CAqx/VtlLWpjWXSC4aG"+
                                 "qXg8fmR01GyHBO+/rIEIGPbrZHP5gkS8Aa5Ul1WMP5OQ1Nkz4PROeXxTHCYlOjFt1T0nQ5cnb9pc"+
                                 "+dJbuJfX41/9B+GZF/NDV51FboybtSgVWVyAhJZMuwNQgL6z+hyIJc3Iku55awde28KLLbRGZpvD"+
                                 "0gwRWeaoXEtkjjkqx3YmzwOKynVH5QQVU+BNxATiirw/RJv2n7ZSelgGLaeT0kcg4GAQDcstNpf/"+
                                 "sgb+egpwacDs9k1R2eLMikYiZVhtdlicPpvDNU5v+v6HvIVLYpeuSH5zY/njz+Y/8VzBH9cVrHu5"+
                                 "aO3DebPnJ81aEI8sypoGMRMX0HdWTHtEA3hESGgzsrjrD6+MH4nTH0mwfBupOxxvPp5kPZZoAR1N"+
                                 "NIPCUqzhqbajCebwNPvZUl9ktuuzg7rvzhjoDJ5ew66ra8LhsPIJ5bT9viug4PJZr15gP8js8BjM"+
                                 "Do7Zge2jNw8yfZPBPMRijUv4Xfu/q5yzMG7J6rhnXyp98PEU0ENPpD7yp9S196fNC4UFuPgQGD5c"+
                                 "EMTShiCFJd0Pv0Dbd1T0XZT+QITmwGnNgQjtgQgd6JvTuu+idEfPWk4k2w7G6L8/YwAcRxJsG7/U"+
                                 "/xjJEnBZWhWXQCBhSkvVeuu0ad7LGoiAY/8KOYIpx8Pgietb+0UWF7GHGZlUQGMyNQYLFoM1a/q/"+
                                 "O1iB3Bi17K6MZ18qfvDxVNBDT6T9/sm0IIUlScj8uJBzILKnMyX0mpAmQeAR1cGJxsLGVX8Y+PRb"+
                                 "IRj8+feC7Qe4Ow8rvzhm/PyIfvdxPRTuPqbfcRgA6faG6b6JMB5OsP9tizEqbVwuZSlk4wQCkUgk"+
                                 "2b1TELNWBwTFZWy8agp2T8BitcMiX3kTJbeyvmOUI7K5i+radx88ueu7Yzu+PpqdnSvhdWz5rAiZ"+
                                 "E7HqrsRHnsxYfU8iaM29iXfel7j2/sTQOxKRW+J/prAoG7kNQgPGDudBLKlCFtUueaB9/Rb6rkOi"+
                                 "nd/zP/+OByx2fM/feUi+66jui4PC4P6YEYjsOqbfF67bcdj44mZTeilPo2LDygaRRG5qboYsbncH"+
                                 "LosAKiDwMdpVyOO32FwDLH7N0FiPVA1v5WuZ/MYhRnlTZ3wuZs+x6K+ORlYRiyhttU8/k4jMOnHH"+
                                 "3QlgPOzvuCdh6erY0FXRy9bEhK6Muem22CCFBYkhC9OQhUAB3AEy5YxHTOeIhVUL7mp+7u/UD/dw"+
                                 "PtzD3rRb9P5u7nu7OO/tkb33pWzjF8KNu6UfH9B/8q3x4wOGrT/ANFT31vaJEtKoWsVnjzOqyNU9"+
                                 "vX1u36TD43dcgYEIVLoq2Z2eEZmmjjcxrLMOqo3wbrq4paeqY4DY3nM8tfBEYialFVeBI9xzTwSC"+
                                 "HF99T8LKu+LB/sWrYhcsPXPr7WcWLo2eHxp5w4KIkFsTpkEkhCxIC1mUFew7gywAxHSyXIifv6bq"+
                                 "sRcpr3ww+sZm9mub+a9v5oBe/Zj32mbe259L/rFD/MY20T8+l2/YPfHuLs3rnxpf28zFkAZUCg59"+
                                 "ZLC6ppZGZ0D/5ZymcFldHQWXx68zWdk6M9PsFJodcptDaLbXsUTkAUYXnV1aT0lIz+unlEdEFCxb"+
                                 "EQ4rjktWxi9fG7dgafS80DPzl0TffFvUnIURN9x6CpkbHjL/zHkQiSELkkMWpiOLcqdzBDgFFllU"+
                                 "OncV7r5nmp5/e+jFTfQXNtJf2ET/6wYaHL/8Ifulj3hvbhO8/AHr1Y856z8FLqJn3p14YROLQB5U"+
                                 "KsYG+rtqa+vZXN5/jYJ3UqnRDXIEVLFSY3UaHE6L00Mz2sl0bv84jCZZWRmZPR34vV8XLgo9GVxx"+
                                 "DIm4eUHEDfNOz5l/Gg5mzw1HbjoRMi88ZF5YULdG/wwCQgMSRLDXmAaxuOTG5WVrHqt7+vXeZ97s"+
                                 "f/rNgaffgP3g8++MPvc284k3mH/ZMP7ie+N/3cR6YRN73buMx14ZefWj8eb2IfnEeHtHR21tDV8g"+
                                 "ugoK4DNXLki5sLEEIlJrL2WUTWPzOSJFF1cC37JVtA8SSA1xsVEN1SXR8aSnn41dHHrk1gUn5t5y"+
                                 "dM5Nx2fNPh6EghxGQo4iN4chN4UF9zcfD5kPIKC/iJ3OEannu898ZHHx7Nsxob8rv/tP9Q+u63pw"+
                                 "Xc/9z1IefWn4sZeHH1jX88c3GE+8TgfBwZ/eHHvsZer9z/W9s51NpVKlImZNTWNNDVkskU1TCAbF"+
                                 "ZYVctsaFK3gD8EHnyCitsq6tqJiQkpmXh8W3tHU2NTUVFhSkpqSkpp49G597/HT259/Grn879fd/"+
                                 "Sr9tZdysOScQ5EgQxIyQoyE3TzvFLZHnnCLYfaZMO0UuZM35d5Tc82QDCFjM6Hd/rL3nqaaH/tJ7"+
                                 "95MNDzzX+fAL/Y/+rfeup/oW3T/y9vbx8bFeEX8Ih6+sqa5UKFUzvnAlQlxeGAVfndy+gMcHL058"+
                                 "FrvLaLEbjGadwaQ3W802x9g4J/rMmZMnw5LjolJyjxVXxjTV4quJJcV5Z3OyixNScQd+LNv0YcGz"+
                                 "f4G+Iyk4fELARwANvM6NQkIikVlRQddYmBCyMGnWoqx5K4qW309Y+Uj1ykdqYL/i4erlD5FXPVJz"+
                                 "71ONgGbVI9V3/qH+oWcblz/ccuPqrs27OvmcUS57BIPF19fVwicAV27Xr6Fw/uoBj3/SG5jyTU75"+
                                 "J9EAijrcntHR0ayM9PyczMKc7MzC+JzSyIKM+LzspJLClKryovoabFdHVVtTZVF+UUoyLvwkYe+X"+
                                 "ua+8lvTAo6mr7y9ZcEc5MhcmnfAiJwNBUoPveOek3LA4Y8Hq4oVrSpbcU7b0fvyyB4krHq5Zei/p"+
                                 "jt/XAJQVD5P/3xPVi+6uuWFFw5ZdbVx2H4c9WIrBNzbWmywwaLzS1kXcPpgL/Afk8QeAglKthjkM"+
                                 "j8Pu7x+ora/FYAtSkxIT4hJyc3IJmOIaYmlrA665AVNZXliOKyzH5pdjMzPTkqMik8JPFR08Wrnj"+
                                 "y+KXXsU++Chhzd1FoasK5y0jzFuFD1lQhiCFyOziWTcVzlmQO3dV0dzlhYvWliy5j7jkvsrlD5Pm"+
                                 "rSTNWUDctb9GIuzhjA8Ul2Bb21rcXh946xWa9h+jELyfP+CbRCdR1OsPGExmiVTOYrFhktvb1zcw"+
                                 "MNDTTWltaqgorygqLi0qKCzIzcYWZZaXpZdjk3ElcWVFoBRscUp2VsHpyOJvv8//fE/xlp3ED3dU"+
                                 "rVtP+tO65gce7Vp2Z+McWJi6lYTcjENmY5Gbi264tXBuaPHsuYU3z83d/y1eLR9lswYLCku6uijB"+
                                 "lY7rQ+G8T4FfeAOT/ikUBFBg8/h8OoOBLxDSaPTB4eH+vr7Otpam+joSkVRQUJSWkhYXG3f61KnE"+
                                 "2FOAoxIXTyiJxxTEYQviS4vTsrGFBbjutPzx4zEjH+0eePzV4Xue7L/zd91LV5JvvhWD3ASeUjrr"+
                                 "howDR3AaBWuU2ostI9BoNKBwhY4A1RCPz39tBA4C8gGdyUm4o85ghNgZolK7e7qbGhuxGExKcnJC"+
                                 "XFzMmeiYqNikuKiEmIjIyMjUxAgiNrGpJn+0v0I4XjUyWEVuaMWRadkl9NNJ/Pd20h9/fXDp/SOr"+
                                 "1rTE5pKkklGAW9/QCJ+7BKYA/ZWado0ouD1eu9NlgW9NrFaD0ag3GqEFwGXgQcFZ1FpdF6WzshyX"+
                                 "lppy9OixsLCwuOjoxPiEpKQkKMnPyyNgCokEHK4Mh8di68gVfZTysZGqCXEHhz3c1TtIbmFiaiYa"+
                                 "O4bgs4329o7mpmYenw+XvRoKfniaayGIUqfb7XC5vQHoZb08vqCtrQ1Xhi0tKcZgSsuwWAIBDwZH"+
                                 "RUYeOXLk8OEjgAN04sSJmOjo5MTE7MzM0tJSUkV5HZlUX0dubqxuaKiqq6lsayKNDFQyac2Uru6G"+
                                 "hiYmk1FfU9PZ2RkMwyu2C5lx1GsjaBx4OJPFAk/Z2tra2QUD/lpsWVlBQUFOdlZOTja8XwXFRkeH"+
                                 "h4UBgwPfHdr+1cHNW7du3bJl+2ef7v32UFh0YmZqSl5eHrGCVFfX0NjQ2NbSSB2i8Li0wcFBWG5l"+
                                 "ssZ6e/vG2WzIC3aXy+P1gdw+36UNvKYUggjM5lEavaOjA0aZzS3BraGxkVxdXV5eDh6Px+HgAxRM"+
                                 "SQm8dE9LTY2JjTsSHrl3776dO3du2LDhzbc3vPfJtj17dp8+dTo2JrYgP7+ltaWtvaOuoam1tR2u"+
                                 "x+fzm5ubR+l0sN5ospjMFofT6XAGYXh9/kuAuHYU/JNTTqeTzmDAB7HwQh0oVFdX19XVz+BohfBo"+
                                 "awM64COwNTUHz1YQyrGlpbk5OakpqcePH/9yz55t27Z+tn37wYM/njgRlhAfh8WW1tTUwHIzAY+H"+
                                 "3gfCoa21lScQGE1moUisUmsgB5ktVghDcMP/CQqBqSlIWtBWdfUQuTUQC41B+1uDCFrbKBQKDCuG"+
                                 "prfhoeH+gYGurq62tnY4V9/QAPWJFRX5+fkJCQmnT0eEhYUnJiSmpiQnnU3AYkorpzelWtPbNwCx"+
                                 "wBcKqKOjbA5HJJHBbMJgMFjtDhhEQT66GAgkeO6aCPqIvv5+EglyWx0Y1tjcHGx0cID2djAYohpe"+
                                 "HzAYDCaTSWcw4RuM/v7+ru5uSlcX1AFS9fX11TU18PPS0pLMjPSz8fFnE88mJiTk5uZUVlWRKitJ"+
                                 "VdUCkZjGYEK6gQ54bIwlFAplMrlaozFbbZCPYXH4YpYivgD04f91wRhBozN0dHaSiESwBxBAI8Pn"+
                                 "Np0USk9Pz/DwMFg/Ps7m8XgCoZAv4EOTQvoAakABcAAp+C0sHIAfVVVVlRMI8CYWJq4J8fFxMTGw"+
                                 "3NzS3JyeljY4ONDb0wseBq4EoQdpQiyVgztAggBf8E9e1MxrR0Gl0fb29deBI9Q3QBCcQ9DbOxD0"+
                                 "AtoYaxweGhDA18+wcXk8BnMMTgECDocDA3BwB+gCOrsosLpMJJEqiEToXKH7TE5KKi0pqayqzEhP"+
                                 "m0kx0HFAzVEaDS4Iw6dpX7C6vfAl6OTF2vsaUfD6/V6fD6ZY8KAwqWhsbIJQgGcdHBocpo5AYhtn"+
                                 "j/NgCPFPFJhjYzAHGaZSRSKhQCAAapBWh6jD4DvwDhKHwxEriNC/1tfXQUaEMQVkU+hrIGogzqYp"+
                                 "0PkCwYRCqdMbbA4HDOEv4fLXjgJ04Aqlsru7u4NCAfN6enohHPoHB2AyDukAPh2coSCctpnD5UJg"+
                                 "j4yMUkdHoEylVo+O0iCjAjs6nQ4/hJ4VfCIYKR3tECA4PL6rpwcqQMYBBECWw+XB7WBSZ4PUCGOG"+
                                 "S0b9NaLw00PAkw3BbGpgYHgYEvnoGIsFgqQAb7QgF0AgQANCdmBzghSgAvCCQvgV4AEE8D4eehOo"+
                                 "29vbA4uLMNwAH4GokSsUdAbkkb7BoSHICEBTo9XCx+EwUgh6QXD+cildUwoQFzBwgg4c4hxcnQMf"+
                                 "trNYwa6ByRQI+BKpVC6fgEgWCYVAgRn0hRGABa6hVCpVKhWTOQZNXVlZRaF0MRj0LgqlhkwGanBN"+
                                 "yH0qtUqhUk4oFIDMaDLBEAEKYfJ2Jbn/mlKYeaCZiXbQfhoNMj9sY2Nj8PQ6vR4cGNpQJpNC+4OP"+
                                 "QL6A8IZkOTEBdCbAT6jUEUiuFQRCf18/BJHVZp+5GpgMc3k4gAGS0+2Bg+n565Xq2o0d/33EAg0F"+
                                 "fZhKpQQHnuk+wL2h/QGBSBz8pzJgNowdYKDZ2FAPWQAyH+QBSBBqjRbGgvDz/9T05xrNrP99kjtj"+
                                 "AJRDHwatBzkMxjbw3xTYHc6Z9pwRzALglMVqg3VEqACjwOBwGAaCMzPAK15BuPQsG1bcAtdLLri1"+
                                 "HzTpgVadhFVc1AsKTMGfsK4bFBwEpmZO+abQnyrAT+CZgz//Dwlxev2/CVbiJ38TYrE5fhMi/W2T"+
                                 "Sv8P6PRr1aTgC3wAAAAASUVORK5CYII=")),0,$$.Length)))))
#endregion
#~~< lblFirewall2 >~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
$lblFirewall2 = New-Object System.Windows.Forms.Label
$lblFirewall2.Font = New-Object System.Drawing.Font("Tahoma", 8.25, [System.Drawing.FontStyle]::Regular, [System.Drawing.GraphicsUnit]::Point, ([System.Byte](0)))
$lblFirewall2.Location = New-Object System.Drawing.Point(79, 29)
$lblFirewall2.Size = New-Object System.Drawing.Size(296, 25)
$lblFirewall2.TabIndex = 54
$lblFirewall2.Text = $TextStrings.WindowDescription
#~~< Button1 >~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
$Button1 = New-Object System.Windows.Forms.Button
$Button1.FlatStyle = [System.Windows.Forms.FlatStyle]::System
$Button1.Location = New-Object System.Drawing.Point(183, 240)
$Button1.Size = New-Object System.Drawing.Size(87, 23)
$Button1.TabIndex = 53
$Button1.Text = $TextStrings.Apply
$Button1.UseVisualStyleBackColor = $true
$Button1.add_Click({Ok($Button1)})
#~~< ButtonCancel >~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
$ButtonCancel = New-Object System.Windows.Forms.Button
$ButtonCancel.FlatStyle = [System.Windows.Forms.FlatStyle]::System
$ButtonCancel.Location = New-Object System.Drawing.Point(288, 241)
$ButtonCancel.Size = New-Object System.Drawing.Size(87, 23)
$ButtonCancel.TabIndex = 53
$ButtonCancel.Text = $TextStrings.Close
$ButtonCancel.UseVisualStyleBackColor = $true
$ButtonCancel.add_Click({Close($ButtonCancel)})
#~~< lblCoreConfigTitle >~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
$lblCoreConfigTitle = New-Object System.Windows.Forms.Label
$lblCoreConfigTitle.Font = New-Object System.Drawing.Font("Tahoma", 8.25, [System.Drawing.FontStyle]::Bold, [System.Drawing.GraphicsUnit]::Point, ([System.Byte](0)))
$lblCoreConfigTitle.Location = New-Object System.Drawing.Point(62, 9)
$lblCoreConfigTitle.Size = New-Object System.Drawing.Size(313, 20)
$lblCoreConfigTitle.TabIndex = 52
$lblCoreConfigTitle.Text = $TextStrings.WindowTitle
#~~< panelMenu >~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
$panelMenu = New-Object System.Windows.Forms.Panel
$panelMenu.BorderStyle = [System.Windows.Forms.BorderStyle]::FixedSingle
$panelMenu.Location = New-Object System.Drawing.Point(-1, 60)
$panelMenu.Size = New-Object System.Drawing.Size(410, 166)
$panelMenu.TabIndex = 51
$panelMenu.Text = ""
$panelMenu.BackColor = [System.Drawing.Color]::Gainsboro
#~~< GroupBox1 >~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
$GroupBox1 = New-Object System.Windows.Forms.GroupBox
$GroupBox1.Location = New-Object System.Drawing.Point(12, 14)
$GroupBox1.Size = New-Object System.Drawing.Size(382, 139)
$GroupBox1.TabIndex = 0
$GroupBox1.TabStop = $false
$GroupBox1.Text = $TextStrings.SettingDescription
#~~< RadioButton3 >~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
$RadioButton3 = New-Object System.Windows.Forms.RadioButton
$RadioButton3.Location = New-Object System.Drawing.Point(31, 91)
$RadioButton3.Size = New-Object System.Drawing.Size(344, 34)
$RadioButton3.TabIndex = 2
$RadioButton3.TabStop = $true
$RadioButton3.Text = $TextStrings.NLAOnly
$RadioButton3.UseVisualStyleBackColor = $true
#~~< RadioButton2 >~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
$RadioButton2 = New-Object System.Windows.Forms.RadioButton
$RadioButton2.Location = New-Object System.Drawing.Point(32, 50)
$RadioButton2.Size = New-Object System.Drawing.Size(318, 35)
$RadioButton2.TabIndex = 1
$RadioButton2.TabStop = $true
$RadioButton2.Text = $TextStrings.AnyRemote
$RadioButton2.UseVisualStyleBackColor = $true
#~~< RadioButton1 >~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
$RadioButton1 = New-Object System.Windows.Forms.RadioButton
$RadioButton1.Location = New-Object System.Drawing.Point(31, 20)
$RadioButton1.Size = New-Object System.Drawing.Size(227, 24)
$RadioButton1.TabIndex = 0
$RadioButton1.TabStop = $true
$RadioButton1.Text = $TextStrings.DenyAll
$RadioButton1.UseVisualStyleBackColor = $true
$GroupBox1.Controls.Add($RadioButton3)
$GroupBox1.Controls.Add($RadioButton2)
$GroupBox1.Controls.Add($RadioButton1)
$panelMenu.Controls.Add($GroupBox1)
$RemoteDesktoplSettingsform.Controls.Add($PictureBox1)
$RemoteDesktoplSettingsform.Controls.Add($lblFirewall2)
$RemoteDesktoplSettingsform.Controls.Add($Button1)
$RemoteDesktoplSettingsform.Controls.Add($ButtonCancel)
$RemoteDesktoplSettingsform.Controls.Add($lblCoreConfigTitle)
$RemoteDesktoplSettingsform.Controls.Add($panelMenu)

#endregion

#region Functions

function Main{
	[System.Windows.Forms.Application]::EnableVisualStyles()
	Get-Status
	$RemoteDesktoplSettingsform.ShowDialog()
}

function Close{
	$RemoteDesktoplSettingsform.Hide()
	$formcomputer.enabled = $true
}
#*****************************************************************************************************************************************************************
function OK
{
	$PathMain = "HKLM:\System\CurrentControlset\Control\Terminal Server"
	$PathAuth = "HKLM:\System\CurrentControlset\Control\Terminal Server\WinStations\RDP-Tcp"
	if ($RadioButton1.Checked)
	{
		Set-ItemProperty -Name fDenyTSConnections -Path $PathMain -Value 1
		#Change the firewall rule 2
		Set-NetFirewallRule -Group "@FirewallAPI.dll,-28752" -Enabled False

		#Output to Logfile
		$TextStrings.LogCommandExecuted -f (Get-Date -F G), ("Set-ItemProperty -Name fDenyTSConnections -Path " + $PathMain + " -Value 1") | Out-File -FilePath $Logfile -Append
		$TextStrings.LogRuleGroupChanged -f (Get-Date -F G), $TextStrings.RemoteDesktop, $TextStrings.Disabled | Out-File -FilePath $Logfile -Append
	}
	if ($RadioButton2.Checked)
	{
		Set-ItemProperty -Name fDenyTSConnections -Path $PathMain -Value 0
		Set-ItemProperty -Name UserAuthentication -Path $PathAuth -Value 0
		#Change the firewall rule 2
		Set-NetFirewallRule -Group "@FirewallAPI.dll,-28752" -Enabled True
    
		#Output to Logfile
		$TextStrings.LogCommandExecuted -f (Get-Date -F G), ("Set-ItemProperty -Name fDenyTSConnections -Path " + $PathMain + " -Value 0") | Out-File -FilePath $Logfile -Append
		$TextStrings.LogCommandExecuted -f (Get-Date -F G), ("Set-ItemProperty -Name UserAuthentication -Path " + $PathMain + " -Value 0") | Out-File -FilePath $Logfile -append
		$TextStrings.LogRuleGroupChanged -f (Get-Date -F G), $TextStrings.RemoteDesktop, $TextStrings.Enabled | Out-File -FilePath $Logfile -append
	}
	if ($RadioButton3.Checked)
	{
		Set-ItemProperty -Name fDenyTSConnections -Path $PathMain -Value 0
		Set-ItemProperty -Name UserAuthentication -Path $PathAuth -Value 1
		#Change the firewall rule 2
		Set-NetFirewallRule -Group "@FirewallAPI.dll,-28752" -Enabled True

		#Output to Logfile
		$TextStrings.LogCommandExecuted -f (Get-Date -F G), ("Set-ItemProperty -Name fDenyTSConnections -Path " + $PathMain + " -Value 0") | Out-File -FilePath $Logfile -append
		$TextStrings.LogCommandExecuted -f (Get-Date -F G), ("Set-ItemProperty -Name UserAuthentication -Path " + $PathMain + " -Value 1") | Out-File -FilePath $Logfile -append
		$TextStrings.LogRuleGroupChanged -f (Get-Date -F G), $TextStrings.RemoteDesktop, $TextStrings.Enabled | Out-File -FilePath $Logfile -append
	}
	Get-Status
	$RemoteDesktoplSettingsform.Update()
}
#*****************************************************************************************************************************************************************
function Get-Status
{
	$Path = "HKLM:\System\CurrentControlset\Control\Terminal Server"
	$Reg = Get-ItemProperty $path
	if ($Reg.fDenyTSConnections -eq 1)
	{
		#Not Allowed
		$RadioButton1.Checked = $True
	}
	else
	{
		$Path = "HKLM:\System\CurrentControlset\Control\Terminal Server\WinStations\RDP-Tcp"
		$Reg = Get-ItemProperty $path
		if ($Reg.UserAuthentication -eq 1)
		{
			#Allow NLA only
			$RadioButton3.Checked = $True
		}
		else
		{
			#Allow Any
			$RadioButton2.Checked = $True
		}
	}
}

Main

#endregion
