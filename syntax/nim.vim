" if exists("b:current_syntax")
"   finish
" endif
" if version < 600
"     syntax
" endif

let b:current_syntax = "nim"


" Keywords
syntax keyword nimKeyword let const var static
syntax keyword nimKeyword addr asm atomic bind cast defer discard
syntax keyword nimKeyword do expr stmt end generic mixin iterator
syntax keyword nimKeyword typedesc openarray out ptr ref return using 
syntax keyword nimKeyword varargs with without yield nil

syntax keyword nimRepeat       for    while
syntax keyword nimBoolean      true   false
syntax keyword nimConditional  if     elif    else    case      continue break
syntax keyword nimDefine       from   as
syntax keyword nimException    try    except  finally raise
syntax keyword nimInclude      import include export
syntax keyword nimLabel        of
syntax keyword nimMacro        macro
syntax keyword nimPreCondit    when   block
syntax keyword nimStorage      tuple  enum    object  interface concept  distinct any
syntax keyword nimStorageClass type
syntax keyword nimTypedef      func   proc    method  template  converter

syntax keyword nimTodo TODO FIXME


" Operators
syntax match nimOperatorAll "[&:?!@<>\|\~\.\^\=\/\+\-\*\$%]\+"
syntax keyword nimOperator and or not xor shl shr div mod in notin is isnot of.
syntax keyword nimOP9 div mod shl shr
syntax keyword nimOP5 in notin is isnot not of
syntax keyword nimOP4 and
syntax keyword nimOP3 or xor
syntax match nimOP10        "[\$\^]"
syntax match nimOP9         "[\*\%\\\/]"
syntax match nimOP6         "\."
syntax match nimOP5         "[=|<|>]"
syntax match nimOP5         "\v([!<>]\=)"
syntax match nimOP2         "[@:?]"
syntax match nimOP1         "[\*+\/%&]="
syntax match nimOP0         "=>"
syntax match nimOP0         "\->"


" Comments
syntax match nimComment "\v#.*$" contains=nimTodo


syntax keyword nimBuiltinFunction assert echo debugEcho GC_addCycleRoot GC_disable
syntax keyword nimBuiltinFunction GC_disableMarkAndSweep GC_enable GC_enableMarkAndSweep GC_fullCollect GC_getStatistics
syntax keyword nimBuiltinFunction GC_ref GC_setStrategy GC_unref abs add addAndFetch addQuitProc alloc alloc0 allocCStringArray
syntax keyword nimBuiltinFunction allocShared allocShared0 astToStr atomicDec atomicInc card cas chr clamp close cmp
syntax keyword nimBuiltinFunction compileOption compiles copy copyMem cpuRelax create createShared createSharedU
syntax keyword nimBuiltinFunction createU cstringArrayToSeq dealloc deallocCStringArray deallocShared debugEcho dec
syntax keyword nimBuiltinFunction declared declaredInScope deepCopy defined definedInScope del delete echo endOfFile
syntax keyword nimBuiltinFunction equalMem excl failedAssertImpl find finished flushFile freeShared gcInvariant getCurrentException
syntax keyword nimBuiltinFunction getCurrentExceptionMsg getFileHandle getFilePos getFileSize getFrame getFreeMem
syntax keyword nimBuiltinFunction getOccupiedMem getRefcount getStackTrace getTotalMem getTypeInfo gorge high inc
syntax keyword nimBuiltinFunction incl insert instantiationInfo internalNew isNil iterToProc len likely locals low
syntax keyword nimBuiltinFunction max min moveMem new newSeq newString newStringOfCap newWideCString onRaise open
syntax keyword nimBuiltinFunction ord pop pred procCall quit raiseAssert rawEnv rawProc readAll readBuffer readBytes
syntax keyword nimBuiltinFunction readChar readChars readFile readLine realloc reallocShared reopen repr reset resize
syntax keyword nimBuiltinFunction resizeShared safeAdd setControlCHook setCurrentException setFilePos setFrame setLen
syntax keyword nimBuiltinFunction setupForeignThreadGc shallow shallowCopy sizeof slurp stackTraceAvailable staticExec
syntax keyword nimBuiltinFunction staticRead substr succ swap toBiggestFloat toBiggestInt toFloat toInt toU16 toU32
syntax keyword nimBuiltinFunction toU8 unlikely unsafeAddr unsafeNew write writeBuffer writeBytes writeChars writeFile
syntax keyword nimBuiltinFunction writeLine writeLn writeStackTrace xlen ze ze64 zeroMem accumulateResult currentSourcePath
syntax keyword nimBuiltinFunction doAssert excl incl newException onFailedAssert stdmsg


