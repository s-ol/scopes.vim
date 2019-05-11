if exists('b:current_syntax')
  finish
endif

let b:current_syntax = 'sc'

" Declarations
syn iskeyword @,33-39,42-64,|,~,_

hi def link     scKeywordBuiltin      PreProc
hi def link     scKeywordLibrary      PreProc
hi def link     scKeywordTesting      PreProc
hi def link     scKeywordGLSL         PreProc

hi def link     scConstantBuiltin     Constant
hi def link     scConstantLibrary     Constant
hi def link     scConstantGLSL        Constant
hi def link     scConstantMath        Constant

hi def link     scFunctionBuiltin     Statement
hi def link     scFunctionLibrary     Statement
hi def link     scFunctionItertools   Statement
hi def link     scFunctionGLSL        Statement
hi def link     scFunctionGLM         Statement
hi def link     scFunctionSFXApi      Statement
hi def link     scFunctionSFXBuiltin  Statement
hi def link     scFunctionSFXLibrary  Statement

hi def link     scOperator            PreProc
hi def link     scOperatorSpecial     Statement

hi def link     scTypeBuiltin         Type
hi def link     scTypeLibrary         Type
hi def link     scTypeGLSL            Type
hi def link     scTypeGLM             Type

hi def link     scBoolean             Number
hi def link     scNothing             Number
hi def link     scNumber              Number
hi def link     scNumberType          Type
hi def link     scString              String

hi def link     scComment             Comment
hi def link     scTodo                Todo

" Keywords
syn keyword scKeywordBuiltin _ then switch case pass default run-stage loop repeat break raise
syn keyword scKeywordBuiltin square-list curly-list inline spice-quote sugar-quote spice-unquote
syn keyword scKeywordBuiltin unquote-splice do embed static-if sugar-if if elseif else return merge
syn keyword scKeywordBuiltin let ulnet fn label call rawcall syntax-log

syn keyword scKeywordLibrary options bind include __this-scope static plain local new global typedef
syn keyword scKeywordLibrary typedef+ fold :: @@ vvv qq va-option sugar spice fn... inline...
syn keyword scKeywordLibrary spice-capture capture struct fnchain enum while continue for in sugar-match
syn keyword scKeywordLibrary spice-match static-match match from using filter : try except locals
syn keyword scKeywordLibrary import defer assert static-assert define define-infix< define-infix>

syn keyword scKeywordTesting test test-modules test-error test-compiler-error features
syn keyword scKeywordGLSL uniform buffer in out inout varying xvar coherent volatile restrict readonly writeonly


" Constants
syn keyword scConstantBuiltin debug-build? compiler-path compiler-timestamp  compiler-dir sugar-scope
syn keyword scConstantBuiltin this-function pointer-flag-non-writable pointer-flag-non-readable
syn keyword scConstantBuiltin type-kind-function type-kind-integer type-kind-real type-kind-pointer
syn keyword scConstantBuiltin type-kind-vector type-kind-array type-kind-tuple type-kind-union
syn keyword scConstantBuiltin type-kind-typename

syn keyword scConstantLibrary this-type super-type package main-module? module-dir module-path module-name
syn keyword scConstantGLSL gl_Position gl_FragCoord gl_VertexID gl_FragDepth
syn match   scConstantMath '\<\(pi\|e\)\ze\(\>\|:\)\?'


" Operators
syn keyword scOperator as <: and or not //= // @ == != <= >= = ! < > ** -> <- as:= := <<= << >>= >> ..= ..
syn match scOperator '\<[\.?+\-*/%&|^~]\>'
syn match scOperator '\<[\.?+\-*/%&|^]=\>'


