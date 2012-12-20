Import-LocalizedData -BindingVariable TextStrings -FileName Firewallsettings.psd1
#region Constructor

[void][System.Reflection.Assembly]::LoadWithPartialName("System.Windows.Forms")
[void][System.Reflection.Assembly]::LoadWithPartialName("System.Drawing")

#endregion

#region Form Creation
#~~< FirewallSettingsform >~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
$FirewallSettingsform = New-Object System.Windows.Forms.Form
$FirewallSettingsform.ClientSize = New-Object System.Drawing.Size(1222, 751)
$FirewallSettingsform.ControlBox = $false
$FirewallSettingsform.Font = New-Object System.Drawing.Font("Tahoma", 8.25)
$FirewallSettingsform.FormBorderStyle = [System.Windows.Forms.FormBorderStyle]::FixedSingle
$FirewallSettingsform.MaximizeBox = $false
$FirewallSettingsform.MinimizeBox = $false
$FirewallSettingsform.ShowIcon = $false
$FirewallSettingsform.StartPosition = [System.Windows.Forms.FormStartPosition]::CenterScreen
$FirewallSettingsform.Text = $TextStrings.PageTitle
$FirewallSettingsform.BackColor = [System.Drawing.Color]::White
#~~< PictureBox7 >~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
$PictureBox7 = New-Object System.Windows.Forms.PictureBox
$PictureBox7.BackgroundImageLayout = [System.Windows.Forms.ImageLayout]::Center
$PictureBox7.Location = New-Object System.Drawing.Point(1, -8)
$PictureBox7.Size = New-Object System.Drawing.Size(86, 79)
$PictureBox7.TabIndex = 0
$PictureBox7.TabStop = $false
$PictureBox7.Text = ""
#region$PictureBox7.BackgroundImage = ([System.Drawing.Image](...)
$PictureBox7.BackgroundImage = ([System.Drawing.Image]([System.Drawing.Image]::FromStream((New-Object System.IO.MemoryStream(($$ = [System.Convert]::FromBase64String(
"iVBORw0KGgoAAAANSUhEUgAAAGAAAABVCAIAAAA5TXZxAAAAAXNSR0IArs4c6QAAAARnQU1BAACx"+
                                 "jwv8YQUAAAAgY0hSTQAAeiYAAICEAAD6AAAAgOgAAHUwAADqYAAAOpgAABdwnLpRPAAAAAlwSFlz"+
                                 "AAAOwQAADsEBuJFr7QAAJOZJREFUeF7tm3dUW1mW7uf9N11dwQmMyVmAyDlJSEISQQllhHIk55yj"+
                                 "iQbbgIkmY3KWydk4R7CNcSzbOOdyTrjnHcoz/WbNm65ucFVX9VpmnXWXFtyLpJ++vfe397n6P//x"+
                                 "H//xb19/foEAAPT15xcI/NtXOr9M4Cugv6OQr4C+AvqyJPJVQV8V9FVBX0bgq4K+jN/XHPRVQV8V"+
                                 "9GUE/vUV9Je//OXth5XHr97devbq2uMXYIEHj1++B78Ef/pN6ax28r/1E6z7/3/69JflJ6+mr1/t"+
                                 "uHx036WJjisj/ddGR6/P9J49WXXoSJp8PrBxaXv/te7j9288fLPy6bci9UcE9P7jp+kfLyX2DvrV"+
                                 "tVYekA9fHu2/0F07N7zv8PihpcOHl05Mzx9L7zrJ23vOu+I8o+wss/Rkzpx86urldx8+rfvz+FsX"+
                                 "/rEAASEcuXkj6FgO+jA+eDIs+BSt8cd0+dXyoqMFlSeOxE8t5s+dWly+cPHm0sU7F1N6F3gNS6zq"+
                                 "RUbZeem+iYLF8vQTzUdu3vz0q8bdHwjQT68/7DwwhTlIcp6zpZ108juHiD1J3LUoql7Kqr2W0HMj"+
                                 "Y/rmZfH0pSsPL916tDx95Ud+/xVJ58Hg3hFW3UVa5YWgrom9S82ClraS4/KnL9/9WlL6QwACn/nN"+
                                 "R29CevpcZpDYc9aUc7bhS24Rh0rZswuSI2dDj57ImpfXXZsJOndXMH/v/JNr1x7d500tM8dvceVX"+
                                 "RD3znLYrzIZLzOpFv+YT/Mb9Pns7Eo+mXXvw5Fdh9IcAdOnuK2njGGzK1eWYKfGCPfcCLOqkjHf8"+
                                 "DvviT7HnDw/fith98Xjatev826+5N17GXrxdcuEa+/gDn4P3uFO3+cM3eX3XfdquSpuOBO6bJMYf"+
                                 "pFTs9F8iJBwLu3T73pcz+v0BXbv3Slw+C2lydj5mRj3vjDhgSZyzj5jHFM5XRFz+seVG1fzTkgMP"+
                                 "CuafzkTcey199F545w3/2gvu0jPemceCw/eEY8v81ks+JWeYOcci5b0RoxXcjqyYq+5pV9kxR8Kv"+
                                 "3Xv0hYx+Z0DPXr7z3T2tuxdmNKqHOGzOWHDAzFnJFlBFl6hNl6s7ltsuPGu6/nLw1quJm6/Gpp78"+
                                 "GPVixf/pB8m9t8IfXwrPPxVM3RZ0XuHXn+fsmWfmn2RkHvRKmJJ07oi5gc65yQk5Eh7Zn/vsxRfl"+
                                 "o98TEHA66WUHDUupxnN6yAVr5AFT/FFL/HGHkHlu57ne2buVSz91XXkx9uPLgydfXJ99emHi3o3s"+
                                 "1x+jX60EPv4gvvGSf+IBf2xZ0HOV37TIKV/w3nGSnHbUM/IALmIo7mRU8qEwdnURu2JPfM4weKJ1"+
                                 "6+j3BDR24IpVUKrupDbqkh3hsr37KVPyaSv2IizygrDnnHzh/smrL2evvhxbfn105t3b4ZWVwy8e"+
                                 "NP/0U+rbT0GP3ouuPOeffMibvMXrXQXErVjwLjxBST+Ki56jbu9NmE2NaSw0htdYEXfpO2ROzF7+"+
                                 "1wP06u0HorhRfY8N9Kiu7aKx+6Ip6oyR9zkbxllE+lVW393t849nLr7ovfL62LnXyxdf/TT9/oN8"+
                                 "ZaXmw6e0VytBD9+Lr77gnXrInbzF6b3KXVXQPHPHCXLaEVzUAXLy0I47soKpbBNYozOrwBCeR+CX"+
                                 "fvi4Tg/5uymoQ75gwk3cslfR8JC21WmIywLE8pC+8xFL1gKy9i6372HkmedVh1+cGHr3dnrl05GP"+
                                 "K7MrK/KPKxXvPia/+BBw/63w8nP2yQc+48s+PVfYjYs+5WeYBSfIqYc9o2axAVMBfTnx4/Hu/lVl"+
                                 "V3ju4THw5JDJUwvrE9HvA+jDxxWarNHSO12xbpvOtJrBEVWjSS39/QYWE6aU8/Dgm+TG+xl1jy7s"+
                                 "fLNS++FT78dPIx8/DX5YaXz3Mf/Vh+gn76W3XnMuPPU+eo8xcoPZedm7/rz3ntO0vOOk5IMeETMo"+
                                 "2aQza8Q1sLHsbHT7sjD1NCZszjN+IGt9mej3AXThygMjlzxjt1TFOiWNYSX1ESX1Dg3dLn3TMWP0"+
                                 "WSf2RUL69brIp+/TXn4sfLtS9W6l7t1K5duPeS8/JDx9H3TvjfDac+bCI+qBO5T9P9LaLjJqztGL"+
                                 "T1FyjhES59zDppHiCQf6CLs5ufGupOGaIHvBPeaYK3eY+vDpm3WI6NcBtLLy6eWLly+eP3/37v0/"+
                                 "8iIqGw/p2WdBsNGbaxUUWxX0GiH6jcbQdjOTUSPEYRf2XD3n/H3h8svgB2/inr5Le/4h88WHpGcf"+
                                 "oh6/C773JuTGc9+lJ4wT90gTy8Teq177lqiVC5Sik16ZR/Fxs9jgKRfBmC15SFBdUHqVUnSekHDc"+
                                 "PuoYIuAcefDEiX/ktf2Pc9YPCPQHb9+8eXb7xv1zx28fHr451nptoObaYOP18Y7lQ8N3Tx14sDT/"+
                                 "dPnHV89/evvm7crK6uzm8/gGHCVRbVrmqTqIyI3VCup12ubcEouwFrvsflR7DkFe4DZ71/PUI/rS"+
                                 "U96Pz6W3XvrfeRVw97Xv7deimy+l156HXHzit/CQNnfHc/91XMdlQt0iec+8V/5xYuphj8gZV79J"+
                                 "Z/aIHWlQ1O278zwu7Rg88bRD3Cm47zwlZ6JyHfOjNQN6//7j04cPH145f+vY5N0DfQ8O9Nw/0PNw"+
                                 "rvfeZOudydbbI413xpqXB2uXB2uu91Vc76u81LbrbFPhgfqdxwe7Lh47dPvi4u3zZ7w5BdrQKB2H"+
                                 "yB/KNxvkokwIdRBur1HsjF3xvEd3pdP+m6iZOx7HHpAWHtEvPGFdfOZz6Rnz0jPa4hP6wiP2qfvM"+
                                 "g3c8R25guq+4NS15Vp4j7DxFyDqGS5hzC51GSsbtaUPO/PbtC4SCBbf4Q3YpC4iY8068456S/piP"+
                                 "K2uuZWsGtDQ9fLq5/ExLxVJ3zfXhlpsj+26NNd+f6bw70XJnrOnWSOOt4fpbQ7U3+itvDFRd6Kk4"+
                                 "J6+flzec66w8szdzsSHvYkP2Yv32xbrtCxVJkzuim3YLy5OjE/3TRL47CSE1rmmDyJI6m9bLDv3X"+
                                 "XcaW0TN33A/fwx27jz/xAHf8gceRe9gDd7ATt9D7ryO7rqKaL6KrF90A09wTnimH3aNm0f6TMO6o"+
                                 "FWG/i1/trguk3DPuqacdwo/YB8xbUWdhnvtYr998WGuUrRnQoaa9hwtTR9PDRzIihzKih7NiJ3ak"+
                                 "TO/OPFSWc6p+59mWkovtexZbdp7rqzk/1nFhsPl86+7FhpzLbTuvtO+60JSz1JQPAJ2tzVyoSpmv"+
                                 "SD5TkXyiOObEnoRju6KOFIbN5AaPZgVUp4TG76oiVwwFVLYG1PfxGwe9+k5jes8ihm/A91+H912D"+
                                 "tV+BNV50qV5EFS9g8k5iU49iY+bQQdMu4lX5mGH6sbE7C86Ts056ZSwQZAccyWN6mP2mVsXoR09f"+
                                 "/eaApmvKjhUlH9weOZMRBtZseuhkcsBIrGQswXcowVceJ+uP9W338+7MTZkrzZzemXq8Zsep2oKz"+
                                 "DTsWG3KXmgoW67LO12acq8k4W50+X5VysiT2RGk8oHO4MHwqP3SyJGmmJv9ARdZoTshIhv9Ymng0"+
                                 "VTyWLhlMFg2kShtSgysyYrMLChPy9/gXtfHyer22T3imzqBjD6JDZ5HSSUfWiCVODnXpMXNvDD5K"+
                                 "iJpzlo1YUXr14K2qNi0Qkx0uD5+8/M0BTVaVHi9KOZQdPbc96kBmOFizaUGTiX7TKYGTCdLJBNlo"+
                                 "lLBNSs/iMWeyIodixEOJgf0x0v6EwMH0yP1Ad9kxI9lRE7lRs4Vxs/nhR3bFHN0VNVeWMl2dM1eV"+
                                 "PbMjciYncDpTNpsTOLaKRjqRIRtK5A4l8uSxPgNxHHkcuy+G1R/H6Ylk9CcIWkPpNUGsQjGHwK9z"+
                                 "4oxakwZNUH0GDp1GsH0UOYzQqefeqOm8V8W4SlG7VE83C/nPADRVVXp0R+KhnJi5rIhVQBmh06lB"+
                                 "k0l+o/GS8QTZeIxgNIK3T0pP9aFNpYVOJMimk3wnEv3H46RTCbKJeOlojFgewe8L53eGcFuDOI3+"+
                                 "7HIWvmN33lB29ERezGRexEx+xHRuyGSmbCSJO5YiHE+TDCfxh5IEg4l8eQJPDo6J/O5IRnMQpVJK"+
                                 "yqYio5BWQfbGBEKmtdegKbrfyLFb36Yd6rIP1mZn0KQJLVfV37l1a6GibomFfirmybPX/wwFHduR"+
                                 "OJcVPpcV+RnQbFrgZKLvaIxoPIY/FsUfCuc2S+nJ3tSZjHAgqJmUgOEowWdA00BoiTJwznAYZzDY"+
                                 "Wx7M6pGS83HweDZdHu+/z48FeDWFCJvDJW2xAb2p4X1pYQPJ/vJkX3miSJ4AGAl6on32+nrl0l0j"+
                                 "XW3EVoYCUx2xua6fpb4HNm2VjnO3vm27vk2LgX2zlW+Sdq2+Wtk2lSIF/VAPc0amS5L/+w8ff3tA"+
                                 "lSWHtkcdAvLJCAPamUiQTif7TcSKRmOEw1HCkQjOgB+9QURJYVEnk0HQ+U4BccVKJmLFk7GiiRjh"+
                                 "VJx4OJwtD/aRB9B7/Zk9Eq88T1isN2UsRtwppXT7UruklDaRV5uY0iqhNglIezn4WoFXjYhaKaDW"+
                                 "ishl3u4iG6iPiS7LSJNtpCkw1QaAZBZ6GHiy4Wc6ti36No0Q2zojp1rToCC9PRCLMLohKtmckM8t"+
                                 "TF/HPH/NVWy4pEgewh8K4Y1HiSZjpROx0rEI/mgYeyiEtT+QMRhAHfKn1QvIySzqdFroVKIvWGOx"+
                                 "4vFY8SjQEXgQxR+J4A2FePdKvToFuG6xVwbWMYpGmoiV9PvTev3pHSJSjx+t15faDXhJyW1czxaO"+
                                 "RzPHo4aJaWC57yS4UCHqTEMNb0MNrok230RbZKYrNdN1dUiE2AE6+yB2jRD7OgOHvQYOlVBYGRST"+
                                 "B3HK1XVMs/DK3d0iX6t81rNxePbs+R2Rodm+kiQKIR2HKiai6hnunXxin9irT0rZ70sdlNHqRLQk"+
                                 "IIoEfxBiQERj0YLRSN54NG84zAcEFwDR58/ok5J6xMRuIT4T6xRNJw2HcXtl1F4ZuVvq1SIgtotI"+
                                 "7Xxct8SrhU9o8Mbs43hUM7B7aa6Zbk5euioMQw0WVJMD1VwFZKotM9NB2sVC7P6TDsR+r4FjhYFT"+
                                 "KcRpl75Tvq5jlhEmx8g1c/7CnX8GoOnm+v7spN7M+L6CjPaCrOqM5JLtmYUJcak8dgLRIwHlVIBx"+
                                 "THNzCfbCDYTyBwO9h0M5IxFANfzBMO5YtBAIrc8XhBKtlYdr57q3c9zT0KsKGo7g90jIq1EmJnUI"+
                                 "Ce18fBvPEwinhYtr8HGrZ2Jrvd3KyahElC1RR4VuoMY0VGdDtXjGWiIzHZm5DtI+GuLQYOBYa+BY"+
                                 "beBcYei8xxBebOBSBIHnQeDbLSk7Mezi9x9W/hmAxit2j6VH9Mf59yYE9SSFdCWH5sj4B2pKJ0rz"+
                                 "x6tK5JUlNQXZxekpHfua8yW87V7uu8lulVS3Zm+PDi6+R0wekJL7fGkdQmIHx71LSGhlYVJcHSIo"+
                                 "eHmQN8hHYHWKieD37UJiK9cDQGxke9Z5Y2rortVUVBnJJQntQNBRpkHUQIj5QDUBIIGx1mqIOUUa"+
                                 "wmoMYdVG8AojxB4jZAnUtRiKKjJC5ZvhCm2ou6taD6+jEVtPiE1U7D64PWIiyW8qJWgiKUCeFOjv"+
                                 "ge5LDOmPFIFKNJoZNZoVPZwdP5SbOJCb3J6bVpeRVBAelCYTx3nTwjEuMXC7LKRdoattFR5WQ3Rp"+
                                 "ZmASEbahRI8BQI2L6xKS2viENh4OCKeV69nE9qijIQGdvTRUGRlRQnCJRdoCQFR9VW8jTRZIQwCQ"+
                                 "iRbHSMvJKdoIWQ11rTRGlxtj9phgS8w9Sy1wxSYeRU6cSiS7/Nnz9cw61gNobE/RTHoYqE2zaSGz"+
                                 "qUFDyUEyN1R/fNB4PLA5vtPJATMpgaBsDUby5VGirhBuV4SoI1zUFi5pDBKU795Vn5W8Iyo0xVcc"+
                                 "wfYOxLkFI5yZdlZhDEolBVOBh1UTXfZ5Y/exPZrorjW0VdVUEGHVXi5AO8U4551Y+1ikHVFHmaKr"+
                                 "AkKMaaBO1VdDaqk4W9gaY8pN3KtMPCpNceVm+DIrr3JbWoUdvRzGr3HmVTf0nlpHcH2+ZM1VbHxP"+
                                 "4RwwhykBM6lBsykBg8mBEiyqJ1I6Fif9ua7LVg3RzzVrNFrYH+S9ugIY7WKvMm9cEJ3cGe3bESHe"+
                                 "Fy5uiZS1JkfUJ0RUJETsSU1M9pWEsr0DiLggV3iIo1Wai3Weq32+q22Ju+NurN1uN3tw3OHmEI20"+
                                 "w2ttI+mqeGir2Guq2JubkjAoNo5uTqgy96q2oFRb0artfWqcOLXOvFqktMEzvE2Q1PPm3Zrtz1+B"+
                                 "rhnQaHH+bFrwdLI/aC9ACd+fFCD9GdB4nGQszheIaCJGNBEnAXTkIex+X8qAH61bQuoSEvNJqAAS"+
                                 "bjBCOBDEahN7tYvJbX6MBgljr5heF8Ct8ePs9eOUyjilQaI8f36EmBMoFomoZI4rwsfWkm9mFGwJ"+
                                 "jbKG+tmZwVUVzTVUHaytGFhXsYud2FwPVDEMMcmGXecgaIRLmxG+zUi/fZjgVq+EXkJkx9L1x+uW"+
                                 "z3oUNLIrDxjiVQTxfqAq9UbwJGhET7hoLHYVyjQo6rHioVCfoTDOfn9av4zSISD0iPBtbLc8PMKP"+
                                 "6CEP5ckDmasV3Y/WJ6O0CwgtXI9GLr7Bx6OSjt5Dx1ayCcUsfLqbU4SEXx4o2B0szA8UJcr4fhwG"+
                                 "l0IiYFzhDvYsVzjfzhT4II6RhgCqKTHRIjNiUSHt6PAObFSXW3SXZ3wvLWuIkNTXf+ga2Dh89wHc"+
                                 "NrLOrbE1K2isbm8JFdvGI3aJyHJ/ZlcAU4Bw7gjiDofzRiKEI5GCkUjQbfD+X1Xi44EhrGe6ZRNc"+
                                 "ZThsty99wJfa50fvWz3S2gTENgFwOtgGFraOjvp8rKSgohG2UjS8mkPcRcXsoKB3MjxzyJhMAiLZ"+
                                 "A8Y006foq9JAnjZUB4CEoNJDNZjCFM/kAVyaHJ+xn5o3wto1Rc4dKek9fuXG3eV7T+4/eQW2cNe3"+
                                 "87NmQIsnTzXkb8+OCs/wFSeScbFYF747tl7m0wtKuB9D7kuTB3j3+tL7ZOQuAa5dSGrlE1u8Mc0M"+
                                 "dJY7XOKB7pYBi0zuEnv1yoDl8WoFZoeFbfLGNHpj61luVdTVmlVOgofDrGUYeBXTrZQAKyXCijwc"+
                                 "dng4bMfYRSFtQBUj6SrT9FS8DdS4/6Uglm8aKX+MumuKXTHH3XuYVjqd3zY9NXfs6MmzCxeuXr15"+
                                 "7+7D54+fv1vHxsaaAY1UlgxkxfamRvWkR3fmpLTkZ/XVVrUU78ySiZLIuO2eyFK8Sx3FtZmObmFi"+
                                 "9jEwzVTUPjq6kY4Gjlns7toloXSJCCCyAKNOMTDKuCYf90Ymei/FpcoLXkaClxNhu93tg+zNpWiX"+
                                 "Ciq6GOdQjHMsdLPd4Wafi7UPRdh4aiqRQKUHhUxP9bOCpCbavLBsTs1hYfMJXvMpTt2R3R1j/YNj"+
                                 "w+MzUweOHDp25sy5S9eW7wMdvX675my9ZkDj5btGE/zlUeK+MDB2EMmTggeSQ3qTQjuSI1oz4moz"+
                                 "EgtWq7gkwpsW4Y5KRNrnIGxK3BzLPZ3T3OBCLKrJx6ON49nsjW0DLpnt1gRc8s8+cC8FUUlGlOIc"+
                                 "9uAdd7nZg2QsQcPLKaid7vb5GJs8tHUe1j7NxTzQ2cJdYyteaytZR5kBUWUbqPONNKSm2tL4AmHb"+
                                 "aXbb6aDG6eq2vvau/r79o0Nj0xMzh2YPnTh+ZvHSj7fvPXrx7NU/tOny35P62gGV7QQOaAR0nqCc"+
                                 "/1ytVot6jGggjNsVJmgLFzX4+dQIaLu2Z7TnZVSlJeREhyf5ywKpXiI3dFRQQAEeWYaH1ZJcmmmu"+
                                 "TTTXejqmysulmggr91gt5IVoqyLAAmHha2sqRDiVklwKsHb5GNscV+sMhGWMPTTQCQBSxGspeQFA"+
                                 "eio+Bmo8Iw2xqRYvJk9UPZZZ1VpZ09i4r+MzoJ8VdPTIiQUQZddvPwQKWke9XzMgYBQnk/zHYoSg"+
                                 "hIE1HiMcjwKdPR+0o4OhnIFARqeQWM70CCATOiMkLaGCtkhpU5TfvviQppSY+u2pedFhUXxOIIUU"+
                                 "iIZFwazT4DZ5COudaLtiN/tClFUhyjIXZprlZOJnZypCORd6OuWirDJgpunOpskw83hHE5mDKQCE"+
                                 "01Ii62wDaYgFUQWLpK8eGRqRX7i7uKxqb11zS3tPz8DwyMQs0M7J+QuLl2/cuP3o3uOXT1+8W0e3"+
                                 "sXZAZbumk/zGYyVAQasTjCjBWBRvLJI3EsYGXajcn9ojJhXTMX4E94EwXqeI2CUhNwuItWxcNc+r"+
                                 "QkCrlHhXSlmlElZxkDhTygujeYnJRB7WlWNnKTY3irGBJtmbJDuaCK1N+C6OOa62ac5mKQ7GsTYG"+
                                 "iXaGMTYGEltjrOoWTw1FkrYSSUvJRU3BWF0V4+S4s6T8MxognLGpgyDvnD53aenqMhDOnYfPHz57"+
                                 "8+L1h3XQWY8PGi4pnIiXAUCAznAkmA2yR8JYQ4F0MAwa8Kf1SEidAvwuKlriju4L4nRLyP3+jHYB"+
                                 "rlVIauF6Nvq4V4OYYmDL6G67yehCukc+FRuOtE+IjsoNkib6iiQsBodEYCDhno72Ii9CrJ1xvI1h"+
                                 "tKV+tIVemJlOqJmOwMIQrboFq7bFQXmLkboKwtiAZawjhGq21dQdPjF/6uzF85euX75+58adR7cf"+
                                 "/ARi6smLt6/eflzHdtj6nfRQceEIMHt+NLk/YyCAuT+IKfclg9UHunABHpT2VhY6n4iSeWI7fJnt"+
                                 "IiIYqq66QQFhHw/XzPWsZ2Fr6a51TEwVFZRzlxIvBM/KJJBCLBfQdjBwBT5eRTxaNp+RImRHC7k+"+
                                 "eE8S3Jlqb8MwNeQaakuhOmwLI8utmyCqyi5QA6aJHhMUe91tfEP1oaaGB09ePAJ34P/0BlgeoBfA"+
                                 "5fW7j+uo61+69TzZ052AQ+8koBoY7q1sz24erk9I6OJ5dnI9OoHr4Xg00l2zPWFCDKLLlwHmPsD1"+
                                 "gNlFm5DY7OPWzPEEdIDZKScjykgI4HeKCXCWBdSf5FlBwxRibbNQVqkuVimudqke8BQ8MoWETSJi"+
                                 "I/AYP08MG4MiwJ0QluYwQ30yVIcI8rSmIk1b6WdAanM9HV/ST/zCtWvOQWcPHezalb8nMzU9LCSB"+
                                 "6xPrjtyOsi1xc6gnI5vILk1UZB0FkYFx4MIdugN9mtkeYGDawiOA0VeDj3sVBVFDRVRTkVUUZBnR"+
                                 "eQ8wOO4ObGtTX7x7GQUFynkmwiLdxTwVZgoqepKjcYytYYyDSagtNMAWKrMxFlpCOab6ripbMCqb"+
                                 "cRoKRA1FqraSj74q3wAA6vyjABrZs3MgLaIrLgBsPLQmhdUmRu7KzsqMjoxgUENc4XHO1lkwy1i4"+
                                 "LQfu2MIj1lFRjUxsPd0VNBPA7NTQUIBRKcGplOAM/PFuD4c8rB1QkMQTs5uEyHW1SnU2SXYySXA0"+
                                 "TkdYJdobRVtDoqwhoRa6fsZavsaaMmMwQtSGK23CKG/2UNtCAIB0trH0VPgGqnO9fxhAoyUFYA+n"+
                                 "L4jV7c9sFpOr2YQEb0pdiHhftH99fFhReECyVOjvw0xPjAcT6xykTTHWoZIAL8c5V+Cdy3COJQR4"+
                                 "Eda2yN0hD22Tj7bJRlr5WBiJ3F2L8LBsV+skRygAtMrIARpnaxhupR9moRNgouUP1ZBCNQUGqmwj"+
                                 "LWfFjSilTe5qW/AaimStrd56yiAHHezt+sMoaHfe/lA26MXBFg2YnJbTMYE4TJOfTwMHV8nGV/Ap"+
                                 "ZUJ6tR+nfHVqIYxhM/y8CGIkzN/GLNbGONPZIhduvgNlneNikYuwynQ2TXI0YZhC+GiXHIxdCuBi"+
                                 "DwVmB0RWrD000hoSYq4bZKbjC9VcpQNR5eope+ur2W/5AaawAa28yV11s5fWVobONg5E9cAfJwcN"+
                                 "FuX0BvsANK1g8fF7qGiZG7JRygSPQZbZy8BUUpDlNEwJw6OA5p5Ldc8mYzOpngl0oi/Rk0PAcxHO"+
                                 "AivTYHODaAtIvJVBvB2UYqzPRcFTnMzjrA0iLYFk9MMtIaGW+iGWkAAzHSlUS2yowdNT4eoqs7SV"+
                                 "mLoqNpu+c9zyg8vWjViVzXh1BRpwjNpKU90db99//Nyvg7u51j3c+P9luOYkPVCQBUxNE6hWqyUJ"+
                                 "XYhzFrnCawSUBrZnNQNdQXapICOqGZhyL5diAmyHh2Ohp3Me3iXdzTnc0YJL8Mxmk7P4zHC6l8gD"+
                                 "w4Y5Ms1NsFBDFhIebgEJM9UJMdUOgmoGGGkEmuiIDdSlBuoifVWenjJLS4mpoUhXV6BqK1tu/NZ2"+
                                 "8/cwxQ0g0NxUNiOUN1toqc+fu3Tz7uNV7/P4JbCFoHF/+ebDl9f49RjF3pxUMJeo8XarAiBA6SG4"+
                                 "CJCwCjaxkoYGvWUJwbmECC/ydCzGOxdgbArc7PKxtrkg16Bs/OxMSHZW27GOyajVKp5KcE0lucWR"+
                                 "PUIpeCnVyxvmQDWH8ox1ZcbaUgMNCUQVoBHoKbO1tvpobvXW2EpTUyCrKpDUFc02/tl603cOW35w"+
                                 "VNwA2fS98pbNtkaQQ8dOHz+9CHqui9dufXbPD56+Br3FlzNas4La0+LLCPBSnHMpHlaCg2Wg7dhw"+
                                 "x900tz0k+G68M0BT6G5f4La6QIeZjbTMdrXdjrJOdTYTWBoSrM1TXSxBDk5yMo11MIl2MI1wNAt1"+
                                 "tgyB24Qh7f1RDjyEE8nBGm9j6WaoR9LV8NZWZWluY6gp0tW2UNUUSCpbSGqKxj98Y7rhz5AN327d"+
                                 "sMFEXRWtoQSydVlh0fj0wYNHT59cWFq8dB0MN+48+AkwAl7xC5P3mgEdGR4q4LNinawSbY2y4RbJ"+
                                 "CFumk10+HrkDtN1guYMGyma7iwUoT6lOJilOpkkOULDi7IzYphCclRkAFGcPBX15tI1hmKUeSMMB"+
                                 "ptqB4GgOdpD1ROYQvoUh19wQb2aIgMPc7G0QZsZwfR2UhgpBbRtJRRGvtlXv+28Uvvuz+lYFR/Vt"+
                                 "wBOBKAOZKDc+vrtvELTvs4f/s0H98daDu2C+8XI9DeoXjTs+X/zk4cPDoyMVSYkRJCKHRIp3ssqE"+
                                 "mYOV5mSa6mSa4rjacCY6GMdZ68daQ0DBjrLSpxvpeFgYx9oZRYP6bW0QbgUJsdDzB0kHbI1CNWRG"+
                                 "6kKImthQXWSowdBVtVNVIthZ+TrbSGC2Amdbmp0V2tzEHqJnpKKsuGkjdNtW+62bHBU2gFSN2rbJ"+
                                 "XWVzSkhIXVNbZ48czIAOHD4JdAQ61eW7T0A++sKvs65ZQf9DsaAPvHnn0VBnd1FYSLCzXaCpfqQl"+
                                 "qFD6oMMMN9MJt9CLMNcNt9QPNdclQ7TczY3DrQwAHVCkAJcAU7C0ZWDqbqguMdQQguEORI2rp0LX"+
                                 "UbFUViRamwuNdWjaYHioSjHQYphAGMYQuqGOqcIGi03fW2/+3mHLBmeFDUilTVjlzVFSSUl5dW1j"+
                                 "K2AEdHTo+PzSlZu3Hzz76fdS0P8a2ODum6Wz51rLypLYLK6RnlBXzRei5m+oHmCk6WukRdTTxJoY"+
                                 "rRZvEFNANcaa/iZaq3SgmmIjDa6+Ch9sKIPWQVsJADLfpoC3MOEbaTG1tzE0t1I1FBna22ggVeuq"+
                                 "Qjd8a7bxW4uN39qBPP1ZREobAzns3AIw86iub2obGBoHI0Qwq3/5+v36Rhy/Qoj9cuYDL+vNm3cn"+
                                 "Dx6szskOxnlQNEGuVcFqqmGgBhKIuhiiBloHqZEmMDgScI+PgTpQDfuzzQHGT0PBS0PJQlnR08yY"+
                                 "ra/uBfoJdQWKBmC0ury0laEbvzUFgDZ9BwwRqGUwYKy3bRLTqClpWQVFxQDQwaOnwLjj+atfgc56"+
                                 "yvxaiwKA9fTJ08mhofT4BLEPm6KjztRQYmsrC/TV+PrAHAM0KiztbT66Kj462xhaSnSNrUT1raZK"+
                                 "Cm7Ghj56qgzQsgMHBDCBxkJdkai1zeD7b6A/fGO+8TtQ7O03/wCiDIiIRyIlp2ZW1TYeOn7mzoNn"+
                                 "oHh9uXbWufW8VkB/PR98geXew2fLN5f72jtSAgO8ba2I6ko0NUWmxlbgAFfjSE2BAR4DQBrbTJW2"+
                                 "uBrq0bWUgHxAZAHtUICO1BVJOiqQ7/5k9MM3Jhu+sd78nd3m74GrdlTcKONwQZJeWLwC5kFfMh77"+
                                 "FZz0ugH99wuBf3vz5i24F6tmT1kIi0k01McqbiJs20z6eeFUFY0VNyP0tclqCqvCAUd1RUDnMyD9"+
                                 "7/5k+P2fQJQBSw2Wk6ZqgFgCcvPVG3dfvH7/KzYZ/2wF/a9kQSAAZT149HRycjY3NYONxSDVVJBK"+
                                 "m6GKW2DaGl7AGSpvJqts9lJVAJi81BRwmkp63/27wXd/AlFmsvFbtJVlRmY28Id3H/707v167o/6"+
                                 "u5/3l5b5v/sE/+AJgBS4A+zF63dgi6+jozc0NIJLobrraGK2bvZQ3IhT2ojfthmvvNlTXUnv238H"+
                                 "y0JFie/DBts7y3cfg+3AXyvj/FFC7JepAWsHvrB598GTE6fP1tY2xgaHMBEIN20NzNZNKGUFg03f"+
                                 "s4jE5paO68v3wF0J/+AHsO7T/igK+ltvYPWbaK/fAhYgjpoaW3KTU3t7Bm7dfQQCc93veU0X/tEB"+
                                 "/fXNgLwOYvDlm/dgd/S3C6h/jRBb0yf8W5/8L6Og3xrE3/r/XwH9HfJfAX0F9GXB+VVBXxX0ZQr6"+
                                 "v0PO26m4gi41AAAAAElFTkSuQmCC")),0,$$.Length)))))
