LetRec write_header.188 Tu1.189 
	Let Ti177.404
		Int:80
		Let Tu9.386
			ExtFunApp print_byte Ti177.404,
			Let Ti180.401
				Int:51
				Let Tu8.387
					ExtFunApp print_byte Ti180.401,
					Let Ti181.400
						Int:10
						Let Tu7.388
							ExtFunApp print_byte Ti181.400,
							Let Ti182.399
								Int:100
								Let Tu6.389
									ExtFunApp print_int Ti182.399,
									Let Ti183.398
										Int:32
										Let Tu5.390
											ExtFunApp print_byte Ti183.398,
											Let Ti184.397
												Int:100
												Let Tu4.391
													ExtFunApp print_int Ti184.397,
													Let Ti185.396
														Int:32
														Let Tu3.392
															ExtFunApp print_byte Ti185.396,
															Let Ti186.395
																Int:255
																Let Tu2.393
																	ExtFunApp print_int Ti186.395,
																	Let Ti187.394
																		Int:10
																		ExtFunApp print_byte Ti187.394,
	Let Ti25.384
		Int:6
		Let Ti26.385
			Int:0
			Let a.365
				ExtFunApp create_array Ti25.384,Ti26.385,
				Let Ti27.382
					Int:0
					Let Ti28.383
						Int:3
						Let Tu15.366
							Put a.365 Ti27.382 Ti28.383
							Let Ti29.380
								Int:1
								Let Ti30.381
									Int:8
									Let Tu14.367
										Put a.365 Ti29.380 Ti30.381
										Let Ti31.378
											Int:2
											Let Ti32.379
												Int:12
												Let Tu13.368
													Put a.365 Ti31.378 Ti32.379
													Let Ti33.376
														Int:3
														Let Ti34.377
															Int:16
															Let Tu12.369
																Put a.365 Ti33.376 Ti34.377
																Let Ti35.374
																	Int:4
																	Let Ti36.375
																		Int:25
																		Let Tu11.370
																			Put a.365 Ti35.374 Ti36.375
																			Let Ti37.372
																				Int:5
																				Let Ti38.373
																					Int:100
																					Let Tu10.371
																						Put a.365 Ti37.372 Ti38.373
																						LetRec write_rgb.191 x.192 
																							LetRec write.251 fr.252 fg.253 fb.254 
																								Let r.354
																									ExtFunApp int_of_float fr.252,
																									Let g.355
																										ExtFunApp int_of_float fg.253,
																										Let b.356
																											ExtFunApp int_of_float fb.254,
																											Let Ti174.364
																												Int:32
																												Let Tu20.357
																													ExtFunApp print_byte Ti174.364,
																													Let Tu19.358
																														ExtFunApp print_int r.354,
																														Let Ti175.363
																															Int:32
																															Let Tu18.359
																																ExtFunApp print_byte Ti175.363,
																																Let Tu17.360
																																	ExtFunApp print_int g.355,
																																	Let Ti176.362
																																		Int:32
																																		Let Tu16.361
																																			ExtFunApp print_byte Ti176.362,
																																			ExtFunApp print_int b.356,
																								Let fx.255
																									ExtFunApp float_of_int x.192,
																									Let Ti76.353
																										Int:0
																										Let Ti77.256
																											Get a.365 Ti76.353
																											IfLE x.192 Ti77.256
																												Let Td78.350
																													Float:255.000000
																													Let Td79.351
																														Float:0.000000
																														Let Td80.352
																															Float:0.000000
																															App write.251 Td78.350 Td79.351 Td80.352 
																												Let Ti81.349
																													Int:1
																													Let Ti82.257
																														Get a.365 Ti81.349
																														IfLE x.192 Ti82.257
																															Let Td83.333
																																Float:255.000000
																																Let Td84.344
																																	Float:255.000000
																																	Let Ti85.348
																																		Int:0
																																		Let Ti86.347
																																			Get a.365 Ti85.348
																																			Let Ti87.346
																																				Sub x.192 Ti86.347
																																				Let Td88.345
																																					ExtFunApp float_of_int Ti87.346,
																																					Let Td89.336
																																						FMul Td84.344 Td88.345
																																						Let Ti90.343
																																							Int:1
																																							Let Ti91.340
																																								Get a.365 Ti90.343
																																								Let Ti92.342
																																									Int:0
																																									Let Ti93.341
																																										Get a.365 Ti92.342
																																										Let Ti94.339
																																											Sub Ti91.340 Ti93.341
																																											Let Td95.337
																																												ExtFunApp float_of_int Ti94.339,
																																												Let Td96.338
																																													FReciprocal Td95.337
																																													Let Td97.334
																																														FMul Td89.336 Td96.338
																																														Let Td98.335
																																															Float:0.000000
																																															App write.251 Td83.333 Td97.334 Td98.335 
																															Let Ti99.332
																																Int:2
																																Let Ti100.258
																																	Get a.365 Ti99.332
																																	IfLE x.192 Ti100.258
																																		Let Td101.327
																																			Float:255.000000
																																			Let Ti102.331
																																				Int:2
																																				Let Ti103.330
																																					Get a.365 Ti102.331
																																					Let Ti104.329
																																						Sub Ti103.330 x.192
																																						Let Td105.328
																																							ExtFunApp float_of_int Ti104.329,
																																							Let Td106.319
																																								FMul Td101.327 Td105.328
																																								Let Ti107.326
																																									Int:2
																																									Let Ti108.323
																																										Get a.365 Ti107.326
																																										Let Ti109.325
																																											Int:1
																																											Let Ti110.324
																																												Get a.365 Ti109.325
																																												Let Ti111.322
																																													Sub Ti108.323 Ti110.324
																																													Let Td112.320
																																														ExtFunApp float_of_int Ti111.322,
																																														Let Td113.321
																																															FReciprocal Td112.320
																																															Let Td114.316
																																																FMul Td106.319 Td113.321
																																																Let Td115.317
																																																	Float:255.000000
																																																	Let Td116.318
																																																		Float:0.000000
																																																		App write.251 Td114.316 Td115.317 Td116.318 
																																		Let Ti117.315
																																			Int:3
																																			Let Ti118.259
																																				Get a.365 Ti117.315
																																				IfLE x.192 Ti118.259
																																					Let Td119.299
																																						Float:0.000000
																																						Let Td120.300
																																							Float:255.000000
																																							Let Td121.310
																																								Float:255.000000
																																								Let Ti122.314
																																									Int:2
																																									Let Ti123.313
																																										Get a.365 Ti122.314
																																										Let Ti124.312
																																											Sub x.192 Ti123.313
																																											Let Td125.311
																																												ExtFunApp float_of_int Ti124.312,
																																												Let Td126.302
																																													FMul Td121.310 Td125.311
																																													Let Ti127.309
																																														Int:3
																																														Let Ti128.306
																																															Get a.365 Ti127.309
																																															Let Ti129.308
																																																Int:2
																																																Let Ti130.307
																																																	Get a.365 Ti129.308
																																																	Let Ti131.305
																																																		Sub Ti128.306 Ti130.307
																																																		Let Td132.303
																																																			ExtFunApp float_of_int Ti131.305,
																																																			Let Td133.304
																																																				FReciprocal Td132.303
																																																				Let Td134.301
																																																					FMul Td126.302 Td133.304
																																																					App write.251 Td119.299 Td120.300 Td134.301 
																																					Let Ti135.298
																																						Int:4
																																						Let Ti136.260
																																							Get a.365 Ti135.298
																																							IfLE x.192 Ti136.260
																																								Let Td137.282
																																									Float:0.000000
																																									Let Td138.293
																																										Float:255.000000
																																										Let Ti139.297
																																											Int:4
																																											Let Ti140.296
																																												Get a.365 Ti139.297
																																												Let Ti141.295
																																													Sub Ti140.296 x.192
																																													Let Td142.294
																																														ExtFunApp float_of_int Ti141.295,
																																														Let Td143.285
																																															FMul Td138.293 Td142.294
																																															Let Ti144.292
																																																Int:4
																																																Let Ti145.289
																																																	Get a.365 Ti144.292
																																																	Let Ti146.291
																																																		Int:3
																																																		Let Ti147.290
																																																			Get a.365 Ti146.291
																																																			Let Ti148.288
																																																				Sub Ti145.289 Ti147.290
																																																				Let Td149.286
																																																					ExtFunApp float_of_int Ti148.288,
																																																					Let Td150.287
																																																						FReciprocal Td149.286
																																																						Let Td151.283
																																																							FMul Td143.285 Td150.287
																																																							Let Td152.284
																																																								Float:255.000000
																																																								App write.251 Td137.282 Td151.283 Td152.284 
																																								Let Ti153.281
																																									Int:5
																																									Let Ti154.261
																																										Get a.365 Ti153.281
																																										IfLE x.192 Ti154.261
																																											Let Td155.276
																																												Float:255.000000
																																												Let Ti156.280
																																													Int:4
																																													Let Ti157.279
																																														Get a.365 Ti156.280
																																														Let Ti158.278
																																															Sub x.192 Ti157.279
																																															Let Td159.277
																																																ExtFunApp float_of_int Ti158.278,
																																																Let Td160.268
																																																	FMul Td155.276 Td159.277
																																																	Let Ti161.275
																																																		Int:5
																																																		Let Ti162.272
																																																			Get a.365 Ti161.275
																																																			Let Ti163.274
																																																				Int:4
																																																				Let Ti164.273
																																																					Get a.365 Ti163.274
																																																					Let Ti165.271
																																																						Sub Ti162.272 Ti164.273
																																																						Let Td166.269
																																																							ExtFunApp float_of_int Ti165.271,
																																																							Let Td167.270
																																																								FReciprocal Td166.269
																																																								Let Td168.265
																																																									FMul Td160.268 Td167.270
																																																									Let Td169.266
																																																										Float:0.000000
																																																										Let Td170.267
																																																											Float:255.000000
																																																											App write.251 Td168.265 Td169.266 Td170.267 
																																											Let Td171.262
																																												Float:0.000000
																																												Let Td172.263
																																													Float:0.000000
																																													Let Td173.264
																																														Float:0.000000
																																														App write.251 Td171.262 Td172.263 Td173.264 
																							LetRec yloop.193 y.194 
																								Let Ti42.200
																									Int:100
																									IfLE Ti42.200 y.194
																										Unit
																										LetRec xloop.201 x.202 y.203 
																											Let Ti46.208
																												Int:100
																												IfLE Ti46.208 x.202
																													Unit
																													Let fx.209
																														ExtFunApp float_of_int x.202,
																														Let fy.210
																															ExtFunApp float_of_int y.203,
																															Let Td47.249
																																Float:50.000000
																																Let Td48.250
																																	FReciprocal Td47.249
																																	Let Td49.247
																																		FMul fx.209 Td48.250
																																		Let Td50.248
																																			Float:1.500000
																																			Let cr.211
																																				FSub Td49.247 Td50.248
																																				Let Td51.245
																																					Float:50.000000
																																					Let Td52.246
																																						FReciprocal Td51.245
																																						Let Td53.243
																																							FMul fy.210 Td52.246
																																							Let Td54.244
																																								Float:1.000000
																																								Let ci.212
																																									FSub Td53.243 Td54.244
																																									LetRec iloop.213 i.214 zr.215 zi.216 cr.217 ci.218 
																																										Let Ti60.225
																																											Int:256
																																											IfLE Ti60.225 i.214
																																												Let Ti61.242
																																													Int:256
																																													App write_rgb.191 Ti61.242 
																																												Let Td62.240
																																													FMul zr.215 zr.215
																																													Let Td63.241
																																														FMul zi.216 zi.216
																																														Let Td64.239
																																															FSub Td62.240 Td63.241
																																															Let nr.226
																																																FAdd Td64.239 cr.217
																																																Let Td65.238
																																																	Float:2.000000
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
																																																								Float:4.000000
																																																								IfLE Td70.228 Td73.229
																																																									Let Ti.e.407
																																																										Int:1
																																																										Let Ti75.230
																																																											Add i.214 Ti.e.407
																																																											App iloop.213 Ti75.230 nr.226 ni.227 cr.217 ci.218 
																																																									App write_rgb.191 i.214 
																																										Let Ti55.222
																																											Int:0
																																											Let Td56.223
																																												Float:0.000000
																																												Let Td57.224
																																													Float:0.000000
																																													Let Tu21.219
																																														App iloop.213 Ti55.222 Td56.223 Td57.224 cr.211 ci.212 
																																														Let Ti.e.406
																																															Int:1
																																															Let Ti59.220
																																																Add x.202 Ti.e.406
																																																App xloop.201 Ti59.220 y.203 
																											Let Ti43.207
																												Int:0
																												Let Tu22.204
																													App xloop.201 Ti43.207 y.194 
																													Let Ti.e.405
																														Int:1
																														Let Ti45.205
																															Add y.194 Ti.e.405
																															App yloop.193 Ti45.205 
																								Let Tu39.199
																									Unit
																									Let Tu24.195
																										App write_header.188 Tu39.199 
																										Let Ti40.198
																											Int:0
																											Let Tu23.196
																												App yloop.193 Ti40.198 
																												Let Ti41.197
																													Int:0
																													ExtFunApp print_int Ti41.197,