syntax keyword nimBuiltinIterators countdown countup fieldPairs fields items lines mitems mpairs pairs

syntax keyword nimBuiltinType int int8 int16 int32 int64 uint uint8 uint16 uint32 uint64 float float32 float64 bool char string cstring pointer Ordinal ptr ref expr stmt typedesc void auto any untyped typed SomeSignedInt SomeUnsignedInt SomeInteger SomeOrdinal SomeReal SomeNumber range array openArray varargs seq set Slice shared guarded byte Natural Positive RootObj RootRef RootEffect TimeEffect IOEffect ReadIOEffect WriteIOEffect ExecIOEffect Exception SystemError IOError OSError LibraryError ResourceExhaustedError ArithmeticError DivByZeroError OverflowError AccessViolationError AssertionError ValueError KeyError OutOfMemError IndexError FieldError RangeError StackOverflowError ReraiseError ObjectAssignmentError ObjectConversionError FloatingPointError FloatInvalidOpError FloatDivByZeroError FloatOverflowError FloatUnderflowError FloatInexactError DeadThreadError TResult Endianness TaintedString LibHandle ProcAddr ByteAddress BiggestInt BiggestFloat clong culong cchar cschar cshort cint csize clonglong cfloat cdouble clongdouble cuchar cushort cuint culonglong cstringArray PFloat32 PFloat64 PInt64 PInt32 GC_Strategy PFrame TFrame File FileMode FileHandle THINSTANCE AlignType RefCount Utf16Char WideCString NimNode
syntax keyword nimGlobals programResult globalRaiseHook localRaiseHook outOfMemHook stdin stdout stderr errorMessageWriter
syntax keyword nimGlobals nimvm
syntax keyword nimGlobals on off appType NoFakeVars isMainModule CompileDate CompileTime cpuEndian hostOS hostCPU QuitSuccess QuitFailure Inf NegInf NaN NimMajor NimMinor NimPatch NimVersion nativeStackTraceSupported


" Numbers
syntax match nimNumber "\v[0-9_]+((i|I|u|U)(8|16|32|64))?>"
syntax match nimFloat "\v[0-9_]+(f|d|F|D)>"
syntax match nimFloat "\v[0-9_]+\.[0-9]+(f|d|F|D)>"
syntax match nimFloat "\v[0-9_]+((f|F)(32|64|128))>"
syntax match nimFloat "\v[0-9_]+\.[0-9]+((f|F)(32|64|128))?>"


" Tokens
syntax match nimToken "`"
syntax match nimToken "("
syntax match nimToken ")"
syntax match nimToken "{"
syntax match nimToken "}"
syntax match nimToken "\["
syntax match nimToken "\]"
syntax match nimToken ","
syntax match nimToken ";"
syntax match nimToken "\[\."
syntax match nimToken "\.\]"
syntax match nimToken "{\."
syntax match nimToken "\.}"
syntax match nimToken "(\."
syntax match nimToken "\.)"


" String
syntax region nimString start=/\v"/ skip=/\v\\./ end=/\v"/

" Linking
highlight link nimBuiltinIterators Typedef
highlight link nimBuiltinFunction  Function
highlight link nimBuiltinType      Type
highlight link nimComment          Comment
highlight link nimKeyword          Keyword
highlight link nimTodo             Todo
highlight link nimOperatorAll      Operator
highlight link nimOP10             Operator10
highlight link nimOP9              Operator9
highlight link nimOP8              Operator8
highlight link nimOP7              Operator7
highlight link nimOP6              Operator6
highlight link nimOP5              Operator5
highlight link nimOP4              Operator4
highlight link nimOP3              Operator3
highlight link nimOP2              Operator2
highlight link nimOP1              Operator1
highlight link nimOP0              Operator0
highlight link nimToken            Delimiter
highlight link nimSuffix           SpecialChar
highlight link nimBoolean          Boolean
highlight link nimFloat            Float
highlight link nimString           String
highlight link nimChar             Char
highlight link nimNumber           Number
highlight link nimString String

highlight link nimConditional  Conditional
highlight link nimConstant     Constant
highlight link nimDefine       Define
highlight link nimException    Exception
highlight link nimGlobals      Constant
highlight link nimInclude      Include
highlight link nimLabel        Label
highlight link nimMacro        Macro
highlight link nimPreCondit    PreCondit
highlight link nimPreProc      PreProc
highlight link nimRepeat       Repeat
highlight link nimStorage      Structure
highlight link nimStorageClass StorageClass
highlight link nimTypedef      Typedef