#endregion
#~~< ButtonCancel >~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
$ButtonCancel = New-Object System.Windows.Forms.Button
$ButtonCancel.FlatStyle = [System.Windows.Forms.FlatStyle]::System
$ButtonCancel.Location = New-Object System.Drawing.Point(557, 12)
$ButtonCancel.Size = New-Object System.Drawing.Size(87, 23)
$ButtonCancel.TabIndex = 0
$ButtonCancel.Text = $TextStrings.Close
$ButtonCancel.UseVisualStyleBackColor = $true
$ButtonCancel.add_Click({Close($ButtonCancel)})
#~~< SplitContainer1 >~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
$SplitContainer1 = New-Object System.Windows.Forms.SplitContainer
$SplitContainer1.Location = New-Object System.Drawing.Point(-3, 73)
$SplitContainer1.Panel1.Text = ""
$SplitContainer1.Panel2.Text = ""
$SplitContainer1.Size = New-Object System.Drawing.Size(1420, 768)
$SplitContainer1.SplitterDistance = 174
$SplitContainer1.TabIndex = 0
$SplitContainer1.Text = ""
#~~< SplitContainer1.Panel1 >~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
$SplitContainer1.Panel1.BackColor = [System.Drawing.Color]::White
#~~< Panel2 >~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
$Panel2 = New-Object System.Windows.Forms.Panel
$Panel2.BorderStyle = [System.Windows.Forms.BorderStyle]::FixedSingle
$Panel2.Dock = [System.Windows.Forms.DockStyle]::Fill
$Panel2.Location = New-Object System.Drawing.Point(0, 0)
$Panel2.Size = New-Object System.Drawing.Size(174, 768)
$Panel2.TabIndex = 0
$Panel2.Text = ""
$Panel2.BackColor = [System.Drawing.Color]::Gainsboro
#~~< lblChangeRules >~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
$lblChangeRules = New-Object System.Windows.Forms.Label
$lblChangeRules.Location = New-Object System.Drawing.Point(14, 106)
$lblChangeRules.Size = New-Object System.Drawing.Size(148, 18)
$lblChangeRules.TabIndex = 3
$lblChangeRules.Text = $TextStrings.RuleConfiguration
$lblChangeRules.Cursor = [System.Windows.Forms.Cursors]::Hand
$lblChangeRules.add_Click({lblChangeRulesClick($lblChangeRules)})
#~~< lblChangeStatus >~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
$lblChangeStatus = New-Object System.Windows.Forms.Label
$lblChangeStatus.Location = New-Object System.Drawing.Point(14, 63)
$lblChangeStatus.Size = New-Object System.Drawing.Size(148, 17)
$lblChangeStatus.TabIndex = 1
$lblChangeStatus.Text = $TextStrings.FirewallSettings
$lblChangeStatus.Cursor = [System.Windows.Forms.Cursors]::Hand
$lblChangeStatus.add_Click({lblChangeStatusClick($lblChangeStatus)})
#~~< lblStatus >~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
$lblStatus = New-Object System.Windows.Forms.Label
$lblStatus.Font = New-Object System.Drawing.Font("Tahoma", 8.25, [System.Drawing.FontStyle]::Bold, [System.Drawing.GraphicsUnit]::Point, ([System.Byte](0)))
$lblStatus.Location = New-Object System.Drawing.Point(14, 19)
$lblStatus.Size = New-Object System.Drawing.Size(148, 18)
$lblStatus.TabIndex = 0
$lblStatus.Text = $TextStrings.Current
$lblStatus.Cursor = [System.Windows.Forms.Cursors]::Hand
$lblStatus.add_Click({lblStatusClick($lblStatus)})
$Panel2.Controls.Add($lblChangeRules)
$Panel2.Controls.Add($lblChangeStatus)
$Panel2.Controls.Add($lblStatus)
$SplitContainer1.Panel1.Controls.Add($Panel2)
#~~< SplitContainer1.Panel2 >~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
#~~< PanelConfig >~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
$PanelConfig = New-Object System.Windows.Forms.Panel
$PanelConfig.BorderStyle = [System.Windows.Forms.BorderStyle]::FixedSingle
$PanelConfig.Location = New-Object System.Drawing.Point(454, 4)
$PanelConfig.Size = New-Object System.Drawing.Size(438, 386)
$PanelConfig.TabIndex = 0
$PanelConfig.Text = ""
$PanelConfig.Visible = $false
$PanelConfig.BackColor = [System.Drawing.Color]::Gainsboro
#~~< Label15 >~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
$Label15 = New-Object System.Windows.Forms.Label
$Label15.Font = New-Object System.Drawing.Font("Tahoma", 8.25, [System.Drawing.FontStyle]::Bold, [System.Drawing.GraphicsUnit]::Point, ([System.Byte](0)))
$Label15.Location = New-Object System.Drawing.Point(31, 59)
$Label15.Size = New-Object System.Drawing.Size(127, 17)
$Label15.TabIndex = 0
$Label15.Text = $TextStrings.InboundRules
$Label15.ForeColor = [System.Drawing.Color]::Firebrick
$Label15.add_Click({Label15Click($Label15)})
#~~< PictureBox8 >~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
$PictureBox8 = New-Object System.Windows.Forms.PictureBox
$PictureBox8.Location = New-Object System.Drawing.Point(18, 7)
$PictureBox8.Size = New-Object System.Drawing.Size(36, 35)
$PictureBox8.TabIndex = 0
$PictureBox8.TabStop = $false
$PictureBox8.Text = ""
#region PictureBox8.Image = ([System.Drawing.Image](...)
$PictureBox8.Image = ([System.Drawing.Image]([System.Drawing.Image]::FromStream((New-Object System.IO.MemoryStream(($$ = [System.Convert]::FromBase64String(
"iVBORw0KGgoAAAANSUhEUgAAACQAAAAjCAIAAABzZz93AAAAAXNSR0IArs4c6QAAAARnQU1BAACx"+
                                 "jwv8YQUAAAAgY0hSTQAAeiYAAICEAAD6AAAAgOgAAHUwAADqYAAAOpgAABdwnLpRPAAAAAlwSFlz"+
                                 "AAAOxAAADsQBlSsOGwAAB25JREFUSEvF12tQk1caB/Dup+3s7sx26E7triMWt6KOimi5REjAkJAQ"+
                                 "cgFygYSEQC6QhJBAQgKkBISC3BEhEJoIFYrhLhCgoFBuVkAg3CYQKAJFAXFBKI7u7Jd12KNhrGNd"+
                                 "iW7HzZwPmeTN+T3/55yced/fLf60+MF7ewHsvY0P3pv0rIX/B2xjfX11ZbW/q0OvuTTRVDFeW9xe"+
                                 "kldZXNCoK//uWt3337Xe6v5+YmR4bsa0OH9ndWV5c3Nze3v7bQvdTTY1NNCqVa31ND2d6tu5O7Bz"+
                                 "f3jn0eTO5uTTqY7H/fVrevWyvnCkPKdVnVaRm6ZT5+m0XzfXVnU0Nw3f+gEU8aNpevHO3LMiHj58"+
                                 "QwW7mFbMeVKWdTOG2ycL7otjDyrCaqJDx8sKxtVJ92ryt26UPmop/Of14qdd6p0ezb/6vtlq14yq"+
                                 "YqdU0pvZURWJEaUXlFWqzN6GSkNPh0XYU712Nl9pzJaNp4SbFMx0H8xAIt8Qy+qXsQYUvBtRwZ2y"+
                                 "EF0wvq0odyA9qjNZNHpRMpYvncwX3dVIjBcFdSJiGh4igxyzCNvKV0wlcBYSQ6aTeLNx9PxA38ns"+
                                 "2Ol00Vgiz5jMH5bTDSJiLsKhgEEcElP1wfjWMEp9MK6BS2kXBghPH4X96UPipx8R9v1xb6xcq21M"+
                                 "SSjghFRLuMU49xY/1xgsciiOM5/ImksKm0nm9kuohkiiCgO9LAielAVc52C7eITrLKw+wK2Ziibu"+
                                 "t8IftOIe2W8RBtbscZ26PTnqSlryRINOl5FcV6Itl4mKQplqf0I1CV5HQdykwDIcbdVMwk9S8i0h"+
                                 "sZODb2Xjm5je9XQ08dDfyDYfh9t+Yin27/LUyRRhPAG9kCFazIqcTRUOp0d3JQiqY/iZScm5Qu4F"+
                                 "ur/In5wuDs/ycCzFQWsJLt/CTzSiTzXiXOk2f8FY/R5z5LNw6Jm92wiS7ZQlm9JE5/2Qd/MUk6nC"+
                                 "sYSwATF5TEQoxUNzGD4L8cybSl63UnBNyioWhX7FChSHBEn8KQJPpNjdGXLwAMTeXoJwsShZmbqw"+
                                 "K02Z6+kswnia4lhjYsqEnNrP973NJ6hx0BSKtymOcUtIuk5H6iluNwLhtQSIBOXWGUkvZeAK6ASG"+
                                 "k53c04VjbdkGAclM2uy6tPM9tboiaUQOk1YUgFMhHfVohwznEwko1xkBdoBPbOd462mI+gAPNfIU"+
                                 "2wVST3AuR9qXYhzx1lbeH/+BcfhTi5IBbCtPOhnPmo5lTKRLumO5GRGCq3mZl6IjE/ihGYrYLLRr"+
                                 "safjVaxrJfyYDnas0PnvAvezNWS3IuSZHJQD7tA+srWV4PA+v/1/tmjNnmiUhvP88QS2QUYzivAS"+
                                 "BLRfTDWIfLukQfqIII0wJInFEGK9JGy2kkZW4FFiKqXUD/E15qzWxyPc3THQ4YQ/HPalH8YibEpK"+
                                 "72F5G9ioIZ63gYcRnoN2RtIGxZR2NqY5AN5AhPYyEHLYmauZSf2lqt7G2r621pbKq03lV5oua0uL"+
                                 "CsrUqu6qivqCnL2xisua5sL8bBa9iB1YSEJ/636K6mDfzcb1szw72NimQE8dCdZMdpdi4K2FuZR6"+
                                 "15A+D0vGK/AvB/F2bmQLl5jKYbQnScG/KjM+No3h/6WbUy7U7hu4XTH0aDXyVCzqXE9VOcDCBqn8"+
                                 "YYZolBk1wZYZwxQmgXJOlLwgubAkz1xWpK/KQSlDD3r+KzanYOrwLvF4z4EwXCPJpYWOLqZ5ZZO9"+
                                 "I3Eohjc2GnVO7mjPQcLbK64ALGKU6dz1OazvGGLgpNfIFz7jELIRFjiLCJn3yn6gANJrm7mbLJdJ"+
                                 "vs3BVhBc433R4BAqwUJKvJ01Hid1WKe407YsiP1lIvwrAiJLxG+vqQSY3BhmZgjjZ8lGNzMTuoTL"+
                                 "21AC6caP+jdhNSVauosTyfYzuuMX6XYHVC62auTpdMjRHKfDnOMHqScO5zjaxNlZZ6GcuzUqgIGm"+
                                 "+YyfpRhhtFlE8LwX9y4ufMWvYPM8kEr6VIODg2/CzN+Nj4w0Vlcp+Dyigz3J+hPh8YPZDjZRJz8P"+
                                 "tj+SctpGYmeTgoa1F18CGFgbkCZ4Ac1dwglW/MRrFOk6Vb7J0DxOA16mPmFv7MUV91dXB/p6s5MS"+
                                 "aV4ot+NH3Q78VX7MOsH+UJYXrK04H2AX7ytDl/AgjXiN/Jyhx/3MNA+z9xbYi0vBXc3c7GxbU6NC"+
                                 "LCLAXOluLtdUeQAr2kh5noYW8xKz620xNY8uvNZ7u1s5w+3Blro6gGm3M82McJr8IhN4E7sZFLPB"+
                                 "kP2Drt5M/bX3dpg5McCuPMkxS5QGxK63FRTzMEi+To9+QJeu0KLuUQvuJ73ivTsGDDBX251a4AmM"+
                                 "pGeBALNKi1qmipeoEfP+wjnKxXuJL3vviJmlkbUfwKKubi4DL3TUV7JMi1yiihaeMeGzZL6JxJ8i"+
                                 "Mrp+OZrfEXulPzPrE8BjDeIj7viHz5EFMyTeNJH3XAKfv9hu74IB6eHWxiube+PndTBvUC8WBALM"+
                                 "r6Xf+MHCtD4JPJDmtdJvjIHpljeXzN7L3fuf2rjnw8trJfCr/wAYxa8Jvc6UjAAAAABJRU5ErkJg"+
                                 "gg==")),0,$$.Length)))))