" Functions
syn keyword scFunctionBuiltin returning raising move view lose dropped?  dupe viewing __drop assign ptrtoref
syn keyword scFunctionBuiltin reftoptr hide-traceback pow fmix step smoothstep floor ceil fract fabs fsign sabs
syn keyword scFunctionBuiltin ssign round roundeven trunc fma frexp ldexp inversesqrt sqrt exp2 exp log2 log
syn keyword scFunctionBuiltin radians degrees sin cos tan asin acos atan atan2 cross normalize length distance
syn keyword scFunctionBuiltin scopeof offsetof Image-read Image-write sample mutable?  type-name supercall superof
syn keyword scFunctionBuiltin string-match?  file?  directory?  exit compiler-version load-library prompt countof
syn keyword scFunctionBuiltin private malloc-array malloc free alloca-array allocaof alloca eval list-load globals
syn keyword scFunctionBuiltin mutable-pointer-type pointer-type integer-type real-type function-type tuple-type
syn keyword scFunctionBuiltin ReturnLabel-type array-type vector-type typename-type extern-type SampledImage-type
syn keyword scFunctionBuiltin Image-type dump dump-label dump-list dump-frame Any-extract-constant Any-repr
syn keyword scFunctionBuiltin Any-wrap static-branch string-join getelementptr volatile-load volatile-store load
syn keyword scFunctionBuiltin store storageof import-c type@& type@ Scope@ ptrtoint inttoptr insertvalue
syn keyword scFunctionBuiltin insertelement extractvalue extractelement shufflevector unconst-all unconst
syn keyword scFunctionBuiltin compile-glsl compile-spirv compile-object compile static-typify typify constant?
syn keyword scFunctionBuiltin signed?  va-keys va-values va-countof va@ type-kind nullof undef typeof& typeof
syn keyword scFunctionBuiltin bitcountof icmp== icmp!= icmp<=s icmp>=s icmp<s icmp>s icmp<=u icmp>=u icmp<u icmp>u
syn keyword scFunctionBuiltin fcmp==o fcmp==u fcmp!=o fcmp!=u fcmp<=o fcmp>=o fcmp<o fcmp>o fcmp<=u fcmp>=u fcmp<u
syn keyword scFunctionBuiltin fcmp>u bitcast& bitcast fptrunc itrunc sext zext fpext fptosi fptoui sitofp uitofp
syn keyword scFunctionBuiltin band bxor bor fadd add fsub sub fmul mul sdiv udiv fdiv srem urem frem shl ashr lshr

syn keyword scFunctionLibrary unqualified qualifiersof keyof sizeof elementsof elementof alignof
syn keyword scFunctionLibrary returnof field drop extern mutable raises spice-cast-macro spice-binary-op-macro
syn keyword scFunctionLibrary memo memoize type-factory any? all? error@+ error@ error mix deref refof delete
syn keyword scFunctionLibrary sign abs infinite-range range map zip enumerate unpack tupleof vectorof arrayof
syn keyword scFunctionLibrary unknownof va-append-va va-split va-map va-range va-option-branch va-lifold va-lfold
syn keyword scFunctionLibrary va-rifold va-rfold va-empty?  va-types va-join va-each va-each-reversed va-key imply
syn keyword scFunctionLibrary forward-imply forward-as xpcall require-from char getattr typeattr decons cons
syn keyword scFunctionLibrary rslice lsclice slice scope-macro block-scope-macro macro print report min max clamp
syn keyword scFunctionLibrary tie-const cond-const repr none?  symbol?  list?  empty?  type?  integer?  real?
syn keyword scFunctionLibrary pointer?  array?  vector?  extern?  tuple?  typename?  Symbol?  function-pointer?
syn keyword scFunctionLibrary integer-type?  real-type?  pointer-type?  function-type?  array-type?  tuple-type?
syn keyword scFunctionLibrary vector-type?  extern-type?  function-pointer-type?  typename-type?

syn keyword scFunctionItertools span dim bitdim imap collect each compose demux mux ->>
syn keyword scFunctionItertools cat flatten reduce drain limit gate take cascade

syn keyword scFunctionGLSL texelFetchOffset texelFetch textureProj textureLod textureOffset textureSamples
syn keyword scFunctionGLSL textureQueryLevels textureQueryLod textureSize texture local_size imageLoad imageStore
syn keyword scFunctionGLSL iimage1D iimage2D iimage3D iimageCube iimage2DRect iimage1DArray iimage2DArray
syn keyword scFunctionGLSL iimageCubeArray iimageBuffer iimage2DMSArray iimage2DMS uimage1D uimage2D uimage3D
syn keyword scFunctionGLSL uimageCube uimage2DRect uimage1DArray uimage2DArray uimageCubeArray uimageBuffer
syn keyword scFunctionGLSL uimage2DMSArray uimage2DMS image1D image2D image3D imageCube image2DRect image1DArray
syn keyword scFunctionGLSL image2DArray imageCubeArray imageBuffer image2DMSArray image2DMS

syn keyword scFunctionGLM dot transpose


