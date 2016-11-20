data
l.420 : 1.000000
l.419 : 1.500000
l.418 : 50.000000
l.417 : 4.000000
l.416 : 2.000000
l.400 : 255.000000
l.399 : 0.000000

fundefs
write_header.182 (args) : (fargs) : 
	Let Ti171.392
		Li 80
		Let Tu9.374
			CallCls min_caml_print_byte d:Ti171.392 f:
			Let Ti174.389
				Li 51
				Let Tu8.375
					CallCls min_caml_print_byte d:Ti174.389 f:
					Let Ti175.388
						Li 10
						Let Tu7.376
							CallCls min_caml_print_byte d:Ti175.388 f:
							Let Ti176.387
								Li 100
								Let Tu6.377
									CallCls min_caml_print_int d:Ti176.387 f:
									Let Ti177.386
										Li 32
										Let Tu5.378
											CallCls min_caml_print_byte d:Ti177.386 f:
											Let Ti178.385
												Li 100
												Let Tu4.379
													CallCls min_caml_print_int d:Ti178.385 f:
													Let Ti179.384
														Li 32
														Let Tu3.380
															CallCls min_caml_print_byte d:Ti179.384 f:
															Let Ti180.383
																Li 255
																Let Tu2.381
																	CallCls min_caml_print_int d:Ti180.383 f:
																	Let Ti181.382
																		Li 10
																		Ans
																			CallCls min_caml_print_byte d:Ti181.382 f:
write.245 (args) : (fargs) : fr.246 fg.247 fb.248 
	Let r.348
		CallCls min_caml_int_of_float d:f:fr.246 
		Let g.349
			CallCls min_caml_int_of_float d:f:fg.247 
			Let b.350
				CallCls min_caml_int_of_float d:f:fb.248 
				Let Tu17.351
					CallCls min_caml_print_int d:r.348 f:
					Let Tu16.352
						CallCls min_caml_print_int d:g.349 f:
						Ans
							CallCls min_caml_print_int d:b.350 f:
write_rgb.185 (args) : x.186 (fargs) : 
	Let a.353
		Lwz $a26 4
		Let fx.249
			CallCls min_caml_float_of_int d:x.186 f:
			Let Ti74.250
				Lwz a.353 0
				Ans
					IfLE x.186 Ti74.250
						Let Td75.344
							FLi l.400
							Let Td76.345
								FLi l.399
								Let Td77.346
									FLi l.399
									Ans
										CallCls write.245 d:f:Td75.344 Td76.345 Td77.346 
						Let Ti79.251
							Lwz a.353 4
							Ans
								IfLE x.186 Ti79.251
									Let Td80.327
										FLi l.400
										Let Td81.338
											FLi l.400
											Let Ti83.341
												Lwz a.353 0
												Let Ti84.340
													Sub x.186 Ti83.341
													Let Td85.339
														CallCls min_caml_float_of_int d:Ti84.340 f:
														Let Td86.330
															FMul Td81.338 Td85.339
															Let Ti88.334
																Lwz a.353 4
																Let Ti90.335
																	Lwz a.353 0
																	Let Ti91.333
																		Sub Ti88.334 Ti90.335
																		Let Td92.331
																			CallCls min_caml_float_of_int d:Ti91.333 f:
																			Let Td93.332
																				FReciprocal Td92.331
																				Let Td94.328
																					FMul Td86.330 Td93.332
																					Let Td95.329
																						FLi l.399
																						Ans
																							CallCls write.245 d:f:Td80.327 Td94.328 Td95.329 
									Let Ti97.252
										Lwz a.353 8
										Ans
											IfLE x.186 Ti97.252
												Let Td98.321
													FLi l.400
													Let Ti100.324
														Lwz a.353 8
														Let Ti101.323
															Sub Ti100.324 x.186
															Let Td102.322
																CallCls min_caml_float_of_int d:Ti101.323 f:
																Let Td103.313
																	FMul Td98.321 Td102.322
																	Let Ti105.317
																		Lwz a.353 8
																		Let Ti107.318
																			Lwz a.353 4
																			Let Ti108.316
																				Sub Ti105.317 Ti107.318
																				Let Td109.314
																					CallCls min_caml_float_of_int d:Ti108.316 f:
																					Let Td110.315
																						FReciprocal Td109.314
																						Let Td111.310
																							FMul Td103.313 Td110.315
																							Let Td112.311
																								FLi l.400
																								Let Td113.312
																									FLi l.399
																									Ans
																										CallCls write.245 d:f:Td111.310 Td112.311 Td113.312 
												Let Ti115.253
													Lwz a.353 12
													Ans
														IfLE x.186 Ti115.253
															Let Td116.293
																FLi l.399
																Let Td117.294
																	FLi l.400
																	Let Td118.304
																		FLi l.400
																		Let Ti120.307
																			Lwz a.353 8
																			Let Ti121.306
																				Sub x.186 Ti120.307
																				Let Td122.305
																					CallCls min_caml_float_of_int d:Ti121.306 f:
																					Let Td123.296
																						FMul Td118.304 Td122.305
																						Let Ti125.300
																							Lwz a.353 12
																							Let Ti127.301
																								Lwz a.353 8
																								Let Ti128.299
																									Sub Ti125.300 Ti127.301
																									Let Td129.297
																										CallCls min_caml_float_of_int d:Ti128.299 f:
																										Let Td130.298
																											FReciprocal Td129.297
																											Let Td131.295
																												FMul Td123.296 Td130.298
																												Ans
																													CallCls write.245 d:f:Td116.293 Td117.294 Td131.295 
															Let Ti133.254
																Lwz a.353 16
																Ans
																	IfLE x.186 Ti133.254
																		Let Td134.276
																			FLi l.399
																			Let Td135.287
																				FLi l.400
																				Let Ti137.290
																					Lwz a.353 16
																					Let Ti138.289
																						Sub Ti137.290 x.186
																						Let Td139.288
																							CallCls min_caml_float_of_int d:Ti138.289 f:
																							Let Td140.279
																								FMul Td135.287 Td139.288
																								Let Ti142.283
																									Lwz a.353 16
																									Let Ti144.284
																										Lwz a.353 12
																										Let Ti145.282
																											Sub Ti142.283 Ti144.284
																											Let Td146.280
																												CallCls min_caml_float_of_int d:Ti145.282 f:
																												Let Td147.281
																													FReciprocal Td146.280
																													Let Td148.277
																														FMul Td140.279 Td147.281
																														Let Td149.278
																															FLi l.400
																															Ans
																																CallCls write.245 d:f:Td134.276 Td148.277 Td149.278 
																		Let Ti151.255
																			Lwz a.353 20
																			Ans
																				IfLE x.186 Ti151.255
																					Let Td152.270
																						FLi l.400
																						Let Ti154.273
																							Lwz a.353 16
																							Let Ti155.272
																								Sub x.186 Ti154.273
																								Let Td156.271
																									CallCls min_caml_float_of_int d:Ti155.272 f:
																									Let Td157.262
																										FMul Td152.270 Td156.271
																										Let Ti159.266
																											Lwz a.353 20
																											Let Ti161.267
																												Lwz a.353 16
																												Let Ti162.265
																													Sub Ti159.266 Ti161.267
																													Let Td163.263
																														CallCls min_caml_float_of_int d:Ti162.265 f:
																														Let Td164.264
																															FReciprocal Td163.263
																															Let Td165.259
																																FMul Td157.262 Td164.264
																																Let Td166.260
																																	FLi l.399
																																	Let Td167.261
																																		FLi l.400
																																		Ans
																																			CallCls write.245 d:f:Td165.259 Td166.260 Td167.261 
																					Let Td168.256
																						FLi l.399
																						Let Td169.257
																							FLi l.399
																							Let Td170.258
																								FLi l.399
																								Ans
																									CallCls write.245 d:f:Td168.256 Td169.257 Td170.258 
iloop.207 (args) : i.208 (fargs) : zr.209 zi.210 cr.211 ci.212 
	Let write_rgb.185
		Lwz $a26 4
		Let Ti57.219
			Li 256
			Ans
				IfLE Ti57.219 i.208
					Let Ti58.236
						Li 256
						Ans
							CallCls write_rgb.185 (write_rgb.185) d:Ti58.236 f:
					Let Td59.234
						FMul zr.209 zr.209
						Let Td60.235
							FMul zi.210 zi.210
							Let Td61.233
								FSub Td59.234 Td60.235
								Let nr.220
									FAdd Td61.233 cr.211
									Let Td62.232
										FLi l.416
										Let Td63.231
											FMul Td62.232 zr.209
											Let Td64.230
												FMul Td63.231 zi.210
												Let ni.221
													FAdd Td64.230 ci.212
													Let Td65.228
														FMul zr.209 zr.209
														Let Td66.229
															FMul zi.210 zi.210
															Let Td67.222
																FAdd Td65.228 Td66.229
																Let Td70.223
																	FLi l.417
																	Ans
																		IfFLE Td67.222 Td70.223
																			Let Ti72.224
																				Add i.208 1
																				Ans
																					CallCls iloop.207 (iloop.207) d:Ti72.224 f:nr.220 ni.221 cr.211 ci.212 
																			Ans
																				CallCls write_rgb.185 (write_rgb.185) d:i.208 f:
xloop.195 (args) : x.196 y.197 (fargs) : 
	Let write_rgb.185
		Lwz $a26 4
		Let Ti43.202
			Li 100
			Ans
				IfLE Ti43.202 x.196
					Ans
						Nop
					Let fx.203
						CallCls min_caml_float_of_int d:x.196 f:
						Let fy.204
							CallCls min_caml_float_of_int d:y.197 f:
							Let Td44.243
								FLi l.418
								Let Td45.244
									FReciprocal Td44.243
									Let Td46.241
										FMul fx.203 Td45.244
										Let Td47.242
											FLi l.419
											Let cr.205
												FSub Td46.241 Td47.242
												Let Td48.239
													FLi l.418
													Let Td49.240
														FReciprocal Td48.239
														Let Td50.237
															FMul fy.204 Td49.240
															Let Td51.238
																FLi l.420
																Let ci.206
																	FSub Td50.237 Td51.238
																	Let iloop.207
																		Mr $fp
																		Let $fp
																			Add $fp 8
																			Let l.422
																				SetL iloop.207
																				Let Tu423
																					Stw l.422 iloop.207 0
																					Let Tu421
																						Stw write_rgb.185 iloop.207 4
																						Let Ti52.216
																							Li 0
																							Let Td53.217
																								FLi l.399
																								Let Td54.218
																									FLi l.399
																									Let Tu18.213
																										CallCls iloop.207 (iloop.207) d:Ti52.216 f:Td53.217 Td54.218 cr.205 ci.206 
																										Let Ti56.214
																											Add x.196 1
																											Ans
																												CallCls xloop.195 (xloop.195) d:Ti56.214 y.197 f:
yloop.187 (args) : y.188 (fargs) : 
	Let write_rgb.185
		Lwz $a26 4
		Let Ti39.194
			Li 100
			Ans
				IfLE Ti39.194 y.188
					Ans
						Nop
					Let xloop.195
						Mr $fp
						Let $fp
							Add $fp 8
							Let l.425
								SetL xloop.195
								Let Tu426
									Stw l.425 xloop.195 0
									Let Tu424
										Stw write_rgb.185 xloop.195 4
										Let Ti40.201
											Li 0
											Let Tu19.198
												CallCls xloop.195 (xloop.195) d:Ti40.201 y.188 f:
												Let Ti42.199
													Add y.188 1
													Ans
														CallCls yloop.187 (yloop.187) d:Ti42.199 f:

main
Let Ti22.372
	Li 6
	Let Ti23.373
		Li 0
		Let a.353
			CallCls min_caml_create_array d:Ti22.372 Ti23.373 f:
			Let Ti25.371
				Li 3
				Let Tu15.354
					Stw Ti25.371 a.353 0
					Let Ti27.369
						Li 8
						Let Tu14.355
							Stw Ti27.369 a.353 4
							Let Ti29.367
								Li 12
								Let Tu13.356
									Stw Ti29.367 a.353 8
									Let Ti31.365
										Li 16
										Let Tu12.357
											Stw Ti31.365 a.353 12
											Let Ti33.363
												Li 25
												Let Tu11.358
													Stw Ti33.363 a.353 16
													Let Ti35.361
														Li 100
														Let Tu10.359
															Stw Ti35.361 a.353 20
															Let write_rgb.185
																Mr $fp
																Let $fp
																	Add $fp 8
																	Let l.437
																		SetL write_rgb.185
																		Let Tu438
																			Stw l.437 write_rgb.185 0
																			Let Tu436
																				Stw a.353 write_rgb.185 4
																				Let yloop.187
																					Mr $fp
																					Let $fp
																						Add $fp 8
																						Let l.434
																							SetL yloop.187
																							Let Tu435
																								Stw l.434 yloop.187 0
																								Let Tu433
																									Stw write_rgb.185 yloop.187 4
																									Let Tu36.193
																										Nop
																										Let Tu21.189
																											CallCls write_header.182 d:f:
																											Let Ti37.192
																												Li 0
																												Let Tu20.190
																													CallCls yloop.187 (yloop.187) d:Ti37.192 f:
																													Let Ti38.191
																														Li 0
																														Ans
																															CallCls min_caml_print_int d:Ti38.191 f:
