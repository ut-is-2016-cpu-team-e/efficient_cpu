LetRec fneg.247 x.248 
	FNeg x.248
	LetRec fhalf.249 x.250 
		Let Td246.638
			Float:0.500000
			FMul x.250 Td246.638
		LetRec fsqr.251 x.252 
			FMul x.252 x.252
			LetRec fflag.253 a.254 
				Let Td244.636
					Float:0.000000
					IfLE Td244.636 a.254
						Int:1
						Let Ti245.637
							Int:1
							Neg Ti245.637
				LetRec countn.255 a.256 b.257 c.258 
					IfLE b.257 a.256
						Let Ti241.633
							Sub a.256 b.257
							Let Ti243.634
								Let Ti242.635
									Int:1
									Add c.258 Ti242.635
								App countn.255Ti241.633 b.257 Ti243.634 
						Var c.258
					LetRec mymul.259 a.260 b.261 sum.262 
						Let Ti237.629
							Int:0
							IfEq a.260 Ti237.629
								Var sum.262
								Let Ti239.630
									Let Ti238.632
										Int:1
										Sub a.260 Ti238.632
									Let Ti240.631
										Add sum.262 b.261
										App mymul.259Ti239.630 b.261 Ti240.631 
						LetRec print_int.263 a.264 
							Let b.566
								Let Ti195.626
									Int:0
									IfLE Ti195.626 a.264
										Var a.264
										Let Tu1.627
											Let Ti196.628
												Int:45
												printchar Ti196.628
											Neg a.264
								Let x.567
									Let Ti197.624
										Int:10000
										Let Ti198.625
											Int:0
											App countn.255b.566 Ti197.624 Ti198.625 
									Let b.568
										Let Ti201.621
											Let Ti199.622
												Int:10000
												Let Ti200.623
													Int:0
													App mymul.259x.567 Ti199.622 Ti200.623 
											Sub b.566 Ti201.621
										Let flag.569
											Let Ti202.617
												Int:0
												IfLE x.567 Ti202.617
													Int:0
													Let Tu2.618
														Let Ti204.619
															Let Ti203.620
																Int:48
																Add Ti203.620 x.567
															printchar Ti204.619
														Int:1
											Let x.570
												Let Ti205.615
													Int:1000
													Let Ti206.616
														Int:0
														App countn.255b.568 Ti205.615 Ti206.616 
												Let b.571
													Let Ti209.612
														Let Ti207.613
															Int:1000
															Let Ti208.614
																Int:0
																App mymul.259x.570 Ti207.613 Ti208.614 
														Sub b.568 Ti209.612
													Let flag.572
														Let Ti210.605
															Int:0
															IfLE x.570 Ti210.605
																Let Ti211.609
																	Int:1
																	IfEq flag.569 Ti211.609
																		Let Tu4.610
																			Let Ti212.611
																				Int:48
																				printchar Ti212.611
																			Int:1
																		Int:0
																Let Tu3.606
																	Let Ti214.607
																		Let Ti213.608
																			Int:48
																			Add Ti213.608 x.570
																		printchar Ti214.607
																	Int:1
														Let x.573
															Let Ti215.603
																Int:100
																Let Ti216.604
																	Int:0
																	App countn.255b.571 Ti215.603 Ti216.604 
															Let b.574
																Let Ti219.600
																	Let Ti217.601
																		Int:100
																		Let Ti218.602
																			Int:0
																			App mymul.259x.573 Ti217.601 Ti218.602 
																	Sub b.571 Ti219.600
																Let flag.575
																	Let Ti220.593
																		Int:0
																		IfLE x.573 Ti220.593
																			Let Ti221.597
																				Int:1
																				IfEq flag.572 Ti221.597
																					Let Tu6.598
																						Let Ti222.599
																							Int:48
																							printchar Ti222.599
																						Int:1
																					Int:0
																			Let Tu5.594
																				Let Ti224.595
																					Let Ti223.596
																						Int:48
																						Add Ti223.596 x.573
																					printchar Ti224.595
																				Int:1
																	Let x.576
																		Let Ti225.591
																			Int:10
																			Let Ti226.592
																				Int:0
																				App countn.255b.574 Ti225.591 Ti226.592 
																		Let b.577
																			Let Ti229.588
																				Let Ti227.589
																					Int:10
																					Let Ti228.590
																						Int:0
																						App mymul.259x.576 Ti227.589 Ti228.590 
																				Sub b.574 Ti229.588
																			Let flag.578
																				Let Ti230.581
																					Int:0
																					IfLE x.576 Ti230.581
																						Let Ti231.585
																							Int:1
																							IfEq flag.575 Ti231.585
																								Let Tu8.586
																									Let Ti232.587
																										Int:48
																										printchar Ti232.587
																									Int:1
																								Int:0
																						Let Tu7.582
																							Let Ti234.583
																								Let Ti233.584
																									Int:48
																									Add Ti233.584 x.576
																								printchar Ti234.583
																							Int:1
																				Let Ti236.579
																					Let Ti235.580
																						Int:48
																						Add Ti235.580 b.577
																					printchar Ti236.579
							LetRec int_of_float.265 a.266 
								Let abs.520
									fabs a.266
									Let flag.521
										App fflag.253a.266 
										LetRec ftoi_ret.522 a.523 
											LetRec div2like.540 a.541 
												LetRec div2like_sub.557 a.558 b.559 
													Let Td190.561
														Float:2.000000
														IfLE Td190.561 a.558
															Let Td192.562
																Let Td191.565
																	Float:2.000000
																	FSub a.558 Td191.565
																Let Td194.563
																	Let Td193.564
																		Float:1.000000
																		FAdd b.559 Td193.564
																	App div2like_sub.557Td192.562 Td194.563 
															Var b.559
													Let Td189.560
														Float:0.000000
														App div2like_sub.557a.541 Td189.560 
												LetRec ftoi_ret_sub.542 a.543 b.544 c.545 
													Let a_sub.548
														App div2like.540a.543 
														Let Td181.549
															Float:1.000000
															IfLE Td181.549 a.543
																Let Td182.550
																	Float:1.000000
																	Let Td185.551
																		Let Td184.555
																			Let Td183.556
																				Float:2.000000
																				FMul a_sub.548 Td183.556
																			FSub a.543 Td184.555
																		IfLE Td182.550 Td185.551
																			Let Ti186.553
																				Add b.544 c.545
																				Let Ti187.554
																					Add c.545 c.545
																					App ftoi_ret_sub.542a_sub.548 Ti186.553 Ti187.554 
																			Let Ti188.552
																				Add c.545 c.545
																				App ftoi_ret_sub.542a_sub.548 b.544 Ti188.552 
																Var b.544
													Let Ti179.546
														Int:0
														Let Ti180.547
															Int:1
															App ftoi_ret_sub.542a.523 Ti179.546 Ti180.547 
											LetRec ftoi_big.524 a.525 b.526 
												Let a_sub.534
													Let Td175.539
														Float:8388608.000000
														FSub a.525 Td175.539
													Let b_sub.535
														Let Ti176.538
															Int:8388608
															Add b.526 Ti176.538
														Let Td177.536
															Float:8388608.000000
															IfLE Td177.536 a_sub.534
																App ftoi_big.524a_sub.534 b_sub.535 
																Let Ti178.537
																	App ftoi_ret.522a_sub.534 
																	Add b_sub.535 Ti178.537
												Let Ti168.527
													Int:1
													IfEq flag.521 Ti168.527
														Let Td169.532
															Float:8388608.000000
															IfLE abs.520 Td169.532
																App ftoi_ret.522abs.520 
																Let Ti170.533
																	Int:0
																	App ftoi_big.524abs.520 Ti170.533 
														Let Td171.528
															Float:8388608.000000
															IfLE abs.520 Td171.528
																Let Ti172.531
																	App ftoi_ret.522abs.520 
																	Neg Ti172.531
																Let Ti174.529
																	Let Ti173.530
																		Int:0
																		App ftoi_big.524abs.520 Ti173.530 
																	Neg Ti174.529
								LetRec float_of_int.267 a.268 
									Let abs.481
										Let Ti143.519
											Int:0
											IfLE a.268 Ti143.519
												Neg a.268
												Var a.268
										Let flag.482
											Let Ti144.517
												Int:0
												IfLE a.268 Ti144.517
													Let Ti145.518
														Int:1
														Neg Ti145.518
													Int:1
											LetRec itof_ret.483 a.484 
												LetRec itof_ret_sub.501 a.502 b.503 c.504 
													Let a_sub.507
														ShiftR1 a.502
														Let Ti159.508
															Int:0
															IfEq a.502 Ti159.508
																Var b.503
																Let Ti161.509
																	Let Ti160.516
																		Sub a.502 a_sub.507
																		Sub Ti160.516 a_sub.507
																	Let Ti162.510
																		Int:0
																		IfLE Ti161.509 Ti162.510
																			Let Td164.514
																				Let Td163.515
																					Float:2.000000
																					FMul c.504 Td163.515
																				App itof_ret_sub.501a_sub.507 b.503 Td164.514 
																			Let Td165.511
																				FAdd b.503 c.504
																				Let Td167.512
																					Let Td166.513
																						Float:2.000000
																						FMul c.504 Td166.513
																					App itof_ret_sub.501a_sub.507 Td165.511 Td167.512 
													Let Td157.505
														Float:0.000000
														Let Td158.506
															Float:1.000000
															App itof_ret_sub.501a.484 Td157.505 Td158.506 
												LetRec itof_big.485 a.486 b.487 
													Let a_sub.495
														Let Ti153.500
															Int:8388608
															Sub a.486 Ti153.500
														Let b_sub.496
															Let Td154.499
																Float:8388608.000000
																FAdd b.487 Td154.499
															Let Ti155.497
																Int:8388608
																IfLE Ti155.497 a_sub.495
																	App itof_big.485a_sub.495 b_sub.496 
																	Let Td156.498
																		App itof_ret.483a_sub.495 
																		FAdd b_sub.496 Td156.498
													Let Ti146.488
														Int:1
														IfEq flag.482 Ti146.488
															Let Ti147.493
																Int:8388608
																IfLE abs.481 Ti147.493
																	App itof_ret.483abs.481 
																	Let Td148.494
																		Float:0.000000
																		App itof_big.485abs.481 Td148.494 
															Let Ti149.489
																Int:8388608
																IfLE abs.481 Ti149.489
																	Let Td150.492
																		App itof_ret.483abs.481 
																		FNeg Td150.492
																	Let Td152.490
																		Let Td151.491
																			Float:0.000000
																			App itof_big.485abs.481 Td151.491 
																		FNeg Td152.490
									LetRec floor.269 a.270 
										Let abs.453
											fabs a.270
											LetRec floor_pos_ker.454 a.455 
												Let Td142.480
													Float:1.000000
													FSub a.455 Td142.480
												LetRec floor_pos_small.456 a.457 
													Let b.476
														Let Td140.479
															Float:8388608.000000
															FAdd a.457 Td140.479
														Let c.477
															Let Td141.478
																Float:8388608.000000
																FSub b.476 Td141.478
															IfLE c.477 a.457
																Var c.477
																App floor_pos_ker.454c.477 
													LetRec floor_pos.458 a.459 
														Let Td139.475
															Float:8388608.000000
															IfLE a.459 Td139.475
																App floor_pos_small.456a.459 
																App floor_pos_ker.454a.459 
														LetRec floor_neg_ker.460 a.461 
															Let Td138.474
																Float:1.000000
																FAdd a.461 Td138.474
															LetRec floor_neg_small.462 a.463 
																Let b.469
																	Let Td135.473
																		Float:8388608.000000
																		FAdd a.463 Td135.473
																	Let c.470
																		Let Td136.472
																			Float:8388608.000000
																			FSub b.469 Td136.472
																		IfLE a.463 c.470
																			FNeg c.470
																			Let Td137.471
																				App floor_neg_ker.460c.470 
																				FNeg Td137.471
																LetRec floor_neg.464 a.465 
																	Let Td133.467
																		Float:8388608.000000
																		IfLE a.465 Td133.467
																			App floor_neg_small.462a.465 
																			Let Td134.468
																				App floor_neg_ker.460a.465 
																				FNeg Td134.468
																	Let Td132.466
																		Float:0.000000
																		IfLE a.270 Td132.466
																			App floor_neg.464abs.453 
																			App floor_pos.458abs.453 
										Let pi.271
											Float:3.141593
											Let pidouble.272
												Float:6.283185
												LetRec reduction_pi2.273 a.274 
													IfLE a.274 pidouble.272
														Var a.274
														Let Td131.452
															FSub a.274 pidouble.272
															App reduction_pi2.273Td131.452 
													LetRec addflag.275 c.276 flag.277 
														Let Ti129.450
															Int:1
															IfEq flag.277 Ti129.450
																Var c.276
																Let Td130.451
																	Float:-1.000000
																	FMul c.276 Td130.451
														LetRec sin_kernel.278 a.279 
															Let a3.436
																Let Td118.449
																	FMul a.279 a.279
																	FMul Td118.449 a.279
																Let a5.437
																	Let Td119.448
																		FMul a3.436 a.279
																		FMul Td119.448 a.279
																	Let a7.438
																		Let Td120.447
																			FMul a5.437 a.279
																			FMul Td120.447 a.279
																		Let Td126.439
																			Let Td123.442
																				Let Td122.445
																					Let Td121.446
																						Float:0.166667
																						FMul Td121.446 a3.436
																					FSub a.279 Td122.445
																				Let Td125.443
																					Let Td124.444
																						Float:0.008333
																						FMul Td124.444 a5.437
																					FAdd Td123.442 Td125.443
																			Let Td128.440
																				Let Td127.441
																					Float:0.000196
																					FMul Td127.441 a7.438
																				FSub Td126.439 Td128.440
															LetRec cos_kernel.280 a.281 
																Let a2.422
																	FMul a.281 a.281
																	Let a4.423
																		Let Td107.435
																			FMul a2.422 a.281
																			FMul Td107.435 a.281
																		Let a6.424
																			Let Td108.434
																				FMul a4.423 a.281
																				FMul Td108.434 a.281
																			Let Td115.425
																				Let Td112.428
																					Let Td109.431
																						Float:1.000000
																						Let Td111.432
																							Let Td110.433
																								Float:0.500000
																								FMul Td110.433 a2.422
																							FSub Td109.431 Td111.432
																					Let Td114.429
																						Let Td113.430
																							Float:0.041664
																							FMul Td113.430 a4.423
																						FAdd Td112.428 Td114.429
																				Let Td117.426
																					Let Td116.427
																						Float:0.001370
																						FMul Td116.427 a6.424
																					FSub Td115.425 Td117.426
																LetRec sin.282 a.283 
																	LetRec sin3.401 a.402 flag.403 
																		Let Td103.415
																			Let Td102.421
																				Float:0.250000
																				FMul pi.271 Td102.421
																			IfLE a.402 Td103.415
																				Let tmp.420
																					App sin_kernel.278a.402 
																					App addflag.275tmp.420 flag.403 
																				Let tmp.416
																					Let Td106.417
																						Let Td105.418
																							Let Td104.419
																								Float:0.500000
																								FMul pi.271 Td104.419
																							FSub Td105.418 a.402
																						App cos_kernel.280Td106.417 
																					App addflag.275tmp.416 flag.403 
																		LetRec sin2.404 a.405 flag.406 
																			Let Td100.412
																				Let Td99.414
																					Float:0.500000
																					FMul pi.271 Td99.414
																				IfLE Td100.412 a.405
																					Let Td101.413
																						FSub pi.271 a.405
																						App sin3.401Td101.413 flag.406 
																					App sin3.401a.405 flag.406 
																			Let abs.407
																				fabs a.283
																				Let flag.408
																					App fflag.253a.283 
																					Let r_abs.409
																						App reduction_pi2.273abs.407 
																						IfLE pi.271 r_abs.409
																							Let Td97.410
																								FSub r_abs.409 pi.271
																								Let Ti98.411
																									Neg flag.408
																									App sin2.404Td97.410 Ti98.411 
																							App sin2.404r_abs.409 flag.408 
																	LetRec cos.284 a.285 
																		LetRec cos3.378 a.379 flag.380 
																			Let Td93.394
																				Let Td92.400
																					Float:0.250000
																					FMul pi.271 Td92.400
																				IfLE a.379 Td93.394
																					Let tmp.399
																						App cos_kernel.280a.379 
																						App addflag.275tmp.399 flag.380 
																					Let tmp.395
																						Let Td96.396
																							Let Td95.397
																								Let Td94.398
																									Float:0.500000
																									FMul pi.271 Td94.398
																								FSub Td95.397 a.379
																							App sin_kernel.278Td96.396 
																						App addflag.275tmp.395 flag.380 
																			LetRec cos2.381 a.382 flag.383 
																				Let Td89.390
																					Let Td88.393
																						Float:0.500000
																						FMul pi.271 Td88.393
																					IfLE Td89.390 a.382
																						Let Td90.391
																							FSub pi.271 a.382
																							Let Ti91.392
																								Neg flag.383
																								App cos3.378Td90.391 Ti91.392 
																						App cos3.378a.382 flag.383 
																				Let abs.384
																					fabs a.285
																					Let r_abs.385
																						App reduction_pi2.273abs.384 
																						IfLE pi.271 r_abs.385
																							Let Td84.387
																								FSub r_abs.385 pi.271
																								Let Ti86.388
																									Let Ti85.389
																										Int:1
																										Neg Ti85.389
																									App cos2.381Td84.387 Ti86.388 
																							Let Ti87.386
																								Int:1
																								App cos2.381r_abs.385 Ti87.386 
																		LetRec atan.286 a.287 
																			Let abs.318
																				fabs a.287
																				Let flag.319
																					App fflag.253a.287 
																					LetRec atan_kernel.320 a.321 
																						Let a1.353
																							Let Td66.374
																								Let Td65.376
																									Let Td64.377
																										Float:0.060035
																										FMul Td64.377 a.321
																									FMul Td65.376 a.321
																								Let Td67.375
																									Float:0.089764
																									FSub Td66.374 Td67.375
																							Let a2.354
																								Let Td68.371
																									Float:0.111111
																									Let Td70.372
																										Let Td69.373
																											FMul a1.353 a.321
																											FMul Td69.373 a.321
																										FAdd Td68.371 Td70.372
																								Let a3.355
																									Let Td72.368
																										Let Td71.370
																											FMul a2.354 a.321
																											FMul Td71.370 a.321
																										Let Td73.369
																											Float:0.142857
																											FSub Td72.368 Td73.369
																									Let a4.356
																										Let Td75.365
																											Let Td74.367
																												FMul a3.355 a.321
																												FMul Td74.367 a.321
																											Let Td76.366
																												Float:0.200000
																												FAdd Td75.365 Td76.366
																										Let a5.357
																											Let Td78.362
																												Let Td77.364
																													FMul a4.356 a.321
																													FMul Td77.364 a.321
																												Let Td79.363
																													Float:0.333333
																													FSub Td78.362 Td79.363
																											Let Td83.358
																												Let Td80.359
																													Float:1.000000
																													Let Td82.360
																														Let Td81.361
																															FMul a5.357 a.321
																															FMul Td81.361 a.321
																														FAdd Td80.359 Td82.360
																												FMul a.321 Td83.358
																						Let Td33.322
																							Float:0.437500
																							IfLE Td33.322 abs.318
																								Let Td34.324
																									Float:1.000000
																									IfLE Td34.324 abs.318
																										Let Td35.335
																											Float:2.437500
																											IfLE Td35.335 abs.318
																												Let Td42.346
																													Let Td37.347
																														Let Td36.352
																															Float:0.500000
																															FMul pi.271 Td36.352
																														Let Td41.348
																															Let Td40.349
																																Let Td38.350
																																	Float:1.000000
																																	Let Td39.351
																																		FReciprocal abs.318
																																		FMul Td38.350 Td39.351
																																App atan_kernel.320Td40.349 
																															FSub Td37.347 Td41.348
																													App addflag.275Td42.346 flag.319 
																												Let Td52.336
																													Let Td44.337
																														Let Td43.345
																															Float:0.250000
																															FMul pi.271 Td43.345
																														Let Td51.338
																															Let Td50.339
																																Let Td46.340
																																	Let Td45.344
																																		Float:1.000000
																																		FSub Td45.344 abs.318
																																	Let Td48.341
																																		Let Td47.343
																																			Float:1.000000
																																			FAdd abs.318 Td47.343
																																		Let Td49.342
																																			FReciprocal Td48.341
																																			FMul Td46.340 Td49.342
																																App atan_kernel.320Td50.339 
																															FSub Td44.337 Td51.338
																													App addflag.275Td52.336 flag.319 
																										Let Td62.325
																											Let Td54.326
																												Let Td53.334
																													Float:0.250000
																													FMul pi.271 Td53.334
																												Let Td61.327
																													Let Td60.328
																														Let Td56.329
																															Let Td55.333
																																Float:1.000000
																																FSub Td55.333 abs.318
																															Let Td58.330
																																Let Td57.332
																																	Float:1.000000
																																	FAdd abs.318 Td57.332
																																Let Td59.331
																																	FReciprocal Td58.330
																																	FMul Td56.329 Td59.331
																														App atan_kernel.320Td60.328 
																													FSub Td54.326 Td61.327
																											App addflag.275Td62.325 flag.319 
																								Let Td63.323
																									App atan_kernel.320abs.318 
																									App addflag.275Td63.323 flag.319 
																			Let x.288
																				Float:3.000000
																				Let y.289
																					Float:4.000000
																					Let z.290
																						Float:5.000000
																						Let Tu11.291
																							Let Ta12.315
																								ExtArray 288
																								Let Ti13.316
																									Int:0
																									Let Td14.317
																										Readfloat
																										Put Ta12.315 Ti13.316 Td14.317
																							Let Tu10.292
																								Let Ta15.312
																									ExtArray 288
																									Let Ti16.313
																										Int:1
																										Let Td17.314
																											Readfloat
																											Put Ta15.312 Ti16.313 Td17.314
																								Let Tu9.293
																									Let Ta18.309
																										ExtArray 288
																										Let Ti19.310
																											Int:2
																											Let Td20.311
																												Readfloat
																												Put Ta18.309 Ti19.310 Td20.311
																									Let xx.294
																										Let Td23.306
																											Let Ta21.307
																												ExtArray 288
																												Let Ti22.308
																													Int:0
																													Get Ta21.307 Ti22.308
																											FAdd x.288 Td23.306
																										Let yy.295
																											Let Td26.303
																												Let Ta24.304
																													ExtArray 288
																													Let Ti25.305
																														Int:1
																														Get Ta24.304 Ti25.305
																												FAdd y.289 Td26.303
																											Let zz.296
																												Let Td29.300
																													Let Ta27.301
																														ExtArray 288
																														Let Ti28.302
																															Int:2
																															Get Ta27.301 Ti28.302
																													FAdd z.290 Td29.300
																												Let Td30.297
																													Float:6.000000
																													IfEq xx.294 Td30.297
																														Let Ti31.299
																															Int:3
																															App print_int.263Ti31.299 
																														Let Ti32.298
																															Int:2
																															App print_int.263Ti32.298 