" SFX Functions
syn keyword scFunctionSFXApi sc_refer_flags sc_refer_storage_class sc_anchor_offset sc_strip_qualifiers sc_parameter_new
syn keyword scFunctionSFXApi sc_template_new sc_template_set_body sc_template_append_parameter sc_template_set_inline
syn keyword scFunctionSFXApi sc_arguments_type_join sc_arguments_type_argcount sc_arguments_type_getarg sc_map_get
syn keyword scFunctionSFXApi sc_map_set sc_expand sc_global_new sc_realpath sc_is_file sc_eval sc_hash2x64 sc_hash
syn keyword scFunctionSFXApi sc_call_new sc_call_set_rawcall sc_call_append_argument sc_default_styler sc_if_new
syn keyword scFunctionSFXApi sc_if_append_then_clause sc_if_append_else_clause sc_dump_error sc_format_error sc_write
syn keyword scFunctionSFXApi sc_list_decons sc_list_cons sc_list_count sc_list_join sc_list_at sc_list_next sc_list_reverse
syn keyword scFunctionSFXApi sc_list_dump sc_list_repr sc_list_compare sc_expression_new sc_expression_append sc_argcount
syn keyword scFunctionSFXApi sc_getarglist sc_getarg sc_typify_template sc_typify sc_prove sc_compile_glsl sc_compile_spirv
syn keyword scFunctionSFXApi sc_compile_object sc_compile sc_empty_argument_list sc_argument_list_new sc_argument_list_append
syn keyword scFunctionSFXApi sc_extract_argument_list_new sc_extract_argument_new sc_refer_type sc_unique_type sc_view_type
syn keyword scFunctionSFXApi sc_key_type sc_arguments_type sc_tuple_type sc_union_type sc_array_type sc_integer_type sc_real_type
syn keyword scFunctionSFXApi sc_function_type sc_pointer_type sc_typename_type sc_image_type sc_sampled_image_type
syn keyword scFunctionSFXApi sc_pointer_type_get_storage_class sc_pointer_type_get_flags sc_pointer_type_get_element_type
syn keyword scFunctionSFXApi sc_pointer_type_set_storage_class sc_pointer_type_set_flags sc_pointer_type_set_element_type
syn keyword scFunctionSFXApi sc_function_type_return_type sc_function_type_raising sc_function_type_is_variadic
syn keyword scFunctionSFXApi sc_symbol_new_unique sc_symbol_new sc_symbol_is_variadic sc_type_field_index sc_type_element_at
syn keyword scFunctionSFXApi sc_type_at sc_type_next sc_type_is_superof sc_type_is_refer sc_type_is_default_suffix sc_type_key
syn keyword scFunctionSFXApi sc_type_storage sc_type_set_symbol sc_type_bitcountof sc_type_countof sc_type_kind sc_type_sizeof
syn keyword scFunctionSFXApi sc_type_alignof sc_type_local_at sc_type_is_opaque sc_type_string sc_typename_type_set_storage
syn keyword scFunctionSFXApi sc_typename_type_get_super sc_typename_type_set_super sc_keyed_new sc_string_buffer sc_string_join
syn keyword scFunctionSFXApi sc_string_match sc_string_lslice sc_string_rslice sc_string_count sc_string_compare
syn keyword scFunctionSFXApi sc_string_new_from_cstr sc_string_new sc_scope_new_subscope sc_scope_new sc_scope_clone_subscope
syn keyword scFunctionSFXApi sc_scope_clone sc_scope_set_symbol sc_scope_del_symbol sc_scope_at sc_scope_next
syn keyword scFunctionSFXApi sc_scope_get_docstring sc_scope_get_parent sc_scope_set_docstring sc_value_unwrap sc_value_wrap
syn keyword scFunctionSFXApi sc_value_is_pure sc_value_is_constant sc_value_tostring sc_value_compare sc_value_kind sc_value_anchor
syn keyword scFunctionSFXApi sc_value_ast_repr sc_value_content_repr sc_value_repr sc_value_qualified_type sc_value_type
syn keyword scFunctionSFXApi sc_valueref_tag sc_error_new sc_error_append_calltrace sc_integer_type_is_signed sc_const_int_new
syn keyword scFunctionSFXApi sc_const_int_extract sc_const_real_new sc_const_pointer_new sc_const_pointer_extract sc_const_aggregate_new
syn keyword scFunctionSFXBuiltin enter-solver-cli!& enter-solver-cli!  set-execution-mode!& set-execution-mode!
syn keyword scFunctionSFXBuiltin io-write!& io-write!  set-anchor!& set-anchor!  set-globals!& set-globals!
syn keyword scFunctionSFXBuiltin set-typename-storage!& set-typename-storage!  set-typename-super!&
syn keyword scFunctionSFXBuiltin set-typename-super!  set-typename-fields!& set-typename-fields!  compiler-error!&
syn keyword scFunctionSFXBuiltin compiler-error!  abort!& abort!  discard!& discard!  unreachable!& unreachable!
syn keyword scFunctionSFXBuiltin set-signal-abort!& set-signal-abort!  set-type-symbol!& set-type-symbol!
syn keyword scFunctionSFXBuiltin set-scope-symbol!& set-scope-symbol!  delete-type-symbol!& delete-type-symbol!
syn keyword scFunctionSFXBuiltin delete-scope-symbol!& delete-scope-symbol!
syn keyword scFunctionSFXLibrary syntax-error! error! todo!

syn keyword scOperatorSpecial __typecall __call __tobool __hash __unpack __getattr __repr __countof
syn keyword scOperatorSpecial __lslice __rslice __toptr __toref __neg __rcp __vector+ __vector-
syn keyword scOperatorSpecial __vector* __vector/ __vector% __vector& __vector| __vector^
syn keyword scOperatorSpecial __vector<< __vector>> __vector== __vector!= __vector<= __vector>=
syn keyword scOperatorSpecial __vector< __vector> __vector// __@ __static-rimply __static-imply
syn keyword scOperatorSpecial __rimply __ras __r== __r!= __r..  __r<= __r< __r>= __r> __r//
syn keyword scOperatorSpecial __r<< __r>> __r+ __r- __r* __r/ __r% __r& __r| __r~ __r^ __r=
syn keyword scOperatorSpecial __imply __as __== __!= __..  __<= __< __>= __> __// __<< __>>
syn keyword scOperatorSpecial __<< __>> __+ __- __* __/ __% __& __| __~ __^ __=


" Types
syn keyword scTypeBuiltin CompileStage Error Arguments CEnum CUnion CStruct noreturn voidstar
syn keyword scTypeBuiltin void bool usize ssize intptr u8 u16 u32 u64 i8 i16 i32 i64 f32 f64
syn keyword scTypeBuiltin type list string integer real pointer array vector tuple union typename
syn keyword scTypeBuiltin function SampledImage Image Sampler Symbol Unknown Label Closure
syn keyword scTypeBuiltin Frame Any Value Parameter Syntax Nothing Scope Anchor Builtin Exception
syn keyword scTypeBuiltin ReturnLabel

syn keyword scTypeLibrary OverloadedFunction Struct NullType SugarMacroFunction SugarMacro SpiceMacroFunction
syn keyword scTypeLibrary SpiceMacro FixedArray GrowingArray Array Generator Collector Capture FunctionChain
syn keyword scTypeLibrary immutable rawstring hash aggregate opaquepointer 

syn match scTypeGLM '\<[iudb]\?vec[234]\>'
syn match scTypeGLM '\<[iudb]\?mat[234]\(x[234]\)\?\>'

syn keyword scTypeGLSL gsampler
syn match   scTypeGLSL '\<[iug]\?sampler\(1D\|2D\|3D\|Cube\|2DRect\|1DArray\|2DArray\|CubeArray\|Buffer\|2DMS\|2DMSArray\)\>'


" Literals
syn keyword scBoolean true false
syn keyword scNothing none unnamed null
syn match scNumber '\<[+-]\?[0-9][0-9_]*\(\.[0-9][0-9_]*\)\?\([eE][+-]\?[0-9_]\+\)\?\ze\(\>\|:\)'
syn match scNumberType ':\zsf\(32\|64\)\>'
syn match scNumberType ':\zs[ui]\(8\|16\|32\|64\|128\|s\|size\)\>'

syn region scString start='"' end='"' skip='\\.' oneline
syn region scString start='^""""'hs=e-4 end='^' skip="^\( \{4}.*\| *\)$"
syn region scString start='^.\{1}""""'hs=e-3 end='^' skip="^\( \{5}.*\| *\)$"
syn region scString start='^.\{2}""""'hs=e-3 end='^' skip="^\( \{6}.*\| *\)$"
syn region scString start='^.\{3}""""'hs=e-3 end='^' skip="^\( \{7}.*\| *\)$"
syn region scString start='^.\{4}""""'hs=e-3 end='^' skip="^\( \{8}.*\| *\)$"
syn region scString start='^.\{5}""""'hs=e-3 end='^' skip="^\( \{9}.*\| *\)$"
syn region scString start='^.\{6}""""'hs=e-3 end='^' skip="^\( \{10}.*\| *\)$"
syn region scString start='^.\{7}""""'hs=e-3 end='^' skip="^\( \{11}.*\| *\)$"
syn region scString start='^.\{8}""""'hs=e-3 end='^' skip="^\( \{12}.*\| *\)$"
syn region scString start='^.\{9}""""'hs=e-3 end='^' skip="^\( \{13}.*\| *\)$"
syn region scString start='^.\{10}""""'hs=e-3 end='^' skip="^\( \{14}.*\| *\)$"
syn region scString start='^.\{11}""""'hs=e-3 end='^' skip="^\( \{15}.*\| *\)$"
syn region scString start='^.\{12}""""'hs=e-3 end='^' skip="^\( \{16}.*\| *\)$"
syn region scString start='^.\{13}""""'hs=e-3 end='^' skip="^\( \{17}.*\| *\)$"
syn region scString start='^.\{14}""""'hs=e-3 end='^' skip="^\( \{18}.*\| *\)$"
syn region scString start='^.\{15}""""'hs=e-3 end='^' skip="^\( \{19}.*\| *\)$"
syn region scString start='^.\{16}""""'hs=e-3 end='^' skip="^\( \{20}.*\| *\)$"
syn region scString start='^.\{17}""""'hs=e-3 end='^' skip="^\( \{21}.*\| *\)$"
syn region scString start='^.\{18}""""'hs=e-3 end='^' skip="^\( \{22}.*\| *\)$"
syn region scString start='^.\{19}""""'hs=e-3 end='^' skip="^\( \{23}.*\| *\)$"
syn region scString start='^.\{20}""""'hs=e-3 end='^' skip="^\( \{24}.*\| *\)$"
syn region scString start='^.\{21}""""'hs=e-3 end='^' skip="^\( \{25}.*\| *\)$"
syn region scString start='^.\{22}""""'hs=e-3 end='^' skip="^\( \{26}.*\| *\)$"
syn region scString start='^.\{23}""""'hs=e-3 end='^' skip="^\( \{27}.*\| *\)$"
syn region scString start='^.\{24}""""'hs=e-3 end='^' skip="^\( \{28}.*\| *\)$"
syn region scString start='^.\{25}""""'hs=e-3 end='^' skip="^\( \{29}.*\| *\)$"
syn region scString start='^.\{26}""""'hs=e-3 end='^' skip="^\( \{30}.*\| *\)$"
syn region scString start='^.\{27}""""'hs=e-3 end='^' skip="^\( \{31}.*\| *\)$"
syn region scString start='^.\{28}""""'hs=e-3 end='^' skip="^\( \{32}.*\| *\)$"
syn region scString start='^.\{29}""""'hs=e-3 end='^' skip="^\( \{33}.*\| *\)$"
syn region scString start='^.\{30}""""'hs=e-3 end='^' skip="^\( \{34}.*\| *\)$"
syn region scString start='^.\{31}""""'hs=e-3 end='^' skip="^\( \{35}.*\| *\)$"
syn region scString start='^.\{32}""""'hs=e-3 end='^' skip="^\( \{36}.*\| *\)$"
syn region scString start='^.\{33}""""'hs=e-3 end='^' skip="^\( \{37}.*\| *\)$"
syn region scString start='^.\{34}""""'hs=e-3 end='^' skip="^\( \{38}.*\| *\)$"
syn region scString start='^.\{35}""""'hs=e-3 end='^' skip="^\( \{39}.*\| *\)$"
syn region scString start='^.\{36}""""'hs=e-3 end='^' skip="^\( \{40}.*\| *\)$"
syn region scString start='^.\{37}""""'hs=e-3 end='^' skip="^\( \{41}.*\| *\)$"
syn region scString start='^.\{38}""""'hs=e-3 end='^' skip="^\( \{42}.*\| *\)$"
syn region scString start='^.\{39}""""'hs=e-3 end='^' skip="^\( \{43}.*\| *\)$"
syn region scString start='^.\{40}""""'hs=e-3 end='^' skip="^\( \{44}.*\| *\)$"
syn region scString start='^.\{41}""""'hs=e-3 end='^' skip="^\( \{45}.*\| *\)$"
syn region scString start='^.\{42}""""'hs=e-3 end='^' skip="^\( \{46}.*\| *\)$"
syn region scString start='^.\{43}""""'hs=e-3 end='^' skip="^\( \{47}.*\| *\)$"
syn region scString start='^.\{44}""""'hs=e-3 end='^' skip="^\( \{48}.*\| *\)$"
syn region scString start='^.\{45}""""'hs=e-3 end='^' skip="^\( \{49}.*\| *\)$"
syn region scString start='^.\{46}""""'hs=e-3 end='^' skip="^\( \{50}.*\| *\)$"
syn region scString start='^.\{47}""""'hs=e-3 end='^' skip="^\( \{51}.*\| *\)$"
syn region scString start='^.\{48}""""'hs=e-3 end='^' skip="^\( \{52}.*\| *\)$"
syn region scString start='^.\{49}""""'hs=e-3 end='^' skip="^\( \{53}.*\| *\)$"
syn region scString start='^.\{50}""""'hs=e-3 end='^' skip="^\( \{54}.*\| *\)$"
syn region scString start='^.\{51}""""'hs=e-3 end='^' skip="^\( \{55}.*\| *\)$"
syn region scString start='^.\{52}""""'hs=e-3 end='^' skip="^\( \{56}.*\| *\)$"
syn region scString start='^.\{53}""""'hs=e-3 end='^' skip="^\( \{57}.*\| *\)$"
syn region scString start='^.\{54}""""'hs=e-3 end='^' skip="^\( \{58}.*\| *\)$"
syn region scString start='^.\{55}""""'hs=e-3 end='^' skip="^\( \{59}.*\| *\)$"
syn region scString start='^.\{56}""""'hs=e-3 end='^' skip="^\( \{60}.*\| *\)$"
syn region scString start='^.\{57}""""'hs=e-3 end='^' skip="^\( \{61}.*\| *\)$"
syn region scString start='^.\{58}""""'hs=e-3 end='^' skip="^\( \{62}.*\| *\)$"
syn region scString start='^.\{59}""""'hs=e-3 end='^' skip="^\( \{63}.*\| *\)$"
syn region scString start='^.\{60}""""'hs=e-3 end='^' skip="^\( \{64}.*\| *\)$"
syn region scString start='^.\{61}""""'hs=e-3 end='^' skip="^\( \{65}.*\| *\)$"
syn region scString start='^.\{62}""""'hs=e-3 end='^' skip="^\( \{66}.*\| *\)$"
syn region scString start='^.\{63}""""'hs=e-3 end='^' skip="^\( \{67}.*\| *\)$"
syn region scString start='^.\{64}""""'hs=e-3 end='^' skip="^\( \{68}.*\| *\)$"
syn region scString start='^.\{65}""""'hs=e-3 end='^' skip="^\( \{69}.*\| *\)$"
syn region scString start='^.\{66}""""'hs=e-3 end='^' skip="^\( \{70}.*\| *\)$"
syn region scString start='^.\{67}""""'hs=e-3 end='^' skip="^\( \{71}.*\| *\)$"
syn region scString start='^.\{68}""""'hs=e-3 end='^' skip="^\( \{72}.*\| *\)$"
syn region scString start='^.\{69}""""'hs=e-3 end='^' skip="^\( \{73}.*\| *\)$"
syn region scString start='^.\{70}""""'hs=e-3 end='^' skip="^\( \{74}.*\| *\)$"
syn region scString start='^.\{71}""""'hs=e-3 end='^' skip="^\( \{75}.*\| *\)$"
syn region scString start='^.\{72}""""'hs=e-3 end='^' skip="^\( \{76}.*\| *\)$"
syn region scString start='^.\{73}""""'hs=e-3 end='^' skip="^\( \{77}.*\| *\)$"
syn region scString start='^.\{74}""""'hs=e-3 end='^' skip="^\( \{78}.*\| *\)$"
syn region scString start='^.\{75}""""'hs=e-3 end='^' skip="^\( \{79}.*\| *\)$"
syn region scString start='^.\{76}""""'hs=e-3 end='^' skip="^\( \{80}.*\| *\)$"
syn region scString start='^.\{77}""""'hs=e-3 end='^' skip="^\( \{81}.*\| *\)$"
syn region scString start='^.\{78}""""'hs=e-3 end='^' skip="^\( \{82}.*\| *\)$"
syn region scString start='^.\{79}""""'hs=e-3 end='^' skip="^\( \{83}.*\| *\)$"

syn region scComment start='#' end='^' skip="^\( \{1}.*\| *\)$" contains=scTodo
syn region scComment start='^.\{1}#'hs=e end='^' skip="^\( \{2}.*\| *\)$" contains=scTodo
syn region scComment start='^.\{2}#'hs=e end='^' skip="^\( \{3}.*\| *\)$" contains=scTodo
syn region scComment start='^.\{3}#'hs=e end='^' skip="^\( \{4}.*\| *\)$" contains=scTodo
syn region scComment start='^.\{4}#'hs=e end='^' skip="^\( \{5}.*\| *\)$" contains=scTodo
syn region scComment start='^.\{5}#'hs=e end='^' skip="^\( \{6}.*\| *\)$" contains=scTodo
syn region scComment start='^.\{6}#'hs=e end='^' skip="^\( \{7}.*\| *\)$" contains=scTodo
syn region scComment start='^.\{7}#'hs=e end='^' skip="^\( \{8}.*\| *\)$" contains=scTodo
syn region scComment start='^.\{8}#'hs=e end='^' skip="^\( \{9}.*\| *\)$" contains=scTodo
syn region scComment start='^.\{9}#'hs=e end='^' skip="^\( \{10}.*\| *\)$" contains=scTodo
syn region scComment start='^.\{10}#'hs=e end='^' skip="^\( \{11}.*\| *\)$" contains=scTodo
syn region scComment start='^.\{11}#'hs=e end='^' skip="^\( \{12}.*\| *\)$" contains=scTodo
syn region scComment start='^.\{12}#'hs=e end='^' skip="^\( \{13}.*\| *\)$" contains=scTodo
syn region scComment start='^.\{13}#'hs=e end='^' skip="^\( \{14}.*\| *\)$" contains=scTodo
syn region scComment start='^.\{14}#'hs=e end='^' skip="^\( \{15}.*\| *\)$" contains=scTodo
syn region scComment start='^.\{15}#'hs=e end='^' skip="^\( \{16}.*\| *\)$" contains=scTodo
syn region scComment start='^.\{16}#'hs=e end='^' skip="^\( \{17}.*\| *\)$" contains=scTodo
syn region scComment start='^.\{17}#'hs=e end='^' skip="^\( \{18}.*\| *\)$" contains=scTodo
syn region scComment start='^.\{18}#'hs=e end='^' skip="^\( \{19}.*\| *\)$" contains=scTodo
syn region scComment start='^.\{19}#'hs=e end='^' skip="^\( \{20}.*\| *\)$" contains=scTodo
syn region scComment start='^.\{20}#'hs=e end='^' skip="^\( \{21}.*\| *\)$" contains=scTodo
syn region scComment start='^.\{21}#'hs=e end='^' skip="^\( \{22}.*\| *\)$" contains=scTodo
syn region scComment start='^.\{22}#'hs=e end='^' skip="^\( \{23}.*\| *\)$" contains=scTodo
syn region scComment start='^.\{23}#'hs=e end='^' skip="^\( \{24}.*\| *\)$" contains=scTodo
syn region scComment start='^.\{24}#'hs=e end='^' skip="^\( \{25}.*\| *\)$" contains=scTodo
syn region scComment start='^.\{25}#'hs=e end='^' skip="^\( \{26}.*\| *\)$" contains=scTodo
syn region scComment start='^.\{26}#'hs=e end='^' skip="^\( \{27}.*\| *\)$" contains=scTodo
syn region scComment start='^.\{27}#'hs=e end='^' skip="^\( \{28}.*\| *\)$" contains=scTodo
syn region scComment start='^.\{28}#'hs=e end='^' skip="^\( \{29}.*\| *\)$" contains=scTodo
syn region scComment start='^.\{29}#'hs=e end='^' skip="^\( \{30}.*\| *\)$" contains=scTodo
syn region scComment start='^.\{30}#'hs=e end='^' skip="^\( \{31}.*\| *\)$" contains=scTodo
syn region scComment start='^.\{31}#'hs=e end='^' skip="^\( \{32}.*\| *\)$" contains=scTodo
syn region scComment start='^.\{32}#'hs=e end='^' skip="^\( \{33}.*\| *\)$" contains=scTodo
syn region scComment start='^.\{33}#'hs=e end='^' skip="^\( \{34}.*\| *\)$" contains=scTodo
syn region scComment start='^.\{34}#'hs=e end='^' skip="^\( \{35}.*\| *\)$" contains=scTodo
syn region scComment start='^.\{35}#'hs=e end='^' skip="^\( \{36}.*\| *\)$" contains=scTodo
syn region scComment start='^.\{36}#'hs=e end='^' skip="^\( \{37}.*\| *\)$" contains=scTodo
syn region scComment start='^.\{37}#'hs=e end='^' skip="^\( \{38}.*\| *\)$" contains=scTodo
syn region scComment start='^.\{38}#'hs=e end='^' skip="^\( \{39}.*\| *\)$" contains=scTodo
syn region scComment start='^.\{39}#'hs=e end='^' skip="^\( \{40}.*\| *\)$" contains=scTodo
syn region scComment start='^.\{40}#'hs=e end='^' skip="^\( \{41}.*\| *\)$" contains=scTodo
syn region scComment start='^.\{41}#'hs=e end='^' skip="^\( \{42}.*\| *\)$" contains=scTodo
syn region scComment start='^.\{42}#'hs=e end='^' skip="^\( \{43}.*\| *\)$" contains=scTodo
syn region scComment start='^.\{43}#'hs=e end='^' skip="^\( \{44}.*\| *\)$" contains=scTodo
syn region scComment start='^.\{44}#'hs=e end='^' skip="^\( \{45}.*\| *\)$" contains=scTodo
syn region scComment start='^.\{45}#'hs=e end='^' skip="^\( \{46}.*\| *\)$" contains=scTodo
syn region scComment start='^.\{46}#'hs=e end='^' skip="^\( \{47}.*\| *\)$" contains=scTodo
syn region scComment start='^.\{47}#'hs=e end='^' skip="^\( \{48}.*\| *\)$" contains=scTodo
syn region scComment start='^.\{48}#'hs=e end='^' skip="^\( \{49}.*\| *\)$" contains=scTodo
syn region scComment start='^.\{49}#'hs=e end='^' skip="^\( \{50}.*\| *\)$" contains=scTodo
syn region scComment start='^.\{50}#'hs=e end='^' skip="^\( \{51}.*\| *\)$" contains=scTodo
syn region scComment start='^.\{51}#'hs=e end='^' skip="^\( \{52}.*\| *\)$" contains=scTodo
syn region scComment start='^.\{52}#'hs=e end='^' skip="^\( \{53}.*\| *\)$" contains=scTodo
syn region scComment start='^.\{53}#'hs=e end='^' skip="^\( \{54}.*\| *\)$" contains=scTodo
syn region scComment start='^.\{54}#'hs=e end='^' skip="^\( \{55}.*\| *\)$" contains=scTodo
syn region scComment start='^.\{55}#'hs=e end='^' skip="^\( \{56}.*\| *\)$" contains=scTodo
syn region scComment start='^.\{56}#'hs=e end='^' skip="^\( \{57}.*\| *\)$" contains=scTodo
syn region scComment start='^.\{57}#'hs=e end='^' skip="^\( \{58}.*\| *\)$" contains=scTodo
syn region scComment start='^.\{58}#'hs=e end='^' skip="^\( \{59}.*\| *\)$" contains=scTodo
syn region scComment start='^.\{59}#'hs=e end='^' skip="^\( \{60}.*\| *\)$" contains=scTodo
syn region scComment start='^.\{60}#'hs=e end='^' skip="^\( \{61}.*\| *\)$" contains=scTodo
syn region scComment start='^.\{61}#'hs=e end='^' skip="^\( \{62}.*\| *\)$" contains=scTodo
syn region scComment start='^.\{62}#'hs=e end='^' skip="^\( \{63}.*\| *\)$" contains=scTodo
syn region scComment start='^.\{63}#'hs=e end='^' skip="^\( \{64}.*\| *\)$" contains=scTodo
syn region scComment start='^.\{64}#'hs=e end='^' skip="^\( \{65}.*\| *\)$" contains=scTodo
syn region scComment start='^.\{65}#'hs=e end='^' skip="^\( \{66}.*\| *\)$" contains=scTodo
syn region scComment start='^.\{66}#'hs=e end='^' skip="^\( \{67}.*\| *\)$" contains=scTodo
syn region scComment start='^.\{67}#'hs=e end='^' skip="^\( \{68}.*\| *\)$" contains=scTodo
syn region scComment start='^.\{68}#'hs=e end='^' skip="^\( \{69}.*\| *\)$" contains=scTodo
syn region scComment start='^.\{69}#'hs=e end='^' skip="^\( \{70}.*\| *\)$" contains=scTodo
syn region scComment start='^.\{70}#'hs=e end='^' skip="^\( \{71}.*\| *\)$" contains=scTodo
syn region scComment start='^.\{71}#'hs=e end='^' skip="^\( \{72}.*\| *\)$" contains=scTodo
syn region scComment start='^.\{72}#'hs=e end='^' skip="^\( \{73}.*\| *\)$" contains=scTodo
syn region scComment start='^.\{73}#'hs=e end='^' skip="^\( \{74}.*\| *\)$" contains=scTodo
syn region scComment start='^.\{74}#'hs=e end='^' skip="^\( \{75}.*\| *\)$" contains=scTodo
syn region scComment start='^.\{75}#'hs=e end='^' skip="^\( \{76}.*\| *\)$" contains=scTodo
syn region scComment start='^.\{76}#'hs=e end='^' skip="^\( \{77}.*\| *\)$" contains=scTodo
syn region scComment start='^.\{77}#'hs=e end='^' skip="^\( \{78}.*\| *\)$" contains=scTodo
syn region scComment start='^.\{78}#'hs=e end='^' skip="^\( \{79}.*\| *\)$" contains=scTodo
syn region scComment start='^.\{79}#'hs=e end='^' skip="^\( \{80}.*\| *\)$" contains=scTodo

syn keyword scTodo TODO FIXME