#endregion
$PictureBox8.add_Click({PictureBox8Click($PictureBox8)})
#~~< Label16 >~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
$Label16 = New-Object System.Windows.Forms.Label
$Label16.Font = New-Object System.Drawing.Font("Tahoma", 8.25, [System.Drawing.FontStyle]::Regular, [System.Drawing.GraphicsUnit]::Point, ([System.Byte](0)))
$Label16.Location = New-Object System.Drawing.Point(60, 12)
$Label16.Size = New-Object System.Drawing.Size(301, 36)
$Label16.TabIndex = 0
$Label16.Text = $TextStrings.RulesDescription
#~~< Label6 >~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
$Label6 = New-Object System.Windows.Forms.Label
$Label6.Font = New-Object System.Drawing.Font("Tahoma", 8.25, [System.Drawing.FontStyle]::Bold, [System.Drawing.GraphicsUnit]::Point, ([System.Byte](0)))
$Label6.Location = New-Object System.Drawing.Point(249, 58)
$Label6.Size = New-Object System.Drawing.Size(130, 15)
$Label6.TabIndex = 0
$Label6.Text = $TextStrings.Status
$Label6.TextAlign = [System.Drawing.ContentAlignment]::MiddleCenter
$Label6.ForeColor = [System.Drawing.Color]::Firebrick
#~~< Label1 >~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
$Label1 = New-Object System.Windows.Forms.Label
$Label1.Location = New-Object System.Drawing.Point(31, 84)
$Label1.Size = New-Object System.Drawing.Size(123, 15)
$Label1.TabIndex = 0
$Label1.Text = $TextStrings.SMBDirect
#~~< ListSMBD >~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
$ListSMBD = New-Object System.Windows.Forms.ComboBox
$ListSMBD.DropDownStyle = [System.Windows.Forms.ComboBoxStyle]::DropDownList
$ListSMBD.FormattingEnabled = $true
$ListSMBD.Location = New-Object System.Drawing.Point(249, 80)
$ListSMBD.Size = New-Object System.Drawing.Size(130, 21)
$ListSMBD.TabIndex = 4
$ListSMBD.Text = ""
$ListSMBD.Items.AddRange([System.Object[]](@($TextStrings.Enabled, $TextStrings.Disabled)))
#~~< Label7 >~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
$Label7 = New-Object System.Windows.Forms.Label
$Label7.Location = New-Object System.Drawing.Point(31, 108)
$Label7.Size = New-Object System.Drawing.Size(209, 15)
$Label7.TabIndex = 0
$Label7.Text = $TextStrings.WindowsFirewallRemoteManagement
#~~< ListWFRM >~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
$ListWFRM = New-Object System.Windows.Forms.ComboBox
$ListWFRM.DropDownStyle = [System.Windows.Forms.ComboBoxStyle]::DropDownList
$ListWFRM.FormattingEnabled = $true
$ListWFRM.Location = New-Object System.Drawing.Point(249, 104)
$ListWFRM.Size = New-Object System.Drawing.Size(130, 21)
$ListWFRM.TabIndex = 5
$ListWFRM.Text = ""
$ListWFRM.Items.AddRange([System.Object[]](@($TextStrings.Enabled, $TextStrings.Disabled)))
#~~< Label8 >~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
$Label8 = New-Object System.Windows.Forms.Label
$Label8.Location = New-Object System.Drawing.Point(31, 132)
$Label8.Size = New-Object System.Drawing.Size(123, 15)
$Label8.TabIndex = 0
$Label8.Text = $TextStrings.EventLogManagement
#~~< ListELM >~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
$ListELM = New-Object System.Windows.Forms.ComboBox
$ListELM.DropDownStyle = [System.Windows.Forms.ComboBoxStyle]::DropDownList
$ListELM.FormattingEnabled = $true
$ListELM.Location = New-Object System.Drawing.Point(249, 128)
$ListELM.Size = New-Object System.Drawing.Size(130, 21)
$ListELM.TabIndex = 6
$ListELM.Text = ""
$ListELM.Items.AddRange([System.Object[]](@($TextStrings.Enabled, $TextStrings.Disabled)))
#~~< Label9 >~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
$Label9 = New-Object System.Windows.Forms.Label
$Label9.Location = New-Object System.Drawing.Point(31, 156)
$Label9.Size = New-Object System.Drawing.Size(123, 15)
$Label9.TabIndex = 0
$Label9.Text = $TextStrings.ServiceManagement
#~~< ListSM >~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
$ListSM = New-Object System.Windows.Forms.ComboBox
$ListSM.DropDownStyle = [System.Windows.Forms.ComboBoxStyle]::DropDownList
$ListSM.FormattingEnabled = $true
$ListSM.Location = New-Object System.Drawing.Point(249, 152)
$ListSM.Size = New-Object System.Drawing.Size(130, 21)
$ListSM.TabIndex = 7
$ListSM.Text = ""
$ListSM.Items.AddRange([System.Object[]](@($TextStrings.Enabled, $TextStrings.Disabled)))
#~~< Label10 >~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
$Label10 = New-Object System.Windows.Forms.Label
$Label10.Location = New-Object System.Drawing.Point(31, 180)
$Label10.Size = New-Object System.Drawing.Size(197, 15)
$Label10.TabIndex = 0
$Label10.Text = $TextStrings.FileAndPrinterSharing
#~~< ListFPSM >~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
$ListFPSM = New-Object System.Windows.Forms.ComboBox
$ListFPSM.DropDownStyle = [System.Windows.Forms.ComboBoxStyle]::DropDownList
$ListFPSM.FormattingEnabled = $true
$ListFPSM.Location = New-Object System.Drawing.Point(249, 176)
$ListFPSM.Size = New-Object System.Drawing.Size(130, 21)
$ListFPSM.TabIndex = 8
$ListFPSM.Text = ""
$ListFPSM.Items.AddRange([System.Object[]](@($TextStrings.Enabled, $TextStrings.Disabled)))
#~~< Label11 >~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
$Label11 = New-Object System.Windows.Forms.Label
$Label11.Location = New-Object System.Drawing.Point(31, 204)
$Label11.Size = New-Object System.Drawing.Size(163, 15)
$Label11.TabIndex = 0
$Label11.Text = $TextStrings.RemoteVolumeManagement
#~~< ListRVM >~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
$ListRVM = New-Object System.Windows.Forms.ComboBox
$ListRVM.DropDownStyle = [System.Windows.Forms.ComboBoxStyle]::DropDownList
$ListRVM.FormattingEnabled = $true
$ListRVM.Location = New-Object System.Drawing.Point(249, 200)
$ListRVM.Size = New-Object System.Drawing.Size(130, 21)
$ListRVM.TabIndex = 9
$ListRVM.Text = ""
$ListRVM.Items.AddRange([System.Object[]](@($TextStrings.Enabled, $TextStrings.Disabled)))
#~~< Label12 >~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
$Label12 = New-Object System.Windows.Forms.Label
$Label12.Location = New-Object System.Drawing.Point(31, 228)
$Label12.Size = New-Object System.Drawing.Size(136, 15)
$Label12.TabIndex = 0
$Label12.Text = $TextStrings.PingDescription
#~~< ListICMP >~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
$ListICMP = New-Object System.Windows.Forms.ComboBox
$ListICMP.DropDownStyle = [System.Windows.Forms.ComboBoxStyle]::DropDownList
$ListICMP.FormattingEnabled = $true
$ListICMP.Location = New-Object System.Drawing.Point(249, 224)
$ListICMP.Size = New-Object System.Drawing.Size(130, 21)
$ListICMP.TabIndex = 10
$ListICMP.Text = ""
$ListICMP.Items.AddRange([System.Object[]](@($TextStrings.Enabled, $TextStrings.Disabled)))
#~~< Label13 >~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
$Label13 = New-Object System.Windows.Forms.Label
$Label13.Location = New-Object System.Drawing.Point(31, 252)
$Label13.Size = New-Object System.Drawing.Size(197, 15)
$Label13.TabIndex = 0
$Label13.Text = $TextStrings.RemoteScheduledTaskManagement
#~~< ListRSTM >~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
$ListRSTM = New-Object System.Windows.Forms.ComboBox
$ListRSTM.DropDownStyle = [System.Windows.Forms.ComboBoxStyle]::DropDownList
$ListRSTM.FormattingEnabled = $true
$ListRSTM.Location = New-Object System.Drawing.Point(249, 248)
$ListRSTM.Size = New-Object System.Drawing.Size(130, 21)
$ListRSTM.TabIndex = 11
$ListRSTM.Text = ""
$ListRSTM.Items.AddRange([System.Object[]](@($TextStrings.Enabled, $TextStrings.Disabled)))
#~~< Label14 >~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
$Label14 = New-Object System.Windows.Forms.Label
$Label14.Location = New-Object System.Drawing.Point(31, 276)
$Label14.Size = New-Object System.Drawing.Size(98, 15)
$Label14.TabIndex = 0
$Label14.Text = $TextStrings.RemoteDesktop
#~~< ListRDP >~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
$ListRDP = New-Object System.Windows.Forms.ComboBox
$ListRDP.DropDownStyle = [System.Windows.Forms.ComboBoxStyle]::DropDownList
$ListRDP.FormattingEnabled = $true
$ListRDP.Location = New-Object System.Drawing.Point(249, 272)
$ListRDP.Size = New-Object System.Drawing.Size(130, 21)
$ListRDP.TabIndex = 12
$ListRDP.Text = ""
$ListRDP.Items.AddRange([System.Object[]](@($TextStrings.Enabled, $TextStrings.Disabled)))
#~~< lblWinRM >~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
$lblWinRM = New-Object System.Windows.Forms.Label
$lblWinRM.Location = New-Object System.Drawing.Point(31, 300)
$lblWinRM.Size = New-Object System.Drawing.Size(98, 15)
$lblWinRM.TabStop = $false
$lblWinRM.Text = $TextStrings.WindowsRemoteManagement
#~~< ListWinRM >~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
$ListWinRM = New-Object System.Windows.Forms.ComboBox
$ListWinRM.DropDownStyle = [System.Windows.Forms.ComboBoxStyle]::DropDownList
$ListWinRM.FormattingEnabled = $true
$ListWinRM.Location = New-Object System.Drawing.Point(249, 300)
$ListWinRM.Size = New-Object System.Drawing.Size(130, 21)
$ListWinRM.TabIndex = 12
$ListWinRM.Text = ""
$ListWinRM.Items.AddRange([System.Object[]](@($TextStrings.Enabled, $TextStrings.Disabled)))
$PanelConfig.Controls.Add($Label14)
$PanelConfig.Controls.Add($ListRDP)
$PanelConfig.Controls.Add($Label15)
$PanelConfig.Controls.Add($ListRSTM)
$PanelConfig.Controls.Add($PictureBox8)
$PanelConfig.Controls.Add($Label13)
$PanelConfig.Controls.Add($ListICMP)
$PanelConfig.Controls.Add($Label16)
$PanelConfig.Controls.Add($Label12)
$PanelConfig.Controls.Add($ListRVM)
$PanelConfig.Controls.Add($Label11)
$PanelConfig.Controls.Add($ListFPSM)
$PanelConfig.Controls.Add($Label6)
$PanelConfig.Controls.Add($Label9)
$PanelConfig.Controls.Add($ListSM)
$PanelConfig.Controls.Add($Label1)
$PanelConfig.Controls.Add($Label8)
$PanelConfig.Controls.Add($Label10)
$PanelConfig.Controls.Add($ListWFRM)
$PanelConfig.Controls.Add($ListSMBD)
$PanelConfig.Controls.Add($Label7)
$PanelConfig.Controls.Add($ListELM)
$PanelConfig.Controls.Add($lblWinRM)
$PanelConfig.Controls.Add($ListWinRM)
#~~< PanelChange >~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
$PanelChange = New-Object System.Windows.Forms.Panel
$PanelChange.BorderStyle = [System.Windows.Forms.BorderStyle]::FixedSingle
$PanelChange.Location = New-Object System.Drawing.Point(85, 236)
$PanelChange.Size = New-Object System.Drawing.Size(438, 385)
$PanelChange.TabIndex = 45
$PanelChange.Text = ""
$PanelChange.Visible = $false
$PanelChange.BackColor = [System.Drawing.Color]::Gainsboro
#~~< GroupBox3 >~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
$GroupBox3 = New-Object System.Windows.Forms.GroupBox
$GroupBox3.Font = New-Object System.Drawing.Font("Tahoma", 8.25, [System.Drawing.FontStyle]::Bold, [System.Drawing.GraphicsUnit]::Point, ([System.Byte](0)))
$GroupBox3.Location = New-Object System.Drawing.Point(24, 233)
$GroupBox3.Size = New-Object System.Drawing.Size(389, 100)
$GroupBox3.TabIndex = 78
$GroupBox3.TabStop = $false
$GroupBox3.Text = $TextStrings.PublicLocations
#~~< ChkboxPublicDisable >~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
$ChkboxPublicDisable = New-Object System.Windows.Forms.RadioButton
$ChkboxPublicDisable.Font = New-Object System.Drawing.Font("Tahoma", 8.25, [System.Drawing.FontStyle]::Regular, [System.Drawing.GraphicsUnit]::Point, ([System.Byte](0)))
$ChkboxPublicDisable.Location = New-Object System.Drawing.Point(87, 65)
$ChkboxPublicDisable.Size = New-Object System.Drawing.Size(268, 24)
$ChkboxPublicDisable.TabIndex = 6
$ChkboxPublicDisable.TabStop = $true
$ChkboxPublicDisable.Text = $TextStrings.TurnOffFirewall
$ChkboxPublicDisable.UseVisualStyleBackColor = $true
#~~< ChkboxPublicEnable >~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
$ChkboxPublicEnable = New-Object System.Windows.Forms.RadioButton
$ChkboxPublicEnable.Font = New-Object System.Drawing.Font("Tahoma", 8.25, [System.Drawing.FontStyle]::Regular, [System.Drawing.GraphicsUnit]::Point, ([System.Byte](0)))
$ChkboxPublicEnable.Location = New-Object System.Drawing.Point(87, 28)
$ChkboxPublicEnable.Size = New-Object System.Drawing.Size(168, 24)
$ChkboxPublicEnable.TabIndex = 5
$ChkboxPublicEnable.TabStop = $true
$ChkboxPublicEnable.Text = $TextStrings.TurnOnFirewall
$ChkboxPublicEnable.UseVisualStyleBackColor = $true
#~~< PictureBox5 >~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
$PictureBox5 = New-Object System.Windows.Forms.PictureBox
$PictureBox5.Location = New-Object System.Drawing.Point(42, 59)
$PictureBox5.Size = New-Object System.Drawing.Size(30, 35)
$PictureBox5.TabIndex = 72
$PictureBox5.TabStop = $false
$PictureBox5.Text = ""
#region PictureBox5.Image = ([System.Drawing.Image](...)
$PictureBox5.Image = ([System.Drawing.Image]([System.Drawing.Image]::FromStream((New-Object System.IO.MemoryStream(($$ = [System.Convert]::FromBase64String(
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
#~~< PictureBox6 >~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
$PictureBox6 = New-Object System.Windows.Forms.PictureBox
$PictureBox6.Location = New-Object System.Drawing.Point(42, 20)
$PictureBox6.Size = New-Object System.Drawing.Size(30, 35)
$PictureBox6.TabIndex = 72
$PictureBox6.TabStop = $false
$PictureBox6.Text = ""
#region PictureBox6.Image = ([System.Drawing.Image](...)
$PictureBox6.Image = ([System.Drawing.Image]([System.Drawing.Image]::FromStream((New-Object System.IO.MemoryStream(($$ = [System.Convert]::FromBase64String(
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
$GroupBox3.Controls.Add($ChkboxPublicDisable)
$GroupBox3.Controls.Add($ChkboxPublicEnable)
$GroupBox3.Controls.Add($PictureBox5)
$GroupBox3.Controls.Add($PictureBox6)
#~~< GroupBox2 >~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
$GroupBox2 = New-Object System.Windows.Forms.GroupBox
$GroupBox2.Font = New-Object System.Drawing.Font("Tahoma", 8.25, [System.Drawing.FontStyle]::Bold, [System.Drawing.GraphicsUnit]::Point, ([System.Byte](0)))
$GroupBox2.Location = New-Object System.Drawing.Point(24, 124)
$GroupBox2.Size = New-Object System.Drawing.Size(389, 100)
$GroupBox2.TabIndex = 78
$GroupBox2.TabStop = $false
$GroupBox2.Text = $TextStrings.PrivateLocations
#~~< ChkboxPrivateDisable >~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
$ChkboxPrivateDisable = New-Object System.Windows.Forms.RadioButton
$ChkboxPrivateDisable.Font = New-Object System.Drawing.Font("Tahoma", 8.25, [System.Drawing.FontStyle]::Regular, [System.Drawing.GraphicsUnit]::Point, ([System.Byte](0)))
$ChkboxPrivateDisable.Location = New-Object System.Drawing.Point(87, 65)
$ChkboxPrivateDisable.Size = New-Object System.Drawing.Size(268, 24)
$ChkboxPrivateDisable.TabIndex = 4
$ChkboxPrivateDisable.TabStop = $true
$ChkboxPrivateDisable.Text = $TextStrings.TurnOffFirewall
$ChkboxPrivateDisable.UseVisualStyleBackColor = $true
#~~< ChkboxPrivateEnable >~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
$ChkboxPrivateEnable = New-Object System.Windows.Forms.RadioButton
$ChkboxPrivateEnable.Font = New-Object System.Drawing.Font("Tahoma", 8.25, [System.Drawing.FontStyle]::Regular, [System.Drawing.GraphicsUnit]::Point, ([System.Byte](0)))
$ChkboxPrivateEnable.Location = New-Object System.Drawing.Point(87, 28)
$ChkboxPrivateEnable.Size = New-Object System.Drawing.Size(168, 24)
$ChkboxPrivateEnable.TabIndex = 3
$ChkboxPrivateEnable.TabStop = $true
$ChkboxPrivateEnable.Text = "Turn on Windows Firewall"
$ChkboxPrivateEnable.UseVisualStyleBackColor = $true
#~~< PictureBox3 >~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
$PictureBox3 = New-Object System.Windows.Forms.PictureBox
$PictureBox3.Location = New-Object System.Drawing.Point(42, 59)
$PictureBox3.Size = New-Object System.Drawing.Size(30, 35)
$PictureBox3.TabIndex = 2
$PictureBox3.TabStop = $false
$PictureBox3.Text = ""
#region PictureBox3.Image = ([System.Drawing.Image](...)
$PictureBox3.Image = ([System.Drawing.Image]([System.Drawing.Image]::FromStream((New-Object System.IO.MemoryStream(($$ = [System.Convert]::FromBase64String(
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
#~~< PictureBox4 >~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
$PictureBox4 = New-Object System.Windows.Forms.PictureBox
$PictureBox4.Location = New-Object System.Drawing.Point(42, 20)
$PictureBox4.Size = New-Object System.Drawing.Size(30, 35)
$PictureBox4.TabIndex = 72
$PictureBox4.TabStop = $false
$PictureBox4.Text = ""
#region PictureBox4.Image = ([System.Drawing.Image](...)
$PictureBox4.Image = ([System.Drawing.Image]([System.Drawing.Image]::FromStream((New-Object System.IO.MemoryStream(($$ = [System.Convert]::FromBase64String(
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
$GroupBox2.Controls.Add($ChkboxPrivateDisable)
$GroupBox2.Controls.Add($ChkboxPrivateEnable)
$GroupBox2.Controls.Add($PictureBox3)
$GroupBox2.Controls.Add($PictureBox4)
#~~< GroupBox1 >~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
$GroupBox1 = New-Object System.Windows.Forms.GroupBox
$GroupBox1.Font = New-Object System.Drawing.Font("Tahoma", 8.25, [System.Drawing.FontStyle]::Bold, [System.Drawing.GraphicsUnit]::Point, ([System.Byte](0)))
$GroupBox1.Location = New-Object System.Drawing.Point(24, 13)
$GroupBox1.Size = New-Object System.Drawing.Size(389, 100)
$GroupBox1.TabIndex = 0
$GroupBox1.TabStop = $false
$GroupBox1.Text = $TextStrings.DomainLocations
#~~< ChkboxDomainDisable >~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
$ChkboxDomainDisable = New-Object System.Windows.Forms.RadioButton
$ChkboxDomainDisable.Font = New-Object System.Drawing.Font("Tahoma", 8.25, [System.Drawing.FontStyle]::Regular, [System.Drawing.GraphicsUnit]::Point, ([System.Byte](0)))
$ChkboxDomainDisable.Location = New-Object System.Drawing.Point(87, 65)
$ChkboxDomainDisable.Size = New-Object System.Drawing.Size(268, 24)
$ChkboxDomainDisable.TabIndex = 2
$ChkboxDomainDisable.TabStop = $true
$ChkboxDomainDisable.Text = $TextStrings.TurnOffFirewall
$ChkboxDomainDisable.UseVisualStyleBackColor = $true
#~~< ChkboxDomainEnable >~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
$ChkboxDomainEnable = New-Object System.Windows.Forms.RadioButton
$ChkboxDomainEnable.Font = New-Object System.Drawing.Font("Tahoma", 8.25, [System.Drawing.FontStyle]::Regular, [System.Drawing.GraphicsUnit]::Point, ([System.Byte](0)))
$ChkboxDomainEnable.Location = New-Object System.Drawing.Point(87, 28)
$ChkboxDomainEnable.Size = New-Object System.Drawing.Size(168, 24)
$ChkboxDomainEnable.TabIndex = 1
$ChkboxDomainEnable.TabStop = $true
$ChkboxDomainEnable.Text = $TextStrings.TurnOnFirewall
$ChkboxDomainEnable.UseVisualStyleBackColor = $true
#~~< PictureBox2 >~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
$PictureBox2 = New-Object System.Windows.Forms.PictureBox
$PictureBox2.Location = New-Object System.Drawing.Point(42, 59)
$PictureBox2.Size = New-Object System.Drawing.Size(30, 35)
$PictureBox2.TabIndex = 72
$PictureBox2.TabStop = $false
$PictureBox2.Text = ""
#region PictureBox2.Image = ([System.Drawing.Image](...)
$PictureBox2.Image = ([System.Drawing.Image]([System.Drawing.Image]::FromStream((New-Object System.IO.MemoryStream(($$ = [System.Convert]::FromBase64String(
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
#~~< PictureBox1 >~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
$PictureBox1 = New-Object System.Windows.Forms.PictureBox
$PictureBox1.Location = New-Object System.Drawing.Point(42, 22)
$PictureBox1.Size = New-Object System.Drawing.Size(30, 35)
$PictureBox1.TabIndex = 72
$PictureBox1.TabStop = $false
$PictureBox1.Text = ""
#region PictureBox1.Image = ([System.Drawing.Image](...)
$PictureBox1.Image = ([System.Drawing.Image]([System.Drawing.Image]::FromStream((New-Object System.IO.MemoryStream(($$ = [System.Convert]::FromBase64String(
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
$GroupBox1.Controls.Add($ChkboxDomainDisable)
$GroupBox1.Controls.Add($ChkboxDomainEnable)
$GroupBox1.Controls.Add($PictureBox2)
$GroupBox1.Controls.Add($PictureBox1)
$PanelChange.Controls.Add($GroupBox3)
$PanelChange.Controls.Add($GroupBox2)
$PanelChange.Controls.Add($GroupBox1)
#~~< PanelStatus >~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
$PanelStatus = New-Object System.Windows.Forms.Panel
$PanelStatus.BorderStyle = [System.Windows.Forms.BorderStyle]::FixedSingle
$PanelStatus.Location = New-Object System.Drawing.Point(8, 3)
$PanelStatus.Size = New-Object System.Drawing.Size(438, 227)
$PanelStatus.TabIndex = 44
$PanelStatus.Text = ""
$PanelStatus.BackColor = [System.Drawing.Color]::Gainsboro
#~~< GroupBoxPublic >~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
$GroupBoxPublic = New-Object System.Windows.Forms.GroupBox
$GroupBoxPublic.Font = New-Object System.Drawing.Font("Tahoma", 8.25, [System.Drawing.FontStyle]::Bold, [System.Drawing.GraphicsUnit]::Point, ([System.Byte](0)))
$GroupBoxPublic.Location = New-Object System.Drawing.Point(9, 123)
$GroupBoxPublic.Size = New-Object System.Drawing.Size(430, 48)
$GroupBoxPublic.TabIndex = 72
$GroupBoxPublic.TabStop = $false
$GroupBoxPublic.Text = ""
#~~< Label4 >~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
$Label4 = New-Object System.Windows.Forms.Label
$Label4.Font = New-Object System.Drawing.Font("Tahoma", 9.75, [System.Drawing.FontStyle]::Bold, [System.Drawing.GraphicsUnit]::Point, ([System.Byte](0)))
$Label4.Location = New-Object System.Drawing.Point(36, 17)
$Label4.Size = New-Object System.Drawing.Size(152, 23)
$Label4.TabIndex = 71
$Label4.Text = $TextStrings.PublicNetworks
#~~< pboxpublicUpArrow >~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
$pboxpublicUpArrow = New-Object System.Windows.Forms.PictureBox
$pboxpublicUpArrow.BackgroundImageLayout = [System.Windows.Forms.ImageLayout]::Center
$pboxpublicUpArrow.Location = New-Object System.Drawing.Point(411, 4)
$pboxpublicUpArrow.Size = New-Object System.Drawing.Size(17, 20)
$pboxpublicUpArrow.TabIndex = 68
$pboxpublicUpArrow.TabStop = $false
$pboxpublicUpArrow.Text = ""
$pboxpublicUpArrow.Visible = $false
#region pboxpublicUpArrow.BackgroundImage = ([System.Drawing.Image](...)
$pboxpublicUpArrow.BackgroundImage = ([System.Drawing.Image]([System.Drawing.Image]::FromStream((New-Object System.IO.MemoryStream(($$ = [System.Convert]::FromBase64String(
"iVBORw0KGgoAAAANSUhEUgAAAA4AAAAOCAIAAACQKrqGAAAAAXNSR0IArs4c6QAAAARnQU1BAACx"+
                                 "jwv8YQUAAAAgY0hSTQAAeiYAAICEAAD6AAAAgOgAAHUwAADqYAAAOpgAABdwnLpRPAAAAAlwSFlz"+
                                 "AAAOwQAADsEBuJFr7QAAALVJREFUKFN1kTESBCEIBL3MyIf4Fv9rbmyqVYb+wuxudCyWdfeIABuE"+
                                 "4dNaM8ustbVW+mLe+zHGDoHCcs4xxlJK7/27DA5CJPFExghH4mlCG1Qj+McxDwCY4b8aReYo5iQT"+
                                 "leHYwDmHPQ76QrnNjBckjvx268p+IQQ+w0EovW9dMVBKiTLxE4TQh5mNci1kkaKE9KVmryViUXOa"+
                                 "LrjEOk7AxtKPHA82r6UPqwV+OawMR5m06el/3unQ3hoH2NIAAAAASUVORK5CYII=")),0,$$.Length)))))
#endregion
$pboxpublicUpArrow.add_Click({PboxPublicUpArrowClick($pboxpublicUpArrow)})
#~~< picturePublicON >~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
$picturePublicON = New-Object System.Windows.Forms.PictureBox
$picturePublicON.Location = New-Object System.Drawing.Point(1, 10)
$picturePublicON.Size = New-Object System.Drawing.Size(30, 35)
$picturePublicON.TabIndex = 69
$picturePublicON.TabStop = $false
$picturePublicON.Text = ""
#region picturePublicON.Image = ([System.Drawing.Image](...)
$picturePublicON.Image = ([System.Drawing.Image]([System.Drawing.Image]::FromStream((New-Object System.IO.MemoryStream(($$ = [System.Convert]::FromBase64String(
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
#~~< picturePublicOFF >~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
$picturePublicOFF = New-Object System.Windows.Forms.PictureBox
$picturePublicOFF.Location = New-Object System.Drawing.Point(1, 10)
$picturePublicOFF.Size = New-Object System.Drawing.Size(30, 35)
$picturePublicOFF.TabIndex = 70
$picturePublicOFF.TabStop = $false
$picturePublicOFF.Text = ""
#region picturePublicOFF.Image = ([System.Drawing.Image](...)
$picturePublicOFF.Image = ([System.Drawing.Image]([System.Drawing.Image]::FromStream((New-Object System.IO.MemoryStream(($$ = [System.Convert]::FromBase64String(
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
#~~< RichTextBoxPublic >~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
$RichTextBoxPublic = New-Object System.Windows.Forms.RichTextBox
$RichTextBoxPublic.Font = New-Object System.Drawing.Font("Tahoma", 8.25, [System.Drawing.FontStyle]::Regular, [System.Drawing.GraphicsUnit]::Point, ([System.Byte](0)))
$RichTextBoxPublic.Location = New-Object System.Drawing.Point(6, 49)
$RichTextBoxPublic.Size = New-Object System.Drawing.Size(410, 68)
$RichTextBoxPublic.TabIndex = 70
$RichTextBoxPublic.Text = ""
#~~< pboxpublicdownArrow >~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
$pboxpublicdownArrow = New-Object System.Windows.Forms.PictureBox
$pboxpublicdownArrow.BackgroundImageLayout = [System.Windows.Forms.ImageLayout]::Center
$pboxpublicdownArrow.Location = New-Object System.Drawing.Point(413, 4)
$pboxpublicdownArrow.Size = New-Object System.Drawing.Size(17, 20)
$pboxpublicdownArrow.TabIndex = 18
$pboxpublicdownArrow.TabStop = $false
$pboxpublicdownArrow.Text = ""
#region pboxpublicdownArrow.BackgroundImage = ([System.Drawing.Image](...)
$pboxpublicdownArrow.BackgroundImage = ([System.Drawing.Image]([System.Drawing.Image]::FromStream((New-Object System.IO.MemoryStream(($$ = [System.Convert]::FromBase64String(
"iVBORw0KGgoAAAANSUhEUgAAAA4AAAAOCAIAAACQKrqGAAAAAXNSR0IArs4c6QAAAARnQU1BAACx"+
                                 "jwv8YQUAAAAgY0hSTQAAeiYAAICEAAD6AAAAgOgAAHUwAADqYAAAOpgAABdwnLpRPAAAALFJREFU"+
                                 "KFNlUbkRBCEM4zIiCqEW+iUnJoUZQroguxMrxvi8Cnb8yMJrfcYY7oH3vvfOWBBjXGudFFSg1ppz"+
                                 "bq19FZCiiBY5TnjkzDlRwRdgRdgOJSQkQYagDGfIRuDkXTY0SbS5yaaKZCmFMcWQYpKVS+UrIYSU"+
                                 "EldEgJRC7F7Vk7td2Y0nkHv8qcofQMzwrqo5J1XfB77H0j0Tn2MZC94D1wJjrJhER6yxYgy31NCm"+
                                 "/ABBhdDeaFZB5wAAAABJRU5ErkJggg==")),0,$$.Length)))))
#endregion
$pboxpublicdownArrow.add_Click({PboxPublicDownArrowClick($pboxpublicdownArrow)})
$GroupBoxPublic.Controls.Add($Label4)
$GroupBoxPublic.Controls.Add($pboxpublicUpArrow)
$GroupBoxPublic.Controls.Add($picturePublicON)
$GroupBoxPublic.Controls.Add($picturePublicOFF)
$GroupBoxPublic.Controls.Add($RichTextBoxPublic)
$GroupBoxPublic.Controls.Add($pboxpublicdownArrow)
$GroupBoxPublic.ForeColor = [System.Drawing.Color]::Black
#~~< GroupBoxPrivate >~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
$GroupBoxPrivate = New-Object System.Windows.Forms.GroupBox
$GroupBoxPrivate.Font = New-Object System.Drawing.Font("Tahoma", 8.25, [System.Drawing.FontStyle]::Bold, [System.Drawing.GraphicsUnit]::Point, ([System.Byte](0)))
$GroupBoxPrivate.Location = New-Object System.Drawing.Point(9, 60)
$GroupBoxPrivate.Size = New-Object System.Drawing.Size(430, 48)
$GroupBoxPrivate.TabIndex = 69
$GroupBoxPrivate.TabStop = $false
$GroupBoxPrivate.Text = ""
#~~< Label3 >~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
$Label3 = New-Object System.Windows.Forms.Label
$Label3.Font = New-Object System.Drawing.Font("Tahoma", 9.75, [System.Drawing.FontStyle]::Bold, [System.Drawing.GraphicsUnit]::Point, ([System.Byte](0)))
$Label3.Location = New-Object System.Drawing.Point(36, 17)
$Label3.Size = New-Object System.Drawing.Size(152, 23)
$Label3.TabIndex = 71
$Label3.Text = $TextStrings.PrivateNetworks
#~~< pboxprivateUpArrow >~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
$pboxprivateUpArrow = New-Object System.Windows.Forms.PictureBox
$pboxprivateUpArrow.BackgroundImageLayout = [System.Windows.Forms.ImageLayout]::Center
$pboxprivateUpArrow.Location = New-Object System.Drawing.Point(411, 4)
$pboxprivateUpArrow.Size = New-Object System.Drawing.Size(17, 20)
$pboxprivateUpArrow.TabIndex = 68
$pboxprivateUpArrow.TabStop = $false
$pboxprivateUpArrow.Text = ""
$pboxprivateUpArrow.Visible = $false
#region pboxprivateUpArrow.BackgroundImage = ([System.Drawing.Image](...)
$pboxprivateUpArrow.BackgroundImage = ([System.Drawing.Image]([System.Drawing.Image]::FromStream((New-Object System.IO.MemoryStream(($$ = [System.Convert]::FromBase64String(
"iVBORw0KGgoAAAANSUhEUgAAAA4AAAAOCAIAAACQKrqGAAAAAXNSR0IArs4c6QAAAARnQU1BAACx"+
                                 "jwv8YQUAAAAgY0hSTQAAeiYAAICEAAD6AAAAgOgAAHUwAADqYAAAOpgAABdwnLpRPAAAAAlwSFlz"+
                                 "AAAOwQAADsEBuJFr7QAAALVJREFUKFN1kTESBCEIBL3MyIf4Fv9rbmyqVYb+wuxudCyWdfeIABuE"+
                                 "4dNaM8ustbVW+mLe+zHGDoHCcs4xxlJK7/27DA5CJPFExghH4mlCG1Qj+McxDwCY4b8aReYo5iQT"+
                                 "leHYwDmHPQ76QrnNjBckjvx268p+IQQ+w0EovW9dMVBKiTLxE4TQh5mNci1kkaKE9KVmryViUXOa"+
                                 "LrjEOk7AxtKPHA82r6UPqwV+OawMR5m06el/3unQ3hoH2NIAAAAASUVORK5CYII=")),0,$$.Length)))))
#endregion
$pboxprivateUpArrow.add_Click({PboxPrivateUpArrowClick($pboxprivateUpArrow)})
#~~< picturePrivateON >~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
$picturePrivateON = New-Object System.Windows.Forms.PictureBox
$picturePrivateON.Location = New-Object System.Drawing.Point(1, 10)
$picturePrivateON.Size = New-Object System.Drawing.Size(30, 35)
$picturePrivateON.TabIndex = 69
$picturePrivateON.TabStop = $false
$picturePrivateON.Text = ""
#region picturePrivateON.Image = ([System.Drawing.Image](...)
$picturePrivateON.Image = ([System.Drawing.Image]([System.Drawing.Image]::FromStream((New-Object System.IO.MemoryStream(($$ = [System.Convert]::FromBase64String(
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
#~~< picturePrivateOFF >~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
$picturePrivateOFF = New-Object System.Windows.Forms.PictureBox
$picturePrivateOFF.Location = New-Object System.Drawing.Point(1, 10)
$picturePrivateOFF.Size = New-Object System.Drawing.Size(30, 35)
$picturePrivateOFF.TabIndex = 70
$picturePrivateOFF.TabStop = $false
$picturePrivateOFF.Text = ""
#region picturePrivateOFF.Image = ([System.Drawing.Image](...)
$picturePrivateOFF.Image = ([System.Drawing.Image]([System.Drawing.Image]::FromStream((New-Object System.IO.MemoryStream(($$ = [System.Convert]::FromBase64String(
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
#~~< RichTextBoxPrivate >~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
$RichTextBoxPrivate = New-Object System.Windows.Forms.RichTextBox
$RichTextBoxPrivate.Font = New-Object System.Drawing.Font("Tahoma", 8.25, [System.Drawing.FontStyle]::Regular, [System.Drawing.GraphicsUnit]::Point, ([System.Byte](0)))
$RichTextBoxPrivate.Location = New-Object System.Drawing.Point(6, 49)
$RichTextBoxPrivate.Size = New-Object System.Drawing.Size(410, 68)
$RichTextBoxPrivate.TabIndex = 70
$RichTextBoxPrivate.Text = ""
#~~< pboxprivatedownArrow >~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
$pboxprivatedownArrow = New-Object System.Windows.Forms.PictureBox
$pboxprivatedownArrow.BackgroundImageLayout = [System.Windows.Forms.ImageLayout]::Center
$pboxprivatedownArrow.Location = New-Object System.Drawing.Point(413, 4)
$pboxprivatedownArrow.Size = New-Object System.Drawing.Size(17, 20)
$pboxprivatedownArrow.TabIndex = 18
$pboxprivatedownArrow.TabStop = $false
$pboxprivatedownArrow.Text = ""
#region pboxprivatedownArrow.BackgroundImage = ([System.Drawing.Image](...)
$pboxprivatedownArrow.BackgroundImage = ([System.Drawing.Image]([System.Drawing.Image]::FromStream((New-Object System.IO.MemoryStream(($$ = [System.Convert]::FromBase64String(
"iVBORw0KGgoAAAANSUhEUgAAAA4AAAAOCAIAAACQKrqGAAAAAXNSR0IArs4c6QAAAARnQU1BAACx"+
                                 "jwv8YQUAAAAgY0hSTQAAeiYAAICEAAD6AAAAgOgAAHUwAADqYAAAOpgAABdwnLpRPAAAALFJREFU"+
                                 "KFNlUbkRBCEM4zIiCqEW+iUnJoUZQroguxMrxvi8Cnb8yMJrfcYY7oH3vvfOWBBjXGudFFSg1ppz"+
                                 "bq19FZCiiBY5TnjkzDlRwRdgRdgOJSQkQYagDGfIRuDkXTY0SbS5yaaKZCmFMcWQYpKVS+UrIYSU"+
                                 "EldEgJRC7F7Vk7td2Y0nkHv8qcofQMzwrqo5J1XfB77H0j0Tn2MZC94D1wJjrJhER6yxYgy31NCm"+
                                 "/ABBhdDeaFZB5wAAAABJRU5ErkJggg==")),0,$$.Length)))))
#endregion
$pboxprivatedownArrow.add_Click({PboxPrivateDownArrowClick($pboxprivatedownArrow)})
$GroupBoxPrivate.Controls.Add($Label3)
$GroupBoxPrivate.Controls.Add($pboxprivateUpArrow)
$GroupBoxPrivate.Controls.Add($picturePrivateON)
$GroupBoxPrivate.Controls.Add($picturePrivateOFF)
$GroupBoxPrivate.Controls.Add($RichTextBoxPrivate)
$GroupBoxPrivate.Controls.Add($pboxprivatedownArrow)
$GroupBoxPrivate.ForeColor = [System.Drawing.Color]::Black
#~~< GroupBoxDomain >~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
$GroupBoxDomain = New-Object System.Windows.Forms.GroupBox
$GroupBoxDomain.Font = New-Object System.Drawing.Font("Tahoma", 8.25, [System.Drawing.FontStyle]::Bold, [System.Drawing.GraphicsUnit]::Point, ([System.Byte](0)))
$GroupBoxDomain.Location = New-Object System.Drawing.Point(9, 0)
$GroupBoxDomain.Size = New-Object System.Drawing.Size(430, 48)
$GroupBoxDomain.TabIndex = 67
$GroupBoxDomain.TabStop = $false
$GroupBoxDomain.Text = ""
#~~< Label2 >~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
$Label2 = New-Object System.Windows.Forms.Label
$Label2.Font = New-Object System.Drawing.Font("Tahoma", 9.75, [System.Drawing.FontStyle]::Bold, [System.Drawing.GraphicsUnit]::Point, ([System.Byte](0)))
$Label2.Location = New-Object System.Drawing.Point(36, 17)
$Label2.Size = New-Object System.Drawing.Size(152, 23)
$Label2.TabIndex = 71
$Label2.Text = $TextStrings.DomainNetworks
#~~< pboxDomainUpArrow >~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
$pboxDomainUpArrow = New-Object System.Windows.Forms.PictureBox
$pboxDomainUpArrow.BackgroundImageLayout = [System.Windows.Forms.ImageLayout]::Center
$pboxDomainUpArrow.Location = New-Object System.Drawing.Point(411, 3)
$pboxDomainUpArrow.Size = New-Object System.Drawing.Size(17, 20)
$pboxDomainUpArrow.TabIndex = 68
$pboxDomainUpArrow.TabStop = $false
$pboxDomainUpArrow.Text = ""
$pboxDomainUpArrow.Visible = $false
#region pboxDomainUpArrow.BackgroundImage = ([System.Drawing.Image](...)
$pboxDomainUpArrow.BackgroundImage = ([System.Drawing.Image]([System.Drawing.Image]::FromStream((New-Object System.IO.MemoryStream(($$ = [System.Convert]::FromBase64String(
"iVBORw0KGgoAAAANSUhEUgAAAA4AAAAOCAIAAACQKrqGAAAAAXNSR0IArs4c6QAAAARnQU1BAACx"+
                                 "jwv8YQUAAAAgY0hSTQAAeiYAAICEAAD6AAAAgOgAAHUwAADqYAAAOpgAABdwnLpRPAAAAAlwSFlz"+
                                 "AAAOwQAADsEBuJFr7QAAALVJREFUKFN1kTESBCEIBL3MyIf4Fv9rbmyqVYb+wuxudCyWdfeIABuE"+
                                 "4dNaM8ustbVW+mLe+zHGDoHCcs4xxlJK7/27DA5CJPFExghH4mlCG1Qj+McxDwCY4b8aReYo5iQT"+
                                 "leHYwDmHPQ76QrnNjBckjvx268p+IQQ+w0EovW9dMVBKiTLxE4TQh5mNci1kkaKE9KVmryViUXOa"+
                                 "LrjEOk7AxtKPHA82r6UPqwV+OawMR5m06el/3unQ3hoH2NIAAAAASUVORK5CYII=")),0,$$.Length)))))
#endregion
$pboxDomainUpArrow.add_Click({PboxDomainUpArrowClick($pboxDomainUpArrow)})
#~~< pictureDomainON >~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
$pictureDomainON = New-Object System.Windows.Forms.PictureBox
$pictureDomainON.Location = New-Object System.Drawing.Point(1, 10)
$pictureDomainON.Size = New-Object System.Drawing.Size(30, 35)
$pictureDomainON.TabIndex = 69
$pictureDomainON.TabStop = $false
$pictureDomainON.Text = ""
#region pictureDomainON.Image = ([System.Drawing.Image](...)
$pictureDomainON.Image = ([System.Drawing.Image]([System.Drawing.Image]::FromStream((New-Object System.IO.MemoryStream(($$ = [System.Convert]::FromBase64String(
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
#~~< pictureDomainOFF >~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
$pictureDomainOFF = New-Object System.Windows.Forms.PictureBox
$pictureDomainOFF.Location = New-Object System.Drawing.Point(1, 10)
$pictureDomainOFF.Size = New-Object System.Drawing.Size(30, 35)
$pictureDomainOFF.TabIndex = 70
$pictureDomainOFF.TabStop = $false
$pictureDomainOFF.Text = ""
#region pictureDomainOFF.Image = ([System.Drawing.Image](...)
$pictureDomainOFF.Image = ([System.Drawing.Image]([System.Drawing.Image]::FromStream((New-Object System.IO.MemoryStream(($$ = [System.Convert]::FromBase64String(
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
#~~< RichTextBoxDomain >~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
$RichTextBoxDomain = New-Object System.Windows.Forms.RichTextBox
$RichTextBoxDomain.Font = New-Object System.Drawing.Font("Tahoma", 8.25, [System.Drawing.FontStyle]::Regular, [System.Drawing.GraphicsUnit]::Point, ([System.Byte](0)))
$RichTextBoxDomain.Location = New-Object System.Drawing.Point(6, 49)
$RichTextBoxDomain.Size = New-Object System.Drawing.Size(410, 68)
$RichTextBoxDomain.TabIndex = 70
$RichTextBoxDomain.Text = ""
#~~< pboxDomaindownArrow >~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
$pboxDomaindownArrow = New-Object System.Windows.Forms.PictureBox
$pboxDomaindownArrow.BackgroundImageLayout = [System.Windows.Forms.ImageLayout]::Center
$pboxDomaindownArrow.Location = New-Object System.Drawing.Point(411, 3)
$pboxDomaindownArrow.Size = New-Object System.Drawing.Size(17, 20)
$pboxDomaindownArrow.TabIndex = 18
$pboxDomaindownArrow.TabStop = $false
$pboxDomaindownArrow.Text = ""
#region pboxDomaindownArrow.BackgroundImage = ([System.Drawing.Image](...)
$pboxDomaindownArrow.BackgroundImage = ([System.Drawing.Image]([System.Drawing.Image]::FromStream((New-Object System.IO.MemoryStream(($$ = [System.Convert]::FromBase64String(
"iVBORw0KGgoAAAANSUhEUgAAAA4AAAAOCAIAAACQKrqGAAAAAXNSR0IArs4c6QAAAARnQU1BAACx"+
                                 "jwv8YQUAAAAgY0hSTQAAeiYAAICEAAD6AAAAgOgAAHUwAADqYAAAOpgAABdwnLpRPAAAALFJREFU"+
                                 "KFNlUbkRBCEM4zIiCqEW+iUnJoUZQroguxMrxvi8Cnb8yMJrfcYY7oH3vvfOWBBjXGudFFSg1ppz"+
                                 "bq19FZCiiBY5TnjkzDlRwRdgRdgOJSQkQYagDGfIRuDkXTY0SbS5yaaKZCmFMcWQYpKVS+UrIYSU"+
                                 "EldEgJRC7F7Vk7td2Y0nkHv8qcofQMzwrqo5J1XfB77H0j0Tn2MZC94D1wJjrJhER6yxYgy31NCm"+
                                 "/ABBhdDeaFZB5wAAAABJRU5ErkJggg==")),0,$$.Length)))))
#endregion
$pboxDomaindownArrow.add_Click({PboxDomainDownArrowClick($pboxDomaindownArrow)})
$GroupBoxDomain.Controls.Add($Label2)
$GroupBoxDomain.Controls.Add($pboxDomainUpArrow)
$GroupBoxDomain.Controls.Add($pictureDomainON)
$GroupBoxDomain.Controls.Add($pictureDomainOFF)
$GroupBoxDomain.Controls.Add($RichTextBoxDomain)
$GroupBoxDomain.Controls.Add($pboxDomaindownArrow)
$GroupBoxDomain.ForeColor = [System.Drawing.Color]::Black
$PanelStatus.Controls.Add($GroupBoxPublic)
$PanelStatus.Controls.Add($GroupBoxPrivate)
$PanelStatus.Controls.Add($GroupBoxDomain)
$SplitContainer1.Panel2.Controls.Add($PanelConfig)
$SplitContainer1.Panel2.Controls.Add($PanelChange)
$SplitContainer1.Panel2.Controls.Add($PanelStatus)
#~~< ButtonOK >~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
$ButtonOK = New-Object System.Windows.Forms.Button
$ButtonOK.FlatStyle = [System.Windows.Forms.FlatStyle]::System
$ButtonOK.Location = New-Object System.Drawing.Point(464, 12)
$ButtonOK.Size = New-Object System.Drawing.Size(87, 23)
$ButtonOK.TabIndex = 74
$ButtonOK.Text = $TextStrings.Apply
$ButtonOK.UseVisualStyleBackColor = $true
$ButtonOK.add_Click({OK($ButtonOK)})
#~~< lblFirewall2 >~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
$lblFirewall2 = New-Object System.Windows.Forms.Label
$lblFirewall2.Font = New-Object System.Drawing.Font("Tahoma", 8.25, [System.Drawing.FontStyle]::Regular, [System.Drawing.GraphicsUnit]::Point, ([System.Byte](0)))
$lblFirewall2.Location = New-Object System.Drawing.Point(116, 38)
$lblFirewall2.Size = New-Object System.Drawing.Size(461, 39)
$lblFirewall2.TabIndex = 35
$lblFirewall2.Text = $TextStrings.PageDescription
#~~< lblCoreConfigTitle >~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
$lblCoreConfigTitle = New-Object System.Windows.Forms.Label
$lblCoreConfigTitle.Font = New-Object System.Drawing.Font("Tahoma", 8.25, [System.Drawing.FontStyle]::Bold, [System.Drawing.GraphicsUnit]::Point, ([System.Byte](0)))
$lblCoreConfigTitle.Location = New-Object System.Drawing.Point(93, 17)
$lblCoreConfigTitle.Size = New-Object System.Drawing.Size(272, 17)
$lblCoreConfigTitle.TabIndex = 30
$lblCoreConfigTitle.Text = $TextStrings.PageTitle
$FirewallSettingsform.Controls.Add($PictureBox7)
$FirewallSettingsform.Controls.Add($ButtonCancel)
$FirewallSettingsform.Controls.Add($SplitContainer1)
$FirewallSettingsform.Controls.Add($ButtonOK)
$FirewallSettingsform.Controls.Add($lblFirewall2)
$FirewallSettingsform.Controls.Add($lblCoreConfigTitle)

#endregion

#region Functions

function Main{
	[System.Windows.Forms.Application]::EnableVisualStyles()
	Get-FirewallStatus
	CheckConfiguration
	FormLoad
}

function FormLoad
{
	$SplitContainer1.Size = New-Object System.Drawing.Size(618, 350)
	$SplitContainer1.SplitterDistance = 160	
	$FirewallSettingsform.size = New-Object System.Drawing.Size(610, 500)
	$ButtonCancel.Location = New-Object System.Drawing.Point(502, 440)
	$ButtonOK.Location = New-Object System.Drawing.Point(391, 440)

	$PanelStatus.Dock = [System.Windows.Forms.DockStyle]::Fill
	$PanelChange.Dock = [System.Windows.Forms.DockStyle]::Fill
	$PanelConfig.Dock = [System.Windows.Forms.DockStyle]::Fill

	$FirewallSettingsform.ShowDialog()
}

function PboxDomainDownArrowClick($object)
{
	$GroupBoxDomain.size = New-Object System.Drawing.Size(424, 125)
	$GroupBoxPrivate.location = New-Object System.Drawing.Size(9, 131)
	$GroupBoxPublic.location = New-Object System.Drawing.Size(9, 190)
	$pboxDomainUpArrow.visible = $True
	$pboxDomaindownArrow.visible = $False
	$pboxprivatedownArrow.enabled = $False
}

function PboxDomainUpArrowClick($object)
{
	$GroupBoxDomain.size = New-Object System.Drawing.Size(430, 48)
	$GroupBoxPrivate.location = New-Object System.Drawing.Size(9, 60)
	$GroupBoxPublic.location = New-Object System.Drawing.Size(9, 123)
	$pboxDomainUpArrow.visible = $False
	$pboxDomaindownArrow.visible = $True
	$pboxprivatedownArrow.enabled = $True
}

function PboxPrivateDownArrowClick($object)
{
	$GroupBoxPrivate.size = New-Object System.Drawing.Size(424, 125)
	$GroupBoxPublic.location = New-Object System.Drawing.Size(9, 191)
	$pboxprivateUpArrow.visible = $True
	$pboxprivatedownArrow.visible = $False
	$pboxDomaindownArrow.enabled = $False
}

function PboxPrivateUpArrowClick($object)
{
	$GroupBoxPrivate.size = New-Object System.Drawing.Size(430, 48)
	$GroupBoxPublic.location = New-Object System.Drawing.Size(9, 123)
	$pboxprivateUpArrow.visible = $False
	$pboxprivatedownArrow.visible = $True
	$pboxDomaindownArrow.enabled = $True
}
function PboxPublicDownArrowClick($object)
{
	$GroupBoxPublic.size = New-Object System.Drawing.Size(424, 125)
	$pboxpublicUpArrow.visible = $True
	$pboxpublicdownArrow.visible = $False
}

function PboxPublicUpArrowClick($object)
{
	$GroupBoxPublic.size = New-Object System.Drawing.Size(430, 48)
	$pboxpublicUpArrow.visible = $False
	$pboxpublicdownArrow.visible = $True
}

function lblStatusClick($object)
{
	$lblStatus.Font = New-Object System.Drawing.Font("Tahoma", 8.25, [System.Drawing.FontStyle]::Bold, [System.Drawing.GraphicsUnit]::Point, ([System.Byte] ( 0 ) ))
	$lblChangeStatus.Font = New-Object System.Drawing.Font("Tahoma", 8.25, [System.Drawing.FontStyle]::Regular, [System.Drawing.GraphicsUnit]::Point, ([System.Byte] ( 0 ) ))
	$lblChangeRules.Font = New-Object System.Drawing.Font("Tahoma", 8.25, [System.Drawing.FontStyle]::Regular, [System.Drawing.GraphicsUnit]::Point, ([System.Byte] ( 0 ) ))
			
	$PanelStatus.visible = $True
	$PanelChange.visible = $False
	$PanelConfig.visible = $False
}

function lblChangeStatusClick($object)
{
	$lblChangeStatus.Font = New-Object System.Drawing.Font("Tahoma", 8.25, [System.Drawing.FontStyle]::Bold, [System.Drawing.GraphicsUnit]::Point, ([System.Byte] ( 0 ) ))
	$lblStatus.Font = New-Object System.Drawing.Font("Tahoma", 8.25, [System.Drawing.FontStyle]::Regular, [System.Drawing.GraphicsUnit]::Point, ([System.Byte] ( 0 ) ))
	$lblChangeRules.Font = New-Object System.Drawing.Font("Tahoma", 8.25, [System.Drawing.FontStyle]::Regular, [System.Drawing.GraphicsUnit]::Point, ([System.Byte] ( 0 ) ))
			
	$PanelStatus.visible = $False
	$PanelChange.visible = $True
	$PanelConfig.visible = $False
}

function lblChangeRulesClick($object)
{
	$lblChangeRules.Font = New-Object System.Drawing.Font("Tahoma", 8.25, [System.Drawing.FontStyle]::Bold, [System.Drawing.GraphicsUnit]::Point, ([System.Byte] ( 0 ) ))
	$lblStatus.Font = New-Object System.Drawing.Font("Tahoma", 8.25, [System.Drawing.FontStyle]::Regular, [System.Drawing.GraphicsUnit]::Point, ([System.Byte] ( 0 ) ))
	$lblChangeStatus.Font = New-Object System.Drawing.Font("Tahoma", 8.25, [System.Drawing.FontStyle]::Regular, [System.Drawing.GraphicsUnit]::Point, ([System.Byte] ( 0 ) ))
			
	$PanelConfig.visible = $True
	$PanelStatus.visible = $False
	$PanelChange.visible = $False
}

#---------------------------------------------------
function Close
{
	$FirewallSettingsform.Hide()
	$Formcontrol.enabled = $true
}

function CheckConfiguration
{
	#SMBDirect
	if ((Get-NetFirewallRule -Name FPSSMBD-iWARP-In-TCP).Enabled -eq "True")
	{ $ListSMBD.SelectedIndex = 0 }
	else { $ListSMBD.SelectedIndex = 1 }
	
	#Remote Desktop
	if ((Get-NetFirewallRule -Name RemoteDesktop-UserMode-In-TCP).Enabled -eq "True")
	{ $ListRDP.SelectedIndex = 0 }
	else { $ListRDP.SelectedIndex = 1 }

	#Windows Firewall Remote Management
	if ((Get-NetFirewallRule -Name RemoteFwAdmin-In-TCP).Enabled -eq "True")
	{ $ListWFRM.SelectedIndex = 0 }
	else { $ListWFRM.SelectedIndex = 1 }	

	#Event Log Management
	if ((Get-NetFirewallRule -Name RemoteEventLogSvc-In-TCP).Enabled -eq "True")
	{ $ListELM.SelectedIndex = 0 }
	else { $ListELM.SelectedIndex = 1 }

	#Service Management
	if ((Get-NetFirewallRule -Name RemoteSvcAdmin-In-TCP).Enabled -eq "True")
	{ $ListSM.SelectedIndex = 0 }
	else { $ListSM.SelectedIndex = 1 }

	#Remote Volume Management
	if ((Get-NetFirewallRule -Name RVM-VDS-In-TCP).Enabled -eq "True")
	{ $ListRVM.SelectedIndex = 0 }
	else { $ListRVM.SelectedIndex = 1 }

	#Remote Scheduled Tasks Management
	if ((Get-NetFirewallRule -Name RemoteTask-In-TCP).Enabled -eq "True")
	{ $ListRSTM.SelectedIndex = 0 }
	else { $ListRSTM.SelectedIndex = 1 }

	#Remote File and Printer Sharing
	if ((Get-NetFirewallRule -Name FPS-SpoolSvc-In-TCP).Enabled -eq "True")
	{ $ListFPSM.SelectedIndex = 0 }
	else
	{ $ListFPSM.SelectedIndex = 1 }

	#Echo Request
	if ((Get-NetFirewallRule -Name FPS-ICMP4-ERQ-In).Enabled -eq "True")
	{ $ListICMP.SelectedIndex = 0 }
	else { $ListICMP.SelectedIndex = 1 }
	
	#Windows Remote Management
	if ((Get-NetFirewallRule -Name WINRM-HTTP-In-TCP).Enabled -eq "True")
	{ $ListWinRM.SelectedIndex = 0 }
	else
	{ $ListWinRM.SelectedIndex = 1 }
}

#*****************************************************************************************************************************************************************
function OK
{
  $FirewallSettingsform.Cursor = [System.Windows.Forms.Cursors]::WaitCursor
	$ButtonOK.enabled = $False
	#
	if ($ChkboxDomainEnable.Checked)
	{
		if ((Get-NetFirewallProfile -Name Domain).Enabled -ne "True")
		{
			Set-NetFirewallProfile -Name Domain -Enabled True
			#Output to Logfile
			$TextStrings.LogProfileChanged -f $Logdate, $TextStrings.Domain, $TextStrings.Enabled | Out-File -FilePath $logfile -Append
		}
	}
	if ($ChkboxDomainDisable.Checked)
	{
		if ((Get-NetFirewallProfile -Name Domain).Enabled -ne "False")
		{
			Set-NetFirewallProfile -Name Domain -Enabled False
			#Output to Logfile
			$TextStrings.LogProfileChanged -f $Logdate, $TextStrings.Domain, $TextStrings.Disabled | Out-File -FilePath $logfile -Append
		}
	}
	if ($ChkboxPrivateEnable.Checked)
	{
		if ((Get-NetFirewallProfile -Name Private).Enabled -ne "True")
		{
			Set-NetFirewallProfile -Name Private -Enabled True
			#Output to Logfile
			$TextStrings.LogProfileChanged -f $Logdate, $TextStrings.Private, $TextStrings.Enabled | Out-File -FilePath $logfile -Append
		}
	}
	if ($ChkboxPrivateDisable.Checked)
	{
		if ((Get-NetFirewallProfile -Name Private).Enabled -ne "False")
		{
			Set-NetFirewallProfile -Name Private -Enabled False
			#Output to Logfile
			$TextStrings.LogProfileChanged -f $Logdate, $TextStrings.Private, $TextStrings.Disabled | Out-File -FilePath $logfile -Append
		}
	}
	if ($ChkboxPublicEnable.Checked)
	{
		if ((Get-NetFirewallProfile -Name Public).Enabled -ne "True")
		{
			Set-NetFirewallProfile -Name Public -Enabled True
			#Output to Logfile
			$TextStrings.LogProfileChanged -f $Logdate, $TextStrings.Public, $TextStrings.Enabled | Out-File -FilePath $logfile -Append
		}
	}
	if ($ChkboxPublicDisable.Checked)
	{
		if ((Get-NetFirewallProfile -Name Public).Enabled -ne "False")
		{
			Set-NetFirewallProfile -Name Public -Enabled False
			#Output to Logfile
			$TextStrings.LogProfileChanged -f $Logdate, $TextStrings.Public, $TextStrings.Disabled | Out-File -FilePath $logfile -Append
		}
	}
	#Windows Firewall Remote Management
	Switch ($ListWFRM.SelectedIndex)
	{
		0 {
			$EnableItem = "True"
			$RuleStatus = $TextStrings.Enabled
		}
		default {
			$EnableItem = "False"
			$RuleStatus = $TextStrings.Disabled
		}
	}
	Set-NetFirewallRule -Group "@FirewallAPI.dll,-30002" -Enabled $EnableItem
	$TextStrings.LogRuleGroupChanged -f $Logdate, $TextStrings.WindowsFirewallRemoteManagement, $RuleStatus | Out-File -filepath $logfile -append

	if (($ListWFRM.SelectedIndex -eq 0) -or ($ListWRM.SelectedIndex -eq 0))
	{ $EnableStatus = "enable"	}
	else {$EnableStatus = "disable" }
	$Temp = "netsh advfirewall set currentprofile settings remotemanagement " + $EnableStatus
	Invoke-Expression $Temp
	#Output to Logfile
	$TextStrings.LogCommandExecuted -f $Logdate, $Temp | Out-File -filepath $logfile -append

	#SMBDirect
	Switch ($ListSMBD.SelectedIndex)
	{
		0 {
			$EnableItem = "True"
			$RuleStatus = $TextStrings.Enabled
		}
		default {
			$EnableItem = "False"
			$RuleStatus = $TextStrings.Disabled
		}
	}

	Set-NetFirewallRule -Group "@FirewallAPI.dll,-28602" -Enabled $EnableItem
	#Output to Logfile
	$TextStrings.LogRuleGroupChanged -f $Logdate, $TextStrings.SMBDirect, $RuleStatus | Out-File -filepath $logfile -append

	#Event Log Management
	Switch ($ListELM.SelectedIndex)
	{
		0 {
			$EnableItem = "True"
			$RuleStatus = $TextStrings.Enabled
		}
		default {
			$EnableItem = "False"
			$RuleStatus = $TextStrings.Disabled
		}
	}
	Set-NetFirewallRule -Group "@FirewallAPI.dll,-29252" -Enabled $EnableItem
	#Output to Logfile
	$TextStrings.LogRuleGroupChanged -f $Logdate, $TextStrings.EventLogManagement, $RuleStatus | Out-File -filepath $logfile -append
	#Service Management
	Switch ($ListSM.SelectedIndex)
	{
		0 {
			$EnableItem = "True"
			$RuleStatus = $TextStrings.Enabled
		}
		default {
			$EnableItem = "False"
			$RuleStatus = $TextStrings.Disabled
		}
	}
	Set-NetFirewallRule -Group "@FirewallAPI.dll,-29502" -Enabled $EnableItem
	#Output to Logfile
	$TextStrings.LogRuleGroupChanged -f $Logdate, $TextStrings.ServiceManagement, $RuleStatus | Out-File -filepath $logfile -append
	#Remote Volume Management
	Switch ($ListRVM.SelectedIndex)
	{
		0 {
			$EnableItem = "True"
			$RuleStatus = $TextStrings.Enabled
		}
		default {
			$EnableItem = "False"
			$RuleStatus = $TextStrings.Disabled
		}
	}
	Set-NetFirewallRule -Group "@FirewallAPI.dll,-34501" -Enabled $EnableItem
	#Output to Logfile
	$TextStrings.LogRuleGroupChanged -f $Logdate, $TextStrings.RemoteVolumeManagement, $RuleStatus | Out-File -filepath $logfile -append
	#Remote Scheduled Tasks Management
	Switch ($ListRSTM.SelectedIndex)
	{
		0 {
			$EnableItem = "True"
			$RuleStatus = $TextStrings.Enabled
		}
		default {
			$EnableItem = "False"
			$RuleStatus = $TextStrings.Disabled
		}
	}
	Set-NetFirewallRule -Group "@FirewallAPI.dll,-33252" -Enabled $EnableItem
	#Output to Logfile
	$TextStrings.LogRuleGroupChanged -f $Logdate, $TextStrings.RemoteScheduledTaskManagement, $RuleStatus | Out-File -filepath $logfile -append
	#Remote Desktop
	Switch ($ListRDP.SelectedIndex)
	{
		0 {
			$EnableItem = "True"
			$RuleStatus = $TextStrings.Enabled
		}
		default {
			$EnableItem = "False"
			$RuleStatus = $TextStrings.Disabled
		}
	}
	Set-NetFirewallRule -Group "@FirewallAPI.dll,-28752" -Enabled $EnableItem
	#Output to Logfile
	$TextStrings.LogRuleGroupChanged -f $Logdate, $TextStrings.RemoteDesktop, $RuleStatus | Out-File -filepath $logfile -append
	
	#File and Printer Sharing
	Switch ($ListFPSM.SelectedIndex)
	{
		0 {
			$EnableItem = "True"
			$RuleStatus = $TextStrings.Enabled
		}
		default {
			$EnableItem = "False"
			$RuleStatus = $TextStrings.Disabled
		}
	}
	# Set the entire group; it does contain the setting for pings, but those will be reset in the next segment
	Set-NetFirewallRule -Group "@FirewallAPI.dll,-28502" -Enabled $EnableItem
	#Output to Logfile
	$TextStrings.LogRuleGroupChanged -f $Logdate, $TextStrings.FileAndPrinterSharing, $RuleStatus | Out-File -filepath $logfile -append

	#Echo Request
	Switch ($ListICMP.SelectedIndex)
	{
		0 {
			$EnableItem = "True"
			$RuleStatus = $TextStrings.Enabled
		}
		default {
			$EnableItem = "False"
			$RuleStatus = $TextStrings.Enabled
		}
	}
	Set-NetFirewallRule -Name FPS-ICMP4-ERQ-In -Enabled $EnableItem
	Set-NetFirewallRule -Name FPS-ICMP6-ERQ-In -Enabled $EnableItem
	#Output to Logfile
	$TextStrings.LogRuleGroupChanged -f $Logdate, $TextStrings.PingDescription, $RuleStatus | Out-File -filepath $logfile -append
	
	#Windows Remote Management
	Switch ($ListWRM.SelectedIndex)
	{
		0 {
			$EnableItem = "True"
			$RuleStatus = $TextStrings.Enabled
		}
		default {
			$EnableItem = "False"
			$RuleStatus = $TextStrings.Disabled
		}
	}
	Set-NetFirewallRule -Group "@FirewallAPI.dll,-30267" -Enabled $EnableItem
	#Output to Logfile
	$TextStrings.LogRuleGroupChanged -f $Logdate, $TextStrings.WindowsRemoteManagement, $RuleStatus | Out-File -filepath $logfile -append
	
	$FirewallSettingsform.Cursor = [System.Windows.Forms.Cursors]::default
	$ButtonOK.enabled = $True
	Get-FirewallStatus
	$FirewallSettingsform.Update()
}
#*****************************************************************************************************************************************************************
function Get-FirewallStatus
{
	$FirewallProfile = Get-NetFirewallProfile -Name Domain
	$RichTextBoxDomain.text = ($FirewallProfile | Out-String)
	if ($FirewallProfile.Enabled)
	{
		$pictureDomainON.visible = $True
		$pictureDomainOFF.visible = $False
		$ChkboxDomainEnable.checked = $True
	}
	else
	{
		$pictureDomainON.visible = $False
		$pictureDomainOFF.visible = $True
		$ChkboxDomainDisable.checked = $True
	}
	
	$FirewallProfile = Get-NetFirewallProfile -Name Private
	$RichTextBoxPrivate.text = ($FirewallProfile | Out-String)
	if ($FirewallProfile.Enabled)
	{
		$picturePrivateON.visible = $True
		$picturePrivateOFF.visible = $False
		$ChkboxPrivateEnable.checked = $True
	}
	else
	{
		$picturePrivateON.visible = $False
		$picturePrivateOFF.visible = $True
		$ChkboxPrivateDisable.checked = $True
	}
	
	$FirewallProfile = Get-NetFirewallProfile -Name Public
	$RichTextBoxPublic.text = ($FirewallProfile | Out-String)
	if ($FirewallProfile.Enabled)
	{
		$picturePublicON.visible = $True
		$picturePublicOFF.visible = $False
		$ChkboxPublicEnable.checked = $True
	}
	else
	{
		$picturePublicON.visible = $False
		$picturePublicOFF.visible = $True
		$ChkboxPublicDisable.checked = $True
	}		
}

Main

#endregion
