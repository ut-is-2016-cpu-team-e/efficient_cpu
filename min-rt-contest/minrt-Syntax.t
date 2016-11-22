Let n_objects
	Array
		Int:1
		Int:0
	Let objects
		Let dummy
			Array
				Int:0
				Float:0.000000
			Array
				Int:60
				Tuple
				Int:0
				Int:0
				Int:0
				Int:0
				Var dummy
				Var dummy
				Bool:false
				Var dummy
				Var dummy
				Var dummy
				Var dummy
		Let screen
			Array
				Int:3
				Float:0.000000
			Let viewpoint
				Array
					Int:3
					Float:0.000000
				Let light
					Array
						Int:3
						Float:0.000000
					Let beam
						Array
							Int:1
							Float:255.000000
						Let and_net
							Array
								Int:50
								Array
									Int:1
									Neg
										Int:1
							Let or_net
								Array
									Int:1
									Array
										Int:1
										Get
											Var and_net
											Int:0
								Let solver_dist
									Array
										Int:1
										Float:0.000000
									Let intsec_rectside
										Array
											Int:1
											Int:0
										Let tmin
											Array
												Int:1
												Float:1000000000.000000
											Let intersection_point
												Array
													Int:3
													Float:0.000000
												Let intersected_object_id
													Array
														Int:1
														Int:0
													Let nvector
														Array
															Int:3
															Float:0.000000
														Let texture_color
															Array
																Int:3
																Float:0.000000
															Let diffuse_ray
																Array
																	Int:3
																	Float:0.000000
																Let rgb
																	Array
																		Int:3
																		Float:0.000000
																	Let image_size
																		Array
																			Int:2
																			Int:0
																		Let image_center
																			Array
																				Int:2
																				Int:0
																			Let scan_pitch
																				Array
																					Int:1
																					Float:0.000000
																				Let startp
																					Array
																						Int:3
																						Float:0.000000
																					Let startp_fast
																						Array
																							Int:3
																							Float:0.000000
																						Let screenx_dir
																							Array
																								Int:3
																								Float:0.000000
																							Let screeny_dir
																								Array
																									Int:3
																									Float:0.000000
																								Let screenz_dir
																									Array
																										Int:3
																										Float:0.000000
																									Let ptrace_dirvec
																										Array
																											Int:3
																											Float:0.000000
																										Let dirvecs
																											Let dummyf
																												Array
																													Int:0
																													Float:0.000000
																												Let dummyff
																													Array
																														Int:0
																														Var dummyf
																													Let dummy_vs
																														Array
																															Int:0
																															Tuple
																															Var dummyf
																															Var dummyff
																														Array
																															Int:5
																															Var dummy_vs
																											Let light_dirvec
																												Let dummyf2
																													Array
																														Int:0
																														Float:0.000000
																													Let v3
																														Array
																															Int:3
																															Float:0.000000
																														Let consts
																															Array
																																Int:60
																																Var dummyf2
																															Tuple
																															Var v3
																															Var consts
																												Let reflections
																													Let dummyf3
																														Array
																															Int:0
																															Float:0.000000
																														Let dummyff3
																															Array
																																Int:0
																																Var dummyf3
																															Let dummydv
																																Tuple
																																Var dummyf3
																																Var dummyff3
																																Array
																																	Int:180
																																	Tuple
																																	Int:0
																																	Var dummydv
																																	Float:0.000000
																													Let n_reflections
																														Array
																															Int:1
																															Int:0
																														LetRec fnegx 
																															FNeg
																																Var x
																															LetRec fisposx 
																																Not
																																	LE
																																		Var x
																																		Float:0.000000
																																LetRec fisnegx 
																																	Not
																																		LE
																																			Float:0.000000
																																			Var x
																																	LetRec fiszerox 
																																		Eq
																																			Var x
																																			Float:0.000000
																																		LetRec fhalfx 
																																			FMul
																																				Var x
																																				Float:0.500000
																																			LetRec fsqrx 
																																				FMul
																																					Var x
																																					Var x
																																				LetRec fabsx 
																																					If
																																						LE
																																							Float:0.000000
																																							Var x
																																						Var x
																																						App
																																							Var fneg
																																							Var x
																																					LetRec flessx y 
																																						Let z
																																							FSub
																																								Var x
																																								Var y
																																							App
																																								Var fisneg
																																								Var z
																																						LetRec fflaga 
																																							If
																																								LE
																																									Float:0.000000
																																									Var a
																																								Int:1
																																								Neg
																																									Int:1
																																							LetRec float_of_inta 
																																								Let abs
																																									If
																																										Not
																																											LE
																																												Var a
																																												Int:0
																																										Var a
																																										Neg
																																											Var a
																																									Let flag
																																										If
																																											Not
																																												LE
																																													Var a
																																													Int:0
																																											Int:1
																																											Neg
																																												Int:1
																																										LetRec itof_reta 
																																											LetRec itof_ret_suba b c 
																																												Let a_sub
																																													Div
																																														Var a
																																														Int:2
																																													If
																																														Eq
																																															Var a
																																															Int:0
																																														Var b
																																														If
																																															Not
																																																LE
																																																	Sub
																																																		Sub
																																																			Var a
																																																			Var a_sub
																																																		Var a_sub
																																																	Int:0
																																															App
																																																Var itof_ret_sub
																																																Var a_sub
																																																FAdd
																																																	Var b
																																																	Var c
																																																FMul
																																																	Var c
																																																	Float:2.000000
																																															App
																																																Var itof_ret_sub
																																																Var a_sub
																																																Var b
																																																FMul
																																																	Var c
																																																	Float:2.000000
																																												App
																																													Var itof_ret_sub
																																													Var a
																																													Float:0.000000
																																													Float:1.000000
																																											LetRec itof_biga b 
																																												Let a_sub
																																													Sub
																																														Var a
																																														Int:8388608
																																													Let b_sub
																																														FAdd
																																															Var b
																																															Float:8388608.000000
																																														If
																																															Not
																																																LE
																																																	Int:8388608
																																																	Var a_sub
																																															FAdd
																																																Var b_sub
																																																App
																																																	Var itof_ret
																																																	Var a_sub
																																															App
																																																Var itof_big
																																																Var a_sub
																																																Var b_sub
																																												If
																																													Eq
																																														Var flag
																																														Int:1
																																													If
																																														Not
																																															LE
																																																Var abs
																																																Int:8388608
																																														App
																																															Var itof_big
																																															Var abs
																																															Float:0.000000
																																														App
																																															Var itof_ret
																																															Var abs
																																													If
																																														Not
																																															LE
																																																Var abs
																																																Int:8388608
																																														FNeg
																																															App
																																																Var itof_big
																																																Var abs
																																																Float:0.000000
																																														FNeg
																																															App
																																																Var itof_ret
																																																Var abs
																																								LetRec floora 
																																									Let abs
																																										App
																																											Var fabs
																																											Var a
																																										Let flag
																																											App
																																												Var fflag
																																												Var a
																																											Let c
																																												App
																																													Var float_of_int
																																													App
																																														Var int_of_float
																																														FDiv
																																															Var a
																																															Float:32767.000000
																																												Let kernel
																																													FSub
																																														Var abs
																																														FMul
																																															Float:32767.000000
																																															Var c
																																													Let ans_abs
																																														FAdd
																																															FMul
																																																Var c
																																																Float:32767.000000
																																															App
																																																Var float_of_int
																																																App
																																																	Var int_of_float
																																																	Var kernel
																																														If
																																															Eq
																																																Var flag
																																																Int:1
																																															Var ans_abs
																																															FNeg
																																																Var ans_abs
																																									Let pi
																																										Float:3.141593
																																										Let pidouble
																																											Float:6.283185
																																											LetRec reduction_pi2a 
																																												If
																																													LE
																																														Var a
																																														Var pidouble
																																													Var a
																																													App
																																														Var reduction_pi2
																																														FSub
																																															Var a
																																															Var pidouble
																																												LetRec addflagc flag 
																																													If
																																														Eq
																																															Var flag
																																															Int:1
																																														Var c
																																														FMul
																																															Var c
																																															Float:-1.000000
																																													LetRec xorx y 
																																														If
																																															Var x
																																															Not
																																																Var y
																																															Var y
																																														LetRec sgnx 
																																															If
																																																App
																																																	Var fiszero
																																																	Var x
																																																Float:0.000000
																																																If
																																																	App
																																																		Var fispos
																																																		Var x
																																																	Float:1.000000
																																																	Float:-1.000000
																																															LetRec fneg_condcond x 
																																																If
																																																	Var cond
																																																	Var x
																																																	App
																																																		Var fneg
																																																		Var x
																																																LetRec add_mod5x y 
																																																	Let sum
																																																		Add
																																																			Var x
																																																			Var y
																																																		If
																																																			LE
																																																				Int:5
																																																				Var sum
																																																			Sub
																																																				Var sum
																																																				Int:5
																																																			Var sum
																																																	LetRec vecsetv x y z 
																																																		Let Tu2
																																																			Put
																																																				Var v
																																																				Int:0
																																																				Var x
																																																			Let Tu1
																																																				Put
																																																					Var v
																																																					Int:1
																																																					Var y
																																																				Put
																																																					Var v
																																																					Int:2
																																																					Var z
																																																		LetRec vecfillv elem 
																																																			Let Tu4
																																																				Put
																																																					Var v
																																																					Int:0
																																																					Var elem
																																																				Let Tu3
																																																					Put
																																																						Var v
																																																						Int:1
																																																						Var elem
																																																					Put
																																																						Var v
																																																						Int:2
																																																						Var elem
																																																			LetRec vecbzerov 
																																																				App
																																																					Var vecfill
																																																					Var v
																																																					Float:0.000000
																																																				LetRec veccpydest src 
																																																					Let Tu6
																																																						Put
																																																							Var dest
																																																							Int:0
																																																							Get
																																																								Var src
																																																								Int:0
																																																						Let Tu5
																																																							Put
																																																								Var dest
																																																								Int:1
																																																								Get
																																																									Var src
																																																									Int:1
																																																							Put
																																																								Var dest
																																																								Int:2
																																																								Get
																																																									Var src
																																																									Int:2
																																																					LetRec vecdist2p q 
																																																						FAdd
																																																							FAdd
																																																								App
																																																									Var fsqr
																																																									FSub
																																																										Get
																																																											Var p
																																																											Int:0
																																																										Get
																																																											Var q
																																																											Int:0
																																																								App
																																																									Var fsqr
																																																									FSub
																																																										Get
																																																											Var p
																																																											Int:1
																																																										Get
																																																											Var q
																																																											Int:1
																																																							App
																																																								Var fsqr
																																																								FSub
																																																									Get
																																																										Var p
																																																										Int:2
																																																									Get
																																																										Var q
																																																										Int:2
																																																						LetRec vecunitv 
																																																							Let il
																																																								FDiv
																																																									Float:1.000000
																																																									App
																																																										Var sqrt
																																																										FAdd
																																																											FAdd
																																																												App
																																																													Var fsqr
																																																													Get
																																																														Var v
																																																														Int:0
																																																												App
																																																													Var fsqr
																																																													Get
																																																														Var v
																																																														Int:1
																																																											App
																																																												Var fsqr
																																																												Get
																																																													Var v
																																																													Int:2
																																																								Let Tu8
																																																									Put
																																																										Var v
																																																										Int:0
																																																										FMul
																																																											Get
																																																												Var v
																																																												Int:0
																																																											Var il
																																																									Let Tu7
																																																										Put
																																																											Var v
																																																											Int:1
																																																											FMul
																																																												Get
																																																													Var v
																																																													Int:1
																																																												Var il
																																																										Put
																																																											Var v
																																																											Int:2
																																																											FMul
																																																												Get
																																																													Var v
																																																													Int:2
																																																												Var il
																																																							LetRec vecunit_sgnv inv 
																																																								Let l
																																																									App
																																																										Var sqrt
																																																										FAdd
																																																											FAdd
																																																												App
																																																													Var fsqr
																																																													Get
																																																														Var v
																																																														Int:0
																																																												App
																																																													Var fsqr
																																																													Get
																																																														Var v
																																																														Int:1
																																																											App
																																																												Var fsqr
																																																												Get
																																																													Var v
																																																													Int:2
																																																									Let il
																																																										If
																																																											App
																																																												Var fiszero
																																																												Var l
																																																											Float:1.000000
																																																											If
																																																												Var inv
																																																												FDiv
																																																													Float:-1.000000
																																																													Var l
																																																												FDiv
																																																													Float:1.000000
																																																													Var l
																																																										Let Tu10
																																																											Put
																																																												Var v
																																																												Int:0
																																																												FMul
																																																													Get
																																																														Var v
																																																														Int:0
																																																													Var il
																																																											Let Tu9
																																																												Put
																																																													Var v
																																																													Int:1
																																																													FMul
																																																														Get
																																																															Var v
																																																															Int:1
																																																														Var il
																																																												Put
																																																													Var v
																																																													Int:2
																																																													FMul
																																																														Get
																																																															Var v
																																																															Int:2
																																																														Var il
																																																								LetRec veciprodv w 
																																																									FAdd
																																																										FAdd
																																																											FMul
																																																												Get
																																																													Var v
																																																													Int:0
																																																												Get
																																																													Var w
																																																													Int:0
																																																											FMul
																																																												Get
																																																													Var v
																																																													Int:1
																																																												Get
																																																													Var w
																																																													Int:1
																																																										FMul
																																																											Get
																																																												Var v
																																																												Int:2
																																																											Get
																																																												Var w
																																																												Int:2
																																																									LetRec veciprod2v w0 w1 w2 
																																																										FAdd
																																																											FAdd
																																																												FMul
																																																													Get
																																																														Var v
																																																														Int:0
																																																													Var w0
																																																												FMul
																																																													Get
																																																														Var v
																																																														Int:1
																																																													Var w1
																																																											FMul
																																																												Get
																																																													Var v
																																																													Int:2
																																																												Var w2
																																																										LetRec vecaccumdest scale v 
																																																											Let Tu12
																																																												Put
																																																													Var dest
																																																													Int:0
																																																													FAdd
																																																														Get
																																																															Var dest
																																																															Int:0
																																																														FMul
																																																															Var scale
																																																															Get
																																																																Var v
																																																																Int:0
																																																												Let Tu11
																																																													Put
																																																														Var dest
																																																														Int:1
																																																														FAdd
																																																															Get
																																																																Var dest
																																																																Int:1
																																																															FMul
																																																																Var scale
																																																																Get
																																																																	Var v
																																																																	Int:1
																																																													Put
																																																														Var dest
																																																														Int:2
																																																														FAdd
																																																															Get
																																																																Var dest
																																																																Int:2
																																																															FMul
																																																																Var scale
																																																																Get
																																																																	Var v
																																																																	Int:2
																																																											LetRec vecadddest v 
																																																												Let Tu14
																																																													Put
																																																														Var dest
																																																														Int:0
																																																														FAdd
																																																															Get
																																																																Var dest
																																																																Int:0
																																																															Get
																																																																Var v
																																																																Int:0
																																																													Let Tu13
																																																														Put
																																																															Var dest
																																																															Int:1
																																																															FAdd
																																																																Get
																																																																	Var dest
																																																																	Int:1
																																																																Get
																																																																	Var v
																																																																	Int:1
																																																														Put
																																																															Var dest
																																																															Int:2
																																																															FAdd
																																																																Get
																																																																	Var dest
																																																																	Int:2
																																																																Get
																																																																	Var v
																																																																	Int:2
																																																												LetRec vecmuldest v 
																																																													Let Tu16
																																																														Put
																																																															Var dest
																																																															Int:0
																																																															FMul
																																																																Get
																																																																	Var dest
																																																																	Int:0
																																																																Get
																																																																	Var v
																																																																	Int:0
																																																														Let Tu15
																																																															Put
																																																																Var dest
																																																																Int:1
																																																																FMul
																																																																	Get
																																																																		Var dest
																																																																		Int:1
																																																																	Get
																																																																		Var v
																																																																		Int:1
																																																															Put
																																																																Var dest
																																																																Int:2
																																																																FMul
																																																																	Get
																																																																		Var dest
																																																																		Int:2
																																																																	Get
																																																																		Var v
																																																																		Int:2
																																																													LetRec vecscaledest scale 
																																																														Let Tu18
																																																															Put
																																																																Var dest
																																																																Int:0
																																																																FMul
																																																																	Get
																																																																		Var dest
																																																																		Int:0
																																																																	Var scale
																																																															Let Tu17
																																																																Put
																																																																	Var dest
																																																																	Int:1
																																																																	FMul
																																																																		Get
																																																																			Var dest
																																																																			Int:1
																																																																		Var scale
																																																																Put
																																																																	Var dest
																																																																	Int:2
																																																																	FMul
																																																																		Get
																																																																			Var dest
																																																																			Int:2
																																																																		Var scale
																																																														LetRec vecaccumvdest v w 
																																																															Let Tu20
																																																																Put
																																																																	Var dest
																																																																	Int:0
																																																																	FAdd
																																																																		Get
																																																																			Var dest
																																																																			Int:0
																																																																		FMul
																																																																			Get
																																																																				Var v
																																																																				Int:0
																																																																			Get
																																																																				Var w
																																																																				Int:0
																																																																Let Tu19
																																																																	Put
																																																																		Var dest
																																																																		Int:1
																																																																		FAdd
																																																																			Get
																																																																				Var dest
																																																																				Int:1
																																																																			FMul
																																																																				Get
																																																																					Var v
																																																																					Int:1
																																																																				Get
																																																																					Var w
																																																																					Int:1
																																																																	Put
																																																																		Var dest
																																																																		Int:2
																																																																		FAdd
																																																																			Get
																																																																				Var dest
																																																																				Int:2
																																																																			FMul
																																																																				Get
																																																																					Var v
																																																																					Int:2
																																																																				Get
																																																																					Var w
																																																																					Int:2
																																																															LetRec o_texturetypem 
																																																																Let Tuple (m_tex,xm_shape,xm_surface,xm_isrot,xm_abc,xm_xyz,xm_invert,xm_surfparams,xm_color,xm_rot123,xm_ctbl,)
																																																																	Var m
																																																																	Var m_tex
																																																																LetRec o_formm 
																																																																	Let Tuple (xm_tex,m_shape,xm_surface,xm_isrot,xm_abc,xm_xyz,xm_invert,xm_surfparams,xm_color,xm_rot123,xm_ctbl,)
																																																																		Var m
																																																																		Var m_shape
																																																																	LetRec o_reflectiontypem 
																																																																		Let Tuple (xm_tex,xm_shape,m_surface,xm_isrot,xm_abc,xm_xyz,xm_invert,xm_surfparams,xm_color,xm_rot123,xm_ctbl,)
																																																																			Var m
																																																																			Var m_surface
																																																																		LetRec o_isinvertm 
																																																																			Let Tuple (xm_tex,xm_shape,xm_surface,xm_isrot,xm_abc,xm_xyz,m_invert,xm_surfparams,xm_color,xm_rot123,xm_ctbl,)
																																																																				Var m
																																																																				Var m_invert
																																																																			LetRec o_isrotm 
																																																																				Let Tuple (xm_tex,xm_shape,xm_surface,m_isrot,xm_abc,xm_xyz,xm_invert,xm_surfparams,xm_color,xm_rot123,xm_ctbl,)
																																																																					Var m
																																																																					Var m_isrot
																																																																				LetRec o_param_am 
																																																																					Let Tuple (xm_tex,xm_shape,xm_surface,xm_isrot,m_abc,xm_xyz,xm_invert,xm_surfparams,xm_color,xm_rot123,xm_ctbl,)
																																																																						Var m
																																																																						Get
																																																																							Var m_abc
																																																																							Int:0
																																																																					LetRec o_param_bm 
																																																																						Let Tuple (xm_tex,xm_shape,xm_surface,xm_isrot,m_abc,xm_xyz,xm_invert,xm_surfparams,xm_color,xm_rot123,xm_ctbl,)
																																																																							Var m
																																																																							Get
																																																																								Var m_abc
																																																																								Int:1
																																																																						LetRec o_param_cm 
																																																																							Let Tuple (xm_tex,xm_shape,xm_surface,xm_isrot,m_abc,xm_xyz,xm_invert,xm_surfparams,xm_color,xm_rot123,xm_ctbl,)
																																																																								Var m
																																																																								Get
																																																																									Var m_abc
																																																																									Int:2
																																																																							LetRec o_param_abcm 
																																																																								Let Tuple (xm_tex,xm_shape,xm_surface,xm_isrot,m_abc,xm_xyz,xm_invert,xm_surfparams,xm_color,xm_rot123,xm_ctbl,)
																																																																									Var m
																																																																									Var m_abc
																																																																								LetRec o_param_xm 
																																																																									Let Tuple (xm_tex,xm_shape,xm_surface,xm_isrot,xm_abc,m_xyz,xm_invert,xm_surfparams,xm_color,xm_rot123,xm_ctbl,)
																																																																										Var m
																																																																										Get
																																																																											Var m_xyz
																																																																											Int:0
																																																																									LetRec o_param_ym 
																																																																										Let Tuple (xm_tex,xm_shape,xm_surface,xm_isrot,xm_abc,m_xyz,xm_invert,xm_surfparams,xm_color,xm_rot123,xm_ctbl,)
																																																																											Var m
																																																																											Get
																																																																												Var m_xyz
																																																																												Int:1
																																																																										LetRec o_param_zm 
																																																																											Let Tuple (xm_tex,xm_shape,xm_surface,xm_isrot,xm_abc,m_xyz,xm_invert,xm_surfparams,xm_color,xm_rot123,xm_ctbl,)
																																																																												Var m
																																																																												Get
																																																																													Var m_xyz
																																																																													Int:2
																																																																											LetRec o_diffusem 
																																																																												Let Tuple (xm_tex,xm_shape,xm_surface,xm_isrot,xm_abc,xm_xyz,xm_invert,m_surfparams,xm_color,xm_rot123,xm_ctbl,)
																																																																													Var m
																																																																													Get
																																																																														Var m_surfparams
																																																																														Int:0
																																																																												LetRec o_hilightm 
																																																																													Let Tuple (xm_tex,xm_shape,xm_surface,xm_isrot,xm_abc,xm_xyz,xm_invert,m_surfparams,xm_color,xm_rot123,xm_ctbl,)
																																																																														Var m
																																																																														Get
																																																																															Var m_surfparams
																																																																															Int:1
																																																																													LetRec o_color_redm 
																																																																														Let Tuple (xm_tex,xm_shape,m_surface,xm_isrot,xm_abc,xm_xyz,xm_invert,xm_surfparams,m_color,xm_rot123,xm_ctbl,)
																																																																															Var m
																																																																															Get
																																																																																Var m_color
																																																																																Int:0
																																																																														LetRec o_color_greenm 
																																																																															Let Tuple (xm_tex,xm_shape,m_surface,xm_isrot,xm_abc,xm_xyz,xm_invert,xm_surfparams,m_color,xm_rot123,xm_ctbl,)
																																																																																Var m
																																																																																Get
																																																																																	Var m_color
																																																																																	Int:1
																																																																															LetRec o_color_bluem 
																																																																																Let Tuple (xm_tex,xm_shape,m_surface,xm_isrot,xm_abc,xm_xyz,xm_invert,xm_surfparams,m_color,xm_rot123,xm_ctbl,)
																																																																																	Var m
																																																																																	Get
																																																																																		Var m_color
																																																																																		Int:2
																																																																																LetRec o_param_r1m 
																																																																																	Let Tuple (xm_tex,xm_shape,xm_surface,xm_isrot,xm_abc,xm_xyz,xm_invert,xm_surfparams,xm_color,m_rot123,xm_ctbl,)
																																																																																		Var m
																																																																																		Get
																																																																																			Var m_rot123
																																																																																			Int:0
																																																																																	LetRec o_param_r2m 
																																																																																		Let Tuple (xm_tex,xm_shape,xm_surface,xm_isrot,xm_abc,xm_xyz,xm_invert,xm_surfparams,xm_color,m_rot123,xm_ctbl,)
																																																																																			Var m
																																																																																			Get
																																																																																				Var m_rot123
																																																																																				Int:1
																																																																																		LetRec o_param_r3m 
																																																																																			Let Tuple (xm_tex,xm_shape,xm_surface,xm_isrot,xm_abc,xm_xyz,xm_invert,xm_surfparams,xm_color,m_rot123,xm_ctbl,)
																																																																																				Var m
																																																																																				Get
																																																																																					Var m_rot123
																																																																																					Int:2
																																																																																			LetRec o_param_ctblm 
																																																																																				Let Tuple (xm_tex,xm_shape,xm_surface,xm_isrot,xm_abc,xm_xyz,xm_invert,xm_surfparams,xm_color,xm_rot123,m_ctbl,)
																																																																																					Var m
																																																																																					Var m_ctbl
																																																																																				LetRec p_rgbpixel 
																																																																																					Let Tuple (m_rgb,xm_isect_ps,xm_sids,xm_cdif,xm_engy,xm_r20p,xm_gid,xm_nvectors,)
																																																																																						Var pixel
																																																																																						Var m_rgb
																																																																																					LetRec p_intersection_pointspixel 
																																																																																						Let Tuple (xm_rgb,m_isect_ps,xm_sids,xm_cdif,xm_engy,xm_r20p,xm_gid,xm_nvectors,)
																																																																																							Var pixel
																																																																																							Var m_isect_ps
																																																																																						LetRec p_surface_idspixel 
																																																																																							Let Tuple (xm_rgb,xm_isect_ps,m_sids,xm_cdif,xm_engy,xm_r20p,xm_gid,xm_nvectors,)
																																																																																								Var pixel
																																																																																								Var m_sids
																																																																																							LetRec p_calc_diffusepixel 
																																																																																								Let Tuple (xm_rgb,xm_isect_ps,xm_sids,m_cdif,xm_engy,xm_r20p,xm_gid,xm_nvectors,)
																																																																																									Var pixel
																																																																																									Var m_cdif
																																																																																								LetRec p_energypixel 
																																																																																									Let Tuple (xm_rgb,xm_isect_ps,xm_sids,xm_cdif,m_engy,xm_r20p,xm_gid,xm_nvectors,)
																																																																																										Var pixel
																																																																																										Var m_engy
																																																																																									LetRec p_received_ray_20percentpixel 
																																																																																										Let Tuple (xm_rgb,xm_isect_ps,xm_sids,xm_cdif,xm_engy,m_r20p,xm_gid,xm_nvectors,)
																																																																																											Var pixel
																																																																																											Var m_r20p
																																																																																										LetRec p_group_idpixel 
																																																																																											Let Tuple (xm_rgb,xm_isect_ps,xm_sids,xm_cdif,xm_engy,xm_r20p,m_gid,xm_nvectors,)
																																																																																												Var pixel
																																																																																												Get
																																																																																													Var m_gid
																																																																																													Int:0
																																																																																											LetRec p_set_group_idpixel id 
																																																																																												Let Tuple (xm_rgb,xm_isect_ps,xm_sids,xm_cdif,xm_engy,xm_r20p,m_gid,xm_nvectors,)
																																																																																													Var pixel
																																																																																													Put
																																																																																														Var m_gid
																																																																																														Int:0
																																																																																														Var id
																																																																																												LetRec p_nvectorspixel 
																																																																																													Let Tuple (xm_rgb,xm_isect_ps,xm_sids,xm_cdif,xm_engy,xm_r20p,xm_gid,m_nvectors,)
																																																																																														Var pixel
																																																																																														Var m_nvectors
																																																																																													LetRec d_vecd 
																																																																																														Let Tuple (m_vec,xm_const,)
																																																																																															Var d
																																																																																															Var m_vec
																																																																																														LetRec d_constd 
																																																																																															Let Tuple (dm_vec,m_const,)
																																																																																																Var d
																																																																																																Var m_const
																																																																																															LetRec r_surface_idr 
																																																																																																Let Tuple (m_sid,xm_dvec,xm_br,)
																																																																																																	Var r
																																																																																																	Var m_sid
																																																																																																LetRec r_dvecr 
																																																																																																	Let Tuple (xm_sid,m_dvec,xm_br,)
																																																																																																		Var r
																																																																																																		Var m_dvec
																																																																																																	LetRec r_brightr 
																																																																																																		Let Tuple (xm_sid,xm_dvec,m_br,)
																																																																																																			Var r
																																																																																																			Var m_br
																																																																																																		LetRec radx 
																																																																																																			FMul
																																																																																																				Var x
																																																																																																				Float:0.017453
																																																																																																			LetRec read_screen_settingsTu21 
																																																																																																				Let Tu35
																																																																																																					Put
																																																																																																						Var screen
																																																																																																						Int:0
																																																																																																						App
																																																																																																							Var read_float
																																																																																																							Unit
																																																																																																					Let Tu34
																																																																																																						Put
																																																																																																							Var screen
																																																																																																							Int:1
																																																																																																							App
																																																																																																								Var read_float
																																																																																																								Unit
																																																																																																						Let Tu33
																																																																																																							Put
																																																																																																								Var screen
																																																																																																								Int:2
																																																																																																								App
																																																																																																									Var read_float
																																																																																																									Unit
																																																																																																							Let v1
																																																																																																								App
																																																																																																									Var rad
																																																																																																									App
																																																																																																										Var read_float
																																																																																																										Unit
																																																																																																								Let cos_v1
																																																																																																									App
																																																																																																										Var cos
																																																																																																										Var v1
																																																																																																									Let sin_v1
																																																																																																										App
																																																																																																											Var sin
																																																																																																											Var v1
																																																																																																										Let v2
																																																																																																											App
																																																																																																												Var rad
																																																																																																												App
																																																																																																													Var read_float
																																																																																																													Unit
																																																																																																											Let cos_v2
																																																																																																												App
																																																																																																													Var cos
																																																																																																													Var v2
																																																																																																												Let sin_v2
																																																																																																													App
																																																																																																														Var sin
																																																																																																														Var v2
																																																																																																													Let Tu32
																																																																																																														Put
																																																																																																															Var screenz_dir
																																																																																																															Int:0
																																																																																																															FMul
																																																																																																																FMul
																																																																																																																	Var cos_v1
																																																																																																																	Var sin_v2
																																																																																																																Float:200.000000
																																																																																																														Let Tu31
																																																																																																															Put
																																																																																																																Var screenz_dir
																																																																																																																Int:1
																																																																																																																FMul
																																																																																																																	Var sin_v1
																																																																																																																	Float:-200.000000
																																																																																																															Let Tu30
																																																																																																																Put
																																																																																																																	Var screenz_dir
																																																																																																																	Int:2
																																																																																																																	FMul
																																																																																																																		FMul
																																																																																																																			Var cos_v1
																																																																																																																			Var cos_v2
																																																																																																																		Float:200.000000
																																																																																																																Let Tu29
																																																																																																																	Put
																																																																																																																		Var screenx_dir
																																																																																																																		Int:0
																																																																																																																		Var cos_v2
																																																																																																																	Let Tu28
																																																																																																																		Put
																																																																																																																			Var screenx_dir
																																																																																																																			Int:1
																																																																																																																			Float:0.000000
																																																																																																																		Let Tu27
																																																																																																																			Put
																																																																																																																				Var screenx_dir
																																																																																																																				Int:2
																																																																																																																				App
																																																																																																																					Var fneg
																																																																																																																					Var sin_v2
																																																																																																																			Let Tu26
																																																																																																																				Put
																																																																																																																					Var screeny_dir
																																																																																																																					Int:0
																																																																																																																					FMul
																																																																																																																						App
																																																																																																																							Var fneg
																																																																																																																							Var sin_v1
																																																																																																																						Var sin_v2
																																																																																																																				Let Tu25
																																																																																																																					Put
																																																																																																																						Var screeny_dir
																																																																																																																						Int:1
																																																																																																																						App
																																																																																																																							Var fneg
																																																																																																																							Var cos_v1
																																																																																																																					Let Tu24
																																																																																																																						Put
																																																																																																																							Var screeny_dir
																																																																																																																							Int:2
																																																																																																																							FMul
																																																																																																																								App
																																																																																																																									Var fneg
																																																																																																																									Var sin_v1
																																																																																																																								Var cos_v2
																																																																																																																						Let Tu23
																																																																																																																							Put
																																																																																																																								Var viewpoint
																																																																																																																								Int:0
																																																																																																																								FSub
																																																																																																																									Get
																																																																																																																										Var screen
																																																																																																																										Int:0
																																																																																																																									Get
																																																																																																																										Var screenz_dir
																																																																																																																										Int:0
																																																																																																																							Let Tu22
																																																																																																																								Put
																																																																																																																									Var viewpoint
																																																																																																																									Int:1
																																																																																																																									FSub
																																																																																																																										Get
																																																																																																																											Var screen
																																																																																																																											Int:1
																																																																																																																										Get
																																																																																																																											Var screenz_dir
																																																																																																																											Int:1
																																																																																																																								Put
																																																																																																																									Var viewpoint
																																																																																																																									Int:2
																																																																																																																									FSub
																																																																																																																										Get
																																																																																																																											Var screen
																																																																																																																											Int:2
																																																																																																																										Get
																																																																																																																											Var screenz_dir
																																																																																																																											Int:2
																																																																																																				LetRec read_lightTu36 
																																																																																																					Let nl
																																																																																																						App
																																																																																																							Var read_int
																																																																																																							Unit
																																																																																																						Let l1
																																																																																																							App
																																																																																																								Var rad
																																																																																																								App
																																																																																																									Var read_float
																																																																																																									Unit
																																																																																																							Let sl1
																																																																																																								App
																																																																																																									Var sin
																																																																																																									Var l1
																																																																																																								Let Tu39
																																																																																																									Put
																																																																																																										Var light
																																																																																																										Int:1
																																																																																																										App
																																																																																																											Var fneg
																																																																																																											Var sl1
																																																																																																									Let l2
																																																																																																										App
																																																																																																											Var rad
																																																																																																											App
																																																																																																												Var read_float
																																																																																																												Unit
																																																																																																										Let cl1
																																																																																																											App
																																																																																																												Var cos
																																																																																																												Var l1
																																																																																																											Let sl2
																																																																																																												App
																																																																																																													Var sin
																																																																																																													Var l2
																																																																																																												Let Tu38
																																																																																																													Put
																																																																																																														Var light
																																																																																																														Int:0
																																																																																																														FMul
																																																																																																															Var cl1
																																																																																																															Var sl2
																																																																																																													Let cl2
																																																																																																														App
																																																																																																															Var cos
																																																																																																															Var l2
																																																																																																														Let Tu37
																																																																																																															Put
																																																																																																																Var light
																																																																																																																Int:2
																																																																																																																FMul
																																																																																																																	Var cl1
																																																																																																																	Var cl2
																																																																																																															Put
																																																																																																																Var beam
																																																																																																																Int:0
																																																																																																																App
																																																																																																																	Var read_float
																																																																																																																	Unit
																																																																																																					LetRec rotate_quadratic_matrixabc rot 
																																																																																																						Let cos_x
																																																																																																							App
																																																																																																								Var cos
																																																																																																								Get
																																																																																																									Var rot
																																																																																																									Int:0
																																																																																																							Let sin_x
																																																																																																								App
																																																																																																									Var sin
																																																																																																									Get
																																																																																																										Var rot
																																																																																																										Int:0
																																																																																																								Let cos_y
																																																																																																									App
																																																																																																										Var cos
																																																																																																										Get
																																																																																																											Var rot
																																																																																																											Int:1
																																																																																																									Let sin_y
																																																																																																										App
																																																																																																											Var sin
																																																																																																											Get
																																																																																																												Var rot
																																																																																																												Int:1
																																																																																																										Let cos_z
																																																																																																											App
																																																																																																												Var cos
																																																																																																												Get
																																																																																																													Var rot
																																																																																																													Int:2
																																																																																																											Let sin_z
																																																																																																												App
																																																																																																													Var sin
																																																																																																													Get
																																																																																																														Var rot
																																																																																																														Int:2
																																																																																																												Let m00
																																																																																																													FMul
																																																																																																														Var cos_y
																																																																																																														Var cos_z
																																																																																																													Let m01
																																																																																																														FSub
																																																																																																															FMul
																																																																																																																FMul
																																																																																																																	Var sin_x
																																																																																																																	Var sin_y
																																																																																																																Var cos_z
																																																																																																															FMul
																																																																																																																Var cos_x
																																																																																																																Var sin_z
																																																																																																														Let m02
																																																																																																															FAdd
																																																																																																																FMul
																																																																																																																	FMul
																																																																																																																		Var cos_x
																																																																																																																		Var sin_y
																																																																																																																	Var cos_z
																																																																																																																FMul
																																																																																																																	Var sin_x
																																																																																																																	Var sin_z
																																																																																																															Let m10
																																																																																																																FMul
																																																																																																																	Var cos_y
																																																																																																																	Var sin_z
																																																																																																																Let m11
																																																																																																																	FAdd
																																																																																																																		FMul
																																																																																																																			FMul
																																																																																																																				Var sin_x
																																																																																																																				Var sin_y
																																																																																																																			Var sin_z
																																																																																																																		FMul
																																																																																																																			Var cos_x
																																																																																																																			Var cos_z
																																																																																																																	Let m12
																																																																																																																		FSub
																																																																																																																			FMul
																																																																																																																				FMul
																																																																																																																					Var cos_x
																																																																																																																					Var sin_y
																																																																																																																				Var sin_z
																																																																																																																			FMul
																																																																																																																				Var sin_x
																																																																																																																				Var cos_z
																																																																																																																		Let m20
																																																																																																																			App
																																																																																																																				Var fneg
																																																																																																																				Var sin_y
																																																																																																																			Let m21
																																																																																																																				FMul
																																																																																																																					Var sin_x
																																																																																																																					Var cos_y
																																																																																																																				Let m22
																																																																																																																					FMul
																																																																																																																						Var cos_x
																																																																																																																						Var cos_y
																																																																																																																					Let ao
																																																																																																																						Get
																																																																																																																							Var abc
																																																																																																																							Int:0
																																																																																																																						Let bo
																																																																																																																							Get
																																																																																																																								Var abc
																																																																																																																								Int:1
																																																																																																																							Let co
																																																																																																																								Get
																																																																																																																									Var abc
																																																																																																																									Int:2
																																																																																																																								Let Tu44
																																																																																																																									Put
																																																																																																																										Var abc
																																																																																																																										Int:0
																																																																																																																										FAdd
																																																																																																																											FAdd
																																																																																																																												FMul
																																																																																																																													Var ao
																																																																																																																													App
																																																																																																																														Var fsqr
																																																																																																																														Var m00
																																																																																																																												FMul
																																																																																																																													Var bo
																																																																																																																													App
																																																																																																																														Var fsqr
																																																																																																																														Var m10
																																																																																																																											FMul
																																																																																																																												Var co
																																																																																																																												App
																																																																																																																													Var fsqr
																																																																																																																													Var m20
																																																																																																																									Let Tu43
																																																																																																																										Put
																																																																																																																											Var abc
																																																																																																																											Int:1
																																																																																																																											FAdd
																																																																																																																												FAdd
																																																																																																																													FMul
																																																																																																																														Var ao
																																																																																																																														App
																																																																																																																															Var fsqr
																																																																																																																															Var m01
																																																																																																																													FMul
																																																																																																																														Var bo
																																																																																																																														App
																																																																																																																															Var fsqr
																																																																																																																															Var m11
																																																																																																																												FMul
																																																																																																																													Var co
																																																																																																																													App
																																																																																																																														Var fsqr
																																																																																																																														Var m21
																																																																																																																										Let Tu42
																																																																																																																											Put
																																																																																																																												Var abc
																																																																																																																												Int:2
																																																																																																																												FAdd
																																																																																																																													FAdd
																																																																																																																														FMul
																																																																																																																															Var ao
																																																																																																																															App
																																																																																																																																Var fsqr
																																																																																																																																Var m02
																																																																																																																														FMul
																																																																																																																															Var bo
																																																																																																																															App
																																																																																																																																Var fsqr
																																																																																																																																Var m12
																																																																																																																													FMul
																																																																																																																														Var co
																																																																																																																														App
																																																																																																																															Var fsqr
																																																																																																																															Var m22
																																																																																																																											Let Tu41
																																																																																																																												Put
																																																																																																																													Var rot
																																																																																																																													Int:0
																																																																																																																													FMul
																																																																																																																														Float:2.000000
																																																																																																																														FAdd
																																																																																																																															FAdd
																																																																																																																																FMul
																																																																																																																																	FMul
																																																																																																																																		Var ao
																																																																																																																																		Var m01
																																																																																																																																	Var m02
																																																																																																																																FMul
																																																																																																																																	FMul
																																																																																																																																		Var bo
																																																																																																																																		Var m11
																																																																																																																																	Var m12
																																																																																																																															FMul
																																																																																																																																FMul
																																																																																																																																	Var co
																																																																																																																																	Var m21
																																																																																																																																Var m22
																																																																																																																												Let Tu40
																																																																																																																													Put
																																																																																																																														Var rot
																																																																																																																														Int:1
																																																																																																																														FMul
																																																																																																																															Float:2.000000
																																																																																																																															FAdd
																																																																																																																																FAdd
																																																																																																																																	FMul
																																																																																																																																		FMul
																																																																																																																																			Var ao
																																																																																																																																			Var m00
																																																																																																																																		Var m02
																																																																																																																																	FMul
																																																																																																																																		FMul
																																																																																																																																			Var bo
																																																																																																																																			Var m10
																																																																																																																																		Var m12
																																																																																																																																FMul
																																																																																																																																	FMul
																																																																																																																																		Var co
																																																																																																																																		Var m20
																																																																																																																																	Var m22
																																																																																																																													Put
																																																																																																																														Var rot
																																																																																																																														Int:2
																																																																																																																														FMul
																																																																																																																															Float:2.000000
																																																																																																																															FAdd
																																																																																																																																FAdd
																																																																																																																																	FMul
																																																																																																																																		FMul
																																																																																																																																			Var ao
																																																																																																																																			Var m00
																																																																																																																																		Var m01
																																																																																																																																	FMul
																																																																																																																																		FMul
																																																																																																																																			Var bo
																																																																																																																																			Var m10
																																																																																																																																		Var m11
																																																																																																																																FMul
																																																																																																																																	FMul
																																																																																																																																		Var co
																																																																																																																																		Var m20
																																																																																																																																	Var m21
																																																																																																						LetRec read_nth_objectn 
																																																																																																							Let texture
																																																																																																								App
																																																																																																									Var read_int
																																																																																																									Unit
																																																																																																								If
																																																																																																									Not
																																																																																																										Eq
																																																																																																											Var texture
																																																																																																											Neg
																																																																																																												Int:1
																																																																																																									Let form
																																																																																																										App
																																																																																																											Var read_int
																																																																																																											Unit
																																																																																																										Let refltype
																																																																																																											App
																																																																																																												Var read_int
																																																																																																												Unit
																																																																																																											Let isrot_p
																																																																																																												App
																																																																																																													Var read_int
																																																																																																													Unit
																																																																																																												Let abc
																																																																																																													Array
																																																																																																														Int:3
																																																																																																														Float:0.000000
																																																																																																													Let Tu63
																																																																																																														Put
																																																																																																															Var abc
																																																																																																															Int:0
																																																																																																															App
																																																																																																																Var read_float
																																																																																																																Unit
																																																																																																														Let Tu62
																																																																																																															Put
																																																																																																																Var abc
																																																																																																																Int:1
																																																																																																																App
																																																																																																																	Var read_float
																																																																																																																	Unit
																																																																																																															Let Tu61
																																																																																																																Put
																																																																																																																	Var abc
																																																																																																																	Int:2
																																																																																																																	App
																																																																																																																		Var read_float
																																																																																																																		Unit
																																																																																																																Let xyz
																																																																																																																	Array
																																																																																																																		Int:3
																																																																																																																		Float:0.000000
																																																																																																																	Let Tu60
																																																																																																																		Put
																																																																																																																			Var xyz
																																																																																																																			Int:0
																																																																																																																			App
																																																																																																																				Var read_float
																																																																																																																				Unit
																																																																																																																		Let Tu59
																																																																																																																			Put
																																																																																																																				Var xyz
																																																																																																																				Int:1
																																																																																																																				App
																																																																																																																					Var read_float
																																																																																																																					Unit
																																																																																																																			Let Tu58
																																																																																																																				Put
																																																																																																																					Var xyz
																																																																																																																					Int:2
																																																																																																																					App
																																																																																																																						Var read_float
																																																																																																																						Unit
																																																																																																																				Let m_invert
																																																																																																																					App
																																																																																																																						Var fisneg
																																																																																																																						App
																																																																																																																							Var read_float
																																																																																																																							Unit
																																																																																																																					Let reflparam
																																																																																																																						Array
																																																																																																																							Int:2
																																																																																																																							Float:0.000000
																																																																																																																						Let Tu57
																																																																																																																							Put
																																																																																																																								Var reflparam
																																																																																																																								Int:0
																																																																																																																								App
																																																																																																																									Var read_float
																																																																																																																									Unit
																																																																																																																							Let Tu56
																																																																																																																								Put
																																																																																																																									Var reflparam
																																																																																																																									Int:1
																																																																																																																									App
																																																																																																																										Var read_float
																																																																																																																										Unit
																																																																																																																								Let color
																																																																																																																									Array
																																																																																																																										Int:3
																																																																																																																										Float:0.000000
																																																																																																																									Let Tu55
																																																																																																																										Put
																																																																																																																											Var color
																																																																																																																											Int:0
																																																																																																																											App
																																																																																																																												Var read_float
																																																																																																																												Unit
																																																																																																																										Let Tu54
																																																																																																																											Put
																																																																																																																												Var color
																																																																																																																												Int:1
																																																																																																																												App
																																																																																																																													Var read_float
																																																																																																																													Unit
																																																																																																																											Let Tu53
																																																																																																																												Put
																																																																																																																													Var color
																																																																																																																													Int:2
																																																																																																																													App
																																																																																																																														Var read_float
																																																																																																																														Unit
																																																																																																																												Let rotation
																																																																																																																													Array
																																																																																																																														Int:3
																																																																																																																														Float:0.000000
																																																																																																																													Let Tu52
																																																																																																																														If
																																																																																																																															Not
																																																																																																																																Eq
																																																																																																																																	Var isrot_p
																																																																																																																																	Int:0
																																																																																																																															Let Tu46
																																																																																																																																Put
																																																																																																																																	Var rotation
																																																																																																																																	Int:0
																																																																																																																																	App
																																																																																																																																		Var rad
																																																																																																																																		App
																																																																																																																																			Var read_float
																																																																																																																																			Unit
																																																																																																																																Let Tu45
																																																																																																																																	Put
																																																																																																																																		Var rotation
																																																																																																																																		Int:1
																																																																																																																																		App
																																																																																																																																			Var rad
																																																																																																																																			App
																																																																																																																																				Var read_float
																																																																																																																																				Unit
																																																																																																																																	Put
																																																																																																																																		Var rotation
																																																																																																																																		Int:2
																																																																																																																																		App
																																																																																																																																			Var rad
																																																																																																																																			App
																																																																																																																																				Var read_float
																																																																																																																																				Unit
																																																																																																																															Unit
																																																																																																																														Let m_invert2
																																																																																																																															If
																																																																																																																																Eq
																																																																																																																																	Var form
																																																																																																																																	Int:2
																																																																																																																																Bool:true
																																																																																																																																Var m_invert
																																																																																																																															Let ctbl
																																																																																																																																Array
																																																																																																																																	Int:4
																																																																																																																																	Float:0.000000
																																																																																																																																Let obj
																																																																																																																																	Tuple
																																																																																																																																	Var texture
																																																																																																																																	Var form
																																																																																																																																	Var refltype
																																																																																																																																	Var isrot_p
																																																																																																																																	Var abc
																																																																																																																																	Var xyz
																																																																																																																																	Var m_invert2
																																																																																																																																	Var reflparam
																																																																																																																																	Var color
																																																																																																																																	Var rotation
																																																																																																																																	Var ctbl
																																																																																																																																	Let Tu51
																																																																																																																																		Put
																																																																																																																																			Var objects
																																																																																																																																			Var n
																																																																																																																																			Var obj
																																																																																																																																		Let Tu50
																																																																																																																																			If
																																																																																																																																				Eq
																																																																																																																																					Var form
																																																																																																																																					Int:3
																																																																																																																																				Let a
																																																																																																																																					Get
																																																																																																																																						Var abc
																																																																																																																																						Int:0
																																																																																																																																					Let Tu48
																																																																																																																																						Put
																																																																																																																																							Var abc
																																																																																																																																							Int:0
																																																																																																																																							If
																																																																																																																																								App
																																																																																																																																									Var fiszero
																																																																																																																																									Var a
																																																																																																																																								Float:0.000000
																																																																																																																																								FDiv
																																																																																																																																									App
																																																																																																																																										Var sgn
																																																																																																																																										Var a
																																																																																																																																									App
																																																																																																																																										Var fsqr
																																																																																																																																										Var a
																																																																																																																																						Let b
																																																																																																																																							Get
																																																																																																																																								Var abc
																																																																																																																																								Int:1
																																																																																																																																							Let Tu47
																																																																																																																																								Put
																																																																																																																																									Var abc
																																																																																																																																									Int:1
																																																																																																																																									If
																																																																																																																																										App
																																																																																																																																											Var fiszero
																																																																																																																																											Var b
																																																																																																																																										Float:0.000000
																																																																																																																																										FDiv
																																																																																																																																											App
																																																																																																																																												Var sgn
																																																																																																																																												Var b
																																																																																																																																											App
																																																																																																																																												Var fsqr
																																																																																																																																												Var b
																																																																																																																																								Let c
																																																																																																																																									Get
																																																																																																																																										Var abc
																																																																																																																																										Int:2
																																																																																																																																									Put
																																																																																																																																										Var abc
																																																																																																																																										Int:2
																																																																																																																																										If
																																																																																																																																											App
																																																																																																																																												Var fiszero
																																																																																																																																												Var c
																																																																																																																																											Float:0.000000
																																																																																																																																											FDiv
																																																																																																																																												App
																																																																																																																																													Var sgn
																																																																																																																																													Var c
																																																																																																																																												App
																																																																																																																																													Var fsqr
																																																																																																																																													Var c
																																																																																																																																				If
																																																																																																																																					Eq
																																																																																																																																						Var form
																																																																																																																																						Int:2
																																																																																																																																					App
																																																																																																																																						Var vecunit_sgn
																																																																																																																																						Var abc
																																																																																																																																						Not
																																																																																																																																							Var m_invert
																																																																																																																																					Unit
																																																																																																																																			Let Tu49
																																																																																																																																				If
																																																																																																																																					Not
																																																																																																																																						Eq
																																																																																																																																							Var isrot_p
																																																																																																																																							Int:0
																																																																																																																																					App
																																																																																																																																						Var rotate_quadratic_matrix
																																																																																																																																						Var abc
																																																																																																																																						Var rotation
																																																																																																																																					Unit
																																																																																																																																				Bool:true
																																																																																																									Bool:false
																																																																																																							LetRec read_objectn 
																																																																																																								If
																																																																																																									Not
																																																																																																										LE
																																																																																																											Int:60
																																																																																																											Var n
																																																																																																									If
																																																																																																										App
																																																																																																											Var read_nth_object
																																																																																																											Var n
																																																																																																										App
																																																																																																											Var read_object
																																																																																																											Add
																																																																																																												Var n
																																																																																																												Int:1
																																																																																																										Put
																																																																																																											Var n_objects
																																																																																																											Int:0
																																																																																																											Var n
																																																																																																									Unit
																																																																																																								LetRec read_all_objectTu64 
																																																																																																									App
																																																																																																										Var read_object
																																																																																																										Int:0
																																																																																																									LetRec read_net_itemlength 
																																																																																																										Let item
																																																																																																											App
																																																																																																												Var read_int
																																																																																																												Unit
																																																																																																											If
																																																																																																												Eq
																																																																																																													Var item
																																																																																																													Neg
																																																																																																														Int:1
																																																																																																												Array
																																																																																																													Add
																																																																																																														Var length
																																																																																																														Int:1
																																																																																																													Neg
																																																																																																														Int:1
																																																																																																												Let v
																																																																																																													App
																																																																																																														Var read_net_item
																																																																																																														Add
																																																																																																															Var length
																																																																																																															Int:1
																																																																																																													Let Tu65
																																																																																																														Put
																																																																																																															Var v
																																																																																																															Var length
																																																																																																															Var item
																																																																																																														Var v
																																																																																																										LetRec read_or_networklength 
																																																																																																											Let net
																																																																																																												App
																																																																																																													Var read_net_item
																																																																																																													Int:0
																																																																																																												If
																																																																																																													Eq
																																																																																																														Get
																																																																																																															Var net
																																																																																																															Int:0
																																																																																																														Neg
																																																																																																															Int:1
																																																																																																													Array
																																																																																																														Add
																																																																																																															Var length
																																																																																																															Int:1
																																																																																																														Var net
																																																																																																													Let v
																																																																																																														App
																																																																																																															Var read_or_network
																																																																																																															Add
																																																																																																																Var length
																																																																																																																Int:1
																																																																																																														Let Tu66
																																																																																																															Put
																																																																																																																Var v
																																																																																																																Var length
																																																																																																																Var net
																																																																																																															Var v
																																																																																																											LetRec read_and_networkn 
																																																																																																												Let net
																																																																																																													App
																																																																																																														Var read_net_item
																																																																																																														Int:0
																																																																																																													If
																																																																																																														Eq
																																																																																																															Get
																																																																																																																Var net
																																																																																																																Int:0
																																																																																																															Neg
																																																																																																																Int:1
																																																																																																														Unit
																																																																																																														Let Tu67
																																																																																																															Put
																																																																																																																Var and_net
																																																																																																																Var n
																																																																																																																Var net
																																																																																																															App
																																																																																																																Var read_and_network
																																																																																																																Add
																																																																																																																	Var n
																																																																																																																	Int:1
																																																																																																												LetRec read_parameterTu68 
																																																																																																													Let Tu72
																																																																																																														App
																																																																																																															Var read_screen_settings
																																																																																																															Unit
																																																																																																														Let Tu71
																																																																																																															App
																																																																																																																Var read_light
																																																																																																																Unit
																																																																																																															Let Tu70
																																																																																																																App
																																																																																																																	Var read_all_object
																																																																																																																	Unit
																																																																																																																Let Tu69
																																																																																																																	App
																																																																																																																		Var read_and_network
																																																																																																																		Int:0
																																																																																																																	Put
																																																																																																																		Var or_net
																																																																																																																		Int:0
																																																																																																																		App
																																																																																																																			Var read_or_network
																																																																																																																			Int:0
																																																																																																													LetRec solver_rect_surfacem dirvec b0 b1 b2 i0 i1 i2 
																																																																																																														If
																																																																																																															App
																																																																																																																Var fiszero
																																																																																																																Get
																																																																																																																	Var dirvec
																																																																																																																	Var i0
																																																																																																															Bool:false
																																																																																																															Let abc
																																																																																																																App
																																																																																																																	Var o_param_abc
																																																																																																																	Var m
																																																																																																																Let d
																																																																																																																	App
																																																																																																																		Var fneg_cond
																																																																																																																		App
																																																																																																																			Var xor
																																																																																																																			App
																																																																																																																				Var o_isinvert
																																																																																																																				Var m
																																																																																																																			App
																																																																																																																				Var fisneg
																																																																																																																				Get
																																																																																																																					Var dirvec
																																																																																																																					Var i0
																																																																																																																		Get
																																																																																																																			Var abc
																																																																																																																			Var i0
																																																																																																																	Let d2
																																																																																																																		FDiv
																																																																																																																			FSub
																																																																																																																				Var d
																																																																																																																				Var b0
																																																																																																																			Get
																																																																																																																				Var dirvec
																																																																																																																				Var i0
																																																																																																																		If
																																																																																																																			App
																																																																																																																				Var fless
																																																																																																																				App
																																																																																																																					Var fabs
																																																																																																																					FAdd
																																																																																																																						FMul
																																																																																																																							Var d2
																																																																																																																							Get
																																																																																																																								Var dirvec
																																																																																																																								Var i1
																																																																																																																						Var b1
																																																																																																																				Get
																																																																																																																					Var abc
																																																																																																																					Var i1
																																																																																																																			If
																																																																																																																				App
																																																																																																																					Var fless
																																																																																																																					App
																																																																																																																						Var fabs
																																																																																																																						FAdd
																																																																																																																							FMul
																																																																																																																								Var d2
																																																																																																																								Get
																																																																																																																									Var dirvec
																																																																																																																									Var i2
																																																																																																																							Var b2
																																																																																																																					Get
																																																																																																																						Var abc
																																																																																																																						Var i2
																																																																																																																				Let Tu73
																																																																																																																					Put
																																																																																																																						Var solver_dist
																																																																																																																						Int:0
																																																																																																																						Var d2
																																																																																																																					Bool:true
																																																																																																																				Bool:false
																																																																																																																			Bool:false
																																																																																																														LetRec solver_rectm dirvec b0 b1 b2 
																																																																																																															If
																																																																																																																App
																																																																																																																	Var solver_rect_surface
																																																																																																																	Var m
																																																																																																																	Var dirvec
																																																																																																																	Var b0
																																																																																																																	Var b1
																																																																																																																	Var b2
																																																																																																																	Int:0
																																																																																																																	Int:1
																																																																																																																	Int:2
																																																																																																																Int:1
																																																																																																																If
																																																																																																																	App
																																																																																																																		Var solver_rect_surface
																																																																																																																		Var m
																																																																																																																		Var dirvec
																																																																																																																		Var b1
																																																																																																																		Var b2
																																																																																																																		Var b0
																																																																																																																		Int:1
																																																																																																																		Int:2
																																																																																																																		Int:0
																																																																																																																	Int:2
																																																																																																																	If
																																																																																																																		App
																																																																																																																			Var solver_rect_surface
																																																																																																																			Var m
																																																																																																																			Var dirvec
																																																																																																																			Var b2
																																																																																																																			Var b0
																																																																																																																			Var b1
																																																																																																																			Int:2
																																																																																																																			Int:0
																																																																																																																			Int:1
																																																																																																																		Int:3
																																																																																																																		Int:0
																																																																																																															LetRec solver_surfacem dirvec b0 b1 b2 
																																																																																																																Let abc
																																																																																																																	App
																																																																																																																		Var o_param_abc
																																																																																																																		Var m
																																																																																																																	Let d
																																																																																																																		App
																																																																																																																			Var veciprod
																																																																																																																			Var dirvec
																																																																																																																			Var abc
																																																																																																																		If
																																																																																																																			App
																																																																																																																				Var fispos
																																																																																																																				Var d
																																																																																																																			Let Tu74
																																																																																																																				Put
																																																																																																																					Var solver_dist
																																																																																																																					Int:0
																																																																																																																					FDiv
																																																																																																																						App
																																																																																																																							Var fneg
																																																																																																																							App
																																																																																																																								Var veciprod2
																																																																																																																								Var abc
																																																																																																																								Var b0
																																																																																																																								Var b1
																																																																																																																								Var b2
																																																																																																																						Var d
																																																																																																																				Int:1
																																																																																																																			Int:0
																																																																																																																LetRec quadraticm v0 v1 v2 
																																																																																																																	Let diag_part
																																																																																																																		FAdd
																																																																																																																			FAdd
																																																																																																																				FMul
																																																																																																																					App
																																																																																																																						Var fsqr
																																																																																																																						Var v0
																																																																																																																					App
																																																																																																																						Var o_param_a
																																																																																																																						Var m
																																																																																																																				FMul
																																																																																																																					App
																																																																																																																						Var fsqr
																																																																																																																						Var v1
																																																																																																																					App
																																																																																																																						Var o_param_b
																																																																																																																						Var m
																																																																																																																			FMul
																																																																																																																				App
																																																																																																																					Var fsqr
																																																																																																																					Var v2
																																																																																																																				App
																																																																																																																					Var o_param_c
																																																																																																																					Var m
																																																																																																																		If
																																																																																																																			Eq
																																																																																																																				App
																																																																																																																					Var o_isrot
																																																																																																																					Var m
																																																																																																																				Int:0
																																																																																																																			Var diag_part
																																																																																																																			FAdd
																																																																																																																				FAdd
																																																																																																																					FAdd
																																																																																																																						Var diag_part
																																																																																																																						FMul
																																																																																																																							FMul
																																																																																																																								Var v1
																																																																																																																								Var v2
																																																																																																																							App
																																																																																																																								Var o_param_r1
																																																																																																																								Var m
																																																																																																																					FMul
																																																																																																																						FMul
																																																																																																																							Var v2
																																																																																																																							Var v0
																																																																																																																						App
																																																																																																																							Var o_param_r2
																																																																																																																							Var m
																																																																																																																				FMul
																																																																																																																					FMul
																																																																																																																						Var v0
																																																																																																																						Var v1
																																																																																																																					App
																																																																																																																						Var o_param_r3
																																																																																																																						Var m
																																																																																																																	LetRec bilinearm v0 v1 v2 w0 w1 w2 
																																																																																																																		Let diag_part
																																																																																																																			FAdd
																																																																																																																				FAdd
																																																																																																																					FMul
																																																																																																																						FMul
																																																																																																																							Var v0
																																																																																																																							Var w0
																																																																																																																						App
																																																																																																																							Var o_param_a
																																																																																																																							Var m
																																																																																																																					FMul
																																																																																																																						FMul
																																																																																																																							Var v1
																																																																																																																							Var w1
																																																																																																																						App
																																																																																																																							Var o_param_b
																																																																																																																							Var m
																																																																																																																				FMul
																																																																																																																					FMul
																																																																																																																						Var v2
																																																																																																																						Var w2
																																																																																																																					App
																																																																																																																						Var o_param_c
																																																																																																																						Var m
																																																																																																																			If
																																																																																																																				Eq
																																																																																																																					App
																																																																																																																						Var o_isrot
																																																																																																																						Var m
																																																																																																																					Int:0
																																																																																																																				Var diag_part
																																																																																																																				FAdd
																																																																																																																					Var diag_part
																																																																																																																					App
																																																																																																																						Var fhalf
																																																																																																																						FAdd
																																																																																																																							FAdd
																																																																																																																								FMul
																																																																																																																									FAdd
																																																																																																																										FMul
																																																																																																																											Var v2
																																																																																																																											Var w1
																																																																																																																										FMul
																																																																																																																											Var v1
																																																																																																																											Var w2
																																																																																																																									App
																																																																																																																										Var o_param_r1
																																																																																																																										Var m
																																																																																																																								FMul
																																																																																																																									FAdd
																																																																																																																										FMul
																																																																																																																											Var v0
																																																																																																																											Var w2
																																																																																																																										FMul
																																																																																																																											Var v2
																																																																																																																											Var w0
																																																																																																																									App
																																																																																																																										Var o_param_r2
																																																																																																																										Var m
																																																																																																																							FMul
																																																																																																																								FAdd
																																																																																																																									FMul
																																																																																																																										Var v0
																																																																																																																										Var w1
																																																																																																																									FMul
																																																																																																																										Var v1
																																																																																																																										Var w0
																																																																																																																								App
																																																																																																																									Var o_param_r3
																																																																																																																									Var m
																																																																																																																		LetRec solver_secondm dirvec b0 b1 b2 
																																																																																																																			Let aa
																																																																																																																				App
																																																																																																																					Var quadratic
																																																																																																																					Var m
																																																																																																																					Get
																																																																																																																						Var dirvec
																																																																																																																						Int:0
																																																																																																																					Get
																																																																																																																						Var dirvec
																																																																																																																						Int:1
																																																																																																																					Get
																																																																																																																						Var dirvec
																																																																																																																						Int:2
																																																																																																																				If
																																																																																																																					App
																																																																																																																						Var fiszero
																																																																																																																						Var aa
																																																																																																																					Int:0
																																																																																																																					Let bb
																																																																																																																						App
																																																																																																																							Var bilinear
																																																																																																																							Var m
																																																																																																																							Get
																																																																																																																								Var dirvec
																																																																																																																								Int:0
																																																																																																																							Get
																																																																																																																								Var dirvec
																																																																																																																								Int:1
																																																																																																																							Get
																																																																																																																								Var dirvec
																																																																																																																								Int:2
																																																																																																																							Var b0
																																																																																																																							Var b1
																																																																																																																							Var b2
																																																																																																																						Let cc0
																																																																																																																							App
																																																																																																																								Var quadratic
																																																																																																																								Var m
																																																																																																																								Var b0
																																																																																																																								Var b1
																																																																																																																								Var b2
																																																																																																																							Let cc
																																																																																																																								If
																																																																																																																									Eq
																																																																																																																										App
																																																																																																																											Var o_form
																																																																																																																											Var m
																																																																																																																										Int:3
																																																																																																																									FSub
																																																																																																																										Var cc0
																																																																																																																										Float:1.000000
																																																																																																																									Var cc0
																																																																																																																								Let d
																																																																																																																									FSub
																																																																																																																										App
																																																																																																																											Var fsqr
																																																																																																																											Var bb
																																																																																																																										FMul
																																																																																																																											Var aa
																																																																																																																											Var cc
																																																																																																																									If
																																																																																																																										App
																																																																																																																											Var fispos
																																																																																																																											Var d
																																																																																																																										Let sd
																																																																																																																											App
																																																																																																																												Var sqrt
																																																																																																																												Var d
																																																																																																																											Let t1
																																																																																																																												If
																																																																																																																													App
																																																																																																																														Var o_isinvert
																																																																																																																														Var m
																																																																																																																													Var sd
																																																																																																																													App
																																																																																																																														Var fneg
																																																																																																																														Var sd
																																																																																																																												Let Tu75
																																																																																																																													Put
																																																																																																																														Var solver_dist
																																																																																																																														Int:0
																																																																																																																														FDiv
																																																																																																																															FSub
																																																																																																																																Var t1
																																																																																																																																Var bb
																																																																																																																															Var aa
																																																																																																																													Int:1
																																																																																																																										Int:0
																																																																																																																			LetRec solverindex dirvec org 
																																																																																																																				Let m
																																																																																																																					Get
																																																																																																																						Var objects
																																																																																																																						Var index
																																																																																																																					Let b0
																																																																																																																						FSub
																																																																																																																							Get
																																																																																																																								Var org
																																																																																																																								Int:0
																																																																																																																							App
																																																																																																																								Var o_param_x
																																																																																																																								Var m
																																																																																																																						Let b1
																																																																																																																							FSub
																																																																																																																								Get
																																																																																																																									Var org
																																																																																																																									Int:1
																																																																																																																								App
																																																																																																																									Var o_param_y
																																																																																																																									Var m
																																																																																																																							Let b2
																																																																																																																								FSub
																																																																																																																									Get
																																																																																																																										Var org
																																																																																																																										Int:2
																																																																																																																									App
																																																																																																																										Var o_param_z
																																																																																																																										Var m
																																																																																																																								Let m_shape
																																																																																																																									App
																																																																																																																										Var o_form
																																																																																																																										Var m
																																																																																																																									If
																																																																																																																										Eq
																																																																																																																											Var m_shape
																																																																																																																											Int:1
																																																																																																																										App
																																																																																																																											Var solver_rect
																																																																																																																											Var m
																																																																																																																											Var dirvec
																																																																																																																											Var b0
																																																																																																																											Var b1
																																																																																																																											Var b2
																																																																																																																										If
																																																																																																																											Eq
																																																																																																																												Var m_shape
																																																																																																																												Int:2
																																																																																																																											App
																																																																																																																												Var solver_surface
																																																																																																																												Var m
																																																																																																																												Var dirvec
																																																																																																																												Var b0
																																																																																																																												Var b1
																																																																																																																												Var b2
																																																																																																																											App
																																																																																																																												Var solver_second
																																																																																																																												Var m
																																																																																																																												Var dirvec
																																																																																																																												Var b0
																																																																																																																												Var b1
																																																																																																																												Var b2
																																																																																																																				LetRec solver_rect_fastm v dconst b0 b1 b2 
																																																																																																																					Let d0
																																																																																																																						FMul
																																																																																																																							FSub
																																																																																																																								Get
																																																																																																																									Var dconst
																																																																																																																									Int:0
																																																																																																																								Var b0
																																																																																																																							Get
																																																																																																																								Var dconst
																																																																																																																								Int:1
																																																																																																																						If
																																																																																																																							If
																																																																																																																								App
																																																																																																																									Var fless
																																																																																																																									App
																																																																																																																										Var fabs
																																																																																																																										FAdd
																																																																																																																											FMul
																																																																																																																												Var d0
																																																																																																																												Get
																																																																																																																													Var v
																																																																																																																													Int:1
																																																																																																																											Var b1
																																																																																																																									App
																																																																																																																										Var o_param_b
																																																																																																																										Var m
																																																																																																																								If
																																																																																																																									App
																																																																																																																										Var fless
																																																																																																																										App
																																																																																																																											Var fabs
																																																																																																																											FAdd
																																																																																																																												FMul
																																																																																																																													Var d0
																																																																																																																													Get
																																																																																																																														Var v
																																																																																																																														Int:2
																																																																																																																												Var b2
																																																																																																																										App
																																																																																																																											Var o_param_c
																																																																																																																											Var m
																																																																																																																									Not
																																																																																																																										App
																																																																																																																											Var fiszero
																																																																																																																											Get
																																																																																																																												Var dconst
																																																																																																																												Int:1
																																																																																																																									Bool:false
																																																																																																																								Bool:false
																																																																																																																							Let Tu76
																																																																																																																								Put
																																																																																																																									Var solver_dist
																																																																																																																									Int:0
																																																																																																																									Var d0
																																																																																																																								Int:1
																																																																																																																							Let d1
																																																																																																																								FMul
																																																																																																																									FSub
																																																																																																																										Get
																																																																																																																											Var dconst
																																																																																																																											Int:2
																																																																																																																										Var b1
																																																																																																																									Get
																																																																																																																										Var dconst
																																																																																																																										Int:3
																																																																																																																								If
																																																																																																																									If
																																																																																																																										App
																																																																																																																											Var fless
																																																																																																																											App
																																																																																																																												Var fabs
																																																																																																																												FAdd
																																																																																																																													FMul
																																																																																																																														Var d1
																																																																																																																														Get
																																																																																																																															Var v
																																																																																																																															Int:0
																																																																																																																													Var b0
																																																																																																																											App
																																																																																																																												Var o_param_a
																																																																																																																												Var m
																																																																																																																										If
																																																																																																																											App
																																																																																																																												Var fless
																																																																																																																												App
																																																																																																																													Var fabs
																																																																																																																													FAdd
																																																																																																																														FMul
																																																																																																																															Var d1
																																																																																																																															Get
																																																																																																																																Var v
																																																																																																																																Int:2
																																																																																																																														Var b2
																																																																																																																												App
																																																																																																																													Var o_param_c
																																																																																																																													Var m
																																																																																																																											Not
																																																																																																																												App
																																																																																																																													Var fiszero
																																																																																																																													Get
																																																																																																																														Var dconst
																																																																																																																														Int:3
																																																																																																																											Bool:false
																																																																																																																										Bool:false
																																																																																																																									Let Tu77
																																																																																																																										Put
																																																																																																																											Var solver_dist
																																																																																																																											Int:0
																																																																																																																											Var d1
																																																																																																																										Int:2
																																																																																																																									Let d2
																																																																																																																										FMul
																																																																																																																											FSub
																																																																																																																												Get
																																																																																																																													Var dconst
																																																																																																																													Int:4
																																																																																																																												Var b2
																																																																																																																											Get
																																																																																																																												Var dconst
																																																																																																																												Int:5
																																																																																																																										If
																																																																																																																											If
																																																																																																																												App
																																																																																																																													Var fless
																																																																																																																													App
																																																																																																																														Var fabs
																																																																																																																														FAdd
																																																																																																																															FMul
																																																																																																																																Var d2
																																																																																																																																Get
																																																																																																																																	Var v
																																																																																																																																	Int:0
																																																																																																																															Var b0
																																																																																																																													App
																																																																																																																														Var o_param_a
																																																																																																																														Var m
																																																																																																																												If
																																																																																																																													App
																																																																																																																														Var fless
																																																																																																																														App
																																																																																																																															Var fabs
																																																																																																																															FAdd
																																																																																																																																FMul
																																																																																																																																	Var d2
																																																																																																																																	Get
																																																																																																																																		Var v
																																																																																																																																		Int:1
																																																																																																																																Var b1
																																																																																																																														App
																																																																																																																															Var o_param_b
																																																																																																																															Var m
																																																																																																																													Not
																																																																																																																														App
																																																																																																																															Var fiszero
																																																																																																																															Get
																																																																																																																																Var dconst
																																																																																																																																Int:5
																																																																																																																													Bool:false
																																																																																																																												Bool:false
																																																																																																																											Let Tu78
																																																																																																																												Put
																																																																																																																													Var solver_dist
																																																																																																																													Int:0
																																																																																																																													Var d2
																																																																																																																												Int:3
																																																																																																																											Int:0
																																																																																																																					LetRec solver_surface_fastm dconst b0 b1 b2 
																																																																																																																						If
																																																																																																																							App
																																																																																																																								Var fisneg
																																																																																																																								Get
																																																																																																																									Var dconst
																																																																																																																									Int:0
																																																																																																																							Let Tu79
																																																																																																																								Put
																																																																																																																									Var solver_dist
																																																																																																																									Int:0
																																																																																																																									FAdd
																																																																																																																										FAdd
																																																																																																																											FMul
																																																																																																																												Get
																																																																																																																													Var dconst
																																																																																																																													Int:1
																																																																																																																												Var b0
																																																																																																																											FMul
																																																																																																																												Get
																																																																																																																													Var dconst
																																																																																																																													Int:2
																																																																																																																												Var b1
																																																																																																																										FMul
																																																																																																																											Get
																																																																																																																												Var dconst
																																																																																																																												Int:3
																																																																																																																											Var b2
																																																																																																																								Int:1
																																																																																																																							Int:0
																																																																																																																						LetRec solver_second_fastm dconst b0 b1 b2 
																																																																																																																							Let aa
																																																																																																																								Get
																																																																																																																									Var dconst
																																																																																																																									Int:0
																																																																																																																								If
																																																																																																																									App
																																																																																																																										Var fiszero
																																																																																																																										Var aa
																																																																																																																									Int:0
																																																																																																																									Let neg_bb
																																																																																																																										FAdd
																																																																																																																											FAdd
																																																																																																																												FMul
																																																																																																																													Get
																																																																																																																														Var dconst
																																																																																																																														Int:1
																																																																																																																													Var b0
																																																																																																																												FMul
																																																																																																																													Get
																																																																																																																														Var dconst
																																																																																																																														Int:2
																																																																																																																													Var b1
																																																																																																																											FMul
																																																																																																																												Get
																																																																																																																													Var dconst
																																																																																																																													Int:3
																																																																																																																												Var b2
																																																																																																																										Let cc0
																																																																																																																											App
																																																																																																																												Var quadratic
																																																																																																																												Var m
																																																																																																																												Var b0
																																																																																																																												Var b1
																																																																																																																												Var b2
																																																																																																																											Let cc
																																																																																																																												If
																																																																																																																													Eq
																																																																																																																														App
																																																																																																																															Var o_form
																																																																																																																															Var m
																																																																																																																														Int:3
																																																																																																																													FSub
																																																																																																																														Var cc0
																																																																																																																														Float:1.000000
																																																																																																																													Var cc0
																																																																																																																												Let d
																																																																																																																													FSub
																																																																																																																														App
																																																																																																																															Var fsqr
																																																																																																																															Var neg_bb
																																																																																																																														FMul
																																																																																																																															Var aa
																																																																																																																															Var cc
																																																																																																																													If
																																																																																																																														App
																																																																																																																															Var fispos
																																																																																																																															Var d
																																																																																																																														Let Tu80
																																																																																																																															If
																																																																																																																																App
																																																																																																																																	Var o_isinvert
																																																																																																																																	Var m
																																																																																																																																Put
																																																																																																																																	Var solver_dist
																																																																																																																																	Int:0
																																																																																																																																	FMul
																																																																																																																																		FAdd
																																																																																																																																			Var neg_bb
																																																																																																																																			App
																																																																																																																																				Var sqrt
																																																																																																																																				Var d
																																																																																																																																		Get
																																																																																																																																			Var dconst
																																																																																																																																			Int:4
																																																																																																																																Put
																																																																																																																																	Var solver_dist
																																																																																																																																	Int:0
																																																																																																																																	FMul
																																																																																																																																		FSub
																																																																																																																																			Var neg_bb
																																																																																																																																			App
																																																																																																																																				Var sqrt
																																																																																																																																				Var d
																																																																																																																																		Get
																																																																																																																																			Var dconst
																																																																																																																																			Int:4
																																																																																																																															Int:1
																																																																																																																														Int:0
																																																																																																																							LetRec solver_fastindex dirvec org 
																																																																																																																								Let m
																																																																																																																									Get
																																																																																																																										Var objects
																																																																																																																										Var index
																																																																																																																									Let b0
																																																																																																																										FSub
																																																																																																																											Get
																																																																																																																												Var org
																																																																																																																												Int:0
																																																																																																																											App
																																																																																																																												Var o_param_x
																																																																																																																												Var m
																																																																																																																										Let b1
																																																																																																																											FSub
																																																																																																																												Get
																																																																																																																													Var org
																																																																																																																													Int:1
																																																																																																																												App
																																																																																																																													Var o_param_y
																																																																																																																													Var m
																																																																																																																											Let b2
																																																																																																																												FSub
																																																																																																																													Get
																																																																																																																														Var org
																																																																																																																														Int:2
																																																																																																																													App
																																																																																																																														Var o_param_z
																																																																																																																														Var m
																																																																																																																												Let dconsts
																																																																																																																													App
																																																																																																																														Var d_const
																																																																																																																														Var dirvec
																																																																																																																													Let dconst
																																																																																																																														Get
																																																																																																																															Var dconsts
																																																																																																																															Var index
																																																																																																																														Let m_shape
																																																																																																																															App
																																																																																																																																Var o_form
																																																																																																																																Var m
																																																																																																																															If
																																																																																																																																Eq
																																																																																																																																	Var m_shape
																																																																																																																																	Int:1
																																																																																																																																App
																																																																																																																																	Var solver_rect_fast
																																																																																																																																	Var m
																																																																																																																																	App
																																																																																																																																		Var d_vec
																																																																																																																																		Var dirvec
																																																																																																																																	Var dconst
																																																																																																																																	Var b0
																																																																																																																																	Var b1
																																																																																																																																	Var b2
																																																																																																																																If
																																																																																																																																	Eq
																																																																																																																																		Var m_shape
																																																																																																																																		Int:2
																																																																																																																																	App
																																																																																																																																		Var solver_surface_fast
																																																																																																																																		Var m
																																																																																																																																		Var dconst
																																																																																																																																		Var b0
																																																																																																																																		Var b1
																																																																																																																																		Var b2
																																																																																																																																	App
																																																																																																																																		Var solver_second_fast
																																																																																																																																		Var m
																																																																																																																																		Var dconst
																																																																																																																																		Var b0
																																																																																																																																		Var b1
																																																																																																																																		Var b2
																																																																																																																								LetRec solver_surface_fast2m dconst sconst b0 b1 b2 
																																																																																																																									If
																																																																																																																										App
																																																																																																																											Var fisneg
																																																																																																																											Get
																																																																																																																												Var dconst
																																																																																																																												Int:0
																																																																																																																										Let Tu81
																																																																																																																											Put
																																																																																																																												Var solver_dist
																																																																																																																												Int:0
																																																																																																																												FMul
																																																																																																																													Get
																																																																																																																														Var dconst
																																																																																																																														Int:0
																																																																																																																													Get
																																																																																																																														Var sconst
																																																																																																																														Int:3
																																																																																																																											Int:1
																																																																																																																										Int:0
																																																																																																																									LetRec solver_second_fast2m dconst sconst b0 b1 b2 
																																																																																																																										Let aa
																																																																																																																											Get
																																																																																																																												Var dconst
																																																																																																																												Int:0
																																																																																																																											If
																																																																																																																												App
																																																																																																																													Var fiszero
																																																																																																																													Var aa
																																																																																																																												Int:0
																																																																																																																												Let neg_bb
																																																																																																																													FAdd
																																																																																																																														FAdd
																																																																																																																															FMul
																																																																																																																																Get
																																																																																																																																	Var dconst
																																																																																																																																	Int:1
																																																																																																																																Var b0
																																																																																																																															FMul
																																																																																																																																Get
																																																																																																																																	Var dconst
																																																																																																																																	Int:2
																																																																																																																																Var b1
																																																																																																																														FMul
																																																																																																																															Get
																																																																																																																																Var dconst
																																																																																																																																Int:3
																																																																																																																															Var b2
																																																																																																																													Let cc
																																																																																																																														Get
																																																																																																																															Var sconst
																																																																																																																															Int:3
																																																																																																																														Let d
																																																																																																																															FSub
																																																																																																																																App
																																																																																																																																	Var fsqr
																																																																																																																																	Var neg_bb
																																																																																																																																FMul
																																																																																																																																	Var aa
																																																																																																																																	Var cc
																																																																																																																															If
																																																																																																																																App
																																																																																																																																	Var fispos
																																																																																																																																	Var d
																																																																																																																																Let Tu82
																																																																																																																																	If
																																																																																																																																		App
																																																																																																																																			Var o_isinvert
																																																																																																																																			Var m
																																																																																																																																		Put
																																																																																																																																			Var solver_dist
																																																																																																																																			Int:0
																																																																																																																																			FMul
																																																																																																																																				FAdd
																																																																																																																																					Var neg_bb
																																																																																																																																					App
																																																																																																																																						Var sqrt
																																																																																																																																						Var d
																																																																																																																																				Get
																																																																																																																																					Var dconst
																																																																																																																																					Int:4
																																																																																																																																		Put
																																																																																																																																			Var solver_dist
																																																																																																																																			Int:0
																																																																																																																																			FMul
																																																																																																																																				FSub
																																																																																																																																					Var neg_bb
																																																																																																																																					App
																																																																																																																																						Var sqrt
																																																																																																																																						Var d
																																																																																																																																				Get
																																																																																																																																					Var dconst
																																																																																																																																					Int:4
																																																																																																																																	Int:1
																																																																																																																																Int:0
																																																																																																																										LetRec solver_fast2index dirvec 
																																																																																																																											Let m
																																																																																																																												Get
																																																																																																																													Var objects
																																																																																																																													Var index
																																																																																																																												Let sconst
																																																																																																																													App
																																																																																																																														Var o_param_ctbl
																																																																																																																														Var m
																																																																																																																													Let b0
																																																																																																																														Get
																																																																																																																															Var sconst
																																																																																																																															Int:0
																																																																																																																														Let b1
																																																																																																																															Get
																																																																																																																																Var sconst
																																																																																																																																Int:1
																																																																																																																															Let b2
																																																																																																																																Get
																																																																																																																																	Var sconst
																																																																																																																																	Int:2
																																																																																																																																Let dconsts
																																																																																																																																	App
																																																																																																																																		Var d_const
																																																																																																																																		Var dirvec
																																																																																																																																	Let dconst
																																																																																																																																		Get
																																																																																																																																			Var dconsts
																																																																																																																																			Var index
																																																																																																																																		Let m_shape
																																																																																																																																			App
																																																																																																																																				Var o_form
																																																																																																																																				Var m
																																																																																																																																			If
																																																																																																																																				Eq
																																																																																																																																					Var m_shape
																																																																																																																																					Int:1
																																																																																																																																				App
																																																																																																																																					Var solver_rect_fast
																																																																																																																																					Var m
																																																																																																																																					App
																																																																																																																																						Var d_vec
																																																																																																																																						Var dirvec
																																																																																																																																					Var dconst
																																																																																																																																					Var b0
																																																																																																																																					Var b1
																																																																																																																																					Var b2
																																																																																																																																				If
																																																																																																																																					Eq
																																																																																																																																						Var m_shape
																																																																																																																																						Int:2
																																																																																																																																					App
																																																																																																																																						Var solver_surface_fast2
																																																																																																																																						Var m
																																																																																																																																						Var dconst
																																																																																																																																						Var sconst
																																																																																																																																						Var b0
																																																																																																																																						Var b1
																																																																																																																																						Var b2
																																																																																																																																					App
																																																																																																																																						Var solver_second_fast2
																																																																																																																																						Var m
																																																																																																																																						Var dconst
																																																																																																																																						Var sconst
																																																																																																																																						Var b0
																																																																																																																																						Var b1
																																																																																																																																						Var b2
																																																																																																																											LetRec setup_rect_tablevec m 
																																																																																																																												Let const
																																																																																																																													Array
																																																																																																																														Int:6
																																																																																																																														Float:0.000000
																																																																																																																													Let Tu88
																																																																																																																														If
																																																																																																																															App
																																																																																																																																Var fiszero
																																																																																																																																Get
																																																																																																																																	Var vec
																																																																																																																																	Int:0
																																																																																																																															Put
																																																																																																																																Var const
																																																																																																																																Int:1
																																																																																																																																Float:0.000000
																																																																																																																															Let Tu83
																																																																																																																																Put
																																																																																																																																	Var const
																																																																																																																																	Int:0
																																																																																																																																	App
																																																																																																																																		Var fneg_cond
																																																																																																																																		App
																																																																																																																																			Var xor
																																																																																																																																			App
																																																																																																																																				Var o_isinvert
																																																																																																																																				Var m
																																																																																																																																			App
																																																																																																																																				Var fisneg
																																																																																																																																				Get
																																																																																																																																					Var vec
																																																																																																																																					Int:0
																																																																																																																																		App
																																																																																																																																			Var o_param_a
																																																																																																																																			Var m
																																																																																																																																Put
																																																																																																																																	Var const
																																																																																																																																	Int:1
																																																																																																																																	FDiv
																																																																																																																																		Float:1.000000
																																																																																																																																		Get
																																																																																																																																			Var vec
																																																																																																																																			Int:0
																																																																																																																														Let Tu87
																																																																																																																															If
																																																																																																																																App
																																																																																																																																	Var fiszero
																																																																																																																																	Get
																																																																																																																																		Var vec
																																																																																																																																		Int:1
																																																																																																																																Put
																																																																																																																																	Var const
																																																																																																																																	Int:3
																																																																																																																																	Float:0.000000
																																																																																																																																Let Tu84
																																																																																																																																	Put
																																																																																																																																		Var const
																																																																																																																																		Int:2
																																																																																																																																		App
																																																																																																																																			Var fneg_cond
																																																																																																																																			App
																																																																																																																																				Var xor
																																																																																																																																				App
																																																																																																																																					Var o_isinvert
																																																																																																																																					Var m
																																																																																																																																				App
																																																																																																																																					Var fisneg
																																																																																																																																					Get
																																																																																																																																						Var vec
																																																																																																																																						Int:1
																																																																																																																																			App
																																																																																																																																				Var o_param_b
																																																																																																																																				Var m
																																																																																																																																	Put
																																																																																																																																		Var const
																																																																																																																																		Int:3
																																																																																																																																		FDiv
																																																																																																																																			Float:1.000000
																																																																																																																																			Get
																																																																																																																																				Var vec
																																																																																																																																				Int:1
																																																																																																																															Let Tu86
																																																																																																																																If
																																																																																																																																	App
																																																																																																																																		Var fiszero
																																																																																																																																		Get
																																																																																																																																			Var vec
																																																																																																																																			Int:2
																																																																																																																																	Put
																																																																																																																																		Var const
																																																																																																																																		Int:5
																																																																																																																																		Float:0.000000
																																																																																																																																	Let Tu85
																																																																																																																																		Put
																																																																																																																																			Var const
																																																																																																																																			Int:4
																																																																																																																																			App
																																																																																																																																				Var fneg_cond
																																																																																																																																				App
																																																																																																																																					Var xor
																																																																																																																																					App
																																																																																																																																						Var o_isinvert
																																																																																																																																						Var m
																																																																																																																																					App
																																																																																																																																						Var fisneg
																																																																																																																																						Get
																																																																																																																																							Var vec
																																																																																																																																							Int:2
																																																																																																																																				App
																																																																																																																																					Var o_param_c
																																																																																																																																					Var m
																																																																																																																																		Put
																																																																																																																																			Var const
																																																																																																																																			Int:5
																																																																																																																																			FDiv
																																																																																																																																				Float:1.000000
																																																																																																																																				Get
																																																																																																																																					Var vec
																																																																																																																																					Int:2
																																																																																																																																Var const
																																																																																																																												LetRec setup_surface_tablevec m 
																																																																																																																													Let const
																																																																																																																														Array
																																																																																																																															Int:4
																																																																																																																															Float:0.000000
																																																																																																																														Let d
																																																																																																																															FAdd
																																																																																																																																FAdd
																																																																																																																																	FMul
																																																																																																																																		Get
																																																																																																																																			Var vec
																																																																																																																																			Int:0
																																																																																																																																		App
																																																																																																																																			Var o_param_a
																																																																																																																																			Var m
																																																																																																																																	FMul
																																																																																																																																		Get
																																																																																																																																			Var vec
																																																																																																																																			Int:1
																																																																																																																																		App
																																																																																																																																			Var o_param_b
																																																																																																																																			Var m
																																																																																																																																FMul
																																																																																																																																	Get
																																																																																																																																		Var vec
																																																																																																																																		Int:2
																																																																																																																																	App
																																																																																																																																		Var o_param_c
																																																																																																																																		Var m
																																																																																																																															Let Tu92
																																																																																																																																If
																																																																																																																																	App
																																																																																																																																		Var fispos
																																																																																																																																		Var d
																																																																																																																																	Let Tu91
																																																																																																																																		Put
																																																																																																																																			Var const
																																																																																																																																			Int:0
																																																																																																																																			FDiv
																																																																																																																																				Float:-1.000000
																																																																																																																																				Var d
																																																																																																																																		Let Tu90
																																																																																																																																			Put
																																																																																																																																				Var const
																																																																																																																																				Int:1
																																																																																																																																				App
																																																																																																																																					Var fneg
																																																																																																																																					FDiv
																																																																																																																																						App
																																																																																																																																							Var o_param_a
																																																																																																																																							Var m
																																																																																																																																						Var d
																																																																																																																																			Let Tu89
																																																																																																																																				Put
																																																																																																																																					Var const
																																																																																																																																					Int:2
																																																																																																																																					App
																																																																																																																																						Var fneg
																																																																																																																																						FDiv
																																																																																																																																							App
																																																																																																																																								Var o_param_b
																																																																																																																																								Var m
																																																																																																																																							Var d
																																																																																																																																				Put
																																																																																																																																					Var const
																																																																																																																																					Int:3
																																																																																																																																					App
																																																																																																																																						Var fneg
																																																																																																																																						FDiv
																																																																																																																																							App
																																																																																																																																								Var o_param_c
																																																																																																																																								Var m
																																																																																																																																							Var d
																																																																																																																																	Put
																																																																																																																																		Var const
																																																																																																																																		Int:0
																																																																																																																																		Float:0.000000
																																																																																																																																Var const
																																																																																																																													LetRec setup_second_tablev m 
																																																																																																																														Let const
																																																																																																																															Array
																																																																																																																																Int:5
																																																																																																																																Float:0.000000
																																																																																																																															Let aa
																																																																																																																																App
																																																																																																																																	Var quadratic
																																																																																																																																	Var m
																																																																																																																																	Get
																																																																																																																																		Var v
																																																																																																																																		Int:0
																																																																																																																																	Get
																																																																																																																																		Var v
																																																																																																																																		Int:1
																																																																																																																																	Get
																																																																																																																																		Var v
																																																																																																																																		Int:2
																																																																																																																																Let c1
																																																																																																																																	App
																																																																																																																																		Var fneg
																																																																																																																																		FMul
																																																																																																																																			Get
																																																																																																																																				Var v
																																																																																																																																				Int:0
																																																																																																																																			App
																																																																																																																																				Var o_param_a
																																																																																																																																				Var m
																																																																																																																																	Let c2
																																																																																																																																		App
																																																																																																																																			Var fneg
																																																																																																																																			FMul
																																																																																																																																				Get
																																																																																																																																					Var v
																																																																																																																																					Int:1
																																																																																																																																				App
																																																																																																																																					Var o_param_b
																																																																																																																																					Var m
																																																																																																																																		Let c3
																																																																																																																																			App
																																																																																																																																				Var fneg
																																																																																																																																				FMul
																																																																																																																																					Get
																																																																																																																																						Var v
																																																																																																																																						Int:2
																																																																																																																																					App
																																																																																																																																						Var o_param_c
																																																																																																																																						Var m
																																																																																																																																			Let Tu99
																																																																																																																																				Put
																																																																																																																																					Var const
																																																																																																																																					Int:0
																																																																																																																																					Var aa
																																																																																																																																				Let Tu98
																																																																																																																																					If
																																																																																																																																						Not
																																																																																																																																							Eq
																																																																																																																																								App
																																																																																																																																									Var o_isrot
																																																																																																																																									Var m
																																																																																																																																								Int:0
																																																																																																																																						Let Tu94
																																																																																																																																							Put
																																																																																																																																								Var const
																																																																																																																																								Int:1
																																																																																																																																								FSub
																																																																																																																																									Var c1
																																																																																																																																									App
																																																																																																																																										Var fhalf
																																																																																																																																										FAdd
																																																																																																																																											FMul
																																																																																																																																												Get
																																																																																																																																													Var v
																																																																																																																																													Int:2
																																																																																																																																												App
																																																																																																																																													Var o_param_r2
																																																																																																																																													Var m
																																																																																																																																											FMul
																																																																																																																																												Get
																																																																																																																																													Var v
																																																																																																																																													Int:1
																																																																																																																																												App
																																																																																																																																													Var o_param_r3
																																																																																																																																													Var m
																																																																																																																																							Let Tu93
																																																																																																																																								Put
																																																																																																																																									Var const
																																																																																																																																									Int:2
																																																																																																																																									FSub
																																																																																																																																										Var c2
																																																																																																																																										App
																																																																																																																																											Var fhalf
																																																																																																																																											FAdd
																																																																																																																																												FMul
																																																																																																																																													Get
																																																																																																																																														Var v
																																																																																																																																														Int:2
																																																																																																																																													App
																																																																																																																																														Var o_param_r1
																																																																																																																																														Var m
																																																																																																																																												FMul
																																																																																																																																													Get
																																																																																																																																														Var v
																																																																																																																																														Int:0
																																																																																																																																													App
																																																																																																																																														Var o_param_r3
																																																																																																																																														Var m
																																																																																																																																								Put
																																																																																																																																									Var const
																																																																																																																																									Int:3
																																																																																																																																									FSub
																																																																																																																																										Var c3
																																																																																																																																										App
																																																																																																																																											Var fhalf
																																																																																																																																											FAdd
																																																																																																																																												FMul
																																																																																																																																													Get
																																																																																																																																														Var v
																																																																																																																																														Int:1
																																																																																																																																													App
																																																																																																																																														Var o_param_r1
																																																																																																																																														Var m
																																																																																																																																												FMul
																																																																																																																																													Get
																																																																																																																																														Var v
																																																																																																																																														Int:0
																																																																																																																																													App
																																																																																																																																														Var o_param_r2
																																																																																																																																														Var m
																																																																																																																																						Let Tu96
																																																																																																																																							Put
																																																																																																																																								Var const
																																																																																																																																								Int:1
																																																																																																																																								Var c1
																																																																																																																																							Let Tu95
																																																																																																																																								Put
																																																																																																																																									Var const
																																																																																																																																									Int:2
																																																																																																																																									Var c2
																																																																																																																																								Put
																																																																																																																																									Var const
																																																																																																																																									Int:3
																																																																																																																																									Var c3
																																																																																																																																					Let Tu97
																																																																																																																																						If
																																																																																																																																							Not
																																																																																																																																								App
																																																																																																																																									Var fiszero
																																																																																																																																									Var aa
																																																																																																																																							Put
																																																																																																																																								Var const
																																																																																																																																								Int:4
																																																																																																																																								FDiv
																																																																																																																																									Float:1.000000
																																																																																																																																									Var aa
																																																																																																																																							Unit
																																																																																																																																						Var const
																																																																																																																														LetRec iter_setup_dirvec_constantsdirvec index 
																																																																																																																															If
																																																																																																																																LE
																																																																																																																																	Int:0
																																																																																																																																	Var index
																																																																																																																																Let m
																																																																																																																																	Get
																																																																																																																																		Var objects
																																																																																																																																		Var index
																																																																																																																																	Let dconst
																																																																																																																																		App
																																																																																																																																			Var d_const
																																																																																																																																			Var dirvec
																																																																																																																																		Let v
																																																																																																																																			App
																																																																																																																																				Var d_vec
																																																																																																																																				Var dirvec
																																																																																																																																			Let m_shape
																																																																																																																																				App
																																																																																																																																					Var o_form
																																																																																																																																					Var m
																																																																																																																																				Let Tu100
																																																																																																																																					If
																																																																																																																																						Eq
																																																																																																																																							Var m_shape
																																																																																																																																							Int:1
																																																																																																																																						Put
																																																																																																																																							Var dconst
																																																																																																																																							Var index
																																																																																																																																							App
																																																																																																																																								Var setup_rect_table
																																																																																																																																								Var v
																																																																																																																																								Var m
																																																																																																																																						If
																																																																																																																																							Eq
																																																																																																																																								Var m_shape
																																																																																																																																								Int:2
																																																																																																																																							Put
																																																																																																																																								Var dconst
																																																																																																																																								Var index
																																																																																																																																								App
																																																																																																																																									Var setup_surface_table
																																																																																																																																									Var v
																																																																																																																																									Var m
																																																																																																																																							Put
																																																																																																																																								Var dconst
																																																																																																																																								Var index
																																																																																																																																								App
																																																																																																																																									Var setup_second_table
																																																																																																																																									Var v
																																																																																																																																									Var m
																																																																																																																																					App
																																																																																																																																						Var iter_setup_dirvec_constants
																																																																																																																																						Var dirvec
																																																																																																																																						Sub
																																																																																																																																							Var index
																																																																																																																																							Int:1
																																																																																																																																Unit
																																																																																																																															LetRec setup_dirvec_constantsdirvec 
																																																																																																																																App
																																																																																																																																	Var iter_setup_dirvec_constants
																																																																																																																																	Var dirvec
																																																																																																																																	Sub
																																																																																																																																		Get
																																																																																																																																			Var n_objects
																																																																																																																																			Int:0
																																																																																																																																		Int:1
																																																																																																																																LetRec setup_startp_constantsp index 
																																																																																																																																	If
																																																																																																																																		LE
																																																																																																																																			Int:0
																																																																																																																																			Var index
																																																																																																																																		Let obj
																																																																																																																																			Get
																																																																																																																																				Var objects
																																																																																																																																				Var index
																																																																																																																																			Let sconst
																																																																																																																																				App
																																																																																																																																					Var o_param_ctbl
																																																																																																																																					Var obj
																																																																																																																																				Let m_shape
																																																																																																																																					App
																																																																																																																																						Var o_form
																																																																																																																																						Var obj
																																																																																																																																					Let Tu104
																																																																																																																																						Put
																																																																																																																																							Var sconst
																																																																																																																																							Int:0
																																																																																																																																							FSub
																																																																																																																																								Get
																																																																																																																																									Var p
																																																																																																																																									Int:0
																																																																																																																																								App
																																																																																																																																									Var o_param_x
																																																																																																																																									Var obj
																																																																																																																																						Let Tu103
																																																																																																																																							Put
																																																																																																																																								Var sconst
																																																																																																																																								Int:1
																																																																																																																																								FSub
																																																																																																																																									Get
																																																																																																																																										Var p
																																																																																																																																										Int:1
																																																																																																																																									App
																																																																																																																																										Var o_param_y
																																																																																																																																										Var obj
																																																																																																																																							Let Tu102
																																																																																																																																								Put
																																																																																																																																									Var sconst
																																																																																																																																									Int:2
																																																																																																																																									FSub
																																																																																																																																										Get
																																																																																																																																											Var p
																																																																																																																																											Int:2
																																																																																																																																										App
																																																																																																																																											Var o_param_z
																																																																																																																																											Var obj
																																																																																																																																								Let Tu101
																																																																																																																																									If
																																																																																																																																										Eq
																																																																																																																																											Var m_shape
																																																																																																																																											Int:2
																																																																																																																																										Put
																																																																																																																																											Var sconst
																																																																																																																																											Int:3
																																																																																																																																											App
																																																																																																																																												Var veciprod2
																																																																																																																																												App
																																																																																																																																													Var o_param_abc
																																																																																																																																													Var obj
																																																																																																																																												Get
																																																																																																																																													Var sconst
																																																																																																																																													Int:0
																																																																																																																																												Get
																																																																																																																																													Var sconst
																																																																																																																																													Int:1
																																																																																																																																												Get
																																																																																																																																													Var sconst
																																																																																																																																													Int:2
																																																																																																																																										If
																																																																																																																																											Not
																																																																																																																																												LE
																																																																																																																																													Var m_shape
																																																																																																																																													Int:2
																																																																																																																																											Let cc0
																																																																																																																																												App
																																																																																																																																													Var quadratic
																																																																																																																																													Var obj
																																																																																																																																													Get
																																																																																																																																														Var sconst
																																																																																																																																														Int:0
																																																																																																																																													Get
																																																																																																																																														Var sconst
																																																																																																																																														Int:1
																																																																																																																																													Get
																																																																																																																																														Var sconst
																																																																																																																																														Int:2
																																																																																																																																												Put
																																																																																																																																													Var sconst
																																																																																																																																													Int:3
																																																																																																																																													If
																																																																																																																																														Eq
																																																																																																																																															Var m_shape
																																																																																																																																															Int:3
																																																																																																																																														FSub
																																																																																																																																															Var cc0
																																																																																																																																															Float:1.000000
																																																																																																																																														Var cc0
																																																																																																																																											Unit
																																																																																																																																									App
																																																																																																																																										Var setup_startp_constants
																																																																																																																																										Var p
																																																																																																																																										Sub
																																																																																																																																											Var index
																																																																																																																																											Int:1
																																																																																																																																		Unit
																																																																																																																																	LetRec setup_startpp 
																																																																																																																																		Let Tu105
																																																																																																																																			App
																																																																																																																																				Var veccpy
																																																																																																																																				Var startp_fast
																																																																																																																																				Var p
																																																																																																																																			App
																																																																																																																																				Var setup_startp_constants
																																																																																																																																				Var p
																																																																																																																																				Sub
																																																																																																																																					Get
																																																																																																																																						Var n_objects
																																																																																																																																						Int:0
																																																																																																																																					Int:1
																																																																																																																																		LetRec is_rect_outsidem p0 p1 p2 
																																																																																																																																			If
																																																																																																																																				If
																																																																																																																																					App
																																																																																																																																						Var fless
																																																																																																																																						App
																																																																																																																																							Var fabs
																																																																																																																																							Var p0
																																																																																																																																						App
																																																																																																																																							Var o_param_a
																																																																																																																																							Var m
																																																																																																																																					If
																																																																																																																																						App
																																																																																																																																							Var fless
																																																																																																																																							App
																																																																																																																																								Var fabs
																																																																																																																																								Var p1
																																																																																																																																							App
																																																																																																																																								Var o_param_b
																																																																																																																																								Var m
																																																																																																																																						App
																																																																																																																																							Var fless
																																																																																																																																							App
																																																																																																																																								Var fabs
																																																																																																																																								Var p2
																																																																																																																																							App
																																																																																																																																								Var o_param_c
																																																																																																																																								Var m
																																																																																																																																						Bool:false
																																																																																																																																					Bool:false
																																																																																																																																				App
																																																																																																																																					Var o_isinvert
																																																																																																																																					Var m
																																																																																																																																				Not
																																																																																																																																					App
																																																																																																																																						Var o_isinvert
																																																																																																																																						Var m
																																																																																																																																			LetRec is_plane_outsidem p0 p1 p2 
																																																																																																																																				Let w
																																																																																																																																					App
																																																																																																																																						Var veciprod2
																																																																																																																																						App
																																																																																																																																							Var o_param_abc
																																																																																																																																							Var m
																																																																																																																																						Var p0
																																																																																																																																						Var p1
																																																																																																																																						Var p2
																																																																																																																																					Not
																																																																																																																																						App
																																																																																																																																							Var xor
																																																																																																																																							App
																																																																																																																																								Var o_isinvert
																																																																																																																																								Var m
																																																																																																																																							App
																																																																																																																																								Var fisneg
																																																																																																																																								Var w
																																																																																																																																				LetRec is_second_outsidem p0 p1 p2 
																																																																																																																																					Let w
																																																																																																																																						App
																																																																																																																																							Var quadratic
																																																																																																																																							Var m
																																																																																																																																							Var p0
																																																																																																																																							Var p1
																																																																																																																																							Var p2
																																																																																																																																						Let w2
																																																																																																																																							If
																																																																																																																																								Eq
																																																																																																																																									App
																																																																																																																																										Var o_form
																																																																																																																																										Var m
																																																																																																																																									Int:3
																																																																																																																																								FSub
																																																																																																																																									Var w
																																																																																																																																									Float:1.000000
																																																																																																																																								Var w
																																																																																																																																							Not
																																																																																																																																								App
																																																																																																																																									Var xor
																																																																																																																																									App
																																																																																																																																										Var o_isinvert
																																																																																																																																										Var m
																																																																																																																																									App
																																																																																																																																										Var fisneg
																																																																																																																																										Var w2
																																																																																																																																					LetRec is_outsidem q0 q1 q2 
																																																																																																																																						Let p0
																																																																																																																																							FSub
																																																																																																																																								Var q0
																																																																																																																																								App
																																																																																																																																									Var o_param_x
																																																																																																																																									Var m
																																																																																																																																							Let p1
																																																																																																																																								FSub
																																																																																																																																									Var q1
																																																																																																																																									App
																																																																																																																																										Var o_param_y
																																																																																																																																										Var m
																																																																																																																																								Let p2
																																																																																																																																									FSub
																																																																																																																																										Var q2
																																																																																																																																										App
																																																																																																																																											Var o_param_z
																																																																																																																																											Var m
																																																																																																																																									Let m_shape
																																																																																																																																										App
																																																																																																																																											Var o_form
																																																																																																																																											Var m
																																																																																																																																										If
																																																																																																																																											Eq
																																																																																																																																												Var m_shape
																																																																																																																																												Int:1
																																																																																																																																											App
																																																																																																																																												Var is_rect_outside
																																																																																																																																												Var m
																																																																																																																																												Var p0
																																																																																																																																												Var p1
																																																																																																																																												Var p2
																																																																																																																																											If
																																																																																																																																												Eq
																																																																																																																																													Var m_shape
																																																																																																																																													Int:2
																																																																																																																																												App
																																																																																																																																													Var is_plane_outside
																																																																																																																																													Var m
																																																																																																																																													Var p0
																																																																																																																																													Var p1
																																																																																																																																													Var p2
																																																																																																																																												App
																																																																																																																																													Var is_second_outside
																																																																																																																																													Var m
																																																																																																																																													Var p0
																																																																																																																																													Var p1
																																																																																																																																													Var p2
																																																																																																																																						LetRec check_all_insideofs iand q0 q1 q2 
																																																																																																																																							Let head
																																																																																																																																								Get
																																																																																																																																									Var iand
																																																																																																																																									Var ofs
																																																																																																																																								If
																																																																																																																																									Eq
																																																																																																																																										Var head
																																																																																																																																										Neg
																																																																																																																																											Int:1
																																																																																																																																									Bool:true
																																																																																																																																									If
																																																																																																																																										App
																																																																																																																																											Var is_outside
																																																																																																																																											Get
																																																																																																																																												Var objects
																																																																																																																																												Var head
																																																																																																																																											Var q0
																																																																																																																																											Var q1
																																																																																																																																											Var q2
																																																																																																																																										Bool:false
																																																																																																																																										App
																																																																																																																																											Var check_all_inside
																																																																																																																																											Add
																																																																																																																																												Var ofs
																																																																																																																																												Int:1
																																																																																																																																											Var iand
																																																																																																																																											Var q0
																																																																																																																																											Var q1
																																																																																																																																											Var q2
																																																																																																																																							LetRec shadow_check_and_groupiand_ofs and_group 
																																																																																																																																								If
																																																																																																																																									Eq
																																																																																																																																										Get
																																																																																																																																											Var and_group
																																																																																																																																											Var iand_ofs
																																																																																																																																										Neg
																																																																																																																																											Int:1
																																																																																																																																									Bool:false
																																																																																																																																									Let obj
																																																																																																																																										Get
																																																																																																																																											Var and_group
																																																																																																																																											Var iand_ofs
																																																																																																																																										Let t0
																																																																																																																																											App
																																																																																																																																												Var solver_fast
																																																																																																																																												Var obj
																																																																																																																																												Var light_dirvec
																																																																																																																																												Var intersection_point
																																																																																																																																											Let t0p
																																																																																																																																												Get
																																																																																																																																													Var solver_dist
																																																																																																																																													Int:0
																																																																																																																																												If
																																																																																																																																													If
																																																																																																																																														Not
																																																																																																																																															Eq
																																																																																																																																																Var t0
																																																																																																																																																Int:0
																																																																																																																																														App
																																																																																																																																															Var fless
																																																																																																																																															Var t0p
																																																																																																																																															Float:-0.200000
																																																																																																																																														Bool:false
																																																																																																																																													Let t
																																																																																																																																														FAdd
																																																																																																																																															Var t0p
																																																																																																																																															Float:0.010000
																																																																																																																																														Let q0
																																																																																																																																															FAdd
																																																																																																																																																FMul
																																																																																																																																																	Get
																																																																																																																																																		Var light
																																																																																																																																																		Int:0
																																																																																																																																																	Var t
																																																																																																																																																Get
																																																																																																																																																	Var intersection_point
																																																																																																																																																	Int:0
																																																																																																																																															Let q1
																																																																																																																																																FAdd
																																																																																																																																																	FMul
																																																																																																																																																		Get
																																																																																																																																																			Var light
																																																																																																																																																			Int:1
																																																																																																																																																		Var t
																																																																																																																																																	Get
																																																																																																																																																		Var intersection_point
																																																																																																																																																		Int:1
																																																																																																																																																Let q2
																																																																																																																																																	FAdd
																																																																																																																																																		FMul
																																																																																																																																																			Get
																																																																																																																																																				Var light
																																																																																																																																																				Int:2
																																																																																																																																																			Var t
																																																																																																																																																		Get
																																																																																																																																																			Var intersection_point
																																																																																																																																																			Int:2
																																																																																																																																																	If
																																																																																																																																																		App
																																																																																																																																																			Var check_all_inside
																																																																																																																																																			Int:0
																																																																																																																																																			Var and_group
																																																																																																																																																			Var q0
																																																																																																																																																			Var q1
																																																																																																																																																			Var q2
																																																																																																																																																		Bool:true
																																																																																																																																																		App
																																																																																																																																																			Var shadow_check_and_group
																																																																																																																																																			Add
																																																																																																																																																				Var iand_ofs
																																																																																																																																																				Int:1
																																																																																																																																																			Var and_group
																																																																																																																																													If
																																																																																																																																														App
																																																																																																																																															Var o_isinvert
																																																																																																																																															Get
																																																																																																																																																Var objects
																																																																																																																																																Var obj
																																																																																																																																														App
																																																																																																																																															Var shadow_check_and_group
																																																																																																																																															Add
																																																																																																																																																Var iand_ofs
																																																																																																																																																Int:1
																																																																																																																																															Var and_group
																																																																																																																																														Bool:false
																																																																																																																																								LetRec shadow_check_one_or_groupofs or_group 
																																																																																																																																									Let head
																																																																																																																																										Get
																																																																																																																																											Var or_group
																																																																																																																																											Var ofs
																																																																																																																																										If
																																																																																																																																											Eq
																																																																																																																																												Var head
																																																																																																																																												Neg
																																																																																																																																													Int:1
																																																																																																																																											Bool:false
																																																																																																																																											Let and_group
																																																																																																																																												Get
																																																																																																																																													Var and_net
																																																																																																																																													Var head
																																																																																																																																												Let shadow_p
																																																																																																																																													App
																																																																																																																																														Var shadow_check_and_group
																																																																																																																																														Int:0
																																																																																																																																														Var and_group
																																																																																																																																													If
																																																																																																																																														Var shadow_p
																																																																																																																																														Bool:true
																																																																																																																																														App
																																																																																																																																															Var shadow_check_one_or_group
																																																																																																																																															Add
																																																																																																																																																Var ofs
																																																																																																																																																Int:1
																																																																																																																																															Var or_group
																																																																																																																																									LetRec shadow_check_one_or_matrixofs or_matrix 
																																																																																																																																										Let head
																																																																																																																																											Get
																																																																																																																																												Var or_matrix
																																																																																																																																												Var ofs
																																																																																																																																											Let range_primitive
																																																																																																																																												Get
																																																																																																																																													Var head
																																																																																																																																													Int:0
																																																																																																																																												If
																																																																																																																																													Eq
																																																																																																																																														Var range_primitive
																																																																																																																																														Neg
																																																																																																																																															Int:1
																																																																																																																																													Bool:false
																																																																																																																																													If
																																																																																																																																														If
																																																																																																																																															Eq
																																																																																																																																																Var range_primitive
																																																																																																																																																Int:99
																																																																																																																																															Bool:true
																																																																																																																																															Let t
																																																																																																																																																App
																																																																																																																																																	Var solver_fast
																																																																																																																																																	Var range_primitive
																																																																																																																																																	Var light_dirvec
																																																																																																																																																	Var intersection_point
																																																																																																																																																If
																																																																																																																																																	Not
																																																																																																																																																		Eq
																																																																																																																																																			Var t
																																																																																																																																																			Int:0
																																																																																																																																																	If
																																																																																																																																																		App
																																																																																																																																																			Var fless
																																																																																																																																																			Get
																																																																																																																																																				Var solver_dist
																																																																																																																																																				Int:0
																																																																																																																																																			Float:-0.100000
																																																																																																																																																		If
																																																																																																																																																			App
																																																																																																																																																				Var shadow_check_one_or_group
																																																																																																																																																				Int:1
																																																																																																																																																				Var head
																																																																																																																																																			Bool:true
																																																																																																																																																			Bool:false
																																																																																																																																																		Bool:false
																																																																																																																																																	Bool:false
																																																																																																																																														If
																																																																																																																																															App
																																																																																																																																																Var shadow_check_one_or_group
																																																																																																																																																Int:1
																																																																																																																																																Var head
																																																																																																																																															Bool:true
																																																																																																																																															App
																																																																																																																																																Var shadow_check_one_or_matrix
																																																																																																																																																Add
																																																																																																																																																	Var ofs
																																																																																																																																																	Int:1
																																																																																																																																																Var or_matrix
																																																																																																																																														App
																																																																																																																																															Var shadow_check_one_or_matrix
																																																																																																																																															Add
																																																																																																																																																Var ofs
																																																																																																																																																Int:1
																																																																																																																																															Var or_matrix
																																																																																																																																										LetRec solve_each_elementiand_ofs and_group dirvec 
																																																																																																																																											Let iobj
																																																																																																																																												Get
																																																																																																																																													Var and_group
																																																																																																																																													Var iand_ofs
																																																																																																																																												If
																																																																																																																																													Eq
																																																																																																																																														Var iobj
																																																																																																																																														Neg
																																																																																																																																															Int:1
																																																																																																																																													Unit
																																																																																																																																													Let t0
																																																																																																																																														App
																																																																																																																																															Var solver
																																																																																																																																															Var iobj
																																																																																																																																															Var dirvec
																																																																																																																																															Var startp
																																																																																																																																														If
																																																																																																																																															Not
																																																																																																																																																Eq
																																																																																																																																																	Var t0
																																																																																																																																																	Int:0
																																																																																																																																															Let t0p
																																																																																																																																																Get
																																																																																																																																																	Var solver_dist
																																																																																																																																																	Int:0
																																																																																																																																																Let Tu109
																																																																																																																																																	If
																																																																																																																																																		App
																																																																																																																																																			Var fless
																																																																																																																																																			Float:0.000000
																																																																																																																																																			Var t0p
																																																																																																																																																		If
																																																																																																																																																			App
																																																																																																																																																				Var fless
																																																																																																																																																				Var t0p
																																																																																																																																																				Get
																																																																																																																																																					Var tmin
																																																																																																																																																					Int:0
																																																																																																																																																			Let t
																																																																																																																																																				FAdd
																																																																																																																																																					Var t0p
																																																																																																																																																					Float:0.010000
																																																																																																																																																				Let q0
																																																																																																																																																					FAdd
																																																																																																																																																						FMul
																																																																																																																																																							Get
																																																																																																																																																								Var dirvec
																																																																																																																																																								Int:0
																																																																																																																																																							Var t
																																																																																																																																																						Get
																																																																																																																																																							Var startp
																																																																																																																																																							Int:0
																																																																																																																																																					Let q1
																																																																																																																																																						FAdd
																																																																																																																																																							FMul
																																																																																																																																																								Get
																																																																																																																																																									Var dirvec
																																																																																																																																																									Int:1
																																																																																																																																																								Var t
																																																																																																																																																							Get
																																																																																																																																																								Var startp
																																																																																																																																																								Int:1
																																																																																																																																																						Let q2
																																																																																																																																																							FAdd
																																																																																																																																																								FMul
																																																																																																																																																									Get
																																																																																																																																																										Var dirvec
																																																																																																																																																										Int:2
																																																																																																																																																									Var t
																																																																																																																																																								Get
																																																																																																																																																									Var startp
																																																																																																																																																									Int:2
																																																																																																																																																							If
																																																																																																																																																								App
																																																																																																																																																									Var check_all_inside
																																																																																																																																																									Int:0
																																																																																																																																																									Var and_group
																																																																																																																																																									Var q0
																																																																																																																																																									Var q1
																																																																																																																																																									Var q2
																																																																																																																																																								Let Tu108
																																																																																																																																																									Put
																																																																																																																																																										Var tmin
																																																																																																																																																										Int:0
																																																																																																																																																										Var t
																																																																																																																																																									Let Tu107
																																																																																																																																																										App
																																																																																																																																																											Var vecset
																																																																																																																																																											Var intersection_point
																																																																																																																																																											Var q0
																																																																																																																																																											Var q1
																																																																																																																																																											Var q2
																																																																																																																																																										Let Tu106
																																																																																																																																																											Put
																																																																																																																																																												Var intersected_object_id
																																																																																																																																																												Int:0
																																																																																																																																																												Var iobj
																																																																																																																																																											Put
																																																																																																																																																												Var intsec_rectside
																																																																																																																																																												Int:0
																																																																																																																																																												Var t0
																																																																																																																																																								Unit
																																																																																																																																																			Unit
																																																																																																																																																		Unit
																																																																																																																																																	App
																																																																																																																																																		Var solve_each_element
																																																																																																																																																		Add
																																																																																																																																																			Var iand_ofs
																																																																																																																																																			Int:1
																																																																																																																																																		Var and_group
																																																																																																																																																		Var dirvec
																																																																																																																																															If
																																																																																																																																																App
																																																																																																																																																	Var o_isinvert
																																																																																																																																																	Get
																																																																																																																																																		Var objects
																																																																																																																																																		Var iobj
																																																																																																																																																App
																																																																																																																																																	Var solve_each_element
																																																																																																																																																	Add
																																																																																																																																																		Var iand_ofs
																																																																																																																																																		Int:1
																																																																																																																																																	Var and_group
																																																																																																																																																	Var dirvec
																																																																																																																																																Unit
																																																																																																																																											LetRec solve_one_or_networkofs or_group dirvec 
																																																																																																																																												Let head
																																																																																																																																													Get
																																																																																																																																														Var or_group
																																																																																																																																														Var ofs
																																																																																																																																													If
																																																																																																																																														Not
																																																																																																																																															Eq
																																																																																																																																																Var head
																																																																																																																																																Neg
																																																																																																																																																	Int:1
																																																																																																																																														Let and_group
																																																																																																																																															Get
																																																																																																																																																Var and_net
																																																																																																																																																Var head
																																																																																																																																															Let Tu110
																																																																																																																																																App
																																																																																																																																																	Var solve_each_element
																																																																																																																																																	Int:0
																																																																																																																																																	Var and_group
																																																																																																																																																	Var dirvec
																																																																																																																																																App
																																																																																																																																																	Var solve_one_or_network
																																																																																																																																																	Add
																																																																																																																																																		Var ofs
																																																																																																																																																		Int:1
																																																																																																																																																	Var or_group
																																																																																																																																																	Var dirvec
																																																																																																																																														Unit
																																																																																																																																												LetRec trace_or_matrixofs or_network dirvec 
																																																																																																																																													Let head
																																																																																																																																														Get
																																																																																																																																															Var or_network
																																																																																																																																															Var ofs
																																																																																																																																														Let range_primitive
																																																																																																																																															Get
																																																																																																																																																Var head
																																																																																																																																																Int:0
																																																																																																																																															If
																																																																																																																																																Eq
																																																																																																																																																	Var range_primitive
																																																																																																																																																	Neg
																																																																																																																																																		Int:1
																																																																																																																																																Unit
																																																																																																																																																Let Tu111
																																																																																																																																																	If
																																																																																																																																																		Eq
																																																																																																																																																			Var range_primitive
																																																																																																																																																			Int:99
																																																																																																																																																		App
																																																																																																																																																			Var solve_one_or_network
																																																																																																																																																			Int:1
																																																																																																																																																			Var head
																																																																																																																																																			Var dirvec
																																																																																																																																																		Let t
																																																																																																																																																			App
																																																																																																																																																				Var solver
																																																																																																																																																				Var range_primitive
																																																																																																																																																				Var dirvec
																																																																																																																																																				Var startp
																																																																																																																																																			If
																																																																																																																																																				Not
																																																																																																																																																					Eq
																																																																																																																																																						Var t
																																																																																																																																																						Int:0
																																																																																																																																																				Let tp
																																																																																																																																																					Get
																																																																																																																																																						Var solver_dist
																																																																																																																																																						Int:0
																																																																																																																																																					If
																																																																																																																																																						App
																																																																																																																																																							Var fless
																																																																																																																																																							Var tp
																																																																																																																																																							Get
																																																																																																																																																								Var tmin
																																																																																																																																																								Int:0
																																																																																																																																																						App
																																																																																																																																																							Var solve_one_or_network
																																																																																																																																																							Int:1
																																																																																																																																																							Var head
																																																																																																																																																							Var dirvec
																																																																																																																																																						Unit
																																																																																																																																																				Unit
																																																																																																																																																	App
																																																																																																																																																		Var trace_or_matrix
																																																																																																																																																		Add
																																																																																																																																																			Var ofs
																																																																																																																																																			Int:1
																																																																																																																																																		Var or_network
																																																																																																																																																		Var dirvec
																																																																																																																																													LetRec judge_intersectiondirvec 
																																																																																																																																														Let Tu113
																																																																																																																																															Put
																																																																																																																																																Var tmin
																																																																																																																																																Int:0
																																																																																																																																																Float:1000000000.000000
																																																																																																																																															Let Tu112
																																																																																																																																																App
																																																																																																																																																	Var trace_or_matrix
																																																																																																																																																	Int:0
																																																																																																																																																	Get
																																																																																																																																																		Var or_net
																																																																																																																																																		Int:0
																																																																																																																																																	Var dirvec
																																																																																																																																																Let t
																																																																																																																																																	Get
																																																																																																																																																		Var tmin
																																																																																																																																																		Int:0
																																																																																																																																																	If
																																																																																																																																																		App
																																																																																																																																																			Var fless
																																																																																																																																																			Float:-0.100000
																																																																																																																																																			Var t
																																																																																																																																																		App
																																																																																																																																																			Var fless
																																																																																																																																																			Var t
																																																																																																																																																			Float:100000000.000000
																																																																																																																																																		Bool:false
																																																																																																																																														LetRec solve_each_element_fastiand_ofs and_group dirvec 
																																																																																																																																															Let vec
																																																																																																																																																App
																																																																																																																																																	Var d_vec
																																																																																																																																																	Var dirvec
																																																																																																																																																Let iobj
																																																																																																																																																	Get
																																																																																																																																																		Var and_group
																																																																																																																																																		Var iand_ofs
																																																																																																																																																	If
																																																																																																																																																		Eq
																																																																																																																																																			Var iobj
																																																																																																																																																			Neg
																																																																																																																																																				Int:1
																																																																																																																																																		Unit
																																																																																																																																																		Let t0
																																																																																																																																																			App
																																																																																																																																																				Var solver_fast2
																																																																																																																																																				Var iobj
																																																																																																																																																				Var dirvec
																																																																																																																																																			If
																																																																																																																																																				Not
																																																																																																																																																					Eq
																																																																																																																																																						Var t0
																																																																																																																																																						Int:0
																																																																																																																																																				Let t0p
																																																																																																																																																					Get
																																																																																																																																																						Var solver_dist
																																																																																																																																																						Int:0
																																																																																																																																																					Let Tu117
																																																																																																																																																						If
																																																																																																																																																							App
																																																																																																																																																								Var fless
																																																																																																																																																								Float:0.000000
																																																																																																																																																								Var t0p
																																																																																																																																																							If
																																																																																																																																																								App
																																																																																																																																																									Var fless
																																																																																																																																																									Var t0p
																																																																																																																																																									Get
																																																																																																																																																										Var tmin
																																																																																																																																																										Int:0
																																																																																																																																																								Let t
																																																																																																																																																									FAdd
																																																																																																																																																										Var t0p
																																																																																																																																																										Float:0.010000
																																																																																																																																																									Let q0
																																																																																																																																																										FAdd
																																																																																																																																																											FMul
																																																																																																																																																												Get
																																																																																																																																																													Var vec
																																																																																																																																																													Int:0
																																																																																																																																																												Var t
																																																																																																																																																											Get
																																																																																																																																																												Var startp_fast
																																																																																																																																																												Int:0
																																																																																																																																																										Let q1
																																																																																																																																																											FAdd
																																																																																																																																																												FMul
																																																																																																																																																													Get
																																																																																																																																																														Var vec
																																																																																																																																																														Int:1
																																																																																																																																																													Var t
																																																																																																																																																												Get
																																																																																																																																																													Var startp_fast
																																																																																																																																																													Int:1
																																																																																																																																																											Let q2
																																																																																																																																																												FAdd
																																																																																																																																																													FMul
																																																																																																																																																														Get
																																																																																																																																																															Var vec
																																																																																																																																																															Int:2
																																																																																																																																																														Var t
																																																																																																																																																													Get
																																																																																																																																																														Var startp_fast
																																																																																																																																																														Int:2
																																																																																																																																																												If
																																																																																																																																																													App
																																																																																																																																																														Var check_all_inside
																																																																																																																																																														Int:0
																																																																																																																																																														Var and_group
																																																																																																																																																														Var q0
																																																																																																																																																														Var q1
																																																																																																																																																														Var q2
																																																																																																																																																													Let Tu116
																																																																																																																																																														Put
																																																																																																																																																															Var tmin
																																																																																																																																																															Int:0
																																																																																																																																																															Var t
																																																																																																																																																														Let Tu115
																																																																																																																																																															App
																																																																																																																																																																Var vecset
																																																																																																																																																																Var intersection_point
																																																																																																																																																																Var q0
																																																																																																																																																																Var q1
																																																																																																																																																																Var q2
																																																																																																																																																															Let Tu114
																																																																																																																																																																Put
																																																																																																																																																																	Var intersected_object_id
																																																																																																																																																																	Int:0
																																																																																																																																																																	Var iobj
																																																																																																																																																																Put
																																																																																																																																																																	Var intsec_rectside
																																																																																																																																																																	Int:0
																																																																																																																																																																	Var t0
																																																																																																																																																													Unit
																																																																																																																																																								Unit
																																																																																																																																																							Unit
																																																																																																																																																						App
																																																																																																																																																							Var solve_each_element_fast
																																																																																																																																																							Add
																																																																																																																																																								Var iand_ofs
																																																																																																																																																								Int:1
																																																																																																																																																							Var and_group
																																																																																																																																																							Var dirvec
																																																																																																																																																				If
																																																																																																																																																					App
																																																																																																																																																						Var o_isinvert
																																																																																																																																																						Get
																																																																																																																																																							Var objects
																																																																																																																																																							Var iobj
																																																																																																																																																					App
																																																																																																																																																						Var solve_each_element_fast
																																																																																																																																																						Add
																																																																																																																																																							Var iand_ofs
																																																																																																																																																							Int:1
																																																																																																																																																						Var and_group
																																																																																																																																																						Var dirvec
																																																																																																																																																					Unit
																																																																																																																																															LetRec solve_one_or_network_fastofs or_group dirvec 
																																																																																																																																																Let head
																																																																																																																																																	Get
																																																																																																																																																		Var or_group
																																																																																																																																																		Var ofs
																																																																																																																																																	If
																																																																																																																																																		Not
																																																																																																																																																			Eq
																																																																																																																																																				Var head
																																																																																																																																																				Neg
																																																																																																																																																					Int:1
																																																																																																																																																		Let and_group
																																																																																																																																																			Get
																																																																																																																																																				Var and_net
																																																																																																																																																				Var head
																																																																																																																																																			Let Tu118
																																																																																																																																																				App
																																																																																																																																																					Var solve_each_element_fast
																																																																																																																																																					Int:0
																																																																																																																																																					Var and_group
																																																																																																																																																					Var dirvec
																																																																																																																																																				App
																																																																																																																																																					Var solve_one_or_network_fast
																																																																																																																																																					Add
																																																																																																																																																						Var ofs
																																																																																																																																																						Int:1
																																																																																																																																																					Var or_group
																																																																																																																																																					Var dirvec
																																																																																																																																																		Unit
																																																																																																																																																LetRec trace_or_matrix_fastofs or_network dirvec 
																																																																																																																																																	Let head
																																																																																																																																																		Get
																																																																																																																																																			Var or_network
																																																																																																																																																			Var ofs
																																																																																																																																																		Let range_primitive
																																																																																																																																																			Get
																																																																																																																																																				Var head
																																																																																																																																																				Int:0
																																																																																																																																																			If
																																																																																																																																																				Eq
																																																																																																																																																					Var range_primitive
																																																																																																																																																					Neg
																																																																																																																																																						Int:1
																																																																																																																																																				Unit
																																																																																																																																																				Let Tu119
																																																																																																																																																					If
																																																																																																																																																						Eq
																																																																																																																																																							Var range_primitive
																																																																																																																																																							Int:99
																																																																																																																																																						App
																																																																																																																																																							Var solve_one_or_network_fast
																																																																																																																																																							Int:1
																																																																																																																																																							Var head
																																																																																																																																																							Var dirvec
																																																																																																																																																						Let t
																																																																																																																																																							App
																																																																																																																																																								Var solver_fast2
																																																																																																																																																								Var range_primitive
																																																																																																																																																								Var dirvec
																																																																																																																																																							If
																																																																																																																																																								Not
																																																																																																																																																									Eq
																																																																																																																																																										Var t
																																																																																																																																																										Int:0
																																																																																																																																																								Let tp
																																																																																																																																																									Get
																																																																																																																																																										Var solver_dist
																																																																																																																																																										Int:0
																																																																																																																																																									If
																																																																																																																																																										App
																																																																																																																																																											Var fless
																																																																																																																																																											Var tp
																																																																																																																																																											Get
																																																																																																																																																												Var tmin
																																																																																																																																																												Int:0
																																																																																																																																																										App
																																																																																																																																																											Var solve_one_or_network_fast
																																																																																																																																																											Int:1
																																																																																																																																																											Var head
																																																																																																																																																											Var dirvec
																																																																																																																																																										Unit
																																																																																																																																																								Unit
																																																																																																																																																					App
																																																																																																																																																						Var trace_or_matrix_fast
																																																																																																																																																						Add
																																																																																																																																																							Var ofs
																																																																																																																																																							Int:1
																																																																																																																																																						Var or_network
																																																																																																																																																						Var dirvec
																																																																																																																																																	LetRec judge_intersection_fastdirvec 
																																																																																																																																																		Let Tu121
																																																																																																																																																			Put
																																																																																																																																																				Var tmin
																																																																																																																																																				Int:0
																																																																																																																																																				Float:1000000000.000000
																																																																																																																																																			Let Tu120
																																																																																																																																																				App
																																																																																																																																																					Var trace_or_matrix_fast
																																																																																																																																																					Int:0
																																																																																																																																																					Get
																																																																																																																																																						Var or_net
																																																																																																																																																						Int:0
																																																																																																																																																					Var dirvec
																																																																																																																																																				Let t
																																																																																																																																																					Get
																																																																																																																																																						Var tmin
																																																																																																																																																						Int:0
																																																																																																																																																					If
																																																																																																																																																						App
																																																																																																																																																							Var fless
																																																																																																																																																							Float:-0.100000
																																																																																																																																																							Var t
																																																																																																																																																						App
																																																																																																																																																							Var fless
																																																																																																																																																							Var t
																																																																																																																																																							Float:100000000.000000
																																																																																																																																																						Bool:false
																																																																																																																																																		LetRec get_nvector_rectdirvec 
																																																																																																																																																			Let rectside
																																																																																																																																																				Get
																																																																																																																																																					Var intsec_rectside
																																																																																																																																																					Int:0
																																																																																																																																																				Let Tu122
																																																																																																																																																					App
																																																																																																																																																						Var vecbzero
																																																																																																																																																						Var nvector
																																																																																																																																																					Put
																																																																																																																																																						Var nvector
																																																																																																																																																						Sub
																																																																																																																																																							Var rectside
																																																																																																																																																							Int:1
																																																																																																																																																						App
																																																																																																																																																							Var fneg
																																																																																																																																																							App
																																																																																																																																																								Var sgn
																																																																																																																																																								Get
																																																																																																																																																									Var dirvec
																																																																																																																																																									Sub
																																																																																																																																																										Var rectside
																																																																																																																																																										Int:1
																																																																																																																																																			LetRec get_nvector_planem 
																																																																																																																																																				Let Tu124
																																																																																																																																																					Put
																																																																																																																																																						Var nvector
																																																																																																																																																						Int:0
																																																																																																																																																						App
																																																																																																																																																							Var fneg
																																																																																																																																																							App
																																																																																																																																																								Var o_param_a
																																																																																																																																																								Var m
																																																																																																																																																					Let Tu123
																																																																																																																																																						Put
																																																																																																																																																							Var nvector
																																																																																																																																																							Int:1
																																																																																																																																																							App
																																																																																																																																																								Var fneg
																																																																																																																																																								App
																																																																																																																																																									Var o_param_b
																																																																																																																																																									Var m
																																																																																																																																																						Put
																																																																																																																																																							Var nvector
																																																																																																																																																							Int:2
																																																																																																																																																							App
																																																																																																																																																								Var fneg
																																																																																																																																																								App
																																																																																																																																																									Var o_param_c
																																																																																																																																																									Var m
																																																																																																																																																				LetRec get_nvector_secondm 
																																																																																																																																																					Let p0
																																																																																																																																																						FSub
																																																																																																																																																							Get
																																																																																																																																																								Var intersection_point
																																																																																																																																																								Int:0
																																																																																																																																																							App
																																																																																																																																																								Var o_param_x
																																																																																																																																																								Var m
																																																																																																																																																						Let p1
																																																																																																																																																							FSub
																																																																																																																																																								Get
																																																																																																																																																									Var intersection_point
																																																																																																																																																									Int:1
																																																																																																																																																								App
																																																																																																																																																									Var o_param_y
																																																																																																																																																									Var m
																																																																																																																																																							Let p2
																																																																																																																																																								FSub
																																																																																																																																																									Get
																																																																																																																																																										Var intersection_point
																																																																																																																																																										Int:2
																																																																																																																																																									App
																																																																																																																																																										Var o_param_z
																																																																																																																																																										Var m
																																																																																																																																																								Let d0
																																																																																																																																																									FMul
																																																																																																																																																										Var p0
																																																																																																																																																										App
																																																																																																																																																											Var o_param_a
																																																																																																																																																											Var m
																																																																																																																																																									Let d1
																																																																																																																																																										FMul
																																																																																																																																																											Var p1
																																																																																																																																																											App
																																																																																																																																																												Var o_param_b
																																																																																																																																																												Var m
																																																																																																																																																										Let d2
																																																																																																																																																											FMul
																																																																																																																																																												Var p2
																																																																																																																																																												App
																																																																																																																																																													Var o_param_c
																																																																																																																																																													Var m
																																																																																																																																																											Let Tu129
																																																																																																																																																												If
																																																																																																																																																													Eq
																																																																																																																																																														App
																																																																																																																																																															Var o_isrot
																																																																																																																																																															Var m
																																																																																																																																																														Int:0
																																																																																																																																																													Let Tu126
																																																																																																																																																														Put
																																																																																																																																																															Var nvector
																																																																																																																																																															Int:0
																																																																																																																																																															Var d0
																																																																																																																																																														Let Tu125
																																																																																																																																																															Put
																																																																																																																																																																Var nvector
																																																																																																																																																																Int:1
																																																																																																																																																																Var d1
																																																																																																																																																															Put
																																																																																																																																																																Var nvector
																																																																																																																																																																Int:2
																																																																																																																																																																Var d2
																																																																																																																																																													Let Tu128
																																																																																																																																																														Put
																																																																																																																																																															Var nvector
																																																																																																																																																															Int:0
																																																																																																																																																															FAdd
																																																																																																																																																																Var d0
																																																																																																																																																																App
																																																																																																																																																																	Var fhalf
																																																																																																																																																																	FAdd
																																																																																																																																																																		FMul
																																																																																																																																																																			Var p1
																																																																																																																																																																			App
																																																																																																																																																																				Var o_param_r3
																																																																																																																																																																				Var m
																																																																																																																																																																		FMul
																																																																																																																																																																			Var p2
																																																																																																																																																																			App
																																																																																																																																																																				Var o_param_r2
																																																																																																																																																																				Var m
																																																																																																																																																														Let Tu127
																																																																																																																																																															Put
																																																																																																																																																																Var nvector
																																																																																																																																																																Int:1
																																																																																																																																																																FAdd
																																																																																																																																																																	Var d1
																																																																																																																																																																	App
																																																																																																																																																																		Var fhalf
																																																																																																																																																																		FAdd
																																																																																																																																																																			FMul
																																																																																																																																																																				Var p0
																																																																																																																																																																				App
																																																																																																																																																																					Var o_param_r3
																																																																																																																																																																					Var m
																																																																																																																																																																			FMul
																																																																																																																																																																				Var p2
																																																																																																																																																																				App
																																																																																																																																																																					Var o_param_r1
																																																																																																																																																																					Var m
																																																																																																																																																															Put
																																																																																																																																																																Var nvector
																																																																																																																																																																Int:2
																																																																																																																																																																FAdd
																																																																																																																																																																	Var d2
																																																																																																																																																																	App
																																																																																																																																																																		Var fhalf
																																																																																																																																																																		FAdd
																																																																																																																																																																			FMul
																																																																																																																																																																				Var p0
																																																																																																																																																																				App
																																																																																																																																																																					Var o_param_r2
																																																																																																																																																																					Var m
																																																																																																																																																																			FMul
																																																																																																																																																																				Var p1
																																																																																																																																																																				App
																																																																																																																																																																					Var o_param_r1
																																																																																																																																																																					Var m
																																																																																																																																																												App
																																																																																																																																																													Var vecunit_sgn
																																																																																																																																																													Var nvector
																																																																																																																																																													App
																																																																																																																																																														Var o_isinvert
																																																																																																																																																														Var m
																																																																																																																																																					LetRec get_nvectorm dirvec 
																																																																																																																																																						Let m_shape
																																																																																																																																																							App
																																																																																																																																																								Var o_form
																																																																																																																																																								Var m
																																																																																																																																																							If
																																																																																																																																																								Eq
																																																																																																																																																									Var m_shape
																																																																																																																																																									Int:1
																																																																																																																																																								App
																																																																																																																																																									Var get_nvector_rect
																																																																																																																																																									Var dirvec
																																																																																																																																																								If
																																																																																																																																																									Eq
																																																																																																																																																										Var m_shape
																																																																																																																																																										Int:2
																																																																																																																																																									App
																																																																																																																																																										Var get_nvector_plane
																																																																																																																																																										Var m
																																																																																																																																																									App
																																																																																																																																																										Var get_nvector_second
																																																																																																																																																										Var m
																																																																																																																																																						LetRec utexturem p 
																																																																																																																																																							Let m_tex
																																																																																																																																																								App
																																																																																																																																																									Var o_texturetype
																																																																																																																																																									Var m
																																																																																																																																																								Let Tu134
																																																																																																																																																									Put
																																																																																																																																																										Var texture_color
																																																																																																																																																										Int:0
																																																																																																																																																										App
																																																																																																																																																											Var o_color_red
																																																																																																																																																											Var m
																																																																																																																																																									Let Tu133
																																																																																																																																																										Put
																																																																																																																																																											Var texture_color
																																																																																																																																																											Int:1
																																																																																																																																																											App
																																																																																																																																																												Var o_color_green
																																																																																																																																																												Var m
																																																																																																																																																										Let Tu132
																																																																																																																																																											Put
																																																																																																																																																												Var texture_color
																																																																																																																																																												Int:2
																																																																																																																																																												App
																																																																																																																																																													Var o_color_blue
																																																																																																																																																													Var m
																																																																																																																																																											If
																																																																																																																																																												Eq
																																																																																																																																																													Var m_tex
																																																																																																																																																													Int:1
																																																																																																																																																												Let w1
																																																																																																																																																													FSub
																																																																																																																																																														Get
																																																																																																																																																															Var p
																																																																																																																																																															Int:0
																																																																																																																																																														App
																																																																																																																																																															Var o_param_x
																																																																																																																																																															Var m
																																																																																																																																																													Let flag1
																																																																																																																																																														Let d1
																																																																																																																																																															FMul
																																																																																																																																																																App
																																																																																																																																																																	Var floor
																																																																																																																																																																	FMul
																																																																																																																																																																		Var w1
																																																																																																																																																																		Float:0.050000
																																																																																																																																																																Float:20.000000
																																																																																																																																																															App
																																																																																																																																																																Var fless
																																																																																																																																																																FSub
																																																																																																																																																																	Var w1
																																																																																																																																																																	Var d1
																																																																																																																																																																Float:10.000000
																																																																																																																																																														Let w3
																																																																																																																																																															FSub
																																																																																																																																																																Get
																																																																																																																																																																	Var p
																																																																																																																																																																	Int:2
																																																																																																																																																																App
																																																																																																																																																																	Var o_param_z
																																																																																																																																																																	Var m
																																																																																																																																																															Let flag2
																																																																																																																																																																Let d2
																																																																																																																																																																	FMul
																																																																																																																																																																		App
																																																																																																																																																																			Var floor
																																																																																																																																																																			FMul
																																																																																																																																																																				Var w3
																																																																																																																																																																				Float:0.050000
																																																																																																																																																																		Float:20.000000
																																																																																																																																																																	App
																																																																																																																																																																		Var fless
																																																																																																																																																																		FSub
																																																																																																																																																																			Var w3
																																																																																																																																																																			Var d2
																																																																																																																																																																		Float:10.000000
																																																																																																																																																																Put
																																																																																																																																																																	Var texture_color
																																																																																																																																																																	Int:1
																																																																																																																																																																	If
																																																																																																																																																																		Var flag1
																																																																																																																																																																		If
																																																																																																																																																																			Var flag2
																																																																																																																																																																			Float:255.000000
																																																																																																																																																																			Float:0.000000
																																																																																																																																																																		If
																																																																																																																																																																			Var flag2
																																																																																																																																																																			Float:0.000000
																																																																																																																																																																			Float:255.000000
																																																																																																																																																												If
																																																																																																																																																													Eq
																																																																																																																																																														Var m_tex
																																																																																																																																																														Int:2
																																																																																																																																																													Let w2
																																																																																																																																																														App
																																																																																																																																																															Var fsqr
																																																																																																																																																															App
																																																																																																																																																																Var sin
																																																																																																																																																																FMul
																																																																																																																																																																	Get
																																																																																																																																																																		Var p
																																																																																																																																																																		Int:1
																																																																																																																																																																	Float:0.250000
																																																																																																																																																														Let Tu130
																																																																																																																																																															Put
																																																																																																																																																																Var texture_color
																																																																																																																																																																Int:0
																																																																																																																																																																FMul
																																																																																																																																																																	Float:255.000000
																																																																																																																																																																	Var w2
																																																																																																																																																															Put
																																																																																																																																																																Var texture_color
																																																																																																																																																																Int:1
																																																																																																																																																																FMul
																																																																																																																																																																	Float:255.000000
																																																																																																																																																																	FSub
																																																																																																																																																																		Float:1.000000
																																																																																																																																																																		Var w2
																																																																																																																																																													If
																																																																																																																																																														Eq
																																																																																																																																																															Var m_tex
																																																																																																																																																															Int:3
																																																																																																																																																														Let w1
																																																																																																																																																															FSub
																																																																																																																																																																Get
																																																																																																																																																																	Var p
																																																																																																																																																																	Int:0
																																																																																																																																																																App
																																																																																																																																																																	Var o_param_x
																																																																																																																																																																	Var m
																																																																																																																																																															Let w3
																																																																																																																																																																FSub
																																																																																																																																																																	Get
																																																																																																																																																																		Var p
																																																																																																																																																																		Int:2
																																																																																																																																																																	App
																																																																																																																																																																		Var o_param_z
																																																																																																																																																																		Var m
																																																																																																																																																																Let w2
																																																																																																																																																																	FDiv
																																																																																																																																																																		App
																																																																																																																																																																			Var sqrt
																																																																																																																																																																			FAdd
																																																																																																																																																																				App
																																																																																																																																																																					Var fsqr
																																																																																																																																																																					Var w1
																																																																																																																																																																				App
																																																																																																																																																																					Var fsqr
																																																																																																																																																																					Var w3
																																																																																																																																																																		Float:10.000000
																																																																																																																																																																	Let w4
																																																																																																																																																																		FMul
																																																																																																																																																																			FSub
																																																																																																																																																																				Var w2
																																																																																																																																																																				App
																																																																																																																																																																					Var floor
																																																																																																																																																																					Var w2
																																																																																																																																																																			Float:3.141593
																																																																																																																																																																		Let cws
																																																																																																																																																																			App
																																																																																																																																																																				Var fsqr
																																																																																																																																																																				App
																																																																																																																																																																					Var cos
																																																																																																																																																																					Var w4
																																																																																																																																																																			Let Tu131
																																																																																																																																																																				Put
																																																																																																																																																																					Var texture_color
																																																																																																																																																																					Int:1
																																																																																																																																																																					FMul
																																																																																																																																																																						Var cws
																																																																																																																																																																						Float:255.000000
																																																																																																																																																																				Put
																																																																																																																																																																					Var texture_color
																																																																																																																																																																					Int:2
																																																																																																																																																																					FMul
																																																																																																																																																																						FSub
																																																																																																																																																																							Float:1.000000
																																																																																																																																																																							Var cws
																																																																																																																																																																						Float:255.000000
																																																																																																																																																														If
																																																																																																																																																															Eq
																																																																																																																																																																Var m_tex
																																																																																																																																																																Int:4
																																																																																																																																																															Let w1
																																																																																																																																																																FMul
																																																																																																																																																																	FSub
																																																																																																																																																																		Get
																																																																																																																																																																			Var p
																																																																																																																																																																			Int:0
																																																																																																																																																																		App
																																																																																																																																																																			Var o_param_x
																																																																																																																																																																			Var m
																																																																																																																																																																	App
																																																																																																																																																																		Var sqrt
																																																																																																																																																																		App
																																																																																																																																																																			Var o_param_a
																																																																																																																																																																			Var m
																																																																																																																																																																Let w3
																																																																																																																																																																	FMul
																																																																																																																																																																		FSub
																																																																																																																																																																			Get
																																																																																																																																																																				Var p
																																																																																																																																																																				Int:2
																																																																																																																																																																			App
																																																																																																																																																																				Var o_param_z
																																																																																																																																																																				Var m
																																																																																																																																																																		App
																																																																																																																																																																			Var sqrt
																																																																																																																																																																			App
																																																																																																																																																																				Var o_param_c
																																																																																																																																																																				Var m
																																																																																																																																																																	Let w4
																																																																																																																																																																		FAdd
																																																																																																																																																																			App
																																																																																																																																																																				Var fsqr
																																																																																																																																																																				Var w1
																																																																																																																																																																			App
																																																																																																																																																																				Var fsqr
																																																																																																																																																																				Var w3
																																																																																																																																																																		Let w7
																																																																																																																																																																			If
																																																																																																																																																																				App
																																																																																																																																																																					Var fless
																																																																																																																																																																					App
																																																																																																																																																																						Var fabs
																																																																																																																																																																						Var w1
																																																																																																																																																																					Float:0.000100
																																																																																																																																																																				Float:15.000000
																																																																																																																																																																				Let w5
																																																																																																																																																																					App
																																																																																																																																																																						Var fabs
																																																																																																																																																																						FDiv
																																																																																																																																																																							Var w3
																																																																																																																																																																							Var w1
																																																																																																																																																																					FDiv
																																																																																																																																																																						FMul
																																																																																																																																																																							App
																																																																																																																																																																								Var atan
																																																																																																																																																																								Var w5
																																																																																																																																																																							Float:30.000000
																																																																																																																																																																						Float:3.141593
																																																																																																																																																																			Let w9
																																																																																																																																																																				FSub
																																																																																																																																																																					Var w7
																																																																																																																																																																					App
																																																																																																																																																																						Var floor
																																																																																																																																																																						Var w7
																																																																																																																																																																				Let w2
																																																																																																																																																																					FMul
																																																																																																																																																																						FSub
																																																																																																																																																																							Get
																																																																																																																																																																								Var p
																																																																																																																																																																								Int:1
																																																																																																																																																																							App
																																																																																																																																																																								Var o_param_y
																																																																																																																																																																								Var m
																																																																																																																																																																						App
																																																																																																																																																																							Var sqrt
																																																																																																																																																																							App
																																																																																																																																																																								Var o_param_b
																																																																																																																																																																								Var m
																																																																																																																																																																					Let w8
																																																																																																																																																																						If
																																																																																																																																																																							App
																																																																																																																																																																								Var fless
																																																																																																																																																																								App
																																																																																																																																																																									Var fabs
																																																																																																																																																																									Var w4
																																																																																																																																																																								Float:0.000100
																																																																																																																																																																							Float:15.000000
																																																																																																																																																																							Let w6
																																																																																																																																																																								App
																																																																																																																																																																									Var fabs
																																																																																																																																																																									FDiv
																																																																																																																																																																										Var w2
																																																																																																																																																																										Var w4
																																																																																																																																																																								FDiv
																																																																																																																																																																									FMul
																																																																																																																																																																										App
																																																																																																																																																																											Var atan
																																																																																																																																																																											Var w6
																																																																																																																																																																										Float:30.000000
																																																																																																																																																																									Float:3.141593
																																																																																																																																																																						Let w10
																																																																																																																																																																							FSub
																																																																																																																																																																								Var w8
																																																																																																																																																																								App
																																																																																																																																																																									Var floor
																																																																																																																																																																									Var w8
																																																																																																																																																																							Let w11
																																																																																																																																																																								FSub
																																																																																																																																																																									FSub
																																																																																																																																																																										Float:0.150000
																																																																																																																																																																										App
																																																																																																																																																																											Var fsqr
																																																																																																																																																																											FSub
																																																																																																																																																																												Float:0.500000
																																																																																																																																																																												Var w9
																																																																																																																																																																									App
																																																																																																																																																																										Var fsqr
																																																																																																																																																																										FSub
																																																																																																																																																																											Float:0.500000
																																																																																																																																																																											Var w10
																																																																																																																																																																								Let w12
																																																																																																																																																																									If
																																																																																																																																																																										App
																																																																																																																																																																											Var fisneg
																																																																																																																																																																											Var w11
																																																																																																																																																																										Float:0.000000
																																																																																																																																																																										Var w11
																																																																																																																																																																									Put
																																																																																																																																																																										Var texture_color
																																																																																																																																																																										Int:2
																																																																																																																																																																										FDiv
																																																																																																																																																																											FMul
																																																																																																																																																																												Float:255.000000
																																																																																																																																																																												Var w12
																																																																																																																																																																											Float:0.300000
																																																																																																																																																															Unit
																																																																																																																																																							LetRec add_lightbright hilight hilight_scale 
																																																																																																																																																								Let Tu137
																																																																																																																																																									If
																																																																																																																																																										App
																																																																																																																																																											Var fispos
																																																																																																																																																											Var bright
																																																																																																																																																										App
																																																																																																																																																											Var vecaccum
																																																																																																																																																											Var rgb
																																																																																																																																																											Var bright
																																																																																																																																																											Var texture_color
																																																																																																																																																										Unit
																																																																																																																																																									If
																																																																																																																																																										App
																																																																																																																																																											Var fispos
																																																																																																																																																											Var hilight
																																																																																																																																																										Let ihl
																																																																																																																																																											FMul
																																																																																																																																																												App
																																																																																																																																																													Var fsqr
																																																																																																																																																													App
																																																																																																																																																														Var fsqr
																																																																																																																																																														Var hilight
																																																																																																																																																												Var hilight_scale
																																																																																																																																																											Let Tu136
																																																																																																																																																												Put
																																																																																																																																																													Var rgb
																																																																																																																																																													Int:0
																																																																																																																																																													FAdd
																																																																																																																																																														Get
																																																																																																																																																															Var rgb
																																																																																																																																																															Int:0
																																																																																																																																																														Var ihl
																																																																																																																																																												Let Tu135
																																																																																																																																																													Put
																																																																																																																																																														Var rgb
																																																																																																																																																														Int:1
																																																																																																																																																														FAdd
																																																																																																																																																															Get
																																																																																																																																																																Var rgb
																																																																																																																																																																Int:1
																																																																																																																																																															Var ihl
																																																																																																																																																													Put
																																																																																																																																																														Var rgb
																																																																																																																																																														Int:2
																																																																																																																																																														FAdd
																																																																																																																																																															Get
																																																																																																																																																																Var rgb
																																																																																																																																																																Int:2
																																																																																																																																																															Var ihl
																																																																																																																																																										Unit
																																																																																																																																																								LetRec trace_reflectionsindex diffuse hilight_scale dirvec 
																																																																																																																																																									If
																																																																																																																																																										LE
																																																																																																																																																											Int:0
																																																																																																																																																											Var index
																																																																																																																																																										Let rinfo
																																																																																																																																																											Get
																																																																																																																																																												Var reflections
																																																																																																																																																												Var index
																																																																																																																																																											Let dvec
																																																																																																																																																												App
																																																																																																																																																													Var r_dvec
																																																																																																																																																													Var rinfo
																																																																																																																																																												Let Tu138
																																																																																																																																																													If
																																																																																																																																																														App
																																																																																																																																																															Var judge_intersection_fast
																																																																																																																																																															Var dvec
																																																																																																																																																														Let surface_id
																																																																																																																																																															Add
																																																																																																																																																																Mul
																																																																																																																																																																	Get
																																																																																																																																																																		Var intersected_object_id
																																																																																																																																																																		Int:0
																																																																																																																																																																	Int:4
																																																																																																																																																																Get
																																																																																																																																																																	Var intsec_rectside
																																																																																																																																																																	Int:0
																																																																																																																																																															If
																																																																																																																																																																Eq
																																																																																																																																																																	Var surface_id
																																																																																																																																																																	App
																																																																																																																																																																		Var r_surface_id
																																																																																																																																																																		Var rinfo
																																																																																																																																																																If
																																																																																																																																																																	Not
																																																																																																																																																																		App
																																																																																																																																																																			Var shadow_check_one_or_matrix
																																																																																																																																																																			Int:0
																																																																																																																																																																			Get
																																																																																																																																																																				Var or_net
																																																																																																																																																																				Int:0
																																																																																																																																																																	Let p
																																																																																																																																																																		App
																																																																																																																																																																			Var veciprod
																																																																																																																																																																			Var nvector
																																																																																																																																																																			App
																																																																																																																																																																				Var d_vec
																																																																																																																																																																				Var dvec
																																																																																																																																																																		Let scale
																																																																																																																																																																			App
																																																																																																																																																																				Var r_bright
																																																																																																																																																																				Var rinfo
																																																																																																																																																																			Let bright
																																																																																																																																																																				FMul
																																																																																																																																																																					FMul
																																																																																																																																																																						Var scale
																																																																																																																																																																						Var diffuse
																																																																																																																																																																					Var p
																																																																																																																																																																				Let hilight
																																																																																																																																																																					FMul
																																																																																																																																																																						Var scale
																																																																																																																																																																						App
																																																																																																																																																																							Var veciprod
																																																																																																																																																																							Var dirvec
																																																																																																																																																																							App
																																																																																																																																																																								Var d_vec
																																																																																																																																																																								Var dvec
																																																																																																																																																																					App
																																																																																																																																																																						Var add_light
																																																																																																																																																																						Var bright
																																																																																																																																																																						Var hilight
																																																																																																																																																																						Var hilight_scale
																																																																																																																																																																	Unit
																																																																																																																																																																Unit
																																																																																																																																																														Unit
																																																																																																																																																													App
																																																																																																																																																														Var trace_reflections
																																																																																																																																																														Sub
																																																																																																																																																															Var index
																																																																																																																																																															Int:1
																																																																																																																																																														Var diffuse
																																																																																																																																																														Var hilight_scale
																																																																																																																																																														Var dirvec
																																																																																																																																																										Unit
																																																																																																																																																									LetRec trace_raynref energy dirvec pixel dist 
																																																																																																																																																										If
																																																																																																																																																											LE
																																																																																																																																																												Var nref
																																																																																																																																																												Int:4
																																																																																																																																																											Let surface_ids
																																																																																																																																																												App
																																																																																																																																																													Var p_surface_ids
																																																																																																																																																													Var pixel
																																																																																																																																																												If
																																																																																																																																																													App
																																																																																																																																																														Var judge_intersection
																																																																																																																																																														Var dirvec
																																																																																																																																																													Let obj_id
																																																																																																																																																														Get
																																																																																																																																																															Var intersected_object_id
																																																																																																																																																															Int:0
																																																																																																																																																														Let obj
																																																																																																																																																															Get
																																																																																																																																																																Var objects
																																																																																																																																																																Var obj_id
																																																																																																																																																															Let m_surface
																																																																																																																																																																App
																																																																																																																																																																	Var o_reflectiontype
																																																																																																																																																																	Var obj
																																																																																																																																																																Let diffuse
																																																																																																																																																																	FMul
																																																																																																																																																																		App
																																																																																																																																																																			Var o_diffuse
																																																																																																																																																																			Var obj
																																																																																																																																																																		Var energy
																																																																																																																																																																	Let Tu152
																																																																																																																																																																		App
																																																																																																																																																																			Var get_nvector
																																																																																																																																																																			Var obj
																																																																																																																																																																			Var dirvec
																																																																																																																																																																		Let Tu151
																																																																																																																																																																			App
																																																																																																																																																																				Var veccpy
																																																																																																																																																																				Var startp
																																																																																																																																																																				Var intersection_point
																																																																																																																																																																			Let Tu150
																																																																																																																																																																				App
																																																																																																																																																																					Var utexture
																																																																																																																																																																					Var obj
																																																																																																																																																																					Var intersection_point
																																																																																																																																																																				Let Tu149
																																																																																																																																																																					Put
																																																																																																																																																																						Var surface_ids
																																																																																																																																																																						Var nref
																																																																																																																																																																						Add
																																																																																																																																																																							Mul
																																																																																																																																																																								Var obj_id
																																																																																																																																																																								Int:4
																																																																																																																																																																							Get
																																																																																																																																																																								Var intsec_rectside
																																																																																																																																																																								Int:0
																																																																																																																																																																					Let intersection_points
																																																																																																																																																																						App
																																																																																																																																																																							Var p_intersection_points
																																																																																																																																																																							Var pixel
																																																																																																																																																																						Let Tu148
																																																																																																																																																																							App
																																																																																																																																																																								Var veccpy
																																																																																																																																																																								Get
																																																																																																																																																																									Var intersection_points
																																																																																																																																																																									Var nref
																																																																																																																																																																								Var intersection_point
																																																																																																																																																																							Let calc_diffuse
																																																																																																																																																																								App
																																																																																																																																																																									Var p_calc_diffuse
																																																																																																																																																																									Var pixel
																																																																																																																																																																								Let Tu147
																																																																																																																																																																									If
																																																																																																																																																																										App
																																																																																																																																																																											Var fless
																																																																																																																																																																											App
																																																																																																																																																																												Var o_diffuse
																																																																																																																																																																												Var obj
																																																																																																																																																																											Float:0.500000
																																																																																																																																																																										Put
																																																																																																																																																																											Var calc_diffuse
																																																																																																																																																																											Var nref
																																																																																																																																																																											Bool:false
																																																																																																																																																																										Let Tu141
																																																																																																																																																																											Put
																																																																																																																																																																												Var calc_diffuse
																																																																																																																																																																												Var nref
																																																																																																																																																																												Bool:true
																																																																																																																																																																											Let energya
																																																																																																																																																																												App
																																																																																																																																																																													Var p_energy
																																																																																																																																																																													Var pixel
																																																																																																																																																																												Let Tu140
																																																																																																																																																																													App
																																																																																																																																																																														Var veccpy
																																																																																																																																																																														Get
																																																																																																																																																																															Var energya
																																																																																																																																																																															Var nref
																																																																																																																																																																														Var texture_color
																																																																																																																																																																													Let Tu139
																																																																																																																																																																														App
																																																																																																																																																																															Var vecscale
																																																																																																																																																																															Get
																																																																																																																																																																																Var energya
																																																																																																																																																																																Var nref
																																																																																																																																																																															FMul
																																																																																																																																																																																FDiv
																																																																																																																																																																																	Float:1.000000
																																																																																																																																																																																	Float:256.000000
																																																																																																																																																																																Var diffuse
																																																																																																																																																																														Let nvectors
																																																																																																																																																																															App
																																																																																																																																																																																Var p_nvectors
																																																																																																																																																																																Var pixel
																																																																																																																																																																															App
																																																																																																																																																																																Var veccpy
																																																																																																																																																																																Get
																																																																																																																																																																																	Var nvectors
																																																																																																																																																																																	Var nref
																																																																																																																																																																																Var nvector
																																																																																																																																																																									Let w
																																																																																																																																																																										FMul
																																																																																																																																																																											Float:-2.000000
																																																																																																																																																																											App
																																																																																																																																																																												Var veciprod
																																																																																																																																																																												Var dirvec
																																																																																																																																																																												Var nvector
																																																																																																																																																																										Let Tu146
																																																																																																																																																																											App
																																																																																																																																																																												Var vecaccum
																																																																																																																																																																												Var dirvec
																																																																																																																																																																												Var w
																																																																																																																																																																												Var nvector
																																																																																																																																																																											Let hilight_scale
																																																																																																																																																																												FMul
																																																																																																																																																																													Var energy
																																																																																																																																																																													App
																																																																																																																																																																														Var o_hilight
																																																																																																																																																																														Var obj
																																																																																																																																																																												Let Tu145
																																																																																																																																																																													If
																																																																																																																																																																														Not
																																																																																																																																																																															App
																																																																																																																																																																																Var shadow_check_one_or_matrix
																																																																																																																																																																																Int:0
																																																																																																																																																																																Get
																																																																																																																																																																																	Var or_net
																																																																																																																																																																																	Int:0
																																																																																																																																																																														Let bright
																																																																																																																																																																															FMul
																																																																																																																																																																																App
																																																																																																																																																																																	Var fneg
																																																																																																																																																																																	App
																																																																																																																																																																																		Var veciprod
																																																																																																																																																																																		Var nvector
																																																																																																																																																																																		Var light
																																																																																																																																																																																Var diffuse
																																																																																																																																																																															Let hilight
																																																																																																																																																																																App
																																																																																																																																																																																	Var fneg
																																																																																																																																																																																	App
																																																																																																																																																																																		Var veciprod
																																																																																																																																																																																		Var dirvec
																																																																																																																																																																																		Var light
																																																																																																																																																																																App
																																																																																																																																																																																	Var add_light
																																																																																																																																																																																	Var bright
																																																																																																																																																																																	Var hilight
																																																																																																																																																																																	Var hilight_scale
																																																																																																																																																																														Unit
																																																																																																																																																																													Let Tu144
																																																																																																																																																																														App
																																																																																																																																																																															Var setup_startp
																																																																																																																																																																															Var intersection_point
																																																																																																																																																																														Let Tu143
																																																																																																																																																																															App
																																																																																																																																																																																Var trace_reflections
																																																																																																																																																																																Sub
																																																																																																																																																																																	Get
																																																																																																																																																																																		Var n_reflections
																																																																																																																																																																																		Int:0
																																																																																																																																																																																	Int:1
																																																																																																																																																																																Var diffuse
																																																																																																																																																																																Var hilight_scale
																																																																																																																																																																																Var dirvec
																																																																																																																																																																															If
																																																																																																																																																																																App
																																																																																																																																																																																	Var fless
																																																																																																																																																																																	Float:0.100000
																																																																																																																																																																																	Var energy
																																																																																																																																																																																Let Tu142
																																																																																																																																																																																	If
																																																																																																																																																																																		Not
																																																																																																																																																																																			LE
																																																																																																																																																																																				Int:4
																																																																																																																																																																																				Var nref
																																																																																																																																																																																		Put
																																																																																																																																																																																			Var surface_ids
																																																																																																																																																																																			Add
																																																																																																																																																																																				Var nref
																																																																																																																																																																																				Int:1
																																																																																																																																																																																			Neg
																																																																																																																																																																																				Int:1
																																																																																																																																																																																		Unit
																																																																																																																																																																																	If
																																																																																																																																																																																		Eq
																																																																																																																																																																																			Var m_surface
																																																																																																																																																																																			Int:2
																																																																																																																																																																																		Let energy2
																																																																																																																																																																																			FMul
																																																																																																																																																																																				Var energy
																																																																																																																																																																																				FSub
																																																																																																																																																																																					Float:1.000000
																																																																																																																																																																																					App
																																																																																																																																																																																						Var o_diffuse
																																																																																																																																																																																						Var obj
																																																																																																																																																																																			App
																																																																																																																																																																																				Var trace_ray
																																																																																																																																																																																				Add
																																																																																																																																																																																					Var nref
																																																																																																																																																																																					Int:1
																																																																																																																																																																																				Var energy2
																																																																																																																																																																																				Var dirvec
																																																																																																																																																																																				Var pixel
																																																																																																																																																																																				FAdd
																																																																																																																																																																																					Var dist
																																																																																																																																																																																					Get
																																																																																																																																																																																						Var tmin
																																																																																																																																																																																						Int:0
																																																																																																																																																																																		Unit
																																																																																																																																																																																Unit
																																																																																																																																																													Let Tu155
																																																																																																																																																														Put
																																																																																																																																																															Var surface_ids
																																																																																																																																																															Var nref
																																																																																																																																																															Neg
																																																																																																																																																																Int:1
																																																																																																																																																														If
																																																																																																																																																															Not
																																																																																																																																																																Eq
																																																																																																																																																																	Var nref
																																																																																																																																																																	Int:0
																																																																																																																																																															Let hl
																																																																																																																																																																App
																																																																																																																																																																	Var fneg
																																																																																																																																																																	App
																																																																																																																																																																		Var veciprod
																																																																																																																																																																		Var dirvec
																																																																																																																																																																		Var light
																																																																																																																																																																If
																																																																																																																																																																	App
																																																																																																																																																																		Var fispos
																																																																																																																																																																		Var hl
																																																																																																																																																																	Let ihl
																																																																																																																																																																		FMul
																																																																																																																																																																			FMul
																																																																																																																																																																				FMul
																																																																																																																																																																					App
																																																																																																																																																																						Var fsqr
																																																																																																																																																																						Var hl
																																																																																																																																																																					Var hl
																																																																																																																																																																				Var energy
																																																																																																																																																																			Get
																																																																																																																																																																				Var beam
																																																																																																																																																																				Int:0
																																																																																																																																																																		Let Tu154
																																																																																																																																																																			Put
																																																																																																																																																																				Var rgb
																																																																																																																																																																				Int:0
																																																																																																																																																																				FAdd
																																																																																																																																																																					Get
																																																																																																																																																																						Var rgb
																																																																																																																																																																						Int:0
																																																																																																																																																																					Var ihl
																																																																																																																																																																			Let Tu153
																																																																																																																																																																				Put
																																																																																																																																																																					Var rgb
																																																																																																																																																																					Int:1
																																																																																																																																																																					FAdd
																																																																																																																																																																						Get
																																																																																																																																																																							Var rgb
																																																																																																																																																																							Int:1
																																																																																																																																																																						Var ihl
																																																																																																																																																																				Put
																																																																																																																																																																					Var rgb
																																																																																																																																																																					Int:2
																																																																																																																																																																					FAdd
																																																																																																																																																																						Get
																																																																																																																																																																							Var rgb
																																																																																																																																																																							Int:2
																																																																																																																																																																						Var ihl
																																																																																																																																																																	Unit
																																																																																																																																																															Unit
																																																																																																																																																											Unit
																																																																																																																																																										LetRec trace_diffuse_raydirvec energy 
																																																																																																																																																											If
																																																																																																																																																												App
																																																																																																																																																													Var judge_intersection_fast
																																																																																																																																																													Var dirvec
																																																																																																																																																												Let obj
																																																																																																																																																													Get
																																																																																																																																																														Var objects
																																																																																																																																																														Get
																																																																																																																																																															Var intersected_object_id
																																																																																																																																																															Int:0
																																																																																																																																																													Let Tu157
																																																																																																																																																														App
																																																																																																																																																															Var get_nvector
																																																																																																																																																															Var obj
																																																																																																																																																															App
																																																																																																																																																																Var d_vec
																																																																																																																																																																Var dirvec
																																																																																																																																																														Let Tu156
																																																																																																																																																															App
																																																																																																																																																																Var utexture
																																																																																																																																																																Var obj
																																																																																																																																																																Var intersection_point
																																																																																																																																																															If
																																																																																																																																																																Not
																																																																																																																																																																	App
																																																																																																																																																																		Var shadow_check_one_or_matrix
																																																																																																																																																																		Int:0
																																																																																																																																																																		Get
																																																																																																																																																																			Var or_net
																																																																																																																																																																			Int:0
																																																																																																																																																																Let br
																																																																																																																																																																	App
																																																																																																																																																																		Var fneg
																																																																																																																																																																		App
																																																																																																																																																																			Var veciprod
																																																																																																																																																																			Var nvector
																																																																																																																																																																			Var light
																																																																																																																																																																	Let bright
																																																																																																																																																																		If
																																																																																																																																																																			App
																																																																																																																																																																				Var fispos
																																																																																																																																																																				Var br
																																																																																																																																																																			Var br
																																																																																																																																																																			Float:0.000000
																																																																																																																																																																		App
																																																																																																																																																																			Var vecaccum
																																																																																																																																																																			Var diffuse_ray
																																																																																																																																																																			FMul
																																																																																																																																																																				FMul
																																																																																																																																																																					Var energy
																																																																																																																																																																					Var bright
																																																																																																																																																																				App
																																																																																																																																																																					Var o_diffuse
																																																																																																																																																																					Var obj
																																																																																																																																																																			Var texture_color
																																																																																																																																																																Unit
																																																																																																																																																												Unit
																																																																																																																																																											LetRec iter_trace_diffuse_raysdirvec_group nvector org index 
																																																																																																																																																												If
																																																																																																																																																													LE
																																																																																																																																																														Int:0
																																																																																																																																																														Var index
																																																																																																																																																													Let p
																																																																																																																																																														App
																																																																																																																																																															Var veciprod
																																																																																																																																																															App
																																																																																																																																																																Var d_vec
																																																																																																																																																																Get
																																																																																																																																																																	Var dirvec_group
																																																																																																																																																																	Var index
																																																																																																																																																															Var nvector
																																																																																																																																																														Let Tu158
																																																																																																																																																															If
																																																																																																																																																																App
																																																																																																																																																																	Var fisneg
																																																																																																																																																																	Var p
																																																																																																																																																																App
																																																																																																																																																																	Var trace_diffuse_ray
																																																																																																																																																																	Get
																																																																																																																																																																		Var dirvec_group
																																																																																																																																																																		Add
																																																																																																																																																																			Var index
																																																																																																																																																																			Int:1
																																																																																																																																																																	FDiv
																																																																																																																																																																		Var p
																																																																																																																																																																		Float:-150.000000
																																																																																																																																																																App
																																																																																																																																																																	Var trace_diffuse_ray
																																																																																																																																																																	Get
																																																																																																																																																																		Var dirvec_group
																																																																																																																																																																		Var index
																																																																																																																																																																	FDiv
																																																																																																																																																																		Var p
																																																																																																																																																																		Float:150.000000
																																																																																																																																																															App
																																																																																																																																																																Var iter_trace_diffuse_rays
																																																																																																																																																																Var dirvec_group
																																																																																																																																																																Var nvector
																																																																																																																																																																Var org
																																																																																																																																																																Sub
																																																																																																																																																																	Var index
																																																																																																																																																																	Int:2
																																																																																																																																																													Unit
																																																																																																																																																												LetRec trace_diffuse_raysdirvec_group nvector org 
																																																																																																																																																													Let Tu159
																																																																																																																																																														App
																																																																																																																																																															Var setup_startp
																																																																																																																																																															Var org
																																																																																																																																																														App
																																																																																																																																																															Var iter_trace_diffuse_rays
																																																																																																																																																															Var dirvec_group
																																																																																																																																																															Var nvector
																																																																																																																																																															Var org
																																																																																																																																																															Int:118
																																																																																																																																																													LetRec trace_diffuse_ray_80percentgroup_id nvector org 
																																																																																																																																																														Let Tu163
																																																																																																																																																															If
																																																																																																																																																																Not
																																																																																																																																																																	Eq
																																																																																																																																																																		Var group_id
																																																																																																																																																																		Int:0
																																																																																																																																																																App
																																																																																																																																																																	Var trace_diffuse_rays
																																																																																																																																																																	Get
																																																																																																																																																																		Var dirvecs
																																																																																																																																																																		Int:0
																																																																																																																																																																	Var nvector
																																																																																																																																																																	Var org
																																																																																																																																																																Unit
																																																																																																																																																															Let Tu162
																																																																																																																																																																If
																																																																																																																																																																	Not
																																																																																																																																																																		Eq
																																																																																																																																																																			Var group_id
																																																																																																																																																																			Int:1
																																																																																																																																																																	App
																																																																																																																																																																		Var trace_diffuse_rays
																																																																																																																																																																		Get
																																																																																																																																																																			Var dirvecs
																																																																																																																																																																			Int:1
																																																																																																																																																																		Var nvector
																																																																																																																																																																		Var org
																																																																																																																																																																	Unit
																																																																																																																																																																Let Tu161
																																																																																																																																																																	If
																																																																																																																																																																		Not
																																																																																																																																																																			Eq
																																																																																																																																																																				Var group_id
																																																																																																																																																																				Int:2
																																																																																																																																																																		App
																																																																																																																																																																			Var trace_diffuse_rays
																																																																																																																																																																			Get
																																																																																																																																																																				Var dirvecs
																																																																																																																																																																				Int:2
																																																																																																																																																																			Var nvector
																																																																																																																																																																			Var org
																																																																																																																																																																		Unit
																																																																																																																																																																	Let Tu160
																																																																																																																																																																		If
																																																																																																																																																																			Not
																																																																																																																																																																				Eq
																																																																																																																																																																					Var group_id
																																																																																																																																																																					Int:3
																																																																																																																																																																			App
																																																																																																																																																																				Var trace_diffuse_rays
																																																																																																																																																																				Get
																																																																																																																																																																					Var dirvecs
																																																																																																																																																																					Int:3
																																																																																																																																																																				Var nvector
																																																																																																																																																																				Var org
																																																																																																																																																																			Unit
																																																																																																																																																																		If
																																																																																																																																																																			Not
																																																																																																																																																																				Eq
																																																																																																																																																																					Var group_id
																																																																																																																																																																					Int:4
																																																																																																																																																																			App
																																																																																																																																																																				Var trace_diffuse_rays
																																																																																																																																																																				Get
																																																																																																																																																																					Var dirvecs
																																																																																																																																																																					Int:4
																																																																																																																																																																				Var nvector
																																																																																																																																																																				Var org
																																																																																																																																																																			Unit
																																																																																																																																																														LetRec calc_diffuse_using_1pointpixel nref 
																																																																																																																																																															Let ray20p
																																																																																																																																																																App
																																																																																																																																																																	Var p_received_ray_20percent
																																																																																																																																																																	Var pixel
																																																																																																																																																																Let nvectors
																																																																																																																																																																	App
																																																																																																																																																																		Var p_nvectors
																																																																																																																																																																		Var pixel
																																																																																																																																																																	Let intersection_points
																																																																																																																																																																		App
																																																																																																																																																																			Var p_intersection_points
																																																																																																																																																																			Var pixel
																																																																																																																																																																		Let energya
																																																																																																																																																																			App
																																																																																																																																																																				Var p_energy
																																																																																																																																																																				Var pixel
																																																																																																																																																																			Let Tu165
																																																																																																																																																																				App
																																																																																																																																																																					Var veccpy
																																																																																																																																																																					Var diffuse_ray
																																																																																																																																																																					Get
																																																																																																																																																																						Var ray20p
																																																																																																																																																																						Var nref
																																																																																																																																																																				Let Tu164
																																																																																																																																																																					App
																																																																																																																																																																						Var trace_diffuse_ray_80percent
																																																																																																																																																																						App
																																																																																																																																																																							Var p_group_id
																																																																																																																																																																							Var pixel
																																																																																																																																																																						Get
																																																																																																																																																																							Var nvectors
																																																																																																																																																																							Var nref
																																																																																																																																																																						Get
																																																																																																																																																																							Var intersection_points
																																																																																																																																																																							Var nref
																																																																																																																																																																					App
																																																																																																																																																																						Var vecaccumv
																																																																																																																																																																						Var rgb
																																																																																																																																																																						Get
																																																																																																																																																																							Var energya
																																																																																																																																																																							Var nref
																																																																																																																																																																						Var diffuse_ray
																																																																																																																																																															LetRec calc_diffuse_using_5pointsx prev cur next nref 
																																																																																																																																																																Let r_up
																																																																																																																																																																	App
																																																																																																																																																																		Var p_received_ray_20percent
																																																																																																																																																																		Get
																																																																																																																																																																			Var prev
																																																																																																																																																																			Var x
																																																																																																																																																																	Let r_left
																																																																																																																																																																		App
																																																																																																																																																																			Var p_received_ray_20percent
																																																																																																																																																																			Get
																																																																																																																																																																				Var cur
																																																																																																																																																																				Sub
																																																																																																																																																																					Var x
																																																																																																																																																																					Int:1
																																																																																																																																																																		Let r_center
																																																																																																																																																																			App
																																																																																																																																																																				Var p_received_ray_20percent
																																																																																																																																																																				Get
																																																																																																																																																																					Var cur
																																																																																																																																																																					Var x
																																																																																																																																																																			Let r_right
																																																																																																																																																																				App
																																																																																																																																																																					Var p_received_ray_20percent
																																																																																																																																																																					Get
																																																																																																																																																																						Var cur
																																																																																																																																																																						Add
																																																																																																																																																																							Var x
																																																																																																																																																																							Int:1
																																																																																																																																																																				Let r_down
																																																																																																																																																																					App
																																																																																																																																																																						Var p_received_ray_20percent
																																																																																																																																																																						Get
																																																																																																																																																																							Var next
																																																																																																																																																																							Var x
																																																																																																																																																																					Let Tu170
																																																																																																																																																																						App
																																																																																																																																																																							Var veccpy
																																																																																																																																																																							Var diffuse_ray
																																																																																																																																																																							Get
																																																																																																																																																																								Var r_up
																																																																																																																																																																								Var nref
																																																																																																																																																																						Let Tu169
																																																																																																																																																																							App
																																																																																																																																																																								Var vecadd
																																																																																																																																																																								Var diffuse_ray
																																																																																																																																																																								Get
																																																																																																																																																																									Var r_left
																																																																																																																																																																									Var nref
																																																																																																																																																																							Let Tu168
																																																																																																																																																																								App
																																																																																																																																																																									Var vecadd
																																																																																																																																																																									Var diffuse_ray
																																																																																																																																																																									Get
																																																																																																																																																																										Var r_center
																																																																																																																																																																										Var nref
																																																																																																																																																																								Let Tu167
																																																																																																																																																																									App
																																																																																																																																																																										Var vecadd
																																																																																																																																																																										Var diffuse_ray
																																																																																																																																																																										Get
																																																																																																																																																																											Var r_right
																																																																																																																																																																											Var nref
																																																																																																																																																																									Let Tu166
																																																																																																																																																																										App
																																																																																																																																																																											Var vecadd
																																																																																																																																																																											Var diffuse_ray
																																																																																																																																																																											Get
																																																																																																																																																																												Var r_down
																																																																																																																																																																												Var nref
																																																																																																																																																																										Let energya
																																																																																																																																																																											App
																																																																																																																																																																												Var p_energy
																																																																																																																																																																												Get
																																																																																																																																																																													Var cur
																																																																																																																																																																													Var x
																																																																																																																																																																											App
																																																																																																																																																																												Var vecaccumv
																																																																																																																																																																												Var rgb
																																																																																																																																																																												Get
																																																																																																																																																																													Var energya
																																																																																																																																																																													Var nref
																																																																																																																																																																												Var diffuse_ray
																																																																																																																																																																LetRec do_without_neighborspixel nref 
																																																																																																																																																																	If
																																																																																																																																																																		LE
																																																																																																																																																																			Var nref
																																																																																																																																																																			Int:4
																																																																																																																																																																		Let surface_ids
																																																																																																																																																																			App
																																																																																																																																																																				Var p_surface_ids
																																																																																																																																																																				Var pixel
																																																																																																																																																																			If
																																																																																																																																																																				LE
																																																																																																																																																																					Int:0
																																																																																																																																																																					Get
																																																																																																																																																																						Var surface_ids
																																																																																																																																																																						Var nref
																																																																																																																																																																				Let calc_diffuse
																																																																																																																																																																					App
																																																																																																																																																																						Var p_calc_diffuse
																																																																																																																																																																						Var pixel
																																																																																																																																																																					Let Tu171
																																																																																																																																																																						If
																																																																																																																																																																							Get
																																																																																																																																																																								Var calc_diffuse
																																																																																																																																																																								Var nref
																																																																																																																																																																							App
																																																																																																																																																																								Var calc_diffuse_using_1point
																																																																																																																																																																								Var pixel
																																																																																																																																																																								Var nref
																																																																																																																																																																							Unit
																																																																																																																																																																						App
																																																																																																																																																																							Var do_without_neighbors
																																																																																																																																																																							Var pixel
																																																																																																																																																																							Add
																																																																																																																																																																								Var nref
																																																																																																																																																																								Int:1
																																																																																																																																																																				Unit
																																																																																																																																																																		Unit
																																																																																																																																																																	LetRec neighbors_existx y next 
																																																																																																																																																																		If
																																																																																																																																																																			Not
																																																																																																																																																																				LE
																																																																																																																																																																					Get
																																																																																																																																																																						Var image_size
																																																																																																																																																																						Int:1
																																																																																																																																																																					Add
																																																																																																																																																																						Var y
																																																																																																																																																																						Int:1
																																																																																																																																																																			If
																																																																																																																																																																				Not
																																																																																																																																																																					LE
																																																																																																																																																																						Var y
																																																																																																																																																																						Int:0
																																																																																																																																																																				If
																																																																																																																																																																					Not
																																																																																																																																																																						LE
																																																																																																																																																																							Get
																																																																																																																																																																								Var image_size
																																																																																																																																																																								Int:0
																																																																																																																																																																							Add
																																																																																																																																																																								Var x
																																																																																																																																																																								Int:1
																																																																																																																																																																					If
																																																																																																																																																																						Not
																																																																																																																																																																							LE
																																																																																																																																																																								Var x
																																																																																																																																																																								Int:0
																																																																																																																																																																						Bool:true
																																																																																																																																																																						Bool:false
																																																																																																																																																																					Bool:false
																																																																																																																																																																				Bool:false
																																																																																																																																																																			Bool:false
																																																																																																																																																																		LetRec get_surface_idpixel index 
																																																																																																																																																																			Let surface_ids
																																																																																																																																																																				App
																																																																																																																																																																					Var p_surface_ids
																																																																																																																																																																					Var pixel
																																																																																																																																																																				Get
																																																																																																																																																																					Var surface_ids
																																																																																																																																																																					Var index
																																																																																																																																																																			LetRec neighbors_are_availablex prev cur next nref 
																																																																																																																																																																				Let sid_center
																																																																																																																																																																					App
																																																																																																																																																																						Var get_surface_id
																																																																																																																																																																						Get
																																																																																																																																																																							Var cur
																																																																																																																																																																							Var x
																																																																																																																																																																						Var nref
																																																																																																																																																																					If
																																																																																																																																																																						Eq
																																																																																																																																																																							App
																																																																																																																																																																								Var get_surface_id
																																																																																																																																																																								Get
																																																																																																																																																																									Var prev
																																																																																																																																																																									Var x
																																																																																																																																																																								Var nref
																																																																																																																																																																							Var sid_center
																																																																																																																																																																						If
																																																																																																																																																																							Eq
																																																																																																																																																																								App
																																																																																																																																																																									Var get_surface_id
																																																																																																																																																																									Get
																																																																																																																																																																										Var next
																																																																																																																																																																										Var x
																																																																																																																																																																									Var nref
																																																																																																																																																																								Var sid_center
																																																																																																																																																																							If
																																																																																																																																																																								Eq
																																																																																																																																																																									App
																																																																																																																																																																										Var get_surface_id
																																																																																																																																																																										Get
																																																																																																																																																																											Var cur
																																																																																																																																																																											Sub
																																																																																																																																																																												Var x
																																																																																																																																																																												Int:1
																																																																																																																																																																										Var nref
																																																																																																																																																																									Var sid_center
																																																																																																																																																																								If
																																																																																																																																																																									Eq
																																																																																																																																																																										App
																																																																																																																																																																											Var get_surface_id
																																																																																																																																																																											Get
																																																																																																																																																																												Var cur
																																																																																																																																																																												Add
																																																																																																																																																																													Var x
																																																																																																																																																																													Int:1
																																																																																																																																																																											Var nref
																																																																																																																																																																										Var sid_center
																																																																																																																																																																									Bool:true
																																																																																																																																																																									Bool:false
																																																																																																																																																																								Bool:false
																																																																																																																																																																							Bool:false
																																																																																																																																																																						Bool:false
																																																																																																																																																																				LetRec try_exploit_neighborsx y prev cur next nref 
																																																																																																																																																																					Let pixel
																																																																																																																																																																						Get
																																																																																																																																																																							Var cur
																																																																																																																																																																							Var x
																																																																																																																																																																						If
																																																																																																																																																																							LE
																																																																																																																																																																								Var nref
																																																																																																																																																																								Int:4
																																																																																																																																																																							If
																																																																																																																																																																								LE
																																																																																																																																																																									Int:0
																																																																																																																																																																									App
																																																																																																																																																																										Var get_surface_id
																																																																																																																																																																										Var pixel
																																																																																																																																																																										Var nref
																																																																																																																																																																								If
																																																																																																																																																																									App
																																																																																																																																																																										Var neighbors_are_available
																																																																																																																																																																										Var x
																																																																																																																																																																										Var prev
																																																																																																																																																																										Var cur
																																																																																																																																																																										Var next
																																																																																																																																																																										Var nref
																																																																																																																																																																									Let calc_diffuse
																																																																																																																																																																										App
																																																																																																																																																																											Var p_calc_diffuse
																																																																																																																																																																											Var pixel
																																																																																																																																																																										Let Tu172
																																																																																																																																																																											If
																																																																																																																																																																												Get
																																																																																																																																																																													Var calc_diffuse
																																																																																																																																																																													Var nref
																																																																																																																																																																												App
																																																																																																																																																																													Var calc_diffuse_using_5points
																																																																																																																																																																													Var x
																																																																																																																																																																													Var prev
																																																																																																																																																																													Var cur
																																																																																																																																																																													Var next
																																																																																																																																																																													Var nref
																																																																																																																																																																												Unit
																																																																																																																																																																											App
																																																																																																																																																																												Var try_exploit_neighbors
																																																																																																																																																																												Var x
																																																																																																																																																																												Var y
																																																																																																																																																																												Var prev
																																																																																																																																																																												Var cur
																																																																																																																																																																												Var next
																																																																																																																																																																												Add
																																																																																																																																																																													Var nref
																																																																																																																																																																													Int:1
																																																																																																																																																																									App
																																																																																																																																																																										Var do_without_neighbors
																																																																																																																																																																										Get
																																																																																																																																																																											Var cur
																																																																																																																																																																											Var x
																																																																																																																																																																										Var nref
																																																																																																																																																																								Unit
																																																																																																																																																																							Unit
																																																																																																																																																																					LetRec write_ppm_headerTu173 
																																																																																																																																																																						Let Tu175
																																																																																																																																																																							App
																																																																																																																																																																								Var print_int
																																																																																																																																																																								Get
																																																																																																																																																																									Var image_size
																																																																																																																																																																									Int:0
																																																																																																																																																																							Let Tu174
																																																																																																																																																																								App
																																																																																																																																																																									Var print_int
																																																																																																																																																																									Get
																																																																																																																																																																										Var image_size
																																																																																																																																																																										Int:1
																																																																																																																																																																								App
																																																																																																																																																																									Var print_int
																																																																																																																																																																									Int:255
																																																																																																																																																																						LetRec write_rgb_elementx 
																																																																																																																																																																							Let ix
																																																																																																																																																																								App
																																																																																																																																																																									Var int_of_float
																																																																																																																																																																									Var x
																																																																																																																																																																								Let elem
																																																																																																																																																																									If
																																																																																																																																																																										Not
																																																																																																																																																																											LE
																																																																																																																																																																												Var ix
																																																																																																																																																																												Int:255
																																																																																																																																																																										Int:255
																																																																																																																																																																										If
																																																																																																																																																																											Not
																																																																																																																																																																												LE
																																																																																																																																																																													Int:0
																																																																																																																																																																													Var ix
																																																																																																																																																																											Int:0
																																																																																																																																																																											Var ix
																																																																																																																																																																									App
																																																																																																																																																																										Var print_int
																																																																																																																																																																										Var elem
																																																																																																																																																																							LetRec write_rgbTu176 
																																																																																																																																																																								Let Tu178
																																																																																																																																																																									App
																																																																																																																																																																										Var write_rgb_element
																																																																																																																																																																										Get
																																																																																																																																																																											Var rgb
																																																																																																																																																																											Int:0
																																																																																																																																																																									Let Tu177
																																																																																																																																																																										App
																																																																																																																																																																											Var write_rgb_element
																																																																																																																																																																											Get
																																																																																																																																																																												Var rgb
																																																																																																																																																																												Int:1
																																																																																																																																																																										App
																																																																																																																																																																											Var write_rgb_element
																																																																																																																																																																											Get
																																																																																																																																																																												Var rgb
																																																																																																																																																																												Int:2
																																																																																																																																																																								LetRec pretrace_diffuse_rayspixel nref 
																																																																																																																																																																									If
																																																																																																																																																																										LE
																																																																																																																																																																											Var nref
																																																																																																																																																																											Int:4
																																																																																																																																																																										Let sid
																																																																																																																																																																											App
																																																																																																																																																																												Var get_surface_id
																																																																																																																																																																												Var pixel
																																																																																																																																																																												Var nref
																																																																																																																																																																											If
																																																																																																																																																																												LE
																																																																																																																																																																													Int:0
																																																																																																																																																																													Var sid
																																																																																																																																																																												Let calc_diffuse
																																																																																																																																																																													App
																																																																																																																																																																														Var p_calc_diffuse
																																																																																																																																																																														Var pixel
																																																																																																																																																																													Let Tu181
																																																																																																																																																																														If
																																																																																																																																																																															Get
																																																																																																																																																																																Var calc_diffuse
																																																																																																																																																																																Var nref
																																																																																																																																																																															Let group_id
																																																																																																																																																																																App
																																																																																																																																																																																	Var p_group_id
																																																																																																																																																																																	Var pixel
																																																																																																																																																																																Let Tu180
																																																																																																																																																																																	App
																																																																																																																																																																																		Var vecbzero
																																																																																																																																																																																		Var diffuse_ray
																																																																																																																																																																																	Let nvectors
																																																																																																																																																																																		App
																																																																																																																																																																																			Var p_nvectors
																																																																																																																																																																																			Var pixel
																																																																																																																																																																																		Let intersection_points
																																																																																																																																																																																			App
																																																																																																																																																																																				Var p_intersection_points
																																																																																																																																																																																				Var pixel
																																																																																																																																																																																			Let Tu179
																																																																																																																																																																																				App
																																																																																																																																																																																					Var trace_diffuse_rays
																																																																																																																																																																																					Get
																																																																																																																																																																																						Var dirvecs
																																																																																																																																																																																						Var group_id
																																																																																																																																																																																					Get
																																																																																																																																																																																						Var nvectors
																																																																																																																																																																																						Var nref
																																																																																																																																																																																					Get
																																																																																																																																																																																						Var intersection_points
																																																																																																																																																																																						Var nref
																																																																																																																																																																																				Let ray20p
																																																																																																																																																																																					App
																																																																																																																																																																																						Var p_received_ray_20percent
																																																																																																																																																																																						Var pixel
																																																																																																																																																																																					App
																																																																																																																																																																																						Var veccpy
																																																																																																																																																																																						Get
																																																																																																																																																																																							Var ray20p
																																																																																																																																																																																							Var nref
																																																																																																																																																																																						Var diffuse_ray
																																																																																																																																																																															Unit
																																																																																																																																																																														App
																																																																																																																																																																															Var pretrace_diffuse_rays
																																																																																																																																																																															Var pixel
																																																																																																																																																																															Add
																																																																																																																																																																																Var nref
																																																																																																																																																																																Int:1
																																																																																																																																																																												Unit
																																																																																																																																																																										Unit
																																																																																																																																																																									LetRec pretrace_pixelsline x group_id lc0 lc1 lc2 
																																																																																																																																																																										If
																																																																																																																																																																											LE
																																																																																																																																																																												Int:0
																																																																																																																																																																												Var x
																																																																																																																																																																											Let xdisp
																																																																																																																																																																												FMul
																																																																																																																																																																													Get
																																																																																																																																																																														Var scan_pitch
																																																																																																																																																																														Int:0
																																																																																																																																																																													App
																																																																																																																																																																														Var float_of_int
																																																																																																																																																																														Sub
																																																																																																																																																																															Var x
																																																																																																																																																																															Get
																																																																																																																																																																																Var image_center
																																																																																																																																																																																Int:0
																																																																																																																																																																												Let Tu191
																																																																																																																																																																													Put
																																																																																																																																																																														Var ptrace_dirvec
																																																																																																																																																																														Int:0
																																																																																																																																																																														FAdd
																																																																																																																																																																															FMul
																																																																																																																																																																																Var xdisp
																																																																																																																																																																																Get
																																																																																																																																																																																	Var screenx_dir
																																																																																																																																																																																	Int:0
																																																																																																																																																																															Var lc0
																																																																																																																																																																													Let Tu190
																																																																																																																																																																														Put
																																																																																																																																																																															Var ptrace_dirvec
																																																																																																																																																																															Int:1
																																																																																																																																																																															FAdd
																																																																																																																																																																																FMul
																																																																																																																																																																																	Var xdisp
																																																																																																																																																																																	Get
																																																																																																																																																																																		Var screenx_dir
																																																																																																																																																																																		Int:1
																																																																																																																																																																																Var lc1
																																																																																																																																																																														Let Tu189
																																																																																																																																																																															Put
																																																																																																																																																																																Var ptrace_dirvec
																																																																																																																																																																																Int:2
																																																																																																																																																																																FAdd
																																																																																																																																																																																	FMul
																																																																																																																																																																																		Var xdisp
																																																																																																																																																																																		Get
																																																																																																																																																																																			Var screenx_dir
																																																																																																																																																																																			Int:2
																																																																																																																																																																																	Var lc2
																																																																																																																																																																															Let Tu188
																																																																																																																																																																																App
																																																																																																																																																																																	Var vecunit_sgn
																																																																																																																																																																																	Var ptrace_dirvec
																																																																																																																																																																																	Bool:false
																																																																																																																																																																																Let Tu187
																																																																																																																																																																																	App
																																																																																																																																																																																		Var vecbzero
																																																																																																																																																																																		Var rgb
																																																																																																																																																																																	Let Tu186
																																																																																																																																																																																		App
																																																																																																																																																																																			Var veccpy
																																																																																																																																																																																			Var startp
																																																																																																																																																																																			Var viewpoint
																																																																																																																																																																																		Let Tu185
																																																																																																																																																																																			App
																																																																																																																																																																																				Var trace_ray
																																																																																																																																																																																				Int:0
																																																																																																																																																																																				Float:1.000000
																																																																																																																																																																																				Var ptrace_dirvec
																																																																																																																																																																																				Get
																																																																																																																																																																																					Var line
																																																																																																																																																																																					Var x
																																																																																																																																																																																				Float:0.000000
																																																																																																																																																																																			Let Tu184
																																																																																																																																																																																				App
																																																																																																																																																																																					Var veccpy
																																																																																																																																																																																					App
																																																																																																																																																																																						Var p_rgb
																																																																																																																																																																																						Get
																																																																																																																																																																																							Var line
																																																																																																																																																																																							Var x
																																																																																																																																																																																					Var rgb
																																																																																																																																																																																				Let Tu183
																																																																																																																																																																																					App
																																																																																																																																																																																						Var p_set_group_id
																																																																																																																																																																																						Get
																																																																																																																																																																																							Var line
																																																																																																																																																																																							Var x
																																																																																																																																																																																						Var group_id
																																																																																																																																																																																					Let Tu182
																																																																																																																																																																																						App
																																																																																																																																																																																							Var pretrace_diffuse_rays
																																																																																																																																																																																							Get
																																																																																																																																																																																								Var line
																																																																																																																																																																																								Var x
																																																																																																																																																																																							Int:0
																																																																																																																																																																																						App
																																																																																																																																																																																							Var pretrace_pixels
																																																																																																																																																																																							Var line
																																																																																																																																																																																							Sub
																																																																																																																																																																																								Var x
																																																																																																																																																																																								Int:1
																																																																																																																																																																																							App
																																																																																																																																																																																								Var add_mod5
																																																																																																																																																																																								Var group_id
																																																																																																																																																																																								Int:1
																																																																																																																																																																																							Var lc0
																																																																																																																																																																																							Var lc1
																																																																																																																																																																																							Var lc2
																																																																																																																																																																											Unit
																																																																																																																																																																										LetRec pretrace_lineline y group_id 
																																																																																																																																																																											Let ydisp
																																																																																																																																																																												FMul
																																																																																																																																																																													Get
																																																																																																																																																																														Var scan_pitch
																																																																																																																																																																														Int:0
																																																																																																																																																																													App
																																																																																																																																																																														Var float_of_int
																																																																																																																																																																														Sub
																																																																																																																																																																															Var y
																																																																																																																																																																															Get
																																																																																																																																																																																Var image_center
																																																																																																																																																																																Int:1
																																																																																																																																																																												Let lc0
																																																																																																																																																																													FAdd
																																																																																																																																																																														FMul
																																																																																																																																																																															Var ydisp
																																																																																																																																																																															Get
																																																																																																																																																																																Var screeny_dir
																																																																																																																																																																																Int:0
																																																																																																																																																																														Get
																																																																																																																																																																															Var screenz_dir
																																																																																																																																																																															Int:0
																																																																																																																																																																													Let lc1
																																																																																																																																																																														FAdd
																																																																																																																																																																															FMul
																																																																																																																																																																																Var ydisp
																																																																																																																																																																																Get
																																																																																																																																																																																	Var screeny_dir
																																																																																																																																																																																	Int:1
																																																																																																																																																																															Get
																																																																																																																																																																																Var screenz_dir
																																																																																																																																																																																Int:1
																																																																																																																																																																														Let lc2
																																																																																																																																																																															FAdd
																																																																																																																																																																																FMul
																																																																																																																																																																																	Var ydisp
																																																																																																																																																																																	Get
																																																																																																																																																																																		Var screeny_dir
																																																																																																																																																																																		Int:2
																																																																																																																																																																																Get
																																																																																																																																																																																	Var screenz_dir
																																																																																																																																																																																	Int:2
																																																																																																																																																																															App
																																																																																																																																																																																Var pretrace_pixels
																																																																																																																																																																																Var line
																																																																																																																																																																																Sub
																																																																																																																																																																																	Get
																																																																																																																																																																																		Var image_size
																																																																																																																																																																																		Int:0
																																																																																																																																																																																	Int:1
																																																																																																																																																																																Var group_id
																																																																																																																																																																																Var lc0
																																																																																																																																																																																Var lc1
																																																																																																																																																																																Var lc2
																																																																																																																																																																											LetRec scan_pixelx y prev cur next 
																																																																																																																																																																												If
																																																																																																																																																																													Not
																																																																																																																																																																														LE
																																																																																																																																																																															Get
																																																																																																																																																																																Var image_size
																																																																																																																																																																																Int:0
																																																																																																																																																																															Var x
																																																																																																																																																																													Let Tu194
																																																																																																																																																																														App
																																																																																																																																																																															Var veccpy
																																																																																																																																																																															Var rgb
																																																																																																																																																																															App
																																																																																																																																																																																Var p_rgb
																																																																																																																																																																																Get
																																																																																																																																																																																	Var cur
																																																																																																																																																																																	Var x
																																																																																																																																																																														Let Tu193
																																																																																																																																																																															If
																																																																																																																																																																																App
																																																																																																																																																																																	Var neighbors_exist
																																																																																																																																																																																	Var x
																																																																																																																																																																																	Var y
																																																																																																																																																																																	Var next
																																																																																																																																																																																App
																																																																																																																																																																																	Var try_exploit_neighbors
																																																																																																																																																																																	Var x
																																																																																																																																																																																	Var y
																																																																																																																																																																																	Var prev
																																																																																																																																																																																	Var cur
																																																																																																																																																																																	Var next
																																																																																																																																																																																	Int:0
																																																																																																																																																																																App
																																																																																																																																																																																	Var do_without_neighbors
																																																																																																																																																																																	Get
																																																																																																																																																																																		Var cur
																																																																																																																																																																																		Var x
																																																																																																																																																																																	Int:0
																																																																																																																																																																															Let Tu192
																																																																																																																																																																																App
																																																																																																																																																																																	Var write_rgb
																																																																																																																																																																																	Unit
																																																																																																																																																																																App
																																																																																																																																																																																	Var scan_pixel
																																																																																																																																																																																	Add
																																																																																																																																																																																		Var x
																																																																																																																																																																																		Int:1
																																																																																																																																																																																	Var y
																																																																																																																																																																																	Var prev
																																																																																																																																																																																	Var cur
																																																																																																																																																																																	Var next
																																																																																																																																																																													Unit
																																																																																																																																																																												LetRec scan_liney prev cur next group_id 
																																																																																																																																																																													If
																																																																																																																																																																														Not
																																																																																																																																																																															LE
																																																																																																																																																																																Get
																																																																																																																																																																																	Var image_size
																																																																																																																																																																																	Int:1
																																																																																																																																																																																Var y
																																																																																																																																																																														Let Tu196
																																																																																																																																																																															If
																																																																																																																																																																																Not
																																																																																																																																																																																	LE
																																																																																																																																																																																		Sub
																																																																																																																																																																																			Get
																																																																																																																																																																																				Var image_size
																																																																																																																																																																																				Int:1
																																																																																																																																																																																			Int:1
																																																																																																																																																																																		Var y
																																																																																																																																																																																App
																																																																																																																																																																																	Var pretrace_line
																																																																																																																																																																																	Var next
																																																																																																																																																																																	Add
																																																																																																																																																																																		Var y
																																																																																																																																																																																		Int:1
																																																																																																																																																																																	Var group_id
																																																																																																																																																																																Unit
																																																																																																																																																																															Let Tu195
																																																																																																																																																																																App
																																																																																																																																																																																	Var scan_pixel
																																																																																																																																																																																	Int:0
																																																																																																																																																																																	Var y
																																																																																																																																																																																	Var prev
																																																																																																																																																																																	Var cur
																																																																																																																																																																																	Var next
																																																																																																																																																																																App
																																																																																																																																																																																	Var scan_line
																																																																																																																																																																																	Add
																																																																																																																																																																																		Var y
																																																																																																																																																																																		Int:1
																																																																																																																																																																																	Var cur
																																																																																																																																																																																	Var next
																																																																																																																																																																																	Var prev
																																																																																																																																																																																	App
																																																																																																																																																																																		Var add_mod5
																																																																																																																																																																																		Var group_id
																																																																																																																																																																																		Int:2
																																																																																																																																																																														Unit
																																																																																																																																																																													LetRec create_float5x3arrayTu197 
																																																																																																																																																																														Let vec
																																																																																																																																																																															Array
																																																																																																																																																																																Int:3
																																																																																																																																																																																Float:0.000000
																																																																																																																																																																															Let array
																																																																																																																																																																																Array
																																																																																																																																																																																	Int:5
																																																																																																																																																																																	Var vec
																																																																																																																																																																																Let Tu201
																																																																																																																																																																																	Put
																																																																																																																																																																																		Var array
																																																																																																																																																																																		Int:1
																																																																																																																																																																																		Array
																																																																																																																																																																																			Int:3
																																																																																																																																																																																			Float:0.000000
																																																																																																																																																																																	Let Tu200
																																																																																																																																																																																		Put
																																																																																																																																																																																			Var array
																																																																																																																																																																																			Int:2
																																																																																																																																																																																			Array
																																																																																																																																																																																				Int:3
																																																																																																																																																																																				Float:0.000000
																																																																																																																																																																																		Let Tu199
																																																																																																																																																																																			Put
																																																																																																																																																																																				Var array
																																																																																																																																																																																				Int:3
																																																																																																																																																																																				Array
																																																																																																																																																																																					Int:3
																																																																																																																																																																																					Float:0.000000
																																																																																																																																																																																			Let Tu198
																																																																																																																																																																																				Put
																																																																																																																																																																																					Var array
																																																																																																																																																																																					Int:4
																																																																																																																																																																																					Array
																																																																																																																																																																																						Int:3
																																																																																																																																																																																						Float:0.000000
																																																																																																																																																																																				Var array
																																																																																																																																																																														LetRec create_pixelTu202 
																																																																																																																																																																															Let m_rgb
																																																																																																																																																																																Array
																																																																																																																																																																																	Int:3
																																																																																																																																																																																	Float:0.000000
																																																																																																																																																																																Let m_isect_ps
																																																																																																																																																																																	App
																																																																																																																																																																																		Var create_float5x3array
																																																																																																																																																																																		Unit
																																																																																																																																																																																	Let m_sids
																																																																																																																																																																																		Array
																																																																																																																																																																																			Int:5
																																																																																																																																																																																			Int:0
																																																																																																																																																																																		Let m_cdif
																																																																																																																																																																																			Array
																																																																																																																																																																																				Int:5
																																																																																																																																																																																				Bool:false
																																																																																																																																																																																			Let m_engy
																																																																																																																																																																																				App
																																																																																																																																																																																					Var create_float5x3array
																																																																																																																																																																																					Unit
																																																																																																																																																																																				Let m_r20p
																																																																																																																																																																																					App
																																																																																																																																																																																						Var create_float5x3array
																																																																																																																																																																																						Unit
																																																																																																																																																																																					Let m_gid
																																																																																																																																																																																						Array
																																																																																																																																																																																							Int:1
																																																																																																																																																																																							Int:0
																																																																																																																																																																																						Let m_nvectors
																																																																																																																																																																																							App
																																																																																																																																																																																								Var create_float5x3array
																																																																																																																																																																																								Unit
																																																																																																																																																																																							Tuple
																																																																																																																																																																																							Var m_rgb
																																																																																																																																																																																							Var m_isect_ps
																																																																																																																																																																																							Var m_sids
																																																																																																																																																																																							Var m_cdif
																																																																																																																																																																																							Var m_engy
																																																																																																																																																																																							Var m_r20p
																																																																																																																																																																																							Var m_gid
																																																																																																																																																																																							Var m_nvectors
																																																																																																																																																																															LetRec init_line_elementsline n 
																																																																																																																																																																																If
																																																																																																																																																																																	LE
																																																																																																																																																																																		Int:0
																																																																																																																																																																																		Var n
																																																																																																																																																																																	Let Tu203
																																																																																																																																																																																		Put
																																																																																																																																																																																			Var line
																																																																																																																																																																																			Var n
																																																																																																																																																																																			App
																																																																																																																																																																																				Var create_pixel
																																																																																																																																																																																				Unit
																																																																																																																																																																																		App
																																																																																																																																																																																			Var init_line_elements
																																																																																																																																																																																			Var line
																																																																																																																																																																																			Sub
																																																																																																																																																																																				Var n
																																																																																																																																																																																				Int:1
																																																																																																																																																																																	Var line
																																																																																																																																																																																LetRec create_pixellineTu204 
																																																																																																																																																																																	Let line
																																																																																																																																																																																		Array
																																																																																																																																																																																			Get
																																																																																																																																																																																				Var image_size
																																																																																																																																																																																				Int:0
																																																																																																																																																																																			App
																																																																																																																																																																																				Var create_pixel
																																																																																																																																																																																				Unit
																																																																																																																																																																																		App
																																																																																																																																																																																			Var init_line_elements
																																																																																																																																																																																			Var line
																																																																																																																																																																																			Sub
																																																																																																																																																																																				Get
																																																																																																																																																																																					Var image_size
																																																																																																																																																																																					Int:0
																																																																																																																																																																																				Int:2
																																																																																																																																																																																	LetRec tanx 
																																																																																																																																																																																		FDiv
																																																																																																																																																																																			App
																																																																																																																																																																																				Var sin
																																																																																																																																																																																				Var x
																																																																																																																																																																																			App
																																																																																																																																																																																				Var cos
																																																																																																																																																																																				Var x
																																																																																																																																																																																		LetRec adjust_positionh ratio 
																																																																																																																																																																																			Let l
																																																																																																																																																																																				App
																																																																																																																																																																																					Var sqrt
																																																																																																																																																																																					FAdd
																																																																																																																																																																																						FMul
																																																																																																																																																																																							Var h
																																																																																																																																																																																							Var h
																																																																																																																																																																																						Float:0.100000
																																																																																																																																																																																				Let tan_h
																																																																																																																																																																																					FDiv
																																																																																																																																																																																						Float:1.000000
																																																																																																																																																																																						Var l
																																																																																																																																																																																					Let theta_h
																																																																																																																																																																																						App
																																																																																																																																																																																							Var atan
																																																																																																																																																																																							Var tan_h
																																																																																																																																																																																						Let tan_m
																																																																																																																																																																																							App
																																																																																																																																																																																								Var tan
																																																																																																																																																																																								FMul
																																																																																																																																																																																									Var theta_h
																																																																																																																																																																																									Var ratio
																																																																																																																																																																																							FMul
																																																																																																																																																																																								Var tan_m
																																																																																																																																																																																								Var l
																																																																																																																																																																																			LetRec calc_dirvecicount x y rx ry group_id index 
																																																																																																																																																																																				If
																																																																																																																																																																																					LE
																																																																																																																																																																																						Int:5
																																																																																																																																																																																						Var icount
																																																																																																																																																																																					Let l
																																																																																																																																																																																						App
																																																																																																																																																																																							Var sqrt
																																																																																																																																																																																							FAdd
																																																																																																																																																																																								FAdd
																																																																																																																																																																																									App
																																																																																																																																																																																										Var fsqr
																																																																																																																																																																																										Var x
																																																																																																																																																																																									App
																																																																																																																																																																																										Var fsqr
																																																																																																																																																																																										Var y
																																																																																																																																																																																								Float:1.000000
																																																																																																																																																																																						Let vx
																																																																																																																																																																																							FDiv
																																																																																																																																																																																								Var x
																																																																																																																																																																																								Var l
																																																																																																																																																																																							Let vy
																																																																																																																																																																																								FDiv
																																																																																																																																																																																									Var y
																																																																																																																																																																																									Var l
																																																																																																																																																																																								Let vz
																																																																																																																																																																																									FDiv
																																																																																																																																																																																										Float:1.000000
																																																																																																																																																																																										Var l
																																																																																																																																																																																									Let dgroup
																																																																																																																																																																																										Get
																																																																																																																																																																																											Var dirvecs
																																																																																																																																																																																											Var group_id
																																																																																																																																																																																										Let Tu209
																																																																																																																																																																																											App
																																																																																																																																																																																												Var vecset
																																																																																																																																																																																												App
																																																																																																																																																																																													Var d_vec
																																																																																																																																																																																													Get
																																																																																																																																																																																														Var dgroup
																																																																																																																																																																																														Var index
																																																																																																																																																																																												Var vx
																																																																																																																																																																																												Var vy
																																																																																																																																																																																												Var vz
																																																																																																																																																																																											Let Tu208
																																																																																																																																																																																												App
																																																																																																																																																																																													Var vecset
																																																																																																																																																																																													App
																																																																																																																																																																																														Var d_vec
																																																																																																																																																																																														Get
																																																																																																																																																																																															Var dgroup
																																																																																																																																																																																															Add
																																																																																																																																																																																																Var index
																																																																																																																																																																																																Int:40
																																																																																																																																																																																													Var vx
																																																																																																																																																																																													Var vz
																																																																																																																																																																																													App
																																																																																																																																																																																														Var fneg
																																																																																																																																																																																														Var vy
																																																																																																																																																																																												Let Tu207
																																																																																																																																																																																													App
																																																																																																																																																																																														Var vecset
																																																																																																																																																																																														App
																																																																																																																																																																																															Var d_vec
																																																																																																																																																																																															Get
																																																																																																																																																																																																Var dgroup
																																																																																																																																																																																																Add
																																																																																																																																																																																																	Var index
																																																																																																																																																																																																	Int:80
																																																																																																																																																																																														Var vz
																																																																																																																																																																																														App
																																																																																																																																																																																															Var fneg
																																																																																																																																																																																															Var vx
																																																																																																																																																																																														App
																																																																																																																																																																																															Var fneg
																																																																																																																																																																																															Var vy
																																																																																																																																																																																													Let Tu206
																																																																																																																																																																																														App
																																																																																																																																																																																															Var vecset
																																																																																																																																																																																															App
																																																																																																																																																																																																Var d_vec
																																																																																																																																																																																																Get
																																																																																																																																																																																																	Var dgroup
																																																																																																																																																																																																	Add
																																																																																																																																																																																																		Var index
																																																																																																																																																																																																		Int:1
																																																																																																																																																																																															App
																																																																																																																																																																																																Var fneg
																																																																																																																																																																																																Var vx
																																																																																																																																																																																															App
																																																																																																																																																																																																Var fneg
																																																																																																																																																																																																Var vy
																																																																																																																																																																																															App
																																																																																																																																																																																																Var fneg
																																																																																																																																																																																																Var vz
																																																																																																																																																																																														Let Tu205
																																																																																																																																																																																															App
																																																																																																																																																																																																Var vecset
																																																																																																																																																																																																App
																																																																																																																																																																																																	Var d_vec
																																																																																																																																																																																																	Get
																																																																																																																																																																																																		Var dgroup
																																																																																																																																																																																																		Add
																																																																																																																																																																																																			Var index
																																																																																																																																																																																																			Int:41
																																																																																																																																																																																																App
																																																																																																																																																																																																	Var fneg
																																																																																																																																																																																																	Var vx
																																																																																																																																																																																																App
																																																																																																																																																																																																	Var fneg
																																																																																																																																																																																																	Var vz
																																																																																																																																																																																																Var vy
																																																																																																																																																																																															App
																																																																																																																																																																																																Var vecset
																																																																																																																																																																																																App
																																																																																																																																																																																																	Var d_vec
																																																																																																																																																																																																	Get
																																																																																																																																																																																																		Var dgroup
																																																																																																																																																																																																		Add
																																																																																																																																																																																																			Var index
																																																																																																																																																																																																			Int:81
																																																																																																																																																																																																App
																																																																																																																																																																																																	Var fneg
																																																																																																																																																																																																	Var vz
																																																																																																																																																																																																Var vx
																																																																																																																																																																																																Var vy
																																																																																																																																																																																					Let x2
																																																																																																																																																																																						App
																																																																																																																																																																																							Var adjust_position
																																																																																																																																																																																							Var y
																																																																																																																																																																																							Var rx
																																																																																																																																																																																						App
																																																																																																																																																																																							Var calc_dirvec
																																																																																																																																																																																							Add
																																																																																																																																																																																								Var icount
																																																																																																																																																																																								Int:1
																																																																																																																																																																																							Var x2
																																																																																																																																																																																							App
																																																																																																																																																																																								Var adjust_position
																																																																																																																																																																																								Var x2
																																																																																																																																																																																								Var ry
																																																																																																																																																																																							Var rx
																																																																																																																																																																																							Var ry
																																																																																																																																																																																							Var group_id
																																																																																																																																																																																							Var index
																																																																																																																																																																																				LetRec calc_dirvecscol ry group_id index 
																																																																																																																																																																																					If
																																																																																																																																																																																						LE
																																																																																																																																																																																							Int:0
																																																																																																																																																																																							Var col
																																																																																																																																																																																						Let rx
																																																																																																																																																																																							FSub
																																																																																																																																																																																								FMul
																																																																																																																																																																																									App
																																																																																																																																																																																										Var float_of_int
																																																																																																																																																																																										Var col
																																																																																																																																																																																									Float:0.200000
																																																																																																																																																																																								Float:0.900000
																																																																																																																																																																																							Let Tu211
																																																																																																																																																																																								App
																																																																																																																																																																																									Var calc_dirvec
																																																																																																																																																																																									Int:0
																																																																																																																																																																																									Float:0.000000
																																																																																																																																																																																									Float:0.000000
																																																																																																																																																																																									Var rx
																																																																																																																																																																																									Var ry
																																																																																																																																																																																									Var group_id
																																																																																																																																																																																									Var index
																																																																																																																																																																																								Let rx2
																																																																																																																																																																																									FAdd
																																																																																																																																																																																										FMul
																																																																																																																																																																																											App
																																																																																																																																																																																												Var float_of_int
																																																																																																																																																																																												Var col
																																																																																																																																																																																											Float:0.200000
																																																																																																																																																																																										Float:0.100000
																																																																																																																																																																																									Let Tu210
																																																																																																																																																																																										App
																																																																																																																																																																																											Var calc_dirvec
																																																																																																																																																																																											Int:0
																																																																																																																																																																																											Float:0.000000
																																																																																																																																																																																											Float:0.000000
																																																																																																																																																																																											Var rx2
																																																																																																																																																																																											Var ry
																																																																																																																																																																																											Var group_id
																																																																																																																																																																																											Add
																																																																																																																																																																																												Var index
																																																																																																																																																																																												Int:2
																																																																																																																																																																																										App
																																																																																																																																																																																											Var calc_dirvecs
																																																																																																																																																																																											Sub
																																																																																																																																																																																												Var col
																																																																																																																																																																																												Int:1
																																																																																																																																																																																											Var ry
																																																																																																																																																																																											App
																																																																																																																																																																																												Var add_mod5
																																																																																																																																																																																												Var group_id
																																																																																																																																																																																												Int:1
																																																																																																																																																																																											Var index
																																																																																																																																																																																						Unit
																																																																																																																																																																																					LetRec calc_dirvec_rowsrow group_id index 
																																																																																																																																																																																						If
																																																																																																																																																																																							LE
																																																																																																																																																																																								Int:0
																																																																																																																																																																																								Var row
																																																																																																																																																																																							Let ry
																																																																																																																																																																																								FSub
																																																																																																																																																																																									FMul
																																																																																																																																																																																										App
																																																																																																																																																																																											Var float_of_int
																																																																																																																																																																																											Var row
																																																																																																																																																																																										Float:0.200000
																																																																																																																																																																																									Float:0.900000
																																																																																																																																																																																								Let Tu212
																																																																																																																																																																																									App
																																																																																																																																																																																										Var calc_dirvecs
																																																																																																																																																																																										Int:4
																																																																																																																																																																																										Var ry
																																																																																																																																																																																										Var group_id
																																																																																																																																																																																										Var index
																																																																																																																																																																																									App
																																																																																																																																																																																										Var calc_dirvec_rows
																																																																																																																																																																																										Sub
																																																																																																																																																																																											Var row
																																																																																																																																																																																											Int:1
																																																																																																																																																																																										App
																																																																																																																																																																																											Var add_mod5
																																																																																																																																																																																											Var group_id
																																																																																																																																																																																											Int:2
																																																																																																																																																																																										Add
																																																																																																																																																																																											Var index
																																																																																																																																																																																											Int:4
																																																																																																																																																																																							Unit
																																																																																																																																																																																						LetRec create_dirvecTu213 
																																																																																																																																																																																							Let v3
																																																																																																																																																																																								Array
																																																																																																																																																																																									Int:3
																																																																																																																																																																																									Float:0.000000
																																																																																																																																																																																								Let consts
																																																																																																																																																																																									Array
																																																																																																																																																																																										Get
																																																																																																																																																																																											Var n_objects
																																																																																																																																																																																											Int:0
																																																																																																																																																																																										Var v3
																																																																																																																																																																																									Tuple
																																																																																																																																																																																									Var v3
																																																																																																																																																																																									Var consts
																																																																																																																																																																																							LetRec create_dirvec_elementsd index 
																																																																																																																																																																																								If
																																																																																																																																																																																									LE
																																																																																																																																																																																										Int:0
																																																																																																																																																																																										Var index
																																																																																																																																																																																									Let Tu214
																																																																																																																																																																																										Put
																																																																																																																																																																																											Var d
																																																																																																																																																																																											Var index
																																																																																																																																																																																											App
																																																																																																																																																																																												Var create_dirvec
																																																																																																																																																																																												Unit
																																																																																																																																																																																										App
																																																																																																																																																																																											Var create_dirvec_elements
																																																																																																																																																																																											Var d
																																																																																																																																																																																											Sub
																																																																																																																																																																																												Var index
																																																																																																																																																																																												Int:1
																																																																																																																																																																																									Unit
																																																																																																																																																																																								LetRec create_dirvecsindex 
																																																																																																																																																																																									If
																																																																																																																																																																																										LE
																																																																																																																																																																																											Int:0
																																																																																																																																																																																											Var index
																																																																																																																																																																																										Let Tu216
																																																																																																																																																																																											Put
																																																																																																																																																																																												Var dirvecs
																																																																																																																																																																																												Var index
																																																																																																																																																																																												Array
																																																																																																																																																																																													Int:120
																																																																																																																																																																																													App
																																																																																																																																																																																														Var create_dirvec
																																																																																																																																																																																														Unit
																																																																																																																																																																																											Let Tu215
																																																																																																																																																																																												App
																																																																																																																																																																																													Var create_dirvec_elements
																																																																																																																																																																																													Get
																																																																																																																																																																																														Var dirvecs
																																																																																																																																																																																														Var index
																																																																																																																																																																																													Int:118
																																																																																																																																																																																												App
																																																																																																																																																																																													Var create_dirvecs
																																																																																																																																																																																													Sub
																																																																																																																																																																																														Var index
																																																																																																																																																																																														Int:1
																																																																																																																																																																																										Unit
																																																																																																																																																																																									LetRec init_dirvec_constantsvecset index 
																																																																																																																																																																																										If
																																																																																																																																																																																											LE
																																																																																																																																																																																												Int:0
																																																																																																																																																																																												Var index
																																																																																																																																																																																											Let Tu217
																																																																																																																																																																																												App
																																																																																																																																																																																													Var setup_dirvec_constants
																																																																																																																																																																																													Get
																																																																																																																																																																																														Var vecset
																																																																																																																																																																																														Var index
																																																																																																																																																																																												App
																																																																																																																																																																																													Var init_dirvec_constants
																																																																																																																																																																																													Var vecset
																																																																																																																																																																																													Sub
																																																																																																																																																																																														Var index
																																																																																																																																																																																														Int:1
																																																																																																																																																																																											Unit
																																																																																																																																																																																										LetRec init_vecset_constantsindex 
																																																																																																																																																																																											If
																																																																																																																																																																																												LE
																																																																																																																																																																																													Int:0
																																																																																																																																																																																													Var index
																																																																																																																																																																																												Let Tu218
																																																																																																																																																																																													App
																																																																																																																																																																																														Var init_dirvec_constants
																																																																																																																																																																																														Get
																																																																																																																																																																																															Var dirvecs
																																																																																																																																																																																															Var index
																																																																																																																																																																																														Int:119
																																																																																																																																																																																													App
																																																																																																																																																																																														Var init_vecset_constants
																																																																																																																																																																																														Sub
																																																																																																																																																																																															Var index
																																																																																																																																																																																															Int:1
																																																																																																																																																																																												Unit
																																																																																																																																																																																											LetRec init_dirvecsTu219 
																																																																																																																																																																																												Let Tu221
																																																																																																																																																																																													App
																																																																																																																																																																																														Var create_dirvecs
																																																																																																																																																																																														Int:4
																																																																																																																																																																																													Let Tu220
																																																																																																																																																																																														App
																																																																																																																																																																																															Var calc_dirvec_rows
																																																																																																																																																																																															Int:9
																																																																																																																																																																																															Int:0
																																																																																																																																																																																															Int:0
																																																																																																																																																																																														App
																																																																																																																																																																																															Var init_vecset_constants
																																																																																																																																																																																															Int:4
																																																																																																																																																																																												LetRec add_reflectionindex surface_id bright v0 v1 v2 
																																																																																																																																																																																													Let dvec
																																																																																																																																																																																														App
																																																																																																																																																																																															Var create_dirvec
																																																																																																																																																																																															Unit
																																																																																																																																																																																														Let Tu223
																																																																																																																																																																																															App
																																																																																																																																																																																																Var vecset
																																																																																																																																																																																																App
																																																																																																																																																																																																	Var d_vec
																																																																																																																																																																																																	Var dvec
																																																																																																																																																																																																Var v0
																																																																																																																																																																																																Var v1
																																																																																																																																																																																																Var v2
																																																																																																																																																																																															Let Tu222
																																																																																																																																																																																																App
																																																																																																																																																																																																	Var setup_dirvec_constants
																																																																																																																																																																																																	Var dvec
																																																																																																																																																																																																Put
																																																																																																																																																																																																	Var reflections
																																																																																																																																																																																																	Var index
																																																																																																																																																																																																	Tuple
																																																																																																																																																																																																	Var surface_id
																																																																																																																																																																																																	Var dvec
																																																																																																																																																																																																	Var bright
																																																																																																																																																																																													LetRec setup_rect_reflectionobj_id obj 
																																																																																																																																																																																														Let sid
																																																																																																																																																																																															Mul
																																																																																																																																																																																																Var obj_id
																																																																																																																																																																																																Int:4
																																																																																																																																																																																															Let nr
																																																																																																																																																																																																Get
																																																																																																																																																																																																	Var n_reflections
																																																																																																																																																																																																	Int:0
																																																																																																																																																																																																Let br
																																																																																																																																																																																																	FSub
																																																																																																																																																																																																		Float:1.000000
																																																																																																																																																																																																		App
																																																																																																																																																																																																			Var o_diffuse
																																																																																																																																																																																																			Var obj
																																																																																																																																																																																																	Let n0
																																																																																																																																																																																																		App
																																																																																																																																																																																																			Var fneg
																																																																																																																																																																																																			Get
																																																																																																																																																																																																				Var light
																																																																																																																																																																																																				Int:0
																																																																																																																																																																																																		Let n1
																																																																																																																																																																																																			App
																																																																																																																																																																																																				Var fneg
																																																																																																																																																																																																				Get
																																																																																																																																																																																																					Var light
																																																																																																																																																																																																					Int:1
																																																																																																																																																																																																			Let n2
																																																																																																																																																																																																				App
																																																																																																																																																																																																					Var fneg
																																																																																																																																																																																																					Get
																																																																																																																																																																																																						Var light
																																																																																																																																																																																																						Int:2
																																																																																																																																																																																																				Let Tu226
																																																																																																																																																																																																					App
																																																																																																																																																																																																						Var add_reflection
																																																																																																																																																																																																						Var nr
																																																																																																																																																																																																						Add
																																																																																																																																																																																																							Var sid
																																																																																																																																																																																																							Int:1
																																																																																																																																																																																																						Var br
																																																																																																																																																																																																						Get
																																																																																																																																																																																																							Var light
																																																																																																																																																																																																							Int:0
																																																																																																																																																																																																						Var n1
																																																																																																																																																																																																						Var n2
																																																																																																																																																																																																					Let Tu225
																																																																																																																																																																																																						App
																																																																																																																																																																																																							Var add_reflection
																																																																																																																																																																																																							Add
																																																																																																																																																																																																								Var nr
																																																																																																																																																																																																								Int:1
																																																																																																																																																																																																							Add
																																																																																																																																																																																																								Var sid
																																																																																																																																																																																																								Int:2
																																																																																																																																																																																																							Var br
																																																																																																																																																																																																							Var n0
																																																																																																																																																																																																							Get
																																																																																																																																																																																																								Var light
																																																																																																																																																																																																								Int:1
																																																																																																																																																																																																							Var n2
																																																																																																																																																																																																						Let Tu224
																																																																																																																																																																																																							App
																																																																																																																																																																																																								Var add_reflection
																																																																																																																																																																																																								Add
																																																																																																																																																																																																									Var nr
																																																																																																																																																																																																									Int:2
																																																																																																																																																																																																								Add
																																																																																																																																																																																																									Var sid
																																																																																																																																																																																																									Int:3
																																																																																																																																																																																																								Var br
																																																																																																																																																																																																								Var n0
																																																																																																																																																																																																								Var n1
																																																																																																																																																																																																								Get
																																																																																																																																																																																																									Var light
																																																																																																																																																																																																									Int:2
																																																																																																																																																																																																							Put
																																																																																																																																																																																																								Var n_reflections
																																																																																																																																																																																																								Int:0
																																																																																																																																																																																																								Add
																																																																																																																																																																																																									Var nr
																																																																																																																																																																																																									Int:3
																																																																																																																																																																																														LetRec setup_surface_reflectionobj_id obj 
																																																																																																																																																																																															Let sid
																																																																																																																																																																																																Add
																																																																																																																																																																																																	Mul
																																																																																																																																																																																																		Var obj_id
																																																																																																																																																																																																		Int:4
																																																																																																																																																																																																	Int:1
																																																																																																																																																																																																Let nr
																																																																																																																																																																																																	Get
																																																																																																																																																																																																		Var n_reflections
																																																																																																																																																																																																		Int:0
																																																																																																																																																																																																	Let br
																																																																																																																																																																																																		FSub
																																																																																																																																																																																																			Float:1.000000
																																																																																																																																																																																																			App
																																																																																																																																																																																																				Var o_diffuse
																																																																																																																																																																																																				Var obj
																																																																																																																																																																																																		Let p
																																																																																																																																																																																																			App
																																																																																																																																																																																																				Var veciprod
																																																																																																																																																																																																				Var light
																																																																																																																																																																																																				App
																																																																																																																																																																																																					Var o_param_abc
																																																																																																																																																																																																					Var obj
																																																																																																																																																																																																			Let Tu227
																																																																																																																																																																																																				App
																																																																																																																																																																																																					Var add_reflection
																																																																																																																																																																																																					Var nr
																																																																																																																																																																																																					Var sid
																																																																																																																																																																																																					Var br
																																																																																																																																																																																																					FSub
																																																																																																																																																																																																						FMul
																																																																																																																																																																																																							FMul
																																																																																																																																																																																																								Float:2.000000
																																																																																																																																																																																																								App
																																																																																																																																																																																																									Var o_param_a
																																																																																																																																																																																																									Var obj
																																																																																																																																																																																																							Var p
																																																																																																																																																																																																						Get
																																																																																																																																																																																																							Var light
																																																																																																																																																																																																							Int:0
																																																																																																																																																																																																					FSub
																																																																																																																																																																																																						FMul
																																																																																																																																																																																																							FMul
																																																																																																																																																																																																								Float:2.000000
																																																																																																																																																																																																								App
																																																																																																																																																																																																									Var o_param_b
																																																																																																																																																																																																									Var obj
																																																																																																																																																																																																							Var p
																																																																																																																																																																																																						Get
																																																																																																																																																																																																							Var light
																																																																																																																																																																																																							Int:1
																																																																																																																																																																																																					FSub
																																																																																																																																																																																																						FMul
																																																																																																																																																																																																							FMul
																																																																																																																																																																																																								Float:2.000000
																																																																																																																																																																																																								App
																																																																																																																																																																																																									Var o_param_c
																																																																																																																																																																																																									Var obj
																																																																																																																																																																																																							Var p
																																																																																																																																																																																																						Get
																																																																																																																																																																																																							Var light
																																																																																																																																																																																																							Int:2
																																																																																																																																																																																																				Put
																																																																																																																																																																																																					Var n_reflections
																																																																																																																																																																																																					Int:0
																																																																																																																																																																																																					Add
																																																																																																																																																																																																						Var nr
																																																																																																																																																																																																						Int:1
																																																																																																																																																																																															LetRec setup_reflectionsobj_id 
																																																																																																																																																																																																If
																																																																																																																																																																																																	LE
																																																																																																																																																																																																		Int:0
																																																																																																																																																																																																		Var obj_id
																																																																																																																																																																																																	Let obj
																																																																																																																																																																																																		Get
																																																																																																																																																																																																			Var objects
																																																																																																																																																																																																			Var obj_id
																																																																																																																																																																																																		If
																																																																																																																																																																																																			Eq
																																																																																																																																																																																																				App
																																																																																																																																																																																																					Var o_reflectiontype
																																																																																																																																																																																																					Var obj
																																																																																																																																																																																																				Int:2
																																																																																																																																																																																																			If
																																																																																																																																																																																																				App
																																																																																																																																																																																																					Var fless
																																																																																																																																																																																																					App
																																																																																																																																																																																																						Var o_diffuse
																																																																																																																																																																																																						Var obj
																																																																																																																																																																																																					Float:1.000000
																																																																																																																																																																																																				Let m_shape
																																																																																																																																																																																																					App
																																																																																																																																																																																																						Var o_form
																																																																																																																																																																																																						Var obj
																																																																																																																																																																																																					If
																																																																																																																																																																																																						Eq
																																																																																																																																																																																																							Var m_shape
																																																																																																																																																																																																							Int:1
																																																																																																																																																																																																						App
																																																																																																																																																																																																							Var setup_rect_reflection
																																																																																																																																																																																																							Var obj_id
																																																																																																																																																																																																							Var obj
																																																																																																																																																																																																						If
																																																																																																																																																																																																							Eq
																																																																																																																																																																																																								Var m_shape
																																																																																																																																																																																																								Int:2
																																																																																																																																																																																																							App
																																																																																																																																																																																																								Var setup_surface_reflection
																																																																																																																																																																																																								Var obj_id
																																																																																																																																																																																																								Var obj
																																																																																																																																																																																																							Unit
																																																																																																																																																																																																				Unit
																																																																																																																																																																																																			Unit
																																																																																																																																																																																																	Unit
																																																																																																																																																																																																LetRec rtsize_x size_y 
																																																																																																																																																																																																	Let Tu239
																																																																																																																																																																																																		Put
																																																																																																																																																																																																			Var image_size
																																																																																																																																																																																																			Int:0
																																																																																																																																																																																																			Var size_x
																																																																																																																																																																																																		Let Tu238
																																																																																																																																																																																																			Put
																																																																																																																																																																																																				Var image_size
																																																																																																																																																																																																				Int:1
																																																																																																																																																																																																				Var size_y
																																																																																																																																																																																																			Let Tu237
																																																																																																																																																																																																				Put
																																																																																																																																																																																																					Var image_center
																																																																																																																																																																																																					Int:0
																																																																																																																																																																																																					Div
																																																																																																																																																																																																						Var size_x
																																																																																																																																																																																																						Int:2
																																																																																																																																																																																																				Let Tu236
																																																																																																																																																																																																					Put
																																																																																																																																																																																																						Var image_center
																																																																																																																																																																																																						Int:1
																																																																																																																																																																																																						Div
																																																																																																																																																																																																							Var size_y
																																																																																																																																																																																																							Int:2
																																																																																																																																																																																																					Let Tu235
																																																																																																																																																																																																						Put
																																																																																																																																																																																																							Var scan_pitch
																																																																																																																																																																																																							Int:0
																																																																																																																																																																																																							FDiv
																																																																																																																																																																																																								Float:128.000000
																																																																																																																																																																																																								App
																																																																																																																																																																																																									Var float_of_int
																																																																																																																																																																																																									Var size_x
																																																																																																																																																																																																						Let prev
																																																																																																																																																																																																							App
																																																																																																																																																																																																								Var create_pixelline
																																																																																																																																																																																																								Unit
																																																																																																																																																																																																							Let cur
																																																																																																																																																																																																								App
																																																																																																																																																																																																									Var create_pixelline
																																																																																																																																																																																																									Unit
																																																																																																																																																																																																								Let next
																																																																																																																																																																																																									App
																																																																																																																																																																																																										Var create_pixelline
																																																																																																																																																																																																										Unit
																																																																																																																																																																																																									Let Tu234
																																																																																																																																																																																																										App
																																																																																																																																																																																																											Var read_parameter
																																																																																																																																																																																																											Unit
																																																																																																																																																																																																										Let Tu233
																																																																																																																																																																																																											App
																																																																																																																																																																																																												Var write_ppm_header
																																																																																																																																																																																																												Unit
																																																																																																																																																																																																											Let Tu232
																																																																																																																																																																																																												App
																																																																																																																																																																																																													Var init_dirvecs
																																																																																																																																																																																																													Unit
																																																																																																																																																																																																												Let Tu231
																																																																																																																																																																																																													App
																																																																																																																																																																																																														Var veccpy
																																																																																																																																																																																																														App
																																																																																																																																																																																																															Var d_vec
																																																																																																																																																																																																															Var light_dirvec
																																																																																																																																																																																																														Var light
																																																																																																																																																																																																													Let Tu230
																																																																																																																																																																																																														App
																																																																																																																																																																																																															Var setup_dirvec_constants
																																																																																																																																																																																																															Var light_dirvec
																																																																																																																																																																																																														Let Tu229
																																																																																																																																																																																																															App
																																																																																																																																																																																																																Var setup_reflections
																																																																																																																																																																																																																Sub
																																																																																																																																																																																																																	Get
																																																																																																																																																																																																																		Var n_objects
																																																																																																																																																																																																																		Int:0
																																																																																																																																																																																																																	Int:1
																																																																																																																																																																																																															Let Tu228
																																																																																																																																																																																																																App
																																																																																																																																																																																																																	Var pretrace_line
																																																																																																																																																																																																																	Var cur
																																																																																																																																																																																																																	Int:0
																																																																																																																																																																																																																	Int:0
																																																																																																																																																																																																																App
																																																																																																																																																																																																																	Var scan_line
																																																																																																																																																																																																																	Int:0
																																																																																																																																																																																																																	Var prev
																																																																																																																																																																																																																	Var cur
																																																																																																																																																																																																																	Var next
																																																																																																																																																																																																																	Int:2
																																																																																																																																																																																																	Let Tu240
																																																																																																																																																																																																		App
																																																																																																																																																																																																			Var rt
																																																																																																																																																																																																			Int:128
																																																																																																																																																																																																			Int:128
																																																																																																																																																																																																		App
																																																																																																																																																																																																			Var print_int
																																																																																																																																																																																																			Int:0
