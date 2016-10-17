fundefs
loop3.282 (args) : k.283 (fargs) : 
	Let j.275
		Lwz $a26 16
		Let i.270
			Lwz $a26 12
			Let c.146
				Lwz $a26 8
				Let b.145
					Lwz $a26 4
					Let a.144
						Lwz $a26 0
						Let Ti128.289
							Li 0
							Ans
								IfLE Ti128.289 k.283
									Let o.302
										Slw i.270 2
										Let Ta129.293
											Lwz c.146 o.302
											Let o.303
												Slw i.270 2
												Let Ta130.301
													Lwz c.146 o.303
													Let o.304
														Slw j.275 3
														Let Td131.295
															Lfd Ta130.301 o.304
															Let o.305
																Slw i.270 2
																Let Ta132.300
																	Lwz a.144 o.305
																	Let o.306
																		Slw k.283 3
																		Let Td133.297
																			Lfd Ta132.300 o.306
																			Let o.307
																				Slw k.283 2
																				Let Ta134.299
																					Lwz b.145 o.307
																					Let o.308
																						Slw j.275 3
																						Let Td135.298
																							Lfd Ta134.299 o.308
																							Let Td136.296
																								FMul Td133.297 Td135.298
																								Let Td137.294
																									FAdd Td131.295 Td136.296
																									Let o.309
																										Slw j.275 3
																										Let Tu1.290
																											Stfd Td137.294 Ta129.293 o.309
																											Let Ti139.291
																												Sub k.283 1
																												Ans
																													CallCls loop3.282 d:Ti139.291 f:
									Ans
										Nop
loop2.274 (args) : j.275 (fargs) : 
	Let m.142
		Lwz $a26 16
		Let i.270
			Lwz $a26 12
			Let c.146
				Lwz $a26 8
				Let b.145
					Lwz $a26 4
					Let a.144
						Lwz $a26 0
						Let Ti123.281
							Li 0
							Ans
								IfLE Ti123.281 j.275
									Let loop3.282
										Mr $a0
										Let $a0
											Add $a0 24
											Let Tu314
												Stw j.275 loop3.282 16
												Let Tu313
													Stw i.270 loop3.282 12
													Let Tu312
														Stw c.146 loop3.282 8
														Let Tu311
															Stw b.145 loop3.282 4
															Let Tu310
																Stw a.144 loop3.282 0
																Let Ti125.287
																	Sub m.142 1
																	Let Tu2.284
																		CallCls loop3.282 d:Ti125.287 f:
																		Let Ti127.285
																			Sub j.275 1
																			Ans
																				CallCls loop2.274 d:Ti127.285 f:
									Ans
										Nop
loop1.269 (args) : i.270 (fargs) : 
	Let n.143
		Lwz $a26 16
		Let m.142
			Lwz $a26 12
			Let c.146
				Lwz $a26 8
				Let b.145
					Lwz $a26 4
					Let a.144
						Lwz $a26 0
						Let Ti118.273
							Li 0
							Ans
								IfLE Ti118.273 i.270
									Let loop2.274
										Mr $a0
										Let $a0
											Add $a0 24
											Let Tu319
												Stw m.142 loop2.274 16
												Let Tu318
													Stw i.270 loop2.274 12
													Let Tu317
														Stw c.146 loop2.274 8
														Let Tu316
															Stw b.145 loop2.274 4
															Let Tu315
																Stw a.144 loop2.274 0
																Let Ti120.279
																	Sub n.143 1
																	Let Tu3.276
																		CallCls loop2.274 d:Ti120.279 f:
																		Let Ti122.277
																			Sub i.270 1
																			Ans
																				CallCls loop1.269 d:Ti122.277 f:
									Ans
										Nop
mul.140 (args) : l.141 (fargs) : 
	Let loop1.269
		Mr $a0
		Let $a0
			Add $a0 24
			Let Tu324
				Stw n.143 loop1.269 16
				Let Tu323
					Stw m.142 loop1.269 12
					Let Tu322
						Stw c.146 loop1.269 8
						Let Tu321
							Stw b.145 loop1.269 4
							Let Tu320
								Stw a.144 loop1.269 0
								Let Ti117.271
									Sub l.141 1
									Ans
										CallCls loop1.269 d:Ti117.271 f:
init.256 (args) : i.257 (fargs) : 
	Let n.150
		Lwz $a26 4
		Let mat.255
			Lwz $a26 0
			Let Ti111.261
				Li 0
				Ans
					IfLE Ti111.261 i.257
						Let Td112.266
							FLi l.325
							Let Ta113.265
								CallCls min_caml_create_float_array d:n.150 f:Td112.266 
								Let o.326
									Slw i.257 2
									Let Tu4.262
										Stw Ta113.265 mat.255 o.326
										Let Ti115.263
											Sub i.257 1
											Ans
												CallCls init.256 d:Ti115.263 f:
						Ans
							Nop
make.148 (args) : m.149 (fargs) : 
	Let dummy.147
		Lwz $a26 0
		Let mat.255
			CallCls min_caml_create_array d:m.149 dummy.147 f:
			Let init.256
				Mr $a0
				Let $a0
					Add $a0 8
					Let Tu328
						Stw n.150 init.256 4
						Let Tu327
							Stw mat.255 init.256 0
							Let Ti110.259
								Sub m.149 1
								Let Tu5.258
									CallCls init.256 d:Ti110.259 f:
									Ans
										Mr mat.255
main
Let Ti26.267
	Li 0
	Let Td27.268
		FLi l.325
		Let dummy.147
			CallCls min_caml_create_float_array d:Ti26.267 f:Td27.268 
			Let make.148
				Mr $a0
				Let $a0
					Add $a0 8
					Let Tu373
						Stw dummy.147 make.148 0
						Let Ti28.253
							Li 2
							Let Ti29.254
								Li 3
								Let a.151
									CallCls make.148 d:Ti28.253 Ti29.254 f:
									Let Ti30.251
										Li 3
										Let Ti31.252
											Li 2
											Let b.152
												CallCls make.148 d:Ti30.251 Ti31.252 f:
												Let Ti32.249
													Li 2
													Let Ti33.250
														Li 2
														Let c.153
															CallCls make.148 d:Ti32.249 Ti33.250 f:
															Let Ta35.245
																Lwz a.151 0
																Let Td37.247
																	FLi l.330
																	Let Tu25.154
																		Stfd Td37.247 Ta35.245 0
																		Let Ta39.241
																			Lwz a.151 0
																			Let Td41.243
																				FLi l.333
																				Let Tu24.155
																					Stfd Td41.243 Ta39.241 8
																					Let Ta43.237
																						Lwz a.151 0
																						Let Td45.239
																							FLi l.336
																							Let Tu23.156
																								Stfd Td45.239 Ta43.237 16
																								Let Ta47.233
																									Lwz a.151 4
																									Let Td49.235
																										FLi l.339
																										Let Tu22.157
																											Stfd Td49.235 Ta47.233 0
																											Let Ta51.229
																												Lwz a.151 4
																												Let Td53.231
																													FLi l.342
																													Let Tu21.158
																														Stfd Td53.231 Ta51.229 8
																														Let Ta55.225
																															Lwz a.151 4
																															Let Td57.227
																																FLi l.345
																																Let Tu20.159
																																	Stfd Td57.227 Ta55.225 16
																																	Let Ta59.221
																																		Lwz b.152 0
																																		Let Td61.223
																																			FLi l.348
																																			Let Tu19.160
																																				Stfd Td61.223 Ta59.221 0
																																				Let Ta63.217
																																					Lwz b.152 0
																																					Let Td65.219
																																						FLi l.351
																																						Let Tu18.161
																																							Stfd Td65.219 Ta63.217 8
																																							Let Ta67.213
																																								Lwz b.152 4
																																								Let Td69.215
																																									FLi l.354
																																									Let Tu17.162
																																										Stfd Td69.215 Ta67.213 0
																																										Let Ta71.209
																																											Lwz b.152 4
																																											Let Td73.211
																																												FLi l.357
																																												Let Tu16.163
																																													Stfd Td73.211 Ta71.209 8
																																													Let Ta75.205
																																														Lwz b.152 8
																																														Let Td77.207
																																															FLi l.360
																																															Let Tu15.164
																																																Stfd Td77.207 Ta75.205 0
																																																Let Ta79.201
																																																	Lwz b.152 8
																																																	Let Td81.203
																																																		FLi l.363
																																																		Let Tu14.165
																																																			Stfd Td81.203 Ta79.201 8
																																																			Let Ti82.198
																																																				Li 2
																																																				Let Ti83.199
																																																					Li 3
																																																					Let Ti84.200
																																																						Li 2
																																																						Let Tu13.166
																																																							CallCls mul.140 d:Ti82.198 Ti83.199 Ti84.200 a.151 b.152 c.153 f:
																																																							Let Ta86.195
																																																								Lwz c.153 0
																																																								Let Td88.194
																																																									Lfd Ta86.195 0
																																																									Let Ti89.193
																																																										CallCls min_caml_truncate d:f:Td88.194 
																																																										Let Tu12.167
																																																											CallCls min_caml_print_int d:Ti89.193 f:
																																																											Let Tu90.192
																																																												Nop
																																																												Let Tu11.168
																																																													CallCls min_caml_print_newline d:f:
																																																													Let Ta92.189
																																																														Lwz c.153 0
																																																														Let Td94.188
																																																															Lfd Ta92.189 8
																																																															Let Ti95.187
																																																																CallCls min_caml_truncate d:f:Td94.188 
																																																																Let Tu10.169
																																																																	CallCls min_caml_print_int d:Ti95.187 f:
																																																																	Let Tu96.186
																																																																		Nop
																																																																		Let Tu9.170
																																																																			CallCls min_caml_print_newline d:f:
																																																																			Let Ta98.183
																																																																				Lwz c.153 4
																																																																				Let Td100.182
																																																																					Lfd Ta98.183 0
																																																																					Let Ti101.181
																																																																						CallCls min_caml_truncate d:f:Td100.182 
																																																																						Let Tu8.171
																																																																							CallCls min_caml_print_int d:Ti101.181 f:
																																																																							Let Tu102.180
																																																																								Nop
																																																																								Let Tu7.172
																																																																									CallCls min_caml_print_newline d:f:
																																																																									Let Ta104.177
																																																																										Lwz c.153 4
																																																																										Let Td106.176
																																																																											Lfd Ta104.177 8
																																																																											Let Ti107.175
																																																																												CallCls min_caml_truncate d:f:Td106.176 
																																																																												Let Tu6.173
																																																																													CallCls min_caml_print_int d:Ti107.175 f:
																																																																													Let Tu108.174
																																																																														Nop
																																																																														Ans
																																																																															CallCls min_caml_print_newline d:f:
