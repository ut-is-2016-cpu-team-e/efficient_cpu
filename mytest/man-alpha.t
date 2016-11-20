LetRec write_header.182 Tu1.183 
	Let Tu9.374
		Let Ti171.392
			Int:80
			ExtFunApp print_byte Ti171.392,
		Let Tu8.375
			Let Ti174.389
				Let Ti172.390
					Int:48
					Let Ti173.391
						Int:3
						Add Ti172.390 Ti173.391
				ExtFunApp print_byte Ti174.389,
			Let Tu7.376
				Let Ti175.388
					Int:10
					ExtFunApp print_byte Ti175.388,
				Let Tu6.377
					Let Ti176.387
						Int:100
						ExtFunApp print_int Ti176.387,
					Let Tu5.378
						Let Ti177.386
							Int:32
							ExtFunApp print_byte Ti177.386,
						Let Tu4.379
							Let Ti178.385
								Int:100
								ExtFunApp print_int Ti178.385,
							Let Tu3.380
								Let Ti179.384
									Int:32
									ExtFunApp print_byte Ti179.384,
								Let Tu2.381
									Let Ti180.383
										Int:255
										ExtFunApp print_int Ti180.383,
									Let Ti181.382
										Int:10
										ExtFunApp print_byte Ti181.382,
	Let step.184
		Let a.353
			Let Ti22.372
				Int:6
				Let Ti23.373
					Int:0
					ExtFunApp create_array Ti22.372,Ti23.373,
			Let Tu15.354
				Let Ti24.370
					Int:0
					Let Ti25.371
						Int:3
						Put a.353 Ti24.370 Ti25.371
				Let Tu14.355
					Let Ti26.368
						Int:1
						Let Ti27.369
							Int:8
							Put a.353 Ti26.368 Ti27.369
					Let Tu13.356
						Let Ti28.366
							Int:2
							Let Ti29.367
								Int:12
								Put a.353 Ti28.366 Ti29.367
						Let Tu12.357
							Let Ti30.364
								Int:3
								Let Ti31.365
									Int:16
									Put a.353 Ti30.364 Ti31.365
							Let Tu11.358
								Let Ti32.362
									Int:4
									Let Ti33.363
										Int:25
										Put a.353 Ti32.362 Ti33.363
								Let Tu10.359
									Let Ti34.360
										Int:5
										Let Ti35.361
											Int:100
											Put a.353 Ti34.360 Ti35.361
									Var a.353
		LetRec write_rgb.185 x.186 
			LetRec write.245 fr.246 fg.247 fb.248 
				Let r.348
					ExtFunApp int_of_float fr.246,
					Let g.349
						ExtFunApp int_of_float fg.247,
						Let b.350
							ExtFunApp int_of_float fb.248,
							Let Tu17.351
								ExtFunApp print_int r.348,
								Let Tu16.352
									ExtFunApp print_int g.349,
									ExtFunApp print_int b.350,
				Let fx.249
					ExtFunApp float_of_int x.186,
					Let Ti74.250
						Let Ti73.347
							Int:0
							Get step.184 Ti73.347
						IfLE x.186 Ti74.250
							Let Td75.344
								Float:255.000000
								Let Td76.345
									Float:0.000000
									Let Td77.346
										Float:0.000000
										App write.245Td75.344 Td76.345 Td77.346 
							Let Ti79.251
								Let Ti78.343
									Int:1
									Get step.184 Ti78.343
								IfLE x.186 Ti79.251
									Let Td80.327
										Float:255.000000
										Let Td94.328
											Let Td86.330
												Let Td81.338
													Float:255.000000
													Let Td85.339
														Let Ti84.340
															Let Ti83.341
																Let Ti82.342
																	Int:0
																	Get step.184 Ti82.342
																Sub x.186 Ti83.341
															ExtFunApp float_of_int Ti84.340,
														FMul Td81.338 Td85.339
												Let Td92.331
													Let Ti91.333
														Let Ti88.334
															Let Ti87.337
																Int:1
																Get step.184 Ti87.337
															Let Ti90.335
																Let Ti89.336
																	Int:0
																	Get step.184 Ti89.336
																Sub Ti88.334 Ti90.335
														ExtFunApp float_of_int Ti91.333,
													Let Td93.332
														FReciprocal Td92.331
														FMul Td86.330 Td93.332
											Let Td95.329
												Float:0.000000
												App write.245Td80.327 Td94.328 Td95.329 
									Let Ti97.252
										Let Ti96.326
											Int:2
											Get step.184 Ti96.326
										IfLE x.186 Ti97.252
											Let Td111.310
												Let Td103.313
													Let Td98.321
														Float:255.000000
														Let Td102.322
															Let Ti101.323
																Let Ti100.324
																	Let Ti99.325
																		Int:2
																		Get step.184 Ti99.325
																	Sub Ti100.324 x.186
																ExtFunApp float_of_int Ti101.323,
															FMul Td98.321 Td102.322
													Let Td109.314
														Let Ti108.316
															Let Ti105.317
																Let Ti104.320
																	Int:2
																	Get step.184 Ti104.320
																Let Ti107.318
																	Let Ti106.319
																		Int:1
																		Get step.184 Ti106.319
																	Sub Ti105.317 Ti107.318
															ExtFunApp float_of_int Ti108.316,
														Let Td110.315
															FReciprocal Td109.314
															FMul Td103.313 Td110.315
												Let Td112.311
													Float:255.000000
													Let Td113.312
														Float:0.000000
														App write.245Td111.310 Td112.311 Td113.312 
											Let Ti115.253
												Let Ti114.309
													Int:3
													Get step.184 Ti114.309
												IfLE x.186 Ti115.253
													Let Td116.293
														Float:0.000000
														Let Td117.294
															Float:255.000000
															Let Td131.295
																Let Td123.296
																	Let Td118.304
																		Float:255.000000
																		Let Td122.305
																			Let Ti121.306
																				Let Ti120.307
																					Let Ti119.308
																						Int:2
																						Get step.184 Ti119.308
																					Sub x.186 Ti120.307
																				ExtFunApp float_of_int Ti121.306,
																			FMul Td118.304 Td122.305
																	Let Td129.297
																		Let Ti128.299
																			Let Ti125.300
																				Let Ti124.303
																					Int:3
																					Get step.184 Ti124.303
																				Let Ti127.301
																					Let Ti126.302
																						Int:2
																						Get step.184 Ti126.302
																					Sub Ti125.300 Ti127.301
																			ExtFunApp float_of_int Ti128.299,
																		Let Td130.298
																			FReciprocal Td129.297
																			FMul Td123.296 Td130.298
																App write.245Td116.293 Td117.294 Td131.295 
													Let Ti133.254
														Let Ti132.292
															Int:4
															Get step.184 Ti132.292
														IfLE x.186 Ti133.254
															Let Td134.276
																Float:0.000000
																Let Td148.277
																	Let Td140.279
																		Let Td135.287
																			Float:255.000000
																			Let Td139.288
																				Let Ti138.289
																					Let Ti137.290
																						Let Ti136.291
																							Int:4
																							Get step.184 Ti136.291
																						Sub Ti137.290 x.186
																					ExtFunApp float_of_int Ti138.289,
																				FMul Td135.287 Td139.288
																		Let Td146.280
																			Let Ti145.282
																				Let Ti142.283
																					Let Ti141.286
																						Int:4
																						Get step.184 Ti141.286
																					Let Ti144.284
																						Let Ti143.285
																							Int:3
																							Get step.184 Ti143.285
																						Sub Ti142.283 Ti144.284
																				ExtFunApp float_of_int Ti145.282,
																			Let Td147.281
																				FReciprocal Td146.280
																				FMul Td140.279 Td147.281
																	Let Td149.278
																		Float:255.000000
																		App write.245Td134.276 Td148.277 Td149.278 
															Let Ti151.255
																Let Ti150.275
																	Int:5
																	Get step.184 Ti150.275
																IfLE x.186 Ti151.255
																	Let Td165.259
																		Let Td157.262
																			Let Td152.270
																				Float:255.000000
																				Let Td156.271
																					Let Ti155.272
																						Let Ti154.273
																							Let Ti153.274
																								Int:4
																								Get step.184 Ti153.274
																							Sub x.186 Ti154.273
																						ExtFunApp float_of_int Ti155.272,
																					FMul Td152.270 Td156.271
																			Let Td163.263
																				Let Ti162.265
																					Let Ti159.266
																						Let Ti158.269
																							Int:5
																							Get step.184 Ti158.269
																						Let Ti161.267
																							Let Ti160.268
																								Int:4
																								Get step.184 Ti160.268
																							Sub Ti159.266 Ti161.267
																					ExtFunApp float_of_int Ti162.265,
																				Let Td164.264
																					FReciprocal Td163.263
																					FMul Td157.262 Td164.264
																		Let Td166.260
																			Float:0.000000
																			Let Td167.261
																				Float:255.000000
																				App write.245Td165.259 Td166.260 Td167.261 
																	Let Td168.256
																		Float:0.000000
																		Let Td169.257
																			Float:0.000000
																			Let Td170.258
																				Float:0.000000
																				App write.245Td168.256 Td169.257 Td170.258 
			LetRec yloop.187 y.188 
				Let Ti39.194
					Int:100
					IfLE Ti39.194 y.188
						Unit
						LetRec xloop.195 x.196 y.197 
							Let Ti43.202
								Int:100
								IfLE Ti43.202 x.196
									Unit
									Let fx.203
										ExtFunApp float_of_int x.196,
										Let fy.204
											ExtFunApp float_of_int y.197,
											Let cr.205
												Let Td46.241
													Let Td44.243
														Float:50.000000
														Let Td45.244
															FReciprocal Td44.243
															FMul fx.203 Td45.244
													Let Td47.242
														Float:1.500000
														FSub Td46.241 Td47.242
												Let ci.206
													Let Td50.237
														Let Td48.239
															Float:50.000000
															Let Td49.240
																FReciprocal Td48.239
																FMul fy.204 Td49.240
														Let Td51.238
															Float:1.000000
															FSub Td50.237 Td51.238
													LetRec iloop.207 i.208 zr.209 zi.210 cr.211 ci.212 
														Let Ti57.219
															Int:256
															IfLE Ti57.219 i.208
																Let Ti58.236
																	Int:256
																	App write_rgb.185Ti58.236 
																Let nr.220
																	Let Td61.233
																		Let Td59.234
																			FMul zr.209 zr.209
																			Let Td60.235
																				FMul zi.210 zi.210
																				FSub Td59.234 Td60.235
																		FAdd Td61.233 cr.211
																	Let ni.221
																		Let Td64.230
																			Let Td63.231
																				Let Td62.232
																					Float:2.000000
																					FMul Td62.232 zr.209
																				FMul Td63.231 zi.210
																			FAdd Td64.230 ci.212
																		Let Td67.222
																			Let Td65.228
																				FMul zr.209 zr.209
																				Let Td66.229
																					FMul zi.210 zi.210
																					FAdd Td65.228 Td66.229
																			Let Td70.223
																				Let Td68.226
																					Float:2.000000
																					Let Td69.227
																						Float:2.000000
																						FMul Td68.226 Td69.227
																				IfLE Td67.222 Td70.223
																					Let Ti72.224
																						Let Ti71.225
																							Int:1
																							Add i.208 Ti71.225
																						App iloop.207Ti72.224 nr.220 ni.221 cr.211 ci.212 
																					App write_rgb.185i.208 
														Let Tu18.213
															Let Ti52.216
																Int:0
																Let Td53.217
																	Float:0.000000
																	Let Td54.218
																		Float:0.000000
																		App iloop.207Ti52.216 Td53.217 Td54.218 cr.205 ci.206 
															Let Ti56.214
																Let Ti55.215
																	Int:1
																	Add x.196 Ti55.215
																App xloop.195Ti56.214 y.197 
							Let Tu19.198
								Let Ti40.201
									Int:0
									App xloop.195Ti40.201 y.188 
								Let Ti42.199
									Let Ti41.200
										Int:1
										Add y.188 Ti41.200
									App yloop.187Ti42.199 
				Let Tu21.189
					Let Tu36.193
						Unit
						App write_header.182Tu36.193 
					Let Tu20.190
						Let Ti37.192
							Int:0
							App yloop.187Ti37.192 
						Let Ti38.191
							Int:0
							ExtFunApp print_int Ti38.191,
