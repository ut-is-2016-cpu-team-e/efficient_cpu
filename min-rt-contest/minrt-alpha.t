LetRec fneg.2746 x.2747 
	FNeg x.2747
	LetRec fhalf.2748 x.2749 
		Let Td2745.6719
			Float:0.500000
			FMul x.2749 Td2745.6719
		LetRec fsqr.2750 x.2751 
			FMul x.2751 x.2751
			LetRec fflag.2752 a.2753 
				Let Td2743.6717
					Float:0.000000
					IfLE Td2743.6717 a.2753
						Int:1
						Let Ti2744.6718
							Int:1
							Neg Ti2744.6718
				LetRec countn.2754 a.2755 b.2756 c.2757 
					IfLE b.2756 a.2755
						Let Ti2740.6714
							Sub a.2755 b.2756
							Let Ti2742.6715
								Let Ti2741.6716
									Int:1
									Add c.2757 Ti2741.6716
								App countn.2754Ti2740.6714 b.2756 Ti2742.6715 
						Var c.2757
					LetRec mymul.2758 a.2759 b.2760 sum.2761 
						Let Ti2736.6710
							Int:0
							IfEq a.2759 Ti2736.6710
								Var sum.2761
								Let Ti2738.6711
									Let Ti2737.6713
										Int:1
										Sub a.2759 Ti2737.6713
									Let Ti2739.6712
										Add sum.2761 b.2760
										App mymul.2758Ti2738.6711 b.2760 Ti2739.6712 
						LetRec print_int.2762 a.2763 
							Let b.6647
								Let Ti2694.6707
									Int:0
									IfLE Ti2694.6707 a.2763
										Var a.2763
										Let Tu1.6708
											Let Ti2695.6709
												Int:45
												printchar Ti2695.6709
											Neg a.2763
								Let x.6648
									Let Ti2696.6705
										Int:10000
										Let Ti2697.6706
											Int:0
											App countn.2754b.6647 Ti2696.6705 Ti2697.6706 
									Let b.6649
										Let Ti2700.6702
											Let Ti2698.6703
												Int:10000
												Let Ti2699.6704
													Int:0
													App mymul.2758x.6648 Ti2698.6703 Ti2699.6704 
											Sub b.6647 Ti2700.6702
										Let flag.6650
											Let Ti2701.6698
												Int:0
												IfLE x.6648 Ti2701.6698
													Int:0
													Let Tu2.6699
														Let Ti2703.6700
															Let Ti2702.6701
																Int:48
																Add Ti2702.6701 x.6648
															printchar Ti2703.6700
														Int:1
											Let x.6651
												Let Ti2704.6696
													Int:1000
													Let Ti2705.6697
														Int:0
														App countn.2754b.6649 Ti2704.6696 Ti2705.6697 
												Let b.6652
													Let Ti2708.6693
														Let Ti2706.6694
															Int:1000
															Let Ti2707.6695
																Int:0
																App mymul.2758x.6651 Ti2706.6694 Ti2707.6695 
														Sub b.6649 Ti2708.6693
													Let flag.6653
														Let Ti2709.6686
															Int:0
															IfLE x.6651 Ti2709.6686
																Let Ti2710.6690
																	Int:1
																	IfEq flag.6650 Ti2710.6690
																		Let Tu4.6691
																			Let Ti2711.6692
																				Int:48
																				printchar Ti2711.6692
																			Int:1
																		Int:0
																Let Tu3.6687
																	Let Ti2713.6688
																		Let Ti2712.6689
																			Int:48
																			Add Ti2712.6689 x.6651
																		printchar Ti2713.6688
																	Int:1
														Let x.6654
															Let Ti2714.6684
																Int:100
																Let Ti2715.6685
																	Int:0
																	App countn.2754b.6652 Ti2714.6684 Ti2715.6685 
															Let b.6655
																Let Ti2718.6681
																	Let Ti2716.6682
																		Int:100
																		Let Ti2717.6683
																			Int:0
																			App mymul.2758x.6654 Ti2716.6682 Ti2717.6683 
																	Sub b.6652 Ti2718.6681
																Let flag.6656
																	Let Ti2719.6674
																		Int:0
																		IfLE x.6654 Ti2719.6674
																			Let Ti2720.6678
																				Int:1
																				IfEq flag.6653 Ti2720.6678
																					Let Tu6.6679
																						Let Ti2721.6680
																							Int:48
																							printchar Ti2721.6680
																						Int:1
																					Int:0
																			Let Tu5.6675
																				Let Ti2723.6676
																					Let Ti2722.6677
																						Int:48
																						Add Ti2722.6677 x.6654
																					printchar Ti2723.6676
																				Int:1
																	Let x.6657
																		Let Ti2724.6672
																			Int:10
																			Let Ti2725.6673
																				Int:0
																				App countn.2754b.6655 Ti2724.6672 Ti2725.6673 
																		Let b.6658
																			Let Ti2728.6669
																				Let Ti2726.6670
																					Int:10
																					Let Ti2727.6671
																						Int:0
																						App mymul.2758x.6657 Ti2726.6670 Ti2727.6671 
																				Sub b.6655 Ti2728.6669
																			Let flag.6659
																				Let Ti2729.6662
																					Int:0
																					IfLE x.6657 Ti2729.6662
																						Let Ti2730.6666
																							Int:1
																							IfEq flag.6656 Ti2730.6666
																								Let Tu8.6667
																									Let Ti2731.6668
																										Int:48
																										printchar Ti2731.6668
																									Int:1
																								Int:0
																						Let Tu7.6663
																							Let Ti2733.6664
																								Let Ti2732.6665
																									Int:48
																									Add Ti2732.6665 x.6657
																								printchar Ti2733.6664
																							Int:1
																				Let Ti2735.6660
																					Let Ti2734.6661
																						Int:48
																						Add Ti2734.6661 b.6658
																					printchar Ti2735.6660
							LetRec int_of_float.2764 a.2765 
								Let abs.6601
									fabs a.2765
									Let flag.6602
										App fflag.2752a.2765 
										LetRec ftoi_ret.6603 a.6604 
											LetRec div2like.6621 a.6622 
												LetRec div2like_sub.6638 a.6639 b.6640 
													Let Td2689.6642
														Float:2.000000
														IfLE Td2689.6642 a.6639
															Let Td2691.6643
																Let Td2690.6646
																	Float:2.000000
																	FSub a.6639 Td2690.6646
																Let Td2693.6644
																	Let Td2692.6645
																		Float:1.000000
																		FAdd b.6640 Td2692.6645
																	App div2like_sub.6638Td2691.6643 Td2693.6644 
															Var b.6640
													Let Td2688.6641
														Float:0.000000
														App div2like_sub.6638a.6622 Td2688.6641 
												LetRec ftoi_ret_sub.6623 a.6624 b.6625 c.6626 
													Let a_sub.6629
														App div2like.6621a.6624 
														Let Td2680.6630
															Float:1.000000
															IfLE Td2680.6630 a.6624
																Let Td2681.6631
																	Float:1.000000
																	Let Td2684.6632
																		Let Td2683.6636
																			Let Td2682.6637
																				Float:2.000000
																				FMul a_sub.6629 Td2682.6637
																			FSub a.6624 Td2683.6636
																		IfLE Td2681.6631 Td2684.6632
																			Let Ti2685.6634
																				Add b.6625 c.6626
																				Let Ti2686.6635
																					Add c.6626 c.6626
																					App ftoi_ret_sub.6623a_sub.6629 Ti2685.6634 Ti2686.6635 
																			Let Ti2687.6633
																				Add c.6626 c.6626
																				App ftoi_ret_sub.6623a_sub.6629 b.6625 Ti2687.6633 
																Var b.6625
													Let Ti2678.6627
														Int:0
														Let Ti2679.6628
															Int:1
															App ftoi_ret_sub.6623a.6604 Ti2678.6627 Ti2679.6628 
											LetRec ftoi_big.6605 a.6606 b.6607 
												Let a_sub.6615
													Let Td2674.6620
														Float:8388608.000000
														FSub a.6606 Td2674.6620
													Let b_sub.6616
														Let Ti2675.6619
															Int:8388608
															Add b.6607 Ti2675.6619
														Let Td2676.6617
															Float:8388608.000000
															IfLE Td2676.6617 a_sub.6615
																App ftoi_big.6605a_sub.6615 b_sub.6616 
																Let Ti2677.6618
																	App ftoi_ret.6603a_sub.6615 
																	Add b_sub.6616 Ti2677.6618
												Let Ti2667.6608
													Int:1
													IfEq flag.6602 Ti2667.6608
														Let Td2668.6613
															Float:8388608.000000
															IfLE abs.6601 Td2668.6613
																App ftoi_ret.6603abs.6601 
																Let Ti2669.6614
																	Int:0
																	App ftoi_big.6605abs.6601 Ti2669.6614 
														Let Td2670.6609
															Float:8388608.000000
															IfLE abs.6601 Td2670.6609
																Let Ti2671.6612
																	App ftoi_ret.6603abs.6601 
																	Neg Ti2671.6612
																Let Ti2673.6610
																	Let Ti2672.6611
																		Int:0
																		App ftoi_big.6605abs.6601 Ti2672.6611 
																	Neg Ti2673.6610
								LetRec float_of_int.2766 a.2767 
									Let abs.6562
										Let Ti2642.6600
											Int:0
											IfLE a.2767 Ti2642.6600
												Neg a.2767
												Var a.2767
										Let flag.6563
											Let Ti2643.6598
												Int:0
												IfLE a.2767 Ti2643.6598
													Let Ti2644.6599
														Int:1
														Neg Ti2644.6599
													Int:1
											LetRec itof_ret.6564 a.6565 
												LetRec itof_ret_sub.6582 a.6583 b.6584 c.6585 
													Let a_sub.6588
														ShiftR1 a.6583
														Let Ti2658.6589
															Int:0
															IfEq a.6583 Ti2658.6589
																Var b.6584
																Let Ti2660.6590
																	Let Ti2659.6597
																		Sub a.6583 a_sub.6588
																		Sub Ti2659.6597 a_sub.6588
																	Let Ti2661.6591
																		Int:0
																		IfLE Ti2660.6590 Ti2661.6591
																			Let Td2663.6595
																				Let Td2662.6596
																					Float:2.000000
																					FMul c.6585 Td2662.6596
																				App itof_ret_sub.6582a_sub.6588 b.6584 Td2663.6595 
																			Let Td2664.6592
																				FAdd b.6584 c.6585
																				Let Td2666.6593
																					Let Td2665.6594
																						Float:2.000000
																						FMul c.6585 Td2665.6594
																					App itof_ret_sub.6582a_sub.6588 Td2664.6592 Td2666.6593 
													Let Td2656.6586
														Float:0.000000
														Let Td2657.6587
															Float:1.000000
															App itof_ret_sub.6582a.6565 Td2656.6586 Td2657.6587 
												LetRec itof_big.6566 a.6567 b.6568 
													Let a_sub.6576
														Let Ti2652.6581
															Int:8388608
															Sub a.6567 Ti2652.6581
														Let b_sub.6577
															Let Td2653.6580
																Float:8388608.000000
																FAdd b.6568 Td2653.6580
															Let Ti2654.6578
																Int:8388608
																IfLE Ti2654.6578 a_sub.6576
																	App itof_big.6566a_sub.6576 b_sub.6577 
																	Let Td2655.6579
																		App itof_ret.6564a_sub.6576 
																		FAdd b_sub.6577 Td2655.6579
													Let Ti2645.6569
														Int:1
														IfEq flag.6563 Ti2645.6569
															Let Ti2646.6574
																Int:8388608
																IfLE abs.6562 Ti2646.6574
																	App itof_ret.6564abs.6562 
																	Let Td2647.6575
																		Float:0.000000
																		App itof_big.6566abs.6562 Td2647.6575 
															Let Ti2648.6570
																Int:8388608
																IfLE abs.6562 Ti2648.6570
																	Let Td2649.6573
																		App itof_ret.6564abs.6562 
																		FNeg Td2649.6573
																	Let Td2651.6571
																		Let Td2650.6572
																			Float:0.000000
																			App itof_big.6566abs.6562 Td2650.6572 
																		FNeg Td2651.6571
									LetRec floor.2768 a.2769 
										Let abs.6534
											fabs a.2769
											LetRec floor_pos_ker.6535 a.6536 
												Let Td2641.6561
													Float:1.000000
													FSub a.6536 Td2641.6561
												LetRec floor_pos_small.6537 a.6538 
													Let b.6557
														Let Td2639.6560
															Float:8388608.000000
															FAdd a.6538 Td2639.6560
														Let c.6558
															Let Td2640.6559
																Float:8388608.000000
																FSub b.6557 Td2640.6559
															IfLE c.6558 a.6538
																Var c.6558
																App floor_pos_ker.6535c.6558 
													LetRec floor_pos.6539 a.6540 
														Let Td2638.6556
															Float:8388608.000000
															IfLE a.6540 Td2638.6556
																App floor_pos_small.6537a.6540 
																App floor_pos_ker.6535a.6540 
														LetRec floor_neg_ker.6541 a.6542 
															Let Td2637.6555
																Float:1.000000
																FAdd a.6542 Td2637.6555
															LetRec floor_neg_small.6543 a.6544 
																Let b.6550
																	Let Td2634.6554
																		Float:8388608.000000
																		FAdd a.6544 Td2634.6554
																	Let c.6551
																		Let Td2635.6553
																			Float:8388608.000000
																			FSub b.6550 Td2635.6553
																		IfLE a.6544 c.6551
																			FNeg c.6551
																			Let Td2636.6552
																				App floor_neg_ker.6541c.6551 
																				FNeg Td2636.6552
																LetRec floor_neg.6545 a.6546 
																	Let Td2632.6548
																		Float:8388608.000000
																		IfLE a.6546 Td2632.6548
																			App floor_neg_small.6543a.6546 
																			Let Td2633.6549
																				App floor_neg_ker.6541a.6546 
																				FNeg Td2633.6549
																	Let Td2631.6547
																		Float:0.000000
																		IfLE a.2769 Td2631.6547
																			App floor_neg.6545abs.6534 
																			App floor_pos.6539abs.6534 
										Let pi.2770
											Float:3.141593
											Let pidouble.2771
												Float:6.283185
												LetRec reduction_pi2.2772 a.2773 
													IfLE a.2773 pidouble.2771
														Var a.2773
														Let Td2630.6533
															FSub a.2773 pidouble.2771
															App reduction_pi2.2772Td2630.6533 
													LetRec addflag.2774 c.2775 flag.2776 
														Let Ti2628.6531
															Int:1
															IfEq flag.2776 Ti2628.6531
																Var c.2775
																Let Td2629.6532
																	Float:-1.000000
																	FMul c.2775 Td2629.6532
														LetRec sin_kernel.2777 a.2778 
															Let a3.6517
																Let Td2617.6530
																	FMul a.2778 a.2778
																	FMul Td2617.6530 a.2778
																Let a5.6518
																	Let Td2618.6529
																		FMul a3.6517 a.2778
																		FMul Td2618.6529 a.2778
																	Let a7.6519
																		Let Td2619.6528
																			FMul a5.6518 a.2778
																			FMul Td2619.6528 a.2778
																		Let Td2625.6520
																			Let Td2622.6523
																				Let Td2621.6526
																					Let Td2620.6527
																						Float:0.166667
																						FMul Td2620.6527 a3.6517
																					FSub a.2778 Td2621.6526
																				Let Td2624.6524
																					Let Td2623.6525
																						Float:0.008333
																						FMul Td2623.6525 a5.6518
																					FAdd Td2622.6523 Td2624.6524
																			Let Td2627.6521
																				Let Td2626.6522
																					Float:0.000196
																					FMul Td2626.6522 a7.6519
																				FSub Td2625.6520 Td2627.6521
															LetRec cos_kernel.2779 a.2780 
																Let a2.6503
																	FMul a.2780 a.2780
																	Let a4.6504
																		Let Td2606.6516
																			FMul a2.6503 a.2780
																			FMul Td2606.6516 a.2780
																		Let a6.6505
																			Let Td2607.6515
																				FMul a4.6504 a.2780
																				FMul Td2607.6515 a.2780
																			Let Td2614.6506
																				Let Td2611.6509
																					Let Td2608.6512
																						Float:1.000000
																						Let Td2610.6513
																							Let Td2609.6514
																								Float:0.500000
																								FMul Td2609.6514 a2.6503
																							FSub Td2608.6512 Td2610.6513
																					Let Td2613.6510
																						Let Td2612.6511
																							Float:0.041664
																							FMul Td2612.6511 a4.6504
																						FAdd Td2611.6509 Td2613.6510
																				Let Td2616.6507
																					Let Td2615.6508
																						Float:0.001370
																						FMul Td2615.6508 a6.6505
																					FSub Td2614.6506 Td2616.6507
																LetRec sin.2781 a.2782 
																	LetRec sin3.6482 a.6483 flag.6484 
																		Let Td2602.6496
																			Let Td2601.6502
																				Float:0.250000
																				FMul pi.2770 Td2601.6502
																			IfLE a.6483 Td2602.6496
																				Let tmp.6501
																					App sin_kernel.2777a.6483 
																					App addflag.2774tmp.6501 flag.6484 
																				Let tmp.6497
																					Let Td2605.6498
																						Let Td2604.6499
																							Let Td2603.6500
																								Float:0.500000
																								FMul pi.2770 Td2603.6500
																							FSub Td2604.6499 a.6483
																						App cos_kernel.2779Td2605.6498 
																					App addflag.2774tmp.6497 flag.6484 
																		LetRec sin2.6485 a.6486 flag.6487 
																			Let Td2599.6493
																				Let Td2598.6495
																					Float:0.500000
																					FMul pi.2770 Td2598.6495
																				IfLE Td2599.6493 a.6486
																					Let Td2600.6494
																						FSub pi.2770 a.6486
																						App sin3.6482Td2600.6494 flag.6487 
																					App sin3.6482a.6486 flag.6487 
																			Let abs.6488
																				fabs a.2782
																				Let flag.6489
																					App fflag.2752a.2782 
																					Let r_abs.6490
																						App reduction_pi2.2772abs.6488 
																						IfLE pi.2770 r_abs.6490
																							Let Td2596.6491
																								FSub r_abs.6490 pi.2770
																								Let Ti2597.6492
																									Neg flag.6489
																									App sin2.6485Td2596.6491 Ti2597.6492 
																							App sin2.6485r_abs.6490 flag.6489 
																	LetRec cos.2783 a.2784 
																		LetRec cos3.6459 a.6460 flag.6461 
																			Let Td2592.6475
																				Let Td2591.6481
																					Float:0.250000
																					FMul pi.2770 Td2591.6481
																				IfLE a.6460 Td2592.6475
																					Let tmp.6480
																						App cos_kernel.2779a.6460 
																						App addflag.2774tmp.6480 flag.6461 
																					Let tmp.6476
																						Let Td2595.6477
																							Let Td2594.6478
																								Let Td2593.6479
																									Float:0.500000
																									FMul pi.2770 Td2593.6479
																								FSub Td2594.6478 a.6460
																							App sin_kernel.2777Td2595.6477 
																						App addflag.2774tmp.6476 flag.6461 
																			LetRec cos2.6462 a.6463 flag.6464 
																				Let Td2588.6471
																					Let Td2587.6474
																						Float:0.500000
																						FMul pi.2770 Td2587.6474
																					IfLE Td2588.6471 a.6463
																						Let Td2589.6472
																							FSub pi.2770 a.6463
																							Let Ti2590.6473
																								Neg flag.6464
																								App cos3.6459Td2589.6472 Ti2590.6473 
																						App cos3.6459a.6463 flag.6464 
																				Let abs.6465
																					fabs a.2784
																					Let r_abs.6466
																						App reduction_pi2.2772abs.6465 
																						IfLE pi.2770 r_abs.6466
																							Let Td2583.6468
																								FSub r_abs.6466 pi.2770
																								Let Ti2585.6469
																									Let Ti2584.6470
																										Int:1
																										Neg Ti2584.6470
																									App cos2.6462Td2583.6468 Ti2585.6469 
																							Let Ti2586.6467
																								Int:1
																								App cos2.6462r_abs.6466 Ti2586.6467 
																		LetRec atan.2785 a.2786 
																			Let abs.6399
																				fabs a.2786
																				Let flag.6400
																					App fflag.2752a.2786 
																					LetRec atan_kernel.6401 a.6402 
																						Let a1.6434
																							Let Td2565.6455
																								Let Td2564.6457
																									Let Td2563.6458
																										Float:0.060035
																										FMul Td2563.6458 a.6402
																									FMul Td2564.6457 a.6402
																								Let Td2566.6456
																									Float:0.089764
																									FSub Td2565.6455 Td2566.6456
																							Let a2.6435
																								Let Td2567.6452
																									Float:0.111111
																									Let Td2569.6453
																										Let Td2568.6454
																											FMul a1.6434 a.6402
																											FMul Td2568.6454 a.6402
																										FAdd Td2567.6452 Td2569.6453
																								Let a3.6436
																									Let Td2571.6449
																										Let Td2570.6451
																											FMul a2.6435 a.6402
																											FMul Td2570.6451 a.6402
																										Let Td2572.6450
																											Float:0.142857
																											FSub Td2571.6449 Td2572.6450
																									Let a4.6437
																										Let Td2574.6446
																											Let Td2573.6448
																												FMul a3.6436 a.6402
																												FMul Td2573.6448 a.6402
																											Let Td2575.6447
																												Float:0.200000
																												FAdd Td2574.6446 Td2575.6447
																										Let a5.6438
																											Let Td2577.6443
																												Let Td2576.6445
																													FMul a4.6437 a.6402
																													FMul Td2576.6445 a.6402
																												Let Td2578.6444
																													Float:0.333333
																													FSub Td2577.6443 Td2578.6444
																											Let Td2582.6439
																												Let Td2579.6440
																													Float:1.000000
																													Let Td2581.6441
																														Let Td2580.6442
																															FMul a5.6438 a.6402
																															FMul Td2580.6442 a.6402
																														FAdd Td2579.6440 Td2581.6441
																												FMul a.6402 Td2582.6439
																						Let Td2532.6403
																							Float:0.437500
																							IfLE Td2532.6403 abs.6399
																								Let Td2533.6405
																									Float:1.000000
																									IfLE Td2533.6405 abs.6399
																										Let Td2534.6416
																											Float:2.437500
																											IfLE Td2534.6416 abs.6399
																												Let Td2541.6427
																													Let Td2536.6428
																														Let Td2535.6433
																															Float:0.500000
																															FMul pi.2770 Td2535.6433
																														Let Td2540.6429
																															Let Td2539.6430
																																Let Td2537.6431
																																	Float:1.000000
																																	Let Td2538.6432
																																		FReciprocal abs.6399
																																		FMul Td2537.6431 Td2538.6432
																																App atan_kernel.6401Td2539.6430 
																															FSub Td2536.6428 Td2540.6429
																													App addflag.2774Td2541.6427 flag.6400 
																												Let Td2551.6417
																													Let Td2543.6418
																														Let Td2542.6426
																															Float:0.250000
																															FMul pi.2770 Td2542.6426
																														Let Td2550.6419
																															Let Td2549.6420
																																Let Td2545.6421
																																	Let Td2544.6425
																																		Float:1.000000
																																		FSub Td2544.6425 abs.6399
																																	Let Td2547.6422
																																		Let Td2546.6424
																																			Float:1.000000
																																			FAdd abs.6399 Td2546.6424
																																		Let Td2548.6423
																																			FReciprocal Td2547.6422
																																			FMul Td2545.6421 Td2548.6423
																																App atan_kernel.6401Td2549.6420 
																															FSub Td2543.6418 Td2550.6419
																													App addflag.2774Td2551.6417 flag.6400 
																										Let Td2561.6406
																											Let Td2553.6407
																												Let Td2552.6415
																													Float:0.250000
																													FMul pi.2770 Td2552.6415
																												Let Td2560.6408
																													Let Td2559.6409
																														Let Td2555.6410
																															Let Td2554.6414
																																Float:1.000000
																																FSub Td2554.6414 abs.6399
																															Let Td2557.6411
																																Let Td2556.6413
																																	Float:1.000000
																																	FAdd abs.6399 Td2556.6413
																																Let Td2558.6412
																																	FReciprocal Td2557.6411
																																	FMul Td2555.6410 Td2558.6412
																														App atan_kernel.6401Td2559.6409 
																													FSub Td2553.6407 Td2560.6408
																											App addflag.2774Td2561.6406 flag.6400 
																								Let Td2562.6404
																									App atan_kernel.6401abs.6399 
																									App addflag.2774Td2562.6404 flag.6400 
																			LetRec sgn.2787 x.2788 
																				Let Td2530.6397
																					Float:0.000000
																					IfEq x.2788 Td2530.6397
																						Float:0.000000
																						Let Td2531.6398
																							Float:0.000000
																							IfLE x.2788 Td2531.6398
																								Float:-1.000000
																								Float:1.000000
																				LetRec fneg_cond.2789 cond.2790 x.2791 
																					Let Ti2529.6396
																						Int:0
																						IfEq cond.2790 Ti2529.6396
																							App fneg.2746x.2791 
																							Var x.2791
																					LetRec add_mod5.2792 x.2793 y.2794 
																						Let sum.6393
																							Add x.2793 y.2794
																							Let Ti2527.6394
																								Int:5
																								IfLE Ti2527.6394 sum.6393
																									Let Ti2528.6395
																										Int:5
																										Sub sum.6393 Ti2528.6395
																									Var sum.6393
																						LetRec vecset.2795 v.2796 x.2797 y.2798 z.2799 
																							Let Tu10.6388
																								Let Ti2524.6392
																									Int:0
																									Put v.2796 Ti2524.6392 x.2797
																								Let Tu9.6389
																									Let Ti2525.6391
																										Int:1
																										Put v.2796 Ti2525.6391 y.2798
																									Let Ti2526.6390
																										Int:2
																										Put v.2796 Ti2526.6390 z.2799
																							LetRec vecfill.2800 v.2801 elem.2802 
																								Let Tu12.6383
																									Let Ti2521.6387
																										Int:0
																										Put v.2801 Ti2521.6387 elem.2802
																									Let Tu11.6384
																										Let Ti2522.6386
																											Int:1
																											Put v.2801 Ti2522.6386 elem.2802
																										Let Ti2523.6385
																											Int:2
																											Put v.2801 Ti2523.6385 elem.2802
																								LetRec vecbzero.2803 v.2804 
																									Let Td2520.6382
																										Float:0.000000
																										App vecfill.2800v.2804 Td2520.6382 
																									LetRec veccpy.2805 dest.2806 src.2807 
																										Let Tu14.6371
																											Let Ti2511.6379
																												Int:0
																												Let Td2513.6380
																													Let Ti2512.6381
																														Int:0
																														Get src.2807 Ti2512.6381
																													Put dest.2806 Ti2511.6379 Td2513.6380
																											Let Tu13.6372
																												Let Ti2514.6376
																													Int:1
																													Let Td2516.6377
																														Let Ti2515.6378
																															Int:1
																															Get src.2807 Ti2515.6378
																														Put dest.2806 Ti2514.6376 Td2516.6377
																												Let Ti2517.6373
																													Int:2
																													Let Td2519.6374
																														Let Ti2518.6375
																															Int:2
																															Get src.2807 Ti2518.6375
																														Put dest.2806 Ti2517.6373 Td2519.6374
																										LetRec vecdist2.2808 p.2809 q.2810 
																											Let Td2504.6352
																												Let Td2497.6359
																													Let Td2496.6366
																														Let Td2493.6367
																															Let Ti2492.6370
																																Int:0
																																Get p.2809 Ti2492.6370
																															Let Td2495.6368
																																Let Ti2494.6369
																																	Int:0
																																	Get q.2810 Ti2494.6369
																																FSub Td2493.6367 Td2495.6368
																														App fsqr.2750Td2496.6366 
																													Let Td2503.6360
																														Let Td2502.6361
																															Let Td2499.6362
																																Let Ti2498.6365
																																	Int:1
																																	Get p.2809 Ti2498.6365
																																Let Td2501.6363
																																	Let Ti2500.6364
																																		Int:1
																																		Get q.2810 Ti2500.6364
																																	FSub Td2499.6362 Td2501.6363
																															App fsqr.2750Td2502.6361 
																														FAdd Td2497.6359 Td2503.6360
																												Let Td2510.6353
																													Let Td2509.6354
																														Let Td2506.6355
																															Let Ti2505.6358
																																Int:2
																																Get p.2809 Ti2505.6358
																															Let Td2508.6356
																																Let Ti2507.6357
																																	Int:2
																																	Get q.2810 Ti2507.6357
																																FSub Td2506.6355 Td2508.6356
																														App fsqr.2750Td2509.6354 
																													FAdd Td2504.6352 Td2510.6353
																											LetRec vecunit.2811 v.2812 
																												Let il.6323
																													Let Td2466.6338
																														Float:1.000000
																														Let Td2478.6339
																															Let Td2477.6341
																																Let Td2473.6342
																																	Let Td2469.6346
																																		Let Td2468.6350
																																			Let Ti2467.6351
																																				Int:0
																																				Get v.2812 Ti2467.6351
																																			App fsqr.2750Td2468.6350 
																																		Let Td2472.6347
																																			Let Td2471.6348
																																				Let Ti2470.6349
																																					Int:1
																																					Get v.2812 Ti2470.6349
																																				App fsqr.2750Td2471.6348 
																																			FAdd Td2469.6346 Td2472.6347
																																	Let Td2476.6343
																																		Let Td2475.6344
																																			Let Ti2474.6345
																																				Int:2
																																				Get v.2812 Ti2474.6345
																																			App fsqr.2750Td2475.6344 
																																		FAdd Td2473.6342 Td2476.6343
																																sqrt Td2477.6341
																															Let Td2479.6340
																																FReciprocal Td2478.6339
																																FMul Td2466.6338 Td2479.6340
																													Let Tu16.6324
																														Let Ti2480.6334
																															Int:0
																															Let Td2483.6335
																																Let Td2482.6336
																																	Let Ti2481.6337
																																		Int:0
																																		Get v.2812 Ti2481.6337
																																	FMul Td2482.6336 il.6323
																																Put v.2812 Ti2480.6334 Td2483.6335
																														Let Tu15.6325
																															Let Ti2484.6330
																																Int:1
																																Let Td2487.6331
																																	Let Td2486.6332
																																		Let Ti2485.6333
																																			Int:1
																																			Get v.2812 Ti2485.6333
																																		FMul Td2486.6332 il.6323
																																	Put v.2812 Ti2484.6330 Td2487.6331
																															Let Ti2488.6326
																																Int:2
																																Let Td2491.6327
																																	Let Td2490.6328
																																		Let Ti2489.6329
																																			Int:2
																																			Get v.2812 Ti2489.6329
																																		FMul Td2490.6328 il.6323
																																	Put v.2812 Ti2488.6326 Td2491.6327
																												LetRec vecunit_sgn.2813 v.2814 inv.2815 
																													Let l.6290
																														Let Td2447.6312
																															Let Td2443.6313
																																Let Td2439.6317
																																	Let Td2438.6321
																																		Let Ti2437.6322
																																			Int:0
																																			Get v.2814 Ti2437.6322
																																		App fsqr.2750Td2438.6321 
																																	Let Td2442.6318
																																		Let Td2441.6319
																																			Let Ti2440.6320
																																				Int:1
																																				Get v.2814 Ti2440.6320
																																			App fsqr.2750Td2441.6319 
																																		FAdd Td2439.6317 Td2442.6318
																																Let Td2446.6314
																																	Let Td2445.6315
																																		Let Ti2444.6316
																																			Int:2
																																			Get v.2814 Ti2444.6316
																																		App fsqr.2750Td2445.6315 
																																	FAdd Td2443.6313 Td2446.6314
																															sqrt Td2447.6312
																														Let il.6291
																															Let Td2448.6306
																																Float:0.000000
																																IfEq l.6290 Td2448.6306
																																	Float:1.000000
																																	Let Ti2449.6307
																																		Int:0
																																		IfEq inv.2815 Ti2449.6307
																																			Let Td2450.6310
																																				Float:1.000000
																																				Let Td2451.6311
																																					FReciprocal l.6290
																																					FMul Td2450.6310 Td2451.6311
																																			Let Td2452.6308
																																				Float:-1.000000
																																				Let Td2453.6309
																																					FReciprocal l.6290
																																					FMul Td2452.6308 Td2453.6309
																															Let Tu18.6292
																																Let Ti2454.6302
																																	Int:0
																																	Let Td2457.6303
																																		Let Td2456.6304
																																			Let Ti2455.6305
																																				Int:0
																																				Get v.2814 Ti2455.6305
																																			FMul Td2456.6304 il.6291
																																		Put v.2814 Ti2454.6302 Td2457.6303
																																Let Tu17.6293
																																	Let Ti2458.6298
																																		Int:1
																																		Let Td2461.6299
																																			Let Td2460.6300
																																				Let Ti2459.6301
																																					Int:1
																																					Get v.2814 Ti2459.6301
																																				FMul Td2460.6300 il.6291
																																			Put v.2814 Ti2458.6298 Td2461.6299
																																	Let Ti2462.6294
																																		Int:2
																																		Let Td2465.6295
																																			Let Td2464.6296
																																				Let Ti2463.6297
																																					Int:2
																																					Get v.2814 Ti2463.6297
																																				FMul Td2464.6296 il.6291
																																			Put v.2814 Ti2462.6294 Td2465.6295
																													LetRec veciprod.2816 v.2817 w.2818 
																														Let Td2431.6274
																															Let Td2425.6280
																																Let Td2422.6286
																																	Let Ti2421.6289
																																		Int:0
																																		Get v.2817 Ti2421.6289
																																	Let Td2424.6287
																																		Let Ti2423.6288
																																			Int:0
																																			Get w.2818 Ti2423.6288
																																		FMul Td2422.6286 Td2424.6287
																																Let Td2430.6281
																																	Let Td2427.6282
																																		Let Ti2426.6285
																																			Int:1
																																			Get v.2817 Ti2426.6285
																																		Let Td2429.6283
																																			Let Ti2428.6284
																																				Int:1
																																				Get w.2818 Ti2428.6284
																																			FMul Td2427.6282 Td2429.6283
																																	FAdd Td2425.6280 Td2430.6281
																															Let Td2436.6275
																																Let Td2433.6276
																																	Let Ti2432.6279
																																		Int:2
																																		Get v.2817 Ti2432.6279
																																	Let Td2435.6277
																																		Let Ti2434.6278
																																			Int:2
																																			Get w.2818 Ti2434.6278
																																		FMul Td2433.6276 Td2435.6277
																																FAdd Td2431.6274 Td2436.6275
																														LetRec veciprod2.2819 v.2820 w0.2821 w1.2822 w2.2823 
																															Let Td2417.6264
																																Let Td2413.6268
																																	Let Td2412.6272
																																		Let Ti2411.6273
																																			Int:0
																																			Get v.2820 Ti2411.6273
																																		FMul Td2412.6272 w0.2821
																																	Let Td2416.6269
																																		Let Td2415.6270
																																			Let Ti2414.6271
																																				Int:1
																																				Get v.2820 Ti2414.6271
																																			FMul Td2415.6270 w1.2822
																																		FAdd Td2413.6268 Td2416.6269
																																Let Td2420.6265
																																	Let Td2419.6266
																																		Let Ti2418.6267
																																			Int:2
																																			Get v.2820 Ti2418.6267
																																		FMul Td2419.6266 w2.2823
																																	FAdd Td2417.6264 Td2420.6265
																															LetRec vecaccum.2824 dest.2825 scale.2826 v.2827 
																																Let Tu20.6241
																																	Let Ti2390.6257
																																		Int:0
																																		Let Td2396.6258
																																			Let Td2392.6259
																																				Let Ti2391.6263
																																					Int:0
																																					Get dest.2825 Ti2391.6263
																																				Let Td2395.6260
																																					Let Td2394.6261
																																						Let Ti2393.6262
																																							Int:0
																																							Get v.2827 Ti2393.6262
																																						FMul scale.2826 Td2394.6261
																																					FAdd Td2392.6259 Td2395.6260
																																			Put dest.2825 Ti2390.6257 Td2396.6258
																																	Let Tu19.6242
																																		Let Ti2397.6250
																																			Int:1
																																			Let Td2403.6251
																																				Let Td2399.6252
																																					Let Ti2398.6256
																																						Int:1
																																						Get dest.2825 Ti2398.6256
																																					Let Td2402.6253
																																						Let Td2401.6254
																																							Let Ti2400.6255
																																								Int:1
																																								Get v.2827 Ti2400.6255
																																							FMul scale.2826 Td2401.6254
																																						FAdd Td2399.6252 Td2402.6253
																																				Put dest.2825 Ti2397.6250 Td2403.6251
																																		Let Ti2404.6243
																																			Int:2
																																			Let Td2410.6244
																																				Let Td2406.6245
																																					Let Ti2405.6249
																																						Int:2
																																						Get dest.2825 Ti2405.6249
																																					Let Td2409.6246
																																						Let Td2408.6247
																																							Let Ti2407.6248
																																								Int:2
																																								Get v.2827 Ti2407.6248
																																							FMul scale.2826 Td2408.6247
																																						FAdd Td2406.6245 Td2409.6246
																																				Put dest.2825 Ti2404.6243 Td2410.6244
																																LetRec vecadd.2828 dest.2829 v.2830 
																																	Let Tu22.6221
																																		Let Ti2372.6235
																																			Int:0
																																			Let Td2377.6236
																																				Let Td2374.6237
																																					Let Ti2373.6240
																																						Int:0
																																						Get dest.2829 Ti2373.6240
																																					Let Td2376.6238
																																						Let Ti2375.6239
																																							Int:0
																																							Get v.2830 Ti2375.6239
																																						FAdd Td2374.6237 Td2376.6238
																																				Put dest.2829 Ti2372.6235 Td2377.6236
																																		Let Tu21.6222
																																			Let Ti2378.6229
																																				Int:1
																																				Let Td2383.6230
																																					Let Td2380.6231
																																						Let Ti2379.6234
																																							Int:1
																																							Get dest.2829 Ti2379.6234
																																						Let Td2382.6232
																																							Let Ti2381.6233
																																								Int:1
																																								Get v.2830 Ti2381.6233
																																							FAdd Td2380.6231 Td2382.6232
																																					Put dest.2829 Ti2378.6229 Td2383.6230
																																			Let Ti2384.6223
																																				Int:2
																																				Let Td2389.6224
																																					Let Td2386.6225
																																						Let Ti2385.6228
																																							Int:2
																																							Get dest.2829 Ti2385.6228
																																						Let Td2388.6226
																																							Let Ti2387.6227
																																								Int:2
																																								Get v.2830 Ti2387.6227
																																							FAdd Td2386.6225 Td2388.6226
																																					Put dest.2829 Ti2384.6223 Td2389.6224
																																	LetRec vecmul.2831 dest.2832 v.2833 
																																		Let Tu24.6201
																																			Let Ti2354.6215
																																				Int:0
																																				Let Td2359.6216
																																					Let Td2356.6217
																																						Let Ti2355.6220
																																							Int:0
																																							Get dest.2832 Ti2355.6220
																																						Let Td2358.6218
																																							Let Ti2357.6219
																																								Int:0
																																								Get v.2833 Ti2357.6219
																																							FMul Td2356.6217 Td2358.6218
																																					Put dest.2832 Ti2354.6215 Td2359.6216
																																			Let Tu23.6202
																																				Let Ti2360.6209
																																					Int:1
																																					Let Td2365.6210
																																						Let Td2362.6211
																																							Let Ti2361.6214
																																								Int:1
																																								Get dest.2832 Ti2361.6214
																																							Let Td2364.6212
																																								Let Ti2363.6213
																																									Int:1
																																									Get v.2833 Ti2363.6213
																																								FMul Td2362.6211 Td2364.6212
																																						Put dest.2832 Ti2360.6209 Td2365.6210
																																				Let Ti2366.6203
																																					Int:2
																																					Let Td2371.6204
																																						Let Td2368.6205
																																							Let Ti2367.6208
																																								Int:2
																																								Get dest.2832 Ti2367.6208
																																							Let Td2370.6206
																																								Let Ti2369.6207
																																									Int:2
																																									Get v.2833 Ti2369.6207
																																								FMul Td2368.6205 Td2370.6206
																																						Put dest.2832 Ti2366.6203 Td2371.6204
																																		LetRec vecscale.2834 dest.2835 scale.2836 
																																			Let Tu26.6187
																																				Let Ti2342.6197
																																					Int:0
																																					Let Td2345.6198
																																						Let Td2344.6199
																																							Let Ti2343.6200
																																								Int:0
																																								Get dest.2835 Ti2343.6200
																																							FMul Td2344.6199 scale.2836
																																						Put dest.2835 Ti2342.6197 Td2345.6198
																																				Let Tu25.6188
																																					Let Ti2346.6193
																																						Int:1
																																						Let Td2349.6194
																																							Let Td2348.6195
																																								Let Ti2347.6196
																																									Int:1
																																									Get dest.2835 Ti2347.6196
																																								FMul Td2348.6195 scale.2836
																																							Put dest.2835 Ti2346.6193 Td2349.6194
																																					Let Ti2350.6189
																																						Int:2
																																						Let Td2353.6190
																																							Let Td2352.6191
																																								Let Ti2351.6192
																																									Int:2
																																									Get dest.2835 Ti2351.6192
																																								FMul Td2352.6191 scale.2836
																																							Put dest.2835 Ti2350.6189 Td2353.6190
																																			LetRec vecaccumv.2837 dest.2838 v.2839 w.2840 
																																				Let Tu28.6158
																																					Let Ti2315.6178
																																						Int:0
																																						Let Td2323.6179
																																							Let Td2317.6180
																																								Let Ti2316.6186
																																									Int:0
																																									Get dest.2838 Ti2316.6186
																																								Let Td2322.6181
																																									Let Td2319.6182
																																										Let Ti2318.6185
																																											Int:0
																																											Get v.2839 Ti2318.6185
																																										Let Td2321.6183
																																											Let Ti2320.6184
																																												Int:0
																																												Get w.2840 Ti2320.6184
																																											FMul Td2319.6182 Td2321.6183
																																									FAdd Td2317.6180 Td2322.6181
																																							Put dest.2838 Ti2315.6178 Td2323.6179
																																					Let Tu27.6159
																																						Let Ti2324.6169
																																							Int:1
																																							Let Td2332.6170
																																								Let Td2326.6171
																																									Let Ti2325.6177
																																										Int:1
																																										Get dest.2838 Ti2325.6177
																																									Let Td2331.6172
																																										Let Td2328.6173
																																											Let Ti2327.6176
																																												Int:1
																																												Get v.2839 Ti2327.6176
																																											Let Td2330.6174
																																												Let Ti2329.6175
																																													Int:1
																																													Get w.2840 Ti2329.6175
																																												FMul Td2328.6173 Td2330.6174
																																										FAdd Td2326.6171 Td2331.6172
																																								Put dest.2838 Ti2324.6169 Td2332.6170
																																						Let Ti2333.6160
																																							Int:2
																																							Let Td2341.6161
																																								Let Td2335.6162
																																									Let Ti2334.6168
																																										Int:2
																																										Get dest.2838 Ti2334.6168
																																									Let Td2340.6163
																																										Let Td2337.6164
																																											Let Ti2336.6167
																																												Int:2
																																												Get v.2839 Ti2336.6167
																																											Let Td2339.6165
																																												Let Ti2338.6166
																																													Int:2
																																													Get w.2840 Ti2338.6166
																																												FMul Td2337.6164 Td2339.6165
																																										FAdd Td2335.6162 Td2340.6163
																																								Put dest.2838 Ti2333.6160 Td2341.6161
																																				LetRec o_texturetype.2841 m.2842 
																																					LetTuple (m_tex.6147,xm_shape.6148,xm_surface.6149,xm_isrot.6150,xm_abc.6151,xm_xyz.6152,xm_invert.6153,xm_surfparams.6154,xm_color.6155,xm_rot123.6156,xm_ctbl.6157,)
 m.2842
																																						Var m_tex.6147
																																					LetRec o_form.2843 m.2844 
																																						LetTuple (xm_tex.6136,m_shape.6137,xm_surface.6138,xm_isrot.6139,xm_abc.6140,xm_xyz.6141,xm_invert.6142,xm_surfparams.6143,xm_color.6144,xm_rot123.6145,xm_ctbl.6146,)
 m.2844
																																							Var m_shape.6137
																																						LetRec o_reflectiontype.2845 m.2846 
																																							LetTuple (xm_tex.6125,xm_shape.6126,m_surface.6127,xm_isrot.6128,xm_abc.6129,xm_xyz.6130,xm_invert.6131,xm_surfparams.6132,xm_color.6133,xm_rot123.6134,xm_ctbl.6135,)
 m.2846
																																								Var m_surface.6127
																																							LetRec o_isinvert.2847 m.2848 
																																								LetTuple (xm_tex.6114,xm_shape.6115,xm_surface.6116,xm_isrot.6117,xm_abc.6118,xm_xyz.6119,m_invert.6120,xm_surfparams.6121,xm_color.6122,xm_rot123.6123,xm_ctbl.6124,)
 m.2848
																																									Var m_invert.6120
																																								LetRec o_isrot.2849 m.2850 
																																									LetTuple (xm_tex.6103,xm_shape.6104,xm_surface.6105,m_isrot.6106,xm_abc.6107,xm_xyz.6108,xm_invert.6109,xm_surfparams.6110,xm_color.6111,xm_rot123.6112,xm_ctbl.6113,)
 m.2850
																																										Var m_isrot.6106
																																									LetRec o_param_a.2851 m.2852 
																																										LetTuple (xm_tex.6091,xm_shape.6092,xm_surface.6093,xm_isrot.6094,m_abc.6095,xm_xyz.6096,xm_invert.6097,xm_surfparams.6098,xm_color.6099,xm_rot123.6100,xm_ctbl.6101,)
 m.2852
																																											Let Ti2314.6102
																																												Int:0
																																												Get m_abc.6095 Ti2314.6102
																																										LetRec o_param_b.2853 m.2854 
																																											LetTuple (xm_tex.6079,xm_shape.6080,xm_surface.6081,xm_isrot.6082,m_abc.6083,xm_xyz.6084,xm_invert.6085,xm_surfparams.6086,xm_color.6087,xm_rot123.6088,xm_ctbl.6089,)
 m.2854
																																												Let Ti2313.6090
																																													Int:1
																																													Get m_abc.6083 Ti2313.6090
																																											LetRec o_param_c.2855 m.2856 
																																												LetTuple (xm_tex.6067,xm_shape.6068,xm_surface.6069,xm_isrot.6070,m_abc.6071,xm_xyz.6072,xm_invert.6073,xm_surfparams.6074,xm_color.6075,xm_rot123.6076,xm_ctbl.6077,)
 m.2856
																																													Let Ti2312.6078
																																														Int:2
																																														Get m_abc.6071 Ti2312.6078
																																												LetRec o_param_abc.2857 m.2858 
																																													LetTuple (xm_tex.6056,xm_shape.6057,xm_surface.6058,xm_isrot.6059,m_abc.6060,xm_xyz.6061,xm_invert.6062,xm_surfparams.6063,xm_color.6064,xm_rot123.6065,xm_ctbl.6066,)
 m.2858
																																														Var m_abc.6060
																																													LetRec o_param_x.2859 m.2860 
																																														LetTuple (xm_tex.6044,xm_shape.6045,xm_surface.6046,xm_isrot.6047,xm_abc.6048,m_xyz.6049,xm_invert.6050,xm_surfparams.6051,xm_color.6052,xm_rot123.6053,xm_ctbl.6054,)
 m.2860
																																															Let Ti2311.6055
																																																Int:0
																																																Get m_xyz.6049 Ti2311.6055
																																														LetRec o_param_y.2861 m.2862 
																																															LetTuple (xm_tex.6032,xm_shape.6033,xm_surface.6034,xm_isrot.6035,xm_abc.6036,m_xyz.6037,xm_invert.6038,xm_surfparams.6039,xm_color.6040,xm_rot123.6041,xm_ctbl.6042,)
 m.2862
																																																Let Ti2310.6043
																																																	Int:1
																																																	Get m_xyz.6037 Ti2310.6043
																																															LetRec o_param_z.2863 m.2864 
																																																LetTuple (xm_tex.6020,xm_shape.6021,xm_surface.6022,xm_isrot.6023,xm_abc.6024,m_xyz.6025,xm_invert.6026,xm_surfparams.6027,xm_color.6028,xm_rot123.6029,xm_ctbl.6030,)
 m.2864
																																																	Let Ti2309.6031
																																																		Int:2
																																																		Get m_xyz.6025 Ti2309.6031
																																																LetRec o_diffuse.2865 m.2866 
																																																	LetTuple (xm_tex.6008,xm_shape.6009,xm_surface.6010,xm_isrot.6011,xm_abc.6012,xm_xyz.6013,xm_invert.6014,m_surfparams.6015,xm_color.6016,xm_rot123.6017,xm_ctbl.6018,)
 m.2866
																																																		Let Ti2308.6019
																																																			Int:0
																																																			Get m_surfparams.6015 Ti2308.6019
																																																	LetRec o_hilight.2867 m.2868 
																																																		LetTuple (xm_tex.5996,xm_shape.5997,xm_surface.5998,xm_isrot.5999,xm_abc.6000,xm_xyz.6001,xm_invert.6002,m_surfparams.6003,xm_color.6004,xm_rot123.6005,xm_ctbl.6006,)
 m.2868
																																																			Let Ti2307.6007
																																																				Int:1
																																																				Get m_surfparams.6003 Ti2307.6007
																																																		LetRec o_color_red.2869 m.2870 
																																																			LetTuple (xm_tex.5984,xm_shape.5985,m_surface.5986,xm_isrot.5987,xm_abc.5988,xm_xyz.5989,xm_invert.5990,xm_surfparams.5991,m_color.5992,xm_rot123.5993,xm_ctbl.5994,)
 m.2870
																																																				Let Ti2306.5995
																																																					Int:0
																																																					Get m_color.5992 Ti2306.5995
																																																			LetRec o_color_green.2871 m.2872 
																																																				LetTuple (xm_tex.5972,xm_shape.5973,m_surface.5974,xm_isrot.5975,xm_abc.5976,xm_xyz.5977,xm_invert.5978,xm_surfparams.5979,m_color.5980,xm_rot123.5981,xm_ctbl.5982,)
 m.2872
																																																					Let Ti2305.5983
																																																						Int:1
																																																						Get m_color.5980 Ti2305.5983
																																																				LetRec o_color_blue.2873 m.2874 
																																																					LetTuple (xm_tex.5960,xm_shape.5961,m_surface.5962,xm_isrot.5963,xm_abc.5964,xm_xyz.5965,xm_invert.5966,xm_surfparams.5967,m_color.5968,xm_rot123.5969,xm_ctbl.5970,)
 m.2874
																																																						Let Ti2304.5971
																																																							Int:2
																																																							Get m_color.5968 Ti2304.5971
																																																					LetRec o_param_r1.2875 m.2876 
																																																						LetTuple (xm_tex.5948,xm_shape.5949,xm_surface.5950,xm_isrot.5951,xm_abc.5952,xm_xyz.5953,xm_invert.5954,xm_surfparams.5955,xm_color.5956,m_rot123.5957,xm_ctbl.5958,)
 m.2876
																																																							Let Ti2303.5959
																																																								Int:0
																																																								Get m_rot123.5957 Ti2303.5959
																																																						LetRec o_param_r2.2877 m.2878 
																																																							LetTuple (xm_tex.5936,xm_shape.5937,xm_surface.5938,xm_isrot.5939,xm_abc.5940,xm_xyz.5941,xm_invert.5942,xm_surfparams.5943,xm_color.5944,m_rot123.5945,xm_ctbl.5946,)
 m.2878
																																																								Let Ti2302.5947
																																																									Int:1
																																																									Get m_rot123.5945 Ti2302.5947
																																																							LetRec o_param_r3.2879 m.2880 
																																																								LetTuple (xm_tex.5924,xm_shape.5925,xm_surface.5926,xm_isrot.5927,xm_abc.5928,xm_xyz.5929,xm_invert.5930,xm_surfparams.5931,xm_color.5932,m_rot123.5933,xm_ctbl.5934,)
 m.2880
																																																									Let Ti2301.5935
																																																										Int:2
																																																										Get m_rot123.5933 Ti2301.5935
																																																								LetRec o_param_ctbl.2881 m.2882 
																																																									LetTuple (xm_tex.5913,xm_shape.5914,xm_surface.5915,xm_isrot.5916,xm_abc.5917,xm_xyz.5918,xm_invert.5919,xm_surfparams.5920,xm_color.5921,xm_rot123.5922,m_ctbl.5923,)
 m.2882
																																																										Var m_ctbl.5923
																																																									LetRec p_rgb.2883 pixel.2884 
																																																										LetTuple (m_rgb.5905,xm_isect_ps.5906,xm_sids.5907,xm_cdif.5908,xm_engy.5909,xm_r20p.5910,xm_gid.5911,xm_nvectors.5912,)
 pixel.2884
																																																											Var m_rgb.5905
																																																										LetRec p_intersection_points.2885 pixel.2886 
																																																											LetTuple (xm_rgb.5897,m_isect_ps.5898,xm_sids.5899,xm_cdif.5900,xm_engy.5901,xm_r20p.5902,xm_gid.5903,xm_nvectors.5904,)
 pixel.2886
																																																												Var m_isect_ps.5898
																																																											LetRec p_surface_ids.2887 pixel.2888 
																																																												LetTuple (xm_rgb.5889,xm_isect_ps.5890,m_sids.5891,xm_cdif.5892,xm_engy.5893,xm_r20p.5894,xm_gid.5895,xm_nvectors.5896,)
 pixel.2888
																																																													Var m_sids.5891
																																																												LetRec p_calc_diffuse.2889 pixel.2890 
																																																													LetTuple (xm_rgb.5881,xm_isect_ps.5882,xm_sids.5883,m_cdif.5884,xm_engy.5885,xm_r20p.5886,xm_gid.5887,xm_nvectors.5888,)
 pixel.2890
																																																														Var m_cdif.5884
																																																													LetRec p_energy.2891 pixel.2892 
																																																														LetTuple (xm_rgb.5873,xm_isect_ps.5874,xm_sids.5875,xm_cdif.5876,m_engy.5877,xm_r20p.5878,xm_gid.5879,xm_nvectors.5880,)
 pixel.2892
																																																															Var m_engy.5877
																																																														LetRec p_received_ray_20percent.2893 pixel.2894 
																																																															LetTuple (xm_rgb.5865,xm_isect_ps.5866,xm_sids.5867,xm_cdif.5868,xm_engy.5869,m_r20p.5870,xm_gid.5871,xm_nvectors.5872,)
 pixel.2894
																																																																Var m_r20p.5870
																																																															LetRec p_group_id.2895 pixel.2896 
																																																																LetTuple (xm_rgb.5856,xm_isect_ps.5857,xm_sids.5858,xm_cdif.5859,xm_engy.5860,xm_r20p.5861,m_gid.5862,xm_nvectors.5863,)
 pixel.2896
																																																																	Let Ti2300.5864
																																																																		Int:0
																																																																		Get m_gid.5862 Ti2300.5864
																																																																LetRec p_set_group_id.2897 pixel.2898 id.2899 
																																																																	LetTuple (xm_rgb.5847,xm_isect_ps.5848,xm_sids.5849,xm_cdif.5850,xm_engy.5851,xm_r20p.5852,m_gid.5853,xm_nvectors.5854,)
 pixel.2898
																																																																		Let Ti2299.5855
																																																																			Int:0
																																																																			Put m_gid.5853 Ti2299.5855 id.2899
																																																																	LetRec p_nvectors.2900 pixel.2901 
																																																																		LetTuple (xm_rgb.5839,xm_isect_ps.5840,xm_sids.5841,xm_cdif.5842,xm_engy.5843,xm_r20p.5844,xm_gid.5845,m_nvectors.5846,)
 pixel.2901
																																																																			Var m_nvectors.5846
																																																																		LetRec d_vec.2902 d.2903 
																																																																			LetTuple (m_vec.5837,xm_const.5838,)
 d.2903
																																																																				Var m_vec.5837
																																																																			LetRec d_const.2904 d.2905 
																																																																				LetTuple (dm_vec.5835,m_const.5836,)
 d.2905
																																																																					Var m_const.5836
																																																																				LetRec r_surface_id.2906 r.2907 
																																																																					LetTuple (m_sid.5832,xm_dvec.5833,xm_br.5834,)
 r.2907
																																																																						Var m_sid.5832
																																																																					LetRec r_dvec.2908 r.2909 
																																																																						LetTuple (xm_sid.5829,m_dvec.5830,xm_br.5831,)
 r.2909
																																																																							Var m_dvec.5830
																																																																						LetRec r_bright.2910 r.2911 
																																																																							LetTuple (xm_sid.5826,xm_dvec.5827,m_br.5828,)
 r.2911
																																																																								Var m_br.5828
																																																																							LetRec rad.2912 x.2913 
																																																																								Let Td2298.5825
																																																																									Float:0.017453
																																																																									FMul x.2913 Td2298.5825
																																																																								LetRec read_screen_settings.2914 Tu29.2915 
																																																																									Let Tu43.5734
																																																																										Let Ta2227.5822
																																																																											ExtArray 288
																																																																											Let Ti2228.5823
																																																																												Int:0
																																																																												Let Td2229.5824
																																																																													Readfloat
																																																																													Put Ta2227.5822 Ti2228.5823 Td2229.5824
																																																																										Let Tu42.5735
																																																																											Let Ta2230.5819
																																																																												ExtArray 288
																																																																												Let Ti2231.5820
																																																																													Int:1
																																																																													Let Td2232.5821
																																																																														Readfloat
																																																																														Put Ta2230.5819 Ti2231.5820 Td2232.5821
																																																																											Let Tu41.5736
																																																																												Let Ta2233.5816
																																																																													ExtArray 288
																																																																													Let Ti2234.5817
																																																																														Int:2
																																																																														Let Td2235.5818
																																																																															Readfloat
																																																																															Put Ta2233.5816 Ti2234.5817 Td2235.5818
																																																																												Let v1.5737
																																																																													Let Td2236.5815
																																																																														Readfloat
																																																																														App rad.2912Td2236.5815 
																																																																													Let cos_v1.5738
																																																																														App cos.2783v1.5737 
																																																																														Let sin_v1.5739
																																																																															App sin.2781v1.5737 
																																																																															Let v2.5740
																																																																																Let Td2237.5814
																																																																																	Readfloat
																																																																																	App rad.2912Td2237.5814 
																																																																																Let cos_v2.5741
																																																																																	App cos.2783v2.5740 
																																																																																	Let sin_v2.5742
																																																																																		App sin.2781v2.5740 
																																																																																		Let Tu40.5743
																																																																																			Let Ta2238.5809
																																																																																				ExtArray 684
																																																																																				Let Ti2239.5810
																																																																																					Int:0
																																																																																					Let Td2242.5811
																																																																																						Let Td2240.5812
																																																																																							FMul cos_v1.5738 sin_v2.5742
																																																																																							Let Td2241.5813
																																																																																								Float:200.000000
																																																																																								FMul Td2240.5812 Td2241.5813
																																																																																						Put Ta2238.5809 Ti2239.5810 Td2242.5811
																																																																																			Let Tu39.5744
																																																																																				Let Ta2243.5805
																																																																																					ExtArray 684
																																																																																					Let Ti2244.5806
																																																																																						Int:1
																																																																																						Let Td2246.5807
																																																																																							Let Td2245.5808
																																																																																								Float:-200.000000
																																																																																								FMul sin_v1.5739 Td2245.5808
																																																																																							Put Ta2243.5805 Ti2244.5806 Td2246.5807
																																																																																				Let Tu38.5745
																																																																																					Let Ta2247.5800
																																																																																						ExtArray 684
																																																																																						Let Ti2248.5801
																																																																																							Int:2
																																																																																							Let Td2251.5802
																																																																																								Let Td2249.5803
																																																																																									FMul cos_v1.5738 cos_v2.5741
																																																																																									Let Td2250.5804
																																																																																										Float:200.000000
																																																																																										FMul Td2249.5803 Td2250.5804
																																																																																								Put Ta2247.5800 Ti2248.5801 Td2251.5802
																																																																																					Let Tu37.5746
																																																																																						Let Ta2252.5798
																																																																																							ExtArray 660
																																																																																							Let Ti2253.5799
																																																																																								Int:0
																																																																																								Put Ta2252.5798 Ti2253.5799 cos_v2.5741
																																																																																						Let Tu36.5747
																																																																																							Let Ta2254.5795
																																																																																								ExtArray 660
																																																																																								Let Ti2255.5796
																																																																																									Int:1
																																																																																									Let Td2256.5797
																																																																																										Float:0.000000
																																																																																										Put Ta2254.5795 Ti2255.5796 Td2256.5797
																																																																																							Let Tu35.5748
																																																																																								Let Ta2257.5792
																																																																																									ExtArray 660
																																																																																									Let Ti2258.5793
																																																																																										Int:2
																																																																																										Let Td2259.5794
																																																																																											App fneg.2746sin_v2.5742 
																																																																																											Put Ta2257.5792 Ti2258.5793 Td2259.5794
																																																																																								Let Tu34.5749
																																																																																									Let Ta2260.5788
																																																																																										ExtArray 672
																																																																																										Let Ti2261.5789
																																																																																											Int:0
																																																																																											Let Td2263.5790
																																																																																												Let Td2262.5791
																																																																																													App fneg.2746sin_v1.5739 
																																																																																													FMul Td2262.5791 sin_v2.5742
																																																																																												Put Ta2260.5788 Ti2261.5789 Td2263.5790
																																																																																									Let Tu33.5750
																																																																																										Let Ta2264.5785
																																																																																											ExtArray 672
																																																																																											Let Ti2265.5786
																																																																																												Int:1
																																																																																												Let Td2266.5787
																																																																																													App fneg.2746cos_v1.5738 
																																																																																													Put Ta2264.5785 Ti2265.5786 Td2266.5787
																																																																																										Let Tu32.5751
																																																																																											Let Ta2267.5781
																																																																																												ExtArray 672
																																																																																												Let Ti2268.5782
																																																																																													Int:2
																																																																																													Let Td2270.5783
																																																																																														Let Td2269.5784
																																																																																															App fneg.2746sin_v1.5739 
																																																																																															FMul Td2269.5784 cos_v2.5741
																																																																																														Put Ta2267.5781 Ti2268.5782 Td2270.5783
																																																																																											Let Tu31.5752
																																																																																												Let Ta2271.5772
																																																																																													ExtArray 300
																																																																																													Let Ti2272.5773
																																																																																														Int:0
																																																																																														Let Td2279.5774
																																																																																															Let Td2275.5775
																																																																																																Let Ta2273.5779
																																																																																																	ExtArray 288
																																																																																																	Let Ti2274.5780
																																																																																																		Int:0
																																																																																																		Get Ta2273.5779 Ti2274.5780
																																																																																																Let Td2278.5776
																																																																																																	Let Ta2276.5777
																																																																																																		ExtArray 684
																																																																																																		Let Ti2277.5778
																																																																																																			Int:0
																																																																																																			Get Ta2276.5777 Ti2277.5778
																																																																																																	FSub Td2275.5775 Td2278.5776
																																																																																															Put Ta2271.5772 Ti2272.5773 Td2279.5774
																																																																																												Let Tu30.5753
																																																																																													Let Ta2280.5763
																																																																																														ExtArray 300
																																																																																														Let Ti2281.5764
																																																																																															Int:1
																																																																																															Let Td2288.5765
																																																																																																Let Td2284.5766
																																																																																																	Let Ta2282.5770
																																																																																																		ExtArray 288
																																																																																																		Let Ti2283.5771
																																																																																																			Int:1
																																																																																																			Get Ta2282.5770 Ti2283.5771
																																																																																																	Let Td2287.5767
																																																																																																		Let Ta2285.5768
																																																																																																			ExtArray 684
																																																																																																			Let Ti2286.5769
																																																																																																				Int:1
																																																																																																				Get Ta2285.5768 Ti2286.5769
																																																																																																		FSub Td2284.5766 Td2287.5767
																																																																																																Put Ta2280.5763 Ti2281.5764 Td2288.5765
																																																																																													Let Ta2289.5754
																																																																																														ExtArray 300
																																																																																														Let Ti2290.5755
																																																																																															Int:2
																																																																																															Let Td2297.5756
																																																																																																Let Td2293.5757
																																																																																																	Let Ta2291.5761
																																																																																																		ExtArray 288
																																																																																																		Let Ti2292.5762
																																																																																																			Int:2
																																																																																																			Get Ta2291.5761 Ti2292.5762
																																																																																																	Let Td2296.5758
																																																																																																		Let Ta2294.5759
																																																																																																			ExtArray 684
																																																																																																			Let Ti2295.5760
																																																																																																				Int:2
																																																																																																				Get Ta2294.5759 Ti2295.5760
																																																																																																		FSub Td2293.5757 Td2296.5758
																																																																																																Put Ta2289.5754 Ti2290.5755 Td2297.5756
																																																																									LetRec read_light.2916 Tu44.2917 
																																																																										Let nl.5710
																																																																											Readint
																																																																											Let l1.5711
																																																																												Let Td2213.5733
																																																																													Readfloat
																																																																													App rad.2912Td2213.5733 
																																																																												Let sl1.5712
																																																																													App sin.2781l1.5711 
																																																																													Let Tu47.5713
																																																																														Let Ta2214.5730
																																																																															ExtArray 312
																																																																															Let Ti2215.5731
																																																																																Int:1
																																																																																Let Td2216.5732
																																																																																	App fneg.2746sl1.5712 
																																																																																	Put Ta2214.5730 Ti2215.5731 Td2216.5732
																																																																														Let l2.5714
																																																																															Let Td2217.5729
																																																																																Readfloat
																																																																																App rad.2912Td2217.5729 
																																																																															Let cl1.5715
																																																																																App cos.2783l1.5711 
																																																																																Let sl2.5716
																																																																																	App sin.2781l2.5714 
																																																																																	Let Tu46.5717
																																																																																		Let Ta2218.5726
																																																																																			ExtArray 312
																																																																																			Let Ti2219.5727
																																																																																				Int:0
																																																																																				Let Td2220.5728
																																																																																					FMul cl1.5715 sl2.5716
																																																																																					Put Ta2218.5726 Ti2219.5727 Td2220.5728
																																																																																		Let cl2.5718
																																																																																			App cos.2783l2.5714 
																																																																																			Let Tu45.5719
																																																																																				Let Ta2221.5723
																																																																																					ExtArray 312
																																																																																					Let Ti2222.5724
																																																																																						Int:2
																																																																																						Let Td2223.5725
																																																																																							FMul cl1.5715 cl2.5718
																																																																																							Put Ta2221.5723 Ti2222.5724 Td2223.5725
																																																																																				Let Ta2224.5720
																																																																																					ExtArray 324
																																																																																					Let Ti2225.5721
																																																																																						Int:0
																																																																																						Let Td2226.5722
																																																																																							Readfloat
																																																																																							Put Ta2224.5720 Ti2225.5721 Td2226.5722
																																																																										LetRec rotate_quadratic_matrix.2918 abc.2919 rot.2920 
																																																																											Let cos_x.5600
																																																																												Let Td2127.5708
																																																																													Let Ti2126.5709
																																																																														Int:0
																																																																														Get rot.2920 Ti2126.5709
																																																																													App cos.2783Td2127.5708 
																																																																												Let sin_x.5601
																																																																													Let Td2129.5706
																																																																														Let Ti2128.5707
																																																																															Int:0
																																																																															Get rot.2920 Ti2128.5707
																																																																														App sin.2781Td2129.5706 
																																																																													Let cos_y.5602
																																																																														Let Td2131.5704
																																																																															Let Ti2130.5705
																																																																																Int:1
																																																																																Get rot.2920 Ti2130.5705
																																																																															App cos.2783Td2131.5704 
																																																																														Let sin_y.5603
																																																																															Let Td2133.5702
																																																																																Let Ti2132.5703
																																																																																	Int:1
																																																																																	Get rot.2920 Ti2132.5703
																																																																																App sin.2781Td2133.5702 
																																																																															Let cos_z.5604
																																																																																Let Td2135.5700
																																																																																	Let Ti2134.5701
																																																																																		Int:2
																																																																																		Get rot.2920 Ti2134.5701
																																																																																	App cos.2783Td2135.5700 
																																																																																Let sin_z.5605
																																																																																	Let Td2137.5698
																																																																																		Let Ti2136.5699
																																																																																			Int:2
																																																																																			Get rot.2920 Ti2136.5699
																																																																																		App sin.2781Td2137.5698 
																																																																																	Let m00.5606
																																																																																		FMul cos_y.5602 cos_z.5604
																																																																																		Let m01.5607
																																																																																			Let Td2139.5695
																																																																																				Let Td2138.5697
																																																																																					FMul sin_x.5601 sin_y.5603
																																																																																					FMul Td2138.5697 cos_z.5604
																																																																																				Let Td2140.5696
																																																																																					FMul cos_x.5600 sin_z.5605
																																																																																					FSub Td2139.5695 Td2140.5696
																																																																																			Let m02.5608
																																																																																				Let Td2142.5692
																																																																																					Let Td2141.5694
																																																																																						FMul cos_x.5600 sin_y.5603
																																																																																						FMul Td2141.5694 cos_z.5604
																																																																																					Let Td2143.5693
																																																																																						FMul sin_x.5601 sin_z.5605
																																																																																						FAdd Td2142.5692 Td2143.5693
																																																																																				Let m10.5609
																																																																																					FMul cos_y.5602 sin_z.5605
																																																																																					Let m11.5610
																																																																																						Let Td2145.5689
																																																																																							Let Td2144.5691
																																																																																								FMul sin_x.5601 sin_y.5603
																																																																																								FMul Td2144.5691 sin_z.5605
																																																																																							Let Td2146.5690
																																																																																								FMul cos_x.5600 cos_z.5604
																																																																																								FAdd Td2145.5689 Td2146.5690
																																																																																						Let m12.5611
																																																																																							Let Td2148.5686
																																																																																								Let Td2147.5688
																																																																																									FMul cos_x.5600 sin_y.5603
																																																																																									FMul Td2147.5688 sin_z.5605
																																																																																								Let Td2149.5687
																																																																																									FMul sin_x.5601 cos_z.5604
																																																																																									FSub Td2148.5686 Td2149.5687
																																																																																							Let m20.5612
																																																																																								App fneg.2746sin_y.5603 
																																																																																								Let m21.5613
																																																																																									FMul sin_x.5601 cos_y.5602
																																																																																									Let m22.5614
																																																																																										FMul cos_x.5600 cos_y.5602
																																																																																										Let ao.5615
																																																																																											Let Ti2150.5685
																																																																																												Int:0
																																																																																												Get abc.2919 Ti2150.5685
																																																																																											Let bo.5616
																																																																																												Let Ti2151.5684
																																																																																													Int:1
																																																																																													Get abc.2919 Ti2151.5684
																																																																																												Let co.5617
																																																																																													Let Ti2152.5683
																																																																																														Int:2
																																																																																														Get abc.2919 Ti2152.5683
																																																																																													Let Tu52.5618
																																																																																														Let Ti2153.5674
																																																																																															Int:0
																																																																																															Let Td2161.5675
																																																																																																Let Td2158.5676
																																																																																																	Let Td2155.5679
																																																																																																		Let Td2154.5682
																																																																																																			App fsqr.2750m00.5606 
																																																																																																			FMul ao.5615 Td2154.5682
																																																																																																		Let Td2157.5680
																																																																																																			Let Td2156.5681
																																																																																																				App fsqr.2750m10.5609 
																																																																																																				FMul bo.5616 Td2156.5681
																																																																																																			FAdd Td2155.5679 Td2157.5680
																																																																																																	Let Td2160.5677
																																																																																																		Let Td2159.5678
																																																																																																			App fsqr.2750m20.5612 
																																																																																																			FMul co.5617 Td2159.5678
																																																																																																		FAdd Td2158.5676 Td2160.5677
																																																																																																Put abc.2919 Ti2153.5674 Td2161.5675
																																																																																														Let Tu51.5619
																																																																																															Let Ti2162.5665
																																																																																																Int:1
																																																																																																Let Td2170.5666
																																																																																																	Let Td2167.5667
																																																																																																		Let Td2164.5670
																																																																																																			Let Td2163.5673
																																																																																																				App fsqr.2750m01.5607 
																																																																																																				FMul ao.5615 Td2163.5673
																																																																																																			Let Td2166.5671
																																																																																																				Let Td2165.5672
																																																																																																					App fsqr.2750m11.5610 
																																																																																																					FMul bo.5616 Td2165.5672
																																																																																																				FAdd Td2164.5670 Td2166.5671
																																																																																																		Let Td2169.5668
																																																																																																			Let Td2168.5669
																																																																																																				App fsqr.2750m21.5613 
																																																																																																				FMul co.5617 Td2168.5669
																																																																																																			FAdd Td2167.5667 Td2169.5668
																																																																																																	Put abc.2919 Ti2162.5665 Td2170.5666
																																																																																															Let Tu50.5620
																																																																																																Let Ti2171.5656
																																																																																																	Int:2
																																																																																																	Let Td2179.5657
																																																																																																		Let Td2176.5658
																																																																																																			Let Td2173.5661
																																																																																																				Let Td2172.5664
																																																																																																					App fsqr.2750m02.5608 
																																																																																																					FMul ao.5615 Td2172.5664
																																																																																																				Let Td2175.5662
																																																																																																					Let Td2174.5663
																																																																																																						App fsqr.2750m12.5611 
																																																																																																						FMul bo.5616 Td2174.5663
																																																																																																					FAdd Td2173.5661 Td2175.5662
																																																																																																			Let Td2178.5659
																																																																																																				Let Td2177.5660
																																																																																																					App fsqr.2750m22.5614 
																																																																																																					FMul co.5617 Td2177.5660
																																																																																																				FAdd Td2176.5658 Td2178.5659
																																																																																																		Put abc.2919 Ti2171.5656 Td2179.5657
																																																																																																Let Tu49.5621
																																																																																																	Let Ti2180.5645
																																																																																																		Int:0
																																																																																																		Let Td2190.5646
																																																																																																			Let Td2181.5647
																																																																																																				Float:2.000000
																																																																																																				Let Td2189.5648
																																																																																																					Let Td2186.5649
																																																																																																						Let Td2183.5652
																																																																																																							Let Td2182.5655
																																																																																																								FMul ao.5615 m01.5607
																																																																																																								FMul Td2182.5655 m02.5608
																																																																																																							Let Td2185.5653
																																																																																																								Let Td2184.5654
																																																																																																									FMul bo.5616 m11.5610
																																																																																																									FMul Td2184.5654 m12.5611
																																																																																																								FAdd Td2183.5652 Td2185.5653
																																																																																																						Let Td2188.5650
																																																																																																							Let Td2187.5651
																																																																																																								FMul co.5617 m21.5613
																																																																																																								FMul Td2187.5651 m22.5614
																																																																																																							FAdd Td2186.5649 Td2188.5650
																																																																																																					FMul Td2181.5647 Td2189.5648
																																																																																																			Put rot.2920 Ti2180.5645 Td2190.5646
																																																																																																	Let Tu48.5622
																																																																																																		Let Ti2191.5634
																																																																																																			Int:1
																																																																																																			Let Td2201.5635
																																																																																																				Let Td2192.5636
																																																																																																					Float:2.000000
																																																																																																					Let Td2200.5637
																																																																																																						Let Td2197.5638
																																																																																																							Let Td2194.5641
																																																																																																								Let Td2193.5644
																																																																																																									FMul ao.5615 m00.5606
																																																																																																									FMul Td2193.5644 m02.5608
																																																																																																								Let Td2196.5642
																																																																																																									Let Td2195.5643
																																																																																																										FMul bo.5616 m10.5609
																																																																																																										FMul Td2195.5643 m12.5611
																																																																																																									FAdd Td2194.5641 Td2196.5642
																																																																																																							Let Td2199.5639
																																																																																																								Let Td2198.5640
																																																																																																									FMul co.5617 m20.5612
																																																																																																									FMul Td2198.5640 m22.5614
																																																																																																								FAdd Td2197.5638 Td2199.5639
																																																																																																						FMul Td2192.5636 Td2200.5637
																																																																																																				Put rot.2920 Ti2191.5634 Td2201.5635
																																																																																																		Let Ti2202.5623
																																																																																																			Int:2
																																																																																																			Let Td2212.5624
																																																																																																				Let Td2203.5625
																																																																																																					Float:2.000000
																																																																																																					Let Td2211.5626
																																																																																																						Let Td2208.5627
																																																																																																							Let Td2205.5630
																																																																																																								Let Td2204.5633
																																																																																																									FMul ao.5615 m00.5606
																																																																																																									FMul Td2204.5633 m01.5607
																																																																																																								Let Td2207.5631
																																																																																																									Let Td2206.5632
																																																																																																										FMul bo.5616 m10.5609
																																																																																																										FMul Td2206.5632 m11.5610
																																																																																																									FAdd Td2205.5630 Td2207.5631
																																																																																																							Let Td2210.5628
																																																																																																								Let Td2209.5629
																																																																																																									FMul co.5617 m20.5612
																																																																																																									FMul Td2209.5629 m21.5613
																																																																																																								FAdd Td2208.5627 Td2210.5628
																																																																																																						FMul Td2203.5625 Td2211.5626
																																																																																																				Put rot.2920 Ti2202.5623 Td2212.5624
																																																																											LetRec read_nth_object.2921 n.2922 
																																																																												Let texture.5489
																																																																													Readint
																																																																													Let Ti2051.5490
																																																																														Let Ti2050.5599
																																																																															Int:1
																																																																															Neg Ti2050.5599
																																																																														IfEq texture.5489 Ti2051.5490
																																																																															Int:0
																																																																															Let form.5491
																																																																																Readint
																																																																																Let refltype.5492
																																																																																	Readint
																																																																																	Let isrot_p.5493
																																																																																		Readint
																																																																																		Let abc.5494
																																																																																			Let Ti2052.5597
																																																																																				Int:3
																																																																																				Let Td2053.5598
																																																																																					Float:0.000000
																																																																																					ExtFunApp create_float_array Ti2052.5597,Td2053.5598,
																																																																																			Let Tu71.5495
																																																																																				Let Ti2054.5595
																																																																																					Int:0
																																																																																					Let Td2055.5596
																																																																																						Readfloat
																																																																																						Put abc.5494 Ti2054.5595 Td2055.5596
																																																																																				Let Tu70.5496
																																																																																					Let Ti2056.5593
																																																																																						Int:1
																																																																																						Let Td2057.5594
																																																																																							Readfloat
																																																																																							Put abc.5494 Ti2056.5593 Td2057.5594
																																																																																					Let Tu69.5497
																																																																																						Let Ti2058.5591
																																																																																							Int:2
																																																																																							Let Td2059.5592
																																																																																								Readfloat
																																																																																								Put abc.5494 Ti2058.5591 Td2059.5592
																																																																																						Let xyz.5498
																																																																																							Let Ti2060.5589
																																																																																								Int:3
																																																																																								Let Td2061.5590
																																																																																									Float:0.000000
																																																																																									ExtFunApp create_float_array Ti2060.5589,Td2061.5590,
																																																																																							Let Tu68.5499
																																																																																								Let Ti2062.5587
																																																																																									Int:0
																																																																																									Let Td2063.5588
																																																																																										Readfloat
																																																																																										Put xyz.5498 Ti2062.5587 Td2063.5588
																																																																																								Let Tu67.5500
																																																																																									Let Ti2064.5585
																																																																																										Int:1
																																																																																										Let Td2065.5586
																																																																																											Readfloat
																																																																																											Put xyz.5498 Ti2064.5585 Td2065.5586
																																																																																									Let Tu66.5501
																																																																																										Let Ti2066.5583
																																																																																											Int:2
																																																																																											Let Td2067.5584
																																																																																												Readfloat
																																																																																												Put xyz.5498 Ti2066.5583 Td2067.5584
																																																																																										Let m_invert.5502
																																																																																											Let Td2068.5581
																																																																																												Float:0.000000
																																																																																												Let Td2069.5582
																																																																																													Readfloat
																																																																																													IfLE Td2068.5581 Td2069.5582
																																																																																														Int:0
																																																																																														Int:1
																																																																																											Let reflparam.5503
																																																																																												Let Ti2070.5579
																																																																																													Int:2
																																																																																													Let Td2071.5580
																																																																																														Float:0.000000
																																																																																														ExtFunApp create_float_array Ti2070.5579,Td2071.5580,
																																																																																												Let Tu65.5504
																																																																																													Let Ti2072.5577
																																																																																														Int:0
																																																																																														Let Td2073.5578
																																																																																															Readfloat
																																																																																															Put reflparam.5503 Ti2072.5577 Td2073.5578
																																																																																													Let Tu64.5505
																																																																																														Let Ti2074.5575
																																																																																															Int:1
																																																																																															Let Td2075.5576
																																																																																																Readfloat
																																																																																																Put reflparam.5503 Ti2074.5575 Td2075.5576
																																																																																														Let color.5506
																																																																																															Let Ti2076.5573
																																																																																																Int:3
																																																																																																Let Td2077.5574
																																																																																																	Float:0.000000
																																																																																																	ExtFunApp create_float_array Ti2076.5573,Td2077.5574,
																																																																																															Let Tu63.5507
																																																																																																Let Ti2078.5571
																																																																																																	Int:0
																																																																																																	Let Td2079.5572
																																																																																																		Readfloat
																																																																																																		Put color.5506 Ti2078.5571 Td2079.5572
																																																																																																Let Tu62.5508
																																																																																																	Let Ti2080.5569
																																																																																																		Int:1
																																																																																																		Let Td2081.5570
																																																																																																			Readfloat
																																																																																																			Put color.5506 Ti2080.5569 Td2081.5570
																																																																																																	Let Tu61.5509
																																																																																																		Let Ti2082.5567
																																																																																																			Int:2
																																																																																																			Let Td2083.5568
																																																																																																				Readfloat
																																																																																																				Put color.5506 Ti2082.5567 Td2083.5568
																																																																																																		Let rotation.5510
																																																																																																			Let Ti2084.5565
																																																																																																				Int:3
																																																																																																				Let Td2085.5566
																																																																																																					Float:0.000000
																																																																																																					ExtFunApp create_float_array Ti2084.5565,Td2085.5566,
																																																																																																			Let Tu60.5511
																																																																																																				Let Ti2086.5553
																																																																																																					Int:0
																																																																																																					IfEq isrot_p.5493 Ti2086.5553
																																																																																																						Unit
																																																																																																						Let Tu54.5554
																																																																																																							Let Ti2087.5562
																																																																																																								Int:0
																																																																																																								Let Td2089.5563
																																																																																																									Let Td2088.5564
																																																																																																										Readfloat
																																																																																																										App rad.2912Td2088.5564 
																																																																																																									Put rotation.5510 Ti2087.5562 Td2089.5563
																																																																																																							Let Tu53.5555
																																																																																																								Let Ti2090.5559
																																																																																																									Int:1
																																																																																																									Let Td2092.5560
																																																																																																										Let Td2091.5561
																																																																																																											Readfloat
																																																																																																											App rad.2912Td2091.5561 
																																																																																																										Put rotation.5510 Ti2090.5559 Td2092.5560
																																																																																																								Let Ti2093.5556
																																																																																																									Int:2
																																																																																																									Let Td2095.5557
																																																																																																										Let Td2094.5558
																																																																																																											Readfloat
																																																																																																											App rad.2912Td2094.5558 
																																																																																																										Put rotation.5510 Ti2093.5556 Td2095.5557
																																																																																																				Let m_invert2.5512
																																																																																																					Let Ti2096.5552
																																																																																																						Int:2
																																																																																																						IfEq form.5491 Ti2096.5552
																																																																																																							Int:1
																																																																																																							Var m_invert.5502
																																																																																																					Let ctbl.5513
																																																																																																						Let Ti2097.5550
																																																																																																							Int:4
																																																																																																							Let Td2098.5551
																																																																																																								Float:0.000000
																																																																																																								ExtFunApp create_float_array Ti2097.5550,Td2098.5551,
																																																																																																						Let obj.5514
																																																																																																							Tuple (texture.5489,form.5491,refltype.5492,isrot_p.5493,abc.5494,xyz.5498,m_invert2.5512,reflparam.5503,color.5506,rotation.5510,ctbl.5513,)
																																																																																																							Let Tu59.5515
																																																																																																								Let Ta2099.5549
																																																																																																									ExtArray 48
																																																																																																									Put Ta2099.5549 n.2922 obj.5514
																																																																																																								Let Tu58.5516
																																																																																																									Let Ti2100.5519
																																																																																																										Int:3
																																																																																																										IfEq form.5491 Ti2100.5519
																																																																																																											Let a.5523
																																																																																																												Let Ti2101.5548
																																																																																																													Int:0
																																																																																																													Get abc.5494 Ti2101.5548
																																																																																																												Let Tu56.5524
																																																																																																													Let Ti2102.5542
																																																																																																														Int:0
																																																																																																														Let Td2107.5543
																																																																																																															Let Td2103.5544
																																																																																																																Float:0.000000
																																																																																																																IfEq a.5523 Td2103.5544
																																																																																																																	Float:0.000000
																																																																																																																	Let Td2104.5545
																																																																																																																		App sgn.2787a.5523 
																																																																																																																		Let Td2105.5546
																																																																																																																			App fsqr.2750a.5523 
																																																																																																																			Let Td2106.5547
																																																																																																																				FReciprocal Td2105.5546
																																																																																																																				FMul Td2104.5545 Td2106.5547
																																																																																																															Put abc.5494 Ti2102.5542 Td2107.5543
																																																																																																													Let b.5525
																																																																																																														Let Ti2108.5541
																																																																																																															Int:1
																																																																																																															Get abc.5494 Ti2108.5541
																																																																																																														Let Tu55.5526
																																																																																																															Let Ti2109.5535
																																																																																																																Int:1
																																																																																																																Let Td2114.5536
																																																																																																																	Let Td2110.5537
																																																																																																																		Float:0.000000
																																																																																																																		IfEq b.5525 Td2110.5537
																																																																																																																			Float:0.000000
																																																																																																																			Let Td2111.5538
																																																																																																																				App sgn.2787b.5525 
																																																																																																																				Let Td2112.5539
																																																																																																																					App fsqr.2750b.5525 
																																																																																																																					Let Td2113.5540
																																																																																																																						FReciprocal Td2112.5539
																																																																																																																						FMul Td2111.5538 Td2113.5540
																																																																																																																	Put abc.5494 Ti2109.5535 Td2114.5536
																																																																																																															Let c.5527
																																																																																																																Let Ti2115.5534
																																																																																																																	Int:2
																																																																																																																	Get abc.5494 Ti2115.5534
																																																																																																																Let Ti2116.5528
																																																																																																																	Int:2
																																																																																																																	Let Td2121.5529
																																																																																																																		Let Td2117.5530
																																																																																																																			Float:0.000000
																																																																																																																			IfEq c.5527 Td2117.5530
																																																																																																																				Float:0.000000
																																																																																																																				Let Td2118.5531
																																																																																																																					App sgn.2787c.5527 
																																																																																																																					Let Td2119.5532
																																																																																																																						App fsqr.2750c.5527 
																																																																																																																						Let Td2120.5533
																																																																																																																							FReciprocal Td2119.5532
																																																																																																																							FMul Td2118.5531 Td2120.5533
																																																																																																																		Put abc.5494 Ti2116.5528 Td2121.5529
																																																																																																											Let Ti2122.5520
																																																																																																												Int:2
																																																																																																												IfEq form.5491 Ti2122.5520
																																																																																																													Let Ti2124.5521
																																																																																																														Let Ti2123.5522
																																																																																																															Int:0
																																																																																																															IfEq m_invert.5502 Ti2123.5522
																																																																																																																Int:1
																																																																																																																Int:0
																																																																																																														App vecunit_sgn.2813abc.5494 Ti2124.5521 
																																																																																																													Unit
																																																																																																									Let Tu57.5517
																																																																																																										Let Ti2125.5518
																																																																																																											Int:0
																																																																																																											IfEq isrot_p.5493 Ti2125.5518
																																																																																																												Unit
																																																																																																												App rotate_quadratic_matrix.2918abc.5494 rotation.5510 
																																																																																																										Int:1
																																																																												LetRec read_object.2923 n.2924 
																																																																													Let Ti2043.5482
																																																																														Int:60
																																																																														IfLE Ti2043.5482 n.2924
																																																																															Unit
																																																																															Let Tb2044.5483
																																																																																App read_nth_object.2921n.2924 
																																																																																Let Ti2045.5484
																																																																																	Int:0
																																																																																	IfEq Tb2044.5483 Ti2045.5484
																																																																																		Let Ta2046.5487
																																																																																			ExtArray 0
																																																																																			Let Ti2047.5488
																																																																																				Int:0
																																																																																				Put Ta2046.5487 Ti2047.5488 n.2924
																																																																																		Let Ti2049.5485
																																																																																			Let Ti2048.5486
																																																																																				Int:1
																																																																																				Add n.2924 Ti2048.5486
																																																																																			App read_object.2923Ti2049.5485 
																																																																													LetRec read_all_object.2925 Tu72.2926 
																																																																														Let Ti2042.5481
																																																																															Int:0
																																																																															App read_object.2923Ti2042.5481 
																																																																														LetRec read_net_item.2927 length.2928 
																																																																															Let item.5470
																																																																																Readint
																																																																																Let Ti2035.5471
																																																																																	Let Ti2034.5480
																																																																																		Int:1
																																																																																		Neg Ti2034.5480
																																																																																	IfEq item.5470 Ti2035.5471
																																																																																		Let Ti2037.5476
																																																																																			Let Ti2036.5479
																																																																																				Int:1
																																																																																				Add length.2928 Ti2036.5479
																																																																																			Let Ti2039.5477
																																																																																				Let Ti2038.5478
																																																																																					Int:1
																																																																																					Neg Ti2038.5478
																																																																																				ExtFunApp create_array Ti2037.5476,Ti2039.5477,
																																																																																		Let v.5472
																																																																																			Let Ti2041.5474
																																																																																				Let Ti2040.5475
																																																																																					Int:1
																																																																																					Add length.2928 Ti2040.5475
																																																																																				App read_net_item.2927Ti2041.5474 
																																																																																			Let Tu73.5473
																																																																																				Put v.5472 length.2928 item.5470
																																																																																				Var v.5472
																																																																															LetRec read_or_network.2929 length.2930 
																																																																																Let net.5458
																																																																																	Let Ti2025.5469
																																																																																		Int:0
																																																																																		App read_net_item.2927Ti2025.5469 
																																																																																	Let Ti2027.5459
																																																																																		Let Ti2026.5468
																																																																																			Int:0
																																																																																			Get net.5458 Ti2026.5468
																																																																																		Let Ti2029.5460
																																																																																			Let Ti2028.5467
																																																																																				Int:1
																																																																																				Neg Ti2028.5467
																																																																																			IfEq Ti2027.5459 Ti2029.5460
																																																																																				Let Ti2031.5465
																																																																																					Let Ti2030.5466
																																																																																						Int:1
																																																																																						Add length.2930 Ti2030.5466
																																																																																					ExtFunApp create_array Ti2031.5465,net.5458,
																																																																																				Let v.5461
																																																																																					Let Ti2033.5463
																																																																																						Let Ti2032.5464
																																																																																							Int:1
																																																																																							Add length.2930 Ti2032.5464
																																																																																						App read_or_network.2929Ti2033.5463 
																																																																																					Let Tu74.5462
																																																																																						Put v.5461 length.2930 net.5458
																																																																																						Var v.5461
																																																																																LetRec read_and_network.2931 n.2932 
																																																																																	Let net.5448
																																																																																		Let Ti2017.5457
																																																																																			Int:0
																																																																																			App read_net_item.2927Ti2017.5457 
																																																																																		Let Ti2019.5449
																																																																																			Let Ti2018.5456
																																																																																				Int:0
																																																																																				Get net.5448 Ti2018.5456
																																																																																			Let Ti2021.5450
																																																																																				Let Ti2020.5455
																																																																																					Int:1
																																																																																					Neg Ti2020.5455
																																																																																				IfEq Ti2019.5449 Ti2021.5450
																																																																																					Unit
																																																																																					Let Tu75.5451
																																																																																						Let Ta2022.5454
																																																																																							ExtArray 332
																																																																																							Put Ta2022.5454 n.2932 net.5448
																																																																																						Let Ti2024.5452
																																																																																							Let Ti2023.5453
																																																																																								Int:1
																																																																																								Add n.2932 Ti2023.5453
																																																																																							App read_and_network.2931Ti2024.5452 
																																																																																	LetRec read_parameter.2933 Tu76.2934 
																																																																																		Let Tu80.5436
																																																																																			Let Tu2009.5447
																																																																																				Unit
																																																																																				App read_screen_settings.2914Tu2009.5447 
																																																																																			Let Tu79.5437
																																																																																				Let Tu2010.5446
																																																																																					Unit
																																																																																					App read_light.2916Tu2010.5446 
																																																																																				Let Tu78.5438
																																																																																					Let Tu2011.5445
																																																																																						Unit
																																																																																						App read_all_object.2925Tu2011.5445 
																																																																																					Let Tu77.5439
																																																																																						Let Ti2012.5444
																																																																																							Int:0
																																																																																							App read_and_network.2931Ti2012.5444 
																																																																																						Let Ta2013.5440
																																																																																							ExtArray 536
																																																																																							Let Ti2014.5441
																																																																																								Int:0
																																																																																								Let Ta2016.5442
																																																																																									Let Ti2015.5443
																																																																																										Int:0
																																																																																										App read_or_network.2929Ti2015.5443 
																																																																																									Put Ta2013.5440 Ti2014.5441 Ta2016.5442
																																																																																		LetRec solver_rect_surface.2935 m.2936 dirvec.2937 b0.2938 b1.2939 b2.2940 i0.2941 i1.2942 i2.2943 
																																																																																			Let Td1986.5409
																																																																																				Get dirvec.2937 i0.2941
																																																																																				Let Td1987.5410
																																																																																					Float:0.000000
																																																																																					IfEq Td1986.5409 Td1987.5410
																																																																																						Int:0
																																																																																						Let abc.5411
																																																																																							App o_param_abc.2857m.2936 
																																																																																							Let d.5412
																																																																																								Let Ti1992.5430
																																																																																									Let Tb1988.5432
																																																																																										App o_isinvert.2847m.2936 
																																																																																										Let Ti1991.5433
																																																																																											Let Td1989.5434
																																																																																												Float:0.000000
																																																																																												Let Td1990.5435
																																																																																													Get dirvec.2937 i0.2941
																																																																																													IfLE Td1989.5434 Td1990.5435
																																																																																														Int:0
																																																																																														Int:1
																																																																																											xor Tb1988.5432 Ti1991.5433
																																																																																									Let Td1993.5431
																																																																																										Get abc.5411 i0.2941
																																																																																										App fneg_cond.2789Ti1992.5430 Td1993.5431 
																																																																																								Let d2.5413
																																																																																									Let Td1994.5427
																																																																																										FSub d.5412 b0.2938
																																																																																										Let Td1995.5428
																																																																																											Get dirvec.2937 i0.2941
																																																																																											Let Td1996.5429
																																																																																												FReciprocal Td1995.5428
																																																																																												FMul Td1994.5427 Td1996.5429
																																																																																									Let Td1997.5414
																																																																																										Get abc.5411 i1.2942
																																																																																										Let Td2001.5415
																																																																																											Let Td2000.5424
																																																																																												Let Td1999.5425
																																																																																													Let Td1998.5426
																																																																																														Get dirvec.2937 i1.2942
																																																																																														FMul d2.5413 Td1998.5426
																																																																																													FAdd Td1999.5425 b1.2939
																																																																																												fabs Td2000.5424
																																																																																											IfLE Td1997.5414 Td2001.5415
																																																																																												Int:0
																																																																																												Let Td2002.5416
																																																																																													Get abc.5411 i2.2943
																																																																																													Let Td2006.5417
																																																																																														Let Td2005.5421
																																																																																															Let Td2004.5422
																																																																																																Let Td2003.5423
																																																																																																	Get dirvec.2937 i2.2943
																																																																																																	FMul d2.5413 Td2003.5423
																																																																																																FAdd Td2004.5422 b2.2940
																																																																																															fabs Td2005.5421
																																																																																														IfLE Td2002.5416 Td2006.5417
																																																																																															Int:0
																																																																																															Let Tu81.5418
																																																																																																Let Ta2007.5419
																																																																																																	ExtArray 540
																																																																																																	Let Ti2008.5420
																																																																																																		Int:0
																																																																																																		Put Ta2007.5419 Ti2008.5420 d2.5413
																																																																																																Int:1
																																																																																			LetRec solver_rect.2944 m.2945 dirvec.2946 b0.2947 b1.2948 b2.2949 
																																																																																				Let Tb1974.5394
																																																																																					Let Ti1971.5406
																																																																																						Int:0
																																																																																						Let Ti1972.5407
																																																																																							Int:1
																																																																																							Let Ti1973.5408
																																																																																								Int:2
																																																																																								App solver_rect_surface.2935m.2945 dirvec.2946 b0.2947 b1.2948 b2.2949 Ti1971.5406 Ti1972.5407 Ti1973.5408 
																																																																																					Let Ti1975.5395
																																																																																						Int:0
																																																																																						IfEq Tb1974.5394 Ti1975.5395
																																																																																							Let Tb1979.5396
																																																																																								Let Ti1976.5403
																																																																																									Int:1
																																																																																									Let Ti1977.5404
																																																																																										Int:2
																																																																																										Let Ti1978.5405
																																																																																											Int:0
																																																																																											App solver_rect_surface.2935m.2945 dirvec.2946 b1.2948 b2.2949 b0.2947 Ti1976.5403 Ti1977.5404 Ti1978.5405 
																																																																																								Let Ti1980.5397
																																																																																									Int:0
																																																																																									IfEq Tb1979.5396 Ti1980.5397
																																																																																										Let Tb1984.5398
																																																																																											Let Ti1981.5400
																																																																																												Int:2
																																																																																												Let Ti1982.5401
																																																																																													Int:0
																																																																																													Let Ti1983.5402
																																																																																														Int:1
																																																																																														App solver_rect_surface.2935m.2945 dirvec.2946 b2.2949 b0.2947 b1.2948 Ti1981.5400 Ti1982.5401 Ti1983.5402 
																																																																																											Let Ti1985.5399
																																																																																												Int:0
																																																																																												IfEq Tb1984.5398 Ti1985.5399
																																																																																													Int:0
																																																																																													Int:3
																																																																																										Int:2
																																																																																							Int:1
																																																																																				LetRec solver_surface.2950 m.2951 dirvec.2952 b0.2953 b1.2954 b2.2955 
																																																																																					Let abc.5384
																																																																																						App o_param_abc.2857m.2951 
																																																																																						Let d.5385
																																																																																							App veciprod.2816dirvec.2952 abc.5384 
																																																																																							Let Td1964.5386
																																																																																								Float:0.000000
																																																																																								IfLE d.5385 Td1964.5386
																																																																																									Int:0
																																																																																									Let Tu82.5387
																																																																																										Let Ta1965.5388
																																																																																											ExtArray 540
																																																																																											Let Ti1966.5389
																																																																																												Int:0
																																																																																												Let Td1970.5390
																																																																																													Let Td1968.5391
																																																																																														Let Td1967.5393
																																																																																															App veciprod2.2819abc.5384 b0.2953 b1.2954 b2.2955 
																																																																																															App fneg.2746Td1967.5393 
																																																																																														Let Td1969.5392
																																																																																															FReciprocal d.5385
																																																																																															FMul Td1968.5391 Td1969.5392
																																																																																													Put Ta1965.5388 Ti1966.5389 Td1970.5390
																																																																																										Int:1
																																																																																					LetRec quadratic.2956 m.2957 v0.2958 v1.2959 v2.2960 
																																																																																						Let diag_part.5360
																																																																																							Let Td1947.5374
																																																																																								Let Td1943.5378
																																																																																									Let Td1941.5382
																																																																																										App fsqr.2750v0.2958 
																																																																																										Let Td1942.5383
																																																																																											App o_param_a.2851m.2957 
																																																																																											FMul Td1941.5382 Td1942.5383
																																																																																									Let Td1946.5379
																																																																																										Let Td1944.5380
																																																																																											App fsqr.2750v1.2959 
																																																																																											Let Td1945.5381
																																																																																												App o_param_b.2853m.2957 
																																																																																												FMul Td1944.5380 Td1945.5381
																																																																																										FAdd Td1943.5378 Td1946.5379
																																																																																								Let Td1950.5375
																																																																																									Let Td1948.5376
																																																																																										App fsqr.2750v2.2960 
																																																																																										Let Td1949.5377
																																																																																											App o_param_c.2855m.2957 
																																																																																											FMul Td1948.5376 Td1949.5377
																																																																																									FAdd Td1947.5374 Td1950.5375
																																																																																							Let Ti1951.5361
																																																																																								App o_isrot.2849m.2957 
																																																																																								Let Ti1952.5362
																																																																																									Int:0
																																																																																									IfEq Ti1951.5361 Ti1952.5362
																																																																																										Var diag_part.5360
																																																																																										Let Td1960.5363
																																																																																											Let Td1956.5367
																																																																																												Let Td1955.5371
																																																																																													Let Td1953.5372
																																																																																														FMul v1.2959 v2.2960
																																																																																														Let Td1954.5373
																																																																																															App o_param_r1.2875m.2957 
																																																																																															FMul Td1953.5372 Td1954.5373
																																																																																													FAdd diag_part.5360 Td1955.5371
																																																																																												Let Td1959.5368
																																																																																													Let Td1957.5369
																																																																																														FMul v2.2960 v0.2958
																																																																																														Let Td1958.5370
																																																																																															App o_param_r2.2877m.2957 
																																																																																															FMul Td1957.5369 Td1958.5370
																																																																																													FAdd Td1956.5367 Td1959.5368
																																																																																											Let Td1963.5364
																																																																																												Let Td1961.5365
																																																																																													FMul v0.2958 v1.2959
																																																																																													Let Td1962.5366
																																																																																														App o_param_r3.2879m.2957 
																																																																																														FMul Td1961.5365 Td1962.5366
																																																																																												FAdd Td1960.5363 Td1963.5364
																																																																																						LetRec bilinear.2961 m.2962 v0.2963 v1.2964 v2.2965 w0.2966 w1.2967 w2.2968 
																																																																																							Let diag_part.5329
																																																																																								Let Td1917.5350
																																																																																									Let Td1913.5354
																																																																																										Let Td1911.5358
																																																																																											FMul v0.2963 w0.2966
																																																																																											Let Td1912.5359
																																																																																												App o_param_a.2851m.2962 
																																																																																												FMul Td1911.5358 Td1912.5359
																																																																																										Let Td1916.5355
																																																																																											Let Td1914.5356
																																																																																												FMul v1.2964 w1.2967
																																																																																												Let Td1915.5357
																																																																																													App o_param_b.2853m.2962 
																																																																																													FMul Td1914.5356 Td1915.5357
																																																																																											FAdd Td1913.5354 Td1916.5355
																																																																																									Let Td1920.5351
																																																																																										Let Td1918.5352
																																																																																											FMul v2.2965 w2.2968
																																																																																											Let Td1919.5353
																																																																																												App o_param_c.2855m.2962 
																																																																																												FMul Td1918.5352 Td1919.5353
																																																																																										FAdd Td1917.5350 Td1920.5351
																																																																																								Let Ti1921.5330
																																																																																									App o_isrot.2849m.2962 
																																																																																									Let Ti1922.5331
																																																																																										Int:0
																																																																																										IfEq Ti1921.5330 Ti1922.5331
																																																																																											Var diag_part.5329
																																																																																											Let Td1940.5332
																																																																																												Let Td1939.5333
																																																																																													Let Td1933.5334
																																																																																														Let Td1927.5340
																																																																																															Let Td1925.5346
																																																																																																Let Td1923.5348
																																																																																																	FMul v2.2965 w1.2967
																																																																																																	Let Td1924.5349
																																																																																																		FMul v1.2964 w2.2968
																																																																																																		FAdd Td1923.5348 Td1924.5349
																																																																																																Let Td1926.5347
																																																																																																	App o_param_r1.2875m.2962 
																																																																																																	FMul Td1925.5346 Td1926.5347
																																																																																															Let Td1932.5341
																																																																																																Let Td1930.5342
																																																																																																	Let Td1928.5344
																																																																																																		FMul v0.2963 w2.2968
																																																																																																		Let Td1929.5345
																																																																																																			FMul v2.2965 w0.2966
																																																																																																			FAdd Td1928.5344 Td1929.5345
																																																																																																	Let Td1931.5343
																																																																																																		App o_param_r2.2877m.2962 
																																																																																																		FMul Td1930.5342 Td1931.5343
																																																																																																FAdd Td1927.5340 Td1932.5341
																																																																																														Let Td1938.5335
																																																																																															Let Td1936.5336
																																																																																																Let Td1934.5338
																																																																																																	FMul v0.2963 w1.2967
																																																																																																	Let Td1935.5339
																																																																																																		FMul v1.2964 w0.2966
																																																																																																		FAdd Td1934.5338 Td1935.5339
																																																																																																Let Td1937.5337
																																																																																																	App o_param_r3.2879m.2962 
																																																																																																	FMul Td1936.5336 Td1937.5337
																																																																																															FAdd Td1933.5334 Td1938.5335
																																																																																													App fhalf.2748Td1939.5333 
																																																																																												FAdd diag_part.5329 Td1940.5332
																																																																																							LetRec solver_second.2969 m.2970 dirvec.2971 b0.2972 b1.2973 b2.2974 
																																																																																								Let aa.5295
																																																																																									Let Td1886.5323
																																																																																										Let Ti1885.5328
																																																																																											Int:0
																																																																																											Get dirvec.2971 Ti1885.5328
																																																																																										Let Td1888.5324
																																																																																											Let Ti1887.5327
																																																																																												Int:1
																																																																																												Get dirvec.2971 Ti1887.5327
																																																																																											Let Td1890.5325
																																																																																												Let Ti1889.5326
																																																																																													Int:2
																																																																																													Get dirvec.2971 Ti1889.5326
																																																																																												App quadratic.2956m.2970 Td1886.5323 Td1888.5324 Td1890.5325 
																																																																																									Let Td1891.5296
																																																																																										Float:0.000000
																																																																																										IfEq aa.5295 Td1891.5296
																																																																																											Int:0
																																																																																											Let bb.5297
																																																																																												Let Td1893.5317
																																																																																													Let Ti1892.5322
																																																																																														Int:0
																																																																																														Get dirvec.2971 Ti1892.5322
																																																																																													Let Td1895.5318
																																																																																														Let Ti1894.5321
																																																																																															Int:1
																																																																																															Get dirvec.2971 Ti1894.5321
																																																																																														Let Td1897.5319
																																																																																															Let Ti1896.5320
																																																																																																Int:2
																																																																																																Get dirvec.2971 Ti1896.5320
																																																																																															App bilinear.2961m.2970 Td1893.5317 Td1895.5318 Td1897.5319 b0.2972 b1.2973 b2.2974 
																																																																																												Let cc0.5298
																																																																																													App quadratic.2956m.2970 b0.2972 b1.2973 b2.2974 
																																																																																													Let cc.5299
																																																																																														Let Ti1898.5314
																																																																																															App o_form.2843m.2970 
																																																																																															Let Ti1899.5315
																																																																																																Int:3
																																																																																																IfEq Ti1898.5314 Ti1899.5315
																																																																																																	Let Td1900.5316
																																																																																																		Float:1.000000
																																																																																																		FSub cc0.5298 Td1900.5316
																																																																																																	Var cc0.5298
																																																																																														Let d.5300
																																																																																															Let Td1901.5312
																																																																																																App fsqr.2750bb.5297 
																																																																																																Let Td1902.5313
																																																																																																	FMul aa.5295 cc.5299
																																																																																																	FSub Td1901.5312 Td1902.5313
																																																																																															Let Td1903.5301
																																																																																																Float:0.000000
																																																																																																IfLE d.5300 Td1903.5301
																																																																																																	Int:0
																																																																																																	Let sd.5302
																																																																																																		sqrt d.5300
																																																																																																		Let t1.5303
																																																																																																			Let Tb1904.5310
																																																																																																				App o_isinvert.2847m.2970 
																																																																																																				Let Ti1905.5311
																																																																																																					Int:0
																																																																																																					IfEq Tb1904.5310 Ti1905.5311
																																																																																																						App fneg.2746sd.5302 
																																																																																																						Var sd.5302
																																																																																																			Let Tu83.5304
																																																																																																				Let Ta1906.5305
																																																																																																					ExtArray 540
																																																																																																					Let Ti1907.5306
																																																																																																						Int:0
																																																																																																						Let Td1910.5307
																																																																																																							Let Td1908.5308
																																																																																																								FSub t1.5303 bb.5297
																																																																																																								Let Td1909.5309
																																																																																																									FReciprocal aa.5295
																																																																																																									FMul Td1908.5308 Td1909.5309
																																																																																																							Put Ta1906.5305 Ti1907.5306 Td1910.5307
																																																																																																				Int:1
																																																																																								LetRec solver.2975 index.2976 dirvec.2977 org.2978 
																																																																																									Let m.5278
																																																																																										Let Ta1873.5294
																																																																																											ExtArray 48
																																																																																											Get Ta1873.5294 index.2976
																																																																																										Let b0.5279
																																																																																											Let Td1875.5291
																																																																																												Let Ti1874.5293
																																																																																													Int:0
																																																																																													Get org.2978 Ti1874.5293
																																																																																												Let Td1876.5292
																																																																																													App o_param_x.2859m.5278 
																																																																																													FSub Td1875.5291 Td1876.5292
																																																																																											Let b1.5280
																																																																																												Let Td1878.5288
																																																																																													Let Ti1877.5290
																																																																																														Int:1
																																																																																														Get org.2978 Ti1877.5290
																																																																																													Let Td1879.5289
																																																																																														App o_param_y.2861m.5278 
																																																																																														FSub Td1878.5288 Td1879.5289
																																																																																												Let b2.5281
																																																																																													Let Td1881.5285
																																																																																														Let Ti1880.5287
																																																																																															Int:2
																																																																																															Get org.2978 Ti1880.5287
																																																																																														Let Td1882.5286
																																																																																															App o_param_z.2863m.5278 
																																																																																															FSub Td1881.5285 Td1882.5286
																																																																																													Let m_shape.5282
																																																																																														App o_form.2843m.5278 
																																																																																														Let Ti1883.5283
																																																																																															Int:1
																																																																																															IfEq m_shape.5282 Ti1883.5283
																																																																																																App solver_rect.2944m.5278 dirvec.2977 b0.5279 b1.5280 b2.5281 
																																																																																																Let Ti1884.5284
																																																																																																	Int:2
																																																																																																	IfEq m_shape.5282 Ti1884.5284
																																																																																																		App solver_surface.2950m.5278 dirvec.2977 b0.5279 b1.5280 b2.5281 
																																																																																																		App solver_second.2969m.5278 dirvec.2977 b0.5279 b1.5280 b2.5281 
																																																																																									LetRec solver_rect_fast.2979 m.2980 v.2981 dconst.2982 b0.2983 b1.2984 b2.2985 
																																																																																										Let d0.5200
																																																																																											Let Td1803.5273
																																																																																												Let Td1802.5276
																																																																																													Let Ti1801.5277
																																																																																														Int:0
																																																																																														Get dconst.2982 Ti1801.5277
																																																																																													FSub Td1802.5276 b0.2983
																																																																																												Let Td1805.5274
																																																																																													Let Ti1804.5275
																																																																																														Int:1
																																																																																														Get dconst.2982 Ti1804.5275
																																																																																													FMul Td1803.5273 Td1805.5274
																																																																																											Let Ti1821.5201
																																																																																												Let Td1806.5258
																																																																																													App o_param_b.2853m.2980 
																																																																																													Let Td1811.5259
																																																																																														Let Td1810.5269
																																																																																															Let Td1809.5270
																																																																																																Let Td1808.5271
																																																																																																	Let Ti1807.5272
																																																																																																		Int:1
																																																																																																		Get v.2981 Ti1807.5272
																																																																																																	FMul d0.5200 Td1808.5271
																																																																																																FAdd Td1809.5270 b1.2984
																																																																																															fabs Td1810.5269
																																																																																														IfLE Td1806.5258 Td1811.5259
																																																																																															Int:0
																																																																																															Let Td1812.5260
																																																																																																App o_param_c.2855m.2980 
																																																																																																Let Td1817.5261
																																																																																																	Let Td1816.5265
																																																																																																		Let Td1815.5266
																																																																																																			Let Td1814.5267
																																																																																																				Let Ti1813.5268
																																																																																																					Int:2
																																																																																																					Get v.2981 Ti1813.5268
																																																																																																				FMul d0.5200 Td1814.5267
																																																																																																			FAdd Td1815.5266 b2.2985
																																																																																																		fabs Td1816.5265
																																																																																																	IfLE Td1812.5260 Td1817.5261
																																																																																																		Int:0
																																																																																																		Let Td1819.5262
																																																																																																			Let Ti1818.5264
																																																																																																				Int:1
																																																																																																				Get dconst.2982 Ti1818.5264
																																																																																																			Let Td1820.5263
																																																																																																				Float:0.000000
																																																																																																				IfEq Td1819.5262 Td1820.5263
																																																																																																					Int:0
																																																																																																					Int:1
																																																																																												Let Ti1822.5202
																																																																																													Int:0
																																																																																													IfEq Ti1821.5201 Ti1822.5202
																																																																																														Let d1.5206
																																																																																															Let Td1825.5253
																																																																																																Let Td1824.5256
																																																																																																	Let Ti1823.5257
																																																																																																		Int:2
																																																																																																		Get dconst.2982 Ti1823.5257
																																																																																																	FSub Td1824.5256 b1.2984
																																																																																																Let Td1827.5254
																																																																																																	Let Ti1826.5255
																																																																																																		Int:3
																																																																																																		Get dconst.2982 Ti1826.5255
																																																																																																	FMul Td1825.5253 Td1827.5254
																																																																																															Let Ti1843.5207
																																																																																																Let Td1828.5238
																																																																																																	App o_param_a.2851m.2980 
																																																																																																	Let Td1833.5239
																																																																																																		Let Td1832.5249
																																																																																																			Let Td1831.5250
																																																																																																				Let Td1830.5251
																																																																																																					Let Ti1829.5252
																																																																																																						Int:0
																																																																																																						Get v.2981 Ti1829.5252
																																																																																																					FMul d1.5206 Td1830.5251
																																																																																																				FAdd Td1831.5250 b0.2983
																																																																																																			fabs Td1832.5249
																																																																																																		IfLE Td1828.5238 Td1833.5239
																																																																																																			Int:0
																																																																																																			Let Td1834.5240
																																																																																																				App o_param_c.2855m.2980 
																																																																																																				Let Td1839.5241
																																																																																																					Let Td1838.5245
																																																																																																						Let Td1837.5246
																																																																																																							Let Td1836.5247
																																																																																																								Let Ti1835.5248
																																																																																																									Int:2
																																																																																																									Get v.2981 Ti1835.5248
																																																																																																								FMul d1.5206 Td1836.5247
																																																																																																							FAdd Td1837.5246 b2.2985
																																																																																																						fabs Td1838.5245
																																																																																																					IfLE Td1834.5240 Td1839.5241
																																																																																																						Int:0
																																																																																																						Let Td1841.5242
																																																																																																							Let Ti1840.5244
																																																																																																								Int:3
																																																																																																								Get dconst.2982 Ti1840.5244
																																																																																																							Let Td1842.5243
																																																																																																								Float:0.000000
																																																																																																								IfEq Td1841.5242 Td1842.5243
																																																																																																									Int:0
																																																																																																									Int:1
																																																																																																Let Ti1844.5208
																																																																																																	Int:0
																																																																																																	IfEq Ti1843.5207 Ti1844.5208
																																																																																																		Let d2.5212
																																																																																																			Let Td1847.5233
																																																																																																				Let Td1846.5236
																																																																																																					Let Ti1845.5237
																																																																																																						Int:4
																																																																																																						Get dconst.2982 Ti1845.5237
																																																																																																					FSub Td1846.5236 b2.2985
																																																																																																				Let Td1849.5234
																																																																																																					Let Ti1848.5235
																																																																																																						Int:5
																																																																																																						Get dconst.2982 Ti1848.5235
																																																																																																					FMul Td1847.5233 Td1849.5234
																																																																																																			Let Ti1865.5213
																																																																																																				Let Td1850.5218
																																																																																																					App o_param_a.2851m.2980 
																																																																																																					Let Td1855.5219
																																																																																																						Let Td1854.5229
																																																																																																							Let Td1853.5230
																																																																																																								Let Td1852.5231
																																																																																																									Let Ti1851.5232
																																																																																																										Int:0
																																																																																																										Get v.2981 Ti1851.5232
																																																																																																									FMul d2.5212 Td1852.5231
																																																																																																								FAdd Td1853.5230 b0.2983
																																																																																																							fabs Td1854.5229
																																																																																																						IfLE Td1850.5218 Td1855.5219
																																																																																																							Int:0
																																																																																																							Let Td1856.5220
																																																																																																								App o_param_b.2853m.2980 
																																																																																																								Let Td1861.5221
																																																																																																									Let Td1860.5225
																																																																																																										Let Td1859.5226
																																																																																																											Let Td1858.5227
																																																																																																												Let Ti1857.5228
																																																																																																													Int:1
																																																																																																													Get v.2981 Ti1857.5228
																																																																																																												FMul d2.5212 Td1858.5227
																																																																																																											FAdd Td1859.5226 b1.2984
																																																																																																										fabs Td1860.5225
																																																																																																									IfLE Td1856.5220 Td1861.5221
																																																																																																										Int:0
																																																																																																										Let Td1863.5222
																																																																																																											Let Ti1862.5224
																																																																																																												Int:5
																																																																																																												Get dconst.2982 Ti1862.5224
																																																																																																											Let Td1864.5223
																																																																																																												Float:0.000000
																																																																																																												IfEq Td1863.5222 Td1864.5223
																																																																																																													Int:0
																																																																																																													Int:1
																																																																																																				Let Ti1866.5214
																																																																																																					Int:0
																																																																																																					IfEq Ti1865.5213 Ti1866.5214
																																																																																																						Int:0
																																																																																																						Let Tu86.5215
																																																																																																							Let Ta1867.5216
																																																																																																								ExtArray 540
																																																																																																								Let Ti1868.5217
																																																																																																									Int:0
																																																																																																									Put Ta1867.5216 Ti1868.5217 d2.5212
																																																																																																							Int:3
																																																																																																		Let Tu85.5209
																																																																																																			Let Ta1869.5210
																																																																																																				ExtArray 540
																																																																																																				Let Ti1870.5211
																																																																																																					Int:0
																																																																																																					Put Ta1869.5210 Ti1870.5211 d1.5206
																																																																																																			Int:2
																																																																																														Let Tu84.5203
																																																																																															Let Ta1871.5204
																																																																																																ExtArray 540
																																																																																																Let Ti1872.5205
																																																																																																	Int:0
																																																																																																	Put Ta1871.5204 Ti1872.5205 d0.5200
																																																																																															Int:1
																																																																																										LetRec solver_surface_fast.2986 m.2987 dconst.2988 b0.2989 b1.2990 b2.2991 
																																																																																											Let Td1785.5183
																																																																																												Float:0.000000
																																																																																												Let Td1787.5184
																																																																																													Let Ti1786.5199
																																																																																														Int:0
																																																																																														Get dconst.2988 Ti1786.5199
																																																																																													IfLE Td1785.5183 Td1787.5184
																																																																																														Int:0
																																																																																														Let Tu87.5185
																																																																																															Let Ta1788.5186
																																																																																																ExtArray 540
																																																																																																Let Ti1789.5187
																																																																																																	Int:0
																																																																																																	Let Td1800.5188
																																																																																																		Let Td1796.5189
																																																																																																			Let Td1792.5193
																																																																																																				Let Td1791.5197
																																																																																																					Let Ti1790.5198
																																																																																																						Int:1
																																																																																																						Get dconst.2988 Ti1790.5198
																																																																																																					FMul Td1791.5197 b0.2989
																																																																																																				Let Td1795.5194
																																																																																																					Let Td1794.5195
																																																																																																						Let Ti1793.5196
																																																																																																							Int:2
																																																																																																							Get dconst.2988 Ti1793.5196
																																																																																																						FMul Td1794.5195 b1.2990
																																																																																																					FAdd Td1792.5193 Td1795.5194
																																																																																																			Let Td1799.5190
																																																																																																				Let Td1798.5191
																																																																																																					Let Ti1797.5192
																																																																																																						Int:3
																																																																																																						Get dconst.2988 Ti1797.5192
																																																																																																					FMul Td1798.5191 b2.2991
																																																																																																				FAdd Td1796.5189 Td1799.5190
																																																																																																		Put Ta1788.5186 Ti1789.5187 Td1800.5188
																																																																																															Int:1
																																																																																											LetRec solver_second_fast.2992 m.2993 dconst.2994 b0.2995 b1.2996 b2.2997 
																																																																																												Let aa.5143
																																																																																													Let Ti1751.5182
																																																																																														Int:0
																																																																																														Get dconst.2994 Ti1751.5182
																																																																																													Let Td1752.5144
																																																																																														Float:0.000000
																																																																																														IfEq aa.5143 Td1752.5144
																																																																																															Int:0
																																																																																															Let neg_bb.5145
																																																																																																Let Td1759.5172
																																																																																																	Let Td1755.5176
																																																																																																		Let Td1754.5180
																																																																																																			Let Ti1753.5181
																																																																																																				Int:1
																																																																																																				Get dconst.2994 Ti1753.5181
																																																																																																			FMul Td1754.5180 b0.2995
																																																																																																		Let Td1758.5177
																																																																																																			Let Td1757.5178
																																																																																																				Let Ti1756.5179
																																																																																																					Int:2
																																																																																																					Get dconst.2994 Ti1756.5179
																																																																																																				FMul Td1757.5178 b1.2996
																																																																																																			FAdd Td1755.5176 Td1758.5177
																																																																																																	Let Td1762.5173
																																																																																																		Let Td1761.5174
																																																																																																			Let Ti1760.5175
																																																																																																				Int:3
																																																																																																				Get dconst.2994 Ti1760.5175
																																																																																																			FMul Td1761.5174 b2.2997
																																																																																																		FAdd Td1759.5172 Td1762.5173
																																																																																																Let cc0.5146
																																																																																																	App quadratic.2956m.2993 b0.2995 b1.2996 b2.2997 
																																																																																																	Let cc.5147
																																																																																																		Let Ti1763.5169
																																																																																																			App o_form.2843m.2993 
																																																																																																			Let Ti1764.5170
																																																																																																				Int:3
																																																																																																				IfEq Ti1763.5169 Ti1764.5170
																																																																																																					Let Td1765.5171
																																																																																																						Float:1.000000
																																																																																																						FSub cc0.5146 Td1765.5171
																																																																																																					Var cc0.5146
																																																																																																		Let d.5148
																																																																																																			Let Td1766.5167
																																																																																																				App fsqr.2750neg_bb.5145 
																																																																																																				Let Td1767.5168
																																																																																																					FMul aa.5143 cc.5147
																																																																																																					FSub Td1766.5167 Td1767.5168
																																																																																																			Let Td1768.5149
																																																																																																				Float:0.000000
																																																																																																				IfLE d.5148 Td1768.5149
																																																																																																					Int:0
																																																																																																					Let Tu88.5150
																																																																																																						Let Tb1769.5151
																																																																																																							App o_isinvert.2847m.2993 
																																																																																																							Let Ti1770.5152
																																																																																																								Int:0
																																																																																																								IfEq Tb1769.5151 Ti1770.5152
																																																																																																									Let Ta1771.5160
																																																																																																										ExtArray 540
																																																																																																										Let Ti1772.5161
																																																																																																											Int:0
																																																																																																											Let Td1777.5162
																																																																																																												Let Td1774.5163
																																																																																																													Let Td1773.5166
																																																																																																														sqrt d.5148
																																																																																																														FSub neg_bb.5145 Td1773.5166
																																																																																																													Let Td1776.5164
																																																																																																														Let Ti1775.5165
																																																																																																															Int:4
																																																																																																															Get dconst.2994 Ti1775.5165
																																																																																																														FMul Td1774.5163 Td1776.5164
																																																																																																												Put Ta1771.5160 Ti1772.5161 Td1777.5162
																																																																																																									Let Ta1778.5153
																																																																																																										ExtArray 540
																																																																																																										Let Ti1779.5154
																																																																																																											Int:0
																																																																																																											Let Td1784.5155
																																																																																																												Let Td1781.5156
																																																																																																													Let Td1780.5159
																																																																																																														sqrt d.5148
																																																																																																														FAdd neg_bb.5145 Td1780.5159
																																																																																																													Let Td1783.5157
																																																																																																														Let Ti1782.5158
																																																																																																															Int:4
																																																																																																															Get dconst.2994 Ti1782.5158
																																																																																																														FMul Td1781.5156 Td1783.5157
																																																																																																												Put Ta1778.5153 Ti1779.5154 Td1784.5155
																																																																																																						Int:1
																																																																																												LetRec solver_fast.2998 index.2999 dirvec.3000 org.3001 
																																																																																													Let m.5123
																																																																																														Let Ta1738.5142
																																																																																															ExtArray 48
																																																																																															Get Ta1738.5142 index.2999
																																																																																														Let b0.5124
																																																																																															Let Td1740.5139
																																																																																																Let Ti1739.5141
																																																																																																	Int:0
																																																																																																	Get org.3001 Ti1739.5141
																																																																																																Let Td1741.5140
																																																																																																	App o_param_x.2859m.5123 
																																																																																																	FSub Td1740.5139 Td1741.5140
																																																																																															Let b1.5125
																																																																																																Let Td1743.5136
																																																																																																	Let Ti1742.5138
																																																																																																		Int:1
																																																																																																		Get org.3001 Ti1742.5138
																																																																																																	Let Td1744.5137
																																																																																																		App o_param_y.2861m.5123 
																																																																																																		FSub Td1743.5136 Td1744.5137
																																																																																																Let b2.5126
																																																																																																	Let Td1746.5133
																																																																																																		Let Ti1745.5135
																																																																																																			Int:2
																																																																																																			Get org.3001 Ti1745.5135
																																																																																																		Let Td1747.5134
																																																																																																			App o_param_z.2863m.5123 
																																																																																																			FSub Td1746.5133 Td1747.5134
																																																																																																	Let dconsts.5127
																																																																																																		App d_const.2904dirvec.3000 
																																																																																																		Let dconst.5128
																																																																																																			Get dconsts.5127 index.2999
																																																																																																			Let m_shape.5129
																																																																																																				App o_form.2843m.5123 
																																																																																																				Let Ti1748.5130
																																																																																																					Int:1
																																																																																																					IfEq m_shape.5129 Ti1748.5130
																																																																																																						Let Ta1749.5132
																																																																																																							App d_vec.2902dirvec.3000 
																																																																																																							App solver_rect_fast.2979m.5123 Ta1749.5132 dconst.5128 b0.5124 b1.5125 b2.5126 
																																																																																																						Let Ti1750.5131
																																																																																																							Int:2
																																																																																																							IfEq m_shape.5129 Ti1750.5131
																																																																																																								App solver_surface_fast.2986m.5123 dconst.5128 b0.5124 b1.5125 b2.5126 
																																																																																																								App solver_second_fast.2992m.5123 dconst.5128 b0.5124 b1.5125 b2.5126 
																																																																																													LetRec solver_surface_fast2.3002 m.3003 dconst.3004 sconst.3005 b0.3006 b1.3007 b2.3008 
																																																																																														Let Td1728.5112
																																																																																															Float:0.000000
																																																																																															Let Td1730.5113
																																																																																																Let Ti1729.5122
																																																																																																	Int:0
																																																																																																	Get dconst.3004 Ti1729.5122
																																																																																																IfLE Td1728.5112 Td1730.5113
																																																																																																	Int:0
																																																																																																	Let Tu89.5114
																																																																																																		Let Ta1731.5115
																																																																																																			ExtArray 540
																																																																																																			Let Ti1732.5116
																																																																																																				Int:0
																																																																																																				Let Td1737.5117
																																																																																																					Let Td1734.5118
																																																																																																						Let Ti1733.5121
																																																																																																							Int:0
																																																																																																							Get dconst.3004 Ti1733.5121
																																																																																																						Let Td1736.5119
																																																																																																							Let Ti1735.5120
																																																																																																								Int:3
																																																																																																								Get sconst.3005 Ti1735.5120
																																																																																																							FMul Td1734.5118 Td1736.5119
																																																																																																					Put Ta1731.5115 Ti1732.5116 Td1737.5117
																																																																																																		Int:1
																																																																																														LetRec solver_second_fast2.3009 m.3010 dconst.3011 sconst.3012 b0.3013 b1.3014 b2.3015 
																																																																																															Let aa.5075
																																																																																																Let Ti1696.5111
																																																																																																	Int:0
																																																																																																	Get dconst.3011 Ti1696.5111
																																																																																																Let Td1697.5076
																																																																																																	Float:0.000000
																																																																																																	IfEq aa.5075 Td1697.5076
																																																																																																		Int:0
																																																																																																		Let neg_bb.5077
																																																																																																			Let Td1704.5101
																																																																																																				Let Td1700.5105
																																																																																																					Let Td1699.5109
																																																																																																						Let Ti1698.5110
																																																																																																							Int:1
																																																																																																							Get dconst.3011 Ti1698.5110
																																																																																																						FMul Td1699.5109 b0.3013
																																																																																																					Let Td1703.5106
																																																																																																						Let Td1702.5107
																																																																																																							Let Ti1701.5108
																																																																																																								Int:2
																																																																																																								Get dconst.3011 Ti1701.5108
																																																																																																							FMul Td1702.5107 b1.3014
																																																																																																						FAdd Td1700.5105 Td1703.5106
																																																																																																				Let Td1707.5102
																																																																																																					Let Td1706.5103
																																																																																																						Let Ti1705.5104
																																																																																																							Int:3
																																																																																																							Get dconst.3011 Ti1705.5104
																																																																																																						FMul Td1706.5103 b2.3015
																																																																																																					FAdd Td1704.5101 Td1707.5102
																																																																																																			Let cc.5078
																																																																																																				Let Ti1708.5100
																																																																																																					Int:3
																																																																																																					Get sconst.3012 Ti1708.5100
																																																																																																				Let d.5079
																																																																																																					Let Td1709.5098
																																																																																																						App fsqr.2750neg_bb.5077 
																																																																																																						Let Td1710.5099
																																																																																																							FMul aa.5075 cc.5078
																																																																																																							FSub Td1709.5098 Td1710.5099
																																																																																																					Let Td1711.5080
																																																																																																						Float:0.000000
																																																																																																						IfLE d.5079 Td1711.5080
																																																																																																							Int:0
																																																																																																							Let Tu90.5081
																																																																																																								Let Tb1712.5082
																																																																																																									App o_isinvert.2847m.3010 
																																																																																																									Let Ti1713.5083
																																																																																																										Int:0
																																																																																																										IfEq Tb1712.5082 Ti1713.5083
																																																																																																											Let Ta1714.5091
																																																																																																												ExtArray 540
																																																																																																												Let Ti1715.5092
																																																																																																													Int:0
																																																																																																													Let Td1720.5093
																																																																																																														Let Td1717.5094
																																																																																																															Let Td1716.5097
																																																																																																																sqrt d.5079
																																																																																																																FSub neg_bb.5077 Td1716.5097
																																																																																																															Let Td1719.5095
																																																																																																																Let Ti1718.5096
																																																																																																																	Int:4
																																																																																																																	Get dconst.3011 Ti1718.5096
																																																																																																																FMul Td1717.5094 Td1719.5095
																																																																																																														Put Ta1714.5091 Ti1715.5092 Td1720.5093
																																																																																																											Let Ta1721.5084
																																																																																																												ExtArray 540
																																																																																																												Let Ti1722.5085
																																																																																																													Int:0
																																																																																																													Let Td1727.5086
																																																																																																														Let Td1724.5087
																																																																																																															Let Td1723.5090
																																																																																																																sqrt d.5079
																																																																																																																FAdd neg_bb.5077 Td1723.5090
																																																																																																															Let Td1726.5088
																																																																																																																Let Ti1725.5089
																																																																																																																	Int:4
																																																																																																																	Get dconst.3011 Ti1725.5089
																																																																																																																FMul Td1724.5087 Td1726.5088
																																																																																																														Put Ta1721.5084 Ti1722.5085 Td1727.5086
																																																																																																								Int:1
																																																																																															LetRec solver_fast2.3016 index.3017 dirvec.3018 
																																																																																																Let m.5060
																																																																																																	Let Ta1689.5074
																																																																																																		ExtArray 48
																																																																																																		Get Ta1689.5074 index.3017
																																																																																																	Let sconst.5061
																																																																																																		App o_param_ctbl.2881m.5060 
																																																																																																		Let b0.5062
																																																																																																			Let Ti1690.5073
																																																																																																				Int:0
																																																																																																				Get sconst.5061 Ti1690.5073
																																																																																																			Let b1.5063
																																																																																																				Let Ti1691.5072
																																																																																																					Int:1
																																																																																																					Get sconst.5061 Ti1691.5072
																																																																																																				Let b2.5064
																																																																																																					Let Ti1692.5071
																																																																																																						Int:2
																																																																																																						Get sconst.5061 Ti1692.5071
																																																																																																					Let dconsts.5065
																																																																																																						App d_const.2904dirvec.3018 
																																																																																																						Let dconst.5066
																																																																																																							Get dconsts.5065 index.3017
																																																																																																							Let m_shape.5067
																																																																																																								App o_form.2843m.5060 
																																																																																																								Let Ti1693.5068
																																																																																																									Int:1
																																																																																																									IfEq m_shape.5067 Ti1693.5068
																																																																																																										Let Ta1694.5070
																																																																																																											App d_vec.2902dirvec.3018 
																																																																																																											App solver_rect_fast.2979m.5060 Ta1694.5070 dconst.5066 b0.5062 b1.5063 b2.5064 
																																																																																																										Let Ti1695.5069
																																																																																																											Int:2
																																																																																																											IfEq m_shape.5067 Ti1695.5069
																																																																																																												App solver_surface_fast2.3002m.5060 dconst.5066 sconst.5061 b0.5062 b1.5063 b2.5064 
																																																																																																												App solver_second_fast2.3009m.5060 dconst.5066 sconst.5061 b0.5062 b1.5063 b2.5064 
																																																																																																LetRec setup_rect_table.3019 vec.3020 m.3021 
																																																																																																	Let const.4991
																																																																																																		Let Ti1627.5058
																																																																																																			Int:6
																																																																																																			Let Td1628.5059
																																																																																																				Float:0.000000
																																																																																																				ExtFunApp create_float_array Ti1627.5058,Td1628.5059,
																																																																																																		Let Tu96.4992
																																																																																																			Let Td1630.5037
																																																																																																				Let Ti1629.5057
																																																																																																					Int:0
																																																																																																					Get vec.3020 Ti1629.5057
																																																																																																				Let Td1631.5038
																																																																																																					Float:0.000000
																																																																																																					IfEq Td1630.5037 Td1631.5038
																																																																																																						Let Ti1632.5055
																																																																																																							Int:1
																																																																																																							Let Td1633.5056
																																																																																																								Float:0.000000
																																																																																																								Put const.4991 Ti1632.5055 Td1633.5056
																																																																																																						Let Tu91.5039
																																																																																																							Let Ti1634.5046
																																																																																																								Int:0
																																																																																																								Let Td1642.5047
																																																																																																									Let Ti1640.5048
																																																																																																										Let Tb1635.5050
																																																																																																											App o_isinvert.2847m.3021 
																																																																																																											Let Ti1639.5051
																																																																																																												Let Td1636.5052
																																																																																																													Float:0.000000
																																																																																																													Let Td1638.5053
																																																																																																														Let Ti1637.5054
																																																																																																															Int:0
																																																																																																															Get vec.3020 Ti1637.5054
																																																																																																														IfLE Td1636.5052 Td1638.5053
																																																																																																															Int:0
																																																																																																															Int:1
																																																																																																												xor Tb1635.5050 Ti1639.5051
																																																																																																										Let Td1641.5049
																																																																																																											App o_param_a.2851m.3021 
																																																																																																											App fneg_cond.2789Ti1640.5048 Td1641.5049 
																																																																																																									Put const.4991 Ti1634.5046 Td1642.5047
																																																																																																							Let Ti1643.5040
																																																																																																								Int:1
																																																																																																								Let Td1648.5041
																																																																																																									Let Td1644.5042
																																																																																																										Float:1.000000
																																																																																																										Let Td1646.5043
																																																																																																											Let Ti1645.5045
																																																																																																												Int:0
																																																																																																												Get vec.3020 Ti1645.5045
																																																																																																											Let Td1647.5044
																																																																																																												FReciprocal Td1646.5043
																																																																																																												FMul Td1644.5042 Td1647.5044
																																																																																																									Put const.4991 Ti1643.5040 Td1648.5041
																																																																																																			Let Tu95.4993
																																																																																																				Let Td1650.5016
																																																																																																					Let Ti1649.5036
																																																																																																						Int:1
																																																																																																						Get vec.3020 Ti1649.5036
																																																																																																					Let Td1651.5017
																																																																																																						Float:0.000000
																																																																																																						IfEq Td1650.5016 Td1651.5017
																																																																																																							Let Ti1652.5034
																																																																																																								Int:3
																																																																																																								Let Td1653.5035
																																																																																																									Float:0.000000
																																																																																																									Put const.4991 Ti1652.5034 Td1653.5035
																																																																																																							Let Tu92.5018
																																																																																																								Let Ti1654.5025
																																																																																																									Int:2
																																																																																																									Let Td1662.5026
																																																																																																										Let Ti1660.5027
																																																																																																											Let Tb1655.5029
																																																																																																												App o_isinvert.2847m.3021 
																																																																																																												Let Ti1659.5030
																																																																																																													Let Td1656.5031
																																																																																																														Float:0.000000
																																																																																																														Let Td1658.5032
																																																																																																															Let Ti1657.5033
																																																																																																																Int:1
																																																																																																																Get vec.3020 Ti1657.5033
																																																																																																															IfLE Td1656.5031 Td1658.5032
																																																																																																																Int:0
																																																																																																																Int:1
																																																																																																													xor Tb1655.5029 Ti1659.5030
																																																																																																											Let Td1661.5028
																																																																																																												App o_param_b.2853m.3021 
																																																																																																												App fneg_cond.2789Ti1660.5027 Td1661.5028 
																																																																																																										Put const.4991 Ti1654.5025 Td1662.5026
																																																																																																								Let Ti1663.5019
																																																																																																									Int:3
																																																																																																									Let Td1668.5020
																																																																																																										Let Td1664.5021
																																																																																																											Float:1.000000
																																																																																																											Let Td1666.5022
																																																																																																												Let Ti1665.5024
																																																																																																													Int:1
																																																																																																													Get vec.3020 Ti1665.5024
																																																																																																												Let Td1667.5023
																																																																																																													FReciprocal Td1666.5022
																																																																																																													FMul Td1664.5021 Td1667.5023
																																																																																																										Put const.4991 Ti1663.5019 Td1668.5020
																																																																																																				Let Tu94.4994
																																																																																																					Let Td1670.4995
																																																																																																						Let Ti1669.5015
																																																																																																							Int:2
																																																																																																							Get vec.3020 Ti1669.5015
																																																																																																						Let Td1671.4996
																																																																																																							Float:0.000000
																																																																																																							IfEq Td1670.4995 Td1671.4996
																																																																																																								Let Ti1672.5013
																																																																																																									Int:5
																																																																																																									Let Td1673.5014
																																																																																																										Float:0.000000
																																																																																																										Put const.4991 Ti1672.5013 Td1673.5014
																																																																																																								Let Tu93.4997
																																																																																																									Let Ti1674.5004
																																																																																																										Int:4
																																																																																																										Let Td1682.5005
																																																																																																											Let Ti1680.5006
																																																																																																												Let Tb1675.5008
																																																																																																													App o_isinvert.2847m.3021 
																																																																																																													Let Ti1679.5009
																																																																																																														Let Td1676.5010
																																																																																																															Float:0.000000
																																																																																																															Let Td1678.5011
																																																																																																																Let Ti1677.5012
																																																																																																																	Int:2
																																																																																																																	Get vec.3020 Ti1677.5012
																																																																																																																IfLE Td1676.5010 Td1678.5011
																																																																																																																	Int:0
																																																																																																																	Int:1
																																																																																																														xor Tb1675.5008 Ti1679.5009
																																																																																																												Let Td1681.5007
																																																																																																													App o_param_c.2855m.3021 
																																																																																																													App fneg_cond.2789Ti1680.5006 Td1681.5007 
																																																																																																											Put const.4991 Ti1674.5004 Td1682.5005
																																																																																																									Let Ti1683.4998
																																																																																																										Int:5
																																																																																																										Let Td1688.4999
																																																																																																											Let Td1684.5000
																																																																																																												Float:1.000000
																																																																																																												Let Td1686.5001
																																																																																																													Let Ti1685.5003
																																																																																																														Int:2
																																																																																																														Get vec.3020 Ti1685.5003
																																																																																																													Let Td1687.5002
																																																																																																														FReciprocal Td1686.5001
																																																																																																														FMul Td1684.5000 Td1687.5002
																																																																																																											Put const.4991 Ti1683.4998 Td1688.4999
																																																																																																					Var const.4991
																																																																																																	LetRec setup_surface_table.3022 vec.3023 m.3024 
																																																																																																		Let const.4948
																																																																																																			Let Ti1590.4989
																																																																																																				Int:4
																																																																																																				Let Td1591.4990
																																																																																																					Float:0.000000
																																																																																																					ExtFunApp create_float_array Ti1590.4989,Td1591.4990,
																																																																																																			Let d.4949
																																																																																																				Let Td1600.4976
																																																																																																					Let Td1595.4981
																																																																																																						Let Td1593.4986
																																																																																																							Let Ti1592.4988
																																																																																																								Int:0
																																																																																																								Get vec.3023 Ti1592.4988
																																																																																																							Let Td1594.4987
																																																																																																								App o_param_a.2851m.3024 
																																																																																																								FMul Td1593.4986 Td1594.4987
																																																																																																						Let Td1599.4982
																																																																																																							Let Td1597.4983
																																																																																																								Let Ti1596.4985
																																																																																																									Int:1
																																																																																																									Get vec.3023 Ti1596.4985
																																																																																																								Let Td1598.4984
																																																																																																									App o_param_b.2853m.3024 
																																																																																																									FMul Td1597.4983 Td1598.4984
																																																																																																							FAdd Td1595.4981 Td1599.4982
																																																																																																					Let Td1604.4977
																																																																																																						Let Td1602.4978
																																																																																																							Let Ti1601.4980
																																																																																																								Int:2
																																																																																																								Get vec.3023 Ti1601.4980
																																																																																																							Let Td1603.4979
																																																																																																								App o_param_c.2855m.3024 
																																																																																																								FMul Td1602.4978 Td1603.4979
																																																																																																						FAdd Td1600.4976 Td1604.4977
																																																																																																				Let Tu100.4950
																																																																																																					Let Td1605.4951
																																																																																																						Float:0.000000
																																																																																																						IfLE d.4949 Td1605.4951
																																																																																																							Let Ti1606.4974
																																																																																																								Int:0
																																																																																																								Let Td1607.4975
																																																																																																									Float:0.000000
																																																																																																									Put const.4948 Ti1606.4974 Td1607.4975
																																																																																																							Let Tu99.4952
																																																																																																								Let Ti1608.4970
																																																																																																									Int:0
																																																																																																									Let Td1611.4971
																																																																																																										Let Td1609.4972
																																																																																																											Float:-1.000000
																																																																																																											Let Td1610.4973
																																																																																																												FReciprocal d.4949
																																																																																																												FMul Td1609.4972 Td1610.4973
																																																																																																										Put const.4948 Ti1608.4970 Td1611.4971
																																																																																																								Let Tu98.4953
																																																																																																									Let Ti1612.4965
																																																																																																										Int:1
																																																																																																										Let Td1616.4966
																																																																																																											Let Td1615.4967
																																																																																																												Let Td1613.4968
																																																																																																													App o_param_a.2851m.3024 
																																																																																																													Let Td1614.4969
																																																																																																														FReciprocal d.4949
																																																																																																														FMul Td1613.4968 Td1614.4969
																																																																																																												App fneg.2746Td1615.4967 
																																																																																																											Put const.4948 Ti1612.4965 Td1616.4966
																																																																																																									Let Tu97.4954
																																																																																																										Let Ti1617.4960
																																																																																																											Int:2
																																																																																																											Let Td1621.4961
																																																																																																												Let Td1620.4962
																																																																																																													Let Td1618.4963
																																																																																																														App o_param_b.2853m.3024 
																																																																																																														Let Td1619.4964
																																																																																																															FReciprocal d.4949
																																																																																																															FMul Td1618.4963 Td1619.4964
																																																																																																													App fneg.2746Td1620.4962 
																																																																																																												Put const.4948 Ti1617.4960 Td1621.4961
																																																																																																										Let Ti1622.4955
																																																																																																											Int:3
																																																																																																											Let Td1626.4956
																																																																																																												Let Td1625.4957
																																																																																																													Let Td1623.4958
																																																																																																														App o_param_c.2855m.3024 
																																																																																																														Let Td1624.4959
																																																																																																															FReciprocal d.4949
																																																																																																															FMul Td1623.4958 Td1624.4959
																																																																																																													App fneg.2746Td1625.4957 
																																																																																																												Put const.4948 Ti1622.4955 Td1626.4956
																																																																																																					Var const.4948
																																																																																																		LetRec setup_second_table.3025 v.3026 m.3027 
																																																																																																			Let const.4869
																																																																																																				Let Ti1523.4946
																																																																																																					Int:5
																																																																																																					Let Td1524.4947
																																																																																																						Float:0.000000
																																																																																																						ExtFunApp create_float_array Ti1523.4946,Td1524.4947,
																																																																																																				Let aa.4870
																																																																																																					Let Td1526.4940
																																																																																																						Let Ti1525.4945
																																																																																																							Int:0
																																																																																																							Get v.3026 Ti1525.4945
																																																																																																						Let Td1528.4941
																																																																																																							Let Ti1527.4944
																																																																																																								Int:1
																																																																																																								Get v.3026 Ti1527.4944
																																																																																																							Let Td1530.4942
																																																																																																								Let Ti1529.4943
																																																																																																									Int:2
																																																																																																									Get v.3026 Ti1529.4943
																																																																																																								App quadratic.2956m.3027 Td1526.4940 Td1528.4941 Td1530.4942 
																																																																																																					Let c1.4871
																																																																																																						Let Td1534.4936
																																																																																																							Let Td1532.4937
																																																																																																								Let Ti1531.4939
																																																																																																									Int:0
																																																																																																									Get v.3026 Ti1531.4939
																																																																																																								Let Td1533.4938
																																																																																																									App o_param_a.2851m.3027 
																																																																																																									FMul Td1532.4937 Td1533.4938
																																																																																																							App fneg.2746Td1534.4936 
																																																																																																						Let c2.4872
																																																																																																							Let Td1538.4932
																																																																																																								Let Td1536.4933
																																																																																																									Let Ti1535.4935
																																																																																																										Int:1
																																																																																																										Get v.3026 Ti1535.4935
																																																																																																									Let Td1537.4934
																																																																																																										App o_param_b.2853m.3027 
																																																																																																										FMul Td1536.4933 Td1537.4934
																																																																																																								App fneg.2746Td1538.4932 
																																																																																																							Let c3.4873
																																																																																																								Let Td1542.4928
																																																																																																									Let Td1540.4929
																																																																																																										Let Ti1539.4931
																																																																																																											Int:2
																																																																																																											Get v.3026 Ti1539.4931
																																																																																																										Let Td1541.4930
																																																																																																											App o_param_c.2855m.3027 
																																																																																																											FMul Td1540.4929 Td1541.4930
																																																																																																									App fneg.2746Td1542.4928 
																																																																																																								Let Tu107.4874
																																																																																																									Let Ti1543.4927
																																																																																																										Int:0
																																																																																																										Put const.4869 Ti1543.4927 aa.4870
																																																																																																									Let Tu106.4875
																																																																																																										Let Ti1544.4882
																																																																																																											App o_isrot.2849m.3027 
																																																																																																											Let Ti1545.4883
																																																																																																												Int:0
																																																																																																												IfEq Ti1544.4882 Ti1545.4883
																																																																																																													Let Tu104.4922
																																																																																																														Let Ti1546.4926
																																																																																																															Int:1
																																																																																																															Put const.4869 Ti1546.4926 c1.4871
																																																																																																														Let Tu103.4923
																																																																																																															Let Ti1547.4925
																																																																																																																Int:2
																																																																																																																Put const.4869 Ti1547.4925 c2.4872
																																																																																																															Let Ti1548.4924
																																																																																																																Int:3
																																																																																																																Put const.4869 Ti1548.4924 c3.4873
																																																																																																													Let Tu102.4884
																																																																																																														Let Ti1549.4910
																																																																																																															Int:1
																																																																																																															Let Td1560.4911
																																																																																																																Let Td1559.4912
																																																																																																																	Let Td1558.4913
																																																																																																																		Let Td1553.4914
																																																																																																																			Let Td1551.4919
																																																																																																																				Let Ti1550.4921
																																																																																																																					Int:2
																																																																																																																					Get v.3026 Ti1550.4921
																																																																																																																				Let Td1552.4920
																																																																																																																					App o_param_r2.2877m.3027 
																																																																																																																					FMul Td1551.4919 Td1552.4920
																																																																																																																			Let Td1557.4915
																																																																																																																				Let Td1555.4916
																																																																																																																					Let Ti1554.4918
																																																																																																																						Int:1
																																																																																																																						Get v.3026 Ti1554.4918
																																																																																																																					Let Td1556.4917
																																																																																																																						App o_param_r3.2879m.3027 
																																																																																																																						FMul Td1555.4916 Td1556.4917
																																																																																																																				FAdd Td1553.4914 Td1557.4915
																																																																																																																		App fhalf.2748Td1558.4913 
																																																																																																																	FSub c1.4871 Td1559.4912
																																																																																																																Put const.4869 Ti1549.4910 Td1560.4911
																																																																																																														Let Tu101.4885
																																																																																																															Let Ti1561.4898
																																																																																																																Int:2
																																																																																																																Let Td1572.4899
																																																																																																																	Let Td1571.4900
																																																																																																																		Let Td1570.4901
																																																																																																																			Let Td1565.4902
																																																																																																																				Let Td1563.4907
																																																																																																																					Let Ti1562.4909
																																																																																																																						Int:2
																																																																																																																						Get v.3026 Ti1562.4909
																																																																																																																					Let Td1564.4908
																																																																																																																						App o_param_r1.2875m.3027 
																																																																																																																						FMul Td1563.4907 Td1564.4908
																																																																																																																				Let Td1569.4903
																																																																																																																					Let Td1567.4904
																																																																																																																						Let Ti1566.4906
																																																																																																																							Int:0
																																																																																																																							Get v.3026 Ti1566.4906
																																																																																																																						Let Td1568.4905
																																																																																																																							App o_param_r3.2879m.3027 
																																																																																																																							FMul Td1567.4904 Td1568.4905
																																																																																																																					FAdd Td1565.4902 Td1569.4903
																																																																																																																			App fhalf.2748Td1570.4901 
																																																																																																																		FSub c2.4872 Td1571.4900
																																																																																																																	Put const.4869 Ti1561.4898 Td1572.4899
																																																																																																															Let Ti1573.4886
																																																																																																																Int:3
																																																																																																																Let Td1584.4887
																																																																																																																	Let Td1583.4888
																																																																																																																		Let Td1582.4889
																																																																																																																			Let Td1577.4890
																																																																																																																				Let Td1575.4895
																																																																																																																					Let Ti1574.4897
																																																																																																																						Int:1
																																																																																																																						Get v.3026 Ti1574.4897
																																																																																																																					Let Td1576.4896
																																																																																																																						App o_param_r1.2875m.3027 
																																																																																																																						FMul Td1575.4895 Td1576.4896
																																																																																																																				Let Td1581.4891
																																																																																																																					Let Td1579.4892
																																																																																																																						Let Ti1578.4894
																																																																																																																							Int:0
																																																																																																																							Get v.3026 Ti1578.4894
																																																																																																																						Let Td1580.4893
																																																																																																																							App o_param_r2.2877m.3027 
																																																																																																																							FMul Td1579.4892 Td1580.4893
																																																																																																																					FAdd Td1577.4890 Td1581.4891
																																																																																																																			App fhalf.2748Td1582.4889 
																																																																																																																		FSub c3.4873 Td1583.4888
																																																																																																																	Put const.4869 Ti1573.4886 Td1584.4887
																																																																																																										Let Tu105.4876
																																																																																																											Let Td1585.4877
																																																																																																												Float:0.000000
																																																																																																												IfEq aa.4870 Td1585.4877
																																																																																																													Unit
																																																																																																													Let Ti1586.4878
																																																																																																														Int:4
																																																																																																														Let Td1589.4879
																																																																																																															Let Td1587.4880
																																																																																																																Float:1.000000
																																																																																																																Let Td1588.4881
																																																																																																																	FReciprocal aa.4870
																																																																																																																	FMul Td1587.4880 Td1588.4881
																																																																																																															Put const.4869 Ti1586.4878 Td1589.4879
																																																																																																											Var const.4869
																																																																																																			LetRec iter_setup_dirvec_constants.3028 dirvec.3029 index.3030 
																																																																																																				Let Ti1514.4855
																																																																																																					Int:0
																																																																																																					IfLE Ti1514.4855 index.3030
																																																																																																						Let m.4856
																																																																																																							Let Ta1515.4868
																																																																																																								ExtArray 48
																																																																																																								Get Ta1515.4868 index.3030
																																																																																																							Let dconst.4857
																																																																																																								App d_const.2904dirvec.3029 
																																																																																																								Let v.4858
																																																																																																									App d_vec.2902dirvec.3029 
																																																																																																									Let m_shape.4859
																																																																																																										App o_form.2843m.4856 
																																																																																																										Let Tu108.4860
																																																																																																											Let Ti1516.4863
																																																																																																												Int:1
																																																																																																												IfEq m_shape.4859 Ti1516.4863
																																																																																																													Let Ta1517.4867
																																																																																																														App setup_rect_table.3019v.4858 m.4856 
																																																																																																														Put dconst.4857 index.3030 Ta1517.4867
																																																																																																													Let Ti1518.4864
																																																																																																														Int:2
																																																																																																														IfEq m_shape.4859 Ti1518.4864
																																																																																																															Let Ta1519.4866
																																																																																																																App setup_surface_table.3022v.4858 m.4856 
																																																																																																																Put dconst.4857 index.3030 Ta1519.4866
																																																																																																															Let Ta1520.4865
																																																																																																																App setup_second_table.3025v.4858 m.4856 
																																																																																																																Put dconst.4857 index.3030 Ta1520.4865
																																																																																																											Let Ti1522.4861
																																																																																																												Let Ti1521.4862
																																																																																																													Int:1
																																																																																																													Sub index.3030 Ti1521.4862
																																																																																																												App iter_setup_dirvec_constants.3028dirvec.3029 Ti1522.4861 
																																																																																																						Unit
																																																																																																				LetRec setup_dirvec_constants.3031 dirvec.3032 
																																																																																																					Let Ti1513.4850
																																																																																																						Let Ti1511.4851
																																																																																																							Let Ta1509.4853
																																																																																																								ExtArray 0
																																																																																																								Let Ti1510.4854
																																																																																																									Int:0
																																																																																																									Get Ta1509.4853 Ti1510.4854
																																																																																																							Let Ti1512.4852
																																																																																																								Int:1
																																																																																																								Sub Ti1511.4851 Ti1512.4852
																																																																																																						App iter_setup_dirvec_constants.3028dirvec.3032 Ti1513.4850 
																																																																																																					LetRec setup_startp_constants.3033 p.3034 index.3035 
																																																																																																						Let Ti1469.4802
																																																																																																							Int:0
																																																																																																							IfLE Ti1469.4802 index.3035
																																																																																																								Let obj.4803
																																																																																																									Let Ta1470.4849
																																																																																																										ExtArray 48
																																																																																																										Get Ta1470.4849 index.3035
																																																																																																									Let sconst.4804
																																																																																																										App o_param_ctbl.2881obj.4803 
																																																																																																										Let m_shape.4805
																																																																																																											App o_form.2843obj.4803 
																																																																																																											Let Tu112.4806
																																																																																																												Let Ti1471.4844
																																																																																																													Int:0
																																																																																																													Let Td1475.4845
																																																																																																														Let Td1473.4846
																																																																																																															Let Ti1472.4848
																																																																																																																Int:0
																																																																																																																Get p.3034 Ti1472.4848
																																																																																																															Let Td1474.4847
																																																																																																																App o_param_x.2859obj.4803 
																																																																																																																FSub Td1473.4846 Td1474.4847
																																																																																																														Put sconst.4804 Ti1471.4844 Td1475.4845
																																																																																																												Let Tu111.4807
																																																																																																													Let Ti1476.4839
																																																																																																														Int:1
																																																																																																														Let Td1480.4840
																																																																																																															Let Td1478.4841
																																																																																																																Let Ti1477.4843
																																																																																																																	Int:1
																																																																																																																	Get p.3034 Ti1477.4843
																																																																																																																Let Td1479.4842
																																																																																																																	App o_param_y.2861obj.4803 
																																																																																																																	FSub Td1478.4841 Td1479.4842
																																																																																																															Put sconst.4804 Ti1476.4839 Td1480.4840
																																																																																																													Let Tu110.4808
																																																																																																														Let Ti1481.4834
																																																																																																															Int:2
																																																																																																															Let Td1485.4835
																																																																																																																Let Td1483.4836
																																																																																																																	Let Ti1482.4838
																																																																																																																		Int:2
																																																																																																																		Get p.3034 Ti1482.4838
																																																																																																																	Let Td1484.4837
																																																																																																																		App o_param_z.2863obj.4803 
																																																																																																																		FSub Td1483.4836 Td1484.4837
																																																																																																																Put sconst.4804 Ti1481.4834 Td1485.4835
																																																																																																														Let Tu109.4809
																																																																																																															Let Ti1486.4812
																																																																																																																Int:2
																																																																																																																IfEq m_shape.4805 Ti1486.4812
																																																																																																																	Let Ti1487.4825
																																																																																																																		Int:3
																																																																																																																		Let Td1495.4826
																																																																																																																			Let Ta1488.4827
																																																																																																																				App o_param_abc.2857obj.4803 
																																																																																																																				Let Td1490.4828
																																																																																																																					Let Ti1489.4833
																																																																																																																						Int:0
																																																																																																																						Get sconst.4804 Ti1489.4833
																																																																																																																					Let Td1492.4829
																																																																																																																						Let Ti1491.4832
																																																																																																																							Int:1
																																																																																																																							Get sconst.4804 Ti1491.4832
																																																																																																																						Let Td1494.4830
																																																																																																																							Let Ti1493.4831
																																																																																																																								Int:2
																																																																																																																								Get sconst.4804 Ti1493.4831
																																																																																																																							App veciprod2.2819Ta1488.4827 Td1490.4828 Td1492.4829 Td1494.4830 
																																																																																																																			Put sconst.4804 Ti1487.4825 Td1495.4826
																																																																																																																	Let Ti1496.4813
																																																																																																																		Int:2
																																																																																																																		IfLE m_shape.4805 Ti1496.4813
																																																																																																																			Unit
																																																																																																																			Let cc0.4814
																																																																																																																				Let Td1498.4819
																																																																																																																					Let Ti1497.4824
																																																																																																																						Int:0
																																																																																																																						Get sconst.4804 Ti1497.4824
																																																																																																																					Let Td1500.4820
																																																																																																																						Let Ti1499.4823
																																																																																																																							Int:1
																																																																																																																							Get sconst.4804 Ti1499.4823
																																																																																																																						Let Td1502.4821
																																																																																																																							Let Ti1501.4822
																																																																																																																								Int:2
																																																																																																																								Get sconst.4804 Ti1501.4822
																																																																																																																							App quadratic.2956obj.4803 Td1498.4819 Td1500.4820 Td1502.4821 
																																																																																																																				Let Ti1503.4815
																																																																																																																					Int:3
																																																																																																																					Let Td1506.4816
																																																																																																																						Let Ti1504.4817
																																																																																																																							Int:3
																																																																																																																							IfEq m_shape.4805 Ti1504.4817
																																																																																																																								Let Td1505.4818
																																																																																																																									Float:1.000000
																																																																																																																									FSub cc0.4814 Td1505.4818
																																																																																																																								Var cc0.4814
																																																																																																																						Put sconst.4804 Ti1503.4815 Td1506.4816
																																																																																																															Let Ti1508.4810
																																																																																																																Let Ti1507.4811
																																																																																																																	Int:1
																																																																																																																	Sub index.3035 Ti1507.4811
																																																																																																																App setup_startp_constants.3033p.3034 Ti1508.4810 
																																																																																																								Unit
																																																																																																						LetRec setup_startp.3036 p.3037 
																																																																																																							Let Tu113.4795
																																																																																																								Let Ta1463.4801
																																																																																																									ExtArray 648
																																																																																																									App veccpy.2805Ta1463.4801 p.3037 
																																																																																																								Let Ti1468.4796
																																																																																																									Let Ti1466.4797
																																																																																																										Let Ta1464.4799
																																																																																																											ExtArray 0
																																																																																																											Let Ti1465.4800
																																																																																																												Int:0
																																																																																																												Get Ta1464.4799 Ti1465.4800
																																																																																																										Let Ti1467.4798
																																																																																																											Int:1
																																																																																																											Sub Ti1466.4797 Ti1467.4798
																																																																																																									App setup_startp_constants.3033p.3037 Ti1468.4796 
																																																																																																							LetRec is_rect_outside.3038 m.3039 p0.3040 p1.3041 p2.3042 
																																																																																																								Let Ti1459.4785
																																																																																																									Let Td1453.4789
																																																																																																										App o_param_a.2851m.3039 
																																																																																																										Let Td1454.4790
																																																																																																											fabs p0.3040
																																																																																																											IfLE Td1453.4789 Td1454.4790
																																																																																																												Int:0
																																																																																																												Let Td1455.4791
																																																																																																													App o_param_b.2853m.3039 
																																																																																																													Let Td1456.4792
																																																																																																														fabs p1.3041
																																																																																																														IfLE Td1455.4791 Td1456.4792
																																																																																																															Int:0
																																																																																																															Let Td1457.4793
																																																																																																																App o_param_c.2855m.3039 
																																																																																																																Let Td1458.4794
																																																																																																																	fabs p2.3042
																																																																																																																	IfLE Td1457.4793 Td1458.4794
																																																																																																																		Int:0
																																																																																																																		Int:1
																																																																																																									Let Ti1460.4786
																																																																																																										Int:0
																																																																																																										IfEq Ti1459.4785 Ti1460.4786
																																																																																																											Let Tb1461.4787
																																																																																																												App o_isinvert.2847m.3039 
																																																																																																												Let Ti1462.4788
																																																																																																													Int:0
																																																																																																													IfEq Tb1461.4787 Ti1462.4788
																																																																																																														Int:1
																																																																																																														Int:0
																																																																																																											App o_isinvert.2847m.3039 
																																																																																																								LetRec is_plane_outside.3043 m.3044 p0.3045 p1.3046 p2.3047 
																																																																																																									Let w.4778
																																																																																																										Let Ta1447.4784
																																																																																																											App o_param_abc.2857m.3044 
																																																																																																											App veciprod2.2819Ta1447.4784 p0.3045 p1.3046 p2.3047 
																																																																																																										Let Ti1451.4779
																																																																																																											Let Tb1448.4781
																																																																																																												App o_isinvert.2847m.3044 
																																																																																																												Let Ti1450.4782
																																																																																																													Let Td1449.4783
																																																																																																														Float:0.000000
																																																																																																														IfLE Td1449.4783 w.4778
																																																																																																															Int:0
																																																																																																															Int:1
																																																																																																													xor Tb1448.4781 Ti1450.4782
																																																																																																											Let Ti1452.4780
																																																																																																												Int:0
																																																																																																												IfEq Ti1451.4779 Ti1452.4780
																																																																																																													Int:1
																																																																																																													Int:0
																																																																																																									LetRec is_second_outside.3048 m.3049 p0.3050 p1.3051 p2.3052 
																																																																																																										Let w.4768
																																																																																																											App quadratic.2956m.3049 p0.3050 p1.3051 p2.3052 
																																																																																																											Let w2.4769
																																																																																																												Let Ti1439.4775
																																																																																																													App o_form.2843m.3049 
																																																																																																													Let Ti1440.4776
																																																																																																														Int:3
																																																																																																														IfEq Ti1439.4775 Ti1440.4776
																																																																																																															Let Td1441.4777
																																																																																																																Float:1.000000
																																																																																																																FSub w.4768 Td1441.4777
																																																																																																															Var w.4768
																																																																																																												Let Ti1445.4770
																																																																																																													Let Tb1442.4772
																																																																																																														App o_isinvert.2847m.3049 
																																																																																																														Let Ti1444.4773
																																																																																																															Let Td1443.4774
																																																																																																																Float:0.000000
																																																																																																																IfLE Td1443.4774 w2.4769
																																																																																																																	Int:0
																																																																																																																	Int:1
																																																																																																															xor Tb1442.4772 Ti1444.4773
																																																																																																													Let Ti1446.4771
																																																																																																														Int:0
																																																																																																														IfEq Ti1445.4770 Ti1446.4771
																																																																																																															Int:1
																																																																																																															Int:0
																																																																																																										LetRec is_outside.3053 m.3054 q0.3055 q1.3056 q2.3057 
																																																																																																											Let p0.4759
																																																																																																												Let Td1434.4767
																																																																																																													App o_param_x.2859m.3054 
																																																																																																													FSub q0.3055 Td1434.4767
																																																																																																												Let p1.4760
																																																																																																													Let Td1435.4766
																																																																																																														App o_param_y.2861m.3054 
																																																																																																														FSub q1.3056 Td1435.4766
																																																																																																													Let p2.4761
																																																																																																														Let Td1436.4765
																																																																																																															App o_param_z.2863m.3054 
																																																																																																															FSub q2.3057 Td1436.4765
																																																																																																														Let m_shape.4762
																																																																																																															App o_form.2843m.3054 
																																																																																																															Let Ti1437.4763
																																																																																																																Int:1
																																																																																																																IfEq m_shape.4762 Ti1437.4763
																																																																																																																	App is_rect_outside.3038m.3054 p0.4759 p1.4760 p2.4761 
																																																																																																																	Let Ti1438.4764
																																																																																																																		Int:2
																																																																																																																		IfEq m_shape.4762 Ti1438.4764
																																																																																																																			App is_plane_outside.3043m.3054 p0.4759 p1.4760 p2.4761 
																																																																																																																			App is_second_outside.3048m.3054 p0.4759 p1.4760 p2.4761 
																																																																																																											LetRec check_all_inside.3058 ofs.3059 iand.3060 q0.3061 q1.3062 q2.3063 
																																																																																																												Let head.4750
																																																																																																													Get iand.3060 ofs.3059
																																																																																																													Let Ti1427.4751
																																																																																																														Let Ti1426.4758
																																																																																																															Int:1
																																																																																																															Neg Ti1426.4758
																																																																																																														IfEq head.4750 Ti1427.4751
																																																																																																															Int:1
																																																																																																															Let Tb1430.4752
																																																																																																																Let Tt1429.4756
																																																																																																																	Let Ta1428.4757
																																																																																																																		ExtArray 48
																																																																																																																		Get Ta1428.4757 head.4750
																																																																																																																	App is_outside.3053Tt1429.4756 q0.3061 q1.3062 q2.3063 
																																																																																																																Let Ti1431.4753
																																																																																																																	Int:0
																																																																																																																	IfEq Tb1430.4752 Ti1431.4753
																																																																																																																		Let Ti1433.4754
																																																																																																																			Let Ti1432.4755
																																																																																																																				Int:1
																																																																																																																				Add ofs.3059 Ti1432.4755
																																																																																																																			App check_all_inside.3058Ti1433.4754 iand.3060 q0.3061 q1.3062 q2.3063 
																																																																																																																		Int:0
																																																																																																												LetRec shadow_check_and_group.3064 iand_ofs.3065 and_group.3066 
																																																																																																													Let Ti1382.4699
																																																																																																														Get and_group.3066 iand_ofs.3065
																																																																																																														Let Ti1384.4700
																																																																																																															Let Ti1383.4749
																																																																																																																Int:1
																																																																																																																Neg Ti1383.4749
																																																																																																															IfEq Ti1382.4699 Ti1384.4700
																																																																																																																Int:0
																																																																																																																Let obj.4701
																																																																																																																	Get and_group.3066 iand_ofs.3065
																																																																																																																	Let t0.4702
																																																																																																																		Let Tt1385.4747
																																																																																																																			ExtTuple 988
																																																																																																																			Let Ta1386.4748
																																																																																																																				ExtArray 552
																																																																																																																				App solver_fast.2998obj.4701 Tt1385.4747 Ta1386.4748 
																																																																																																																		Let t0p.4703
																																																																																																																			Let Ta1387.4745
																																																																																																																				ExtArray 540
																																																																																																																				Let Ti1388.4746
																																																																																																																					Int:0
																																																																																																																					Get Ta1387.4745 Ti1388.4746
																																																																																																																			Let Ti1391.4704
																																																																																																																				Let Ti1389.4743
																																																																																																																					Int:0
																																																																																																																					IfEq t0.4702 Ti1389.4743
																																																																																																																						Int:0
																																																																																																																						Let Td1390.4744
																																																																																																																							Float:-0.200000
																																																																																																																							IfLE Td1390.4744 t0p.4703
																																																																																																																								Int:0
																																																																																																																								Int:1
																																																																																																																				Let Ti1392.4705
																																																																																																																					Int:0
																																																																																																																					IfEq Ti1391.4704 Ti1392.4705
																																																																																																																						Let Tb1395.4737
																																																																																																																							Let Tt1394.4741
																																																																																																																								Let Ta1393.4742
																																																																																																																									ExtArray 48
																																																																																																																									Get Ta1393.4742 obj.4701
																																																																																																																								App o_isinvert.2847Tt1394.4741 
																																																																																																																							Let Ti1396.4738
																																																																																																																								Int:0
																																																																																																																								IfEq Tb1395.4737 Ti1396.4738
																																																																																																																									Int:0
																																																																																																																									Let Ti1398.4739
																																																																																																																										Let Ti1397.4740
																																																																																																																											Int:1
																																																																																																																											Add iand_ofs.3065 Ti1397.4740
																																																																																																																										App shadow_check_and_group.3064Ti1398.4739 and_group.3066 
																																																																																																																						Let t.4706
																																																																																																																							Let Td1399.4736
																																																																																																																								Float:0.010000
																																																																																																																								FAdd t0p.4703 Td1399.4736
																																																																																																																							Let q0.4707
																																																																																																																								Let Td1403.4729
																																																																																																																									Let Td1402.4733
																																																																																																																										Let Ta1400.4734
																																																																																																																											ExtArray 312
																																																																																																																											Let Ti1401.4735
																																																																																																																												Int:0
																																																																																																																												Get Ta1400.4734 Ti1401.4735
																																																																																																																										FMul Td1402.4733 t.4706
																																																																																																																									Let Td1406.4730
																																																																																																																										Let Ta1404.4731
																																																																																																																											ExtArray 552
																																																																																																																											Let Ti1405.4732
																																																																																																																												Int:0
																																																																																																																												Get Ta1404.4731 Ti1405.4732
																																																																																																																										FAdd Td1403.4729 Td1406.4730
																																																																																																																								Let q1.4708
																																																																																																																									Let Td1410.4722
																																																																																																																										Let Td1409.4726
																																																																																																																											Let Ta1407.4727
																																																																																																																												ExtArray 312
																																																																																																																												Let Ti1408.4728
																																																																																																																													Int:1
																																																																																																																													Get Ta1407.4727 Ti1408.4728
																																																																																																																											FMul Td1409.4726 t.4706
																																																																																																																										Let Td1413.4723
																																																																																																																											Let Ta1411.4724
																																																																																																																												ExtArray 552
																																																																																																																												Let Ti1412.4725
																																																																																																																													Int:1
																																																																																																																													Get Ta1411.4724 Ti1412.4725
																																																																																																																											FAdd Td1410.4722 Td1413.4723
																																																																																																																									Let q2.4709
																																																																																																																										Let Td1417.4715
																																																																																																																											Let Td1416.4719
																																																																																																																												Let Ta1414.4720
																																																																																																																													ExtArray 312
																																																																																																																													Let Ti1415.4721
																																																																																																																														Int:2
																																																																																																																														Get Ta1414.4720 Ti1415.4721
																																																																																																																												FMul Td1416.4719 t.4706
																																																																																																																											Let Td1420.4716
																																																																																																																												Let Ta1418.4717
																																																																																																																													ExtArray 552
																																																																																																																													Let Ti1419.4718
																																																																																																																														Int:2
																																																																																																																														Get Ta1418.4717 Ti1419.4718
																																																																																																																												FAdd Td1417.4715 Td1420.4716
																																																																																																																										Let Tb1422.4710
																																																																																																																											Let Ti1421.4714
																																																																																																																												Int:0
																																																																																																																												App check_all_inside.3058Ti1421.4714 and_group.3066 q0.4707 q1.4708 q2.4709 
																																																																																																																											Let Ti1423.4711
																																																																																																																												Int:0
																																																																																																																												IfEq Tb1422.4710 Ti1423.4711
																																																																																																																													Let Ti1425.4712
																																																																																																																														Let Ti1424.4713
																																																																																																																															Int:1
																																																																																																																															Add iand_ofs.3065 Ti1424.4713
																																																																																																																														App shadow_check_and_group.3064Ti1425.4712 and_group.3066 
																																																																																																																													Int:1
																																																																																																													LetRec shadow_check_one_or_group.3067 ofs.3068 or_group.3069 
																																																																																																														Let head.4689
																																																																																																															Get or_group.3069 ofs.3068
																																																																																																															Let Ti1376.4690
																																																																																																																Let Ti1375.4698
																																																																																																																	Int:1
																																																																																																																	Neg Ti1375.4698
																																																																																																																IfEq head.4689 Ti1376.4690
																																																																																																																	Int:0
																																																																																																																	Let and_group.4691
																																																																																																																		Let Ta1377.4697
																																																																																																																			ExtArray 332
																																																																																																																			Get Ta1377.4697 head.4689
																																																																																																																		Let shadow_p.4692
																																																																																																																			Let Ti1378.4696
																																																																																																																				Int:0
																																																																																																																				App shadow_check_and_group.3064Ti1378.4696 and_group.4691 
																																																																																																																			Let Ti1379.4693
																																																																																																																				Int:0
																																																																																																																				IfEq shadow_p.4692 Ti1379.4693
																																																																																																																					Let Ti1381.4694
																																																																																																																						Let Ti1380.4695
																																																																																																																							Int:1
																																																																																																																							Add ofs.3068 Ti1380.4695
																																																																																																																						App shadow_check_one_or_group.3067Ti1381.4694 or_group.3069 
																																																																																																																					Int:1
																																																																																																														LetRec shadow_check_one_or_matrix.3070 ofs.3071 or_matrix.3072 
																																																																																																															Let head.4663
																																																																																																																Get or_matrix.3072 ofs.3071
																																																																																																																Let range_primitive.4664
																																																																																																																	Let Ti1352.4688
																																																																																																																		Int:0
																																																																																																																		Get head.4663 Ti1352.4688
																																																																																																																	Let Ti1354.4665
																																																																																																																		Let Ti1353.4687
																																																																																																																			Int:1
																																																																																																																			Neg Ti1353.4687
																																																																																																																		IfEq range_primitive.4664 Ti1354.4665
																																																																																																																			Int:0
																																																																																																																			Let Ti1366.4666
																																																																																																																				Let Ti1355.4675
																																																																																																																					Int:99
																																																																																																																					IfEq range_primitive.4664 Ti1355.4675
																																																																																																																						Int:1
																																																																																																																						Let t.4676
																																																																																																																							Let Tt1356.4685
																																																																																																																								ExtTuple 988
																																																																																																																								Let Ta1357.4686
																																																																																																																									ExtArray 552
																																																																																																																									App solver_fast.2998range_primitive.4664 Tt1356.4685 Ta1357.4686 
																																																																																																																							Let Ti1358.4677
																																																																																																																								Int:0
																																																																																																																								IfEq t.4676 Ti1358.4677
																																																																																																																									Int:0
																																																																																																																									Let Td1359.4678
																																																																																																																										Float:-0.100000
																																																																																																																										Let Td1362.4679
																																																																																																																											Let Ta1360.4683
																																																																																																																												ExtArray 540
																																																																																																																												Let Ti1361.4684
																																																																																																																													Int:0
																																																																																																																													Get Ta1360.4683 Ti1361.4684
																																																																																																																											IfLE Td1359.4678 Td1362.4679
																																																																																																																												Int:0
																																																																																																																												Let Tb1364.4680
																																																																																																																													Let Ti1363.4682
																																																																																																																														Int:1
																																																																																																																														App shadow_check_one_or_group.3067Ti1363.4682 head.4663 
																																																																																																																													Let Ti1365.4681
																																																																																																																														Int:0
																																																																																																																														IfEq Tb1364.4680 Ti1365.4681
																																																																																																																															Int:0
																																																																																																																															Int:1
																																																																																																																				Let Ti1367.4667
																																																																																																																					Int:0
																																																																																																																					IfEq Ti1366.4666 Ti1367.4667
																																																																																																																						Let Ti1369.4673
																																																																																																																							Let Ti1368.4674
																																																																																																																								Int:1
																																																																																																																								Add ofs.3071 Ti1368.4674
																																																																																																																							App shadow_check_one_or_matrix.3070Ti1369.4673 or_matrix.3072 
																																																																																																																						Let Tb1371.4668
																																																																																																																							Let Ti1370.4672
																																																																																																																								Int:1
																																																																																																																								App shadow_check_one_or_group.3067Ti1370.4672 head.4663 
																																																																																																																							Let Ti1372.4669
																																																																																																																								Int:0
																																																																																																																								IfEq Tb1371.4668 Ti1372.4669
																																																																																																																									Let Ti1374.4670
																																																																																																																										Let Ti1373.4671
																																																																																																																											Int:1
																																																																																																																											Add ofs.3071 Ti1373.4671
																																																																																																																										App shadow_check_one_or_matrix.3070Ti1374.4670 or_matrix.3072 
																																																																																																																									Int:1
																																																																																																															LetRec solve_each_element.3073 iand_ofs.3074 and_group.3075 dirvec.3076 
																																																																																																																Let iobj.4605
																																																																																																																	Get and_group.3075 iand_ofs.3074
																																																																																																																	Let Ti1306.4606
																																																																																																																		Let Ti1305.4662
																																																																																																																			Int:1
																																																																																																																			Neg Ti1305.4662
																																																																																																																		IfEq iobj.4605 Ti1306.4606
																																																																																																																			Unit
																																																																																																																			Let t0.4607
																																																																																																																				Let Ta1307.4661
																																																																																																																					ExtArray 636
																																																																																																																					App solver.2975iobj.4605 dirvec.3076 Ta1307.4661 
																																																																																																																				Let Ti1308.4608
																																																																																																																					Int:0
																																																																																																																					IfEq t0.4607 Ti1308.4608
																																																																																																																						Let Tb1311.4655
																																																																																																																							Let Tt1310.4659
																																																																																																																								Let Ta1309.4660
																																																																																																																									ExtArray 48
																																																																																																																									Get Ta1309.4660 iobj.4605
																																																																																																																								App o_isinvert.2847Tt1310.4659 
																																																																																																																							Let Ti1312.4656
																																																																																																																								Int:0
																																																																																																																								IfEq Tb1311.4655 Ti1312.4656
																																																																																																																									Unit
																																																																																																																									Let Ti1314.4657
																																																																																																																										Let Ti1313.4658
																																																																																																																											Int:1
																																																																																																																											Add iand_ofs.3074 Ti1313.4658
																																																																																																																										App solve_each_element.3073Ti1314.4657 and_group.3075 dirvec.3076 
																																																																																																																						Let t0p.4609
																																																																																																																							Let Ta1315.4653
																																																																																																																								ExtArray 540
																																																																																																																								Let Ti1316.4654
																																																																																																																									Int:0
																																																																																																																									Get Ta1315.4653 Ti1316.4654
																																																																																																																							Let Tu117.4610
																																																																																																																								Let Td1317.4613
																																																																																																																									Float:0.000000
																																																																																																																									IfLE t0p.4609 Td1317.4613
																																																																																																																										Unit
																																																																																																																										Let Td1320.4614
																																																																																																																											Let Ta1318.4651
																																																																																																																												ExtArray 548
																																																																																																																												Let Ti1319.4652
																																																																																																																													Int:0
																																																																																																																													Get Ta1318.4651 Ti1319.4652
																																																																																																																											IfLE Td1320.4614 t0p.4609
																																																																																																																												Unit
																																																																																																																												Let t.4615
																																																																																																																													Let Td1321.4650
																																																																																																																														Float:0.010000
																																																																																																																														FAdd t0p.4609 Td1321.4650
																																																																																																																													Let q0.4616
																																																																																																																														Let Td1324.4644
																																																																																																																															Let Td1323.4648
																																																																																																																																Let Ti1322.4649
																																																																																																																																	Int:0
																																																																																																																																	Get dirvec.3076 Ti1322.4649
																																																																																																																																FMul Td1323.4648 t.4615
																																																																																																																															Let Td1327.4645
																																																																																																																																Let Ta1325.4646
																																																																																																																																	ExtArray 636
																																																																																																																																	Let Ti1326.4647
																																																																																																																																		Int:0
																																																																																																																																		Get Ta1325.4646 Ti1326.4647
																																																																																																																																FAdd Td1324.4644 Td1327.4645
																																																																																																																														Let q1.4617
																																																																																																																															Let Td1330.4638
																																																																																																																																Let Td1329.4642
																																																																																																																																	Let Ti1328.4643
																																																																																																																																		Int:1
																																																																																																																																		Get dirvec.3076 Ti1328.4643
																																																																																																																																	FMul Td1329.4642 t.4615
																																																																																																																																Let Td1333.4639
																																																																																																																																	Let Ta1331.4640
																																																																																																																																		ExtArray 636
																																																																																																																																		Let Ti1332.4641
																																																																																																																																			Int:1
																																																																																																																																			Get Ta1331.4640 Ti1332.4641
																																																																																																																																	FAdd Td1330.4638 Td1333.4639
																																																																																																																															Let q2.4618
																																																																																																																																Let Td1336.4632
																																																																																																																																	Let Td1335.4636
																																																																																																																																		Let Ti1334.4637
																																																																																																																																			Int:2
																																																																																																																																			Get dirvec.3076 Ti1334.4637
																																																																																																																																		FMul Td1335.4636 t.4615
																																																																																																																																	Let Td1339.4633
																																																																																																																																		Let Ta1337.4634
																																																																																																																																			ExtArray 636
																																																																																																																																			Let Ti1338.4635
																																																																																																																																				Int:2
																																																																																																																																				Get Ta1337.4634 Ti1338.4635
																																																																																																																																		FAdd Td1336.4632 Td1339.4633
																																																																																																																																Let Tb1341.4619
																																																																																																																																	Let Ti1340.4631
																																																																																																																																		Int:0
																																																																																																																																		App check_all_inside.3058Ti1340.4631 and_group.3075 q0.4616 q1.4617 q2.4618 
																																																																																																																																	Let Ti1342.4620
																																																																																																																																		Int:0
																																																																																																																																		IfEq Tb1341.4619 Ti1342.4620
																																																																																																																																			Unit
																																																																																																																																			Let Tu116.4621
																																																																																																																																				Let Ta1343.4629
																																																																																																																																					ExtArray 548
																																																																																																																																					Let Ti1344.4630
																																																																																																																																						Int:0
																																																																																																																																						Put Ta1343.4629 Ti1344.4630 t.4615
																																																																																																																																				Let Tu115.4622
																																																																																																																																					Let Ta1345.4628
																																																																																																																																						ExtArray 552
																																																																																																																																						App vecset.2795Ta1345.4628 q0.4616 q1.4617 q2.4618 
																																																																																																																																					Let Tu114.4623
																																																																																																																																						Let Ta1346.4626
																																																																																																																																							ExtArray 564
																																																																																																																																							Let Ti1347.4627
																																																																																																																																								Int:0
																																																																																																																																								Put Ta1346.4626 Ti1347.4627 iobj.4605
																																																																																																																																						Let Ta1348.4624
																																																																																																																																							ExtArray 544
																																																																																																																																							Let Ti1349.4625
																																																																																																																																								Int:0
																																																																																																																																								Put Ta1348.4624 Ti1349.4625 t0.4607
																																																																																																																								Let Ti1351.4611
																																																																																																																									Let Ti1350.4612
																																																																																																																										Int:1
																																																																																																																										Add iand_ofs.3074 Ti1350.4612
																																																																																																																									App solve_each_element.3073Ti1351.4611 and_group.3075 dirvec.3076 
																																																																																																																LetRec solve_one_or_network.3077 ofs.3078 or_group.3079 dirvec.3080 
																																																																																																																	Let head.4596
																																																																																																																		Get or_group.3079 ofs.3078
																																																																																																																		Let Ti1300.4597
																																																																																																																			Let Ti1299.4604
																																																																																																																				Int:1
																																																																																																																				Neg Ti1299.4604
																																																																																																																			IfEq head.4596 Ti1300.4597
																																																																																																																				Unit
																																																																																																																				Let and_group.4598
																																																																																																																					Let Ta1301.4603
																																																																																																																						ExtArray 332
																																																																																																																						Get Ta1301.4603 head.4596
																																																																																																																					Let Tu118.4599
																																																																																																																						Let Ti1302.4602
																																																																																																																							Int:0
																																																																																																																							App solve_each_element.3073Ti1302.4602 and_group.4598 dirvec.3080 
																																																																																																																						Let Ti1304.4600
																																																																																																																							Let Ti1303.4601
																																																																																																																								Int:1
																																																																																																																								Add ofs.3078 Ti1303.4601
																																																																																																																							App solve_one_or_network.3077Ti1304.4600 or_group.3079 dirvec.3080 
																																																																																																																	LetRec trace_or_matrix.3081 ofs.3082 or_network.3083 dirvec.3084 
																																																																																																																		Let head.4576
																																																																																																																			Get or_network.3083 ofs.3082
																																																																																																																			Let range_primitive.4577
																																																																																																																				Let Ti1284.4595
																																																																																																																					Int:0
																																																																																																																					Get head.4576 Ti1284.4595
																																																																																																																				Let Ti1286.4578
																																																																																																																					Let Ti1285.4594
																																																																																																																						Int:1
																																																																																																																						Neg Ti1285.4594
																																																																																																																					IfEq range_primitive.4577 Ti1286.4578
																																																																																																																						Unit
																																																																																																																						Let Tu119.4579
																																																																																																																							Let Ti1287.4582
																																																																																																																								Int:99
																																																																																																																								IfEq range_primitive.4577 Ti1287.4582
																																																																																																																									Let Ti1288.4593
																																																																																																																										Int:1
																																																																																																																										App solve_one_or_network.3077Ti1288.4593 head.4576 dirvec.3084 
																																																																																																																									Let t.4583
																																																																																																																										Let Ta1289.4592
																																																																																																																											ExtArray 636
																																																																																																																											App solver.2975range_primitive.4577 dirvec.3084 Ta1289.4592 
																																																																																																																										Let Ti1290.4584
																																																																																																																											Int:0
																																																																																																																											IfEq t.4583 Ti1290.4584
																																																																																																																												Unit
																																																																																																																												Let tp.4585
																																																																																																																													Let Ta1291.4590
																																																																																																																														ExtArray 540
																																																																																																																														Let Ti1292.4591
																																																																																																																															Int:0
																																																																																																																															Get Ta1291.4590 Ti1292.4591
																																																																																																																													Let Td1295.4586
																																																																																																																														Let Ta1293.4588
																																																																																																																															ExtArray 548
																																																																																																																															Let Ti1294.4589
																																																																																																																																Int:0
																																																																																																																																Get Ta1293.4588 Ti1294.4589
																																																																																																																														IfLE Td1295.4586 tp.4585
																																																																																																																															Unit
																																																																																																																															Let Ti1296.4587
																																																																																																																																Int:1
																																																																																																																																App solve_one_or_network.3077Ti1296.4587 head.4576 dirvec.3084 
																																																																																																																							Let Ti1298.4580
																																																																																																																								Let Ti1297.4581
																																																																																																																									Int:1
																																																																																																																									Add ofs.3082 Ti1297.4581
																																																																																																																								App trace_or_matrix.3081Ti1298.4580 or_network.3083 dirvec.3084 
																																																																																																																		LetRec judge_intersection.3085 dirvec.3086 
																																																																																																																			Let Tu121.4562
																																																																																																																				Let Ta1273.4573
																																																																																																																					ExtArray 548
																																																																																																																					Let Ti1274.4574
																																																																																																																						Int:0
																																																																																																																						Let Td1275.4575
																																																																																																																							Float:1000000000.000000
																																																																																																																							Put Ta1273.4573 Ti1274.4574 Td1275.4575
																																																																																																																				Let Tu120.4563
																																																																																																																					Let Ti1276.4569
																																																																																																																						Int:0
																																																																																																																						Let Ta1279.4570
																																																																																																																							Let Ta1277.4571
																																																																																																																								ExtArray 536
																																																																																																																								Let Ti1278.4572
																																																																																																																									Int:0
																																																																																																																									Get Ta1277.4571 Ti1278.4572
																																																																																																																							App trace_or_matrix.3081Ti1276.4569 Ta1279.4570 dirvec.3086 
																																																																																																																					Let t.4564
																																																																																																																						Let Ta1280.4567
																																																																																																																							ExtArray 548
																																																																																																																							Let Ti1281.4568
																																																																																																																								Int:0
																																																																																																																								Get Ta1280.4567 Ti1281.4568
																																																																																																																						Let Td1282.4565
																																																																																																																							Float:-0.100000
																																																																																																																							IfLE t.4564 Td1282.4565
																																																																																																																								Int:0
																																																																																																																								Let Td1283.4566
																																																																																																																									Float:100000000.000000
																																																																																																																									IfLE Td1283.4566 t.4564
																																																																																																																										Int:0
																																																																																																																										Int:1
																																																																																																																			LetRec solve_each_element_fast.3087 iand_ofs.3088 and_group.3089 dirvec.3090 
																																																																																																																				Let vec.4504
																																																																																																																					App d_vec.2902dirvec.3090 
																																																																																																																					Let iobj.4505
																																																																																																																						Get and_group.3089 iand_ofs.3088
																																																																																																																						Let Ti1228.4506
																																																																																																																							Let Ti1227.4561
																																																																																																																								Int:1
																																																																																																																								Neg Ti1227.4561
																																																																																																																							IfEq iobj.4505 Ti1228.4506
																																																																																																																								Unit
																																																																																																																								Let t0.4507
																																																																																																																									App solver_fast2.3016iobj.4505 dirvec.3090 
																																																																																																																									Let Ti1229.4508
																																																																																																																										Int:0
																																																																																																																										IfEq t0.4507 Ti1229.4508
																																																																																																																											Let Tb1232.4555
																																																																																																																												Let Tt1231.4559
																																																																																																																													Let Ta1230.4560
																																																																																																																														ExtArray 48
																																																																																																																														Get Ta1230.4560 iobj.4505
																																																																																																																													App o_isinvert.2847Tt1231.4559 
																																																																																																																												Let Ti1233.4556
																																																																																																																													Int:0
																																																																																																																													IfEq Tb1232.4555 Ti1233.4556
																																																																																																																														Unit
																																																																																																																														Let Ti1235.4557
																																																																																																																															Let Ti1234.4558
																																																																																																																																Int:1
																																																																																																																																Add iand_ofs.3088 Ti1234.4558
																																																																																																																															App solve_each_element_fast.3087Ti1235.4557 and_group.3089 dirvec.3090 
																																																																																																																											Let t0p.4509
																																																																																																																												Let Ta1236.4553
																																																																																																																													ExtArray 540
																																																																																																																													Let Ti1237.4554
																																																																																																																														Int:0
																																																																																																																														Get Ta1236.4553 Ti1237.4554
																																																																																																																												Let Tu125.4510
																																																																																																																													Let Td1238.4513
																																																																																																																														Float:0.000000
																																																																																																																														IfLE t0p.4509 Td1238.4513
																																																																																																																															Unit
																																																																																																																															Let Td1241.4514
																																																																																																																																Let Ta1239.4551
																																																																																																																																	ExtArray 548
																																																																																																																																	Let Ti1240.4552
																																																																																																																																		Int:0
																																																																																																																																		Get Ta1239.4551 Ti1240.4552
																																																																																																																																IfLE Td1241.4514 t0p.4509
																																																																																																																																	Unit
																																																																																																																																	Let t.4515
																																																																																																																																		Let Td1242.4550
																																																																																																																																			Float:0.010000
																																																																																																																																			FAdd t0p.4509 Td1242.4550
																																																																																																																																		Let q0.4516
																																																																																																																																			Let Td1245.4544
																																																																																																																																				Let Td1244.4548
																																																																																																																																					Let Ti1243.4549
																																																																																																																																						Int:0
																																																																																																																																						Get vec.4504 Ti1243.4549
																																																																																																																																					FMul Td1244.4548 t.4515
																																																																																																																																				Let Td1248.4545
																																																																																																																																					Let Ta1246.4546
																																																																																																																																						ExtArray 648
																																																																																																																																						Let Ti1247.4547
																																																																																																																																							Int:0
																																																																																																																																							Get Ta1246.4546 Ti1247.4547
																																																																																																																																					FAdd Td1245.4544 Td1248.4545
																																																																																																																																			Let q1.4517
																																																																																																																																				Let Td1251.4538
																																																																																																																																					Let Td1250.4542
																																																																																																																																						Let Ti1249.4543
																																																																																																																																							Int:1
																																																																																																																																							Get vec.4504 Ti1249.4543
																																																																																																																																						FMul Td1250.4542 t.4515
																																																																																																																																					Let Td1254.4539
																																																																																																																																						Let Ta1252.4540
																																																																																																																																							ExtArray 648
																																																																																																																																							Let Ti1253.4541
																																																																																																																																								Int:1
																																																																																																																																								Get Ta1252.4540 Ti1253.4541
																																																																																																																																						FAdd Td1251.4538 Td1254.4539
																																																																																																																																				Let q2.4518
																																																																																																																																					Let Td1257.4532
																																																																																																																																						Let Td1256.4536
																																																																																																																																							Let Ti1255.4537
																																																																																																																																								Int:2
																																																																																																																																								Get vec.4504 Ti1255.4537
																																																																																																																																							FMul Td1256.4536 t.4515
																																																																																																																																						Let Td1260.4533
																																																																																																																																							Let Ta1258.4534
																																																																																																																																								ExtArray 648
																																																																																																																																								Let Ti1259.4535
																																																																																																																																									Int:2
																																																																																																																																									Get Ta1258.4534 Ti1259.4535
																																																																																																																																							FAdd Td1257.4532 Td1260.4533
																																																																																																																																					Let Tb1262.4519
																																																																																																																																						Let Ti1261.4531
																																																																																																																																							Int:0
																																																																																																																																							App check_all_inside.3058Ti1261.4531 and_group.3089 q0.4516 q1.4517 q2.4518 
																																																																																																																																						Let Ti1263.4520
																																																																																																																																							Int:0
																																																																																																																																							IfEq Tb1262.4519 Ti1263.4520
																																																																																																																																								Unit
																																																																																																																																								Let Tu124.4521
																																																																																																																																									Let Ta1264.4529
																																																																																																																																										ExtArray 548
																																																																																																																																										Let Ti1265.4530
																																																																																																																																											Int:0
																																																																																																																																											Put Ta1264.4529 Ti1265.4530 t.4515
																																																																																																																																									Let Tu123.4522
																																																																																																																																										Let Ta1266.4528
																																																																																																																																											ExtArray 552
																																																																																																																																											App vecset.2795Ta1266.4528 q0.4516 q1.4517 q2.4518 
																																																																																																																																										Let Tu122.4523
																																																																																																																																											Let Ta1267.4526
																																																																																																																																												ExtArray 564
																																																																																																																																												Let Ti1268.4527
																																																																																																																																													Int:0
																																																																																																																																													Put Ta1267.4526 Ti1268.4527 iobj.4505
																																																																																																																																											Let Ta1269.4524
																																																																																																																																												ExtArray 544
																																																																																																																																												Let Ti1270.4525
																																																																																																																																													Int:0
																																																																																																																																													Put Ta1269.4524 Ti1270.4525 t0.4507
																																																																																																																													Let Ti1272.4511
																																																																																																																														Let Ti1271.4512
																																																																																																																															Int:1
																																																																																																																															Add iand_ofs.3088 Ti1271.4512
																																																																																																																														App solve_each_element_fast.3087Ti1272.4511 and_group.3089 dirvec.3090 
																																																																																																																				LetRec solve_one_or_network_fast.3091 ofs.3092 or_group.3093 dirvec.3094 
																																																																																																																					Let head.4495
																																																																																																																						Get or_group.3093 ofs.3092
																																																																																																																						Let Ti1222.4496
																																																																																																																							Let Ti1221.4503
																																																																																																																								Int:1
																																																																																																																								Neg Ti1221.4503
																																																																																																																							IfEq head.4495 Ti1222.4496
																																																																																																																								Unit
																																																																																																																								Let and_group.4497
																																																																																																																									Let Ta1223.4502
																																																																																																																										ExtArray 332
																																																																																																																										Get Ta1223.4502 head.4495
																																																																																																																									Let Tu126.4498
																																																																																																																										Let Ti1224.4501
																																																																																																																											Int:0
																																																																																																																											App solve_each_element_fast.3087Ti1224.4501 and_group.4497 dirvec.3094 
																																																																																																																										Let Ti1226.4499
																																																																																																																											Let Ti1225.4500
																																																																																																																												Int:1
																																																																																																																												Add ofs.3092 Ti1225.4500
																																																																																																																											App solve_one_or_network_fast.3091Ti1226.4499 or_group.3093 dirvec.3094 
																																																																																																																					LetRec trace_or_matrix_fast.3095 ofs.3096 or_network.3097 dirvec.3098 
																																																																																																																						Let head.4476
																																																																																																																							Get or_network.3097 ofs.3096
																																																																																																																							Let range_primitive.4477
																																																																																																																								Let Ti1207.4494
																																																																																																																									Int:0
																																																																																																																									Get head.4476 Ti1207.4494
																																																																																																																								Let Ti1209.4478
																																																																																																																									Let Ti1208.4493
																																																																																																																										Int:1
																																																																																																																										Neg Ti1208.4493
																																																																																																																									IfEq range_primitive.4477 Ti1209.4478
																																																																																																																										Unit
																																																																																																																										Let Tu127.4479
																																																																																																																											Let Ti1210.4482
																																																																																																																												Int:99
																																																																																																																												IfEq range_primitive.4477 Ti1210.4482
																																																																																																																													Let Ti1211.4492
																																																																																																																														Int:1
																																																																																																																														App solve_one_or_network_fast.3091Ti1211.4492 head.4476 dirvec.3098 
																																																																																																																													Let t.4483
																																																																																																																														App solver_fast2.3016range_primitive.4477 dirvec.3098 
																																																																																																																														Let Ti1212.4484
																																																																																																																															Int:0
																																																																																																																															IfEq t.4483 Ti1212.4484
																																																																																																																																Unit
																																																																																																																																Let tp.4485
																																																																																																																																	Let Ta1213.4490
																																																																																																																																		ExtArray 540
																																																																																																																																		Let Ti1214.4491
																																																																																																																																			Int:0
																																																																																																																																			Get Ta1213.4490 Ti1214.4491
																																																																																																																																	Let Td1217.4486
																																																																																																																																		Let Ta1215.4488
																																																																																																																																			ExtArray 548
																																																																																																																																			Let Ti1216.4489
																																																																																																																																				Int:0
																																																																																																																																				Get Ta1215.4488 Ti1216.4489
																																																																																																																																		IfLE Td1217.4486 tp.4485
																																																																																																																																			Unit
																																																																																																																																			Let Ti1218.4487
																																																																																																																																				Int:1
																																																																																																																																				App solve_one_or_network_fast.3091Ti1218.4487 head.4476 dirvec.3098 
																																																																																																																											Let Ti1220.4480
																																																																																																																												Let Ti1219.4481
																																																																																																																													Int:1
																																																																																																																													Add ofs.3096 Ti1219.4481
																																																																																																																												App trace_or_matrix_fast.3095Ti1220.4480 or_network.3097 dirvec.3098 
																																																																																																																						LetRec judge_intersection_fast.3099 dirvec.3100 
																																																																																																																							Let Tu129.4462
																																																																																																																								Let Ta1196.4473
																																																																																																																									ExtArray 548
																																																																																																																									Let Ti1197.4474
																																																																																																																										Int:0
																																																																																																																										Let Td1198.4475
																																																																																																																											Float:1000000000.000000
																																																																																																																											Put Ta1196.4473 Ti1197.4474 Td1198.4475
																																																																																																																								Let Tu128.4463
																																																																																																																									Let Ti1199.4469
																																																																																																																										Int:0
																																																																																																																										Let Ta1202.4470
																																																																																																																											Let Ta1200.4471
																																																																																																																												ExtArray 536
																																																																																																																												Let Ti1201.4472
																																																																																																																													Int:0
																																																																																																																													Get Ta1200.4471 Ti1201.4472
																																																																																																																											App trace_or_matrix_fast.3095Ti1199.4469 Ta1202.4470 dirvec.3100 
																																																																																																																									Let t.4464
																																																																																																																										Let Ta1203.4467
																																																																																																																											ExtArray 548
																																																																																																																											Let Ti1204.4468
																																																																																																																												Int:0
																																																																																																																												Get Ta1203.4467 Ti1204.4468
																																																																																																																										Let Td1205.4465
																																																																																																																											Float:-0.100000
																																																																																																																											IfLE t.4464 Td1205.4465
																																																																																																																												Int:0
																																																																																																																												Let Td1206.4466
																																																																																																																													Float:100000000.000000
																																																																																																																													IfLE Td1206.4466 t.4464
																																																																																																																														Int:0
																																																																																																																														Int:1
																																																																																																																							LetRec get_nvector_rect.3101 dirvec.3102 
																																																																																																																								Let rectside.4449
																																																																																																																									Let Ta1185.4460
																																																																																																																										ExtArray 544
																																																																																																																										Let Ti1186.4461
																																																																																																																											Int:0
																																																																																																																											Get Ta1185.4460 Ti1186.4461
																																																																																																																									Let Tu130.4450
																																																																																																																										Let Ta1187.4459
																																																																																																																											ExtArray 568
																																																																																																																											App vecbzero.2803Ta1187.4459 
																																																																																																																										Let Ta1188.4451
																																																																																																																											ExtArray 568
																																																																																																																											Let Ti1190.4452
																																																																																																																												Let Ti1189.4458
																																																																																																																													Int:1
																																																																																																																													Sub rectside.4449 Ti1189.4458
																																																																																																																												Let Td1195.4453
																																																																																																																													Let Td1194.4454
																																																																																																																														Let Td1193.4455
																																																																																																																															Let Ti1192.4456
																																																																																																																																Let Ti1191.4457
																																																																																																																																	Int:1
																																																																																																																																	Sub rectside.4449 Ti1191.4457
																																																																																																																																Get dirvec.3102 Ti1192.4456
																																																																																																																															App sgn.2787Td1193.4455 
																																																																																																																														App fneg.2746Td1194.4454 
																																																																																																																													Put Ta1188.4451 Ti1190.4452 Td1195.4453
																																																																																																																								LetRec get_nvector_plane.3103 m.3104 
																																																																																																																									Let Tu132.4435
																																																																																																																										Let Ta1173.4445
																																																																																																																											ExtArray 568
																																																																																																																											Let Ti1174.4446
																																																																																																																												Int:0
																																																																																																																												Let Td1176.4447
																																																																																																																													Let Td1175.4448
																																																																																																																														App o_param_a.2851m.3104 
																																																																																																																														App fneg.2746Td1175.4448 
																																																																																																																													Put Ta1173.4445 Ti1174.4446 Td1176.4447
																																																																																																																										Let Tu131.4436
																																																																																																																											Let Ta1177.4441
																																																																																																																												ExtArray 568
																																																																																																																												Let Ti1178.4442
																																																																																																																													Int:1
																																																																																																																													Let Td1180.4443
																																																																																																																														Let Td1179.4444
																																																																																																																															App o_param_b.2853m.3104 
																																																																																																																															App fneg.2746Td1179.4444 
																																																																																																																														Put Ta1177.4441 Ti1178.4442 Td1180.4443
																																																																																																																											Let Ta1181.4437
																																																																																																																												ExtArray 568
																																																																																																																												Let Ti1182.4438
																																																																																																																													Int:2
																																																																																																																													Let Td1184.4439
																																																																																																																														Let Td1183.4440
																																																																																																																															App o_param_c.2855m.3104 
																																																																																																																															App fneg.2746Td1183.4440 
																																																																																																																														Put Ta1181.4437 Ti1182.4438 Td1184.4439
																																																																																																																									LetRec get_nvector_second.3105 m.3106 
																																																																																																																										Let p0.4372
																																																																																																																											Let Td1123.4431
																																																																																																																												Let Ta1121.4433
																																																																																																																													ExtArray 552
																																																																																																																													Let Ti1122.4434
																																																																																																																														Int:0
																																																																																																																														Get Ta1121.4433 Ti1122.4434
																																																																																																																												Let Td1124.4432
																																																																																																																													App o_param_x.2859m.3106 
																																																																																																																													FSub Td1123.4431 Td1124.4432
																																																																																																																											Let p1.4373
																																																																																																																												Let Td1127.4427
																																																																																																																													Let Ta1125.4429
																																																																																																																														ExtArray 552
																																																																																																																														Let Ti1126.4430
																																																																																																																															Int:1
																																																																																																																															Get Ta1125.4429 Ti1126.4430
																																																																																																																													Let Td1128.4428
																																																																																																																														App o_param_y.2861m.3106 
																																																																																																																														FSub Td1127.4427 Td1128.4428
																																																																																																																												Let p2.4374
																																																																																																																													Let Td1131.4423
																																																																																																																														Let Ta1129.4425
																																																																																																																															ExtArray 552
																																																																																																																															Let Ti1130.4426
																																																																																																																																Int:2
																																																																																																																																Get Ta1129.4425 Ti1130.4426
																																																																																																																														Let Td1132.4424
																																																																																																																															App o_param_z.2863m.3106 
																																																																																																																															FSub Td1131.4423 Td1132.4424
																																																																																																																													Let d0.4375
																																																																																																																														Let Td1133.4422
																																																																																																																															App o_param_a.2851m.3106 
																																																																																																																															FMul p0.4372 Td1133.4422
																																																																																																																														Let d1.4376
																																																																																																																															Let Td1134.4421
																																																																																																																																App o_param_b.2853m.3106 
																																																																																																																																FMul p1.4373 Td1134.4421
																																																																																																																															Let d2.4377
																																																																																																																																Let Td1135.4420
																																																																																																																																	App o_param_c.2855m.3106 
																																																																																																																																	FMul p2.4374 Td1135.4420
																																																																																																																																Let Tu137.4378
																																																																																																																																	Let Ti1136.4381
																																																																																																																																		App o_isrot.2849m.3106 
																																																																																																																																		Let Ti1137.4382
																																																																																																																																			Int:0
																																																																																																																																			IfEq Ti1136.4381 Ti1137.4382
																																																																																																																																				Let Tu134.4412
																																																																																																																																					Let Ta1138.4418
																																																																																																																																						ExtArray 568
																																																																																																																																						Let Ti1139.4419
																																																																																																																																							Int:0
																																																																																																																																							Put Ta1138.4418 Ti1139.4419 d0.4375
																																																																																																																																					Let Tu133.4413
																																																																																																																																						Let Ta1140.4416
																																																																																																																																							ExtArray 568
																																																																																																																																							Let Ti1141.4417
																																																																																																																																								Int:1
																																																																																																																																								Put Ta1140.4416 Ti1141.4417 d1.4376
																																																																																																																																						Let Ta1142.4414
																																																																																																																																							ExtArray 568
																																																																																																																																							Let Ti1143.4415
																																																																																																																																								Int:2
																																																																																																																																								Put Ta1142.4414 Ti1143.4415 d2.4377
																																																																																																																																				Let Tu136.4383
																																																																																																																																					Let Ta1144.4403
																																																																																																																																						ExtArray 568
																																																																																																																																						Let Ti1145.4404
																																																																																																																																							Int:0
																																																																																																																																							Let Td1152.4405
																																																																																																																																								Let Td1151.4406
																																																																																																																																									Let Td1150.4407
																																																																																																																																										Let Td1147.4408
																																																																																																																																											Let Td1146.4411
																																																																																																																																												App o_param_r3.2879m.3106 
																																																																																																																																												FMul p1.4373 Td1146.4411
																																																																																																																																											Let Td1149.4409
																																																																																																																																												Let Td1148.4410
																																																																																																																																													App o_param_r2.2877m.3106 
																																																																																																																																													FMul p2.4374 Td1148.4410
																																																																																																																																												FAdd Td1147.4408 Td1149.4409
																																																																																																																																										App fhalf.2748Td1150.4407 
																																																																																																																																									FAdd d0.4375 Td1151.4406
																																																																																																																																								Put Ta1144.4403 Ti1145.4404 Td1152.4405
																																																																																																																																					Let Tu135.4384
																																																																																																																																						Let Ta1153.4394
																																																																																																																																							ExtArray 568
																																																																																																																																							Let Ti1154.4395
																																																																																																																																								Int:1
																																																																																																																																								Let Td1161.4396
																																																																																																																																									Let Td1160.4397
																																																																																																																																										Let Td1159.4398
																																																																																																																																											Let Td1156.4399
																																																																																																																																												Let Td1155.4402
																																																																																																																																													App o_param_r3.2879m.3106 
																																																																																																																																													FMul p0.4372 Td1155.4402
																																																																																																																																												Let Td1158.4400
																																																																																																																																													Let Td1157.4401
																																																																																																																																														App o_param_r1.2875m.3106 
																																																																																																																																														FMul p2.4374 Td1157.4401
																																																																																																																																													FAdd Td1156.4399 Td1158.4400
																																																																																																																																											App fhalf.2748Td1159.4398 
																																																																																																																																										FAdd d1.4376 Td1160.4397
																																																																																																																																									Put Ta1153.4394 Ti1154.4395 Td1161.4396
																																																																																																																																						Let Ta1162.4385
																																																																																																																																							ExtArray 568
																																																																																																																																							Let Ti1163.4386
																																																																																																																																								Int:2
																																																																																																																																								Let Td1170.4387
																																																																																																																																									Let Td1169.4388
																																																																																																																																										Let Td1168.4389
																																																																																																																																											Let Td1165.4390
																																																																																																																																												Let Td1164.4393
																																																																																																																																													App o_param_r2.2877m.3106 
																																																																																																																																													FMul p0.4372 Td1164.4393
																																																																																																																																												Let Td1167.4391
																																																																																																																																													Let Td1166.4392
																																																																																																																																														App o_param_r1.2875m.3106 
																																																																																																																																														FMul p1.4373 Td1166.4392
																																																																																																																																													FAdd Td1165.4390 Td1167.4391
																																																																																																																																											App fhalf.2748Td1168.4389 
																																																																																																																																										FAdd d2.4377 Td1169.4388
																																																																																																																																									Put Ta1162.4385 Ti1163.4386 Td1170.4387
																																																																																																																																	Let Ta1171.4379
																																																																																																																																		ExtArray 568
																																																																																																																																		Let Tb1172.4380
																																																																																																																																			App o_isinvert.2847m.3106 
																																																																																																																																			App vecunit_sgn.2813Ta1171.4379 Tb1172.4380 
																																																																																																																										LetRec get_nvector.3107 m.3108 dirvec.3109 
																																																																																																																											Let m_shape.4369
																																																																																																																												App o_form.2843m.3108 
																																																																																																																												Let Ti1119.4370
																																																																																																																													Int:1
																																																																																																																													IfEq m_shape.4369 Ti1119.4370
																																																																																																																														App get_nvector_rect.3101dirvec.3109 
																																																																																																																														Let Ti1120.4371
																																																																																																																															Int:2
																																																																																																																															IfEq m_shape.4369 Ti1120.4371
																																																																																																																																App get_nvector_plane.3103m.3108 
																																																																																																																																App get_nvector_second.3105m.3108 
																																																																																																																											LetRec utexture.3110 m.3111 p.3112 
																																																																																																																												Let m_tex.4205
																																																																																																																													App o_texturetype.2841m.3111 
																																																																																																																													Let Tu142.4206
																																																																																																																														Let Ta985.4366
																																																																																																																															ExtArray 580
																																																																																																																															Let Ti986.4367
																																																																																																																																Int:0
																																																																																																																																Let Td987.4368
																																																																																																																																	App o_color_red.2869m.3111 
																																																																																																																																	Put Ta985.4366 Ti986.4367 Td987.4368
																																																																																																																														Let Tu141.4207
																																																																																																																															Let Ta988.4363
																																																																																																																																ExtArray 580
																																																																																																																																Let Ti989.4364
																																																																																																																																	Int:1
																																																																																																																																	Let Td990.4365
																																																																																																																																		App o_color_green.2871m.3111 
																																																																																																																																		Put Ta988.4363 Ti989.4364 Td990.4365
																																																																																																																															Let Tu140.4208
																																																																																																																																Let Ta991.4360
																																																																																																																																	ExtArray 580
																																																																																																																																	Let Ti992.4361
																																																																																																																																		Int:2
																																																																																																																																		Let Td993.4362
																																																																																																																																			App o_color_blue.2873m.3111 
																																																																																																																																			Put Ta991.4360 Ti992.4361 Td993.4362
																																																																																																																																Let Ti994.4209
																																																																																																																																	Int:1
																																																																																																																																	IfEq m_tex.4205 Ti994.4209
																																																																																																																																		Let w1.4330
																																																																																																																																			Let Td996.4357
																																																																																																																																				Let Ti995.4359
																																																																																																																																					Int:0
																																																																																																																																					Get p.3112 Ti995.4359
																																																																																																																																				Let Td997.4358
																																																																																																																																					App o_param_x.2859m.3111 
																																																																																																																																					FSub Td996.4357 Td997.4358
																																																																																																																																			Let flag1.4331
																																																																																																																																				Let d1.4350
																																																																																																																																					Let Td1000.4353
																																																																																																																																						Let Td999.4355
																																																																																																																																							Let Td998.4356
																																																																																																																																								Float:0.050000
																																																																																																																																								FMul w1.4330 Td998.4356
																																																																																																																																							App floor.2768Td999.4355 
																																																																																																																																						Let Td1001.4354
																																																																																																																																							Float:20.000000
																																																																																																																																							FMul Td1000.4353 Td1001.4354
																																																																																																																																					Let Td1002.4351
																																																																																																																																						Float:10.000000
																																																																																																																																						Let Td1003.4352
																																																																																																																																							FSub w1.4330 d1.4350
																																																																																																																																							IfLE Td1002.4351 Td1003.4352
																																																																																																																																								Int:0
																																																																																																																																								Int:1
																																																																																																																																				Let w3.4332
																																																																																																																																					Let Td1005.4347
																																																																																																																																						Let Ti1004.4349
																																																																																																																																							Int:2
																																																																																																																																							Get p.3112 Ti1004.4349
																																																																																																																																						Let Td1006.4348
																																																																																																																																							App o_param_z.2863m.3111 
																																																																																																																																							FSub Td1005.4347 Td1006.4348
																																																																																																																																					Let flag2.4333
																																																																																																																																						Let d2.4340
																																																																																																																																							Let Td1009.4343
																																																																																																																																								Let Td1008.4345
																																																																																																																																									Let Td1007.4346
																																																																																																																																										Float:0.050000
																																																																																																																																										FMul w3.4332 Td1007.4346
																																																																																																																																									App floor.2768Td1008.4345 
																																																																																																																																								Let Td1010.4344
																																																																																																																																									Float:20.000000
																																																																																																																																									FMul Td1009.4343 Td1010.4344
																																																																																																																																							Let Td1011.4341
																																																																																																																																								Float:10.000000
																																																																																																																																								Let Td1012.4342
																																																																																																																																									FSub w3.4332 d2.4340
																																																																																																																																									IfLE Td1011.4341 Td1012.4342
																																																																																																																																										Int:0
																																																																																																																																										Int:1
																																																																																																																																						Let Ta1013.4334
																																																																																																																																							ExtArray 580
																																																																																																																																							Let Ti1014.4335
																																																																																																																																								Int:1
																																																																																																																																								Let Td1018.4336
																																																																																																																																									Let Ti1015.4337
																																																																																																																																										Int:0
																																																																																																																																										IfEq flag1.4331 Ti1015.4337
																																																																																																																																											Let Ti1016.4339
																																																																																																																																												Int:0
																																																																																																																																												IfEq flag2.4333 Ti1016.4339
																																																																																																																																													Float:255.000000
																																																																																																																																													Float:0.000000
																																																																																																																																											Let Ti1017.4338
																																																																																																																																												Int:0
																																																																																																																																												IfEq flag2.4333 Ti1017.4338
																																																																																																																																													Float:0.000000
																																																																																																																																													Float:255.000000
																																																																																																																																									Put Ta1013.4334 Ti1014.4335 Td1018.4336
																																																																																																																																		Let Ti1019.4210
																																																																																																																																			Int:2
																																																																																																																																			IfEq m_tex.4205 Ti1019.4210
																																																																																																																																				Let w2.4313
																																																																																																																																					Let Td1024.4325
																																																																																																																																						Let Td1023.4326
																																																																																																																																							Let Td1021.4327
																																																																																																																																								Let Ti1020.4329
																																																																																																																																									Int:1
																																																																																																																																									Get p.3112 Ti1020.4329
																																																																																																																																								Let Td1022.4328
																																																																																																																																									Float:0.250000
																																																																																																																																									FMul Td1021.4327 Td1022.4328
																																																																																																																																							App sin.2781Td1023.4326 
																																																																																																																																						App fsqr.2750Td1024.4325 
																																																																																																																																					Let Tu138.4314
																																																																																																																																						Let Ta1025.4321
																																																																																																																																							ExtArray 580
																																																																																																																																							Let Ti1026.4322
																																																																																																																																								Int:0
																																																																																																																																								Let Td1028.4323
																																																																																																																																									Let Td1027.4324
																																																																																																																																										Float:255.000000
																																																																																																																																										FMul Td1027.4324 w2.4313
																																																																																																																																									Put Ta1025.4321 Ti1026.4322 Td1028.4323
																																																																																																																																						Let Ta1029.4315
																																																																																																																																							ExtArray 580
																																																																																																																																							Let Ti1030.4316
																																																																																																																																								Int:1
																																																																																																																																								Let Td1034.4317
																																																																																																																																									Let Td1031.4318
																																																																																																																																										Float:255.000000
																																																																																																																																										Let Td1033.4319
																																																																																																																																											Let Td1032.4320
																																																																																																																																												Float:1.000000
																																																																																																																																												FSub Td1032.4320 w2.4313
																																																																																																																																											FMul Td1031.4318 Td1033.4319
																																																																																																																																									Put Ta1029.4315 Ti1030.4316 Td1034.4317
																																																																																																																																				Let Ti1035.4211
																																																																																																																																					Int:3
																																																																																																																																					IfEq m_tex.4205 Ti1035.4211
																																																																																																																																						Let w1.4281
																																																																																																																																							Let Td1037.4310
																																																																																																																																								Let Ti1036.4312
																																																																																																																																									Int:0
																																																																																																																																									Get p.3112 Ti1036.4312
																																																																																																																																								Let Td1038.4311
																																																																																																																																									App o_param_x.2859m.3111 
																																																																																																																																									FSub Td1037.4310 Td1038.4311
																																																																																																																																							Let w3.4282
																																																																																																																																								Let Td1040.4307
																																																																																																																																									Let Ti1039.4309
																																																																																																																																										Int:2
																																																																																																																																										Get p.3112 Ti1039.4309
																																																																																																																																									Let Td1041.4308
																																																																																																																																										App o_param_z.2863m.3111 
																																																																																																																																										FSub Td1040.4307 Td1041.4308
																																																																																																																																								Let w2.4283
																																																																																																																																									Let Td1047.4301
																																																																																																																																										Let Td1044.4302
																																																																																																																																											Let Td1042.4305
																																																																																																																																												App fsqr.2750w1.4281 
																																																																																																																																												Let Td1043.4306
																																																																																																																																													App fsqr.2750w3.4282 
																																																																																																																																													FAdd Td1042.4305 Td1043.4306
																																																																																																																																											Let Td1045.4303
																																																																																																																																												Float:10.000000
																																																																																																																																												Let Td1046.4304
																																																																																																																																													FReciprocal Td1045.4303
																																																																																																																																													FMul Td1044.4302 Td1046.4304
																																																																																																																																										sqrt Td1047.4301
																																																																																																																																									Let w4.4284
																																																																																																																																										Let Td1049.4298
																																																																																																																																											Let Td1048.4300
																																																																																																																																												App floor.2768w2.4283 
																																																																																																																																												FSub w2.4283 Td1048.4300
																																																																																																																																											Let Td1050.4299
																																																																																																																																												Float:3.141593
																																																																																																																																												FMul Td1049.4298 Td1050.4299
																																																																																																																																										Let cws.4285
																																																																																																																																											Let Td1051.4297
																																																																																																																																												App cos.2783w4.4284 
																																																																																																																																												App fsqr.2750Td1051.4297 
																																																																																																																																											Let Tu139.4286
																																																																																																																																												Let Ta1052.4293
																																																																																																																																													ExtArray 580
																																																																																																																																													Let Ti1053.4294
																																																																																																																																														Int:1
																																																																																																																																														Let Td1055.4295
																																																																																																																																															Let Td1054.4296
																																																																																																																																																Float:255.000000
																																																																																																																																																FMul cws.4285 Td1054.4296
																																																																																																																																															Put Ta1052.4293 Ti1053.4294 Td1055.4295
																																																																																																																																												Let Ta1056.4287
																																																																																																																																													ExtArray 580
																																																																																																																																													Let Ti1057.4288
																																																																																																																																														Int:2
																																																																																																																																														Let Td1061.4289
																																																																																																																																															Let Td1059.4290
																																																																																																																																																Let Td1058.4292
																																																																																																																																																	Float:1.000000
																																																																																																																																																	FSub Td1058.4292 cws.4285
																																																																																																																																																Let Td1060.4291
																																																																																																																																																	Float:255.000000
																																																																																																																																																	FMul Td1059.4290 Td1060.4291
																																																																																																																																															Put Ta1056.4287 Ti1057.4288 Td1061.4289
																																																																																																																																						Let Ti1062.4212
																																																																																																																																							Int:4
																																																																																																																																							IfEq m_tex.4205 Ti1062.4212
																																																																																																																																								Let w1.4213
																																																																																																																																									Let Td1066.4275
																																																																																																																																										Let Td1064.4278
																																																																																																																																											Let Ti1063.4280
																																																																																																																																												Int:0
																																																																																																																																												Get p.3112 Ti1063.4280
																																																																																																																																											Let Td1065.4279
																																																																																																																																												App o_param_x.2859m.3111 
																																																																																																																																												FSub Td1064.4278 Td1065.4279
																																																																																																																																										Let Td1068.4276
																																																																																																																																											Let Td1067.4277
																																																																																																																																												App o_param_a.2851m.3111 
																																																																																																																																												sqrt Td1067.4277
																																																																																																																																											FMul Td1066.4275 Td1068.4276
																																																																																																																																									Let w3.4214
																																																																																																																																										Let Td1072.4269
																																																																																																																																											Let Td1070.4272
																																																																																																																																												Let Ti1069.4274
																																																																																																																																													Int:2
																																																																																																																																													Get p.3112 Ti1069.4274
																																																																																																																																												Let Td1071.4273
																																																																																																																																													App o_param_z.2863m.3111 
																																																																																																																																													FSub Td1070.4272 Td1071.4273
																																																																																																																																											Let Td1074.4270
																																																																																																																																												Let Td1073.4271
																																																																																																																																													App o_param_c.2855m.3111 
																																																																																																																																													sqrt Td1073.4271
																																																																																																																																												FMul Td1072.4269 Td1074.4270
																																																																																																																																										Let w4.4215
																																																																																																																																											Let Td1075.4267
																																																																																																																																												App fsqr.2750w1.4213 
																																																																																																																																												Let Td1076.4268
																																																																																																																																													App fsqr.2750w3.4214 
																																																																																																																																													FAdd Td1075.4267 Td1076.4268
																																																																																																																																											Let w7.4216
																																																																																																																																												Let Td1077.4257
																																																																																																																																													Float:0.000100
																																																																																																																																													Let Td1078.4258
																																																																																																																																														fabs w1.4213
																																																																																																																																														IfLE Td1077.4257 Td1078.4258
																																																																																																																																															Let w5.4259
																																																																																																																																																Let Td1080.4265
																																																																																																																																																	Let Td1079.4266
																																																																																																																																																		FReciprocal w1.4213
																																																																																																																																																		FMul w3.4214 Td1079.4266
																																																																																																																																																	fabs Td1080.4265
																																																																																																																																																Let Td1083.4260
																																																																																																																																																	Let Td1081.4263
																																																																																																																																																		App atan.2785w5.4259 
																																																																																																																																																		Let Td1082.4264
																																																																																																																																																			Float:30.000000
																																																																																																																																																			FMul Td1081.4263 Td1082.4264
																																																																																																																																																	Let Td1084.4261
																																																																																																																																																		Float:3.141593
																																																																																																																																																		Let Td1085.4262
																																																																																																																																																			FReciprocal Td1084.4261
																																																																																																																																																			FMul Td1083.4260 Td1085.4262
																																																																																																																																															Float:15.000000
																																																																																																																																												Let w9.4217
																																																																																																																																													Let Td1086.4256
																																																																																																																																														App floor.2768w7.4216 
																																																																																																																																														FSub w7.4216 Td1086.4256
																																																																																																																																													Let w2.4218
																																																																																																																																														Let Td1090.4250
																																																																																																																																															Let Td1088.4253
																																																																																																																																																Let Ti1087.4255
																																																																																																																																																	Int:1
																																																																																																																																																	Get p.3112 Ti1087.4255
																																																																																																																																																Let Td1089.4254
																																																																																																																																																	App o_param_y.2861m.3111 
																																																																																																																																																	FSub Td1088.4253 Td1089.4254
																																																																																																																																															Let Td1092.4251
																																																																																																																																																Let Td1091.4252
																																																																																																																																																	App o_param_b.2853m.3111 
																																																																																																																																																	sqrt Td1091.4252
																																																																																																																																																FMul Td1090.4250 Td1092.4251
																																																																																																																																														Let w8.4219
																																																																																																																																															Let Td1093.4240
																																																																																																																																																Float:0.000100
																																																																																																																																																Let Td1094.4241
																																																																																																																																																	fabs w4.4215
																																																																																																																																																	IfLE Td1093.4240 Td1094.4241
																																																																																																																																																		Let w6.4242
																																																																																																																																																			Let Td1096.4248
																																																																																																																																																				Let Td1095.4249
																																																																																																																																																					FReciprocal w4.4215
																																																																																																																																																					FMul w2.4218 Td1095.4249
																																																																																																																																																				fabs Td1096.4248
																																																																																																																																																			Let Td1099.4243
																																																																																																																																																				Let Td1097.4246
																																																																																																																																																					App atan.2785w6.4242 
																																																																																																																																																					Let Td1098.4247
																																																																																																																																																						Float:30.000000
																																																																																																																																																						FMul Td1097.4246 Td1098.4247
																																																																																																																																																				Let Td1100.4244
																																																																																																																																																					Float:3.141593
																																																																																																																																																					Let Td1101.4245
																																																																																																																																																						FReciprocal Td1100.4244
																																																																																																																																																						FMul Td1099.4243 Td1101.4245
																																																																																																																																																		Float:15.000000
																																																																																																																																															Let w10.4220
																																																																																																																																																Let Td1102.4239
																																																																																																																																																	App floor.2768w8.4219 
																																																																																																																																																	FSub w8.4219 Td1102.4239
																																																																																																																																																Let w11.4221
																																																																																																																																																	Let Td1107.4231
																																																																																																																																																		Let Td1103.4235
																																																																																																																																																			Float:0.150000
																																																																																																																																																			Let Td1106.4236
																																																																																																																																																				Let Td1105.4237
																																																																																																																																																					Let Td1104.4238
																																																																																																																																																						Float:0.500000
																																																																																																																																																						FSub Td1104.4238 w9.4217
																																																																																																																																																					App fsqr.2750Td1105.4237 
																																																																																																																																																				FSub Td1103.4235 Td1106.4236
																																																																																																																																																		Let Td1110.4232
																																																																																																																																																			Let Td1109.4233
																																																																																																																																																				Let Td1108.4234
																																																																																																																																																					Float:0.500000
																																																																																																																																																					FSub Td1108.4234 w10.4220
																																																																																																																																																				App fsqr.2750Td1109.4233 
																																																																																																																																																			FSub Td1107.4231 Td1110.4232
																																																																																																																																																	Let w12.4222
																																																																																																																																																		Let Td1111.4230
																																																																																																																																																			Float:0.000000
																																																																																																																																																			IfLE Td1111.4230 w11.4221
																																																																																																																																																				Var w11.4221
																																																																																																																																																				Float:0.000000
																																																																																																																																																		Let Ta1112.4223
																																																																																																																																																			ExtArray 580
																																																																																																																																																			Let Ti1113.4224
																																																																																																																																																				Int:2
																																																																																																																																																				Let Td1118.4225
																																																																																																																																																					Let Td1115.4226
																																																																																																																																																						Let Td1114.4229
																																																																																																																																																							Float:255.000000
																																																																																																																																																							FMul Td1114.4229 w12.4222
																																																																																																																																																						Let Td1116.4227
																																																																																																																																																							Float:0.300000
																																																																																																																																																							Let Td1117.4228
																																																																																																																																																								FReciprocal Td1116.4227
																																																																																																																																																								FMul Td1115.4226 Td1117.4228
																																																																																																																																																					Put Ta1112.4223 Ti1113.4224 Td1118.4225
																																																																																																																																								Unit
																																																																																																																												LetRec add_light.3113 bright.3114 hilight.3115 hilight_scale.3116 
																																																																																																																													Let Tu145.4177
																																																																																																																														Let Td961.4202
																																																																																																																															Float:0.000000
																																																																																																																															IfLE bright.3114 Td961.4202
																																																																																																																																Unit
																																																																																																																																Let Ta962.4203
																																																																																																																																	ExtArray 604
																																																																																																																																	Let Ta963.4204
																																																																																																																																		ExtArray 580
																																																																																																																																		App vecaccum.2824Ta962.4203 bright.3114 Ta963.4204 
																																																																																																																														Let Td964.4178
																																																																																																																															Float:0.000000
																																																																																																																															IfLE hilight.3115 Td964.4178
																																																																																																																																Unit
																																																																																																																																Let ihl.4179
																																																																																																																																	Let Td966.4200
																																																																																																																																		Let Td965.4201
																																																																																																																																			App fsqr.2750hilight.3115 
																																																																																																																																			App fsqr.2750Td965.4201 
																																																																																																																																		FMul Td966.4200 hilight_scale.3116
																																																																																																																																	Let Tu144.4180
																																																																																																																																		Let Ta967.4194
																																																																																																																																			ExtArray 604
																																																																																																																																			Let Ti968.4195
																																																																																																																																				Int:0
																																																																																																																																				Let Td972.4196
																																																																																																																																					Let Td971.4197
																																																																																																																																						Let Ta969.4198
																																																																																																																																							ExtArray 604
																																																																																																																																							Let Ti970.4199
																																																																																																																																								Int:0
																																																																																																																																								Get Ta969.4198 Ti970.4199
																																																																																																																																						FAdd Td971.4197 ihl.4179
																																																																																																																																					Put Ta967.4194 Ti968.4195 Td972.4196
																																																																																																																																		Let Tu143.4181
																																																																																																																																			Let Ta973.4188
																																																																																																																																				ExtArray 604
																																																																																																																																				Let Ti974.4189
																																																																																																																																					Int:1
																																																																																																																																					Let Td978.4190
																																																																																																																																						Let Td977.4191
																																																																																																																																							Let Ta975.4192
																																																																																																																																								ExtArray 604
																																																																																																																																								Let Ti976.4193
																																																																																																																																									Int:1
																																																																																																																																									Get Ta975.4192 Ti976.4193
																																																																																																																																							FAdd Td977.4191 ihl.4179
																																																																																																																																						Put Ta973.4188 Ti974.4189 Td978.4190
																																																																																																																																			Let Ta979.4182
																																																																																																																																				ExtArray 604
																																																																																																																																				Let Ti980.4183
																																																																																																																																					Int:2
																																																																																																																																					Let Td984.4184
																																																																																																																																						Let Td983.4185
																																																																																																																																							Let Ta981.4186
																																																																																																																																								ExtArray 604
																																																																																																																																								Let Ti982.4187
																																																																																																																																									Int:2
																																																																																																																																									Get Ta981.4186 Ti982.4187
																																																																																																																																							FAdd Td983.4185 ihl.4179
																																																																																																																																						Put Ta979.4182 Ti980.4183 Td984.4184
																																																																																																																													LetRec trace_reflections.3117 index.3118 diffuse.3119 hilight_scale.3120 dirvec.3121 
																																																																																																																														Let Ti936.4144
																																																																																																																															Int:0
																																																																																																																															IfLE Ti936.4144 index.3118
																																																																																																																																Let rinfo.4145
																																																																																																																																	Let Ta937.4176
																																																																																																																																		ExtArray 1016
																																																																																																																																		Get Ta937.4176 index.3118
																																																																																																																																	Let dvec.4146
																																																																																																																																		App r_dvec.2908rinfo.4145 
																																																																																																																																		Let Tu146.4147
																																																																																																																																			Let Tb938.4150
																																																																																																																																				App judge_intersection_fast.3099dvec.4146 
																																																																																																																																				Let Ti939.4151
																																																																																																																																					Int:0
																																																																																																																																					IfEq Tb938.4150 Ti939.4151
																																																																																																																																						Unit
																																																																																																																																						Let surface_id.4152
																																																																																																																																							Let Ti943.4169
																																																																																																																																								Let Ti942.4173
																																																																																																																																									Let Ta940.4174
																																																																																																																																										ExtArray 564
																																																																																																																																										Let Ti941.4175
																																																																																																																																											Int:0
																																																																																																																																											Get Ta940.4174 Ti941.4175
																																																																																																																																									ShiftL2 Ti942.4173
																																																																																																																																								Let Ti946.4170
																																																																																																																																									Let Ta944.4171
																																																																																																																																										ExtArray 544
																																																																																																																																										Let Ti945.4172
																																																																																																																																											Int:0
																																																																																																																																											Get Ta944.4171 Ti945.4172
																																																																																																																																									Add Ti943.4169 Ti946.4170
																																																																																																																																							Let Ti947.4153
																																																																																																																																								App r_surface_id.2906rinfo.4145 
																																																																																																																																								IfEq surface_id.4152 Ti947.4153
																																																																																																																																									Let Tb952.4154
																																																																																																																																										Let Ti948.4165
																																																																																																																																											Int:0
																																																																																																																																											Let Ta951.4166
																																																																																																																																												Let Ta949.4167
																																																																																																																																													ExtArray 536
																																																																																																																																													Let Ti950.4168
																																																																																																																																														Int:0
																																																																																																																																														Get Ta949.4167 Ti950.4168
																																																																																																																																												App shadow_check_one_or_matrix.3070Ti948.4165 Ta951.4166 
																																																																																																																																										Let Ti953.4155
																																																																																																																																											Int:0
																																																																																																																																											IfEq Tb952.4154 Ti953.4155
																																																																																																																																												Let p.4156
																																																																																																																																													Let Ta954.4163
																																																																																																																																														ExtArray 568
																																																																																																																																														Let Ta955.4164
																																																																																																																																															App d_vec.2902dvec.4146 
																																																																																																																																															App veciprod.2816Ta954.4163 Ta955.4164 
																																																																																																																																													Let scale.4157
																																																																																																																																														App r_bright.2910rinfo.4145 
																																																																																																																																														Let bright.4158
																																																																																																																																															Let Td956.4162
																																																																																																																																																FMul scale.4157 diffuse.3119
																																																																																																																																																FMul Td956.4162 p.4156
																																																																																																																																															Let hilight.4159
																																																																																																																																																Let Td958.4160
																																																																																																																																																	Let Ta957.4161
																																																																																																																																																		App d_vec.2902dvec.4146 
																																																																																																																																																		App veciprod.2816dirvec.3121 Ta957.4161 
																																																																																																																																																	FMul scale.4157 Td958.4160
																																																																																																																																																App add_light.3113bright.4158 hilight.4159 hilight_scale.3120 
																																																																																																																																												Unit
																																																																																																																																									Unit
																																																																																																																																			Let Ti960.4148
																																																																																																																																				Let Ti959.4149
																																																																																																																																					Int:1
																																																																																																																																					Sub index.3118 Ti959.4149
																																																																																																																																				App trace_reflections.3117Ti960.4148 diffuse.3119 hilight_scale.3120 dirvec.3121 
																																																																																																																																Unit
																																																																																																																														LetRec trace_ray.3122 nref.3123 energy.3124 dirvec.3125 pixel.3126 dist.3127 
																																																																																																																															Let Ti836.4011
																																																																																																																																Int:4
																																																																																																																																IfLE nref.3123 Ti836.4011
																																																																																																																																	Let surface_ids.4012
																																																																																																																																		App p_surface_ids.2887pixel.3126 
																																																																																																																																		Let Tb837.4013
																																																																																																																																			App judge_intersection.3085dirvec.3125 
																																																																																																																																			Let Ti838.4014
																																																																																																																																				Int:0
																																																																																																																																				IfEq Tb837.4013 Ti838.4014
																																																																																																																																					Let Tu163.4109
																																																																																																																																						Let Ti840.4142
																																																																																																																																							Let Ti839.4143
																																																																																																																																								Int:1
																																																																																																																																								Neg Ti839.4143
																																																																																																																																							Put surface_ids.4012 nref.3123 Ti840.4142
																																																																																																																																						Let Ti841.4110
																																																																																																																																							Int:0
																																																																																																																																							IfEq nref.3123 Ti841.4110
																																																																																																																																								Unit
																																																																																																																																								Let hl.4111
																																																																																																																																									Let Td843.4140
																																																																																																																																										Let Ta842.4141
																																																																																																																																											ExtArray 312
																																																																																																																																											App veciprod.2816dirvec.3125 Ta842.4141 
																																																																																																																																										App fneg.2746Td843.4140 
																																																																																																																																									Let Td844.4112
																																																																																																																																										Float:0.000000
																																																																																																																																										IfLE hl.4111 Td844.4112
																																																																																																																																											Unit
																																																																																																																																											Let ihl.4113
																																																																																																																																												Let Td847.4134
																																																																																																																																													Let Td846.4138
																																																																																																																																														Let Td845.4139
																																																																																																																																															App fsqr.2750hl.4111 
																																																																																																																																															FMul Td845.4139 hl.4111
																																																																																																																																														FMul Td846.4138 energy.3124
																																																																																																																																													Let Td850.4135
																																																																																																																																														Let Ta848.4136
																																																																																																																																															ExtArray 324
																																																																																																																																															Let Ti849.4137
																																																																																																																																																Int:0
																																																																																																																																																Get Ta848.4136 Ti849.4137
																																																																																																																																														FMul Td847.4134 Td850.4135
																																																																																																																																												Let Tu162.4114
																																																																																																																																													Let Ta851.4128
																																																																																																																																														ExtArray 604
																																																																																																																																														Let Ti852.4129
																																																																																																																																															Int:0
																																																																																																																																															Let Td856.4130
																																																																																																																																																Let Td855.4131
																																																																																																																																																	Let Ta853.4132
																																																																																																																																																		ExtArray 604
																																																																																																																																																		Let Ti854.4133
																																																																																																																																																			Int:0
																																																																																																																																																			Get Ta853.4132 Ti854.4133
																																																																																																																																																	FAdd Td855.4131 ihl.4113
																																																																																																																																																Put Ta851.4128 Ti852.4129 Td856.4130
																																																																																																																																													Let Tu161.4115
																																																																																																																																														Let Ta857.4122
																																																																																																																																															ExtArray 604
																																																																																																																																															Let Ti858.4123
																																																																																																																																																Int:1
																																																																																																																																																Let Td862.4124
																																																																																																																																																	Let Td861.4125
																																																																																																																																																		Let Ta859.4126
																																																																																																																																																			ExtArray 604
																																																																																																																																																			Let Ti860.4127
																																																																																																																																																				Int:1
																																																																																																																																																				Get Ta859.4126 Ti860.4127
																																																																																																																																																		FAdd Td861.4125 ihl.4113
																																																																																																																																																	Put Ta857.4122 Ti858.4123 Td862.4124
																																																																																																																																														Let Ta863.4116
																																																																																																																																															ExtArray 604
																																																																																																																																															Let Ti864.4117
																																																																																																																																																Int:2
																																																																																																																																																Let Td868.4118
																																																																																																																																																	Let Td867.4119
																																																																																																																																																		Let Ta865.4120
																																																																																																																																																			ExtArray 604
																																																																																																																																																			Let Ti866.4121
																																																																																																																																																				Int:2
																																																																																																																																																				Get Ta865.4120 Ti866.4121
																																																																																																																																																		FAdd Td867.4119 ihl.4113
																																																																																																																																																	Put Ta863.4116 Ti864.4117 Td868.4118
																																																																																																																																					Let obj_id.4015
																																																																																																																																						Let Ta869.4107
																																																																																																																																							ExtArray 564
																																																																																																																																							Let Ti870.4108
																																																																																																																																								Int:0
																																																																																																																																								Get Ta869.4107 Ti870.4108
																																																																																																																																						Let obj.4016
																																																																																																																																							Let Ta871.4106
																																																																																																																																								ExtArray 48
																																																																																																																																								Get Ta871.4106 obj_id.4015
																																																																																																																																							Let m_surface.4017
																																																																																																																																								App o_reflectiontype.2845obj.4016 
																																																																																																																																								Let diffuse.4018
																																																																																																																																									Let Td872.4105
																																																																																																																																										App o_diffuse.2865obj.4016 
																																																																																																																																										FMul Td872.4105 energy.3124
																																																																																																																																									Let Tu160.4019
																																																																																																																																										App get_nvector.3107obj.4016 dirvec.3125 
																																																																																																																																										Let Tu159.4020
																																																																																																																																											Let Ta873.4103
																																																																																																																																												ExtArray 636
																																																																																																																																												Let Ta874.4104
																																																																																																																																													ExtArray 552
																																																																																																																																													App veccpy.2805Ta873.4103 Ta874.4104 
																																																																																																																																											Let Tu158.4021
																																																																																																																																												Let Ta875.4102
																																																																																																																																													ExtArray 552
																																																																																																																																													App utexture.3110obj.4016 Ta875.4102 
																																																																																																																																												Let Tu157.4022
																																																																																																																																													Let Ti880.4097
																																																																																																																																														Let Ti876.4098
																																																																																																																																															ShiftL2 obj_id.4015
																																																																																																																																															Let Ti879.4099
																																																																																																																																																Let Ta877.4100
																																																																																																																																																	ExtArray 544
																																																																																																																																																	Let Ti878.4101
																																																																																																																																																		Int:0
																																																																																																																																																		Get Ta877.4100 Ti878.4101
																																																																																																																																																Add Ti876.4098 Ti879.4099
																																																																																																																																														Put surface_ids.4012 nref.3123 Ti880.4097
																																																																																																																																													Let intersection_points.4023
																																																																																																																																														App p_intersection_points.2885pixel.3126 
																																																																																																																																														Let Tu156.4024
																																																																																																																																															Let Ta881.4095
																																																																																																																																																Get intersection_points.4023 nref.3123
																																																																																																																																																Let Ta882.4096
																																																																																																																																																	ExtArray 552
																																																																																																																																																	App veccpy.2805Ta881.4095 Ta882.4096 
																																																																																																																																															Let calc_diffuse.4025
																																																																																																																																																App p_calc_diffuse.2889pixel.3126 
																																																																																																																																																Let Tu155.4026
																																																																																																																																																	Let Td883.4076
																																																																																																																																																		Float:0.500000
																																																																																																																																																		Let Td884.4077
																																																																																																																																																			App o_diffuse.2865obj.4016 
																																																																																																																																																			IfLE Td883.4076 Td884.4077
																																																																																																																																																				Let Tu149.4079
																																																																																																																																																					Let Ti885.4094
																																																																																																																																																						Int:1
																																																																																																																																																						Put calc_diffuse.4025 nref.3123 Ti885.4094
																																																																																																																																																					Let energya.4080
																																																																																																																																																						App p_energy.2891pixel.3126 
																																																																																																																																																						Let Tu148.4081
																																																																																																																																																							Let Ta886.4092
																																																																																																																																																								Get energya.4080 nref.3123
																																																																																																																																																								Let Ta887.4093
																																																																																																																																																									ExtArray 580
																																																																																																																																																									App veccpy.2805Ta886.4092 Ta887.4093 
																																																																																																																																																							Let Tu147.4082
																																																																																																																																																								Let Ta888.4086
																																																																																																																																																									Get energya.4080 nref.3123
																																																																																																																																																									Let Td893.4087
																																																																																																																																																										Let Td892.4088
																																																																																																																																																											Let Td889.4089
																																																																																																																																																												Float:1.000000
																																																																																																																																																												Let Td890.4090
																																																																																																																																																													Float:256.000000
																																																																																																																																																													Let Td891.4091
																																																																																																																																																														FReciprocal Td890.4090
																																																																																																																																																														FMul Td889.4089 Td891.4091
																																																																																																																																																											FMul Td892.4088 diffuse.4018
																																																																																																																																																										App vecscale.2834Ta888.4086 Td893.4087 
																																																																																																																																																								Let nvectors.4083
																																																																																																																																																									App p_nvectors.2900pixel.3126 
																																																																																																																																																									Let Ta894.4084
																																																																																																																																																										Get nvectors.4083 nref.3123
																																																																																																																																																										Let Ta895.4085
																																																																																																																																																											ExtArray 568
																																																																																																																																																											App veccpy.2805Ta894.4084 Ta895.4085 
																																																																																																																																																				Let Ti896.4078
																																																																																																																																																					Int:0
																																																																																																																																																					Put calc_diffuse.4025 nref.3123 Ti896.4078
																																																																																																																																																	Let w.4027
																																																																																																																																																		Let Td897.4073
																																																																																																																																																			Float:-2.000000
																																																																																																																																																			Let Td899.4074
																																																																																																																																																				Let Ta898.4075
																																																																																																																																																					ExtArray 568
																																																																																																																																																					App veciprod.2816dirvec.3125 Ta898.4075 
																																																																																																																																																				FMul Td897.4073 Td899.4074
																																																																																																																																																		Let Tu154.4028
																																																																																																																																																			Let Ta900.4072
																																																																																																																																																				ExtArray 568
																																																																																																																																																				App vecaccum.2824dirvec.3125 w.4027 Ta900.4072 
																																																																																																																																																			Let hilight_scale.4029
																																																																																																																																																				Let Td901.4071
																																																																																																																																																					App o_hilight.2867obj.4016 
																																																																																																																																																					FMul energy.3124 Td901.4071
																																																																																																																																																				Let Tu153.4030
																																																																																																																																																					Let Tb906.4057
																																																																																																																																																						Let Ti902.4067
																																																																																																																																																							Int:0
																																																																																																																																																							Let Ta905.4068
																																																																																																																																																								Let Ta903.4069
																																																																																																																																																									ExtArray 536
																																																																																																																																																									Let Ti904.4070
																																																																																																																																																										Int:0
																																																																																																																																																										Get Ta903.4069 Ti904.4070
																																																																																																																																																								App shadow_check_one_or_matrix.3070Ti902.4067 Ta905.4068 
																																																																																																																																																						Let Ti907.4058
																																																																																																																																																							Int:0
																																																																																																																																																							IfEq Tb906.4057 Ti907.4058
																																																																																																																																																								Let bright.4059
																																																																																																																																																									Let Td911.4063
																																																																																																																																																										Let Td910.4064
																																																																																																																																																											Let Ta908.4065
																																																																																																																																																												ExtArray 568
																																																																																																																																																												Let Ta909.4066
																																																																																																																																																													ExtArray 312
																																																																																																																																																													App veciprod.2816Ta908.4065 Ta909.4066 
																																																																																																																																																											App fneg.2746Td910.4064 
																																																																																																																																																										FMul Td911.4063 diffuse.4018
																																																																																																																																																									Let hilight.4060
																																																																																																																																																										Let Td913.4061
																																																																																																																																																											Let Ta912.4062
																																																																																																																																																												ExtArray 312
																																																																																																																																																												App veciprod.2816dirvec.3125 Ta912.4062 
																																																																																																																																																											App fneg.2746Td913.4061 
																																																																																																																																																										App add_light.3113bright.4059 hilight.4060 hilight_scale.4029 
																																																																																																																																																								Unit
																																																																																																																																																					Let Tu152.4031
																																																																																																																																																						Let Ta914.4056
																																																																																																																																																							ExtArray 552
																																																																																																																																																							App setup_startp.3036Ta914.4056 
																																																																																																																																																						Let Tu151.4032
																																																																																																																																																							Let Ti919.4051
																																																																																																																																																								Let Ti917.4052
																																																																																																																																																									Let Ta915.4054
																																																																																																																																																										ExtArray 1736
																																																																																																																																																										Let Ti916.4055
																																																																																																																																																											Int:0
																																																																																																																																																											Get Ta915.4054 Ti916.4055
																																																																																																																																																									Let Ti918.4053
																																																																																																																																																										Int:1
																																																																																																																																																										Sub Ti917.4052 Ti918.4053
																																																																																																																																																								App trace_reflections.3117Ti919.4051 diffuse.4018 hilight_scale.4029 dirvec.3125 
																																																																																																																																																							Let Td920.4033
																																																																																																																																																								Float:0.100000
																																																																																																																																																								IfLE energy.3124 Td920.4033
																																																																																																																																																									Unit
																																																																																																																																																									Let Tu150.4034
																																																																																																																																																										Let Ti921.4046
																																																																																																																																																											Int:4
																																																																																																																																																											IfLE Ti921.4046 nref.3123
																																																																																																																																																												Unit
																																																																																																																																																												Let Ti923.4047
																																																																																																																																																													Let Ti922.4050
																																																																																																																																																														Int:1
																																																																																																																																																														Add nref.3123 Ti922.4050
																																																																																																																																																													Let Ti925.4048
																																																																																																																																																														Let Ti924.4049
																																																																																																																																																															Int:1
																																																																																																																																																															Neg Ti924.4049
																																																																																																																																																														Put surface_ids.4012 Ti923.4047 Ti925.4048
																																																																																																																																																										Let Ti926.4035
																																																																																																																																																											Int:2
																																																																																																																																																											IfEq m_surface.4017 Ti926.4035
																																																																																																																																																												Let energy2.4036
																																																																																																																																																													Let Td929.4043
																																																																																																																																																														Let Td927.4044
																																																																																																																																																															Float:1.000000
																																																																																																																																																															Let Td928.4045
																																																																																																																																																																App o_diffuse.2865obj.4016 
																																																																																																																																																																FSub Td927.4044 Td928.4045
																																																																																																																																																														FMul energy.3124 Td929.4043
																																																																																																																																																													Let Ti931.4037
																																																																																																																																																														Let Ti930.4042
																																																																																																																																																															Int:1
																																																																																																																																																															Add nref.3123 Ti930.4042
																																																																																																																																																														Let Td935.4038
																																																																																																																																																															Let Td934.4039
																																																																																																																																																																Let Ta932.4040
																																																																																																																																																																	ExtArray 548
																																																																																																																																																																	Let Ti933.4041
																																																																																																																																																																		Int:0
																																																																																																																																																																		Get Ta932.4040 Ti933.4041
																																																																																																																																																																FAdd dist.3127 Td934.4039
																																																																																																																																																															App trace_ray.3122Ti931.4037 energy2.4036 dirvec.3125 pixel.3126 Td935.4038 
																																																																																																																																																												Unit
																																																																																																																																	Unit
																																																																																																																															LetRec trace_diffuse_ray.3128 dirvec.3129 energy.3130 
																																																																																																																																Let Tb813.3983
																																																																																																																																	App judge_intersection_fast.3099dirvec.3129 
																																																																																																																																	Let Ti814.3984
																																																																																																																																		Int:0
																																																																																																																																		IfEq Tb813.3983 Ti814.3984
																																																																																																																																			Unit
																																																																																																																																			Let obj.3985
																																																																																																																																				Let Ta815.4007
																																																																																																																																					ExtArray 48
																																																																																																																																					Let Ti818.4008
																																																																																																																																						Let Ta816.4009
																																																																																																																																							ExtArray 564
																																																																																																																																							Let Ti817.4010
																																																																																																																																								Int:0
																																																																																																																																								Get Ta816.4009 Ti817.4010
																																																																																																																																						Get Ta815.4007 Ti818.4008
																																																																																																																																				Let Tu165.3986
																																																																																																																																					Let Ta819.4006
																																																																																																																																						App d_vec.2902dirvec.3129 
																																																																																																																																						App get_nvector.3107obj.3985 Ta819.4006 
																																																																																																																																					Let Tu164.3987
																																																																																																																																						Let Ta820.4005
																																																																																																																																							ExtArray 552
																																																																																																																																							App utexture.3110obj.3985 Ta820.4005 
																																																																																																																																						Let Tb825.3988
																																																																																																																																							Let Ti821.4001
																																																																																																																																								Int:0
																																																																																																																																								Let Ta824.4002
																																																																																																																																									Let Ta822.4003
																																																																																																																																										ExtArray 536
																																																																																																																																										Let Ti823.4004
																																																																																																																																											Int:0
																																																																																																																																											Get Ta822.4003 Ti823.4004
																																																																																																																																									App shadow_check_one_or_matrix.3070Ti821.4001 Ta824.4002 
																																																																																																																																							Let Ti826.3989
																																																																																																																																								Int:0
																																																																																																																																								IfEq Tb825.3988 Ti826.3989
																																																																																																																																									Let br.3990
																																																																																																																																										Let Td829.3998
																																																																																																																																											Let Ta827.3999
																																																																																																																																												ExtArray 568
																																																																																																																																												Let Ta828.4000
																																																																																																																																													ExtArray 312
																																																																																																																																													App veciprod.2816Ta827.3999 Ta828.4000 
																																																																																																																																											App fneg.2746Td829.3998 
																																																																																																																																										Let bright.3991
																																																																																																																																											Let Td830.3997
																																																																																																																																												Float:0.000000
																																																																																																																																												IfLE br.3990 Td830.3997
																																																																																																																																													Float:0.000000
																																																																																																																																													Var br.3990
																																																																																																																																											Let Ta831.3992
																																																																																																																																												ExtArray 592
																																																																																																																																												Let Td834.3993
																																																																																																																																													Let Td832.3995
																																																																																																																																														FMul energy.3130 bright.3991
																																																																																																																																														Let Td833.3996
																																																																																																																																															App o_diffuse.2865obj.3985 
																																																																																																																																															FMul Td832.3995 Td833.3996
																																																																																																																																													Let Ta835.3994
																																																																																																																																														ExtArray 580
																																																																																																																																														App vecaccum.2824Ta831.3992 Td834.3993 Ta835.3994 
																																																																																																																																									Unit
																																																																																																																																LetRec iter_trace_diffuse_rays.3131 dirvec_group.3132 nvector.3133 org.3134 index.3135 
																																																																																																																																	Let Ti797.3965
																																																																																																																																		Int:0
																																																																																																																																		IfLE Ti797.3965 index.3135
																																																																																																																																			Let p.3966
																																																																																																																																				Let Ta799.3981
																																																																																																																																					Let Tt798.3982
																																																																																																																																						Get dirvec_group.3132 index.3135
																																																																																																																																						App d_vec.2902Tt798.3982 
																																																																																																																																					App veciprod.2816Ta799.3981 nvector.3133 
																																																																																																																																				Let Tu166.3967
																																																																																																																																					Let Td800.3970
																																																																																																																																						Float:0.000000
																																																																																																																																						IfLE Td800.3970 p.3966
																																																																																																																																							Let Tt801.3977
																																																																																																																																								Get dirvec_group.3132 index.3135
																																																																																																																																								Let Td804.3978
																																																																																																																																									Let Td802.3979
																																																																																																																																										Float:150.000000
																																																																																																																																										Let Td803.3980
																																																																																																																																											FReciprocal Td802.3979
																																																																																																																																											FMul p.3966 Td803.3980
																																																																																																																																									App trace_diffuse_ray.3128Tt801.3977 Td804.3978 
																																																																																																																																							Let Tt807.3971
																																																																																																																																								Let Ti806.3975
																																																																																																																																									Let Ti805.3976
																																																																																																																																										Int:1
																																																																																																																																										Add index.3135 Ti805.3976
																																																																																																																																									Get dirvec_group.3132 Ti806.3975
																																																																																																																																								Let Td810.3972
																																																																																																																																									Let Td808.3973
																																																																																																																																										Float:-150.000000
																																																																																																																																										Let Td809.3974
																																																																																																																																											FReciprocal Td808.3973
																																																																																																																																											FMul p.3966 Td809.3974
																																																																																																																																									App trace_diffuse_ray.3128Tt807.3971 Td810.3972 
																																																																																																																																					Let Ti812.3968
																																																																																																																																						Let Ti811.3969
																																																																																																																																							Int:2
																																																																																																																																							Sub index.3135 Ti811.3969
																																																																																																																																						App iter_trace_diffuse_rays.3131dirvec_group.3132 nvector.3133 org.3134 Ti812.3968 
																																																																																																																																			Unit
																																																																																																																																	LetRec trace_diffuse_rays.3136 dirvec_group.3137 nvector.3138 org.3139 
																																																																																																																																		Let Tu167.3963
																																																																																																																																			App setup_startp.3036org.3139 
																																																																																																																																			Let Ti796.3964
																																																																																																																																				Int:118
																																																																																																																																				App iter_trace_diffuse_rays.3131dirvec_group.3137 nvector.3138 org.3139 Ti796.3964 
																																																																																																																																		LetRec trace_diffuse_ray_80percent.3140 group_id.3141 nvector.3142 org.3143 
																																																																																																																																			Let Tu171.3939
																																																																																																																																				Let Ti776.3959
																																																																																																																																					Int:0
																																																																																																																																					IfEq group_id.3141 Ti776.3959
																																																																																																																																						Unit
																																																																																																																																						Let Ta779.3960
																																																																																																																																							Let Ta777.3961
																																																																																																																																								ExtArray 716
																																																																																																																																								Let Ti778.3962
																																																																																																																																									Int:0
																																																																																																																																									Get Ta777.3961 Ti778.3962
																																																																																																																																							App trace_diffuse_rays.3136Ta779.3960 nvector.3142 org.3143 
																																																																																																																																				Let Tu170.3940
																																																																																																																																					Let Ti780.3955
																																																																																																																																						Int:1
																																																																																																																																						IfEq group_id.3141 Ti780.3955
																																																																																																																																							Unit
																																																																																																																																							Let Ta783.3956
																																																																																																																																								Let Ta781.3957
																																																																																																																																									ExtArray 716
																																																																																																																																									Let Ti782.3958
																																																																																																																																										Int:1
																																																																																																																																										Get Ta781.3957 Ti782.3958
																																																																																																																																								App trace_diffuse_rays.3136Ta783.3956 nvector.3142 org.3143 
																																																																																																																																					Let Tu169.3941
																																																																																																																																						Let Ti784.3951
																																																																																																																																							Int:2
																																																																																																																																							IfEq group_id.3141 Ti784.3951
																																																																																																																																								Unit
																																																																																																																																								Let Ta787.3952
																																																																																																																																									Let Ta785.3953
																																																																																																																																										ExtArray 716
																																																																																																																																										Let Ti786.3954
																																																																																																																																											Int:2
																																																																																																																																											Get Ta785.3953 Ti786.3954
																																																																																																																																									App trace_diffuse_rays.3136Ta787.3952 nvector.3142 org.3143 
																																																																																																																																						Let Tu168.3942
																																																																																																																																							Let Ti788.3947
																																																																																																																																								Int:3
																																																																																																																																								IfEq group_id.3141 Ti788.3947
																																																																																																																																									Unit
																																																																																																																																									Let Ta791.3948
																																																																																																																																										Let Ta789.3949
																																																																																																																																											ExtArray 716
																																																																																																																																											Let Ti790.3950
																																																																																																																																												Int:3
																																																																																																																																												Get Ta789.3949 Ti790.3950
																																																																																																																																										App trace_diffuse_rays.3136Ta791.3948 nvector.3142 org.3143 
																																																																																																																																							Let Ti792.3943
																																																																																																																																								Int:4
																																																																																																																																								IfEq group_id.3141 Ti792.3943
																																																																																																																																									Unit
																																																																																																																																									Let Ta795.3944
																																																																																																																																										Let Ta793.3945
																																																																																																																																											ExtArray 716
																																																																																																																																											Let Ti794.3946
																																																																																																																																												Int:4
																																																																																																																																												Get Ta793.3945 Ti794.3946
																																																																																																																																										App trace_diffuse_rays.3136Ta795.3944 nvector.3142 org.3143 
																																																																																																																																			LetRec calc_diffuse_using_1point.3144 pixel.3145 nref.3146 
																																																																																																																																				Let ray20p.3925
																																																																																																																																					App p_received_ray_20percent.2893pixel.3145 
																																																																																																																																					Let nvectors.3926
																																																																																																																																						App p_nvectors.2900pixel.3145 
																																																																																																																																						Let intersection_points.3927
																																																																																																																																							App p_intersection_points.2885pixel.3145 
																																																																																																																																							Let energya.3928
																																																																																																																																								App p_energy.2891pixel.3145 
																																																																																																																																								Let Tu173.3929
																																																																																																																																									Let Ta768.3937
																																																																																																																																										ExtArray 592
																																																																																																																																										Let Ta769.3938
																																																																																																																																											Get ray20p.3925 nref.3146
																																																																																																																																											App veccpy.2805Ta768.3937 Ta769.3938 
																																																																																																																																									Let Tu172.3930
																																																																																																																																										Let Ti770.3934
																																																																																																																																											App p_group_id.2895pixel.3145 
																																																																																																																																											Let Ta771.3935
																																																																																																																																												Get nvectors.3926 nref.3146
																																																																																																																																												Let Ta772.3936
																																																																																																																																													Get intersection_points.3927 nref.3146
																																																																																																																																													App trace_diffuse_ray_80percent.3140Ti770.3934 Ta771.3935 Ta772.3936 
																																																																																																																																										Let Ta773.3931
																																																																																																																																											ExtArray 604
																																																																																																																																											Let Ta774.3932
																																																																																																																																												Get energya.3928 nref.3146
																																																																																																																																												Let Ta775.3933
																																																																																																																																													ExtArray 592
																																																																																																																																													App vecaccumv.2837Ta773.3931 Ta774.3932 Ta775.3933 
																																																																																																																																				LetRec calc_diffuse_using_5points.3147 x.3148 prev.3149 cur.3150 next.3151 nref.3152 
																																																																																																																																					Let r_up.3891
																																																																																																																																						Let Tt745.3924
																																																																																																																																							Get prev.3149 x.3148
																																																																																																																																							App p_received_ray_20percent.2893Tt745.3924 
																																																																																																																																						Let r_left.3892
																																																																																																																																							Let Tt748.3921
																																																																																																																																								Let Ti747.3922
																																																																																																																																									Let Ti746.3923
																																																																																																																																										Int:1
																																																																																																																																										Sub x.3148 Ti746.3923
																																																																																																																																									Get cur.3150 Ti747.3922
																																																																																																																																								App p_received_ray_20percent.2893Tt748.3921 
																																																																																																																																							Let r_center.3893
																																																																																																																																								Let Tt749.3920
																																																																																																																																									Get cur.3150 x.3148
																																																																																																																																									App p_received_ray_20percent.2893Tt749.3920 
																																																																																																																																								Let r_right.3894
																																																																																																																																									Let Tt752.3917
																																																																																																																																										Let Ti751.3918
																																																																																																																																											Let Ti750.3919
																																																																																																																																												Int:1
																																																																																																																																												Add x.3148 Ti750.3919
																																																																																																																																											Get cur.3150 Ti751.3918
																																																																																																																																										App p_received_ray_20percent.2893Tt752.3917 
																																																																																																																																									Let r_down.3895
																																																																																																																																										Let Tt753.3916
																																																																																																																																											Get next.3151 x.3148
																																																																																																																																											App p_received_ray_20percent.2893Tt753.3916 
																																																																																																																																										Let Tu178.3896
																																																																																																																																											Let Ta754.3914
																																																																																																																																												ExtArray 592
																																																																																																																																												Let Ta755.3915
																																																																																																																																													Get r_up.3891 nref.3152
																																																																																																																																													App veccpy.2805Ta754.3914 Ta755.3915 
																																																																																																																																											Let Tu177.3897
																																																																																																																																												Let Ta756.3912
																																																																																																																																													ExtArray 592
																																																																																																																																													Let Ta757.3913
																																																																																																																																														Get r_left.3892 nref.3152
																																																																																																																																														App vecadd.2828Ta756.3912 Ta757.3913 
																																																																																																																																												Let Tu176.3898
																																																																																																																																													Let Ta758.3910
																																																																																																																																														ExtArray 592
																																																																																																																																														Let Ta759.3911
																																																																																																																																															Get r_center.3893 nref.3152
																																																																																																																																															App vecadd.2828Ta758.3910 Ta759.3911 
																																																																																																																																													Let Tu175.3899
																																																																																																																																														Let Ta760.3908
																																																																																																																																															ExtArray 592
																																																																																																																																															Let Ta761.3909
																																																																																																																																																Get r_right.3894 nref.3152
																																																																																																																																																App vecadd.2828Ta760.3908 Ta761.3909 
																																																																																																																																														Let Tu174.3900
																																																																																																																																															Let Ta762.3906
																																																																																																																																																ExtArray 592
																																																																																																																																																Let Ta763.3907
																																																																																																																																																	Get r_down.3895 nref.3152
																																																																																																																																																	App vecadd.2828Ta762.3906 Ta763.3907 
																																																																																																																																															Let energya.3901
																																																																																																																																																Let Tt764.3905
																																																																																																																																																	Get cur.3150 x.3148
																																																																																																																																																	App p_energy.2891Tt764.3905 
																																																																																																																																																Let Ta765.3902
																																																																																																																																																	ExtArray 604
																																																																																																																																																	Let Ta766.3903
																																																																																																																																																		Get energya.3901 nref.3152
																																																																																																																																																		Let Ta767.3904
																																																																																																																																																			ExtArray 592
																																																																																																																																																			App vecaccumv.2837Ta765.3902 Ta766.3903 Ta767.3904 
																																																																																																																																					LetRec do_without_neighbors.3153 pixel.3154 nref.3155 
																																																																																																																																						Let Ti738.3881
																																																																																																																																							Int:4
																																																																																																																																							IfLE nref.3155 Ti738.3881
																																																																																																																																								Let surface_ids.3882
																																																																																																																																									App p_surface_ids.2887pixel.3154 
																																																																																																																																									Let Ti739.3883
																																																																																																																																										Int:0
																																																																																																																																										Let Ti740.3884
																																																																																																																																											Get surface_ids.3882 nref.3155
																																																																																																																																											IfLE Ti739.3883 Ti740.3884
																																																																																																																																												Let calc_diffuse.3885
																																																																																																																																													App p_calc_diffuse.2889pixel.3154 
																																																																																																																																													Let Tu179.3886
																																																																																																																																														Let Tb741.3889
																																																																																																																																															Get calc_diffuse.3885 nref.3155
																																																																																																																																															Let Ti742.3890
																																																																																																																																																Int:0
																																																																																																																																																IfEq Tb741.3889 Ti742.3890
																																																																																																																																																	Unit
																																																																																																																																																	App calc_diffuse_using_1point.3144pixel.3154 nref.3155 
																																																																																																																																														Let Ti744.3887
																																																																																																																																															Let Ti743.3888
																																																																																																																																																Int:1
																																																																																																																																																Add nref.3155 Ti743.3888
																																																																																																																																															App do_without_neighbors.3153pixel.3154 Ti744.3887 
																																																																																																																																												Unit
																																																																																																																																								Unit
																																																																																																																																						LetRec neighbors_exist.3156 x.3157 y.3158 next.3159 
																																																																																																																																							Let Ti728.3869
																																																																																																																																								Let Ta726.3879
																																																																																																																																									ExtArray 616
																																																																																																																																									Let Ti727.3880
																																																																																																																																										Int:1
																																																																																																																																										Get Ta726.3879 Ti727.3880
																																																																																																																																								Let Ti730.3870
																																																																																																																																									Let Ti729.3878
																																																																																																																																										Int:1
																																																																																																																																										Add y.3158 Ti729.3878
																																																																																																																																									IfLE Ti728.3869 Ti730.3870
																																																																																																																																										Int:0
																																																																																																																																										Let Ti731.3871
																																																																																																																																											Int:0
																																																																																																																																											IfLE y.3158 Ti731.3871
																																																																																																																																												Int:0
																																																																																																																																												Let Ti734.3872
																																																																																																																																													Let Ta732.3876
																																																																																																																																														ExtArray 616
																																																																																																																																														Let Ti733.3877
																																																																																																																																															Int:0
																																																																																																																																															Get Ta732.3876 Ti733.3877
																																																																																																																																													Let Ti736.3873
																																																																																																																																														Let Ti735.3875
																																																																																																																																															Int:1
																																																																																																																																															Add x.3157 Ti735.3875
																																																																																																																																														IfLE Ti734.3872 Ti736.3873
																																																																																																																																															Int:0
																																																																																																																																															Let Ti737.3874
																																																																																																																																																Int:0
																																																																																																																																																IfLE x.3157 Ti737.3874
																																																																																																																																																	Int:0
																																																																																																																																																	Int:1
																																																																																																																																							LetRec get_surface_id.3160 pixel.3161 index.3162 
																																																																																																																																								Let surface_ids.3868
																																																																																																																																									App p_surface_ids.2887pixel.3161 
																																																																																																																																									Get surface_ids.3868 index.3162
																																																																																																																																								LetRec neighbors_are_available.3163 x.3164 prev.3165 cur.3166 next.3167 nref.3168 
																																																																																																																																									Let sid_center.3854
																																																																																																																																										Let Tt713.3867
																																																																																																																																											Get cur.3166 x.3164
																																																																																																																																											App get_surface_id.3160Tt713.3867 nref.3168 
																																																																																																																																										Let Ti715.3855
																																																																																																																																											Let Tt714.3866
																																																																																																																																												Get prev.3165 x.3164
																																																																																																																																												App get_surface_id.3160Tt714.3866 nref.3168 
																																																																																																																																											IfEq Ti715.3855 sid_center.3854
																																																																																																																																												Let Ti717.3856
																																																																																																																																													Let Tt716.3865
																																																																																																																																														Get next.3167 x.3164
																																																																																																																																														App get_surface_id.3160Tt716.3865 nref.3168 
																																																																																																																																													IfEq Ti717.3856 sid_center.3854
																																																																																																																																														Let Ti721.3857
																																																																																																																																															Let Tt720.3862
																																																																																																																																																Let Ti719.3863
																																																																																																																																																	Let Ti718.3864
																																																																																																																																																		Int:1
																																																																																																																																																		Sub x.3164 Ti718.3864
																																																																																																																																																	Get cur.3166 Ti719.3863
																																																																																																																																																App get_surface_id.3160Tt720.3862 nref.3168 
																																																																																																																																															IfEq Ti721.3857 sid_center.3854
																																																																																																																																																Let Ti725.3858
																																																																																																																																																	Let Tt724.3859
																																																																																																																																																		Let Ti723.3860
																																																																																																																																																			Let Ti722.3861
																																																																																																																																																				Int:1
																																																																																																																																																				Add x.3164 Ti722.3861
																																																																																																																																																			Get cur.3166 Ti723.3860
																																																																																																																																																		App get_surface_id.3160Tt724.3859 nref.3168 
																																																																																																																																																	IfEq Ti725.3858 sid_center.3854
																																																																																																																																																		Int:1
																																																																																																																																																		Int:0
																																																																																																																																																Int:0
																																																																																																																																														Int:0
																																																																																																																																												Int:0
																																																																																																																																									LetRec try_exploit_neighbors.3169 x.3170 y.3171 prev.3172 cur.3173 next.3174 nref.3175 
																																																																																																																																										Let pixel.3841
																																																																																																																																											Get cur.3173 x.3170
																																																																																																																																											Let Ti703.3842
																																																																																																																																												Int:4
																																																																																																																																												IfLE nref.3175 Ti703.3842
																																																																																																																																													Let Ti704.3843
																																																																																																																																														Int:0
																																																																																																																																														Let Ti705.3844
																																																																																																																																															App get_surface_id.3160pixel.3841 nref.3175 
																																																																																																																																															IfLE Ti704.3843 Ti705.3844
																																																																																																																																																Let Tb706.3845
																																																																																																																																																	App neighbors_are_available.3163x.3170 prev.3172 cur.3173 next.3174 nref.3175 
																																																																																																																																																	Let Ti707.3846
																																																																																																																																																		Int:0
																																																																																																																																																		IfEq Tb706.3845 Ti707.3846
																																																																																																																																																			Let Tt708.3853
																																																																																																																																																				Get cur.3173 x.3170
																																																																																																																																																				App do_without_neighbors.3153Tt708.3853 nref.3175 
																																																																																																																																																			Let calc_diffuse.3847
																																																																																																																																																				App p_calc_diffuse.2889pixel.3841 
																																																																																																																																																				Let Tu180.3848
																																																																																																																																																					Let Tb709.3851
																																																																																																																																																						Get calc_diffuse.3847 nref.3175
																																																																																																																																																						Let Ti710.3852
																																																																																																																																																							Int:0
																																																																																																																																																							IfEq Tb709.3851 Ti710.3852
																																																																																																																																																								Unit
																																																																																																																																																								App calc_diffuse_using_5points.3147x.3170 prev.3172 cur.3173 next.3174 nref.3175 
																																																																																																																																																					Let Ti712.3849
																																																																																																																																																						Let Ti711.3850
																																																																																																																																																							Int:1
																																																																																																																																																							Add nref.3175 Ti711.3850
																																																																																																																																																						App try_exploit_neighbors.3169x.3170 y.3171 prev.3172 cur.3173 next.3174 Ti712.3849 
																																																																																																																																																Unit
																																																																																																																																													Unit
																																																																																																																																										LetRec write_ppm_header.3176 Tu181.3177 
																																																																																																																																											Let Tu189.3818
																																																																																																																																												Let Ti688.3840
																																																																																																																																													Int:80
																																																																																																																																													printchar Ti688.3840
																																																																																																																																												Let Tu188.3819
																																																																																																																																													Let Ti691.3837
																																																																																																																																														Let Ti689.3838
																																																																																																																																															Int:48
																																																																																																																																															Let Ti690.3839
																																																																																																																																																Int:3
																																																																																																																																																Add Ti689.3838 Ti690.3839
																																																																																																																																														printchar Ti691.3837
																																																																																																																																													Let Tu187.3820
																																																																																																																																														Let Ti692.3836
																																																																																																																																															Int:10
																																																																																																																																															printchar Ti692.3836
																																																																																																																																														Let Tu186.3821
																																																																																																																																															Let Ti695.3833
																																																																																																																																																Let Ta693.3834
																																																																																																																																																	ExtArray 616
																																																																																																																																																	Let Ti694.3835
																																																																																																																																																		Int:0
																																																																																																																																																		Get Ta693.3834 Ti694.3835
																																																																																																																																																App print_int.2762Ti695.3833 
																																																																																																																																															Let Tu185.3822
																																																																																																																																																Let Ti696.3832
																																																																																																																																																	Int:32
																																																																																																																																																	printchar Ti696.3832
																																																																																																																																																Let Tu184.3823
																																																																																																																																																	Let Ti699.3829
																																																																																																																																																		Let Ta697.3830
																																																																																																																																																			ExtArray 616
																																																																																																																																																			Let Ti698.3831
																																																																																																																																																				Int:1
																																																																																																																																																				Get Ta697.3830 Ti698.3831
																																																																																																																																																		App print_int.2762Ti699.3829 
																																																																																																																																																	Let Tu183.3824
																																																																																																																																																		Let Ti700.3828
																																																																																																																																																			Int:32
																																																																																																																																																			printchar Ti700.3828
																																																																																																																																																		Let Tu182.3825
																																																																																																																																																			Let Ti701.3827
																																																																																																																																																				Int:255
																																																																																																																																																				App print_int.2762Ti701.3827 
																																																																																																																																																			Let Ti702.3826
																																																																																																																																																				Int:10
																																																																																																																																																				printchar Ti702.3826
																																																																																																																																											LetRec write_rgb_element.3178 x.3179 
																																																																																																																																												Let ix.3814
																																																																																																																																													App int_of_float.2764x.3179 
																																																																																																																																													Let elem.3815
																																																																																																																																														Let Ti686.3816
																																																																																																																																															Int:255
																																																																																																																																															IfLE ix.3814 Ti686.3816
																																																																																																																																																Let Ti687.3817
																																																																																																																																																	Int:0
																																																																																																																																																	IfLE Ti687.3817 ix.3814
																																																																																																																																																		Var ix.3814
																																																																																																																																																		Int:0
																																																																																																																																																Int:255
																																																																																																																																														App print_int.2762elem.3815 
																																																																																																																																												LetRec write_rgb.3180 Tu190.3181 
																																																																																																																																													Let Tu195.3797
																																																																																																																																														Let Td676.3811
																																																																																																																																															Let Ta674.3812
																																																																																																																																																ExtArray 604
																																																																																																																																																Let Ti675.3813
																																																																																																																																																	Int:0
																																																																																																																																																	Get Ta674.3812 Ti675.3813
																																																																																																																																															App write_rgb_element.3178Td676.3811 
																																																																																																																																														Let Tu194.3798
																																																																																																																																															Let Ti677.3810
																																																																																																																																																Int:32
																																																																																																																																																printchar Ti677.3810
																																																																																																																																															Let Tu193.3799
																																																																																																																																																Let Td680.3807
																																																																																																																																																	Let Ta678.3808
																																																																																																																																																		ExtArray 604
																																																																																																																																																		Let Ti679.3809
																																																																																																																																																			Int:1
																																																																																																																																																			Get Ta678.3808 Ti679.3809
																																																																																																																																																	App write_rgb_element.3178Td680.3807 
																																																																																																																																																Let Tu192.3800
																																																																																																																																																	Let Ti681.3806
																																																																																																																																																		Int:32
																																																																																																																																																		printchar Ti681.3806
																																																																																																																																																	Let Tu191.3801
																																																																																																																																																		Let Td684.3803
																																																																																																																																																			Let Ta682.3804
																																																																																																																																																				ExtArray 604
																																																																																																																																																				Let Ti683.3805
																																																																																																																																																					Int:2
																																																																																																																																																					Get Ta682.3804 Ti683.3805
																																																																																																																																																			App write_rgb_element.3178Td684.3803 
																																																																																																																																																		Let Ti685.3802
																																																																																																																																																			Int:10
																																																																																																																																																			printchar Ti685.3802
																																																																																																																																													LetRec pretrace_diffuse_rays.3182 pixel.3183 nref.3184 
																																																																																																																																														Let Ti661.3775
																																																																																																																																															Int:4
																																																																																																																																															IfLE nref.3184 Ti661.3775
																																																																																																																																																Let sid.3776
																																																																																																																																																	App get_surface_id.3160pixel.3183 nref.3184 
																																																																																																																																																	Let Ti662.3777
																																																																																																																																																		Int:0
																																																																																																																																																		IfLE Ti662.3777 sid.3776
																																																																																																																																																			Let calc_diffuse.3778
																																																																																																																																																				App p_calc_diffuse.2889pixel.3183 
																																																																																																																																																				Let Tu198.3779
																																																																																																																																																					Let Tb663.3782
																																																																																																																																																						Get calc_diffuse.3778 nref.3184
																																																																																																																																																						Let Ti664.3783
																																																																																																																																																							Int:0
																																																																																																																																																							IfEq Tb663.3782 Ti664.3783
																																																																																																																																																								Unit
																																																																																																																																																								Let group_id.3784
																																																																																																																																																									App p_group_id.2895pixel.3183 
																																																																																																																																																									Let Tu197.3785
																																																																																																																																																										Let Ta665.3796
																																																																																																																																																											ExtArray 592
																																																																																																																																																											App vecbzero.2803Ta665.3796 
																																																																																																																																																										Let nvectors.3786
																																																																																																																																																											App p_nvectors.2900pixel.3183 
																																																																																																																																																											Let intersection_points.3787
																																																																																																																																																												App p_intersection_points.2885pixel.3183 
																																																																																																																																																												Let Tu196.3788
																																																																																																																																																													Let Ta667.3792
																																																																																																																																																														Let Ta666.3795
																																																																																																																																																															ExtArray 716
																																																																																																																																																															Get Ta666.3795 group_id.3784
																																																																																																																																																														Let Ta668.3793
																																																																																																																																																															Get nvectors.3786 nref.3184
																																																																																																																																																															Let Ta669.3794
																																																																																																																																																																Get intersection_points.3787 nref.3184
																																																																																																																																																																App trace_diffuse_rays.3136Ta667.3792 Ta668.3793 Ta669.3794 
																																																																																																																																																													Let ray20p.3789
																																																																																																																																																														App p_received_ray_20percent.2893pixel.3183 
																																																																																																																																																														Let Ta670.3790
																																																																																																																																																															Get ray20p.3789 nref.3184
																																																																																																																																																															Let Ta671.3791
																																																																																																																																																																ExtArray 592
																																																																																																																																																																App veccpy.2805Ta670.3790 Ta671.3791 
																																																																																																																																																					Let Ti673.3780
																																																																																																																																																						Let Ti672.3781
																																																																																																																																																							Int:1
																																																																																																																																																							Add nref.3184 Ti672.3781
																																																																																																																																																						App pretrace_diffuse_rays.3182pixel.3183 Ti673.3780 
																																																																																																																																																			Unit
																																																																																																																																																Unit
																																																																																																																																														LetRec pretrace_pixels.3185 line.3186 x.3187 group_id.3188 lc0.3189 lc1.3190 lc2.3191 
																																																																																																																																															Let Ti611.3714
																																																																																																																																																Int:0
																																																																																																																																																IfLE Ti611.3714 x.3187
																																																																																																																																																	Let xdisp.3715
																																																																																																																																																		Let Td614.3767
																																																																																																																																																			Let Ta612.3773
																																																																																																																																																				ExtArray 632
																																																																																																																																																				Let Ti613.3774
																																																																																																																																																					Int:0
																																																																																																																																																					Get Ta612.3773 Ti613.3774
																																																																																																																																																			Let Td619.3768
																																																																																																																																																				Let Ti618.3769
																																																																																																																																																					Let Ti617.3770
																																																																																																																																																						Let Ta615.3771
																																																																																																																																																							ExtArray 624
																																																																																																																																																							Let Ti616.3772
																																																																																																																																																								Int:0
																																																																																																																																																								Get Ta615.3771 Ti616.3772
																																																																																																																																																						Sub x.3187 Ti617.3770
																																																																																																																																																					App float_of_int.2766Ti618.3769 
																																																																																																																																																				FMul Td614.3767 Td619.3768
																																																																																																																																																		Let Tu208.3716
																																																																																																																																																			Let Ta620.3760
																																																																																																																																																				ExtArray 696
																																																																																																																																																				Let Ti621.3761
																																																																																																																																																					Int:0
																																																																																																																																																					Let Td626.3762
																																																																																																																																																						Let Td625.3763
																																																																																																																																																							Let Td624.3764
																																																																																																																																																								Let Ta622.3765
																																																																																																																																																									ExtArray 660
																																																																																																																																																									Let Ti623.3766
																																																																																																																																																										Int:0
																																																																																																																																																										Get Ta622.3765 Ti623.3766
																																																																																																																																																								FMul xdisp.3715 Td624.3764
																																																																																																																																																							FAdd Td625.3763 lc0.3189
																																																																																																																																																						Put Ta620.3760 Ti621.3761 Td626.3762
																																																																																																																																																			Let Tu207.3717
																																																																																																																																																				Let Ta627.3753
																																																																																																																																																					ExtArray 696
																																																																																																																																																					Let Ti628.3754
																																																																																																																																																						Int:1
																																																																																																																																																						Let Td633.3755
																																																																																																																																																							Let Td632.3756
																																																																																																																																																								Let Td631.3757
																																																																																																																																																									Let Ta629.3758
																																																																																																																																																										ExtArray 660
																																																																																																																																																										Let Ti630.3759
																																																																																																																																																											Int:1
																																																																																																																																																											Get Ta629.3758 Ti630.3759
																																																																																																																																																									FMul xdisp.3715 Td631.3757
																																																																																																																																																								FAdd Td632.3756 lc1.3190
																																																																																																																																																							Put Ta627.3753 Ti628.3754 Td633.3755
																																																																																																																																																				Let Tu206.3718
																																																																																																																																																					Let Ta634.3746
																																																																																																																																																						ExtArray 696
																																																																																																																																																						Let Ti635.3747
																																																																																																																																																							Int:2
																																																																																																																																																							Let Td640.3748
																																																																																																																																																								Let Td639.3749
																																																																																																																																																									Let Td638.3750
																																																																																																																																																										Let Ta636.3751
																																																																																																																																																											ExtArray 660
																																																																																																																																																											Let Ti637.3752
																																																																																																																																																												Int:2
																																																																																																																																																												Get Ta636.3751 Ti637.3752
																																																																																																																																																										FMul xdisp.3715 Td638.3750
																																																																																																																																																									FAdd Td639.3749 lc2.3191
																																																																																																																																																								Put Ta634.3746 Ti635.3747 Td640.3748
																																																																																																																																																					Let Tu205.3719
																																																																																																																																																						Let Ta641.3744
																																																																																																																																																							ExtArray 696
																																																																																																																																																							Let Ti642.3745
																																																																																																																																																								Int:0
																																																																																																																																																								App vecunit_sgn.2813Ta641.3744 Ti642.3745 
																																																																																																																																																						Let Tu204.3720
																																																																																																																																																							Let Ta643.3743
																																																																																																																																																								ExtArray 604
																																																																																																																																																								App vecbzero.2803Ta643.3743 
																																																																																																																																																							Let Tu203.3721
																																																																																																																																																								Let Ta644.3741
																																																																																																																																																									ExtArray 636
																																																																																																																																																									Let Ta645.3742
																																																																																																																																																										ExtArray 300
																																																																																																																																																										App veccpy.2805Ta644.3741 Ta645.3742 
																																																																																																																																																								Let Tu202.3722
																																																																																																																																																									Let Ti646.3736
																																																																																																																																																										Int:0
																																																																																																																																																										Let Td647.3737
																																																																																																																																																											Float:1.000000
																																																																																																																																																											Let Ta648.3738
																																																																																																																																																												ExtArray 696
																																																																																																																																																												Let Tt649.3739
																																																																																																																																																													Get line.3186 x.3187
																																																																																																																																																													Let Td650.3740
																																																																																																																																																														Float:0.000000
																																																																																																																																																														App trace_ray.3122Ti646.3736 Td647.3737 Ta648.3738 Tt649.3739 Td650.3740 
																																																																																																																																																									Let Tu201.3723
																																																																																																																																																										Let Ta652.3733
																																																																																																																																																											Let Tt651.3735
																																																																																																																																																												Get line.3186 x.3187
																																																																																																																																																												App p_rgb.2883Tt651.3735 
																																																																																																																																																											Let Ta653.3734
																																																																																																																																																												ExtArray 604
																																																																																																																																																												App veccpy.2805Ta652.3733 Ta653.3734 
																																																																																																																																																										Let Tu200.3724
																																																																																																																																																											Let Tt654.3732
																																																																																																																																																												Get line.3186 x.3187
																																																																																																																																																												App p_set_group_id.2897Tt654.3732 group_id.3188 
																																																																																																																																																											Let Tu199.3725
																																																																																																																																																												Let Tt655.3730
																																																																																																																																																													Get line.3186 x.3187
																																																																																																																																																													Let Ti656.3731
																																																																																																																																																														Int:0
																																																																																																																																																														App pretrace_diffuse_rays.3182Tt655.3730 Ti656.3731 
																																																																																																																																																												Let Ti658.3726
																																																																																																																																																													Let Ti657.3729
																																																																																																																																																														Int:1
																																																																																																																																																														Sub x.3187 Ti657.3729
																																																																																																																																																													Let Ti660.3727
																																																																																																																																																														Let Ti659.3728
																																																																																																																																																															Int:1
																																																																																																																																																															App add_mod5.2792group_id.3188 Ti659.3728 
																																																																																																																																																														App pretrace_pixels.3185line.3186 Ti658.3726 Ti660.3727 lc0.3189 lc1.3190 lc2.3191 
																																																																																																																																																	Unit
																																																																																																																																															LetRec pretrace_line.3192 line.3193 y.3194 group_id.3195 
																																																																																																																																																Let ydisp.3676
																																																																																																																																																	Let Td579.3706
																																																																																																																																																		Let Ta577.3712
																																																																																																																																																			ExtArray 632
																																																																																																																																																			Let Ti578.3713
																																																																																																																																																				Int:0
																																																																																																																																																				Get Ta577.3712 Ti578.3713
																																																																																																																																																		Let Td584.3707
																																																																																																																																																			Let Ti583.3708
																																																																																																																																																				Let Ti582.3709
																																																																																																																																																					Let Ta580.3710
																																																																																																																																																						ExtArray 624
																																																																																																																																																						Let Ti581.3711
																																																																																																																																																							Int:1
																																																																																																																																																							Get Ta580.3710 Ti581.3711
																																																																																																																																																					Sub y.3194 Ti582.3709
																																																																																																																																																				App float_of_int.2766Ti583.3708 
																																																																																																																																																			FMul Td579.3706 Td584.3707
																																																																																																																																																	Let lc0.3677
																																																																																																																																																		Let Td588.3699
																																																																																																																																																			Let Td587.3703
																																																																																																																																																				Let Ta585.3704
																																																																																																																																																					ExtArray 672
																																																																																																																																																					Let Ti586.3705
																																																																																																																																																						Int:0
																																																																																																																																																						Get Ta585.3704 Ti586.3705
																																																																																																																																																				FMul ydisp.3676 Td587.3703
																																																																																																																																																			Let Td591.3700
																																																																																																																																																				Let Ta589.3701
																																																																																																																																																					ExtArray 684
																																																																																																																																																					Let Ti590.3702
																																																																																																																																																						Int:0
																																																																																																																																																						Get Ta589.3701 Ti590.3702
																																																																																																																																																				FAdd Td588.3699 Td591.3700
																																																																																																																																																		Let lc1.3678
																																																																																																																																																			Let Td595.3692
																																																																																																																																																				Let Td594.3696
																																																																																																																																																					Let Ta592.3697
																																																																																																																																																						ExtArray 672
																																																																																																																																																						Let Ti593.3698
																																																																																																																																																							Int:1
																																																																																																																																																							Get Ta592.3697 Ti593.3698
																																																																																																																																																					FMul ydisp.3676 Td594.3696
																																																																																																																																																				Let Td598.3693
																																																																																																																																																					Let Ta596.3694
																																																																																																																																																						ExtArray 684
																																																																																																																																																						Let Ti597.3695
																																																																																																																																																							Int:1
																																																																																																																																																							Get Ta596.3694 Ti597.3695
																																																																																																																																																					FAdd Td595.3692 Td598.3693
																																																																																																																																																			Let lc2.3679
																																																																																																																																																				Let Td602.3685
																																																																																																																																																					Let Td601.3689
																																																																																																																																																						Let Ta599.3690
																																																																																																																																																							ExtArray 672
																																																																																																																																																							Let Ti600.3691
																																																																																																																																																								Int:2
																																																																																																																																																								Get Ta599.3690 Ti600.3691
																																																																																																																																																						FMul ydisp.3676 Td601.3689
																																																																																																																																																					Let Td605.3686
																																																																																																																																																						Let Ta603.3687
																																																																																																																																																							ExtArray 684
																																																																																																																																																							Let Ti604.3688
																																																																																																																																																								Int:2
																																																																																																																																																								Get Ta603.3687 Ti604.3688
																																																																																																																																																						FAdd Td602.3685 Td605.3686
																																																																																																																																																				Let Ti610.3680
																																																																																																																																																					Let Ti608.3681
																																																																																																																																																						Let Ta606.3683
																																																																																																																																																							ExtArray 616
																																																																																																																																																							Let Ti607.3684
																																																																																																																																																								Int:0
																																																																																																																																																								Get Ta606.3683 Ti607.3684
																																																																																																																																																						Let Ti609.3682
																																																																																																																																																							Int:1
																																																																																																																																																							Sub Ti608.3681 Ti609.3682
																																																																																																																																																					App pretrace_pixels.3185line.3193 Ti610.3680 group_id.3195 lc0.3677 lc1.3678 lc2.3679 
																																																																																																																																																LetRec scan_pixel.3196 x.3197 y.3198 prev.3199 cur.3200 next.3201 
																																																																																																																																																	Let Ti565.3659
																																																																																																																																																		Let Ta563.3674
																																																																																																																																																			ExtArray 616
																																																																																																																																																			Let Ti564.3675
																																																																																																																																																				Int:0
																																																																																																																																																				Get Ta563.3674 Ti564.3675
																																																																																																																																																		IfLE Ti565.3659 x.3197
																																																																																																																																																			Unit
																																																																																																																																																			Let Tu211.3660
																																																																																																																																																				Let Ta566.3671
																																																																																																																																																					ExtArray 604
																																																																																																																																																					Let Ta568.3672
																																																																																																																																																						Let Tt567.3673
																																																																																																																																																							Get cur.3200 x.3197
																																																																																																																																																							App p_rgb.2883Tt567.3673 
																																																																																																																																																						App veccpy.2805Ta566.3671 Ta568.3672 
																																																																																																																																																				Let Tu210.3661
																																																																																																																																																					Let Tb569.3666
																																																																																																																																																						App neighbors_exist.3156x.3197 y.3198 next.3201 
																																																																																																																																																						Let Ti570.3667
																																																																																																																																																							Int:0
																																																																																																																																																							IfEq Tb569.3666 Ti570.3667
																																																																																																																																																								Let Tt571.3669
																																																																																																																																																									Get cur.3200 x.3197
																																																																																																																																																									Let Ti572.3670
																																																																																																																																																										Int:0
																																																																																																																																																										App do_without_neighbors.3153Tt571.3669 Ti572.3670 
																																																																																																																																																								Let Ti573.3668
																																																																																																																																																									Int:0
																																																																																																																																																									App try_exploit_neighbors.3169x.3197 y.3198 prev.3199 cur.3200 next.3201 Ti573.3668 
																																																																																																																																																					Let Tu209.3662
																																																																																																																																																						Let Tu574.3665
																																																																																																																																																							Unit
																																																																																																																																																							App write_rgb.3180Tu574.3665 
																																																																																																																																																						Let Ti576.3663
																																																																																																																																																							Let Ti575.3664
																																																																																																																																																								Int:1
																																																																																																																																																								Add x.3197 Ti575.3664
																																																																																																																																																							App scan_pixel.3196Ti576.3663 y.3198 prev.3199 cur.3200 next.3201 
																																																																																																																																																	LetRec scan_line.3202 y.3203 prev.3204 cur.3205 next.3206 group_id.3207 
																																																																																																																																																		Let Ti550.3642
																																																																																																																																																			Let Ta548.3657
																																																																																																																																																				ExtArray 616
																																																																																																																																																				Let Ti549.3658
																																																																																																																																																					Int:1
																																																																																																																																																					Get Ta548.3657 Ti549.3658
																																																																																																																																																			IfLE Ti550.3642 y.3203
																																																																																																																																																				Unit
																																																																																																																																																				Let Tu213.3643
																																																																																																																																																					Let Ti555.3650
																																																																																																																																																						Let Ti553.3653
																																																																																																																																																							Let Ta551.3655
																																																																																																																																																								ExtArray 616
																																																																																																																																																								Let Ti552.3656
																																																																																																																																																									Int:1
																																																																																																																																																									Get Ta551.3655 Ti552.3656
																																																																																																																																																							Let Ti554.3654
																																																																																																																																																								Int:1
																																																																																																																																																								Sub Ti553.3653 Ti554.3654
																																																																																																																																																						IfLE Ti555.3650 y.3203
																																																																																																																																																							Unit
																																																																																																																																																							Let Ti557.3651
																																																																																																																																																								Let Ti556.3652
																																																																																																																																																									Int:1
																																																																																																																																																									Add y.3203 Ti556.3652
																																																																																																																																																								App pretrace_line.3192next.3206 Ti557.3651 group_id.3207 
																																																																																																																																																					Let Tu212.3644
																																																																																																																																																						Let Ti558.3649
																																																																																																																																																							Int:0
																																																																																																																																																							App scan_pixel.3196Ti558.3649 y.3203 prev.3204 cur.3205 next.3206 
																																																																																																																																																						Let Ti560.3645
																																																																																																																																																							Let Ti559.3648
																																																																																																																																																								Int:1
																																																																																																																																																								Add y.3203 Ti559.3648
																																																																																																																																																							Let Ti562.3646
																																																																																																																																																								Let Ti561.3647
																																																																																																																																																									Int:2
																																																																																																																																																									App add_mod5.2792group_id.3207 Ti561.3647 
																																																																																																																																																								App scan_line.3202Ti560.3645 cur.3205 next.3206 prev.3204 Ti562.3646 
																																																																																																																																																		LetRec create_float5x3array.3208 Tu214.3209 
																																																																																																																																																			Let vec.3617
																																																																																																																																																				Let Ti529.3640
																																																																																																																																																					Int:3
																																																																																																																																																					Let Td530.3641
																																																																																																																																																						Float:0.000000
																																																																																																																																																						ExtFunApp create_float_array Ti529.3640,Td530.3641,
																																																																																																																																																				Let array.3618
																																																																																																																																																					Let Ti531.3639
																																																																																																																																																						Int:5
																																																																																																																																																						ExtFunApp create_array Ti531.3639,vec.3617,
																																																																																																																																																					Let Tu218.3619
																																																																																																																																																						Let Ti532.3635
																																																																																																																																																							Int:1
																																																																																																																																																							Let Ta535.3636
																																																																																																																																																								Let Ti533.3637
																																																																																																																																																									Int:3
																																																																																																																																																									Let Td534.3638
																																																																																																																																																										Float:0.000000
																																																																																																																																																										ExtFunApp create_float_array Ti533.3637,Td534.3638,
																																																																																																																																																								Put array.3618 Ti532.3635 Ta535.3636
																																																																																																																																																						Let Tu217.3620
																																																																																																																																																							Let Ti536.3631
																																																																																																																																																								Int:2
																																																																																																																																																								Let Ta539.3632
																																																																																																																																																									Let Ti537.3633
																																																																																																																																																										Int:3
																																																																																																																																																										Let Td538.3634
																																																																																																																																																											Float:0.000000
																																																																																																																																																											ExtFunApp create_float_array Ti537.3633,Td538.3634,
																																																																																																																																																									Put array.3618 Ti536.3631 Ta539.3632
																																																																																																																																																							Let Tu216.3621
																																																																																																																																																								Let Ti540.3627
																																																																																																																																																									Int:3
																																																																																																																																																									Let Ta543.3628
																																																																																																																																																										Let Ti541.3629
																																																																																																																																																											Int:3
																																																																																																																																																											Let Td542.3630
																																																																																																																																																												Float:0.000000
																																																																																																																																																												ExtFunApp create_float_array Ti541.3629,Td542.3630,
																																																																																																																																																										Put array.3618 Ti540.3627 Ta543.3628
																																																																																																																																																								Let Tu215.3622
																																																																																																																																																									Let Ti544.3623
																																																																																																																																																										Int:4
																																																																																																																																																										Let Ta547.3624
																																																																																																																																																											Let Ti545.3625
																																																																																																																																																												Int:3
																																																																																																																																																												Let Td546.3626
																																																																																																																																																													Float:0.000000
																																																																																																																																																													ExtFunApp create_float_array Ti545.3625,Td546.3626,
																																																																																																																																																											Put array.3618 Ti544.3623 Ta547.3624
																																																																																																																																																									Var array.3618
																																																																																																																																																			LetRec create_pixel.3210 Tu219.3211 
																																																																																																																																																				Let m_rgb.3597
																																																																																																																																																					Let Ti517.3615
																																																																																																																																																						Int:3
																																																																																																																																																						Let Td518.3616
																																																																																																																																																							Float:0.000000
																																																																																																																																																							ExtFunApp create_float_array Ti517.3615,Td518.3616,
																																																																																																																																																					Let m_isect_ps.3598
																																																																																																																																																						Let Tu519.3614
																																																																																																																																																							Unit
																																																																																																																																																							App create_float5x3array.3208Tu519.3614 
																																																																																																																																																						Let m_sids.3599
																																																																																																																																																							Let Ti520.3612
																																																																																																																																																								Int:5
																																																																																																																																																								Let Ti521.3613
																																																																																																																																																									Int:0
																																																																																																																																																									ExtFunApp create_array Ti520.3612,Ti521.3613,
																																																																																																																																																							Let m_cdif.3600
																																																																																																																																																								Let Ti522.3610
																																																																																																																																																									Int:5
																																																																																																																																																									Let Ti523.3611
																																																																																																																																																										Int:0
																																																																																																																																																										ExtFunApp create_array Ti522.3610,Ti523.3611,
																																																																																																																																																								Let m_engy.3601
																																																																																																																																																									Let Tu524.3609
																																																																																																																																																										Unit
																																																																																																																																																										App create_float5x3array.3208Tu524.3609 
																																																																																																																																																									Let m_r20p.3602
																																																																																																																																																										Let Tu525.3608
																																																																																																																																																											Unit
																																																																																																																																																											App create_float5x3array.3208Tu525.3608 
																																																																																																																																																										Let m_gid.3603
																																																																																																																																																											Let Ti526.3606
																																																																																																																																																												Int:1
																																																																																																																																																												Let Ti527.3607
																																																																																																																																																													Int:0
																																																																																																																																																													ExtFunApp create_array Ti526.3606,Ti527.3607,
																																																																																																																																																											Let m_nvectors.3604
																																																																																																																																																												Let Tu528.3605
																																																																																																																																																													Unit
																																																																																																																																																													App create_float5x3array.3208Tu528.3605 
																																																																																																																																																												Tuple (m_rgb.3597,m_isect_ps.3598,m_sids.3599,m_cdif.3600,m_engy.3601,m_r20p.3602,m_gid.3603,m_nvectors.3604,)
																																																																																																																																																				LetRec init_line_elements.3212 line.3213 n.3214 
																																																																																																																																																					Let Ti512.3591
																																																																																																																																																						Int:0
																																																																																																																																																						IfLE Ti512.3591 n.3214
																																																																																																																																																							Let Tu220.3592
																																																																																																																																																								Let Tt514.3595
																																																																																																																																																									Let Tu513.3596
																																																																																																																																																										Unit
																																																																																																																																																										App create_pixel.3210Tu513.3596 
																																																																																																																																																									Put line.3213 n.3214 Tt514.3595
																																																																																																																																																								Let Ti516.3593
																																																																																																																																																									Let Ti515.3594
																																																																																																																																																										Int:1
																																																																																																																																																										Sub n.3214 Ti515.3594
																																																																																																																																																									App init_line_elements.3212line.3213 Ti516.3593 
																																																																																																																																																							Var line.3213
																																																																																																																																																					LetRec create_pixelline.3215 Tu221.3216 
																																																																																																																																																						Let line.3580
																																																																																																																																																							Let Ti504.3586
																																																																																																																																																								Let Ta502.3589
																																																																																																																																																									ExtArray 616
																																																																																																																																																									Let Ti503.3590
																																																																																																																																																										Int:0
																																																																																																																																																										Get Ta502.3589 Ti503.3590
																																																																																																																																																								Let Tt506.3587
																																																																																																																																																									Let Tu505.3588
																																																																																																																																																										Unit
																																																																																																																																																										App create_pixel.3210Tu505.3588 
																																																																																																																																																									ExtFunApp create_array Ti504.3586,Tt506.3587,
																																																																																																																																																							Let Ti511.3581
																																																																																																																																																								Let Ti509.3582
																																																																																																																																																									Let Ta507.3584
																																																																																																																																																										ExtArray 616
																																																																																																																																																										Let Ti508.3585
																																																																																																																																																											Int:0
																																																																																																																																																											Get Ta507.3584 Ti508.3585
																																																																																																																																																									Let Ti510.3583
																																																																																																																																																										Int:2
																																																																																																																																																										Sub Ti509.3582 Ti510.3583
																																																																																																																																																								App init_line_elements.3212line.3580 Ti511.3581 
																																																																																																																																																						LetRec tan.3217 x.3218 
																																																																																																																																																							Let Td499.3577
																																																																																																																																																								App sin.2781x.3218 
																																																																																																																																																								Let Td500.3578
																																																																																																																																																									App cos.2783x.3218 
																																																																																																																																																									Let Td501.3579
																																																																																																																																																										FReciprocal Td500.3578
																																																																																																																																																										FMul Td499.3577 Td501.3579
																																																																																																																																																							LetRec adjust_position.3219 h.3220 ratio.3221 
																																																																																																																																																								Let l.3567
																																																																																																																																																									Let Td495.3574
																																																																																																																																																										Let Td493.3575
																																																																																																																																																											FMul h.3220 h.3220
																																																																																																																																																											Let Td494.3576
																																																																																																																																																												Float:0.100000
																																																																																																																																																												FAdd Td493.3575 Td494.3576
																																																																																																																																																										sqrt Td495.3574
																																																																																																																																																									Let tan_h.3568
																																																																																																																																																										Let Td496.3572
																																																																																																																																																											Float:1.000000
																																																																																																																																																											Let Td497.3573
																																																																																																																																																												FReciprocal l.3567
																																																																																																																																																												FMul Td496.3572 Td497.3573
																																																																																																																																																										Let theta_h.3569
																																																																																																																																																											App atan.2785tan_h.3568 
																																																																																																																																																											Let tan_m.3570
																																																																																																																																																												Let Td498.3571
																																																																																																																																																													FMul theta_h.3569 ratio.3221
																																																																																																																																																													App tan.3217Td498.3571 
																																																																																																																																																												FMul tan_m.3570 l.3567
																																																																																																																																																								LetRec calc_dirvec.3222 icount.3223 x.3224 y.3225 rx.3226 ry.3227 group_id.3228 index.3229 
																																																																																																																																																									Let Ti448.3511
																																																																																																																																																										Int:5
																																																																																																																																																										IfLE Ti448.3511 icount.3223
																																																																																																																																																											Let l.3516
																																																																																																																																																												Let Td453.3562
																																																																																																																																																													Let Td451.3563
																																																																																																																																																														Let Td449.3565
																																																																																																																																																															App fsqr.2750x.3224 
																																																																																																																																																															Let Td450.3566
																																																																																																																																																																App fsqr.2750y.3225 
																																																																																																																																																																FAdd Td449.3565 Td450.3566
																																																																																																																																																														Let Td452.3564
																																																																																																																																																															Float:1.000000
																																																																																																																																																															FAdd Td451.3563 Td452.3564
																																																																																																																																																													sqrt Td453.3562
																																																																																																																																																												Let vx.3517
																																																																																																																																																													Let Td454.3561
																																																																																																																																																														FReciprocal l.3516
																																																																																																																																																														FMul x.3224 Td454.3561
																																																																																																																																																													Let vy.3518
																																																																																																																																																														Let Td455.3560
																																																																																																																																																															FReciprocal l.3516
																																																																																																																																																															FMul y.3225 Td455.3560
																																																																																																																																																														Let vz.3519
																																																																																																																																																															Let Td456.3558
																																																																																																																																																																Float:1.000000
																																																																																																																																																																Let Td457.3559
																																																																																																																																																																	FReciprocal l.3516
																																																																																																																																																																	FMul Td456.3558 Td457.3559
																																																																																																																																																															Let dgroup.3520
																																																																																																																																																																Let Ta458.3557
																																																																																																																																																																	ExtArray 716
																																																																																																																																																																	Get Ta458.3557 group_id.3228
																																																																																																																																																																Let Tu226.3521
																																																																																																																																																																	Let Ta460.3555
																																																																																																																																																																		Let Tt459.3556
																																																																																																																																																																			Get dgroup.3520 index.3229
																																																																																																																																																																			App d_vec.2902Tt459.3556 
																																																																																																																																																																		App vecset.2795Ta460.3555 vx.3517 vy.3518 vz.3519 
																																																																																																																																																																	Let Tu225.3522
																																																																																																																																																																		Let Ta464.3550
																																																																																																																																																																			Let Tt463.3552
																																																																																																																																																																				Let Ti462.3553
																																																																																																																																																																					Let Ti461.3554
																																																																																																																																																																						Int:40
																																																																																																																																																																						Add index.3229 Ti461.3554
																																																																																																																																																																					Get dgroup.3520 Ti462.3553
																																																																																																																																																																				App d_vec.2902Tt463.3552 
																																																																																																																																																																			Let Td465.3551
																																																																																																																																																																				App fneg.2746vy.3518 
																																																																																																																																																																				App vecset.2795Ta464.3550 vx.3517 vz.3519 Td465.3551 
																																																																																																																																																																		Let Tu224.3523
																																																																																																																																																																			Let Ta469.3544
																																																																																																																																																																				Let Tt468.3547
																																																																																																																																																																					Let Ti467.3548
																																																																																																																																																																						Let Ti466.3549
																																																																																																																																																																							Int:80
																																																																																																																																																																							Add index.3229 Ti466.3549
																																																																																																																																																																						Get dgroup.3520 Ti467.3548
																																																																																																																																																																					App d_vec.2902Tt468.3547 
																																																																																																																																																																				Let Td470.3545
																																																																																																																																																																					App fneg.2746vx.3517 
																																																																																																																																																																					Let Td471.3546
																																																																																																																																																																						App fneg.2746vy.3518 
																																																																																																																																																																						App vecset.2795Ta469.3544 vz.3519 Td470.3545 Td471.3546 
																																																																																																																																																																			Let Tu223.3524
																																																																																																																																																																				Let Ta475.3537
																																																																																																																																																																					Let Tt474.3541
																																																																																																																																																																						Let Ti473.3542
																																																																																																																																																																							Let Ti472.3543
																																																																																																																																																																								Int:1
																																																																																																																																																																								Add index.3229 Ti472.3543
																																																																																																																																																																							Get dgroup.3520 Ti473.3542
																																																																																																																																																																						App d_vec.2902Tt474.3541 
																																																																																																																																																																					Let Td476.3538
																																																																																																																																																																						App fneg.2746vx.3517 
																																																																																																																																																																						Let Td477.3539
																																																																																																																																																																							App fneg.2746vy.3518 
																																																																																																																																																																							Let Td478.3540
																																																																																																																																																																								App fneg.2746vz.3519 
																																																																																																																																																																								App vecset.2795Ta475.3537 Td476.3538 Td477.3539 Td478.3540 
																																																																																																																																																																				Let Tu222.3525
																																																																																																																																																																					Let Ta482.3531
																																																																																																																																																																						Let Tt481.3534
																																																																																																																																																																							Let Ti480.3535
																																																																																																																																																																								Let Ti479.3536
																																																																																																																																																																									Int:41
																																																																																																																																																																									Add index.3229 Ti479.3536
																																																																																																																																																																								Get dgroup.3520 Ti480.3535
																																																																																																																																																																							App d_vec.2902Tt481.3534 
																																																																																																																																																																						Let Td483.3532
																																																																																																																																																																							App fneg.2746vx.3517 
																																																																																																																																																																							Let Td484.3533
																																																																																																																																																																								App fneg.2746vz.3519 
																																																																																																																																																																								App vecset.2795Ta482.3531 Td483.3532 Td484.3533 vy.3518 
																																																																																																																																																																					Let Ta488.3526
																																																																																																																																																																						Let Tt487.3528
																																																																																																																																																																							Let Ti486.3529
																																																																																																																																																																								Let Ti485.3530
																																																																																																																																																																									Int:81
																																																																																																																																																																									Add index.3229 Ti485.3530
																																																																																																																																																																								Get dgroup.3520 Ti486.3529
																																																																																																																																																																							App d_vec.2902Tt487.3528 
																																																																																																																																																																						Let Td489.3527
																																																																																																																																																																							App fneg.2746vz.3519 
																																																																																																																																																																							App vecset.2795Ta488.3526 Td489.3527 vx.3517 vy.3518 
																																																																																																																																																											Let x2.3512
																																																																																																																																																												App adjust_position.3219y.3225 rx.3226 
																																																																																																																																																												Let Ti491.3513
																																																																																																																																																													Let Ti490.3515
																																																																																																																																																														Int:1
																																																																																																																																																														Add icount.3223 Ti490.3515
																																																																																																																																																													Let Td492.3514
																																																																																																																																																														App adjust_position.3219x2.3512 ry.3227 
																																																																																																																																																														App calc_dirvec.3222Ti491.3513 x2.3512 Td492.3514 rx.3226 ry.3227 group_id.3228 index.3229 
																																																																																																																																																									LetRec calc_dirvecs.3230 col.3231 ry.3232 group_id.3233 index.3234 
																																																																																																																																																										Let Ti427.3486
																																																																																																																																																											Int:0
																																																																																																																																																											IfLE Ti427.3486 col.3231
																																																																																																																																																												Let rx.3487
																																																																																																																																																													Let Td430.3507
																																																																																																																																																														Let Td428.3509
																																																																																																																																																															App float_of_int.2766col.3231 
																																																																																																																																																															Let Td429.3510
																																																																																																																																																																Float:0.200000
																																																																																																																																																																FMul Td428.3509 Td429.3510
																																																																																																																																																														Let Td431.3508
																																																																																																																																																															Float:0.900000
																																																																																																																																																															FSub Td430.3507 Td431.3508
																																																																																																																																																													Let Tu228.3488
																																																																																																																																																														Let Ti432.3504
																																																																																																																																																															Int:0
																																																																																																																																																															Let Td433.3505
																																																																																																																																																																Float:0.000000
																																																																																																																																																																Let Td434.3506
																																																																																																																																																																	Float:0.000000
																																																																																																																																																																	App calc_dirvec.3222Ti432.3504 Td433.3505 Td434.3506 rx.3487 ry.3232 group_id.3233 index.3234 
																																																																																																																																																														Let rx2.3489
																																																																																																																																																															Let Td437.3500
																																																																																																																																																																Let Td435.3502
																																																																																																																																																																	App float_of_int.2766col.3231 
																																																																																																																																																																	Let Td436.3503
																																																																																																																																																																		Float:0.200000
																																																																																																																																																																		FMul Td435.3502 Td436.3503
																																																																																																																																																																Let Td438.3501
																																																																																																																																																																	Float:0.100000
																																																																																																																																																																	FAdd Td437.3500 Td438.3501
																																																																																																																																																															Let Tu227.3490
																																																																																																																																																																Let Ti439.3495
																																																																																																																																																																	Int:0
																																																																																																																																																																	Let Td440.3496
																																																																																																																																																																		Float:0.000000
																																																																																																																																																																		Let Td441.3497
																																																																																																																																																																			Float:0.000000
																																																																																																																																																																			Let Ti443.3498
																																																																																																																																																																				Let Ti442.3499
																																																																																																																																																																					Int:2
																																																																																																																																																																					Add index.3234 Ti442.3499
																																																																																																																																																																				App calc_dirvec.3222Ti439.3495 Td440.3496 Td441.3497 rx2.3489 ry.3232 group_id.3233 Ti443.3498 
																																																																																																																																																																Let Ti445.3491
																																																																																																																																																																	Let Ti444.3494
																																																																																																																																																																		Int:1
																																																																																																																																																																		Sub col.3231 Ti444.3494
																																																																																																																																																																	Let Ti447.3492
																																																																																																																																																																		Let Ti446.3493
																																																																																																																																																																			Int:1
																																																																																																																																																																			App add_mod5.2792group_id.3233 Ti446.3493 
																																																																																																																																																																		App calc_dirvecs.3230Ti445.3491 ry.3232 Ti447.3492 index.3234 
																																																																																																																																																												Unit
																																																																																																																																																										LetRec calc_dirvec_rows.3235 row.3236 group_id.3237 index.3238 
																																																																																																																																																											Let Ti415.3472
																																																																																																																																																												Int:0
																																																																																																																																																												IfLE Ti415.3472 row.3236
																																																																																																																																																													Let ry.3473
																																																																																																																																																														Let Td418.3482
																																																																																																																																																															Let Td416.3484
																																																																																																																																																																App float_of_int.2766row.3236 
																																																																																																																																																																Let Td417.3485
																																																																																																																																																																	Float:0.200000
																																																																																																																																																																	FMul Td416.3484 Td417.3485
																																																																																																																																																															Let Td419.3483
																																																																																																																																																																Float:0.900000
																																																																																																																																																																FSub Td418.3482 Td419.3483
																																																																																																																																																														Let Tu229.3474
																																																																																																																																																															Let Ti420.3481
																																																																																																																																																																Int:4
																																																																																																																																																																App calc_dirvecs.3230Ti420.3481 ry.3473 group_id.3237 index.3238 
																																																																																																																																																															Let Ti422.3475
																																																																																																																																																																Let Ti421.3480
																																																																																																																																																																	Int:1
																																																																																																																																																																	Sub row.3236 Ti421.3480
																																																																																																																																																																Let Ti424.3476
																																																																																																																																																																	Let Ti423.3479
																																																																																																																																																																		Int:2
																																																																																																																																																																		App add_mod5.2792group_id.3237 Ti423.3479 
																																																																																																																																																																	Let Ti426.3477
																																																																																																																																																																		Let Ti425.3478
																																																																																																																																																																			Int:4
																																																																																																																																																																			Add index.3238 Ti425.3478
																																																																																																																																																																		App calc_dirvec_rows.3235Ti422.3475 Ti424.3476 Ti426.3477 
																																																																																																																																																													Unit
																																																																																																																																																											LetRec create_dirvec.3239 Tu230.3240 
																																																																																																																																																												Let v3.3465
																																																																																																																																																													Let Ti410.3470
																																																																																																																																																														Int:3
																																																																																																																																																														Let Td411.3471
																																																																																																																																																															Float:0.000000
																																																																																																																																																															ExtFunApp create_float_array Ti410.3470,Td411.3471,
																																																																																																																																																													Let consts.3466
																																																																																																																																																														Let Ti414.3467
																																																																																																																																																															Let Ta412.3468
																																																																																																																																																																ExtArray 0
																																																																																																																																																																Let Ti413.3469
																																																																																																																																																																	Int:0
																																																																																																																																																																	Get Ta412.3468 Ti413.3469
																																																																																																																																																															ExtFunApp create_array Ti414.3467,v3.3465,
																																																																																																																																																														Tuple (v3.3465,consts.3466,)
																																																																																																																																																												LetRec create_dirvec_elements.3241 d.3242 index.3243 
																																																																																																																																																													Let Ti405.3459
																																																																																																																																																														Int:0
																																																																																																																																																														IfLE Ti405.3459 index.3243
																																																																																																																																																															Let Tu231.3460
																																																																																																																																																																Let Tt407.3463
																																																																																																																																																																	Let Tu406.3464
																																																																																																																																																																		Unit
																																																																																																																																																																		App create_dirvec.3239Tu406.3464 
																																																																																																																																																																	Put d.3242 index.3243 Tt407.3463
																																																																																																																																																																Let Ti409.3461
																																																																																																																																																																	Let Ti408.3462
																																																																																																																																																																		Int:1
																																																																																																																																																																		Sub index.3243 Ti408.3462
																																																																																																																																																																	App create_dirvec_elements.3241d.3242 Ti409.3461 
																																																																																																																																																															Unit
																																																																																																																																																													LetRec create_dirvecs.3244 index.3245 
																																																																																																																																																														Let Ti394.3446
																																																																																																																																																															Int:0
																																																																																																																																																															IfLE Ti394.3446 index.3245
																																																																																																																																																																Let Tu233.3447
																																																																																																																																																																	Let Ta395.3454
																																																																																																																																																																		ExtArray 716
																																																																																																																																																																		Let Ta399.3455
																																																																																																																																																																			Let Ti396.3456
																																																																																																																																																																				Int:120
																																																																																																																																																																				Let Tt398.3457
																																																																																																																																																																					Let Tu397.3458
																																																																																																																																																																						Unit
																																																																																																																																																																						App create_dirvec.3239Tu397.3458 
																																																																																																																																																																					ExtFunApp create_array Ti396.3456,Tt398.3457,
																																																																																																																																																																			Put Ta395.3454 index.3245 Ta399.3455
																																																																																																																																																																	Let Tu232.3448
																																																																																																																																																																		Let Ta401.3451
																																																																																																																																																																			Let Ta400.3453
																																																																																																																																																																				ExtArray 716
																																																																																																																																																																				Get Ta400.3453 index.3245
																																																																																																																																																																			Let Ti402.3452
																																																																																																																																																																				Int:118
																																																																																																																																																																				App create_dirvec_elements.3241Ta401.3451 Ti402.3452 
																																																																																																																																																																		Let Ti404.3449
																																																																																																																																																																			Let Ti403.3450
																																																																																																																																																																				Int:1
																																																																																																																																																																				Sub index.3245 Ti403.3450
																																																																																																																																																																			App create_dirvecs.3244Ti404.3449 
																																																																																																																																																																Unit
																																																																																																																																																														LetRec init_dirvec_constants.3246 vecset.3247 index.3248 
																																																																																																																																																															Let Ti390.3441
																																																																																																																																																																Int:0
																																																																																																																																																																IfLE Ti390.3441 index.3248
																																																																																																																																																																	Let Tu234.3442
																																																																																																																																																																		Let Tt391.3445
																																																																																																																																																																			Get vecset.3247 index.3248
																																																																																																																																																																			App setup_dirvec_constants.3031Tt391.3445 
																																																																																																																																																																		Let Ti393.3443
																																																																																																																																																																			Let Ti392.3444
																																																																																																																																																																				Int:1
																																																																																																																																																																				Sub index.3248 Ti392.3444
																																																																																																																																																																			App init_dirvec_constants.3246vecset.3247 Ti393.3443 
																																																																																																																																																																	Unit
																																																																																																																																																															LetRec init_vecset_constants.3249 index.3250 
																																																																																																																																																																Let Ti384.3434
																																																																																																																																																																	Int:0
																																																																																																																																																																	IfLE Ti384.3434 index.3250
																																																																																																																																																																		Let Tu235.3435
																																																																																																																																																																			Let Ta386.3438
																																																																																																																																																																				Let Ta385.3440
																																																																																																																																																																					ExtArray 716
																																																																																																																																																																					Get Ta385.3440 index.3250
																																																																																																																																																																				Let Ti387.3439
																																																																																																																																																																					Int:119
																																																																																																																																																																					App init_dirvec_constants.3246Ta386.3438 Ti387.3439 
																																																																																																																																																																			Let Ti389.3436
																																																																																																																																																																				Let Ti388.3437
																																																																																																																																																																					Int:1
																																																																																																																																																																					Sub index.3250 Ti388.3437
																																																																																																																																																																				App init_vecset_constants.3249Ti389.3436 
																																																																																																																																																																		Unit
																																																																																																																																																																LetRec init_dirvecs.3251 Tu236.3252 
																																																																																																																																																																	Let Tu238.3427
																																																																																																																																																																		Let Ti379.3433
																																																																																																																																																																			Int:4
																																																																																																																																																																			App create_dirvecs.3244Ti379.3433 
																																																																																																																																																																		Let Tu237.3428
																																																																																																																																																																			Let Ti380.3430
																																																																																																																																																																				Int:9
																																																																																																																																																																				Let Ti381.3431
																																																																																																																																																																					Int:0
																																																																																																																																																																					Let Ti382.3432
																																																																																																																																																																						Int:0
																																																																																																																																																																						App calc_dirvec_rows.3235Ti380.3430 Ti381.3431 Ti382.3432 
																																																																																																																																																																			Let Ti383.3429
																																																																																																																																																																				Int:4
																																																																																																																																																																				App init_vecset_constants.3249Ti383.3429 
																																																																																																																																																																	LetRec add_reflection.3253 index.3254 surface_id.3255 bright.3256 v0.3257 v1.3258 v2.3259 
																																																																																																																																																																		Let dvec.3420
																																																																																																																																																																			Let Tu375.3426
																																																																																																																																																																				Unit
																																																																																																																																																																				App create_dirvec.3239Tu375.3426 
																																																																																																																																																																			Let Tu240.3421
																																																																																																																																																																				Let Ta376.3425
																																																																																																																																																																					App d_vec.2902dvec.3420 
																																																																																																																																																																					App vecset.2795Ta376.3425 v0.3257 v1.3258 v2.3259 
																																																																																																																																																																				Let Tu239.3422
																																																																																																																																																																					App setup_dirvec_constants.3031dvec.3420 
																																																																																																																																																																					Let Ta377.3423
																																																																																																																																																																						ExtArray 1016
																																																																																																																																																																						Let Tt378.3424
																																																																																																																																																																							Tuple (surface_id.3255,dvec.3420,bright.3256,)
																																																																																																																																																																							Put Ta377.3423 index.3254 Tt378.3424
																																																																																																																																																																		LetRec setup_rect_reflection.3260 obj_id.3261 obj.3262 
																																																																																																																																																																			Let sid.3375
																																																																																																																																																																				ShiftL2 obj_id.3261
																																																																																																																																																																				Let nr.3376
																																																																																																																																																																					Let Ta339.3418
																																																																																																																																																																						ExtArray 1736
																																																																																																																																																																						Let Ti340.3419
																																																																																																																																																																							Int:0
																																																																																																																																																																							Get Ta339.3418 Ti340.3419
																																																																																																																																																																					Let br.3377
																																																																																																																																																																						Let Td341.3416
																																																																																																																																																																							Float:1.000000
																																																																																																																																																																							Let Td342.3417
																																																																																																																																																																								App o_diffuse.2865obj.3262 
																																																																																																																																																																								FSub Td341.3416 Td342.3417
																																																																																																																																																																						Let n0.3378
																																																																																																																																																																							Let Td345.3413
																																																																																																																																																																								Let Ta343.3414
																																																																																																																																																																									ExtArray 312
																																																																																																																																																																									Let Ti344.3415
																																																																																																																																																																										Int:0
																																																																																																																																																																										Get Ta343.3414 Ti344.3415
																																																																																																																																																																								App fneg.2746Td345.3413 
																																																																																																																																																																							Let n1.3379
																																																																																																																																																																								Let Td348.3410
																																																																																																																																																																									Let Ta346.3411
																																																																																																																																																																										ExtArray 312
																																																																																																																																																																										Let Ti347.3412
																																																																																																																																																																											Int:1
																																																																																																																																																																											Get Ta346.3411 Ti347.3412
																																																																																																																																																																									App fneg.2746Td348.3410 
																																																																																																																																																																								Let n2.3380
																																																																																																																																																																									Let Td351.3407
																																																																																																																																																																										Let Ta349.3408
																																																																																																																																																																											ExtArray 312
																																																																																																																																																																											Let Ti350.3409
																																																																																																																																																																												Int:2
																																																																																																																																																																												Get Ta349.3408 Ti350.3409
																																																																																																																																																																										App fneg.2746Td351.3407 
																																																																																																																																																																									Let Tu243.3381
																																																																																																																																																																										Let Ti353.3402
																																																																																																																																																																											Let Ti352.3406
																																																																																																																																																																												Int:1
																																																																																																																																																																												Add sid.3375 Ti352.3406
																																																																																																																																																																											Let Td356.3403
																																																																																																																																																																												Let Ta354.3404
																																																																																																																																																																													ExtArray 312
																																																																																																																																																																													Let Ti355.3405
																																																																																																																																																																														Int:0
																																																																																																																																																																														Get Ta354.3404 Ti355.3405
																																																																																																																																																																												App add_reflection.3253nr.3376 Ti353.3402 br.3377 Td356.3403 n1.3379 n2.3380 
																																																																																																																																																																										Let Tu242.3382
																																																																																																																																																																											Let Ti358.3395
																																																																																																																																																																												Let Ti357.3401
																																																																																																																																																																													Int:1
																																																																																																																																																																													Add nr.3376 Ti357.3401
																																																																																																																																																																												Let Ti360.3396
																																																																																																																																																																													Let Ti359.3400
																																																																																																																																																																														Int:2
																																																																																																																																																																														Add sid.3375 Ti359.3400
																																																																																																																																																																													Let Td363.3397
																																																																																																																																																																														Let Ta361.3398
																																																																																																																																																																															ExtArray 312
																																																																																																																																																																															Let Ti362.3399
																																																																																																																																																																																Int:1
																																																																																																																																																																																Get Ta361.3398 Ti362.3399
																																																																																																																																																																														App add_reflection.3253Ti358.3395 Ti360.3396 br.3377 n0.3378 Td363.3397 n2.3380 
																																																																																																																																																																											Let Tu241.3383
																																																																																																																																																																												Let Ti365.3388
																																																																																																																																																																													Let Ti364.3394
																																																																																																																																																																														Int:2
																																																																																																																																																																														Add nr.3376 Ti364.3394
																																																																																																																																																																													Let Ti367.3389
																																																																																																																																																																														Let Ti366.3393
																																																																																																																																																																															Int:3
																																																																																																																																																																															Add sid.3375 Ti366.3393
																																																																																																																																																																														Let Td370.3390
																																																																																																																																																																															Let Ta368.3391
																																																																																																																																																																																ExtArray 312
																																																																																																																																																																																Let Ti369.3392
																																																																																																																																																																																	Int:2
																																																																																																																																																																																	Get Ta368.3391 Ti369.3392
																																																																																																																																																																															App add_reflection.3253Ti365.3388 Ti367.3389 br.3377 n0.3378 n1.3379 Td370.3390 
																																																																																																																																																																												Let Ta371.3384
																																																																																																																																																																													ExtArray 1736
																																																																																																																																																																													Let Ti372.3385
																																																																																																																																																																														Int:0
																																																																																																																																																																														Let Ti374.3386
																																																																																																																																																																															Let Ti373.3387
																																																																																																																																																																																Int:3
																																																																																																																																																																																Add nr.3376 Ti373.3387
																																																																																																																																																																															Put Ta371.3384 Ti372.3385 Ti374.3386
																																																																																																																																																																			LetRec setup_surface_reflection.3263 obj_id.3264 obj.3265 
																																																																																																																																																																				Let sid.3334
																																																																																																																																																																					Let Ti303.3373
																																																																																																																																																																						ShiftL2 obj_id.3264
																																																																																																																																																																						Let Ti304.3374
																																																																																																																																																																							Int:1
																																																																																																																																																																							Add Ti303.3373 Ti304.3374
																																																																																																																																																																					Let nr.3335
																																																																																																																																																																						Let Ta305.3371
																																																																																																																																																																							ExtArray 1736
																																																																																																																																																																							Let Ti306.3372
																																																																																																																																																																								Int:0
																																																																																																																																																																								Get Ta305.3371 Ti306.3372
																																																																																																																																																																						Let br.3336
																																																																																																																																																																							Let Td307.3369
																																																																																																																																																																								Float:1.000000
																																																																																																																																																																								Let Td308.3370
																																																																																																																																																																									App o_diffuse.2865obj.3265 
																																																																																																																																																																									FSub Td307.3369 Td308.3370
																																																																																																																																																																							Let p.3337
																																																																																																																																																																								Let Ta309.3367
																																																																																																																																																																									ExtArray 312
																																																																																																																																																																									Let Ta310.3368
																																																																																																																																																																										App o_param_abc.2857obj.3265 
																																																																																																																																																																										App veciprod.2816Ta309.3367 Ta310.3368 
																																																																																																																																																																								Let Tu244.3338
																																																																																																																																																																									Let Td318.3343
																																																																																																																																																																										Let Td314.3360
																																																																																																																																																																											Let Td313.3364
																																																																																																																																																																												Let Td311.3365
																																																																																																																																																																													Float:2.000000
																																																																																																																																																																													Let Td312.3366
																																																																																																																																																																														App o_param_a.2851obj.3265 
																																																																																																																																																																														FMul Td311.3365 Td312.3366
																																																																																																																																																																												FMul Td313.3364 p.3337
																																																																																																																																																																											Let Td317.3361
																																																																																																																																																																												Let Ta315.3362
																																																																																																																																																																													ExtArray 312
																																																																																																																																																																													Let Ti316.3363
																																																																																																																																																																														Int:0
																																																																																																																																																																														Get Ta315.3362 Ti316.3363
																																																																																																																																																																												FSub Td314.3360 Td317.3361
																																																																																																																																																																										Let Td326.3344
																																																																																																																																																																											Let Td322.3353
																																																																																																																																																																												Let Td321.3357
																																																																																																																																																																													Let Td319.3358
																																																																																																																																																																														Float:2.000000
																																																																																																																																																																														Let Td320.3359
																																																																																																																																																																															App o_param_b.2853obj.3265 
																																																																																																																																																																															FMul Td319.3358 Td320.3359
																																																																																																																																																																													FMul Td321.3357 p.3337
																																																																																																																																																																												Let Td325.3354
																																																																																																																																																																													Let Ta323.3355
																																																																																																																																																																														ExtArray 312
																																																																																																																																																																														Let Ti324.3356
																																																																																																																																																																															Int:1
																																																																																																																																																																															Get Ta323.3355 Ti324.3356
																																																																																																																																																																													FSub Td322.3353 Td325.3354
																																																																																																																																																																											Let Td334.3345
																																																																																																																																																																												Let Td330.3346
																																																																																																																																																																													Let Td329.3350
																																																																																																																																																																														Let Td327.3351
																																																																																																																																																																															Float:2.000000
																																																																																																																																																																															Let Td328.3352
																																																																																																																																																																																App o_param_c.2855obj.3265 
																																																																																																																																																																																FMul Td327.3351 Td328.3352
																																																																																																																																																																														FMul Td329.3350 p.3337
																																																																																																																																																																													Let Td333.3347
																																																																																																																																																																														Let Ta331.3348
																																																																																																																																																																															ExtArray 312
																																																																																																																																																																															Let Ti332.3349
																																																																																																																																																																																Int:2
																																																																																																																																																																																Get Ta331.3348 Ti332.3349
																																																																																																																																																																														FSub Td330.3346 Td333.3347
																																																																																																																																																																												App add_reflection.3253nr.3335 sid.3334 br.3336 Td318.3343 Td326.3344 Td334.3345 
																																																																																																																																																																									Let Ta335.3339
																																																																																																																																																																										ExtArray 1736
																																																																																																																																																																										Let Ti336.3340
																																																																																																																																																																											Int:0
																																																																																																																																																																											Let Ti338.3341
																																																																																																																																																																												Let Ti337.3342
																																																																																																																																																																													Int:1
																																																																																																																																																																													Add nr.3335 Ti337.3342
																																																																																																																																																																												Put Ta335.3339 Ti336.3340 Ti338.3341
																																																																																																																																																																				LetRec setup_reflections.3266 obj_id.3267 
																																																																																																																																																																					Let Ti295.3324
																																																																																																																																																																						Int:0
																																																																																																																																																																						IfLE Ti295.3324 obj_id.3267
																																																																																																																																																																							Let obj.3325
																																																																																																																																																																								Let Ta296.3333
																																																																																																																																																																									ExtArray 48
																																																																																																																																																																									Get Ta296.3333 obj_id.3267
																																																																																																																																																																								Let Ti297.3326
																																																																																																																																																																									App o_reflectiontype.2845obj.3325 
																																																																																																																																																																									Let Ti298.3327
																																																																																																																																																																										Int:2
																																																																																																																																																																										IfEq Ti297.3326 Ti298.3327
																																																																																																																																																																											Let Td299.3328
																																																																																																																																																																												Float:1.000000
																																																																																																																																																																												Let Td300.3329
																																																																																																																																																																													App o_diffuse.2865obj.3325 
																																																																																																																																																																													IfLE Td299.3328 Td300.3329
																																																																																																																																																																														Unit
																																																																																																																																																																														Let m_shape.3330
																																																																																																																																																																															App o_form.2843obj.3325 
																																																																																																																																																																															Let Ti301.3331
																																																																																																																																																																																Int:1
																																																																																																																																																																																IfEq m_shape.3330 Ti301.3331
																																																																																																																																																																																	App setup_rect_reflection.3260obj_id.3267 obj.3325 
																																																																																																																																																																																	Let Ti302.3332
																																																																																																																																																																																		Int:2
																																																																																																																																																																																		IfEq m_shape.3330 Ti302.3332
																																																																																																																																																																																			App setup_surface_reflection.3263obj_id.3267 obj.3325 
																																																																																																																																																																																			Unit
																																																																																																																																																																											Unit
																																																																																																																																																																							Unit
																																																																																																																																																																					LetRec rt.3268 size_x.3269 size_y.3270 
																																																																																																																																																																						Let Tu256.3274
																																																																																																																																																																							Let Ta260.3322
																																																																																																																																																																								ExtArray 616
																																																																																																																																																																								Let Ti261.3323
																																																																																																																																																																									Int:0
																																																																																																																																																																									Put Ta260.3322 Ti261.3323 size_x.3269
																																																																																																																																																																							Let Tu255.3275
																																																																																																																																																																								Let Ta262.3320
																																																																																																																																																																									ExtArray 616
																																																																																																																																																																									Let Ti263.3321
																																																																																																																																																																										Int:1
																																																																																																																																																																										Put Ta262.3320 Ti263.3321 size_y.3270
																																																																																																																																																																								Let Tu254.3276
																																																																																																																																																																									Let Ta264.3317
																																																																																																																																																																										ExtArray 624
																																																																																																																																																																										Let Ti265.3318
																																																																																																																																																																											Int:0
																																																																																																																																																																											Let Ti266.3319
																																																																																																																																																																												ShiftR1 size_x.3269
																																																																																																																																																																												Put Ta264.3317 Ti265.3318 Ti266.3319
																																																																																																																																																																									Let Tu253.3277
																																																																																																																																																																										Let Ta267.3314
																																																																																																																																																																											ExtArray 624
																																																																																																																																																																											Let Ti268.3315
																																																																																																																																																																												Int:1
																																																																																																																																																																												Let Ti269.3316
																																																																																																																																																																													ShiftR1 size_y.3270
																																																																																																																																																																													Put Ta267.3314 Ti268.3315 Ti269.3316
																																																																																																																																																																										Let Tu252.3278
																																																																																																																																																																											Let Ta270.3308
																																																																																																																																																																												ExtArray 632
																																																																																																																																																																												Let Ti271.3309
																																																																																																																																																																													Int:0
																																																																																																																																																																													Let Td275.3310
																																																																																																																																																																														Let Td272.3311
																																																																																																																																																																															Float:128.000000
																																																																																																																																																																															Let Td273.3312
																																																																																																																																																																																App float_of_int.2766size_x.3269 
																																																																																																																																																																																Let Td274.3313
																																																																																																																																																																																	FReciprocal Td273.3312
																																																																																																																																																																																	FMul Td272.3311 Td274.3313
																																																																																																																																																																														Put Ta270.3308 Ti271.3309 Td275.3310
																																																																																																																																																																											Let prev.3279
																																																																																																																																																																												Let Tu276.3307
																																																																																																																																																																													Unit
																																																																																																																																																																													App create_pixelline.3215Tu276.3307 
																																																																																																																																																																												Let cur.3280
																																																																																																																																																																													Let Tu277.3306
																																																																																																																																																																														Unit
																																																																																																																																																																														App create_pixelline.3215Tu277.3306 
																																																																																																																																																																													Let next.3281
																																																																																																																																																																														Let Tu278.3305
																																																																																																																																																																															Unit
																																																																																																																																																																															App create_pixelline.3215Tu278.3305 
																																																																																																																																																																														Let Tu251.3282
																																																																																																																																																																															Let Tu279.3304
																																																																																																																																																																																Unit
																																																																																																																																																																																App read_parameter.2933Tu279.3304 
																																																																																																																																																																															Let Tu250.3283
																																																																																																																																																																																Let Tu280.3303
																																																																																																																																																																																	Unit
																																																																																																																																																																																	App write_ppm_header.3176Tu280.3303 
																																																																																																																																																																																Let Tu249.3284
																																																																																																																																																																																	Let Tu281.3302
																																																																																																																																																																																		Unit
																																																																																																																																																																																		App init_dirvecs.3251Tu281.3302 
																																																																																																																																																																																	Let Tu248.3285
																																																																																																																																																																																		Let Ta283.3299
																																																																																																																																																																																			Let Tt282.3301
																																																																																																																																																																																				ExtTuple 988
																																																																																																																																																																																				App d_vec.2902Tt282.3301 
																																																																																																																																																																																			Let Ta284.3300
																																																																																																																																																																																				ExtArray 312
																																																																																																																																																																																				App veccpy.2805Ta283.3299 Ta284.3300 
																																																																																																																																																																																		Let Tu247.3286
																																																																																																																																																																																			Let Tt285.3298
																																																																																																																																																																																				ExtTuple 988
																																																																																																																																																																																				App setup_dirvec_constants.3031Tt285.3298 
																																																																																																																																																																																			Let Tu246.3287
																																																																																																																																																																																				Let Ti290.3293
																																																																																																																																																																																					Let Ti288.3294
																																																																																																																																																																																						Let Ta286.3296
																																																																																																																																																																																							ExtArray 0
																																																																																																																																																																																							Let Ti287.3297
																																																																																																																																																																																								Int:0
																																																																																																																																																																																								Get Ta286.3296 Ti287.3297
																																																																																																																																																																																						Let Ti289.3295
																																																																																																																																																																																							Int:1
																																																																																																																																																																																							Sub Ti288.3294 Ti289.3295
																																																																																																																																																																																					App setup_reflections.3266Ti290.3293 
																																																																																																																																																																																				Let Tu245.3288
																																																																																																																																																																																					Let Ti291.3291
																																																																																																																																																																																						Int:0
																																																																																																																																																																																						Let Ti292.3292
																																																																																																																																																																																							Int:0
																																																																																																																																																																																							App pretrace_line.3192cur.3280 Ti291.3291 Ti292.3292 
																																																																																																																																																																																					Let Ti293.3289
																																																																																																																																																																																						Int:0
																																																																																																																																																																																						Let Ti294.3290
																																																																																																																																																																																							Int:2
																																																																																																																																																																																							App scan_line.3202Ti293.3289 prev.3279 cur.3280 next.3281 Ti294.3290 
																																																																																																																																																																						Let Tu257.3271
																																																																																																																																																																							Let Ti258.3272
																																																																																																																																																																								Int:128
																																																																																																																																																																								Let Ti259.3273
																																																																																																																																																																									Int:128
																																																																																																																																																																									App rt.3268Ti258.3272 Ti259.3273 
																																																																																																																																																																							Unit
