data

fundefs
write_header.188 (args) : (fargs) : 
	Let Ti177.404
		Li 80
		Let Tu9.386
			CallDir min_caml_print_byte d:Ti177.404 f:
			Let Ti180.401
				Li 51
				Let Tu8.387
					CallDir min_caml_print_byte d:Ti180.401 f:
					Let Ti181.400
						Li 10
						Let Tu7.388
							CallDir min_caml_print_byte d:Ti181.400 f:
							Let Ti182.399
								Li 100
								Let Tu6.389
									CallDir min_caml_print_int d:Ti182.399 f:
									Let Ti183.398
										Li 32
										Let Tu5.390
											CallDir min_caml_print_byte d:Ti183.398 f:
											Let Ti184.397
												Li 100
												Let Tu4.391
													CallDir min_caml_print_int d:Ti184.397 f:
													Let Ti185.396
														Li 32
														Let Tu3.392
															CallDir min_caml_print_byte d:Ti185.396 f:
															Let Ti186.395
																Li 255
																Let Tu2.393
																	CallDir min_caml_print_int d:Ti186.395 f:
																	Let Ti187.394
																		Li 10
																		Ans
																			CallDir min_caml_print_byte d:Ti187.394 f:
write.251 (args) : (fargs) : fr.252 fg.253 fb.254 
	Let r.354
		CallDir min_caml_int_of_float d:f:fr.252 
		Let g.355
			CallDir min_caml_int_of_float d:f:fg.253 
			Let b.356
				CallDir min_caml_int_of_float d:f:fb.254 
				Let Ti174.364
					Li 32
					Let Tu20.357
						CallDir min_caml_print_byte d:Ti174.364 f:
						Let Tu19.358
							CallDir min_caml_print_int d:r.354 f:
							Let Ti175.363
								Li 32
								Let Tu18.359
									CallDir min_caml_print_byte d:Ti175.363 f:
									Let Tu17.360
										CallDir min_caml_print_int d:g.355 f:
										Let Ti176.362
											Li 32
											Let Tu16.361
												CallDir min_caml_print_byte d:Ti176.362 f:
												Ans
													CallDir min_caml_print_int d:b.356 f:
write_rgb.191 (args) : x.192 (fargs) : 
	Let a.365
		Lwz $a4 4
		Let fx.255
			CallDir min_caml_float_of_int d:x.192 f:
			Let Ti77.256
				Lwz a.365 0
				Ans
					IfLE x.192 Ti77.256
						Let Td78.350
							FLi 255.000000
							Let Td79.351
								FLi 0.000000
								Let Td80.352
									FLi 0.000000
									Ans
										CallDir write.251 d:f:Td78.350 Td79.351 Td80.352 
						Let Ti82.257
							Lwz a.365 4
							Ans
								IfLE x.192 Ti82.257
									Let Td83.333
										FLi 255.000000
										Let Td84.344
											FLi 255.000000
											Let Ti86.347
												Lwz a.365 0
												Let Ti87.346
													Sub x.192 Ti86.347
													Let Td88.345
														CallDir min_caml_float_of_int d:Ti87.346 f:
														Let Td89.336
															FMul Td84.344 Td88.345
															Let Ti91.340
																Lwz a.365 4
																Let Ti93.341
																	Lwz a.365 0
																	Let Ti94.339
																		Sub Ti91.340 Ti93.341
																		Let Td95.337
																			CallDir min_caml_float_of_int d:Ti94.339 f:
																			Let Td96.338
																				FReciprocal Td95.337
																				Let Td97.334
																					FMul Td89.336 Td96.338
																					Let Td98.335
																						FLi 0.000000
																						Ans
																							CallDir write.251 d:f:Td83.333 Td97.334 Td98.335 
									Let Ti100.258
										Lwz a.365 8
										Ans
											IfLE x.192 Ti100.258
												Let Td101.327
													FLi 255.000000
													Let Ti103.330
														Lwz a.365 8
														Let Ti104.329
															Sub Ti103.330 x.192
															Let Td105.328
																CallDir min_caml_float_of_int d:Ti104.329 f:
																Let Td106.319
																	FMul Td101.327 Td105.328
																	Let Ti108.323
																		Lwz a.365 8
																		Let Ti110.324
																			Lwz a.365 4
																			Let Ti111.322
																				Sub Ti108.323 Ti110.324
																				Let Td112.320
																					CallDir min_caml_float_of_int d:Ti111.322 f:
																					Let Td113.321
																						FReciprocal Td112.320
																						Let Td114.316
																							FMul Td106.319 Td113.321
																							Let Td115.317
																								FLi 255.000000
																								Let Td116.318
																									FLi 0.000000
																									Ans
																										CallDir write.251 d:f:Td114.316 Td115.317 Td116.318 
												Let Ti118.259
													Lwz a.365 12
													Ans
														IfLE x.192 Ti118.259
															Let Td119.299
																FLi 0.000000
																Let Td120.300
																	FLi 255.000000
																	Let Td121.310
																		FLi 255.000000
																		Let Ti123.313
																			Lwz a.365 8
																			Let Ti124.312
																				Sub x.192 Ti123.313
																				Let Td125.311
																					CallDir min_caml_float_of_int d:Ti124.312 f:
																					Let Td126.302
																						FMul Td121.310 Td125.311
																						Let Ti128.306
																							Lwz a.365 12
																							Let Ti130.307
																								Lwz a.365 8
																								Let Ti131.305
																									Sub Ti128.306 Ti130.307
																									Let Td132.303
																										CallDir min_caml_float_of_int d:Ti131.305 f:
																										Let Td133.304
																											FReciprocal Td132.303
																											Let Td134.301
																												FMul Td126.302 Td133.304
																												Ans
																													CallDir write.251 d:f:Td119.299 Td120.300 Td134.301 
															Let Ti136.260
																Lwz a.365 16
																Ans
																	IfLE x.192 Ti136.260
																		Let Td137.282
																			FLi 0.000000
																			Let Td138.293
																				FLi 255.000000
																				Let Ti140.296
																					Lwz a.365 16
																					Let Ti141.295
																						Sub Ti140.296 x.192
																						Let Td142.294
																							CallDir min_caml_float_of_int d:Ti141.295 f:
																							Let Td143.285
																								FMul Td138.293 Td142.294
																								Let Ti145.289
																									Lwz a.365 16
																									Let Ti147.290
																										Lwz a.365 12
																										Let Ti148.288
																											Sub Ti145.289 Ti147.290
																											Let Td149.286
																												CallDir min_caml_float_of_int d:Ti148.288 f:
																												Let Td150.287
																													FReciprocal Td149.286
																													Let Td151.283
																														FMul Td143.285 Td150.287
																														Let Td152.284
																															FLi 255.000000
																															Ans
																																CallDir write.251 d:f:Td137.282 Td151.283 Td152.284 
																		Let Ti154.261
																			Lwz a.365 20
																			Ans
																				IfLE x.192 Ti154.261
																					Let Td155.276
																						FLi 255.000000
																						Let Ti157.279
																							Lwz a.365 16
																							Let Ti158.278
																								Sub x.192 Ti157.279
																								Let Td159.277
																									CallDir min_caml_float_of_int d:Ti158.278 f:
																									Let Td160.268
																										FMul Td155.276 Td159.277
																										Let Ti162.272
																											Lwz a.365 20
																											Let Ti164.273
																												Lwz a.365 16
																												Let Ti165.271
																													Sub Ti162.272 Ti164.273
																													Let Td166.269
																														CallDir min_caml_float_of_int d:Ti165.271 f:
																														Let Td167.270
																															FReciprocal Td166.269
																															Let Td168.265
																																FMul Td160.268 Td167.270
																																Let Td169.266
																																	FLi 0.000000
																																	Let Td170.267
																																		FLi 255.000000
																																		Ans
																																			CallDir write.251 d:f:Td168.265 Td169.266 Td170.267 
																					Let Td171.262
																						FLi 0.000000
																						Let Td172.263
																							FLi 0.000000
																							Let Td173.264
																								FLi 0.000000
																								Ans
																									CallDir write.251 d:f:Td171.262 Td172.263 Td173.264 
iloop.213 (args) : i.214 (fargs) : zr.215 zi.216 cr.217 ci.218 
	Let write_rgb.191
		Lwz $a4 4
		Let Ti60.225
			Li 256
			Ans
				IfLE Ti60.225 i.214
					Let Ti61.242
						Li 256
						Ans
							CallCls write_rgb.191 (write_rgb.191) d:Ti61.242 f:
					Let Td62.240
						FMul zr.215 zr.215
						Let Td63.241
							FMul zi.216 zi.216
							Let Td64.239
								FSub Td62.240 Td63.241
								Let nr.226
									FAdd Td64.239 cr.217
									Let Td65.238
										FLi 2.000000
										Let Td66.237
											FMul Td65.238 zr.215
											Let Td67.236
												FMul Td66.237 zi.216
												Let ni.227
													FAdd Td67.236 ci.218
													Let Td68.234
														FMul zr.215 zr.215
														Let Td69.235
															FMul zi.216 zi.216
															Let Td70.228
																FAdd Td68.234 Td69.235
																Let Td73.229
																	FLi 4.000000
																	Ans
																		IfFLE Td70.228 Td73.229
																			Let Ti75.230
																				Add i.214 1
																				Ans
																					CallCls iloop.213 (iloop.213) d:Ti75.230 f:nr.226 ni.227 cr.217 ci.218 
																			Ans
																				CallCls write_rgb.191 (write_rgb.191) d:i.214 f:
xloop.201 (args) : x.202 y.203 (fargs) : 
	Let write_rgb.191
		Lwz $a4 4
		Let Ti46.208
			Li 100
			Ans
				IfLE Ti46.208 x.202
					Ans
						Nop
					Let fx.209
						CallDir min_caml_float_of_int d:x.202 f:
						Let fy.210
							CallDir min_caml_float_of_int d:y.203 f:
							Let Td47.249
								FLi 50.000000
								Let Td48.250
									FReciprocal Td47.249
									Let Td49.247
										FMul fx.209 Td48.250
										Let Td50.248
											FLi 1.500000
											Let cr.211
												FSub Td49.247 Td50.248
												Let Td51.245
													FLi 50.000000
													Let Td52.246
														FReciprocal Td51.245
														Let Td53.243
															FMul fy.210 Td52.246
															Let Td54.244
																FLi 1.000000
																Let ci.212
																	FSub Td53.243 Td54.244
																	Let iloop.213
																		Mr $fp
																		Let $fp
																			Add $fp 8
																			Let l.430
																				SetL iloop.213
																				Let Tu431
																					Stw l.430 iloop.213 0
																					Let Tu429
																						Stw write_rgb.191 iloop.213 4
																						Let Ti55.222
																							Li 0
																							Let Td56.223
																								FLi 0.000000
																								Let Td57.224
																									FLi 0.000000
																									Let Tu21.219
																										CallCls iloop.213 (iloop.213) d:Ti55.222 f:Td56.223 Td57.224 cr.211 ci.212 
																										Let Ti59.220
																											Add x.202 1
																											Ans
																												CallCls xloop.201 (xloop.201) d:Ti59.220 y.203 f:
yloop.193 (args) : y.194 (fargs) : 
	Let write_rgb.191
		Lwz $a4 4
		Let Ti42.200
			Li 100
			Ans
				IfLE Ti42.200 y.194
					Ans
						Nop
					Let xloop.201
						Mr $fp
						Let $fp
							Add $fp 8
							Let l.433
								SetL xloop.201
								Let Tu434
									Stw l.433 xloop.201 0
									Let Tu432
										Stw write_rgb.191 xloop.201 4
										Let Ti43.207
											Li 0
											Let Tu22.204
												CallCls xloop.201 (xloop.201) d:Ti43.207 y.194 f:
												Let Ti45.205
													Add y.194 1
													Ans
														CallCls yloop.193 (yloop.193) d:Ti45.205 f:

main
Let Ti25.384
	Li 6
	Let Ti26.385
		Li 0
		Let a.365
			CallDir min_caml_create_array d:Ti25.384 Ti26.385 f:
			Let Ti28.383
				Li 3
				Let Tu15.366
					Stw Ti28.383 a.365 0
					Let Ti30.381
						Li 8
						Let Tu14.367
							Stw Ti30.381 a.365 4
							Let Ti32.379
								Li 12
								Let Tu13.368
									Stw Ti32.379 a.365 8
									Let Ti34.377
										Li 16
										Let Tu12.369
											Stw Ti34.377 a.365 12
											Let Ti36.375
												Li 25
												Let Tu11.370
													Stw Ti36.375 a.365 16
													Let Ti38.373
														Li 100
														Let Tu10.371
															Stw Ti38.373 a.365 20
															Let write_rgb.191
																Mr $fp
																Let $fp
																	Add $fp 8
																	Let l.445
																		SetL write_rgb.191
																		Let Tu446
																			Stw l.445 write_rgb.191 0
																			Let Tu444
																				Stw a.365 write_rgb.191 4
																				Let yloop.193
																					Mr $fp
																					Let $fp
																						Add $fp 8
																						Let l.442
																							SetL yloop.193
																							Let Tu443
																								Stw l.442 yloop.193 0
																								Let Tu441
																									Stw write_rgb.191 yloop.193 4
																									Let Tu39.199
																										Nop
																										Let Tu24.195
																											CallDir write_header.188 d:f:
																											Let Ti40.198
																												Li 0
																												Let Tu23.196
																													CallCls yloop.193 (yloop.193) d:Ti40.198 f:
																													Let Ti41.197
																														Li 0
																														Ans
																															CallDir min_caml_print_int d:Ti41.197 f:
