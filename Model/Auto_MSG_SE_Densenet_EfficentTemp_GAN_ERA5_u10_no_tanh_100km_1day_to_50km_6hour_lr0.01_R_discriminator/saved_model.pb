│╨
╕И
D
AddV2
x"T
y"T
z"T"
Ttype:
2	АР
^
AssignVariableOp
resource
value"dtype"
dtypetype"
validate_shapebool( И
╝
AvgPool

value"T
output"T"
ksize	list(int)(0"
strides	list(int)(0""
paddingstring:
SAMEVALID"-
data_formatstringNHWC:
NHWCNCHW"
Ttype:
2
~
BiasAdd

value"T	
bias"T
output"T" 
Ttype:
2	"-
data_formatstringNHWC:
NHWCNCHW
h
ConcatV2
values"T*N
axis"Tidx
output"T"
Nint(0"	
Ttype"
Tidxtype0:
2	
8
Const
output"dtype"
valuetensor"
dtypetype
Ы
Conv2D

input"T
filter"T
output"T"
Ttype:	
2"
strides	list(int)"
use_cudnn_on_gpubool(",
paddingstring:
SAMEVALIDEXPLICIT""
explicit_paddings	list(int)
 "-
data_formatstringNHWC:
NHWCNCHW" 
	dilations	list(int)

√
FusedBatchNormV3
x"T

scale"U
offset"U	
mean"U
variance"U
y"T

batch_mean"U
batch_variance"U
reserve_space_1"U
reserve_space_2"U
reserve_space_3"U"
Ttype:
2"
Utype:
2"
epsilonfloat%╖╤8"&
exponential_avg_factorfloat%  А?";
data_formatstringNHWC:
NHWCNCHWNDHWCNCDHW"
is_trainingbool(
.
Identity

input"T
output"T"	
Ttype
\
	LeakyRelu
features"T
activations"T"
alphafloat%═╠L>"
Ttype0:
2
q
MatMul
a"T
b"T
product"T"
transpose_abool( "
transpose_bbool( "
Ttype:

2	
>
Maximum
x"T
y"T
z"T"
Ttype:
2	
Н
Mean

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( " 
Ttype:
2	"
Tidxtype0:
2	
Ж
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool("
allow_missing_filesbool( И
?
Mul
x"T
y"T
z"T"
Ttype:
2	Р

NoOp
M
Pack
values"T*N
output"T"
Nint(0"	
Ttype"
axisint 
C
Placeholder
output"dtype"
dtypetype"
shapeshape:
@
ReadVariableOp
resource
value"dtype"
dtypetypeИ
@
RealDiv
x"T
y"T
z"T"
Ttype:
2	
[
Reshape
tensor"T
shape"Tshape
output"T"	
Ttype"
Tshapetype0:
2	
o
	RestoreV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0И
l
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0И
?
Select
	condition

t"T
e"T
output"T"	
Ttype
P
Shape

input"T
output"out_type"	
Ttype"
out_typetype0:
2	
H
ShardedFilename
basename	
shard

num_shards
filename
-
Sqrt
x"T
y"T"
Ttype:

2
7
Square
x"T
y"T"
Ttype:
2	
┴
StatefulPartitionedCall
args2Tin
output2Tout"
Tin
list(type)("
Tout
list(type)("	
ffunc"
configstring "
config_protostring "
executor_typestring Ии
@
StaticRegexFullMatch	
input

output
"
patternstring
ў
StridedSlice

input"T
begin"Index
end"Index
strides"Index
output"T"	
Ttype"
Indextype:
2	"

begin_maskint "
end_maskint "
ellipsis_maskint "
new_axis_maskint "
shrink_axis_maskint 
N

StringJoin
inputs*N

output"
Nint(0"
	separatorstring 
<
Sub
x"T
y"T
z"T"
Ttype:
2	
Ц
VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 И"serve*2.10.02v2.10.0-rc3-6-g359c3cdfc5f8ду
^
countVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_namecount
W
count/Read/ReadVariableOpReadVariableOpcount*
_output_shapes
: *
dtype0
^
totalVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nametotal
W
total/Read/ReadVariableOpReadVariableOptotal*
_output_shapes
: *
dtype0
b
count_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	count_1
[
count_1/Read/ReadVariableOpReadVariableOpcount_1*
_output_shapes
: *
dtype0
b
total_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	total_1
[
total_1/Read/ReadVariableOpReadVariableOptotal_1*
_output_shapes
: *
dtype0
l
SGD/momentumVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameSGD/momentum
e
 SGD/momentum/Read/ReadVariableOpReadVariableOpSGD/momentum*
_output_shapes
: *
dtype0
v
SGD/learning_rateVarHandleOp*
_output_shapes
: *
dtype0*
shape: *"
shared_nameSGD/learning_rate
o
%SGD/learning_rate/Read/ReadVariableOpReadVariableOpSGD/learning_rate*
_output_shapes
: *
dtype0
f
	SGD/decayVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	SGD/decay
_
SGD/decay/Read/ReadVariableOpReadVariableOp	SGD/decay*
_output_shapes
: *
dtype0
d
SGD/iterVarHandleOp*
_output_shapes
: *
dtype0	*
shape: *
shared_name
SGD/iter
]
SGD/iter/Read/ReadVariableOpReadVariableOpSGD/iter*
_output_shapes
: *
dtype0	
p
dense_5/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_5/bias
i
 dense_5/bias/Read/ReadVariableOpReadVariableOpdense_5/bias*
_output_shapes
:*
dtype0
x
dense_5/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*
shared_namedense_5/kernel
q
"dense_5/kernel/Read/ReadVariableOpReadVariableOpdense_5/kernel*
_output_shapes

:*
dtype0
p
dense_4/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_4/bias
i
 dense_4/bias/Read/ReadVariableOpReadVariableOpdense_4/bias*
_output_shapes
:*
dtype0
z
dense_4/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
А╙
*
shared_namedense_4/kernel
s
"dense_4/kernel/Read/ReadVariableOpReadVariableOpdense_4/kernel* 
_output_shapes
:
А╙
*
dtype0
t
conv2d_17/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_nameconv2d_17/bias
m
"conv2d_17/bias/Read/ReadVariableOpReadVariableOpconv2d_17/bias*
_output_shapes
:*
dtype0
Д
conv2d_17/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*!
shared_nameconv2d_17/kernel
}
$conv2d_17/kernel/Read/ReadVariableOpReadVariableOpconv2d_17/kernel*&
_output_shapes
:*
dtype0
М
group_normalization_1/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:*+
shared_namegroup_normalization_1/beta
Е
.group_normalization_1/beta/Read/ReadVariableOpReadVariableOpgroup_normalization_1/beta*
_output_shapes
:*
dtype0
О
group_normalization_1/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:*,
shared_namegroup_normalization_1/gamma
З
/group_normalization_1/gamma/Read/ReadVariableOpReadVariableOpgroup_normalization_1/gamma*
_output_shapes
:*
dtype0
t
conv2d_16/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_nameconv2d_16/bias
m
"conv2d_16/bias/Read/ReadVariableOpReadVariableOpconv2d_16/bias*
_output_shapes
:*
dtype0
Д
conv2d_16/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*!
shared_nameconv2d_16/kernel
}
$conv2d_16/kernel/Read/ReadVariableOpReadVariableOpconv2d_16/kernel*&
_output_shapes
:*
dtype0
Ю
#batch_normalization/moving_varianceVarHandleOp*
_output_shapes
: *
dtype0*
shape:*4
shared_name%#batch_normalization/moving_variance
Ч
7batch_normalization/moving_variance/Read/ReadVariableOpReadVariableOp#batch_normalization/moving_variance*
_output_shapes
:*
dtype0
Ц
batch_normalization/moving_meanVarHandleOp*
_output_shapes
: *
dtype0*
shape:*0
shared_name!batch_normalization/moving_mean
П
3batch_normalization/moving_mean/Read/ReadVariableOpReadVariableOpbatch_normalization/moving_mean*
_output_shapes
:*
dtype0
И
batch_normalization/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:*)
shared_namebatch_normalization/beta
Б
,batch_normalization/beta/Read/ReadVariableOpReadVariableOpbatch_normalization/beta*
_output_shapes
:*
dtype0
К
batch_normalization/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:**
shared_namebatch_normalization/gamma
Г
-batch_normalization/gamma/Read/ReadVariableOpReadVariableOpbatch_normalization/gamma*
_output_shapes
:*
dtype0
t
conv2d_15/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_nameconv2d_15/bias
m
"conv2d_15/bias/Read/ReadVariableOpReadVariableOpconv2d_15/bias*
_output_shapes
:*
dtype0
Д
conv2d_15/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*!
shared_nameconv2d_15/kernel
}
$conv2d_15/kernel/Read/ReadVariableOpReadVariableOpconv2d_15/kernel*&
_output_shapes
:*
dtype0
И
group_normalization/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:*)
shared_namegroup_normalization/beta
Б
,group_normalization/beta/Read/ReadVariableOpReadVariableOpgroup_normalization/beta*
_output_shapes
:*
dtype0
К
group_normalization/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:**
shared_namegroup_normalization/gamma
Г
-group_normalization/gamma/Read/ReadVariableOpReadVariableOpgroup_normalization/gamma*
_output_shapes
:*
dtype0
t
conv2d_14/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_nameconv2d_14/bias
m
"conv2d_14/bias/Read/ReadVariableOpReadVariableOpconv2d_14/bias*
_output_shapes
:*
dtype0
Д
conv2d_14/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*!
shared_nameconv2d_14/kernel
}
$conv2d_14/kernel/Read/ReadVariableOpReadVariableOpconv2d_14/kernel*&
_output_shapes
:*
dtype0
t
conv2d_13/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_nameconv2d_13/bias
m
"conv2d_13/bias/Read/ReadVariableOpReadVariableOpconv2d_13/bias*
_output_shapes
:*
dtype0
Д
conv2d_13/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*!
shared_nameconv2d_13/kernel
}
$conv2d_13/kernel/Read/ReadVariableOpReadVariableOpconv2d_13/kernel*&
_output_shapes
:*
dtype0
М
serving_default_input_2Placeholder*0
_output_shapes
:         t╝*
dtype0*%
shape:         t╝
┤
StatefulPartitionedCallStatefulPartitionedCallserving_default_input_2conv2d_13/kernelconv2d_13/biasconv2d_14/kernelconv2d_14/biasgroup_normalization/gammagroup_normalization/betaconv2d_15/kernelconv2d_15/biasbatch_normalization/gammabatch_normalization/betabatch_normalization/moving_mean#batch_normalization/moving_varianceconv2d_16/kernelconv2d_16/biasgroup_normalization_1/gammagroup_normalization_1/betaconv2d_17/kernelconv2d_17/biasdense_4/kerneldense_4/biasdense_5/kerneldense_5/bias*"
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *8
_read_only_resource_inputs
	
*2
config_proto" 

CPU

GPU2 *0J 8В */
f*R(
&__inference_signature_wrapper_21505896

NoOpNoOp
ыВ
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*еВ
valueЪВBЦВ BОВ
·
layer-0
layer_with_weights-0
layer-1
layer-2
layer_with_weights-1
layer-3
layer-4
layer_with_weights-2
layer-5
layer_with_weights-3
layer-6
layer-7
	layer-8

layer-9
layer_with_weights-4
layer-10
layer_with_weights-5
layer-11
layer-12
layer_with_weights-6
layer-13
layer_with_weights-7
layer-14
layer-15
layer-16
layer-17
layer-18
layer_with_weights-8
layer-19
layer-20
layer_with_weights-9
layer-21
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses
_default_save_signature
	optimizer

signatures*
* 
╚
 	variables
!trainable_variables
"regularization_losses
#	keras_api
$__call__
*%&call_and_return_all_conditional_losses

&kernel
'bias
 (_jit_compiled_convolution_op*
О
)	variables
*trainable_variables
+regularization_losses
,	keras_api
-__call__
*.&call_and_return_all_conditional_losses* 
╚
/	variables
0trainable_variables
1regularization_losses
2	keras_api
3__call__
*4&call_and_return_all_conditional_losses

5kernel
6bias
 7_jit_compiled_convolution_op*
О
8	variables
9trainable_variables
:regularization_losses
;	keras_api
<__call__
*=&call_and_return_all_conditional_losses* 
е
>	variables
?trainable_variables
@regularization_losses
A	keras_api
B__call__
*C&call_and_return_all_conditional_losses
	Dgamma
Ebeta*
╚
F	variables
Gtrainable_variables
Hregularization_losses
I	keras_api
J__call__
*K&call_and_return_all_conditional_losses

Lkernel
Mbias
 N_jit_compiled_convolution_op*
О
O	variables
Ptrainable_variables
Qregularization_losses
R	keras_api
S__call__
*T&call_and_return_all_conditional_losses* 
О
U	variables
Vtrainable_variables
Wregularization_losses
X	keras_api
Y__call__
*Z&call_and_return_all_conditional_losses* 
О
[	variables
\trainable_variables
]regularization_losses
^	keras_api
___call__
*`&call_and_return_all_conditional_losses* 
╒
a	variables
btrainable_variables
cregularization_losses
d	keras_api
e__call__
*f&call_and_return_all_conditional_losses
gaxis
	hgamma
ibeta
jmoving_mean
kmoving_variance*
╚
l	variables
mtrainable_variables
nregularization_losses
o	keras_api
p__call__
*q&call_and_return_all_conditional_losses

rkernel
sbias
 t_jit_compiled_convolution_op*
О
u	variables
vtrainable_variables
wregularization_losses
x	keras_api
y__call__
*z&call_and_return_all_conditional_losses* 
и
{	variables
|trainable_variables
}regularization_losses
~	keras_api
__call__
+А&call_and_return_all_conditional_losses

Бgamma
	Вbeta*
╤
Г	variables
Дtrainable_variables
Еregularization_losses
Ж	keras_api
З__call__
+И&call_and_return_all_conditional_losses
Йkernel
	Кbias
!Л_jit_compiled_convolution_op*
Ф
М	variables
Нtrainable_variables
Оregularization_losses
П	keras_api
Р__call__
+С&call_and_return_all_conditional_losses* 
Ф
Т	variables
Уtrainable_variables
Фregularization_losses
Х	keras_api
Ц__call__
+Ч&call_and_return_all_conditional_losses* 
Ф
Ш	variables
Щtrainable_variables
Ъregularization_losses
Ы	keras_api
Ь__call__
+Э&call_and_return_all_conditional_losses* 
Ф
Ю	variables
Яtrainable_variables
аregularization_losses
б	keras_api
в__call__
+г&call_and_return_all_conditional_losses* 
о
д	variables
еtrainable_variables
жregularization_losses
з	keras_api
и__call__
+й&call_and_return_all_conditional_losses
кkernel
	лbias*
Ф
м	variables
нtrainable_variables
оregularization_losses
п	keras_api
░__call__
+▒&call_and_return_all_conditional_losses* 
о
▓	variables
│trainable_variables
┤regularization_losses
╡	keras_api
╢__call__
+╖&call_and_return_all_conditional_losses
╕kernel
	╣bias*
▓
&0
'1
52
63
D4
E5
L6
M7
h8
i9
j10
k11
r12
s13
Б14
В15
Й16
К17
к18
л19
╕20
╣21*
в
&0
'1
52
63
D4
E5
L6
M7
h8
i9
r10
s11
Б12
В13
Й14
К15
к16
л17
╕18
╣19*
* 
╡
║non_trainable_variables
╗layers
╝metrics
 ╜layer_regularization_losses
╛layer_metrics
	variables
trainable_variables
regularization_losses
__call__
_default_save_signature
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses*
:
┐trace_0
└trace_1
┴trace_2
┬trace_3* 
:
├trace_0
─trace_1
┼trace_2
╞trace_3* 
* 
>
	╟iter

╚decay
╔learning_rate
╩momentum*

╦serving_default* 

&0
'1*

&0
'1*
* 
Ш
╠non_trainable_variables
═layers
╬metrics
 ╧layer_regularization_losses
╨layer_metrics
 	variables
!trainable_variables
"regularization_losses
$__call__
*%&call_and_return_all_conditional_losses
&%"call_and_return_conditional_losses*

╤trace_0* 

╥trace_0* 
`Z
VARIABLE_VALUEconv2d_13/kernel6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUE*
\V
VARIABLE_VALUEconv2d_13/bias4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
* 
* 
Ц
╙non_trainable_variables
╘layers
╒metrics
 ╓layer_regularization_losses
╫layer_metrics
)	variables
*trainable_variables
+regularization_losses
-__call__
*.&call_and_return_all_conditional_losses
&."call_and_return_conditional_losses* 

╪trace_0* 

┘trace_0* 

50
61*

50
61*
* 
Ш
┌non_trainable_variables
█layers
▄metrics
 ▌layer_regularization_losses
▐layer_metrics
/	variables
0trainable_variables
1regularization_losses
3__call__
*4&call_and_return_all_conditional_losses
&4"call_and_return_conditional_losses*

▀trace_0* 

рtrace_0* 
`Z
VARIABLE_VALUEconv2d_14/kernel6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUE*
\V
VARIABLE_VALUEconv2d_14/bias4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
* 
* 
Ц
сnon_trainable_variables
тlayers
уmetrics
 фlayer_regularization_losses
хlayer_metrics
8	variables
9trainable_variables
:regularization_losses
<__call__
*=&call_and_return_all_conditional_losses
&="call_and_return_conditional_losses* 

цtrace_0* 

чtrace_0* 

D0
E1*

D0
E1*
* 
Ш
шnon_trainable_variables
щlayers
ъmetrics
 ыlayer_regularization_losses
ьlayer_metrics
>	variables
?trainable_variables
@regularization_losses
B__call__
*C&call_and_return_all_conditional_losses
&C"call_and_return_conditional_losses*

эtrace_0
юtrace_1* 

яtrace_0
Ёtrace_1* 
hb
VARIABLE_VALUEgroup_normalization/gamma5layer_with_weights-2/gamma/.ATTRIBUTES/VARIABLE_VALUE*
f`
VARIABLE_VALUEgroup_normalization/beta4layer_with_weights-2/beta/.ATTRIBUTES/VARIABLE_VALUE*

L0
M1*

L0
M1*
* 
Ш
ёnon_trainable_variables
Єlayers
єmetrics
 Їlayer_regularization_losses
їlayer_metrics
F	variables
Gtrainable_variables
Hregularization_losses
J__call__
*K&call_and_return_all_conditional_losses
&K"call_and_return_conditional_losses*

Ўtrace_0* 

ўtrace_0* 
`Z
VARIABLE_VALUEconv2d_15/kernel6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUE*
\V
VARIABLE_VALUEconv2d_15/bias4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
* 
* 
Ц
°non_trainable_variables
∙layers
·metrics
 √layer_regularization_losses
№layer_metrics
O	variables
Ptrainable_variables
Qregularization_losses
S__call__
*T&call_and_return_all_conditional_losses
&T"call_and_return_conditional_losses* 

¤trace_0* 

■trace_0* 
* 
* 
* 
Ц
 non_trainable_variables
Аlayers
Бmetrics
 Вlayer_regularization_losses
Гlayer_metrics
U	variables
Vtrainable_variables
Wregularization_losses
Y__call__
*Z&call_and_return_all_conditional_losses
&Z"call_and_return_conditional_losses* 

Дtrace_0* 

Еtrace_0* 
* 
* 
* 
Ц
Жnon_trainable_variables
Зlayers
Иmetrics
 Йlayer_regularization_losses
Кlayer_metrics
[	variables
\trainable_variables
]regularization_losses
___call__
*`&call_and_return_all_conditional_losses
&`"call_and_return_conditional_losses* 

Лtrace_0* 

Мtrace_0* 
 
h0
i1
j2
k3*

h0
i1*
* 
Ш
Нnon_trainable_variables
Оlayers
Пmetrics
 Рlayer_regularization_losses
Сlayer_metrics
a	variables
btrainable_variables
cregularization_losses
e__call__
*f&call_and_return_all_conditional_losses
&f"call_and_return_conditional_losses*

Тtrace_0
Уtrace_1* 

Фtrace_0
Хtrace_1* 
* 
hb
VARIABLE_VALUEbatch_normalization/gamma5layer_with_weights-4/gamma/.ATTRIBUTES/VARIABLE_VALUE*
f`
VARIABLE_VALUEbatch_normalization/beta4layer_with_weights-4/beta/.ATTRIBUTES/VARIABLE_VALUE*
tn
VARIABLE_VALUEbatch_normalization/moving_mean;layer_with_weights-4/moving_mean/.ATTRIBUTES/VARIABLE_VALUE*
|v
VARIABLE_VALUE#batch_normalization/moving_variance?layer_with_weights-4/moving_variance/.ATTRIBUTES/VARIABLE_VALUE*

r0
s1*

r0
s1*
* 
Ш
Цnon_trainable_variables
Чlayers
Шmetrics
 Щlayer_regularization_losses
Ъlayer_metrics
l	variables
mtrainable_variables
nregularization_losses
p__call__
*q&call_and_return_all_conditional_losses
&q"call_and_return_conditional_losses*

Ыtrace_0* 

Ьtrace_0* 
`Z
VARIABLE_VALUEconv2d_16/kernel6layer_with_weights-5/kernel/.ATTRIBUTES/VARIABLE_VALUE*
\V
VARIABLE_VALUEconv2d_16/bias4layer_with_weights-5/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
* 
* 
Ц
Эnon_trainable_variables
Юlayers
Яmetrics
 аlayer_regularization_losses
бlayer_metrics
u	variables
vtrainable_variables
wregularization_losses
y__call__
*z&call_and_return_all_conditional_losses
&z"call_and_return_conditional_losses* 

вtrace_0* 

гtrace_0* 

Б0
В1*

Б0
В1*
* 
Ъ
дnon_trainable_variables
еlayers
жmetrics
 зlayer_regularization_losses
иlayer_metrics
{	variables
|trainable_variables
}regularization_losses
__call__
+А&call_and_return_all_conditional_losses
'А"call_and_return_conditional_losses*

йtrace_0
кtrace_1* 

лtrace_0
мtrace_1* 
jd
VARIABLE_VALUEgroup_normalization_1/gamma5layer_with_weights-6/gamma/.ATTRIBUTES/VARIABLE_VALUE*
hb
VARIABLE_VALUEgroup_normalization_1/beta4layer_with_weights-6/beta/.ATTRIBUTES/VARIABLE_VALUE*

Й0
К1*

Й0
К1*
* 
Ю
нnon_trainable_variables
оlayers
пmetrics
 ░layer_regularization_losses
▒layer_metrics
Г	variables
Дtrainable_variables
Еregularization_losses
З__call__
+И&call_and_return_all_conditional_losses
'И"call_and_return_conditional_losses*

▓trace_0* 

│trace_0* 
`Z
VARIABLE_VALUEconv2d_17/kernel6layer_with_weights-7/kernel/.ATTRIBUTES/VARIABLE_VALUE*
\V
VARIABLE_VALUEconv2d_17/bias4layer_with_weights-7/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
* 
* 
Ь
┤non_trainable_variables
╡layers
╢metrics
 ╖layer_regularization_losses
╕layer_metrics
М	variables
Нtrainable_variables
Оregularization_losses
Р__call__
+С&call_and_return_all_conditional_losses
'С"call_and_return_conditional_losses* 

╣trace_0* 

║trace_0* 
* 
* 
* 
Ь
╗non_trainable_variables
╝layers
╜metrics
 ╛layer_regularization_losses
┐layer_metrics
Т	variables
Уtrainable_variables
Фregularization_losses
Ц__call__
+Ч&call_and_return_all_conditional_losses
'Ч"call_and_return_conditional_losses* 

└trace_0* 

┴trace_0* 
* 
* 
* 
Ь
┬non_trainable_variables
├layers
─metrics
 ┼layer_regularization_losses
╞layer_metrics
Ш	variables
Щtrainable_variables
Ъregularization_losses
Ь__call__
+Э&call_and_return_all_conditional_losses
'Э"call_and_return_conditional_losses* 

╟trace_0* 

╚trace_0* 
* 
* 
* 
Ь
╔non_trainable_variables
╩layers
╦metrics
 ╠layer_regularization_losses
═layer_metrics
Ю	variables
Яtrainable_variables
аregularization_losses
в__call__
+г&call_and_return_all_conditional_losses
'г"call_and_return_conditional_losses* 

╬trace_0* 

╧trace_0* 

к0
л1*

к0
л1*
* 
Ю
╨non_trainable_variables
╤layers
╥metrics
 ╙layer_regularization_losses
╘layer_metrics
д	variables
еtrainable_variables
жregularization_losses
и__call__
+й&call_and_return_all_conditional_losses
'й"call_and_return_conditional_losses*

╒trace_0* 

╓trace_0* 
^X
VARIABLE_VALUEdense_4/kernel6layer_with_weights-8/kernel/.ATTRIBUTES/VARIABLE_VALUE*
ZT
VARIABLE_VALUEdense_4/bias4layer_with_weights-8/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
* 
Ь
╫non_trainable_variables
╪layers
┘metrics
 ┌layer_regularization_losses
█layer_metrics
м	variables
нtrainable_variables
оregularization_losses
░__call__
+▒&call_and_return_all_conditional_losses
'▒"call_and_return_conditional_losses* 

▄trace_0* 

▌trace_0* 

╕0
╣1*

╕0
╣1*
* 
Ю
▐non_trainable_variables
▀layers
рmetrics
 сlayer_regularization_losses
тlayer_metrics
▓	variables
│trainable_variables
┤regularization_losses
╢__call__
+╖&call_and_return_all_conditional_losses
'╖"call_and_return_conditional_losses*

уtrace_0* 

фtrace_0* 
^X
VARIABLE_VALUEdense_5/kernel6layer_with_weights-9/kernel/.ATTRIBUTES/VARIABLE_VALUE*
ZT
VARIABLE_VALUEdense_5/bias4layer_with_weights-9/bias/.ATTRIBUTES/VARIABLE_VALUE*

j0
k1*
к
0
1
2
3
4
5
6
7
	8

9
10
11
12
13
14
15
16
17
18
19
20
21*

х0
ц1*
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
KE
VARIABLE_VALUESGD/iter)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUE*
MG
VARIABLE_VALUE	SGD/decay*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUE*
]W
VARIABLE_VALUESGD/learning_rate2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUE*
SM
VARIABLE_VALUESGD/momentum-optimizer/momentum/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 

j0
k1*
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
<
ч	variables
ш	keras_api

щtotal

ъcount*
M
ы	variables
ь	keras_api

эtotal

юcount
я
_fn_kwargs*

щ0
ъ1*

ч	variables*
UO
VARIABLE_VALUEtotal_14keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUE*
UO
VARIABLE_VALUEcount_14keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUE*

э0
ю1*

ы	variables*
SM
VARIABLE_VALUEtotal4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUE*
SM
VARIABLE_VALUEcount4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUE*
* 
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
╜
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename$conv2d_13/kernel/Read/ReadVariableOp"conv2d_13/bias/Read/ReadVariableOp$conv2d_14/kernel/Read/ReadVariableOp"conv2d_14/bias/Read/ReadVariableOp-group_normalization/gamma/Read/ReadVariableOp,group_normalization/beta/Read/ReadVariableOp$conv2d_15/kernel/Read/ReadVariableOp"conv2d_15/bias/Read/ReadVariableOp-batch_normalization/gamma/Read/ReadVariableOp,batch_normalization/beta/Read/ReadVariableOp3batch_normalization/moving_mean/Read/ReadVariableOp7batch_normalization/moving_variance/Read/ReadVariableOp$conv2d_16/kernel/Read/ReadVariableOp"conv2d_16/bias/Read/ReadVariableOp/group_normalization_1/gamma/Read/ReadVariableOp.group_normalization_1/beta/Read/ReadVariableOp$conv2d_17/kernel/Read/ReadVariableOp"conv2d_17/bias/Read/ReadVariableOp"dense_4/kernel/Read/ReadVariableOp dense_4/bias/Read/ReadVariableOp"dense_5/kernel/Read/ReadVariableOp dense_5/bias/Read/ReadVariableOpSGD/iter/Read/ReadVariableOpSGD/decay/Read/ReadVariableOp%SGD/learning_rate/Read/ReadVariableOp SGD/momentum/Read/ReadVariableOptotal_1/Read/ReadVariableOpcount_1/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOpConst*+
Tin$
"2 	*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2 *0J 8В **
f%R#
!__inference__traced_save_21507009
р
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenameconv2d_13/kernelconv2d_13/biasconv2d_14/kernelconv2d_14/biasgroup_normalization/gammagroup_normalization/betaconv2d_15/kernelconv2d_15/biasbatch_normalization/gammabatch_normalization/betabatch_normalization/moving_mean#batch_normalization/moving_varianceconv2d_16/kernelconv2d_16/biasgroup_normalization_1/gammagroup_normalization_1/betaconv2d_17/kernelconv2d_17/biasdense_4/kerneldense_4/biasdense_5/kerneldense_5/biasSGD/iter	SGD/decaySGD/learning_rateSGD/momentumtotal_1count_1totalcount**
Tin#
!2*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2 *0J 8В *-
f(R&
$__inference__traced_restore_21507109ЧН
╔
Ч
*__inference_dense_5_layer_call_fn_21506886

inputs
unknown:
	unknown_0:
identityИвStatefulPartitionedCall▀
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8В *N
fIRG
E__inference_dense_5_layer_call_and_return_conditional_losses_21505158o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:         : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:         
 
_user_specified_nameinputs
п

А
G__inference_conv2d_15_layer_call_and_return_conditional_losses_21504965

inputs8
conv2d_readvariableop_resource:-
biasadd_readvariableop_resource:
identityИвBiasAdd/ReadVariableOpвConv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:*
dtype0Ъ
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:         t╝*
paddingSAME*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0~
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:         t╝h
IdentityIdentityBiasAdd:output:0^NoOp*
T0*0
_output_shapes
:         t╝w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :         t╝: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:X T
0
_output_shapes
:         t╝
 
_user_specified_nameinputs
╕
F
*__inference_flatten_layer_call_fn_21506818

inputs
identity╖
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *)
_output_shapes
:         └й* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2 *0J 8В *N
fIRG
E__inference_flatten_layer_call_and_return_conditional_losses_21505106b
IdentityIdentityPartitionedCall:output:0*
T0*)
_output_shapes
:         └й"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:         :^:W S
/
_output_shapes
:         :^
 
_user_specified_nameinputs
п

А
G__inference_conv2d_15_layer_call_and_return_conditional_losses_21506539

inputs8
conv2d_readvariableop_resource:-
biasadd_readvariableop_resource:
identityИвBiasAdd/ReadVariableOpвConv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:*
dtype0Ъ
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:         t╝*
paddingSAME*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0~
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:         t╝h
IdentityIdentityBiasAdd:output:0^NoOp*
T0*0
_output_shapes
:         t╝w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :         t╝: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:X T
0
_output_shapes
:         t╝
 
_user_specified_nameinputs
к

А
G__inference_conv2d_16_layer_call_and_return_conditional_losses_21505005

inputs8
conv2d_readvariableop_resource:-
biasadd_readvariableop_resource:
identityИвBiasAdd/ReadVariableOpвConv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:*
dtype0Щ
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:         :^*
paddingSAME*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0}
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:         :^g
IdentityIdentityBiasAdd:output:0^NoOp*
T0*/
_output_shapes
:         :^w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:         :^: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:         :^
 
_user_specified_nameinputs
Х2
К
S__inference_group_normalization_1_layer_call_and_return_conditional_losses_21506731

inputs/
!reshape_2_readvariableop_resource:/
!reshape_3_readvariableop_resource:
identityИвReshape_2/ReadVariableOpвReshape_3/ReadVariableOp;
ShapeShapeinputs*
T0*
_output_shapes
:=
Shape_1Shapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:╙
strided_sliceStridedSliceShape_1:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:█
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:█
strided_slice_2StridedSliceShape_1:output:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask_
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:█
strided_slice_3StridedSliceShape_1:output:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskI
stack/1Const*
_output_shapes
: *
dtype0*
value	B :I
stack/4Const*
_output_shapes
: *
dtype0*
value	B :л
stackPackstrided_slice:output:0stack/1:output:0strided_slice_1:output:0strided_slice_2:output:0stack/4:output:0*
N*
T0*
_output_shapes
:h
ReshapeReshapeinputsstack:output:0*
T0*3
_output_shapes!
:         :^k
Mean/reduction_indicesConst*
_output_shapes
:*
dtype0*!
valueB"         О
MeanMeanReshape:output:0Mean/reduction_indices:output:0*
T0*3
_output_shapes!
:         *
	keep_dims({
&reduce_variance/Mean/reduction_indicesConst*
_output_shapes
:*
dtype0*!
valueB"         о
reduce_variance/MeanMeanReshape:output:0/reduce_variance/Mean/reduction_indices:output:0*
T0*3
_output_shapes!
:         *
	keep_dims(Й
reduce_variance/subSubReshape:output:0reduce_variance/Mean:output:0*
T0*3
_output_shapes!
:         :^w
reduce_variance/SquareSquarereduce_variance/sub:z:0*
T0*3
_output_shapes!
:         :^}
(reduce_variance/Mean_1/reduction_indicesConst*
_output_shapes
:*
dtype0*!
valueB"         ╝
reduce_variance/Mean_1Meanreduce_variance/Square:y:01reduce_variance/Mean_1/reduction_indices:output:0*
T0*3
_output_shapes!
:         *
	keep_dims(i
subSubReshape:output:0Mean:output:0*
T0*3
_output_shapes!
:         :^J
add/yConst*
_output_shapes
: *
dtype0*
valueB
 *═╠╠={
addAddV2reduce_variance/Mean_1:output:0add/y:output:0*
T0*3
_output_shapes!
:         J
ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    i
MaximumMaximumadd:z:0Const:output:0*
T0*3
_output_shapes!
:         W
SqrtSqrtMaximum:z:0*
T0*3
_output_shapes!
:         c
truedivRealDivsub:z:0Sqrt:y:0*
T0*3
_output_shapes!
:         :^o
	Reshape_1Reshapetruediv:z:0stack:output:0*
T0*3
_output_shapes!
:         :^v
Reshape_2/ReadVariableOpReadVariableOp!reshape_2_readvariableop_resource*
_output_shapes
:*
dtype0l
Reshape_2/shapeConst*
_output_shapes
:*
dtype0*)
value B"               Е
	Reshape_2Reshape Reshape_2/ReadVariableOp:value:0Reshape_2/shape:output:0*
T0**
_output_shapes
:p
mulMulReshape_1:output:0Reshape_2:output:0*
T0*3
_output_shapes!
:         :^v
Reshape_3/ReadVariableOpReadVariableOp!reshape_3_readvariableop_resource*
_output_shapes
:*
dtype0l
Reshape_3/shapeConst*
_output_shapes
:*
dtype0*)
value B"               Е
	Reshape_3Reshape Reshape_3/ReadVariableOp:value:0Reshape_3/shape:output:0*
T0**
_output_shapes
:i
add_1AddV2mul:z:0Reshape_3:output:0*
T0*3
_output_shapes!
:         :^i
	Reshape_4Reshape	add_1:z:0Shape:output:0*
T0*/
_output_shapes
:         :^i
IdentityIdentityReshape_4:output:0^NoOp*
T0*/
_output_shapes
:         :^|
NoOpNoOp^Reshape_2/ReadVariableOp^Reshape_3/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:         :^: : 24
Reshape_2/ReadVariableOpReshape_2/ReadVariableOp24
Reshape_3/ReadVariableOpReshape_3/ReadVariableOp:W S
/
_output_shapes
:         :^
 
_user_specified_nameinputs
∙
б
,__inference_conv2d_15_layer_call_fn_21506529

inputs!
unknown:
	unknown_0:
identityИвStatefulPartitionedCallъ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         t╝*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8В *P
fKRI
G__inference_conv2d_15_layer_call_and_return_conditional_losses_21504965x
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*0
_output_shapes
:         t╝`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :         t╝: : 22
StatefulPartitionedCallStatefulPartitionedCall:X T
0
_output_shapes
:         t╝
 
_user_specified_nameinputs
п

А
G__inference_conv2d_14_layer_call_and_return_conditional_losses_21504883

inputs8
conv2d_readvariableop_resource:-
biasadd_readvariableop_resource:
identityИвBiasAdd/ReadVariableOpвConv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:*
dtype0Ъ
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:         t╝*
paddingSAME*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0~
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:         t╝h
IdentityIdentityBiasAdd:output:0^NoOp*
T0*0
_output_shapes
:         t╝w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :         t╝: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:X T
0
_output_shapes
:         t╝
 
_user_specified_nameinputs
╔
a
E__inference_flatten_layer_call_and_return_conditional_losses_21505106

inputs
identityV
ConstConst*
_output_shapes
:*
dtype0*
valueB"    └T ^
ReshapeReshapeinputsConst:output:0*
T0*)
_output_shapes
:         └йZ
IdentityIdentityReshape:output:0*
T0*)
_output_shapes
:         └й"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:         :^:W S
/
_output_shapes
:         :^
 
_user_specified_nameinputs
Ф	
╤
6__inference_batch_normalization_layer_call_fn_21506595

inputs
unknown:
	unknown_0:
	unknown_1:
	unknown_2:
identityИвStatefulPartitionedCallЭ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+                           *$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8В *Z
fURS
Q__inference_batch_normalization_layer_call_and_return_conditional_losses_21504832Й
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*A
_output_shapes/
-:+                           `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+                           : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+                           
 
_user_specified_nameinputs
┼
P
4__inference_average_pooling2d_layer_call_fn_21506554

inputs
identityт
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4                                    * 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2 *0J 8В *X
fSRQ
O__inference_average_pooling2d_layer_call_and_return_conditional_losses_21504776Г
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4                                    "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4                                    :r n
J
_output_shapes8
6:4                                    
 
_user_specified_nameinputs
ЪZ
ч

E__inference_model_1_layer_call_and_return_conditional_losses_21505772
input_2,
conv2d_13_21505706: 
conv2d_13_21505708:,
conv2d_14_21505712: 
conv2d_14_21505714:*
group_normalization_21505718:*
group_normalization_21505720:,
conv2d_15_21505723: 
conv2d_15_21505725:*
batch_normalization_21505731:*
batch_normalization_21505733:*
batch_normalization_21505735:*
batch_normalization_21505737:,
conv2d_16_21505740: 
conv2d_16_21505742:,
group_normalization_1_21505746:,
group_normalization_1_21505748:,
conv2d_17_21505751: 
conv2d_17_21505753:$
dense_4_21505760:
А╙

dense_4_21505762:"
dense_5_21505766:
dense_5_21505768:
identityИв+batch_normalization/StatefulPartitionedCallв!conv2d_13/StatefulPartitionedCallв!conv2d_14/StatefulPartitionedCallв!conv2d_15/StatefulPartitionedCallв!conv2d_16/StatefulPartitionedCallв!conv2d_17/StatefulPartitionedCallвdense_4/StatefulPartitionedCallвdense_5/StatefulPartitionedCallв+group_normalization/StatefulPartitionedCallв-group_normalization_1/StatefulPartitionedCallЙ
!conv2d_13/StatefulPartitionedCallStatefulPartitionedCallinput_2conv2d_13_21505706conv2d_13_21505708*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         t╝*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8В *P
fKRI
G__inference_conv2d_13_layer_call_and_return_conditional_losses_21504860Ў
activation_20/PartitionedCallPartitionedCall*conv2d_13/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         t╝* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2 *0J 8В *T
fORM
K__inference_activation_20_layer_call_and_return_conditional_losses_21504871и
!conv2d_14/StatefulPartitionedCallStatefulPartitionedCall&activation_20/PartitionedCall:output:0conv2d_14_21505712conv2d_14_21505714*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         t╝*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8В *P
fKRI
G__inference_conv2d_14_layer_call_and_return_conditional_losses_21504883Ў
activation_21/PartitionedCallPartitionedCall*conv2d_14/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         t╝* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2 *0J 8В *T
fORM
K__inference_activation_21_layer_call_and_return_conditional_losses_21504894╨
+group_normalization/StatefulPartitionedCallStatefulPartitionedCall&activation_21/PartitionedCall:output:0group_normalization_21505718group_normalization_21505720*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         t╝*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8В *Z
fURS
Q__inference_group_normalization_layer_call_and_return_conditional_losses_21504949╢
!conv2d_15/StatefulPartitionedCallStatefulPartitionedCall4group_normalization/StatefulPartitionedCall:output:0conv2d_15_21505723conv2d_15_21505725*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         t╝*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8В *P
fKRI
G__inference_conv2d_15_layer_call_and_return_conditional_losses_21504965Ў
activation_22/PartitionedCallPartitionedCall*conv2d_15/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         t╝* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2 *0J 8В *T
fORM
K__inference_activation_22_layer_call_and_return_conditional_losses_21504976∙
!average_pooling2d/PartitionedCallPartitionedCall&activation_22/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         :^* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2 *0J 8В *X
fSRQ
O__inference_average_pooling2d_layer_call_and_return_conditional_losses_21504776ї
activation_23/PartitionedCallPartitionedCall*average_pooling2d/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         :^* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2 *0J 8В *T
fORM
K__inference_activation_23_layer_call_and_return_conditional_losses_21504984П
+batch_normalization/StatefulPartitionedCallStatefulPartitionedCall&activation_23/PartitionedCall:output:0batch_normalization_21505731batch_normalization_21505733batch_normalization_21505735batch_normalization_21505737*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         :^*&
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8В *Z
fURS
Q__inference_batch_normalization_layer_call_and_return_conditional_losses_21504801╡
!conv2d_16/StatefulPartitionedCallStatefulPartitionedCall4batch_normalization/StatefulPartitionedCall:output:0conv2d_16_21505740conv2d_16_21505742*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         :^*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8В *P
fKRI
G__inference_conv2d_16_layer_call_and_return_conditional_losses_21505005ї
activation_24/PartitionedCallPartitionedCall*conv2d_16/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         :^* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2 *0J 8В *T
fORM
K__inference_activation_24_layer_call_and_return_conditional_losses_21505016╫
-group_normalization_1/StatefulPartitionedCallStatefulPartitionedCall&activation_24/PartitionedCall:output:0group_normalization_1_21505746group_normalization_1_21505748*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         :^*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8В *\
fWRU
S__inference_group_normalization_1_layer_call_and_return_conditional_losses_21505071╖
!conv2d_17/StatefulPartitionedCallStatefulPartitionedCall6group_normalization_1/StatefulPartitionedCall:output:0conv2d_17_21505751conv2d_17_21505753*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         :^*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8В *P
fKRI
G__inference_conv2d_17_layer_call_and_return_conditional_losses_21505087ї
activation_25/PartitionedCallPartitionedCall*conv2d_17/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         :^* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2 *0J 8В *T
fORM
K__inference_activation_25_layer_call_and_return_conditional_losses_21505098▀
flatten/PartitionedCallPartitionedCall&activation_23/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *)
_output_shapes
:         └й* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2 *0J 8В *N
fIRG
E__inference_flatten_layer_call_and_return_conditional_losses_21505106у
flatten_1/PartitionedCallPartitionedCall&activation_25/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *)
_output_shapes
:         └й* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2 *0J 8В *P
fKRI
G__inference_flatten_1_layer_call_and_return_conditional_losses_21505114Ж
concatenate/PartitionedCallPartitionedCall flatten/PartitionedCall:output:0"flatten_1/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *)
_output_shapes
:         А╙
* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2 *0J 8В *R
fMRK
I__inference_concatenate_layer_call_and_return_conditional_losses_21505123Х
dense_4/StatefulPartitionedCallStatefulPartitionedCall$concatenate/PartitionedCall:output:0dense_4_21505760dense_4_21505762*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8В *N
fIRG
E__inference_dense_4_layer_call_and_return_conditional_losses_21505135ы
activation_26/PartitionedCallPartitionedCall(dense_4/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         * 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2 *0J 8В *T
fORM
K__inference_activation_26_layer_call_and_return_conditional_losses_21505146Ч
dense_5/StatefulPartitionedCallStatefulPartitionedCall&activation_26/PartitionedCall:output:0dense_5_21505766dense_5_21505768*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8В *N
fIRG
E__inference_dense_5_layer_call_and_return_conditional_losses_21505158w
IdentityIdentity(dense_5/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         ╩
NoOpNoOp,^batch_normalization/StatefulPartitionedCall"^conv2d_13/StatefulPartitionedCall"^conv2d_14/StatefulPartitionedCall"^conv2d_15/StatefulPartitionedCall"^conv2d_16/StatefulPartitionedCall"^conv2d_17/StatefulPartitionedCall ^dense_4/StatefulPartitionedCall ^dense_5/StatefulPartitionedCall,^group_normalization/StatefulPartitionedCall.^group_normalization_1/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*[
_input_shapesJ
H:         t╝: : : : : : : : : : : : : : : : : : : : : : 2Z
+batch_normalization/StatefulPartitionedCall+batch_normalization/StatefulPartitionedCall2F
!conv2d_13/StatefulPartitionedCall!conv2d_13/StatefulPartitionedCall2F
!conv2d_14/StatefulPartitionedCall!conv2d_14/StatefulPartitionedCall2F
!conv2d_15/StatefulPartitionedCall!conv2d_15/StatefulPartitionedCall2F
!conv2d_16/StatefulPartitionedCall!conv2d_16/StatefulPartitionedCall2F
!conv2d_17/StatefulPartitionedCall!conv2d_17/StatefulPartitionedCall2B
dense_4/StatefulPartitionedCalldense_4/StatefulPartitionedCall2B
dense_5/StatefulPartitionedCalldense_5/StatefulPartitionedCall2Z
+group_normalization/StatefulPartitionedCall+group_normalization/StatefulPartitionedCall2^
-group_normalization_1/StatefulPartitionedCall-group_normalization_1/StatefulPartitionedCall:Y U
0
_output_shapes
:         t╝
!
_user_specified_name	input_2
╤
╪
*__inference_model_1_layer_call_fn_21505994

inputs!
unknown:
	unknown_0:#
	unknown_1:
	unknown_2:
	unknown_3:
	unknown_4:#
	unknown_5:
	unknown_6:
	unknown_7:
	unknown_8:
	unknown_9:

unknown_10:$

unknown_11:

unknown_12:

unknown_13:

unknown_14:$

unknown_15:

unknown_16:

unknown_17:
А╙


unknown_18:

unknown_19:

unknown_20:
identityИвStatefulPartitionedCallь
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18
unknown_19
unknown_20*"
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *6
_read_only_resource_inputs
	
*2
config_proto" 

CPU

GPU2 *0J 8В *N
fIRG
E__inference_model_1_layer_call_and_return_conditional_losses_21505607o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*[
_input_shapesJ
H:         t╝: : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:X T
0
_output_shapes
:         t╝
 
_user_specified_nameinputs
╘
L
0__inference_activation_20_layer_call_fn_21506362

inputs
identity─
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         t╝* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2 *0J 8В *T
fORM
K__inference_activation_20_layer_call_and_return_conditional_losses_21504871i
IdentityIdentityPartitionedCall:output:0*
T0*0
_output_shapes
:         t╝"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:         t╝:X T
0
_output_shapes
:         t╝
 
_user_specified_nameinputs
∙
g
K__inference_activation_20_layer_call_and_return_conditional_losses_21506367

inputs
identityP
	LeakyRelu	LeakyReluinputs*0
_output_shapes
:         t╝h
IdentityIdentityLeakyRelu:activations:0*
T0*0
_output_shapes
:         t╝"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:         t╝:X T
0
_output_shapes
:         t╝
 
_user_specified_nameinputs
п

А
G__inference_conv2d_13_layer_call_and_return_conditional_losses_21504860

inputs8
conv2d_readvariableop_resource:-
biasadd_readvariableop_resource:
identityИвBiasAdd/ReadVariableOpвConv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:*
dtype0Ъ
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:         t╝*
paddingSAME*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0~
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:         t╝h
IdentityIdentityBiasAdd:output:0^NoOp*
T0*0
_output_shapes
:         t╝w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :         t╝: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:X T
0
_output_shapes
:         t╝
 
_user_specified_nameinputs
Я2
И
Q__inference_group_normalization_layer_call_and_return_conditional_losses_21504949

inputs/
!reshape_2_readvariableop_resource:/
!reshape_3_readvariableop_resource:
identityИвReshape_2/ReadVariableOpвReshape_3/ReadVariableOp;
ShapeShapeinputs*
T0*
_output_shapes
:=
Shape_1Shapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:╙
strided_sliceStridedSliceShape_1:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:█
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:█
strided_slice_2StridedSliceShape_1:output:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask_
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:█
strided_slice_3StridedSliceShape_1:output:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskI
stack/1Const*
_output_shapes
: *
dtype0*
value	B :I
stack/4Const*
_output_shapes
: *
dtype0*
value	B :л
stackPackstrided_slice:output:0stack/1:output:0strided_slice_1:output:0strided_slice_2:output:0stack/4:output:0*
N*
T0*
_output_shapes
:i
ReshapeReshapeinputsstack:output:0*
T0*4
_output_shapes"
 :         t╝k
Mean/reduction_indicesConst*
_output_shapes
:*
dtype0*!
valueB"         О
MeanMeanReshape:output:0Mean/reduction_indices:output:0*
T0*3
_output_shapes!
:         *
	keep_dims({
&reduce_variance/Mean/reduction_indicesConst*
_output_shapes
:*
dtype0*!
valueB"         о
reduce_variance/MeanMeanReshape:output:0/reduce_variance/Mean/reduction_indices:output:0*
T0*3
_output_shapes!
:         *
	keep_dims(К
reduce_variance/subSubReshape:output:0reduce_variance/Mean:output:0*
T0*4
_output_shapes"
 :         t╝x
reduce_variance/SquareSquarereduce_variance/sub:z:0*
T0*4
_output_shapes"
 :         t╝}
(reduce_variance/Mean_1/reduction_indicesConst*
_output_shapes
:*
dtype0*!
valueB"         ╝
reduce_variance/Mean_1Meanreduce_variance/Square:y:01reduce_variance/Mean_1/reduction_indices:output:0*
T0*3
_output_shapes!
:         *
	keep_dims(j
subSubReshape:output:0Mean:output:0*
T0*4
_output_shapes"
 :         t╝J
add/yConst*
_output_shapes
: *
dtype0*
valueB
 *═╠╠={
addAddV2reduce_variance/Mean_1:output:0add/y:output:0*
T0*3
_output_shapes!
:         J
ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    i
MaximumMaximumadd:z:0Const:output:0*
T0*3
_output_shapes!
:         W
SqrtSqrtMaximum:z:0*
T0*3
_output_shapes!
:         d
truedivRealDivsub:z:0Sqrt:y:0*
T0*4
_output_shapes"
 :         t╝p
	Reshape_1Reshapetruediv:z:0stack:output:0*
T0*4
_output_shapes"
 :         t╝v
Reshape_2/ReadVariableOpReadVariableOp!reshape_2_readvariableop_resource*
_output_shapes
:*
dtype0l
Reshape_2/shapeConst*
_output_shapes
:*
dtype0*)
value B"               Е
	Reshape_2Reshape Reshape_2/ReadVariableOp:value:0Reshape_2/shape:output:0*
T0**
_output_shapes
:q
mulMulReshape_1:output:0Reshape_2:output:0*
T0*4
_output_shapes"
 :         t╝v
Reshape_3/ReadVariableOpReadVariableOp!reshape_3_readvariableop_resource*
_output_shapes
:*
dtype0l
Reshape_3/shapeConst*
_output_shapes
:*
dtype0*)
value B"               Е
	Reshape_3Reshape Reshape_3/ReadVariableOp:value:0Reshape_3/shape:output:0*
T0**
_output_shapes
:j
add_1AddV2mul:z:0Reshape_3:output:0*
T0*4
_output_shapes"
 :         t╝j
	Reshape_4Reshape	add_1:z:0Shape:output:0*
T0*0
_output_shapes
:         t╝j
IdentityIdentityReshape_4:output:0^NoOp*
T0*0
_output_shapes
:         t╝|
NoOpNoOp^Reshape_2/ReadVariableOp^Reshape_3/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :         t╝: : 24
Reshape_2/ReadVariableOpReshape_2/ReadVariableOp24
Reshape_3/ReadVariableOpReshape_3/ReadVariableOp:X T
0
_output_shapes
:         t╝
 
_user_specified_nameinputs
╖у
Д
E__inference_model_1_layer_call_and_return_conditional_losses_21506338

inputsB
(conv2d_13_conv2d_readvariableop_resource:7
)conv2d_13_biasadd_readvariableop_resource:B
(conv2d_14_conv2d_readvariableop_resource:7
)conv2d_14_biasadd_readvariableop_resource:C
5group_normalization_reshape_2_readvariableop_resource:C
5group_normalization_reshape_3_readvariableop_resource:B
(conv2d_15_conv2d_readvariableop_resource:7
)conv2d_15_biasadd_readvariableop_resource:9
+batch_normalization_readvariableop_resource:;
-batch_normalization_readvariableop_1_resource:J
<batch_normalization_fusedbatchnormv3_readvariableop_resource:L
>batch_normalization_fusedbatchnormv3_readvariableop_1_resource:B
(conv2d_16_conv2d_readvariableop_resource:7
)conv2d_16_biasadd_readvariableop_resource:E
7group_normalization_1_reshape_2_readvariableop_resource:E
7group_normalization_1_reshape_3_readvariableop_resource:B
(conv2d_17_conv2d_readvariableop_resource:7
)conv2d_17_biasadd_readvariableop_resource::
&dense_4_matmul_readvariableop_resource:
А╙
5
'dense_4_biasadd_readvariableop_resource:8
&dense_5_matmul_readvariableop_resource:5
'dense_5_biasadd_readvariableop_resource:
identityИв"batch_normalization/AssignNewValueв$batch_normalization/AssignNewValue_1в3batch_normalization/FusedBatchNormV3/ReadVariableOpв5batch_normalization/FusedBatchNormV3/ReadVariableOp_1в"batch_normalization/ReadVariableOpв$batch_normalization/ReadVariableOp_1в conv2d_13/BiasAdd/ReadVariableOpвconv2d_13/Conv2D/ReadVariableOpв conv2d_14/BiasAdd/ReadVariableOpвconv2d_14/Conv2D/ReadVariableOpв conv2d_15/BiasAdd/ReadVariableOpвconv2d_15/Conv2D/ReadVariableOpв conv2d_16/BiasAdd/ReadVariableOpвconv2d_16/Conv2D/ReadVariableOpв conv2d_17/BiasAdd/ReadVariableOpвconv2d_17/Conv2D/ReadVariableOpвdense_4/BiasAdd/ReadVariableOpвdense_4/MatMul/ReadVariableOpвdense_5/BiasAdd/ReadVariableOpвdense_5/MatMul/ReadVariableOpв,group_normalization/Reshape_2/ReadVariableOpв,group_normalization/Reshape_3/ReadVariableOpв.group_normalization_1/Reshape_2/ReadVariableOpв.group_normalization_1/Reshape_3/ReadVariableOpР
conv2d_13/Conv2D/ReadVariableOpReadVariableOp(conv2d_13_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype0о
conv2d_13/Conv2DConv2Dinputs'conv2d_13/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:         t╝*
paddingSAME*
strides
Ж
 conv2d_13/BiasAdd/ReadVariableOpReadVariableOp)conv2d_13_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0Ь
conv2d_13/BiasAddBiasAddconv2d_13/Conv2D:output:0(conv2d_13/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:         t╝r
activation_20/LeakyRelu	LeakyReluconv2d_13/BiasAdd:output:0*0
_output_shapes
:         t╝Р
conv2d_14/Conv2D/ReadVariableOpReadVariableOp(conv2d_14_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype0═
conv2d_14/Conv2DConv2D%activation_20/LeakyRelu:activations:0'conv2d_14/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:         t╝*
paddingSAME*
strides
Ж
 conv2d_14/BiasAdd/ReadVariableOpReadVariableOp)conv2d_14_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0Ь
conv2d_14/BiasAddBiasAddconv2d_14/Conv2D:output:0(conv2d_14/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:         t╝r
activation_21/LeakyRelu	LeakyReluconv2d_14/BiasAdd:output:0*0
_output_shapes
:         t╝n
group_normalization/ShapeShape%activation_21/LeakyRelu:activations:0*
T0*
_output_shapes
:p
group_normalization/Shape_1Shape%activation_21/LeakyRelu:activations:0*
T0*
_output_shapes
:q
'group_normalization/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: s
)group_normalization/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:s
)group_normalization/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:╖
!group_normalization/strided_sliceStridedSlice$group_normalization/Shape_1:output:00group_normalization/strided_slice/stack:output:02group_normalization/strided_slice/stack_1:output:02group_normalization/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masks
)group_normalization/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:u
+group_normalization/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:u
+group_normalization/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:┐
#group_normalization/strided_slice_1StridedSlice$group_normalization/Shape_1:output:02group_normalization/strided_slice_1/stack:output:04group_normalization/strided_slice_1/stack_1:output:04group_normalization/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masks
)group_normalization/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:u
+group_normalization/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:u
+group_normalization/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:┐
#group_normalization/strided_slice_2StridedSlice$group_normalization/Shape_1:output:02group_normalization/strided_slice_2/stack:output:04group_normalization/strided_slice_2/stack_1:output:04group_normalization/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masks
)group_normalization/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:u
+group_normalization/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB:u
+group_normalization/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:┐
#group_normalization/strided_slice_3StridedSlice$group_normalization/Shape_1:output:02group_normalization/strided_slice_3/stack:output:04group_normalization/strided_slice_3/stack_1:output:04group_normalization/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask]
group_normalization/stack/1Const*
_output_shapes
: *
dtype0*
value	B :]
group_normalization/stack/4Const*
_output_shapes
: *
dtype0*
value	B :г
group_normalization/stackPack*group_normalization/strided_slice:output:0$group_normalization/stack/1:output:0,group_normalization/strided_slice_1:output:0,group_normalization/strided_slice_2:output:0$group_normalization/stack/4:output:0*
N*
T0*
_output_shapes
:░
group_normalization/ReshapeReshape%activation_21/LeakyRelu:activations:0"group_normalization/stack:output:0*
T0*4
_output_shapes"
 :         t╝
*group_normalization/Mean/reduction_indicesConst*
_output_shapes
:*
dtype0*!
valueB"         ╩
group_normalization/MeanMean$group_normalization/Reshape:output:03group_normalization/Mean/reduction_indices:output:0*
T0*3
_output_shapes!
:         *
	keep_dims(П
:group_normalization/reduce_variance/Mean/reduction_indicesConst*
_output_shapes
:*
dtype0*!
valueB"         ъ
(group_normalization/reduce_variance/MeanMean$group_normalization/Reshape:output:0Cgroup_normalization/reduce_variance/Mean/reduction_indices:output:0*
T0*3
_output_shapes!
:         *
	keep_dims(╞
'group_normalization/reduce_variance/subSub$group_normalization/Reshape:output:01group_normalization/reduce_variance/Mean:output:0*
T0*4
_output_shapes"
 :         t╝а
*group_normalization/reduce_variance/SquareSquare+group_normalization/reduce_variance/sub:z:0*
T0*4
_output_shapes"
 :         t╝С
<group_normalization/reduce_variance/Mean_1/reduction_indicesConst*
_output_shapes
:*
dtype0*!
valueB"         °
*group_normalization/reduce_variance/Mean_1Mean.group_normalization/reduce_variance/Square:y:0Egroup_normalization/reduce_variance/Mean_1/reduction_indices:output:0*
T0*3
_output_shapes!
:         *
	keep_dims(ж
group_normalization/subSub$group_normalization/Reshape:output:0!group_normalization/Mean:output:0*
T0*4
_output_shapes"
 :         t╝^
group_normalization/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *═╠╠=╖
group_normalization/addAddV23group_normalization/reduce_variance/Mean_1:output:0"group_normalization/add/y:output:0*
T0*3
_output_shapes!
:         ^
group_normalization/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    е
group_normalization/MaximumMaximumgroup_normalization/add:z:0"group_normalization/Const:output:0*
T0*3
_output_shapes!
:         
group_normalization/SqrtSqrtgroup_normalization/Maximum:z:0*
T0*3
_output_shapes!
:         а
group_normalization/truedivRealDivgroup_normalization/sub:z:0group_normalization/Sqrt:y:0*
T0*4
_output_shapes"
 :         t╝м
group_normalization/Reshape_1Reshapegroup_normalization/truediv:z:0"group_normalization/stack:output:0*
T0*4
_output_shapes"
 :         t╝Ю
,group_normalization/Reshape_2/ReadVariableOpReadVariableOp5group_normalization_reshape_2_readvariableop_resource*
_output_shapes
:*
dtype0А
#group_normalization/Reshape_2/shapeConst*
_output_shapes
:*
dtype0*)
value B"               ┴
group_normalization/Reshape_2Reshape4group_normalization/Reshape_2/ReadVariableOp:value:0,group_normalization/Reshape_2/shape:output:0*
T0**
_output_shapes
:н
group_normalization/mulMul&group_normalization/Reshape_1:output:0&group_normalization/Reshape_2:output:0*
T0*4
_output_shapes"
 :         t╝Ю
,group_normalization/Reshape_3/ReadVariableOpReadVariableOp5group_normalization_reshape_3_readvariableop_resource*
_output_shapes
:*
dtype0А
#group_normalization/Reshape_3/shapeConst*
_output_shapes
:*
dtype0*)
value B"               ┴
group_normalization/Reshape_3Reshape4group_normalization/Reshape_3/ReadVariableOp:value:0,group_normalization/Reshape_3/shape:output:0*
T0**
_output_shapes
:ж
group_normalization/add_1AddV2group_normalization/mul:z:0&group_normalization/Reshape_3:output:0*
T0*4
_output_shapes"
 :         t╝ж
group_normalization/Reshape_4Reshapegroup_normalization/add_1:z:0"group_normalization/Shape:output:0*
T0*0
_output_shapes
:         t╝Р
conv2d_15/Conv2D/ReadVariableOpReadVariableOp(conv2d_15_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype0╬
conv2d_15/Conv2DConv2D&group_normalization/Reshape_4:output:0'conv2d_15/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:         t╝*
paddingSAME*
strides
Ж
 conv2d_15/BiasAdd/ReadVariableOpReadVariableOp)conv2d_15_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0Ь
conv2d_15/BiasAddBiasAddconv2d_15/Conv2D:output:0(conv2d_15/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:         t╝r
activation_22/LeakyRelu	LeakyReluconv2d_15/BiasAdd:output:0*0
_output_shapes
:         t╝┴
average_pooling2d/AvgPoolAvgPool%activation_22/LeakyRelu:activations:0*
T0*/
_output_shapes
:         :^*
ksize
*
paddingVALID*
strides
y
activation_23/LeakyRelu	LeakyRelu"average_pooling2d/AvgPool:output:0*/
_output_shapes
:         :^К
"batch_normalization/ReadVariableOpReadVariableOp+batch_normalization_readvariableop_resource*
_output_shapes
:*
dtype0О
$batch_normalization/ReadVariableOp_1ReadVariableOp-batch_normalization_readvariableop_1_resource*
_output_shapes
:*
dtype0м
3batch_normalization/FusedBatchNormV3/ReadVariableOpReadVariableOp<batch_normalization_fusedbatchnormv3_readvariableop_resource*
_output_shapes
:*
dtype0░
5batch_normalization/FusedBatchNormV3/ReadVariableOp_1ReadVariableOp>batch_normalization_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:*
dtype0╟
$batch_normalization/FusedBatchNormV3FusedBatchNormV3%activation_23/LeakyRelu:activations:0*batch_normalization/ReadVariableOp:value:0,batch_normalization/ReadVariableOp_1:value:0;batch_normalization/FusedBatchNormV3/ReadVariableOp:value:0=batch_normalization/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:         :^:::::*
epsilon%oГ:*
exponential_avg_factor%
╫#<Ц
"batch_normalization/AssignNewValueAssignVariableOp<batch_normalization_fusedbatchnormv3_readvariableop_resource1batch_normalization/FusedBatchNormV3:batch_mean:04^batch_normalization/FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype0*
validate_shape(а
$batch_normalization/AssignNewValue_1AssignVariableOp>batch_normalization_fusedbatchnormv3_readvariableop_1_resource5batch_normalization/FusedBatchNormV3:batch_variance:06^batch_normalization/FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype0*
validate_shape(Р
conv2d_16/Conv2D/ReadVariableOpReadVariableOp(conv2d_16_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype0╧
conv2d_16/Conv2DConv2D(batch_normalization/FusedBatchNormV3:y:0'conv2d_16/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:         :^*
paddingSAME*
strides
Ж
 conv2d_16/BiasAdd/ReadVariableOpReadVariableOp)conv2d_16_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0Ы
conv2d_16/BiasAddBiasAddconv2d_16/Conv2D:output:0(conv2d_16/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:         :^q
activation_24/LeakyRelu	LeakyReluconv2d_16/BiasAdd:output:0*/
_output_shapes
:         :^p
group_normalization_1/ShapeShape%activation_24/LeakyRelu:activations:0*
T0*
_output_shapes
:r
group_normalization_1/Shape_1Shape%activation_24/LeakyRelu:activations:0*
T0*
_output_shapes
:s
)group_normalization_1/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: u
+group_normalization_1/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:u
+group_normalization_1/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:┴
#group_normalization_1/strided_sliceStridedSlice&group_normalization_1/Shape_1:output:02group_normalization_1/strided_slice/stack:output:04group_normalization_1/strided_slice/stack_1:output:04group_normalization_1/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masku
+group_normalization_1/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:w
-group_normalization_1/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:w
-group_normalization_1/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:╔
%group_normalization_1/strided_slice_1StridedSlice&group_normalization_1/Shape_1:output:04group_normalization_1/strided_slice_1/stack:output:06group_normalization_1/strided_slice_1/stack_1:output:06group_normalization_1/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masku
+group_normalization_1/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:w
-group_normalization_1/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:w
-group_normalization_1/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:╔
%group_normalization_1/strided_slice_2StridedSlice&group_normalization_1/Shape_1:output:04group_normalization_1/strided_slice_2/stack:output:06group_normalization_1/strided_slice_2/stack_1:output:06group_normalization_1/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masku
+group_normalization_1/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:w
-group_normalization_1/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB:w
-group_normalization_1/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:╔
%group_normalization_1/strided_slice_3StridedSlice&group_normalization_1/Shape_1:output:04group_normalization_1/strided_slice_3/stack:output:06group_normalization_1/strided_slice_3/stack_1:output:06group_normalization_1/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask_
group_normalization_1/stack/1Const*
_output_shapes
: *
dtype0*
value	B :_
group_normalization_1/stack/4Const*
_output_shapes
: *
dtype0*
value	B :п
group_normalization_1/stackPack,group_normalization_1/strided_slice:output:0&group_normalization_1/stack/1:output:0.group_normalization_1/strided_slice_1:output:0.group_normalization_1/strided_slice_2:output:0&group_normalization_1/stack/4:output:0*
N*
T0*
_output_shapes
:│
group_normalization_1/ReshapeReshape%activation_24/LeakyRelu:activations:0$group_normalization_1/stack:output:0*
T0*3
_output_shapes!
:         :^Б
,group_normalization_1/Mean/reduction_indicesConst*
_output_shapes
:*
dtype0*!
valueB"         ╨
group_normalization_1/MeanMean&group_normalization_1/Reshape:output:05group_normalization_1/Mean/reduction_indices:output:0*
T0*3
_output_shapes!
:         *
	keep_dims(С
<group_normalization_1/reduce_variance/Mean/reduction_indicesConst*
_output_shapes
:*
dtype0*!
valueB"         Ё
*group_normalization_1/reduce_variance/MeanMean&group_normalization_1/Reshape:output:0Egroup_normalization_1/reduce_variance/Mean/reduction_indices:output:0*
T0*3
_output_shapes!
:         *
	keep_dims(╦
)group_normalization_1/reduce_variance/subSub&group_normalization_1/Reshape:output:03group_normalization_1/reduce_variance/Mean:output:0*
T0*3
_output_shapes!
:         :^г
,group_normalization_1/reduce_variance/SquareSquare-group_normalization_1/reduce_variance/sub:z:0*
T0*3
_output_shapes!
:         :^У
>group_normalization_1/reduce_variance/Mean_1/reduction_indicesConst*
_output_shapes
:*
dtype0*!
valueB"         ■
,group_normalization_1/reduce_variance/Mean_1Mean0group_normalization_1/reduce_variance/Square:y:0Ggroup_normalization_1/reduce_variance/Mean_1/reduction_indices:output:0*
T0*3
_output_shapes!
:         *
	keep_dims(л
group_normalization_1/subSub&group_normalization_1/Reshape:output:0#group_normalization_1/Mean:output:0*
T0*3
_output_shapes!
:         :^`
group_normalization_1/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *═╠╠=╜
group_normalization_1/addAddV25group_normalization_1/reduce_variance/Mean_1:output:0$group_normalization_1/add/y:output:0*
T0*3
_output_shapes!
:         `
group_normalization_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    л
group_normalization_1/MaximumMaximumgroup_normalization_1/add:z:0$group_normalization_1/Const:output:0*
T0*3
_output_shapes!
:         Г
group_normalization_1/SqrtSqrt!group_normalization_1/Maximum:z:0*
T0*3
_output_shapes!
:         е
group_normalization_1/truedivRealDivgroup_normalization_1/sub:z:0group_normalization_1/Sqrt:y:0*
T0*3
_output_shapes!
:         :^▒
group_normalization_1/Reshape_1Reshape!group_normalization_1/truediv:z:0$group_normalization_1/stack:output:0*
T0*3
_output_shapes!
:         :^в
.group_normalization_1/Reshape_2/ReadVariableOpReadVariableOp7group_normalization_1_reshape_2_readvariableop_resource*
_output_shapes
:*
dtype0В
%group_normalization_1/Reshape_2/shapeConst*
_output_shapes
:*
dtype0*)
value B"               ╟
group_normalization_1/Reshape_2Reshape6group_normalization_1/Reshape_2/ReadVariableOp:value:0.group_normalization_1/Reshape_2/shape:output:0*
T0**
_output_shapes
:▓
group_normalization_1/mulMul(group_normalization_1/Reshape_1:output:0(group_normalization_1/Reshape_2:output:0*
T0*3
_output_shapes!
:         :^в
.group_normalization_1/Reshape_3/ReadVariableOpReadVariableOp7group_normalization_1_reshape_3_readvariableop_resource*
_output_shapes
:*
dtype0В
%group_normalization_1/Reshape_3/shapeConst*
_output_shapes
:*
dtype0*)
value B"               ╟
group_normalization_1/Reshape_3Reshape6group_normalization_1/Reshape_3/ReadVariableOp:value:0.group_normalization_1/Reshape_3/shape:output:0*
T0**
_output_shapes
:л
group_normalization_1/add_1AddV2group_normalization_1/mul:z:0(group_normalization_1/Reshape_3:output:0*
T0*3
_output_shapes!
:         :^л
group_normalization_1/Reshape_4Reshapegroup_normalization_1/add_1:z:0$group_normalization_1/Shape:output:0*
T0*/
_output_shapes
:         :^Р
conv2d_17/Conv2D/ReadVariableOpReadVariableOp(conv2d_17_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype0╧
conv2d_17/Conv2DConv2D(group_normalization_1/Reshape_4:output:0'conv2d_17/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:         :^*
paddingSAME*
strides
Ж
 conv2d_17/BiasAdd/ReadVariableOpReadVariableOp)conv2d_17_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0Ы
conv2d_17/BiasAddBiasAddconv2d_17/Conv2D:output:0(conv2d_17/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:         :^q
activation_25/LeakyRelu	LeakyReluconv2d_17/BiasAdd:output:0*/
_output_shapes
:         :^^
flatten/ConstConst*
_output_shapes
:*
dtype0*
valueB"    └T Н
flatten/ReshapeReshape%activation_23/LeakyRelu:activations:0flatten/Const:output:0*
T0*)
_output_shapes
:         └й`
flatten_1/ConstConst*
_output_shapes
:*
dtype0*
valueB"    └T С
flatten_1/ReshapeReshape%activation_25/LeakyRelu:activations:0flatten_1/Const:output:0*
T0*)
_output_shapes
:         └йY
concatenate/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :│
concatenate/concatConcatV2flatten/Reshape:output:0flatten_1/Reshape:output:0 concatenate/concat/axis:output:0*
N*
T0*)
_output_shapes
:         А╙
Ж
dense_4/MatMul/ReadVariableOpReadVariableOp&dense_4_matmul_readvariableop_resource* 
_output_shapes
:
А╙
*
dtype0О
dense_4/MatMulMatMulconcatenate/concat:output:0%dense_4/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         В
dense_4/BiasAdd/ReadVariableOpReadVariableOp'dense_4_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0О
dense_4/BiasAddBiasAdddense_4/MatMul:product:0&dense_4/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         g
activation_26/LeakyRelu	LeakyReludense_4/BiasAdd:output:0*'
_output_shapes
:         Д
dense_5/MatMul/ReadVariableOpReadVariableOp&dense_5_matmul_readvariableop_resource*
_output_shapes

:*
dtype0Ш
dense_5/MatMulMatMul%activation_26/LeakyRelu:activations:0%dense_5/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         В
dense_5/BiasAdd/ReadVariableOpReadVariableOp'dense_5_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0О
dense_5/BiasAddBiasAdddense_5/MatMul:product:0&dense_5/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         g
IdentityIdentitydense_5/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:         ч
NoOpNoOp#^batch_normalization/AssignNewValue%^batch_normalization/AssignNewValue_14^batch_normalization/FusedBatchNormV3/ReadVariableOp6^batch_normalization/FusedBatchNormV3/ReadVariableOp_1#^batch_normalization/ReadVariableOp%^batch_normalization/ReadVariableOp_1!^conv2d_13/BiasAdd/ReadVariableOp ^conv2d_13/Conv2D/ReadVariableOp!^conv2d_14/BiasAdd/ReadVariableOp ^conv2d_14/Conv2D/ReadVariableOp!^conv2d_15/BiasAdd/ReadVariableOp ^conv2d_15/Conv2D/ReadVariableOp!^conv2d_16/BiasAdd/ReadVariableOp ^conv2d_16/Conv2D/ReadVariableOp!^conv2d_17/BiasAdd/ReadVariableOp ^conv2d_17/Conv2D/ReadVariableOp^dense_4/BiasAdd/ReadVariableOp^dense_4/MatMul/ReadVariableOp^dense_5/BiasAdd/ReadVariableOp^dense_5/MatMul/ReadVariableOp-^group_normalization/Reshape_2/ReadVariableOp-^group_normalization/Reshape_3/ReadVariableOp/^group_normalization_1/Reshape_2/ReadVariableOp/^group_normalization_1/Reshape_3/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*[
_input_shapesJ
H:         t╝: : : : : : : : : : : : : : : : : : : : : : 2H
"batch_normalization/AssignNewValue"batch_normalization/AssignNewValue2L
$batch_normalization/AssignNewValue_1$batch_normalization/AssignNewValue_12j
3batch_normalization/FusedBatchNormV3/ReadVariableOp3batch_normalization/FusedBatchNormV3/ReadVariableOp2n
5batch_normalization/FusedBatchNormV3/ReadVariableOp_15batch_normalization/FusedBatchNormV3/ReadVariableOp_12H
"batch_normalization/ReadVariableOp"batch_normalization/ReadVariableOp2L
$batch_normalization/ReadVariableOp_1$batch_normalization/ReadVariableOp_12D
 conv2d_13/BiasAdd/ReadVariableOp conv2d_13/BiasAdd/ReadVariableOp2B
conv2d_13/Conv2D/ReadVariableOpconv2d_13/Conv2D/ReadVariableOp2D
 conv2d_14/BiasAdd/ReadVariableOp conv2d_14/BiasAdd/ReadVariableOp2B
conv2d_14/Conv2D/ReadVariableOpconv2d_14/Conv2D/ReadVariableOp2D
 conv2d_15/BiasAdd/ReadVariableOp conv2d_15/BiasAdd/ReadVariableOp2B
conv2d_15/Conv2D/ReadVariableOpconv2d_15/Conv2D/ReadVariableOp2D
 conv2d_16/BiasAdd/ReadVariableOp conv2d_16/BiasAdd/ReadVariableOp2B
conv2d_16/Conv2D/ReadVariableOpconv2d_16/Conv2D/ReadVariableOp2D
 conv2d_17/BiasAdd/ReadVariableOp conv2d_17/BiasAdd/ReadVariableOp2B
conv2d_17/Conv2D/ReadVariableOpconv2d_17/Conv2D/ReadVariableOp2@
dense_4/BiasAdd/ReadVariableOpdense_4/BiasAdd/ReadVariableOp2>
dense_4/MatMul/ReadVariableOpdense_4/MatMul/ReadVariableOp2@
dense_5/BiasAdd/ReadVariableOpdense_5/BiasAdd/ReadVariableOp2>
dense_5/MatMul/ReadVariableOpdense_5/MatMul/ReadVariableOp2\
,group_normalization/Reshape_2/ReadVariableOp,group_normalization/Reshape_2/ReadVariableOp2\
,group_normalization/Reshape_3/ReadVariableOp,group_normalization/Reshape_3/ReadVariableOp2`
.group_normalization_1/Reshape_2/ReadVariableOp.group_normalization_1/Reshape_2/ReadVariableOp2`
.group_normalization_1/Reshape_3/ReadVariableOp.group_normalization_1/Reshape_3/ReadVariableOp:X T
0
_output_shapes
:         t╝
 
_user_specified_nameinputs
╠
Ь
Q__inference_batch_normalization_layer_call_and_return_conditional_losses_21506613

inputs%
readvariableop_resource:'
readvariableop_1_resource:6
(fusedbatchnormv3_readvariableop_resource:8
*fusedbatchnormv3_readvariableop_1_resource:
identityИвFusedBatchNormV3/ReadVariableOpв!FusedBatchNormV3/ReadVariableOp_1вReadVariableOpвReadVariableOp_1b
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:*
dtype0f
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:*
dtype0Д
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:*
dtype0И
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:*
dtype0╚
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+                           :::::*
epsilon%oГ:*
is_training( }
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*A
_output_shapes/
-:+                           ░
NoOpNoOp ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+                           : : : : 2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+                           
 
_user_specified_nameinputs
ї
g
K__inference_activation_25_layer_call_and_return_conditional_losses_21505098

inputs
identityO
	LeakyRelu	LeakyReluinputs*/
_output_shapes
:         :^g
IdentityIdentityLeakyRelu:activations:0*
T0*/
_output_shapes
:         :^"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:         :^:W S
/
_output_shapes
:         :^
 
_user_specified_nameinputs
╨
L
0__inference_activation_25_layer_call_fn_21506808

inputs
identity├
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         :^* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2 *0J 8В *T
fORM
K__inference_activation_25_layer_call_and_return_conditional_losses_21505098h
IdentityIdentityPartitionedCall:output:0*
T0*/
_output_shapes
:         :^"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:         :^:W S
/
_output_shapes
:         :^
 
_user_specified_nameinputs
╨	
°
E__inference_dense_4_layer_call_and_return_conditional_losses_21505135

inputs2
matmul_readvariableop_resource:
А╙
-
biasadd_readvariableop_resource:
identityИвBiasAdd/ReadVariableOpвMatMul/ReadVariableOpv
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
А╙
*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         _
IdentityIdentityBiasAdd:output:0^NoOp*
T0*'
_output_shapes
:         w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*,
_input_shapes
:         А╙
: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:Q M
)
_output_shapes
:         А╙

 
_user_specified_nameinputs
░
L
0__inference_activation_26_layer_call_fn_21506872

inputs
identity╗
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         * 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2 *0J 8В *T
fORM
K__inference_activation_26_layer_call_and_return_conditional_losses_21505146`
IdentityIdentityPartitionedCall:output:0*
T0*'
_output_shapes
:         "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:         :O K
'
_output_shapes
:         
 
_user_specified_nameinputs
Б
Я
6__inference_group_normalization_layer_call_fn_21506414

inputs
unknown:
	unknown_0:
identityИвStatefulPartitionedCallЇ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         t╝*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8В *Z
fURS
Q__inference_group_normalization_layer_call_and_return_conditional_losses_21505448x
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*0
_output_shapes
:         t╝`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :         t╝: : 22
StatefulPartitionedCallStatefulPartitionedCall:X T
0
_output_shapes
:         t╝
 
_user_specified_nameinputs
╦
c
G__inference_flatten_1_layer_call_and_return_conditional_losses_21506835

inputs
identityV
ConstConst*
_output_shapes
:*
dtype0*
valueB"    └T ^
ReshapeReshapeinputsConst:output:0*
T0*)
_output_shapes
:         └йZ
IdentityIdentityReshape:output:0*
T0*)
_output_shapes
:         └й"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:         :^:W S
/
_output_shapes
:         :^
 
_user_specified_nameinputs
╓
┘
*__inference_model_1_layer_call_fn_21505212
input_2!
unknown:
	unknown_0:#
	unknown_1:
	unknown_2:
	unknown_3:
	unknown_4:#
	unknown_5:
	unknown_6:
	unknown_7:
	unknown_8:
	unknown_9:

unknown_10:$

unknown_11:

unknown_12:

unknown_13:

unknown_14:$

unknown_15:

unknown_16:

unknown_17:
А╙


unknown_18:

unknown_19:

unknown_20:
identityИвStatefulPartitionedCallя
StatefulPartitionedCallStatefulPartitionedCallinput_2unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18
unknown_19
unknown_20*"
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *8
_read_only_resource_inputs
	
*2
config_proto" 

CPU

GPU2 *0J 8В *N
fIRG
E__inference_model_1_layer_call_and_return_conditional_losses_21505165o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*[
_input_shapesJ
H:         t╝: : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Y U
0
_output_shapes
:         t╝
!
_user_specified_name	input_2
п

А
G__inference_conv2d_13_layer_call_and_return_conditional_losses_21506357

inputs8
conv2d_readvariableop_resource:-
biasadd_readvariableop_resource:
identityИвBiasAdd/ReadVariableOpвConv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:*
dtype0Ъ
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:         t╝*
paddingSAME*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0~
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:         t╝h
IdentityIdentityBiasAdd:output:0^NoOp*
T0*0
_output_shapes
:         t╝w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :         t╝: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:X T
0
_output_shapes
:         t╝
 
_user_specified_nameinputs
Х2
К
S__inference_group_normalization_1_layer_call_and_return_conditional_losses_21505338

inputs/
!reshape_2_readvariableop_resource:/
!reshape_3_readvariableop_resource:
identityИвReshape_2/ReadVariableOpвReshape_3/ReadVariableOp;
ShapeShapeinputs*
T0*
_output_shapes
:=
Shape_1Shapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:╙
strided_sliceStridedSliceShape_1:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:█
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:█
strided_slice_2StridedSliceShape_1:output:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask_
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:█
strided_slice_3StridedSliceShape_1:output:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskI
stack/1Const*
_output_shapes
: *
dtype0*
value	B :I
stack/4Const*
_output_shapes
: *
dtype0*
value	B :л
stackPackstrided_slice:output:0stack/1:output:0strided_slice_1:output:0strided_slice_2:output:0stack/4:output:0*
N*
T0*
_output_shapes
:h
ReshapeReshapeinputsstack:output:0*
T0*3
_output_shapes!
:         :^k
Mean/reduction_indicesConst*
_output_shapes
:*
dtype0*!
valueB"         О
MeanMeanReshape:output:0Mean/reduction_indices:output:0*
T0*3
_output_shapes!
:         *
	keep_dims({
&reduce_variance/Mean/reduction_indicesConst*
_output_shapes
:*
dtype0*!
valueB"         о
reduce_variance/MeanMeanReshape:output:0/reduce_variance/Mean/reduction_indices:output:0*
T0*3
_output_shapes!
:         *
	keep_dims(Й
reduce_variance/subSubReshape:output:0reduce_variance/Mean:output:0*
T0*3
_output_shapes!
:         :^w
reduce_variance/SquareSquarereduce_variance/sub:z:0*
T0*3
_output_shapes!
:         :^}
(reduce_variance/Mean_1/reduction_indicesConst*
_output_shapes
:*
dtype0*!
valueB"         ╝
reduce_variance/Mean_1Meanreduce_variance/Square:y:01reduce_variance/Mean_1/reduction_indices:output:0*
T0*3
_output_shapes!
:         *
	keep_dims(i
subSubReshape:output:0Mean:output:0*
T0*3
_output_shapes!
:         :^J
add/yConst*
_output_shapes
: *
dtype0*
valueB
 *═╠╠={
addAddV2reduce_variance/Mean_1:output:0add/y:output:0*
T0*3
_output_shapes!
:         J
ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    i
MaximumMaximumadd:z:0Const:output:0*
T0*3
_output_shapes!
:         W
SqrtSqrtMaximum:z:0*
T0*3
_output_shapes!
:         c
truedivRealDivsub:z:0Sqrt:y:0*
T0*3
_output_shapes!
:         :^o
	Reshape_1Reshapetruediv:z:0stack:output:0*
T0*3
_output_shapes!
:         :^v
Reshape_2/ReadVariableOpReadVariableOp!reshape_2_readvariableop_resource*
_output_shapes
:*
dtype0l
Reshape_2/shapeConst*
_output_shapes
:*
dtype0*)
value B"               Е
	Reshape_2Reshape Reshape_2/ReadVariableOp:value:0Reshape_2/shape:output:0*
T0**
_output_shapes
:p
mulMulReshape_1:output:0Reshape_2:output:0*
T0*3
_output_shapes!
:         :^v
Reshape_3/ReadVariableOpReadVariableOp!reshape_3_readvariableop_resource*
_output_shapes
:*
dtype0l
Reshape_3/shapeConst*
_output_shapes
:*
dtype0*)
value B"               Е
	Reshape_3Reshape Reshape_3/ReadVariableOp:value:0Reshape_3/shape:output:0*
T0**
_output_shapes
:i
add_1AddV2mul:z:0Reshape_3:output:0*
T0*3
_output_shapes!
:         :^i
	Reshape_4Reshape	add_1:z:0Shape:output:0*
T0*/
_output_shapes
:         :^i
IdentityIdentityReshape_4:output:0^NoOp*
T0*/
_output_shapes
:         :^|
NoOpNoOp^Reshape_2/ReadVariableOp^Reshape_3/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:         :^: : 24
Reshape_2/ReadVariableOpReshape_2/ReadVariableOp24
Reshape_3/ReadVariableOpReshape_3/ReadVariableOp:W S
/
_output_shapes
:         :^
 
_user_specified_nameinputs
╘
L
0__inference_activation_22_layer_call_fn_21506544

inputs
identity─
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         t╝* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2 *0J 8В *T
fORM
K__inference_activation_22_layer_call_and_return_conditional_losses_21504976i
IdentityIdentityPartitionedCall:output:0*
T0*0
_output_shapes
:         t╝"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:         t╝:X T
0
_output_shapes
:         t╝
 
_user_specified_nameinputs
Я2
И
Q__inference_group_normalization_layer_call_and_return_conditional_losses_21505448

inputs/
!reshape_2_readvariableop_resource:/
!reshape_3_readvariableop_resource:
identityИвReshape_2/ReadVariableOpвReshape_3/ReadVariableOp;
ShapeShapeinputs*
T0*
_output_shapes
:=
Shape_1Shapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:╙
strided_sliceStridedSliceShape_1:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:█
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:█
strided_slice_2StridedSliceShape_1:output:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask_
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:█
strided_slice_3StridedSliceShape_1:output:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskI
stack/1Const*
_output_shapes
: *
dtype0*
value	B :I
stack/4Const*
_output_shapes
: *
dtype0*
value	B :л
stackPackstrided_slice:output:0stack/1:output:0strided_slice_1:output:0strided_slice_2:output:0stack/4:output:0*
N*
T0*
_output_shapes
:i
ReshapeReshapeinputsstack:output:0*
T0*4
_output_shapes"
 :         t╝k
Mean/reduction_indicesConst*
_output_shapes
:*
dtype0*!
valueB"         О
MeanMeanReshape:output:0Mean/reduction_indices:output:0*
T0*3
_output_shapes!
:         *
	keep_dims({
&reduce_variance/Mean/reduction_indicesConst*
_output_shapes
:*
dtype0*!
valueB"         о
reduce_variance/MeanMeanReshape:output:0/reduce_variance/Mean/reduction_indices:output:0*
T0*3
_output_shapes!
:         *
	keep_dims(К
reduce_variance/subSubReshape:output:0reduce_variance/Mean:output:0*
T0*4
_output_shapes"
 :         t╝x
reduce_variance/SquareSquarereduce_variance/sub:z:0*
T0*4
_output_shapes"
 :         t╝}
(reduce_variance/Mean_1/reduction_indicesConst*
_output_shapes
:*
dtype0*!
valueB"         ╝
reduce_variance/Mean_1Meanreduce_variance/Square:y:01reduce_variance/Mean_1/reduction_indices:output:0*
T0*3
_output_shapes!
:         *
	keep_dims(j
subSubReshape:output:0Mean:output:0*
T0*4
_output_shapes"
 :         t╝J
add/yConst*
_output_shapes
: *
dtype0*
valueB
 *═╠╠={
addAddV2reduce_variance/Mean_1:output:0add/y:output:0*
T0*3
_output_shapes!
:         J
ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    i
MaximumMaximumadd:z:0Const:output:0*
T0*3
_output_shapes!
:         W
SqrtSqrtMaximum:z:0*
T0*3
_output_shapes!
:         d
truedivRealDivsub:z:0Sqrt:y:0*
T0*4
_output_shapes"
 :         t╝p
	Reshape_1Reshapetruediv:z:0stack:output:0*
T0*4
_output_shapes"
 :         t╝v
Reshape_2/ReadVariableOpReadVariableOp!reshape_2_readvariableop_resource*
_output_shapes
:*
dtype0l
Reshape_2/shapeConst*
_output_shapes
:*
dtype0*)
value B"               Е
	Reshape_2Reshape Reshape_2/ReadVariableOp:value:0Reshape_2/shape:output:0*
T0**
_output_shapes
:q
mulMulReshape_1:output:0Reshape_2:output:0*
T0*4
_output_shapes"
 :         t╝v
Reshape_3/ReadVariableOpReadVariableOp!reshape_3_readvariableop_resource*
_output_shapes
:*
dtype0l
Reshape_3/shapeConst*
_output_shapes
:*
dtype0*)
value B"               Е
	Reshape_3Reshape Reshape_3/ReadVariableOp:value:0Reshape_3/shape:output:0*
T0**
_output_shapes
:j
add_1AddV2mul:z:0Reshape_3:output:0*
T0*4
_output_shapes"
 :         t╝j
	Reshape_4Reshape	add_1:z:0Shape:output:0*
T0*0
_output_shapes
:         t╝j
IdentityIdentityReshape_4:output:0^NoOp*
T0*0
_output_shapes
:         t╝|
NoOpNoOp^Reshape_2/ReadVariableOp^Reshape_3/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :         t╝: : 24
Reshape_2/ReadVariableOpReshape_2/ReadVariableOp24
Reshape_3/ReadVariableOpReshape_3/ReadVariableOp:X T
0
_output_shapes
:         t╝
 
_user_specified_nameinputs
а
k
O__inference_average_pooling2d_layer_call_and_return_conditional_losses_21504776

inputs
identityл
AvgPoolAvgPoolinputs*
T0*J
_output_shapes8
6:4                                    *
ksize
*
paddingVALID*
strides
{
IdentityIdentityAvgPool:output:0*
T0*J
_output_shapes8
6:4                                    "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4                                    :r n
J
_output_shapes8
6:4                                    
 
_user_specified_nameinputs
╚	
Ў
E__inference_dense_5_layer_call_and_return_conditional_losses_21506896

inputs0
matmul_readvariableop_resource:-
biasadd_readvariableop_resource:
identityИвBiasAdd/ReadVariableOpвMatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         _
IdentityIdentityBiasAdd:output:0^NoOp*
T0*'
_output_shapes
:         w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:         : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:         
 
_user_specified_nameinputs
╞
s
I__inference_concatenate_layer_call_and_return_conditional_losses_21505123

inputs
inputs_1
identityM
concat/axisConst*
_output_shapes
: *
dtype0*
value	B :w
concatConcatV2inputsinputs_1concat/axis:output:0*
N*
T0*)
_output_shapes
:         А╙
Y
IdentityIdentityconcat:output:0*
T0*)
_output_shapes
:         А╙
"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*=
_input_shapes,
*:         └й:         └й:Q M
)
_output_shapes
:         └й
 
_user_specified_nameinputs:QM
)
_output_shapes
:         └й
 
_user_specified_nameinputs
∙
g
K__inference_activation_20_layer_call_and_return_conditional_losses_21504871

inputs
identityP
	LeakyRelu	LeakyReluinputs*0
_output_shapes
:         t╝h
IdentityIdentityLeakyRelu:activations:0*
T0*0
_output_shapes
:         t╝"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:         t╝:X T
0
_output_shapes
:         t╝
 
_user_specified_nameinputs
╒
g
K__inference_activation_26_layer_call_and_return_conditional_losses_21505146

inputs
identityG
	LeakyRelu	LeakyReluinputs*'
_output_shapes
:         _
IdentityIdentityLeakyRelu:activations:0*
T0*'
_output_shapes
:         "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:         :O K
'
_output_shapes
:         
 
_user_specified_nameinputs
Я2
И
Q__inference_group_normalization_layer_call_and_return_conditional_losses_21506520

inputs/
!reshape_2_readvariableop_resource:/
!reshape_3_readvariableop_resource:
identityИвReshape_2/ReadVariableOpвReshape_3/ReadVariableOp;
ShapeShapeinputs*
T0*
_output_shapes
:=
Shape_1Shapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:╙
strided_sliceStridedSliceShape_1:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:█
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:█
strided_slice_2StridedSliceShape_1:output:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask_
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:█
strided_slice_3StridedSliceShape_1:output:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskI
stack/1Const*
_output_shapes
: *
dtype0*
value	B :I
stack/4Const*
_output_shapes
: *
dtype0*
value	B :л
stackPackstrided_slice:output:0stack/1:output:0strided_slice_1:output:0strided_slice_2:output:0stack/4:output:0*
N*
T0*
_output_shapes
:i
ReshapeReshapeinputsstack:output:0*
T0*4
_output_shapes"
 :         t╝k
Mean/reduction_indicesConst*
_output_shapes
:*
dtype0*!
valueB"         О
MeanMeanReshape:output:0Mean/reduction_indices:output:0*
T0*3
_output_shapes!
:         *
	keep_dims({
&reduce_variance/Mean/reduction_indicesConst*
_output_shapes
:*
dtype0*!
valueB"         о
reduce_variance/MeanMeanReshape:output:0/reduce_variance/Mean/reduction_indices:output:0*
T0*3
_output_shapes!
:         *
	keep_dims(К
reduce_variance/subSubReshape:output:0reduce_variance/Mean:output:0*
T0*4
_output_shapes"
 :         t╝x
reduce_variance/SquareSquarereduce_variance/sub:z:0*
T0*4
_output_shapes"
 :         t╝}
(reduce_variance/Mean_1/reduction_indicesConst*
_output_shapes
:*
dtype0*!
valueB"         ╝
reduce_variance/Mean_1Meanreduce_variance/Square:y:01reduce_variance/Mean_1/reduction_indices:output:0*
T0*3
_output_shapes!
:         *
	keep_dims(j
subSubReshape:output:0Mean:output:0*
T0*4
_output_shapes"
 :         t╝J
add/yConst*
_output_shapes
: *
dtype0*
valueB
 *═╠╠={
addAddV2reduce_variance/Mean_1:output:0add/y:output:0*
T0*3
_output_shapes!
:         J
ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    i
MaximumMaximumadd:z:0Const:output:0*
T0*3
_output_shapes!
:         W
SqrtSqrtMaximum:z:0*
T0*3
_output_shapes!
:         d
truedivRealDivsub:z:0Sqrt:y:0*
T0*4
_output_shapes"
 :         t╝p
	Reshape_1Reshapetruediv:z:0stack:output:0*
T0*4
_output_shapes"
 :         t╝v
Reshape_2/ReadVariableOpReadVariableOp!reshape_2_readvariableop_resource*
_output_shapes
:*
dtype0l
Reshape_2/shapeConst*
_output_shapes
:*
dtype0*)
value B"               Е
	Reshape_2Reshape Reshape_2/ReadVariableOp:value:0Reshape_2/shape:output:0*
T0**
_output_shapes
:q
mulMulReshape_1:output:0Reshape_2:output:0*
T0*4
_output_shapes"
 :         t╝v
Reshape_3/ReadVariableOpReadVariableOp!reshape_3_readvariableop_resource*
_output_shapes
:*
dtype0l
Reshape_3/shapeConst*
_output_shapes
:*
dtype0*)
value B"               Е
	Reshape_3Reshape Reshape_3/ReadVariableOp:value:0Reshape_3/shape:output:0*
T0**
_output_shapes
:j
add_1AddV2mul:z:0Reshape_3:output:0*
T0*4
_output_shapes"
 :         t╝j
	Reshape_4Reshape	add_1:z:0Shape:output:0*
T0*0
_output_shapes
:         t╝j
IdentityIdentityReshape_4:output:0^NoOp*
T0*0
_output_shapes
:         t╝|
NoOpNoOp^Reshape_2/ReadVariableOp^Reshape_3/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :         t╝: : 24
Reshape_2/ReadVariableOpReshape_2/ReadVariableOp24
Reshape_3/ReadVariableOpReshape_3/ReadVariableOp:X T
0
_output_shapes
:         t╝
 
_user_specified_nameinputs
∙
g
K__inference_activation_21_layer_call_and_return_conditional_losses_21504894

inputs
identityP
	LeakyRelu	LeakyReluinputs*0
_output_shapes
:         t╝h
IdentityIdentityLeakyRelu:activations:0*
T0*0
_output_shapes
:         t╝"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:         t╝:X T
0
_output_shapes
:         t╝
 
_user_specified_nameinputs
╜▄
╕
E__inference_model_1_layer_call_and_return_conditional_losses_21506166

inputsB
(conv2d_13_conv2d_readvariableop_resource:7
)conv2d_13_biasadd_readvariableop_resource:B
(conv2d_14_conv2d_readvariableop_resource:7
)conv2d_14_biasadd_readvariableop_resource:C
5group_normalization_reshape_2_readvariableop_resource:C
5group_normalization_reshape_3_readvariableop_resource:B
(conv2d_15_conv2d_readvariableop_resource:7
)conv2d_15_biasadd_readvariableop_resource:9
+batch_normalization_readvariableop_resource:;
-batch_normalization_readvariableop_1_resource:J
<batch_normalization_fusedbatchnormv3_readvariableop_resource:L
>batch_normalization_fusedbatchnormv3_readvariableop_1_resource:B
(conv2d_16_conv2d_readvariableop_resource:7
)conv2d_16_biasadd_readvariableop_resource:E
7group_normalization_1_reshape_2_readvariableop_resource:E
7group_normalization_1_reshape_3_readvariableop_resource:B
(conv2d_17_conv2d_readvariableop_resource:7
)conv2d_17_biasadd_readvariableop_resource::
&dense_4_matmul_readvariableop_resource:
А╙
5
'dense_4_biasadd_readvariableop_resource:8
&dense_5_matmul_readvariableop_resource:5
'dense_5_biasadd_readvariableop_resource:
identityИв3batch_normalization/FusedBatchNormV3/ReadVariableOpв5batch_normalization/FusedBatchNormV3/ReadVariableOp_1в"batch_normalization/ReadVariableOpв$batch_normalization/ReadVariableOp_1в conv2d_13/BiasAdd/ReadVariableOpвconv2d_13/Conv2D/ReadVariableOpв conv2d_14/BiasAdd/ReadVariableOpвconv2d_14/Conv2D/ReadVariableOpв conv2d_15/BiasAdd/ReadVariableOpвconv2d_15/Conv2D/ReadVariableOpв conv2d_16/BiasAdd/ReadVariableOpвconv2d_16/Conv2D/ReadVariableOpв conv2d_17/BiasAdd/ReadVariableOpвconv2d_17/Conv2D/ReadVariableOpвdense_4/BiasAdd/ReadVariableOpвdense_4/MatMul/ReadVariableOpвdense_5/BiasAdd/ReadVariableOpвdense_5/MatMul/ReadVariableOpв,group_normalization/Reshape_2/ReadVariableOpв,group_normalization/Reshape_3/ReadVariableOpв.group_normalization_1/Reshape_2/ReadVariableOpв.group_normalization_1/Reshape_3/ReadVariableOpР
conv2d_13/Conv2D/ReadVariableOpReadVariableOp(conv2d_13_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype0о
conv2d_13/Conv2DConv2Dinputs'conv2d_13/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:         t╝*
paddingSAME*
strides
Ж
 conv2d_13/BiasAdd/ReadVariableOpReadVariableOp)conv2d_13_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0Ь
conv2d_13/BiasAddBiasAddconv2d_13/Conv2D:output:0(conv2d_13/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:         t╝r
activation_20/LeakyRelu	LeakyReluconv2d_13/BiasAdd:output:0*0
_output_shapes
:         t╝Р
conv2d_14/Conv2D/ReadVariableOpReadVariableOp(conv2d_14_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype0═
conv2d_14/Conv2DConv2D%activation_20/LeakyRelu:activations:0'conv2d_14/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:         t╝*
paddingSAME*
strides
Ж
 conv2d_14/BiasAdd/ReadVariableOpReadVariableOp)conv2d_14_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0Ь
conv2d_14/BiasAddBiasAddconv2d_14/Conv2D:output:0(conv2d_14/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:         t╝r
activation_21/LeakyRelu	LeakyReluconv2d_14/BiasAdd:output:0*0
_output_shapes
:         t╝n
group_normalization/ShapeShape%activation_21/LeakyRelu:activations:0*
T0*
_output_shapes
:p
group_normalization/Shape_1Shape%activation_21/LeakyRelu:activations:0*
T0*
_output_shapes
:q
'group_normalization/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: s
)group_normalization/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:s
)group_normalization/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:╖
!group_normalization/strided_sliceStridedSlice$group_normalization/Shape_1:output:00group_normalization/strided_slice/stack:output:02group_normalization/strided_slice/stack_1:output:02group_normalization/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masks
)group_normalization/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:u
+group_normalization/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:u
+group_normalization/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:┐
#group_normalization/strided_slice_1StridedSlice$group_normalization/Shape_1:output:02group_normalization/strided_slice_1/stack:output:04group_normalization/strided_slice_1/stack_1:output:04group_normalization/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masks
)group_normalization/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:u
+group_normalization/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:u
+group_normalization/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:┐
#group_normalization/strided_slice_2StridedSlice$group_normalization/Shape_1:output:02group_normalization/strided_slice_2/stack:output:04group_normalization/strided_slice_2/stack_1:output:04group_normalization/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masks
)group_normalization/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:u
+group_normalization/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB:u
+group_normalization/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:┐
#group_normalization/strided_slice_3StridedSlice$group_normalization/Shape_1:output:02group_normalization/strided_slice_3/stack:output:04group_normalization/strided_slice_3/stack_1:output:04group_normalization/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask]
group_normalization/stack/1Const*
_output_shapes
: *
dtype0*
value	B :]
group_normalization/stack/4Const*
_output_shapes
: *
dtype0*
value	B :г
group_normalization/stackPack*group_normalization/strided_slice:output:0$group_normalization/stack/1:output:0,group_normalization/strided_slice_1:output:0,group_normalization/strided_slice_2:output:0$group_normalization/stack/4:output:0*
N*
T0*
_output_shapes
:░
group_normalization/ReshapeReshape%activation_21/LeakyRelu:activations:0"group_normalization/stack:output:0*
T0*4
_output_shapes"
 :         t╝
*group_normalization/Mean/reduction_indicesConst*
_output_shapes
:*
dtype0*!
valueB"         ╩
group_normalization/MeanMean$group_normalization/Reshape:output:03group_normalization/Mean/reduction_indices:output:0*
T0*3
_output_shapes!
:         *
	keep_dims(П
:group_normalization/reduce_variance/Mean/reduction_indicesConst*
_output_shapes
:*
dtype0*!
valueB"         ъ
(group_normalization/reduce_variance/MeanMean$group_normalization/Reshape:output:0Cgroup_normalization/reduce_variance/Mean/reduction_indices:output:0*
T0*3
_output_shapes!
:         *
	keep_dims(╞
'group_normalization/reduce_variance/subSub$group_normalization/Reshape:output:01group_normalization/reduce_variance/Mean:output:0*
T0*4
_output_shapes"
 :         t╝а
*group_normalization/reduce_variance/SquareSquare+group_normalization/reduce_variance/sub:z:0*
T0*4
_output_shapes"
 :         t╝С
<group_normalization/reduce_variance/Mean_1/reduction_indicesConst*
_output_shapes
:*
dtype0*!
valueB"         °
*group_normalization/reduce_variance/Mean_1Mean.group_normalization/reduce_variance/Square:y:0Egroup_normalization/reduce_variance/Mean_1/reduction_indices:output:0*
T0*3
_output_shapes!
:         *
	keep_dims(ж
group_normalization/subSub$group_normalization/Reshape:output:0!group_normalization/Mean:output:0*
T0*4
_output_shapes"
 :         t╝^
group_normalization/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *═╠╠=╖
group_normalization/addAddV23group_normalization/reduce_variance/Mean_1:output:0"group_normalization/add/y:output:0*
T0*3
_output_shapes!
:         ^
group_normalization/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    е
group_normalization/MaximumMaximumgroup_normalization/add:z:0"group_normalization/Const:output:0*
T0*3
_output_shapes!
:         
group_normalization/SqrtSqrtgroup_normalization/Maximum:z:0*
T0*3
_output_shapes!
:         а
group_normalization/truedivRealDivgroup_normalization/sub:z:0group_normalization/Sqrt:y:0*
T0*4
_output_shapes"
 :         t╝м
group_normalization/Reshape_1Reshapegroup_normalization/truediv:z:0"group_normalization/stack:output:0*
T0*4
_output_shapes"
 :         t╝Ю
,group_normalization/Reshape_2/ReadVariableOpReadVariableOp5group_normalization_reshape_2_readvariableop_resource*
_output_shapes
:*
dtype0А
#group_normalization/Reshape_2/shapeConst*
_output_shapes
:*
dtype0*)
value B"               ┴
group_normalization/Reshape_2Reshape4group_normalization/Reshape_2/ReadVariableOp:value:0,group_normalization/Reshape_2/shape:output:0*
T0**
_output_shapes
:н
group_normalization/mulMul&group_normalization/Reshape_1:output:0&group_normalization/Reshape_2:output:0*
T0*4
_output_shapes"
 :         t╝Ю
,group_normalization/Reshape_3/ReadVariableOpReadVariableOp5group_normalization_reshape_3_readvariableop_resource*
_output_shapes
:*
dtype0А
#group_normalization/Reshape_3/shapeConst*
_output_shapes
:*
dtype0*)
value B"               ┴
group_normalization/Reshape_3Reshape4group_normalization/Reshape_3/ReadVariableOp:value:0,group_normalization/Reshape_3/shape:output:0*
T0**
_output_shapes
:ж
group_normalization/add_1AddV2group_normalization/mul:z:0&group_normalization/Reshape_3:output:0*
T0*4
_output_shapes"
 :         t╝ж
group_normalization/Reshape_4Reshapegroup_normalization/add_1:z:0"group_normalization/Shape:output:0*
T0*0
_output_shapes
:         t╝Р
conv2d_15/Conv2D/ReadVariableOpReadVariableOp(conv2d_15_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype0╬
conv2d_15/Conv2DConv2D&group_normalization/Reshape_4:output:0'conv2d_15/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:         t╝*
paddingSAME*
strides
Ж
 conv2d_15/BiasAdd/ReadVariableOpReadVariableOp)conv2d_15_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0Ь
conv2d_15/BiasAddBiasAddconv2d_15/Conv2D:output:0(conv2d_15/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:         t╝r
activation_22/LeakyRelu	LeakyReluconv2d_15/BiasAdd:output:0*0
_output_shapes
:         t╝┴
average_pooling2d/AvgPoolAvgPool%activation_22/LeakyRelu:activations:0*
T0*/
_output_shapes
:         :^*
ksize
*
paddingVALID*
strides
y
activation_23/LeakyRelu	LeakyRelu"average_pooling2d/AvgPool:output:0*/
_output_shapes
:         :^К
"batch_normalization/ReadVariableOpReadVariableOp+batch_normalization_readvariableop_resource*
_output_shapes
:*
dtype0О
$batch_normalization/ReadVariableOp_1ReadVariableOp-batch_normalization_readvariableop_1_resource*
_output_shapes
:*
dtype0м
3batch_normalization/FusedBatchNormV3/ReadVariableOpReadVariableOp<batch_normalization_fusedbatchnormv3_readvariableop_resource*
_output_shapes
:*
dtype0░
5batch_normalization/FusedBatchNormV3/ReadVariableOp_1ReadVariableOp>batch_normalization_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:*
dtype0╣
$batch_normalization/FusedBatchNormV3FusedBatchNormV3%activation_23/LeakyRelu:activations:0*batch_normalization/ReadVariableOp:value:0,batch_normalization/ReadVariableOp_1:value:0;batch_normalization/FusedBatchNormV3/ReadVariableOp:value:0=batch_normalization/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:         :^:::::*
epsilon%oГ:*
is_training( Р
conv2d_16/Conv2D/ReadVariableOpReadVariableOp(conv2d_16_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype0╧
conv2d_16/Conv2DConv2D(batch_normalization/FusedBatchNormV3:y:0'conv2d_16/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:         :^*
paddingSAME*
strides
Ж
 conv2d_16/BiasAdd/ReadVariableOpReadVariableOp)conv2d_16_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0Ы
conv2d_16/BiasAddBiasAddconv2d_16/Conv2D:output:0(conv2d_16/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:         :^q
activation_24/LeakyRelu	LeakyReluconv2d_16/BiasAdd:output:0*/
_output_shapes
:         :^p
group_normalization_1/ShapeShape%activation_24/LeakyRelu:activations:0*
T0*
_output_shapes
:r
group_normalization_1/Shape_1Shape%activation_24/LeakyRelu:activations:0*
T0*
_output_shapes
:s
)group_normalization_1/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: u
+group_normalization_1/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:u
+group_normalization_1/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:┴
#group_normalization_1/strided_sliceStridedSlice&group_normalization_1/Shape_1:output:02group_normalization_1/strided_slice/stack:output:04group_normalization_1/strided_slice/stack_1:output:04group_normalization_1/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masku
+group_normalization_1/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:w
-group_normalization_1/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:w
-group_normalization_1/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:╔
%group_normalization_1/strided_slice_1StridedSlice&group_normalization_1/Shape_1:output:04group_normalization_1/strided_slice_1/stack:output:06group_normalization_1/strided_slice_1/stack_1:output:06group_normalization_1/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masku
+group_normalization_1/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:w
-group_normalization_1/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:w
-group_normalization_1/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:╔
%group_normalization_1/strided_slice_2StridedSlice&group_normalization_1/Shape_1:output:04group_normalization_1/strided_slice_2/stack:output:06group_normalization_1/strided_slice_2/stack_1:output:06group_normalization_1/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masku
+group_normalization_1/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:w
-group_normalization_1/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB:w
-group_normalization_1/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:╔
%group_normalization_1/strided_slice_3StridedSlice&group_normalization_1/Shape_1:output:04group_normalization_1/strided_slice_3/stack:output:06group_normalization_1/strided_slice_3/stack_1:output:06group_normalization_1/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask_
group_normalization_1/stack/1Const*
_output_shapes
: *
dtype0*
value	B :_
group_normalization_1/stack/4Const*
_output_shapes
: *
dtype0*
value	B :п
group_normalization_1/stackPack,group_normalization_1/strided_slice:output:0&group_normalization_1/stack/1:output:0.group_normalization_1/strided_slice_1:output:0.group_normalization_1/strided_slice_2:output:0&group_normalization_1/stack/4:output:0*
N*
T0*
_output_shapes
:│
group_normalization_1/ReshapeReshape%activation_24/LeakyRelu:activations:0$group_normalization_1/stack:output:0*
T0*3
_output_shapes!
:         :^Б
,group_normalization_1/Mean/reduction_indicesConst*
_output_shapes
:*
dtype0*!
valueB"         ╨
group_normalization_1/MeanMean&group_normalization_1/Reshape:output:05group_normalization_1/Mean/reduction_indices:output:0*
T0*3
_output_shapes!
:         *
	keep_dims(С
<group_normalization_1/reduce_variance/Mean/reduction_indicesConst*
_output_shapes
:*
dtype0*!
valueB"         Ё
*group_normalization_1/reduce_variance/MeanMean&group_normalization_1/Reshape:output:0Egroup_normalization_1/reduce_variance/Mean/reduction_indices:output:0*
T0*3
_output_shapes!
:         *
	keep_dims(╦
)group_normalization_1/reduce_variance/subSub&group_normalization_1/Reshape:output:03group_normalization_1/reduce_variance/Mean:output:0*
T0*3
_output_shapes!
:         :^г
,group_normalization_1/reduce_variance/SquareSquare-group_normalization_1/reduce_variance/sub:z:0*
T0*3
_output_shapes!
:         :^У
>group_normalization_1/reduce_variance/Mean_1/reduction_indicesConst*
_output_shapes
:*
dtype0*!
valueB"         ■
,group_normalization_1/reduce_variance/Mean_1Mean0group_normalization_1/reduce_variance/Square:y:0Ggroup_normalization_1/reduce_variance/Mean_1/reduction_indices:output:0*
T0*3
_output_shapes!
:         *
	keep_dims(л
group_normalization_1/subSub&group_normalization_1/Reshape:output:0#group_normalization_1/Mean:output:0*
T0*3
_output_shapes!
:         :^`
group_normalization_1/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *═╠╠=╜
group_normalization_1/addAddV25group_normalization_1/reduce_variance/Mean_1:output:0$group_normalization_1/add/y:output:0*
T0*3
_output_shapes!
:         `
group_normalization_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    л
group_normalization_1/MaximumMaximumgroup_normalization_1/add:z:0$group_normalization_1/Const:output:0*
T0*3
_output_shapes!
:         Г
group_normalization_1/SqrtSqrt!group_normalization_1/Maximum:z:0*
T0*3
_output_shapes!
:         е
group_normalization_1/truedivRealDivgroup_normalization_1/sub:z:0group_normalization_1/Sqrt:y:0*
T0*3
_output_shapes!
:         :^▒
group_normalization_1/Reshape_1Reshape!group_normalization_1/truediv:z:0$group_normalization_1/stack:output:0*
T0*3
_output_shapes!
:         :^в
.group_normalization_1/Reshape_2/ReadVariableOpReadVariableOp7group_normalization_1_reshape_2_readvariableop_resource*
_output_shapes
:*
dtype0В
%group_normalization_1/Reshape_2/shapeConst*
_output_shapes
:*
dtype0*)
value B"               ╟
group_normalization_1/Reshape_2Reshape6group_normalization_1/Reshape_2/ReadVariableOp:value:0.group_normalization_1/Reshape_2/shape:output:0*
T0**
_output_shapes
:▓
group_normalization_1/mulMul(group_normalization_1/Reshape_1:output:0(group_normalization_1/Reshape_2:output:0*
T0*3
_output_shapes!
:         :^в
.group_normalization_1/Reshape_3/ReadVariableOpReadVariableOp7group_normalization_1_reshape_3_readvariableop_resource*
_output_shapes
:*
dtype0В
%group_normalization_1/Reshape_3/shapeConst*
_output_shapes
:*
dtype0*)
value B"               ╟
group_normalization_1/Reshape_3Reshape6group_normalization_1/Reshape_3/ReadVariableOp:value:0.group_normalization_1/Reshape_3/shape:output:0*
T0**
_output_shapes
:л
group_normalization_1/add_1AddV2group_normalization_1/mul:z:0(group_normalization_1/Reshape_3:output:0*
T0*3
_output_shapes!
:         :^л
group_normalization_1/Reshape_4Reshapegroup_normalization_1/add_1:z:0$group_normalization_1/Shape:output:0*
T0*/
_output_shapes
:         :^Р
conv2d_17/Conv2D/ReadVariableOpReadVariableOp(conv2d_17_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype0╧
conv2d_17/Conv2DConv2D(group_normalization_1/Reshape_4:output:0'conv2d_17/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:         :^*
paddingSAME*
strides
Ж
 conv2d_17/BiasAdd/ReadVariableOpReadVariableOp)conv2d_17_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0Ы
conv2d_17/BiasAddBiasAddconv2d_17/Conv2D:output:0(conv2d_17/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:         :^q
activation_25/LeakyRelu	LeakyReluconv2d_17/BiasAdd:output:0*/
_output_shapes
:         :^^
flatten/ConstConst*
_output_shapes
:*
dtype0*
valueB"    └T Н
flatten/ReshapeReshape%activation_23/LeakyRelu:activations:0flatten/Const:output:0*
T0*)
_output_shapes
:         └й`
flatten_1/ConstConst*
_output_shapes
:*
dtype0*
valueB"    └T С
flatten_1/ReshapeReshape%activation_25/LeakyRelu:activations:0flatten_1/Const:output:0*
T0*)
_output_shapes
:         └йY
concatenate/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :│
concatenate/concatConcatV2flatten/Reshape:output:0flatten_1/Reshape:output:0 concatenate/concat/axis:output:0*
N*
T0*)
_output_shapes
:         А╙
Ж
dense_4/MatMul/ReadVariableOpReadVariableOp&dense_4_matmul_readvariableop_resource* 
_output_shapes
:
А╙
*
dtype0О
dense_4/MatMulMatMulconcatenate/concat:output:0%dense_4/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         В
dense_4/BiasAdd/ReadVariableOpReadVariableOp'dense_4_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0О
dense_4/BiasAddBiasAdddense_4/MatMul:product:0&dense_4/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         g
activation_26/LeakyRelu	LeakyReludense_4/BiasAdd:output:0*'
_output_shapes
:         Д
dense_5/MatMul/ReadVariableOpReadVariableOp&dense_5_matmul_readvariableop_resource*
_output_shapes

:*
dtype0Ш
dense_5/MatMulMatMul%activation_26/LeakyRelu:activations:0%dense_5/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         В
dense_5/BiasAdd/ReadVariableOpReadVariableOp'dense_5_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0О
dense_5/BiasAddBiasAdddense_5/MatMul:product:0&dense_5/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         g
IdentityIdentitydense_5/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:         Ы
NoOpNoOp4^batch_normalization/FusedBatchNormV3/ReadVariableOp6^batch_normalization/FusedBatchNormV3/ReadVariableOp_1#^batch_normalization/ReadVariableOp%^batch_normalization/ReadVariableOp_1!^conv2d_13/BiasAdd/ReadVariableOp ^conv2d_13/Conv2D/ReadVariableOp!^conv2d_14/BiasAdd/ReadVariableOp ^conv2d_14/Conv2D/ReadVariableOp!^conv2d_15/BiasAdd/ReadVariableOp ^conv2d_15/Conv2D/ReadVariableOp!^conv2d_16/BiasAdd/ReadVariableOp ^conv2d_16/Conv2D/ReadVariableOp!^conv2d_17/BiasAdd/ReadVariableOp ^conv2d_17/Conv2D/ReadVariableOp^dense_4/BiasAdd/ReadVariableOp^dense_4/MatMul/ReadVariableOp^dense_5/BiasAdd/ReadVariableOp^dense_5/MatMul/ReadVariableOp-^group_normalization/Reshape_2/ReadVariableOp-^group_normalization/Reshape_3/ReadVariableOp/^group_normalization_1/Reshape_2/ReadVariableOp/^group_normalization_1/Reshape_3/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*[
_input_shapesJ
H:         t╝: : : : : : : : : : : : : : : : : : : : : : 2j
3batch_normalization/FusedBatchNormV3/ReadVariableOp3batch_normalization/FusedBatchNormV3/ReadVariableOp2n
5batch_normalization/FusedBatchNormV3/ReadVariableOp_15batch_normalization/FusedBatchNormV3/ReadVariableOp_12H
"batch_normalization/ReadVariableOp"batch_normalization/ReadVariableOp2L
$batch_normalization/ReadVariableOp_1$batch_normalization/ReadVariableOp_12D
 conv2d_13/BiasAdd/ReadVariableOp conv2d_13/BiasAdd/ReadVariableOp2B
conv2d_13/Conv2D/ReadVariableOpconv2d_13/Conv2D/ReadVariableOp2D
 conv2d_14/BiasAdd/ReadVariableOp conv2d_14/BiasAdd/ReadVariableOp2B
conv2d_14/Conv2D/ReadVariableOpconv2d_14/Conv2D/ReadVariableOp2D
 conv2d_15/BiasAdd/ReadVariableOp conv2d_15/BiasAdd/ReadVariableOp2B
conv2d_15/Conv2D/ReadVariableOpconv2d_15/Conv2D/ReadVariableOp2D
 conv2d_16/BiasAdd/ReadVariableOp conv2d_16/BiasAdd/ReadVariableOp2B
conv2d_16/Conv2D/ReadVariableOpconv2d_16/Conv2D/ReadVariableOp2D
 conv2d_17/BiasAdd/ReadVariableOp conv2d_17/BiasAdd/ReadVariableOp2B
conv2d_17/Conv2D/ReadVariableOpconv2d_17/Conv2D/ReadVariableOp2@
dense_4/BiasAdd/ReadVariableOpdense_4/BiasAdd/ReadVariableOp2>
dense_4/MatMul/ReadVariableOpdense_4/MatMul/ReadVariableOp2@
dense_5/BiasAdd/ReadVariableOpdense_5/BiasAdd/ReadVariableOp2>
dense_5/MatMul/ReadVariableOpdense_5/MatMul/ReadVariableOp2\
,group_normalization/Reshape_2/ReadVariableOp,group_normalization/Reshape_2/ReadVariableOp2\
,group_normalization/Reshape_3/ReadVariableOp,group_normalization/Reshape_3/ReadVariableOp2`
.group_normalization_1/Reshape_2/ReadVariableOp.group_normalization_1/Reshape_2/ReadVariableOp2`
.group_normalization_1/Reshape_3/ReadVariableOp.group_normalization_1/Reshape_3/ReadVariableOp:X T
0
_output_shapes
:         t╝
 
_user_specified_nameinputs
ШZ
ч

E__inference_model_1_layer_call_and_return_conditional_losses_21505841
input_2,
conv2d_13_21505775: 
conv2d_13_21505777:,
conv2d_14_21505781: 
conv2d_14_21505783:*
group_normalization_21505787:*
group_normalization_21505789:,
conv2d_15_21505792: 
conv2d_15_21505794:*
batch_normalization_21505800:*
batch_normalization_21505802:*
batch_normalization_21505804:*
batch_normalization_21505806:,
conv2d_16_21505809: 
conv2d_16_21505811:,
group_normalization_1_21505815:,
group_normalization_1_21505817:,
conv2d_17_21505820: 
conv2d_17_21505822:$
dense_4_21505829:
А╙

dense_4_21505831:"
dense_5_21505835:
dense_5_21505837:
identityИв+batch_normalization/StatefulPartitionedCallв!conv2d_13/StatefulPartitionedCallв!conv2d_14/StatefulPartitionedCallв!conv2d_15/StatefulPartitionedCallв!conv2d_16/StatefulPartitionedCallв!conv2d_17/StatefulPartitionedCallвdense_4/StatefulPartitionedCallвdense_5/StatefulPartitionedCallв+group_normalization/StatefulPartitionedCallв-group_normalization_1/StatefulPartitionedCallЙ
!conv2d_13/StatefulPartitionedCallStatefulPartitionedCallinput_2conv2d_13_21505775conv2d_13_21505777*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         t╝*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8В *P
fKRI
G__inference_conv2d_13_layer_call_and_return_conditional_losses_21504860Ў
activation_20/PartitionedCallPartitionedCall*conv2d_13/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         t╝* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2 *0J 8В *T
fORM
K__inference_activation_20_layer_call_and_return_conditional_losses_21504871и
!conv2d_14/StatefulPartitionedCallStatefulPartitionedCall&activation_20/PartitionedCall:output:0conv2d_14_21505781conv2d_14_21505783*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         t╝*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8В *P
fKRI
G__inference_conv2d_14_layer_call_and_return_conditional_losses_21504883Ў
activation_21/PartitionedCallPartitionedCall*conv2d_14/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         t╝* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2 *0J 8В *T
fORM
K__inference_activation_21_layer_call_and_return_conditional_losses_21504894╨
+group_normalization/StatefulPartitionedCallStatefulPartitionedCall&activation_21/PartitionedCall:output:0group_normalization_21505787group_normalization_21505789*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         t╝*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8В *Z
fURS
Q__inference_group_normalization_layer_call_and_return_conditional_losses_21505448╢
!conv2d_15/StatefulPartitionedCallStatefulPartitionedCall4group_normalization/StatefulPartitionedCall:output:0conv2d_15_21505792conv2d_15_21505794*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         t╝*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8В *P
fKRI
G__inference_conv2d_15_layer_call_and_return_conditional_losses_21504965Ў
activation_22/PartitionedCallPartitionedCall*conv2d_15/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         t╝* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2 *0J 8В *T
fORM
K__inference_activation_22_layer_call_and_return_conditional_losses_21504976∙
!average_pooling2d/PartitionedCallPartitionedCall&activation_22/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         :^* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2 *0J 8В *X
fSRQ
O__inference_average_pooling2d_layer_call_and_return_conditional_losses_21504776ї
activation_23/PartitionedCallPartitionedCall*average_pooling2d/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         :^* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2 *0J 8В *T
fORM
K__inference_activation_23_layer_call_and_return_conditional_losses_21504984Н
+batch_normalization/StatefulPartitionedCallStatefulPartitionedCall&activation_23/PartitionedCall:output:0batch_normalization_21505800batch_normalization_21505802batch_normalization_21505804batch_normalization_21505806*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         :^*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8В *Z
fURS
Q__inference_batch_normalization_layer_call_and_return_conditional_losses_21504832╡
!conv2d_16/StatefulPartitionedCallStatefulPartitionedCall4batch_normalization/StatefulPartitionedCall:output:0conv2d_16_21505809conv2d_16_21505811*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         :^*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8В *P
fKRI
G__inference_conv2d_16_layer_call_and_return_conditional_losses_21505005ї
activation_24/PartitionedCallPartitionedCall*conv2d_16/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         :^* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2 *0J 8В *T
fORM
K__inference_activation_24_layer_call_and_return_conditional_losses_21505016╫
-group_normalization_1/StatefulPartitionedCallStatefulPartitionedCall&activation_24/PartitionedCall:output:0group_normalization_1_21505815group_normalization_1_21505817*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         :^*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8В *\
fWRU
S__inference_group_normalization_1_layer_call_and_return_conditional_losses_21505338╖
!conv2d_17/StatefulPartitionedCallStatefulPartitionedCall6group_normalization_1/StatefulPartitionedCall:output:0conv2d_17_21505820conv2d_17_21505822*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         :^*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8В *P
fKRI
G__inference_conv2d_17_layer_call_and_return_conditional_losses_21505087ї
activation_25/PartitionedCallPartitionedCall*conv2d_17/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         :^* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2 *0J 8В *T
fORM
K__inference_activation_25_layer_call_and_return_conditional_losses_21505098▀
flatten/PartitionedCallPartitionedCall&activation_23/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *)
_output_shapes
:         └й* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2 *0J 8В *N
fIRG
E__inference_flatten_layer_call_and_return_conditional_losses_21505106у
flatten_1/PartitionedCallPartitionedCall&activation_25/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *)
_output_shapes
:         └й* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2 *0J 8В *P
fKRI
G__inference_flatten_1_layer_call_and_return_conditional_losses_21505114Ж
concatenate/PartitionedCallPartitionedCall flatten/PartitionedCall:output:0"flatten_1/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *)
_output_shapes
:         А╙
* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2 *0J 8В *R
fMRK
I__inference_concatenate_layer_call_and_return_conditional_losses_21505123Х
dense_4/StatefulPartitionedCallStatefulPartitionedCall$concatenate/PartitionedCall:output:0dense_4_21505829dense_4_21505831*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8В *N
fIRG
E__inference_dense_4_layer_call_and_return_conditional_losses_21505135ы
activation_26/PartitionedCallPartitionedCall(dense_4/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         * 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2 *0J 8В *T
fORM
K__inference_activation_26_layer_call_and_return_conditional_losses_21505146Ч
dense_5/StatefulPartitionedCallStatefulPartitionedCall&activation_26/PartitionedCall:output:0dense_5_21505835dense_5_21505837*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8В *N
fIRG
E__inference_dense_5_layer_call_and_return_conditional_losses_21505158w
IdentityIdentity(dense_5/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         ╩
NoOpNoOp,^batch_normalization/StatefulPartitionedCall"^conv2d_13/StatefulPartitionedCall"^conv2d_14/StatefulPartitionedCall"^conv2d_15/StatefulPartitionedCall"^conv2d_16/StatefulPartitionedCall"^conv2d_17/StatefulPartitionedCall ^dense_4/StatefulPartitionedCall ^dense_5/StatefulPartitionedCall,^group_normalization/StatefulPartitionedCall.^group_normalization_1/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*[
_input_shapesJ
H:         t╝: : : : : : : : : : : : : : : : : : : : : : 2Z
+batch_normalization/StatefulPartitionedCall+batch_normalization/StatefulPartitionedCall2F
!conv2d_13/StatefulPartitionedCall!conv2d_13/StatefulPartitionedCall2F
!conv2d_14/StatefulPartitionedCall!conv2d_14/StatefulPartitionedCall2F
!conv2d_15/StatefulPartitionedCall!conv2d_15/StatefulPartitionedCall2F
!conv2d_16/StatefulPartitionedCall!conv2d_16/StatefulPartitionedCall2F
!conv2d_17/StatefulPartitionedCall!conv2d_17/StatefulPartitionedCall2B
dense_4/StatefulPartitionedCalldense_4/StatefulPartitionedCall2B
dense_5/StatefulPartitionedCalldense_5/StatefulPartitionedCall2Z
+group_normalization/StatefulPartitionedCall+group_normalization/StatefulPartitionedCall2^
-group_normalization_1/StatefulPartitionedCall-group_normalization_1/StatefulPartitionedCall:Y U
0
_output_shapes
:         t╝
!
_user_specified_name	input_2
╬
u
I__inference_concatenate_layer_call_and_return_conditional_losses_21506848
inputs_0
inputs_1
identityM
concat/axisConst*
_output_shapes
: *
dtype0*
value	B :y
concatConcatV2inputs_0inputs_1concat/axis:output:0*
N*
T0*)
_output_shapes
:         А╙
Y
IdentityIdentityconcat:output:0*
T0*)
_output_shapes
:         А╙
"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*=
_input_shapes,
*:         └й:         └й:S O
)
_output_shapes
:         └й
"
_user_specified_name
inputs/0:SO
)
_output_shapes
:         └й
"
_user_specified_name
inputs/1
∙
g
K__inference_activation_21_layer_call_and_return_conditional_losses_21506396

inputs
identityP
	LeakyRelu	LeakyReluinputs*0
_output_shapes
:         t╝h
IdentityIdentityLeakyRelu:activations:0*
T0*0
_output_shapes
:         t╝"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:         t╝:X T
0
_output_shapes
:         t╝
 
_user_specified_nameinputs
а
k
O__inference_average_pooling2d_layer_call_and_return_conditional_losses_21506559

inputs
identityл
AvgPoolAvgPoolinputs*
T0*J
_output_shapes8
6:4                                    *
ksize
*
paddingVALID*
strides
{
IdentityIdentityAvgPool:output:0*
T0*J
_output_shapes8
6:4                                    "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4                                    :r n
J
_output_shapes8
6:4                                    
 
_user_specified_nameinputs
╜
Z
.__inference_concatenate_layer_call_fn_21506841
inputs_0
inputs_1
identity╚
PartitionedCallPartitionedCallinputs_0inputs_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *)
_output_shapes
:         А╙
* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2 *0J 8В *R
fMRK
I__inference_concatenate_layer_call_and_return_conditional_losses_21505123b
IdentityIdentityPartitionedCall:output:0*
T0*)
_output_shapes
:         А╙
"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*=
_input_shapes,
*:         └й:         └й:S O
)
_output_shapes
:         └й
"
_user_specified_name
inputs/0:SO
)
_output_shapes
:         └й
"
_user_specified_name
inputs/1
ЧZ
ц

E__inference_model_1_layer_call_and_return_conditional_losses_21505165

inputs,
conv2d_13_21504861: 
conv2d_13_21504863:,
conv2d_14_21504884: 
conv2d_14_21504886:*
group_normalization_21504950:*
group_normalization_21504952:,
conv2d_15_21504966: 
conv2d_15_21504968:*
batch_normalization_21504986:*
batch_normalization_21504988:*
batch_normalization_21504990:*
batch_normalization_21504992:,
conv2d_16_21505006: 
conv2d_16_21505008:,
group_normalization_1_21505072:,
group_normalization_1_21505074:,
conv2d_17_21505088: 
conv2d_17_21505090:$
dense_4_21505136:
А╙

dense_4_21505138:"
dense_5_21505159:
dense_5_21505161:
identityИв+batch_normalization/StatefulPartitionedCallв!conv2d_13/StatefulPartitionedCallв!conv2d_14/StatefulPartitionedCallв!conv2d_15/StatefulPartitionedCallв!conv2d_16/StatefulPartitionedCallв!conv2d_17/StatefulPartitionedCallвdense_4/StatefulPartitionedCallвdense_5/StatefulPartitionedCallв+group_normalization/StatefulPartitionedCallв-group_normalization_1/StatefulPartitionedCallИ
!conv2d_13/StatefulPartitionedCallStatefulPartitionedCallinputsconv2d_13_21504861conv2d_13_21504863*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         t╝*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8В *P
fKRI
G__inference_conv2d_13_layer_call_and_return_conditional_losses_21504860Ў
activation_20/PartitionedCallPartitionedCall*conv2d_13/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         t╝* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2 *0J 8В *T
fORM
K__inference_activation_20_layer_call_and_return_conditional_losses_21504871и
!conv2d_14/StatefulPartitionedCallStatefulPartitionedCall&activation_20/PartitionedCall:output:0conv2d_14_21504884conv2d_14_21504886*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         t╝*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8В *P
fKRI
G__inference_conv2d_14_layer_call_and_return_conditional_losses_21504883Ў
activation_21/PartitionedCallPartitionedCall*conv2d_14/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         t╝* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2 *0J 8В *T
fORM
K__inference_activation_21_layer_call_and_return_conditional_losses_21504894╨
+group_normalization/StatefulPartitionedCallStatefulPartitionedCall&activation_21/PartitionedCall:output:0group_normalization_21504950group_normalization_21504952*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         t╝*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8В *Z
fURS
Q__inference_group_normalization_layer_call_and_return_conditional_losses_21504949╢
!conv2d_15/StatefulPartitionedCallStatefulPartitionedCall4group_normalization/StatefulPartitionedCall:output:0conv2d_15_21504966conv2d_15_21504968*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         t╝*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8В *P
fKRI
G__inference_conv2d_15_layer_call_and_return_conditional_losses_21504965Ў
activation_22/PartitionedCallPartitionedCall*conv2d_15/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         t╝* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2 *0J 8В *T
fORM
K__inference_activation_22_layer_call_and_return_conditional_losses_21504976∙
!average_pooling2d/PartitionedCallPartitionedCall&activation_22/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         :^* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2 *0J 8В *X
fSRQ
O__inference_average_pooling2d_layer_call_and_return_conditional_losses_21504776ї
activation_23/PartitionedCallPartitionedCall*average_pooling2d/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         :^* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2 *0J 8В *T
fORM
K__inference_activation_23_layer_call_and_return_conditional_losses_21504984П
+batch_normalization/StatefulPartitionedCallStatefulPartitionedCall&activation_23/PartitionedCall:output:0batch_normalization_21504986batch_normalization_21504988batch_normalization_21504990batch_normalization_21504992*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         :^*&
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8В *Z
fURS
Q__inference_batch_normalization_layer_call_and_return_conditional_losses_21504801╡
!conv2d_16/StatefulPartitionedCallStatefulPartitionedCall4batch_normalization/StatefulPartitionedCall:output:0conv2d_16_21505006conv2d_16_21505008*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         :^*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8В *P
fKRI
G__inference_conv2d_16_layer_call_and_return_conditional_losses_21505005ї
activation_24/PartitionedCallPartitionedCall*conv2d_16/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         :^* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2 *0J 8В *T
fORM
K__inference_activation_24_layer_call_and_return_conditional_losses_21505016╫
-group_normalization_1/StatefulPartitionedCallStatefulPartitionedCall&activation_24/PartitionedCall:output:0group_normalization_1_21505072group_normalization_1_21505074*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         :^*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8В *\
fWRU
S__inference_group_normalization_1_layer_call_and_return_conditional_losses_21505071╖
!conv2d_17/StatefulPartitionedCallStatefulPartitionedCall6group_normalization_1/StatefulPartitionedCall:output:0conv2d_17_21505088conv2d_17_21505090*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         :^*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8В *P
fKRI
G__inference_conv2d_17_layer_call_and_return_conditional_losses_21505087ї
activation_25/PartitionedCallPartitionedCall*conv2d_17/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         :^* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2 *0J 8В *T
fORM
K__inference_activation_25_layer_call_and_return_conditional_losses_21505098▀
flatten/PartitionedCallPartitionedCall&activation_23/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *)
_output_shapes
:         └й* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2 *0J 8В *N
fIRG
E__inference_flatten_layer_call_and_return_conditional_losses_21505106у
flatten_1/PartitionedCallPartitionedCall&activation_25/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *)
_output_shapes
:         └й* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2 *0J 8В *P
fKRI
G__inference_flatten_1_layer_call_and_return_conditional_losses_21505114Ж
concatenate/PartitionedCallPartitionedCall flatten/PartitionedCall:output:0"flatten_1/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *)
_output_shapes
:         А╙
* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2 *0J 8В *R
fMRK
I__inference_concatenate_layer_call_and_return_conditional_losses_21505123Х
dense_4/StatefulPartitionedCallStatefulPartitionedCall$concatenate/PartitionedCall:output:0dense_4_21505136dense_4_21505138*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8В *N
fIRG
E__inference_dense_4_layer_call_and_return_conditional_losses_21505135ы
activation_26/PartitionedCallPartitionedCall(dense_4/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         * 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2 *0J 8В *T
fORM
K__inference_activation_26_layer_call_and_return_conditional_losses_21505146Ч
dense_5/StatefulPartitionedCallStatefulPartitionedCall&activation_26/PartitionedCall:output:0dense_5_21505159dense_5_21505161*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8В *N
fIRG
E__inference_dense_5_layer_call_and_return_conditional_losses_21505158w
IdentityIdentity(dense_5/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         ╩
NoOpNoOp,^batch_normalization/StatefulPartitionedCall"^conv2d_13/StatefulPartitionedCall"^conv2d_14/StatefulPartitionedCall"^conv2d_15/StatefulPartitionedCall"^conv2d_16/StatefulPartitionedCall"^conv2d_17/StatefulPartitionedCall ^dense_4/StatefulPartitionedCall ^dense_5/StatefulPartitionedCall,^group_normalization/StatefulPartitionedCall.^group_normalization_1/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*[
_input_shapesJ
H:         t╝: : : : : : : : : : : : : : : : : : : : : : 2Z
+batch_normalization/StatefulPartitionedCall+batch_normalization/StatefulPartitionedCall2F
!conv2d_13/StatefulPartitionedCall!conv2d_13/StatefulPartitionedCall2F
!conv2d_14/StatefulPartitionedCall!conv2d_14/StatefulPartitionedCall2F
!conv2d_15/StatefulPartitionedCall!conv2d_15/StatefulPartitionedCall2F
!conv2d_16/StatefulPartitionedCall!conv2d_16/StatefulPartitionedCall2F
!conv2d_17/StatefulPartitionedCall!conv2d_17/StatefulPartitionedCall2B
dense_4/StatefulPartitionedCalldense_4/StatefulPartitionedCall2B
dense_5/StatefulPartitionedCalldense_5/StatefulPartitionedCall2Z
+group_normalization/StatefulPartitionedCall+group_normalization/StatefulPartitionedCall2^
-group_normalization_1/StatefulPartitionedCall-group_normalization_1/StatefulPartitionedCall:X T
0
_output_shapes
:         t╝
 
_user_specified_nameinputs
╦
c
G__inference_flatten_1_layer_call_and_return_conditional_losses_21505114

inputs
identityV
ConstConst*
_output_shapes
:*
dtype0*
valueB"    └T ^
ReshapeReshapeinputsConst:output:0*
T0*)
_output_shapes
:         └йZ
IdentityIdentityReshape:output:0*
T0*)
_output_shapes
:         └й"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:         :^:W S
/
_output_shapes
:         :^
 
_user_specified_nameinputs
ї
g
K__inference_activation_23_layer_call_and_return_conditional_losses_21506569

inputs
identityO
	LeakyRelu	LeakyReluinputs*/
_output_shapes
:         :^g
IdentityIdentityLeakyRelu:activations:0*
T0*/
_output_shapes
:         :^"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:         :^:W S
/
_output_shapes
:         :^
 
_user_specified_nameinputs
╘
L
0__inference_activation_21_layer_call_fn_21506391

inputs
identity─
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         t╝* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2 *0J 8В *T
fORM
K__inference_activation_21_layer_call_and_return_conditional_losses_21504894i
IdentityIdentityPartitionedCall:output:0*
T0*0
_output_shapes
:         t╝"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:         t╝:X T
0
_output_shapes
:         t╝
 
_user_specified_nameinputs
ўu
О
$__inference__traced_restore_21507109
file_prefix;
!assignvariableop_conv2d_13_kernel:/
!assignvariableop_1_conv2d_13_bias:=
#assignvariableop_2_conv2d_14_kernel:/
!assignvariableop_3_conv2d_14_bias::
,assignvariableop_4_group_normalization_gamma:9
+assignvariableop_5_group_normalization_beta:=
#assignvariableop_6_conv2d_15_kernel:/
!assignvariableop_7_conv2d_15_bias::
,assignvariableop_8_batch_normalization_gamma:9
+assignvariableop_9_batch_normalization_beta:A
3assignvariableop_10_batch_normalization_moving_mean:E
7assignvariableop_11_batch_normalization_moving_variance:>
$assignvariableop_12_conv2d_16_kernel:0
"assignvariableop_13_conv2d_16_bias:=
/assignvariableop_14_group_normalization_1_gamma:<
.assignvariableop_15_group_normalization_1_beta:>
$assignvariableop_16_conv2d_17_kernel:0
"assignvariableop_17_conv2d_17_bias:6
"assignvariableop_18_dense_4_kernel:
А╙
.
 assignvariableop_19_dense_4_bias:4
"assignvariableop_20_dense_5_kernel:.
 assignvariableop_21_dense_5_bias:&
assignvariableop_22_sgd_iter:	 '
assignvariableop_23_sgd_decay: /
%assignvariableop_24_sgd_learning_rate: *
 assignvariableop_25_sgd_momentum: %
assignvariableop_26_total_1: %
assignvariableop_27_count_1: #
assignvariableop_28_total: #
assignvariableop_29_count: 
identity_31ИвAssignVariableOpвAssignVariableOp_1вAssignVariableOp_10вAssignVariableOp_11вAssignVariableOp_12вAssignVariableOp_13вAssignVariableOp_14вAssignVariableOp_15вAssignVariableOp_16вAssignVariableOp_17вAssignVariableOp_18вAssignVariableOp_19вAssignVariableOp_2вAssignVariableOp_20вAssignVariableOp_21вAssignVariableOp_22вAssignVariableOp_23вAssignVariableOp_24вAssignVariableOp_25вAssignVariableOp_26вAssignVariableOp_27вAssignVariableOp_28вAssignVariableOp_29вAssignVariableOp_3вAssignVariableOp_4вAssignVariableOp_5вAssignVariableOp_6вAssignVariableOp_7вAssignVariableOp_8вAssignVariableOp_9ц
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*М
valueВB B6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-2/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/beta/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-4/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-4/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-4/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-4/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-5/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-5/bias/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-6/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-6/beta/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-7/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-7/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-8/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-8/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-9/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-9/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB-optimizer/momentum/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPHо
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*Q
valueHBFB B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B ║
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*Р
_output_shapes~
|:::::::::::::::::::::::::::::::*-
dtypes#
!2	[
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:М
AssignVariableOpAssignVariableOp!assignvariableop_conv2d_13_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:Р
AssignVariableOp_1AssignVariableOp!assignvariableop_1_conv2d_13_biasIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:Т
AssignVariableOp_2AssignVariableOp#assignvariableop_2_conv2d_14_kernelIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:Р
AssignVariableOp_3AssignVariableOp!assignvariableop_3_conv2d_14_biasIdentity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:Ы
AssignVariableOp_4AssignVariableOp,assignvariableop_4_group_normalization_gammaIdentity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:Ъ
AssignVariableOp_5AssignVariableOp+assignvariableop_5_group_normalization_betaIdentity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:Т
AssignVariableOp_6AssignVariableOp#assignvariableop_6_conv2d_15_kernelIdentity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:Р
AssignVariableOp_7AssignVariableOp!assignvariableop_7_conv2d_15_biasIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:Ы
AssignVariableOp_8AssignVariableOp,assignvariableop_8_batch_normalization_gammaIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:Ъ
AssignVariableOp_9AssignVariableOp+assignvariableop_9_batch_normalization_betaIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:д
AssignVariableOp_10AssignVariableOp3assignvariableop_10_batch_normalization_moving_meanIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:и
AssignVariableOp_11AssignVariableOp7assignvariableop_11_batch_normalization_moving_varianceIdentity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:Х
AssignVariableOp_12AssignVariableOp$assignvariableop_12_conv2d_16_kernelIdentity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:У
AssignVariableOp_13AssignVariableOp"assignvariableop_13_conv2d_16_biasIdentity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:а
AssignVariableOp_14AssignVariableOp/assignvariableop_14_group_normalization_1_gammaIdentity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:Я
AssignVariableOp_15AssignVariableOp.assignvariableop_15_group_normalization_1_betaIdentity_15:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:Х
AssignVariableOp_16AssignVariableOp$assignvariableop_16_conv2d_17_kernelIdentity_16:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:У
AssignVariableOp_17AssignVariableOp"assignvariableop_17_conv2d_17_biasIdentity_17:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:У
AssignVariableOp_18AssignVariableOp"assignvariableop_18_dense_4_kernelIdentity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:С
AssignVariableOp_19AssignVariableOp assignvariableop_19_dense_4_biasIdentity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:У
AssignVariableOp_20AssignVariableOp"assignvariableop_20_dense_5_kernelIdentity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:С
AssignVariableOp_21AssignVariableOp assignvariableop_21_dense_5_biasIdentity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0	*
_output_shapes
:Н
AssignVariableOp_22AssignVariableOpassignvariableop_22_sgd_iterIdentity_22:output:0"/device:CPU:0*
_output_shapes
 *
dtype0	_
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:О
AssignVariableOp_23AssignVariableOpassignvariableop_23_sgd_decayIdentity_23:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:Ц
AssignVariableOp_24AssignVariableOp%assignvariableop_24_sgd_learning_rateIdentity_24:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:С
AssignVariableOp_25AssignVariableOp assignvariableop_25_sgd_momentumIdentity_25:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:М
AssignVariableOp_26AssignVariableOpassignvariableop_26_total_1Identity_26:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:М
AssignVariableOp_27AssignVariableOpassignvariableop_27_count_1Identity_27:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_28IdentityRestoreV2:tensors:28"/device:CPU:0*
T0*
_output_shapes
:К
AssignVariableOp_28AssignVariableOpassignvariableop_28_totalIdentity_28:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_29IdentityRestoreV2:tensors:29"/device:CPU:0*
T0*
_output_shapes
:К
AssignVariableOp_29AssignVariableOpassignvariableop_29_countIdentity_29:output:0"/device:CPU:0*
_output_shapes
 *
dtype01
NoOpNoOp"/device:CPU:0*
_output_shapes
 у
Identity_30Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: W
Identity_31IdentityIdentity_30:output:0^NoOp_1*
T0*
_output_shapes
: ╨
NoOp_1NoOp^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9*"
_acd_function_control_output(*
_output_shapes
 "#
identity_31Identity_31:output:0*Q
_input_shapes@
>: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2$
AssignVariableOpAssignVariableOp2(
AssignVariableOp_1AssignVariableOp_12*
AssignVariableOp_10AssignVariableOp_102*
AssignVariableOp_11AssignVariableOp_112*
AssignVariableOp_12AssignVariableOp_122*
AssignVariableOp_13AssignVariableOp_132*
AssignVariableOp_14AssignVariableOp_142*
AssignVariableOp_15AssignVariableOp_152*
AssignVariableOp_16AssignVariableOp_162*
AssignVariableOp_17AssignVariableOp_172*
AssignVariableOp_18AssignVariableOp_182*
AssignVariableOp_19AssignVariableOp_192(
AssignVariableOp_2AssignVariableOp_22*
AssignVariableOp_20AssignVariableOp_202*
AssignVariableOp_21AssignVariableOp_212*
AssignVariableOp_22AssignVariableOp_222*
AssignVariableOp_23AssignVariableOp_232*
AssignVariableOp_24AssignVariableOp_242*
AssignVariableOp_25AssignVariableOp_252*
AssignVariableOp_26AssignVariableOp_262*
AssignVariableOp_27AssignVariableOp_272*
AssignVariableOp_28AssignVariableOp_282*
AssignVariableOp_29AssignVariableOp_292(
AssignVariableOp_3AssignVariableOp_32(
AssignVariableOp_4AssignVariableOp_42(
AssignVariableOp_5AssignVariableOp_52(
AssignVariableOp_6AssignVariableOp_62(
AssignVariableOp_7AssignVariableOp_72(
AssignVariableOp_8AssignVariableOp_82(
AssignVariableOp_9AssignVariableOp_9:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix
╠
Ь
Q__inference_batch_normalization_layer_call_and_return_conditional_losses_21504801

inputs%
readvariableop_resource:'
readvariableop_1_resource:6
(fusedbatchnormv3_readvariableop_resource:8
*fusedbatchnormv3_readvariableop_1_resource:
identityИвFusedBatchNormV3/ReadVariableOpв!FusedBatchNormV3/ReadVariableOp_1вReadVariableOpвReadVariableOp_1b
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:*
dtype0f
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:*
dtype0Д
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:*
dtype0И
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:*
dtype0╚
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+                           :::::*
epsilon%oГ:*
is_training( }
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*A
_output_shapes/
-:+                           ░
NoOpNoOp ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+                           : : : : 2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+                           
 
_user_specified_nameinputs
╨
L
0__inference_activation_23_layer_call_fn_21506564

inputs
identity├
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         :^* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2 *0J 8В *T
fORM
K__inference_activation_23_layer_call_and_return_conditional_losses_21504984h
IdentityIdentityPartitionedCall:output:0*
T0*/
_output_shapes
:         :^"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:         :^:W S
/
_output_shapes
:         :^
 
_user_specified_nameinputs
╙
╪
*__inference_model_1_layer_call_fn_21505945

inputs!
unknown:
	unknown_0:#
	unknown_1:
	unknown_2:
	unknown_3:
	unknown_4:#
	unknown_5:
	unknown_6:
	unknown_7:
	unknown_8:
	unknown_9:

unknown_10:$

unknown_11:

unknown_12:

unknown_13:

unknown_14:$

unknown_15:

unknown_16:

unknown_17:
А╙


unknown_18:

unknown_19:

unknown_20:
identityИвStatefulPartitionedCallю
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18
unknown_19
unknown_20*"
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *8
_read_only_resource_inputs
	
*2
config_proto" 

CPU

GPU2 *0J 8В *N
fIRG
E__inference_model_1_layer_call_and_return_conditional_losses_21505165o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*[
_input_shapesJ
H:         t╝: : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:X T
0
_output_shapes
:         t╝
 
_user_specified_nameinputs
Ж
└
Q__inference_batch_normalization_layer_call_and_return_conditional_losses_21506631

inputs%
readvariableop_resource:'
readvariableop_1_resource:6
(fusedbatchnormv3_readvariableop_resource:8
*fusedbatchnormv3_readvariableop_1_resource:
identityИвAssignNewValueвAssignNewValue_1вFusedBatchNormV3/ReadVariableOpв!FusedBatchNormV3/ReadVariableOp_1вReadVariableOpвReadVariableOp_1b
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:*
dtype0f
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:*
dtype0Д
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:*
dtype0И
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:*
dtype0╓
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+                           :::::*
epsilon%oГ:*
exponential_avg_factor%
╫#<╞
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype0*
validate_shape(╨
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype0*
validate_shape(}
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*A
_output_shapes/
-:+                           ╘
NoOpNoOp^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+                           : : : : 2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+                           
 
_user_specified_nameinputs
ХZ
ц

E__inference_model_1_layer_call_and_return_conditional_losses_21505607

inputs,
conv2d_13_21505541: 
conv2d_13_21505543:,
conv2d_14_21505547: 
conv2d_14_21505549:*
group_normalization_21505553:*
group_normalization_21505555:,
conv2d_15_21505558: 
conv2d_15_21505560:*
batch_normalization_21505566:*
batch_normalization_21505568:*
batch_normalization_21505570:*
batch_normalization_21505572:,
conv2d_16_21505575: 
conv2d_16_21505577:,
group_normalization_1_21505581:,
group_normalization_1_21505583:,
conv2d_17_21505586: 
conv2d_17_21505588:$
dense_4_21505595:
А╙

dense_4_21505597:"
dense_5_21505601:
dense_5_21505603:
identityИв+batch_normalization/StatefulPartitionedCallв!conv2d_13/StatefulPartitionedCallв!conv2d_14/StatefulPartitionedCallв!conv2d_15/StatefulPartitionedCallв!conv2d_16/StatefulPartitionedCallв!conv2d_17/StatefulPartitionedCallвdense_4/StatefulPartitionedCallвdense_5/StatefulPartitionedCallв+group_normalization/StatefulPartitionedCallв-group_normalization_1/StatefulPartitionedCallИ
!conv2d_13/StatefulPartitionedCallStatefulPartitionedCallinputsconv2d_13_21505541conv2d_13_21505543*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         t╝*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8В *P
fKRI
G__inference_conv2d_13_layer_call_and_return_conditional_losses_21504860Ў
activation_20/PartitionedCallPartitionedCall*conv2d_13/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         t╝* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2 *0J 8В *T
fORM
K__inference_activation_20_layer_call_and_return_conditional_losses_21504871и
!conv2d_14/StatefulPartitionedCallStatefulPartitionedCall&activation_20/PartitionedCall:output:0conv2d_14_21505547conv2d_14_21505549*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         t╝*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8В *P
fKRI
G__inference_conv2d_14_layer_call_and_return_conditional_losses_21504883Ў
activation_21/PartitionedCallPartitionedCall*conv2d_14/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         t╝* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2 *0J 8В *T
fORM
K__inference_activation_21_layer_call_and_return_conditional_losses_21504894╨
+group_normalization/StatefulPartitionedCallStatefulPartitionedCall&activation_21/PartitionedCall:output:0group_normalization_21505553group_normalization_21505555*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         t╝*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8В *Z
fURS
Q__inference_group_normalization_layer_call_and_return_conditional_losses_21505448╢
!conv2d_15/StatefulPartitionedCallStatefulPartitionedCall4group_normalization/StatefulPartitionedCall:output:0conv2d_15_21505558conv2d_15_21505560*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         t╝*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8В *P
fKRI
G__inference_conv2d_15_layer_call_and_return_conditional_losses_21504965Ў
activation_22/PartitionedCallPartitionedCall*conv2d_15/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         t╝* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2 *0J 8В *T
fORM
K__inference_activation_22_layer_call_and_return_conditional_losses_21504976∙
!average_pooling2d/PartitionedCallPartitionedCall&activation_22/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         :^* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2 *0J 8В *X
fSRQ
O__inference_average_pooling2d_layer_call_and_return_conditional_losses_21504776ї
activation_23/PartitionedCallPartitionedCall*average_pooling2d/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         :^* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2 *0J 8В *T
fORM
K__inference_activation_23_layer_call_and_return_conditional_losses_21504984Н
+batch_normalization/StatefulPartitionedCallStatefulPartitionedCall&activation_23/PartitionedCall:output:0batch_normalization_21505566batch_normalization_21505568batch_normalization_21505570batch_normalization_21505572*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         :^*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8В *Z
fURS
Q__inference_batch_normalization_layer_call_and_return_conditional_losses_21504832╡
!conv2d_16/StatefulPartitionedCallStatefulPartitionedCall4batch_normalization/StatefulPartitionedCall:output:0conv2d_16_21505575conv2d_16_21505577*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         :^*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8В *P
fKRI
G__inference_conv2d_16_layer_call_and_return_conditional_losses_21505005ї
activation_24/PartitionedCallPartitionedCall*conv2d_16/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         :^* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2 *0J 8В *T
fORM
K__inference_activation_24_layer_call_and_return_conditional_losses_21505016╫
-group_normalization_1/StatefulPartitionedCallStatefulPartitionedCall&activation_24/PartitionedCall:output:0group_normalization_1_21505581group_normalization_1_21505583*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         :^*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8В *\
fWRU
S__inference_group_normalization_1_layer_call_and_return_conditional_losses_21505338╖
!conv2d_17/StatefulPartitionedCallStatefulPartitionedCall6group_normalization_1/StatefulPartitionedCall:output:0conv2d_17_21505586conv2d_17_21505588*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         :^*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8В *P
fKRI
G__inference_conv2d_17_layer_call_and_return_conditional_losses_21505087ї
activation_25/PartitionedCallPartitionedCall*conv2d_17/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         :^* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2 *0J 8В *T
fORM
K__inference_activation_25_layer_call_and_return_conditional_losses_21505098▀
flatten/PartitionedCallPartitionedCall&activation_23/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *)
_output_shapes
:         └й* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2 *0J 8В *N
fIRG
E__inference_flatten_layer_call_and_return_conditional_losses_21505106у
flatten_1/PartitionedCallPartitionedCall&activation_25/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *)
_output_shapes
:         └й* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2 *0J 8В *P
fKRI
G__inference_flatten_1_layer_call_and_return_conditional_losses_21505114Ж
concatenate/PartitionedCallPartitionedCall flatten/PartitionedCall:output:0"flatten_1/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *)
_output_shapes
:         А╙
* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2 *0J 8В *R
fMRK
I__inference_concatenate_layer_call_and_return_conditional_losses_21505123Х
dense_4/StatefulPartitionedCallStatefulPartitionedCall$concatenate/PartitionedCall:output:0dense_4_21505595dense_4_21505597*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8В *N
fIRG
E__inference_dense_4_layer_call_and_return_conditional_losses_21505135ы
activation_26/PartitionedCallPartitionedCall(dense_4/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         * 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2 *0J 8В *T
fORM
K__inference_activation_26_layer_call_and_return_conditional_losses_21505146Ч
dense_5/StatefulPartitionedCallStatefulPartitionedCall&activation_26/PartitionedCall:output:0dense_5_21505601dense_5_21505603*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8В *N
fIRG
E__inference_dense_5_layer_call_and_return_conditional_losses_21505158w
IdentityIdentity(dense_5/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         ╩
NoOpNoOp,^batch_normalization/StatefulPartitionedCall"^conv2d_13/StatefulPartitionedCall"^conv2d_14/StatefulPartitionedCall"^conv2d_15/StatefulPartitionedCall"^conv2d_16/StatefulPartitionedCall"^conv2d_17/StatefulPartitionedCall ^dense_4/StatefulPartitionedCall ^dense_5/StatefulPartitionedCall,^group_normalization/StatefulPartitionedCall.^group_normalization_1/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*[
_input_shapesJ
H:         t╝: : : : : : : : : : : : : : : : : : : : : : 2Z
+batch_normalization/StatefulPartitionedCall+batch_normalization/StatefulPartitionedCall2F
!conv2d_13/StatefulPartitionedCall!conv2d_13/StatefulPartitionedCall2F
!conv2d_14/StatefulPartitionedCall!conv2d_14/StatefulPartitionedCall2F
!conv2d_15/StatefulPartitionedCall!conv2d_15/StatefulPartitionedCall2F
!conv2d_16/StatefulPartitionedCall!conv2d_16/StatefulPartitionedCall2F
!conv2d_17/StatefulPartitionedCall!conv2d_17/StatefulPartitionedCall2B
dense_4/StatefulPartitionedCalldense_4/StatefulPartitionedCall2B
dense_5/StatefulPartitionedCalldense_5/StatefulPartitionedCall2Z
+group_normalization/StatefulPartitionedCall+group_normalization/StatefulPartitionedCall2^
-group_normalization_1/StatefulPartitionedCall-group_normalization_1/StatefulPartitionedCall:X T
0
_output_shapes
:         t╝
 
_user_specified_nameinputs
ї
g
K__inference_activation_24_layer_call_and_return_conditional_losses_21505016

inputs
identityO
	LeakyRelu	LeakyReluinputs*/
_output_shapes
:         :^g
IdentityIdentityLeakyRelu:activations:0*
T0*/
_output_shapes
:         :^"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:         :^:W S
/
_output_shapes
:         :^
 
_user_specified_nameinputs
Х2
К
S__inference_group_normalization_1_layer_call_and_return_conditional_losses_21505071

inputs/
!reshape_2_readvariableop_resource:/
!reshape_3_readvariableop_resource:
identityИвReshape_2/ReadVariableOpвReshape_3/ReadVariableOp;
ShapeShapeinputs*
T0*
_output_shapes
:=
Shape_1Shapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:╙
strided_sliceStridedSliceShape_1:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:█
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:█
strided_slice_2StridedSliceShape_1:output:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask_
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:█
strided_slice_3StridedSliceShape_1:output:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskI
stack/1Const*
_output_shapes
: *
dtype0*
value	B :I
stack/4Const*
_output_shapes
: *
dtype0*
value	B :л
stackPackstrided_slice:output:0stack/1:output:0strided_slice_1:output:0strided_slice_2:output:0stack/4:output:0*
N*
T0*
_output_shapes
:h
ReshapeReshapeinputsstack:output:0*
T0*3
_output_shapes!
:         :^k
Mean/reduction_indicesConst*
_output_shapes
:*
dtype0*!
valueB"         О
MeanMeanReshape:output:0Mean/reduction_indices:output:0*
T0*3
_output_shapes!
:         *
	keep_dims({
&reduce_variance/Mean/reduction_indicesConst*
_output_shapes
:*
dtype0*!
valueB"         о
reduce_variance/MeanMeanReshape:output:0/reduce_variance/Mean/reduction_indices:output:0*
T0*3
_output_shapes!
:         *
	keep_dims(Й
reduce_variance/subSubReshape:output:0reduce_variance/Mean:output:0*
T0*3
_output_shapes!
:         :^w
reduce_variance/SquareSquarereduce_variance/sub:z:0*
T0*3
_output_shapes!
:         :^}
(reduce_variance/Mean_1/reduction_indicesConst*
_output_shapes
:*
dtype0*!
valueB"         ╝
reduce_variance/Mean_1Meanreduce_variance/Square:y:01reduce_variance/Mean_1/reduction_indices:output:0*
T0*3
_output_shapes!
:         *
	keep_dims(i
subSubReshape:output:0Mean:output:0*
T0*3
_output_shapes!
:         :^J
add/yConst*
_output_shapes
: *
dtype0*
valueB
 *═╠╠={
addAddV2reduce_variance/Mean_1:output:0add/y:output:0*
T0*3
_output_shapes!
:         J
ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    i
MaximumMaximumadd:z:0Const:output:0*
T0*3
_output_shapes!
:         W
SqrtSqrtMaximum:z:0*
T0*3
_output_shapes!
:         c
truedivRealDivsub:z:0Sqrt:y:0*
T0*3
_output_shapes!
:         :^o
	Reshape_1Reshapetruediv:z:0stack:output:0*
T0*3
_output_shapes!
:         :^v
Reshape_2/ReadVariableOpReadVariableOp!reshape_2_readvariableop_resource*
_output_shapes
:*
dtype0l
Reshape_2/shapeConst*
_output_shapes
:*
dtype0*)
value B"               Е
	Reshape_2Reshape Reshape_2/ReadVariableOp:value:0Reshape_2/shape:output:0*
T0**
_output_shapes
:p
mulMulReshape_1:output:0Reshape_2:output:0*
T0*3
_output_shapes!
:         :^v
Reshape_3/ReadVariableOpReadVariableOp!reshape_3_readvariableop_resource*
_output_shapes
:*
dtype0l
Reshape_3/shapeConst*
_output_shapes
:*
dtype0*)
value B"               Е
	Reshape_3Reshape Reshape_3/ReadVariableOp:value:0Reshape_3/shape:output:0*
T0**
_output_shapes
:i
add_1AddV2mul:z:0Reshape_3:output:0*
T0*3
_output_shapes!
:         :^i
	Reshape_4Reshape	add_1:z:0Shape:output:0*
T0*/
_output_shapes
:         :^i
IdentityIdentityReshape_4:output:0^NoOp*
T0*/
_output_shapes
:         :^|
NoOpNoOp^Reshape_2/ReadVariableOp^Reshape_3/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:         :^: : 24
Reshape_2/ReadVariableOpReshape_2/ReadVariableOp24
Reshape_3/ReadVariableOpReshape_3/ReadVariableOp:W S
/
_output_shapes
:         :^
 
_user_specified_nameinputs
ї
б
,__inference_conv2d_16_layer_call_fn_21506640

inputs!
unknown:
	unknown_0:
identityИвStatefulPartitionedCallщ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         :^*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8В *P
fKRI
G__inference_conv2d_16_layer_call_and_return_conditional_losses_21505005w
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:         :^`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:         :^: : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:         :^
 
_user_specified_nameinputs
╚	
Ў
E__inference_dense_5_layer_call_and_return_conditional_losses_21505158

inputs0
matmul_readvariableop_resource:-
biasadd_readvariableop_resource:
identityИвBiasAdd/ReadVariableOpвMatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         _
IdentityIdentityBiasAdd:output:0^NoOp*
T0*'
_output_shapes
:         w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:         : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:         
 
_user_specified_nameinputs
к

А
G__inference_conv2d_16_layer_call_and_return_conditional_losses_21506650

inputs8
conv2d_readvariableop_resource:-
biasadd_readvariableop_resource:
identityИвBiasAdd/ReadVariableOpвConv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:*
dtype0Щ
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:         :^*
paddingSAME*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0}
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:         :^g
IdentityIdentityBiasAdd:output:0^NoOp*
T0*/
_output_shapes
:         :^w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:         :^: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:         :^
 
_user_specified_nameinputs
Ц	
╤
6__inference_batch_normalization_layer_call_fn_21506582

inputs
unknown:
	unknown_0:
	unknown_1:
	unknown_2:
identityИвStatefulPartitionedCallЯ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+                           *&
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8В *Z
fURS
Q__inference_batch_normalization_layer_call_and_return_conditional_losses_21504801Й
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*A
_output_shapes/
-:+                           `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+                           : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+                           
 
_user_specified_nameinputs
∙
б
,__inference_conv2d_14_layer_call_fn_21506376

inputs!
unknown:
	unknown_0:
identityИвStatefulPartitionedCallъ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         t╝*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8В *P
fKRI
G__inference_conv2d_14_layer_call_and_return_conditional_losses_21504883x
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*0
_output_shapes
:         t╝`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :         t╝: : 22
StatefulPartitionedCallStatefulPartitionedCall:X T
0
_output_shapes
:         t╝
 
_user_specified_nameinputs
▌>
╡
!__inference__traced_save_21507009
file_prefix/
+savev2_conv2d_13_kernel_read_readvariableop-
)savev2_conv2d_13_bias_read_readvariableop/
+savev2_conv2d_14_kernel_read_readvariableop-
)savev2_conv2d_14_bias_read_readvariableop8
4savev2_group_normalization_gamma_read_readvariableop7
3savev2_group_normalization_beta_read_readvariableop/
+savev2_conv2d_15_kernel_read_readvariableop-
)savev2_conv2d_15_bias_read_readvariableop8
4savev2_batch_normalization_gamma_read_readvariableop7
3savev2_batch_normalization_beta_read_readvariableop>
:savev2_batch_normalization_moving_mean_read_readvariableopB
>savev2_batch_normalization_moving_variance_read_readvariableop/
+savev2_conv2d_16_kernel_read_readvariableop-
)savev2_conv2d_16_bias_read_readvariableop:
6savev2_group_normalization_1_gamma_read_readvariableop9
5savev2_group_normalization_1_beta_read_readvariableop/
+savev2_conv2d_17_kernel_read_readvariableop-
)savev2_conv2d_17_bias_read_readvariableop-
)savev2_dense_4_kernel_read_readvariableop+
'savev2_dense_4_bias_read_readvariableop-
)savev2_dense_5_kernel_read_readvariableop+
'savev2_dense_5_bias_read_readvariableop'
#savev2_sgd_iter_read_readvariableop	(
$savev2_sgd_decay_read_readvariableop0
,savev2_sgd_learning_rate_read_readvariableop+
'savev2_sgd_momentum_read_readvariableop&
"savev2_total_1_read_readvariableop&
"savev2_count_1_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop
savev2_const

identity_1ИвMergeV2Checkpointsw
StaticRegexFullMatchStaticRegexFullMatchfile_prefix"/device:CPU:**
_output_shapes
: *
pattern
^s3://.*Z
ConstConst"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B.parta
Const_1Const"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B
_temp/partБ
SelectSelectStaticRegexFullMatch:output:0Const:output:0Const_1:output:0"/device:CPU:**
T0*
_output_shapes
: f

StringJoin
StringJoinfile_prefixSelect:output:0"/device:CPU:**
N*
_output_shapes
: L

num_shardsConst*
_output_shapes
: *
dtype0*
value	B :f
ShardedFilename/shardConst"/device:CPU:0*
_output_shapes
: *
dtype0*
value	B : У
ShardedFilenameShardedFilenameStringJoin:output:0ShardedFilename/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: у
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*М
valueВB B6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-2/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/beta/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-4/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-4/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-4/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-4/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-5/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-5/bias/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-6/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-6/beta/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-7/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-7/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-8/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-8/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-9/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-9/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB-optimizer/momentum/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPHл
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*Q
valueHBFB B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B Э
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0+savev2_conv2d_13_kernel_read_readvariableop)savev2_conv2d_13_bias_read_readvariableop+savev2_conv2d_14_kernel_read_readvariableop)savev2_conv2d_14_bias_read_readvariableop4savev2_group_normalization_gamma_read_readvariableop3savev2_group_normalization_beta_read_readvariableop+savev2_conv2d_15_kernel_read_readvariableop)savev2_conv2d_15_bias_read_readvariableop4savev2_batch_normalization_gamma_read_readvariableop3savev2_batch_normalization_beta_read_readvariableop:savev2_batch_normalization_moving_mean_read_readvariableop>savev2_batch_normalization_moving_variance_read_readvariableop+savev2_conv2d_16_kernel_read_readvariableop)savev2_conv2d_16_bias_read_readvariableop6savev2_group_normalization_1_gamma_read_readvariableop5savev2_group_normalization_1_beta_read_readvariableop+savev2_conv2d_17_kernel_read_readvariableop)savev2_conv2d_17_bias_read_readvariableop)savev2_dense_4_kernel_read_readvariableop'savev2_dense_4_bias_read_readvariableop)savev2_dense_5_kernel_read_readvariableop'savev2_dense_5_bias_read_readvariableop#savev2_sgd_iter_read_readvariableop$savev2_sgd_decay_read_readvariableop,savev2_sgd_learning_rate_read_readvariableop'savev2_sgd_momentum_read_readvariableop"savev2_total_1_read_readvariableop"savev2_count_1_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableopsavev2_const"/device:CPU:0*
_output_shapes
 *-
dtypes#
!2	Р
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:Л
MergeV2CheckpointsMergeV2Checkpoints/MergeV2Checkpoints/checkpoint_prefixes:output:0file_prefix"/device:CPU:0*
_output_shapes
 f
IdentityIdentityfile_prefix^MergeV2Checkpoints"/device:CPU:0*
T0*
_output_shapes
: Q

Identity_1IdentityIdentity:output:0^NoOp*
T0*
_output_shapes
: [
NoOpNoOp^MergeV2Checkpoints*"
_acd_function_control_output(*
_output_shapes
 "!

identity_1Identity_1:output:0*є
_input_shapesс
▐: :::::::::::::::::::
А╙
:::: : : : : : : : : 2(
MergeV2CheckpointsMergeV2Checkpoints:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:,(
&
_output_shapes
:: 

_output_shapes
::,(
&
_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
::,(
&
_output_shapes
:: 

_output_shapes
:: 	

_output_shapes
:: 


_output_shapes
:: 

_output_shapes
:: 

_output_shapes
::,(
&
_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
::,(
&
_output_shapes
:: 

_output_shapes
::&"
 
_output_shapes
:
А╙
: 

_output_shapes
::$ 

_output_shapes

:: 

_output_shapes
::

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: 
ї
g
K__inference_activation_25_layer_call_and_return_conditional_losses_21506813

inputs
identityO
	LeakyRelu	LeakyReluinputs*/
_output_shapes
:         :^g
IdentityIdentityLeakyRelu:activations:0*
T0*/
_output_shapes
:         :^"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:         :^:W S
/
_output_shapes
:         :^
 
_user_specified_nameinputs
Б
б
8__inference_group_normalization_1_layer_call_fn_21506669

inputs
unknown:
	unknown_0:
identityИвStatefulPartitionedCallї
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         :^*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8В *\
fWRU
S__inference_group_normalization_1_layer_call_and_return_conditional_losses_21505071w
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:         :^`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:         :^: : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:         :^
 
_user_specified_nameinputs
╔
a
E__inference_flatten_layer_call_and_return_conditional_losses_21506824

inputs
identityV
ConstConst*
_output_shapes
:*
dtype0*
valueB"    └T ^
ReshapeReshapeinputsConst:output:0*
T0*)
_output_shapes
:         └йZ
IdentityIdentityReshape:output:0*
T0*)
_output_shapes
:         └й"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:         :^:W S
/
_output_shapes
:         :^
 
_user_specified_nameinputs
╨	
°
E__inference_dense_4_layer_call_and_return_conditional_losses_21506867

inputs2
matmul_readvariableop_resource:
А╙
-
biasadd_readvariableop_resource:
identityИвBiasAdd/ReadVariableOpвMatMul/ReadVariableOpv
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
А╙
*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         _
IdentityIdentityBiasAdd:output:0^NoOp*
T0*'
_output_shapes
:         w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*,
_input_shapes
:         А╙
: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:Q M
)
_output_shapes
:         А╙

 
_user_specified_nameinputs
ї
g
K__inference_activation_23_layer_call_and_return_conditional_losses_21504984

inputs
identityO
	LeakyRelu	LeakyReluinputs*/
_output_shapes
:         :^g
IdentityIdentityLeakyRelu:activations:0*
T0*/
_output_shapes
:         :^"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:         :^:W S
/
_output_shapes
:         :^
 
_user_specified_nameinputs
╝
H
,__inference_flatten_1_layer_call_fn_21506829

inputs
identity╣
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *)
_output_shapes
:         └й* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2 *0J 8В *P
fKRI
G__inference_flatten_1_layer_call_and_return_conditional_losses_21505114b
IdentityIdentityPartitionedCall:output:0*
T0*)
_output_shapes
:         └й"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:         :^:W S
/
_output_shapes
:         :^
 
_user_specified_nameinputs
░
╒
&__inference_signature_wrapper_21505896
input_2!
unknown:
	unknown_0:#
	unknown_1:
	unknown_2:
	unknown_3:
	unknown_4:#
	unknown_5:
	unknown_6:
	unknown_7:
	unknown_8:
	unknown_9:

unknown_10:$

unknown_11:

unknown_12:

unknown_13:

unknown_14:$

unknown_15:

unknown_16:

unknown_17:
А╙


unknown_18:

unknown_19:

unknown_20:
identityИвStatefulPartitionedCall═
StatefulPartitionedCallStatefulPartitionedCallinput_2unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18
unknown_19
unknown_20*"
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *8
_read_only_resource_inputs
	
*2
config_proto" 

CPU

GPU2 *0J 8В *,
f'R%
#__inference__wrapped_model_21504767o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*[
_input_shapesJ
H:         t╝: : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Y U
0
_output_shapes
:         t╝
!
_user_specified_name	input_2
╘
┘
*__inference_model_1_layer_call_fn_21505703
input_2!
unknown:
	unknown_0:#
	unknown_1:
	unknown_2:
	unknown_3:
	unknown_4:#
	unknown_5:
	unknown_6:
	unknown_7:
	unknown_8:
	unknown_9:

unknown_10:$

unknown_11:

unknown_12:

unknown_13:

unknown_14:$

unknown_15:

unknown_16:

unknown_17:
А╙


unknown_18:

unknown_19:

unknown_20:
identityИвStatefulPartitionedCallэ
StatefulPartitionedCallStatefulPartitionedCallinput_2unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18
unknown_19
unknown_20*"
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *6
_read_only_resource_inputs
	
*2
config_proto" 

CPU

GPU2 *0J 8В *N
fIRG
E__inference_model_1_layer_call_and_return_conditional_losses_21505607o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*[
_input_shapesJ
H:         t╝: : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Y U
0
_output_shapes
:         t╝
!
_user_specified_name	input_2
Ж
└
Q__inference_batch_normalization_layer_call_and_return_conditional_losses_21504832

inputs%
readvariableop_resource:'
readvariableop_1_resource:6
(fusedbatchnormv3_readvariableop_resource:8
*fusedbatchnormv3_readvariableop_1_resource:
identityИвAssignNewValueвAssignNewValue_1вFusedBatchNormV3/ReadVariableOpв!FusedBatchNormV3/ReadVariableOp_1вReadVariableOpвReadVariableOp_1b
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:*
dtype0f
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:*
dtype0Д
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:*
dtype0И
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:*
dtype0╓
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+                           :::::*
epsilon%oГ:*
exponential_avg_factor%
╫#<╞
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype0*
validate_shape(╨
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype0*
validate_shape(}
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*A
_output_shapes/
-:+                           ╘
NoOpNoOp^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+                           : : : : 2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+                           
 
_user_specified_nameinputs
п

А
G__inference_conv2d_14_layer_call_and_return_conditional_losses_21506386

inputs8
conv2d_readvariableop_resource:-
biasadd_readvariableop_resource:
identityИвBiasAdd/ReadVariableOpвConv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:*
dtype0Ъ
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:         t╝*
paddingSAME*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0~
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:         t╝h
IdentityIdentityBiasAdd:output:0^NoOp*
T0*0
_output_shapes
:         t╝w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :         t╝: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:X T
0
_output_shapes
:         t╝
 
_user_specified_nameinputs
ї
б
,__inference_conv2d_17_layer_call_fn_21506793

inputs!
unknown:
	unknown_0:
identityИвStatefulPartitionedCallщ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         :^*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8В *P
fKRI
G__inference_conv2d_17_layer_call_and_return_conditional_losses_21505087w
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:         :^`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:         :^: : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:         :^
 
_user_specified_nameinputs
∙
g
K__inference_activation_22_layer_call_and_return_conditional_losses_21504976

inputs
identityP
	LeakyRelu	LeakyReluinputs*0
_output_shapes
:         t╝h
IdentityIdentityLeakyRelu:activations:0*
T0*0
_output_shapes
:         t╝"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:         t╝:X T
0
_output_shapes
:         t╝
 
_user_specified_nameinputs
Б
Я
6__inference_group_normalization_layer_call_fn_21506405

inputs
unknown:
	unknown_0:
identityИвStatefulPartitionedCallЇ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         t╝*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8В *Z
fURS
Q__inference_group_normalization_layer_call_and_return_conditional_losses_21504949x
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*0
_output_shapes
:         t╝`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :         t╝: : 22
StatefulPartitionedCallStatefulPartitionedCall:X T
0
_output_shapes
:         t╝
 
_user_specified_nameinputs
╒
g
K__inference_activation_26_layer_call_and_return_conditional_losses_21506877

inputs
identityG
	LeakyRelu	LeakyReluinputs*'
_output_shapes
:         _
IdentityIdentityLeakyRelu:activations:0*
T0*'
_output_shapes
:         "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:         :O K
'
_output_shapes
:         
 
_user_specified_nameinputs
к

А
G__inference_conv2d_17_layer_call_and_return_conditional_losses_21505087

inputs8
conv2d_readvariableop_resource:-
biasadd_readvariableop_resource:
identityИвBiasAdd/ReadVariableOpвConv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:*
dtype0Щ
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:         :^*
paddingSAME*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0}
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:         :^g
IdentityIdentityBiasAdd:output:0^NoOp*
T0*/
_output_shapes
:         :^w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:         :^: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:         :^
 
_user_specified_nameinputs
бў
ў
#__inference__wrapped_model_21504767
input_2J
0model_1_conv2d_13_conv2d_readvariableop_resource:?
1model_1_conv2d_13_biasadd_readvariableop_resource:J
0model_1_conv2d_14_conv2d_readvariableop_resource:?
1model_1_conv2d_14_biasadd_readvariableop_resource:K
=model_1_group_normalization_reshape_2_readvariableop_resource:K
=model_1_group_normalization_reshape_3_readvariableop_resource:J
0model_1_conv2d_15_conv2d_readvariableop_resource:?
1model_1_conv2d_15_biasadd_readvariableop_resource:A
3model_1_batch_normalization_readvariableop_resource:C
5model_1_batch_normalization_readvariableop_1_resource:R
Dmodel_1_batch_normalization_fusedbatchnormv3_readvariableop_resource:T
Fmodel_1_batch_normalization_fusedbatchnormv3_readvariableop_1_resource:J
0model_1_conv2d_16_conv2d_readvariableop_resource:?
1model_1_conv2d_16_biasadd_readvariableop_resource:M
?model_1_group_normalization_1_reshape_2_readvariableop_resource:M
?model_1_group_normalization_1_reshape_3_readvariableop_resource:J
0model_1_conv2d_17_conv2d_readvariableop_resource:?
1model_1_conv2d_17_biasadd_readvariableop_resource:B
.model_1_dense_4_matmul_readvariableop_resource:
А╙
=
/model_1_dense_4_biasadd_readvariableop_resource:@
.model_1_dense_5_matmul_readvariableop_resource:=
/model_1_dense_5_biasadd_readvariableop_resource:
identityИв;model_1/batch_normalization/FusedBatchNormV3/ReadVariableOpв=model_1/batch_normalization/FusedBatchNormV3/ReadVariableOp_1в*model_1/batch_normalization/ReadVariableOpв,model_1/batch_normalization/ReadVariableOp_1в(model_1/conv2d_13/BiasAdd/ReadVariableOpв'model_1/conv2d_13/Conv2D/ReadVariableOpв(model_1/conv2d_14/BiasAdd/ReadVariableOpв'model_1/conv2d_14/Conv2D/ReadVariableOpв(model_1/conv2d_15/BiasAdd/ReadVariableOpв'model_1/conv2d_15/Conv2D/ReadVariableOpв(model_1/conv2d_16/BiasAdd/ReadVariableOpв'model_1/conv2d_16/Conv2D/ReadVariableOpв(model_1/conv2d_17/BiasAdd/ReadVariableOpв'model_1/conv2d_17/Conv2D/ReadVariableOpв&model_1/dense_4/BiasAdd/ReadVariableOpв%model_1/dense_4/MatMul/ReadVariableOpв&model_1/dense_5/BiasAdd/ReadVariableOpв%model_1/dense_5/MatMul/ReadVariableOpв4model_1/group_normalization/Reshape_2/ReadVariableOpв4model_1/group_normalization/Reshape_3/ReadVariableOpв6model_1/group_normalization_1/Reshape_2/ReadVariableOpв6model_1/group_normalization_1/Reshape_3/ReadVariableOpа
'model_1/conv2d_13/Conv2D/ReadVariableOpReadVariableOp0model_1_conv2d_13_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype0┐
model_1/conv2d_13/Conv2DConv2Dinput_2/model_1/conv2d_13/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:         t╝*
paddingSAME*
strides
Ц
(model_1/conv2d_13/BiasAdd/ReadVariableOpReadVariableOp1model_1_conv2d_13_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0┤
model_1/conv2d_13/BiasAddBiasAdd!model_1/conv2d_13/Conv2D:output:00model_1/conv2d_13/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:         t╝В
model_1/activation_20/LeakyRelu	LeakyRelu"model_1/conv2d_13/BiasAdd:output:0*0
_output_shapes
:         t╝а
'model_1/conv2d_14/Conv2D/ReadVariableOpReadVariableOp0model_1_conv2d_14_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype0х
model_1/conv2d_14/Conv2DConv2D-model_1/activation_20/LeakyRelu:activations:0/model_1/conv2d_14/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:         t╝*
paddingSAME*
strides
Ц
(model_1/conv2d_14/BiasAdd/ReadVariableOpReadVariableOp1model_1_conv2d_14_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0┤
model_1/conv2d_14/BiasAddBiasAdd!model_1/conv2d_14/Conv2D:output:00model_1/conv2d_14/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:         t╝В
model_1/activation_21/LeakyRelu	LeakyRelu"model_1/conv2d_14/BiasAdd:output:0*0
_output_shapes
:         t╝~
!model_1/group_normalization/ShapeShape-model_1/activation_21/LeakyRelu:activations:0*
T0*
_output_shapes
:А
#model_1/group_normalization/Shape_1Shape-model_1/activation_21/LeakyRelu:activations:0*
T0*
_output_shapes
:y
/model_1/group_normalization/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: {
1model_1/group_normalization/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:{
1model_1/group_normalization/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:▀
)model_1/group_normalization/strided_sliceStridedSlice,model_1/group_normalization/Shape_1:output:08model_1/group_normalization/strided_slice/stack:output:0:model_1/group_normalization/strided_slice/stack_1:output:0:model_1/group_normalization/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask{
1model_1/group_normalization/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:}
3model_1/group_normalization/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:}
3model_1/group_normalization/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ч
+model_1/group_normalization/strided_slice_1StridedSlice,model_1/group_normalization/Shape_1:output:0:model_1/group_normalization/strided_slice_1/stack:output:0<model_1/group_normalization/strided_slice_1/stack_1:output:0<model_1/group_normalization/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask{
1model_1/group_normalization/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:}
3model_1/group_normalization/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:}
3model_1/group_normalization/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ч
+model_1/group_normalization/strided_slice_2StridedSlice,model_1/group_normalization/Shape_1:output:0:model_1/group_normalization/strided_slice_2/stack:output:0<model_1/group_normalization/strided_slice_2/stack_1:output:0<model_1/group_normalization/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask{
1model_1/group_normalization/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:}
3model_1/group_normalization/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB:}
3model_1/group_normalization/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ч
+model_1/group_normalization/strided_slice_3StridedSlice,model_1/group_normalization/Shape_1:output:0:model_1/group_normalization/strided_slice_3/stack:output:0<model_1/group_normalization/strided_slice_3/stack_1:output:0<model_1/group_normalization/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maske
#model_1/group_normalization/stack/1Const*
_output_shapes
: *
dtype0*
value	B :e
#model_1/group_normalization/stack/4Const*
_output_shapes
: *
dtype0*
value	B :╙
!model_1/group_normalization/stackPack2model_1/group_normalization/strided_slice:output:0,model_1/group_normalization/stack/1:output:04model_1/group_normalization/strided_slice_1:output:04model_1/group_normalization/strided_slice_2:output:0,model_1/group_normalization/stack/4:output:0*
N*
T0*
_output_shapes
:╚
#model_1/group_normalization/ReshapeReshape-model_1/activation_21/LeakyRelu:activations:0*model_1/group_normalization/stack:output:0*
T0*4
_output_shapes"
 :         t╝З
2model_1/group_normalization/Mean/reduction_indicesConst*
_output_shapes
:*
dtype0*!
valueB"         т
 model_1/group_normalization/MeanMean,model_1/group_normalization/Reshape:output:0;model_1/group_normalization/Mean/reduction_indices:output:0*
T0*3
_output_shapes!
:         *
	keep_dims(Ч
Bmodel_1/group_normalization/reduce_variance/Mean/reduction_indicesConst*
_output_shapes
:*
dtype0*!
valueB"         В
0model_1/group_normalization/reduce_variance/MeanMean,model_1/group_normalization/Reshape:output:0Kmodel_1/group_normalization/reduce_variance/Mean/reduction_indices:output:0*
T0*3
_output_shapes!
:         *
	keep_dims(▐
/model_1/group_normalization/reduce_variance/subSub,model_1/group_normalization/Reshape:output:09model_1/group_normalization/reduce_variance/Mean:output:0*
T0*4
_output_shapes"
 :         t╝░
2model_1/group_normalization/reduce_variance/SquareSquare3model_1/group_normalization/reduce_variance/sub:z:0*
T0*4
_output_shapes"
 :         t╝Щ
Dmodel_1/group_normalization/reduce_variance/Mean_1/reduction_indicesConst*
_output_shapes
:*
dtype0*!
valueB"         Р
2model_1/group_normalization/reduce_variance/Mean_1Mean6model_1/group_normalization/reduce_variance/Square:y:0Mmodel_1/group_normalization/reduce_variance/Mean_1/reduction_indices:output:0*
T0*3
_output_shapes!
:         *
	keep_dims(╛
model_1/group_normalization/subSub,model_1/group_normalization/Reshape:output:0)model_1/group_normalization/Mean:output:0*
T0*4
_output_shapes"
 :         t╝f
!model_1/group_normalization/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *═╠╠=╧
model_1/group_normalization/addAddV2;model_1/group_normalization/reduce_variance/Mean_1:output:0*model_1/group_normalization/add/y:output:0*
T0*3
_output_shapes!
:         f
!model_1/group_normalization/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ╜
#model_1/group_normalization/MaximumMaximum#model_1/group_normalization/add:z:0*model_1/group_normalization/Const:output:0*
T0*3
_output_shapes!
:         П
 model_1/group_normalization/SqrtSqrt'model_1/group_normalization/Maximum:z:0*
T0*3
_output_shapes!
:         ╕
#model_1/group_normalization/truedivRealDiv#model_1/group_normalization/sub:z:0$model_1/group_normalization/Sqrt:y:0*
T0*4
_output_shapes"
 :         t╝─
%model_1/group_normalization/Reshape_1Reshape'model_1/group_normalization/truediv:z:0*model_1/group_normalization/stack:output:0*
T0*4
_output_shapes"
 :         t╝о
4model_1/group_normalization/Reshape_2/ReadVariableOpReadVariableOp=model_1_group_normalization_reshape_2_readvariableop_resource*
_output_shapes
:*
dtype0И
+model_1/group_normalization/Reshape_2/shapeConst*
_output_shapes
:*
dtype0*)
value B"               ┘
%model_1/group_normalization/Reshape_2Reshape<model_1/group_normalization/Reshape_2/ReadVariableOp:value:04model_1/group_normalization/Reshape_2/shape:output:0*
T0**
_output_shapes
:┼
model_1/group_normalization/mulMul.model_1/group_normalization/Reshape_1:output:0.model_1/group_normalization/Reshape_2:output:0*
T0*4
_output_shapes"
 :         t╝о
4model_1/group_normalization/Reshape_3/ReadVariableOpReadVariableOp=model_1_group_normalization_reshape_3_readvariableop_resource*
_output_shapes
:*
dtype0И
+model_1/group_normalization/Reshape_3/shapeConst*
_output_shapes
:*
dtype0*)
value B"               ┘
%model_1/group_normalization/Reshape_3Reshape<model_1/group_normalization/Reshape_3/ReadVariableOp:value:04model_1/group_normalization/Reshape_3/shape:output:0*
T0**
_output_shapes
:╛
!model_1/group_normalization/add_1AddV2#model_1/group_normalization/mul:z:0.model_1/group_normalization/Reshape_3:output:0*
T0*4
_output_shapes"
 :         t╝╛
%model_1/group_normalization/Reshape_4Reshape%model_1/group_normalization/add_1:z:0*model_1/group_normalization/Shape:output:0*
T0*0
_output_shapes
:         t╝а
'model_1/conv2d_15/Conv2D/ReadVariableOpReadVariableOp0model_1_conv2d_15_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype0ц
model_1/conv2d_15/Conv2DConv2D.model_1/group_normalization/Reshape_4:output:0/model_1/conv2d_15/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:         t╝*
paddingSAME*
strides
Ц
(model_1/conv2d_15/BiasAdd/ReadVariableOpReadVariableOp1model_1_conv2d_15_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0┤
model_1/conv2d_15/BiasAddBiasAdd!model_1/conv2d_15/Conv2D:output:00model_1/conv2d_15/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:         t╝В
model_1/activation_22/LeakyRelu	LeakyRelu"model_1/conv2d_15/BiasAdd:output:0*0
_output_shapes
:         t╝╤
!model_1/average_pooling2d/AvgPoolAvgPool-model_1/activation_22/LeakyRelu:activations:0*
T0*/
_output_shapes
:         :^*
ksize
*
paddingVALID*
strides
Й
model_1/activation_23/LeakyRelu	LeakyRelu*model_1/average_pooling2d/AvgPool:output:0*/
_output_shapes
:         :^Ъ
*model_1/batch_normalization/ReadVariableOpReadVariableOp3model_1_batch_normalization_readvariableop_resource*
_output_shapes
:*
dtype0Ю
,model_1/batch_normalization/ReadVariableOp_1ReadVariableOp5model_1_batch_normalization_readvariableop_1_resource*
_output_shapes
:*
dtype0╝
;model_1/batch_normalization/FusedBatchNormV3/ReadVariableOpReadVariableOpDmodel_1_batch_normalization_fusedbatchnormv3_readvariableop_resource*
_output_shapes
:*
dtype0└
=model_1/batch_normalization/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpFmodel_1_batch_normalization_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:*
dtype0щ
,model_1/batch_normalization/FusedBatchNormV3FusedBatchNormV3-model_1/activation_23/LeakyRelu:activations:02model_1/batch_normalization/ReadVariableOp:value:04model_1/batch_normalization/ReadVariableOp_1:value:0Cmodel_1/batch_normalization/FusedBatchNormV3/ReadVariableOp:value:0Emodel_1/batch_normalization/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:         :^:::::*
epsilon%oГ:*
is_training( а
'model_1/conv2d_16/Conv2D/ReadVariableOpReadVariableOp0model_1_conv2d_16_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype0ч
model_1/conv2d_16/Conv2DConv2D0model_1/batch_normalization/FusedBatchNormV3:y:0/model_1/conv2d_16/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:         :^*
paddingSAME*
strides
Ц
(model_1/conv2d_16/BiasAdd/ReadVariableOpReadVariableOp1model_1_conv2d_16_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0│
model_1/conv2d_16/BiasAddBiasAdd!model_1/conv2d_16/Conv2D:output:00model_1/conv2d_16/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:         :^Б
model_1/activation_24/LeakyRelu	LeakyRelu"model_1/conv2d_16/BiasAdd:output:0*/
_output_shapes
:         :^А
#model_1/group_normalization_1/ShapeShape-model_1/activation_24/LeakyRelu:activations:0*
T0*
_output_shapes
:В
%model_1/group_normalization_1/Shape_1Shape-model_1/activation_24/LeakyRelu:activations:0*
T0*
_output_shapes
:{
1model_1/group_normalization_1/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: }
3model_1/group_normalization_1/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:}
3model_1/group_normalization_1/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:щ
+model_1/group_normalization_1/strided_sliceStridedSlice.model_1/group_normalization_1/Shape_1:output:0:model_1/group_normalization_1/strided_slice/stack:output:0<model_1/group_normalization_1/strided_slice/stack_1:output:0<model_1/group_normalization_1/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask}
3model_1/group_normalization_1/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:
5model_1/group_normalization_1/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
5model_1/group_normalization_1/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ё
-model_1/group_normalization_1/strided_slice_1StridedSlice.model_1/group_normalization_1/Shape_1:output:0<model_1/group_normalization_1/strided_slice_1/stack:output:0>model_1/group_normalization_1/strided_slice_1/stack_1:output:0>model_1/group_normalization_1/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask}
3model_1/group_normalization_1/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:
5model_1/group_normalization_1/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
5model_1/group_normalization_1/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ё
-model_1/group_normalization_1/strided_slice_2StridedSlice.model_1/group_normalization_1/Shape_1:output:0<model_1/group_normalization_1/strided_slice_2/stack:output:0>model_1/group_normalization_1/strided_slice_2/stack_1:output:0>model_1/group_normalization_1/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask}
3model_1/group_normalization_1/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
5model_1/group_normalization_1/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
5model_1/group_normalization_1/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ё
-model_1/group_normalization_1/strided_slice_3StridedSlice.model_1/group_normalization_1/Shape_1:output:0<model_1/group_normalization_1/strided_slice_3/stack:output:0>model_1/group_normalization_1/strided_slice_3/stack_1:output:0>model_1/group_normalization_1/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskg
%model_1/group_normalization_1/stack/1Const*
_output_shapes
: *
dtype0*
value	B :g
%model_1/group_normalization_1/stack/4Const*
_output_shapes
: *
dtype0*
value	B :▀
#model_1/group_normalization_1/stackPack4model_1/group_normalization_1/strided_slice:output:0.model_1/group_normalization_1/stack/1:output:06model_1/group_normalization_1/strided_slice_1:output:06model_1/group_normalization_1/strided_slice_2:output:0.model_1/group_normalization_1/stack/4:output:0*
N*
T0*
_output_shapes
:╦
%model_1/group_normalization_1/ReshapeReshape-model_1/activation_24/LeakyRelu:activations:0,model_1/group_normalization_1/stack:output:0*
T0*3
_output_shapes!
:         :^Й
4model_1/group_normalization_1/Mean/reduction_indicesConst*
_output_shapes
:*
dtype0*!
valueB"         ш
"model_1/group_normalization_1/MeanMean.model_1/group_normalization_1/Reshape:output:0=model_1/group_normalization_1/Mean/reduction_indices:output:0*
T0*3
_output_shapes!
:         *
	keep_dims(Щ
Dmodel_1/group_normalization_1/reduce_variance/Mean/reduction_indicesConst*
_output_shapes
:*
dtype0*!
valueB"         И
2model_1/group_normalization_1/reduce_variance/MeanMean.model_1/group_normalization_1/Reshape:output:0Mmodel_1/group_normalization_1/reduce_variance/Mean/reduction_indices:output:0*
T0*3
_output_shapes!
:         *
	keep_dims(у
1model_1/group_normalization_1/reduce_variance/subSub.model_1/group_normalization_1/Reshape:output:0;model_1/group_normalization_1/reduce_variance/Mean:output:0*
T0*3
_output_shapes!
:         :^│
4model_1/group_normalization_1/reduce_variance/SquareSquare5model_1/group_normalization_1/reduce_variance/sub:z:0*
T0*3
_output_shapes!
:         :^Ы
Fmodel_1/group_normalization_1/reduce_variance/Mean_1/reduction_indicesConst*
_output_shapes
:*
dtype0*!
valueB"         Ц
4model_1/group_normalization_1/reduce_variance/Mean_1Mean8model_1/group_normalization_1/reduce_variance/Square:y:0Omodel_1/group_normalization_1/reduce_variance/Mean_1/reduction_indices:output:0*
T0*3
_output_shapes!
:         *
	keep_dims(├
!model_1/group_normalization_1/subSub.model_1/group_normalization_1/Reshape:output:0+model_1/group_normalization_1/Mean:output:0*
T0*3
_output_shapes!
:         :^h
#model_1/group_normalization_1/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *═╠╠=╒
!model_1/group_normalization_1/addAddV2=model_1/group_normalization_1/reduce_variance/Mean_1:output:0,model_1/group_normalization_1/add/y:output:0*
T0*3
_output_shapes!
:         h
#model_1/group_normalization_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ├
%model_1/group_normalization_1/MaximumMaximum%model_1/group_normalization_1/add:z:0,model_1/group_normalization_1/Const:output:0*
T0*3
_output_shapes!
:         У
"model_1/group_normalization_1/SqrtSqrt)model_1/group_normalization_1/Maximum:z:0*
T0*3
_output_shapes!
:         ╜
%model_1/group_normalization_1/truedivRealDiv%model_1/group_normalization_1/sub:z:0&model_1/group_normalization_1/Sqrt:y:0*
T0*3
_output_shapes!
:         :^╔
'model_1/group_normalization_1/Reshape_1Reshape)model_1/group_normalization_1/truediv:z:0,model_1/group_normalization_1/stack:output:0*
T0*3
_output_shapes!
:         :^▓
6model_1/group_normalization_1/Reshape_2/ReadVariableOpReadVariableOp?model_1_group_normalization_1_reshape_2_readvariableop_resource*
_output_shapes
:*
dtype0К
-model_1/group_normalization_1/Reshape_2/shapeConst*
_output_shapes
:*
dtype0*)
value B"               ▀
'model_1/group_normalization_1/Reshape_2Reshape>model_1/group_normalization_1/Reshape_2/ReadVariableOp:value:06model_1/group_normalization_1/Reshape_2/shape:output:0*
T0**
_output_shapes
:╩
!model_1/group_normalization_1/mulMul0model_1/group_normalization_1/Reshape_1:output:00model_1/group_normalization_1/Reshape_2:output:0*
T0*3
_output_shapes!
:         :^▓
6model_1/group_normalization_1/Reshape_3/ReadVariableOpReadVariableOp?model_1_group_normalization_1_reshape_3_readvariableop_resource*
_output_shapes
:*
dtype0К
-model_1/group_normalization_1/Reshape_3/shapeConst*
_output_shapes
:*
dtype0*)
value B"               ▀
'model_1/group_normalization_1/Reshape_3Reshape>model_1/group_normalization_1/Reshape_3/ReadVariableOp:value:06model_1/group_normalization_1/Reshape_3/shape:output:0*
T0**
_output_shapes
:├
#model_1/group_normalization_1/add_1AddV2%model_1/group_normalization_1/mul:z:00model_1/group_normalization_1/Reshape_3:output:0*
T0*3
_output_shapes!
:         :^├
'model_1/group_normalization_1/Reshape_4Reshape'model_1/group_normalization_1/add_1:z:0,model_1/group_normalization_1/Shape:output:0*
T0*/
_output_shapes
:         :^а
'model_1/conv2d_17/Conv2D/ReadVariableOpReadVariableOp0model_1_conv2d_17_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype0ч
model_1/conv2d_17/Conv2DConv2D0model_1/group_normalization_1/Reshape_4:output:0/model_1/conv2d_17/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:         :^*
paddingSAME*
strides
Ц
(model_1/conv2d_17/BiasAdd/ReadVariableOpReadVariableOp1model_1_conv2d_17_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0│
model_1/conv2d_17/BiasAddBiasAdd!model_1/conv2d_17/Conv2D:output:00model_1/conv2d_17/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:         :^Б
model_1/activation_25/LeakyRelu	LeakyRelu"model_1/conv2d_17/BiasAdd:output:0*/
_output_shapes
:         :^f
model_1/flatten/ConstConst*
_output_shapes
:*
dtype0*
valueB"    └T е
model_1/flatten/ReshapeReshape-model_1/activation_23/LeakyRelu:activations:0model_1/flatten/Const:output:0*
T0*)
_output_shapes
:         └йh
model_1/flatten_1/ConstConst*
_output_shapes
:*
dtype0*
valueB"    └T й
model_1/flatten_1/ReshapeReshape-model_1/activation_25/LeakyRelu:activations:0 model_1/flatten_1/Const:output:0*
T0*)
_output_shapes
:         └йa
model_1/concatenate/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :╙
model_1/concatenate/concatConcatV2 model_1/flatten/Reshape:output:0"model_1/flatten_1/Reshape:output:0(model_1/concatenate/concat/axis:output:0*
N*
T0*)
_output_shapes
:         А╙
Ц
%model_1/dense_4/MatMul/ReadVariableOpReadVariableOp.model_1_dense_4_matmul_readvariableop_resource* 
_output_shapes
:
А╙
*
dtype0ж
model_1/dense_4/MatMulMatMul#model_1/concatenate/concat:output:0-model_1/dense_4/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         Т
&model_1/dense_4/BiasAdd/ReadVariableOpReadVariableOp/model_1_dense_4_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0ж
model_1/dense_4/BiasAddBiasAdd model_1/dense_4/MatMul:product:0.model_1/dense_4/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         w
model_1/activation_26/LeakyRelu	LeakyRelu model_1/dense_4/BiasAdd:output:0*'
_output_shapes
:         Ф
%model_1/dense_5/MatMul/ReadVariableOpReadVariableOp.model_1_dense_5_matmul_readvariableop_resource*
_output_shapes

:*
dtype0░
model_1/dense_5/MatMulMatMul-model_1/activation_26/LeakyRelu:activations:0-model_1/dense_5/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         Т
&model_1/dense_5/BiasAdd/ReadVariableOpReadVariableOp/model_1_dense_5_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0ж
model_1/dense_5/BiasAddBiasAdd model_1/dense_5/MatMul:product:0.model_1/dense_5/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         o
IdentityIdentity model_1/dense_5/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:         ╦
NoOpNoOp<^model_1/batch_normalization/FusedBatchNormV3/ReadVariableOp>^model_1/batch_normalization/FusedBatchNormV3/ReadVariableOp_1+^model_1/batch_normalization/ReadVariableOp-^model_1/batch_normalization/ReadVariableOp_1)^model_1/conv2d_13/BiasAdd/ReadVariableOp(^model_1/conv2d_13/Conv2D/ReadVariableOp)^model_1/conv2d_14/BiasAdd/ReadVariableOp(^model_1/conv2d_14/Conv2D/ReadVariableOp)^model_1/conv2d_15/BiasAdd/ReadVariableOp(^model_1/conv2d_15/Conv2D/ReadVariableOp)^model_1/conv2d_16/BiasAdd/ReadVariableOp(^model_1/conv2d_16/Conv2D/ReadVariableOp)^model_1/conv2d_17/BiasAdd/ReadVariableOp(^model_1/conv2d_17/Conv2D/ReadVariableOp'^model_1/dense_4/BiasAdd/ReadVariableOp&^model_1/dense_4/MatMul/ReadVariableOp'^model_1/dense_5/BiasAdd/ReadVariableOp&^model_1/dense_5/MatMul/ReadVariableOp5^model_1/group_normalization/Reshape_2/ReadVariableOp5^model_1/group_normalization/Reshape_3/ReadVariableOp7^model_1/group_normalization_1/Reshape_2/ReadVariableOp7^model_1/group_normalization_1/Reshape_3/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*[
_input_shapesJ
H:         t╝: : : : : : : : : : : : : : : : : : : : : : 2z
;model_1/batch_normalization/FusedBatchNormV3/ReadVariableOp;model_1/batch_normalization/FusedBatchNormV3/ReadVariableOp2~
=model_1/batch_normalization/FusedBatchNormV3/ReadVariableOp_1=model_1/batch_normalization/FusedBatchNormV3/ReadVariableOp_12X
*model_1/batch_normalization/ReadVariableOp*model_1/batch_normalization/ReadVariableOp2\
,model_1/batch_normalization/ReadVariableOp_1,model_1/batch_normalization/ReadVariableOp_12T
(model_1/conv2d_13/BiasAdd/ReadVariableOp(model_1/conv2d_13/BiasAdd/ReadVariableOp2R
'model_1/conv2d_13/Conv2D/ReadVariableOp'model_1/conv2d_13/Conv2D/ReadVariableOp2T
(model_1/conv2d_14/BiasAdd/ReadVariableOp(model_1/conv2d_14/BiasAdd/ReadVariableOp2R
'model_1/conv2d_14/Conv2D/ReadVariableOp'model_1/conv2d_14/Conv2D/ReadVariableOp2T
(model_1/conv2d_15/BiasAdd/ReadVariableOp(model_1/conv2d_15/BiasAdd/ReadVariableOp2R
'model_1/conv2d_15/Conv2D/ReadVariableOp'model_1/conv2d_15/Conv2D/ReadVariableOp2T
(model_1/conv2d_16/BiasAdd/ReadVariableOp(model_1/conv2d_16/BiasAdd/ReadVariableOp2R
'model_1/conv2d_16/Conv2D/ReadVariableOp'model_1/conv2d_16/Conv2D/ReadVariableOp2T
(model_1/conv2d_17/BiasAdd/ReadVariableOp(model_1/conv2d_17/BiasAdd/ReadVariableOp2R
'model_1/conv2d_17/Conv2D/ReadVariableOp'model_1/conv2d_17/Conv2D/ReadVariableOp2P
&model_1/dense_4/BiasAdd/ReadVariableOp&model_1/dense_4/BiasAdd/ReadVariableOp2N
%model_1/dense_4/MatMul/ReadVariableOp%model_1/dense_4/MatMul/ReadVariableOp2P
&model_1/dense_5/BiasAdd/ReadVariableOp&model_1/dense_5/BiasAdd/ReadVariableOp2N
%model_1/dense_5/MatMul/ReadVariableOp%model_1/dense_5/MatMul/ReadVariableOp2l
4model_1/group_normalization/Reshape_2/ReadVariableOp4model_1/group_normalization/Reshape_2/ReadVariableOp2l
4model_1/group_normalization/Reshape_3/ReadVariableOp4model_1/group_normalization/Reshape_3/ReadVariableOp2p
6model_1/group_normalization_1/Reshape_2/ReadVariableOp6model_1/group_normalization_1/Reshape_2/ReadVariableOp2p
6model_1/group_normalization_1/Reshape_3/ReadVariableOp6model_1/group_normalization_1/Reshape_3/ReadVariableOp:Y U
0
_output_shapes
:         t╝
!
_user_specified_name	input_2
Я2
И
Q__inference_group_normalization_layer_call_and_return_conditional_losses_21506467

inputs/
!reshape_2_readvariableop_resource:/
!reshape_3_readvariableop_resource:
identityИвReshape_2/ReadVariableOpвReshape_3/ReadVariableOp;
ShapeShapeinputs*
T0*
_output_shapes
:=
Shape_1Shapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:╙
strided_sliceStridedSliceShape_1:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:█
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:█
strided_slice_2StridedSliceShape_1:output:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask_
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:█
strided_slice_3StridedSliceShape_1:output:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskI
stack/1Const*
_output_shapes
: *
dtype0*
value	B :I
stack/4Const*
_output_shapes
: *
dtype0*
value	B :л
stackPackstrided_slice:output:0stack/1:output:0strided_slice_1:output:0strided_slice_2:output:0stack/4:output:0*
N*
T0*
_output_shapes
:i
ReshapeReshapeinputsstack:output:0*
T0*4
_output_shapes"
 :         t╝k
Mean/reduction_indicesConst*
_output_shapes
:*
dtype0*!
valueB"         О
MeanMeanReshape:output:0Mean/reduction_indices:output:0*
T0*3
_output_shapes!
:         *
	keep_dims({
&reduce_variance/Mean/reduction_indicesConst*
_output_shapes
:*
dtype0*!
valueB"         о
reduce_variance/MeanMeanReshape:output:0/reduce_variance/Mean/reduction_indices:output:0*
T0*3
_output_shapes!
:         *
	keep_dims(К
reduce_variance/subSubReshape:output:0reduce_variance/Mean:output:0*
T0*4
_output_shapes"
 :         t╝x
reduce_variance/SquareSquarereduce_variance/sub:z:0*
T0*4
_output_shapes"
 :         t╝}
(reduce_variance/Mean_1/reduction_indicesConst*
_output_shapes
:*
dtype0*!
valueB"         ╝
reduce_variance/Mean_1Meanreduce_variance/Square:y:01reduce_variance/Mean_1/reduction_indices:output:0*
T0*3
_output_shapes!
:         *
	keep_dims(j
subSubReshape:output:0Mean:output:0*
T0*4
_output_shapes"
 :         t╝J
add/yConst*
_output_shapes
: *
dtype0*
valueB
 *═╠╠={
addAddV2reduce_variance/Mean_1:output:0add/y:output:0*
T0*3
_output_shapes!
:         J
ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    i
MaximumMaximumadd:z:0Const:output:0*
T0*3
_output_shapes!
:         W
SqrtSqrtMaximum:z:0*
T0*3
_output_shapes!
:         d
truedivRealDivsub:z:0Sqrt:y:0*
T0*4
_output_shapes"
 :         t╝p
	Reshape_1Reshapetruediv:z:0stack:output:0*
T0*4
_output_shapes"
 :         t╝v
Reshape_2/ReadVariableOpReadVariableOp!reshape_2_readvariableop_resource*
_output_shapes
:*
dtype0l
Reshape_2/shapeConst*
_output_shapes
:*
dtype0*)
value B"               Е
	Reshape_2Reshape Reshape_2/ReadVariableOp:value:0Reshape_2/shape:output:0*
T0**
_output_shapes
:q
mulMulReshape_1:output:0Reshape_2:output:0*
T0*4
_output_shapes"
 :         t╝v
Reshape_3/ReadVariableOpReadVariableOp!reshape_3_readvariableop_resource*
_output_shapes
:*
dtype0l
Reshape_3/shapeConst*
_output_shapes
:*
dtype0*)
value B"               Е
	Reshape_3Reshape Reshape_3/ReadVariableOp:value:0Reshape_3/shape:output:0*
T0**
_output_shapes
:j
add_1AddV2mul:z:0Reshape_3:output:0*
T0*4
_output_shapes"
 :         t╝j
	Reshape_4Reshape	add_1:z:0Shape:output:0*
T0*0
_output_shapes
:         t╝j
IdentityIdentityReshape_4:output:0^NoOp*
T0*0
_output_shapes
:         t╝|
NoOpNoOp^Reshape_2/ReadVariableOp^Reshape_3/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :         t╝: : 24
Reshape_2/ReadVariableOpReshape_2/ReadVariableOp24
Reshape_3/ReadVariableOpReshape_3/ReadVariableOp:X T
0
_output_shapes
:         t╝
 
_user_specified_nameinputs
∙
g
K__inference_activation_22_layer_call_and_return_conditional_losses_21506549

inputs
identityP
	LeakyRelu	LeakyReluinputs*0
_output_shapes
:         t╝h
IdentityIdentityLeakyRelu:activations:0*
T0*0
_output_shapes
:         t╝"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:         t╝:X T
0
_output_shapes
:         t╝
 
_user_specified_nameinputs
∙
б
,__inference_conv2d_13_layer_call_fn_21506347

inputs!
unknown:
	unknown_0:
identityИвStatefulPartitionedCallъ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         t╝*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8В *P
fKRI
G__inference_conv2d_13_layer_call_and_return_conditional_losses_21504860x
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*0
_output_shapes
:         t╝`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :         t╝: : 22
StatefulPartitionedCallStatefulPartitionedCall:X T
0
_output_shapes
:         t╝
 
_user_specified_nameinputs
╧
Щ
*__inference_dense_4_layer_call_fn_21506857

inputs
unknown:
А╙

	unknown_0:
identityИвStatefulPartitionedCall▀
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8В *N
fIRG
E__inference_dense_4_layer_call_and_return_conditional_losses_21505135o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*,
_input_shapes
:         А╙
: : 22
StatefulPartitionedCallStatefulPartitionedCall:Q M
)
_output_shapes
:         А╙

 
_user_specified_nameinputs
ї
g
K__inference_activation_24_layer_call_and_return_conditional_losses_21506660

inputs
identityO
	LeakyRelu	LeakyReluinputs*/
_output_shapes
:         :^g
IdentityIdentityLeakyRelu:activations:0*
T0*/
_output_shapes
:         :^"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:         :^:W S
/
_output_shapes
:         :^
 
_user_specified_nameinputs
к

А
G__inference_conv2d_17_layer_call_and_return_conditional_losses_21506803

inputs8
conv2d_readvariableop_resource:-
biasadd_readvariableop_resource:
identityИвBiasAdd/ReadVariableOpвConv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:*
dtype0Щ
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:         :^*
paddingSAME*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0}
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:         :^g
IdentityIdentityBiasAdd:output:0^NoOp*
T0*/
_output_shapes
:         :^w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:         :^: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:         :^
 
_user_specified_nameinputs
╨
L
0__inference_activation_24_layer_call_fn_21506655

inputs
identity├
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         :^* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2 *0J 8В *T
fORM
K__inference_activation_24_layer_call_and_return_conditional_losses_21505016h
IdentityIdentityPartitionedCall:output:0*
T0*/
_output_shapes
:         :^"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:         :^:W S
/
_output_shapes
:         :^
 
_user_specified_nameinputs
Х2
К
S__inference_group_normalization_1_layer_call_and_return_conditional_losses_21506784

inputs/
!reshape_2_readvariableop_resource:/
!reshape_3_readvariableop_resource:
identityИвReshape_2/ReadVariableOpвReshape_3/ReadVariableOp;
ShapeShapeinputs*
T0*
_output_shapes
:=
Shape_1Shapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:╙
strided_sliceStridedSliceShape_1:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:█
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:█
strided_slice_2StridedSliceShape_1:output:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask_
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:█
strided_slice_3StridedSliceShape_1:output:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskI
stack/1Const*
_output_shapes
: *
dtype0*
value	B :I
stack/4Const*
_output_shapes
: *
dtype0*
value	B :л
stackPackstrided_slice:output:0stack/1:output:0strided_slice_1:output:0strided_slice_2:output:0stack/4:output:0*
N*
T0*
_output_shapes
:h
ReshapeReshapeinputsstack:output:0*
T0*3
_output_shapes!
:         :^k
Mean/reduction_indicesConst*
_output_shapes
:*
dtype0*!
valueB"         О
MeanMeanReshape:output:0Mean/reduction_indices:output:0*
T0*3
_output_shapes!
:         *
	keep_dims({
&reduce_variance/Mean/reduction_indicesConst*
_output_shapes
:*
dtype0*!
valueB"         о
reduce_variance/MeanMeanReshape:output:0/reduce_variance/Mean/reduction_indices:output:0*
T0*3
_output_shapes!
:         *
	keep_dims(Й
reduce_variance/subSubReshape:output:0reduce_variance/Mean:output:0*
T0*3
_output_shapes!
:         :^w
reduce_variance/SquareSquarereduce_variance/sub:z:0*
T0*3
_output_shapes!
:         :^}
(reduce_variance/Mean_1/reduction_indicesConst*
_output_shapes
:*
dtype0*!
valueB"         ╝
reduce_variance/Mean_1Meanreduce_variance/Square:y:01reduce_variance/Mean_1/reduction_indices:output:0*
T0*3
_output_shapes!
:         *
	keep_dims(i
subSubReshape:output:0Mean:output:0*
T0*3
_output_shapes!
:         :^J
add/yConst*
_output_shapes
: *
dtype0*
valueB
 *═╠╠={
addAddV2reduce_variance/Mean_1:output:0add/y:output:0*
T0*3
_output_shapes!
:         J
ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    i
MaximumMaximumadd:z:0Const:output:0*
T0*3
_output_shapes!
:         W
SqrtSqrtMaximum:z:0*
T0*3
_output_shapes!
:         c
truedivRealDivsub:z:0Sqrt:y:0*
T0*3
_output_shapes!
:         :^o
	Reshape_1Reshapetruediv:z:0stack:output:0*
T0*3
_output_shapes!
:         :^v
Reshape_2/ReadVariableOpReadVariableOp!reshape_2_readvariableop_resource*
_output_shapes
:*
dtype0l
Reshape_2/shapeConst*
_output_shapes
:*
dtype0*)
value B"               Е
	Reshape_2Reshape Reshape_2/ReadVariableOp:value:0Reshape_2/shape:output:0*
T0**
_output_shapes
:p
mulMulReshape_1:output:0Reshape_2:output:0*
T0*3
_output_shapes!
:         :^v
Reshape_3/ReadVariableOpReadVariableOp!reshape_3_readvariableop_resource*
_output_shapes
:*
dtype0l
Reshape_3/shapeConst*
_output_shapes
:*
dtype0*)
value B"               Е
	Reshape_3Reshape Reshape_3/ReadVariableOp:value:0Reshape_3/shape:output:0*
T0**
_output_shapes
:i
add_1AddV2mul:z:0Reshape_3:output:0*
T0*3
_output_shapes!
:         :^i
	Reshape_4Reshape	add_1:z:0Shape:output:0*
T0*/
_output_shapes
:         :^i
IdentityIdentityReshape_4:output:0^NoOp*
T0*/
_output_shapes
:         :^|
NoOpNoOp^Reshape_2/ReadVariableOp^Reshape_3/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:         :^: : 24
Reshape_2/ReadVariableOpReshape_2/ReadVariableOp24
Reshape_3/ReadVariableOpReshape_3/ReadVariableOp:W S
/
_output_shapes
:         :^
 
_user_specified_nameinputs
Б
б
8__inference_group_normalization_1_layer_call_fn_21506678

inputs
unknown:
	unknown_0:
identityИвStatefulPartitionedCallї
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         :^*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8В *\
fWRU
S__inference_group_normalization_1_layer_call_and_return_conditional_losses_21505338w
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:         :^`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:         :^: : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:         :^
 
_user_specified_nameinputs"╡	L
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*│
serving_defaultЯ
D
input_29
serving_default_input_2:0         t╝;
dense_50
StatefulPartitionedCall:0         tensorflow/serving/predict:ч╠
С
layer-0
layer_with_weights-0
layer-1
layer-2
layer_with_weights-1
layer-3
layer-4
layer_with_weights-2
layer-5
layer_with_weights-3
layer-6
layer-7
	layer-8

layer-9
layer_with_weights-4
layer-10
layer_with_weights-5
layer-11
layer-12
layer_with_weights-6
layer-13
layer_with_weights-7
layer-14
layer-15
layer-16
layer-17
layer-18
layer_with_weights-8
layer-19
layer-20
layer_with_weights-9
layer-21
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses
_default_save_signature
	optimizer

signatures"
_tf_keras_network
"
_tf_keras_input_layer
▌
 	variables
!trainable_variables
"regularization_losses
#	keras_api
$__call__
*%&call_and_return_all_conditional_losses

&kernel
'bias
 (_jit_compiled_convolution_op"
_tf_keras_layer
е
)	variables
*trainable_variables
+regularization_losses
,	keras_api
-__call__
*.&call_and_return_all_conditional_losses"
_tf_keras_layer
▌
/	variables
0trainable_variables
1regularization_losses
2	keras_api
3__call__
*4&call_and_return_all_conditional_losses

5kernel
6bias
 7_jit_compiled_convolution_op"
_tf_keras_layer
е
8	variables
9trainable_variables
:regularization_losses
;	keras_api
<__call__
*=&call_and_return_all_conditional_losses"
_tf_keras_layer
║
>	variables
?trainable_variables
@regularization_losses
A	keras_api
B__call__
*C&call_and_return_all_conditional_losses
	Dgamma
Ebeta"
_tf_keras_layer
▌
F	variables
Gtrainable_variables
Hregularization_losses
I	keras_api
J__call__
*K&call_and_return_all_conditional_losses

Lkernel
Mbias
 N_jit_compiled_convolution_op"
_tf_keras_layer
е
O	variables
Ptrainable_variables
Qregularization_losses
R	keras_api
S__call__
*T&call_and_return_all_conditional_losses"
_tf_keras_layer
е
U	variables
Vtrainable_variables
Wregularization_losses
X	keras_api
Y__call__
*Z&call_and_return_all_conditional_losses"
_tf_keras_layer
е
[	variables
\trainable_variables
]regularization_losses
^	keras_api
___call__
*`&call_and_return_all_conditional_losses"
_tf_keras_layer
ъ
a	variables
btrainable_variables
cregularization_losses
d	keras_api
e__call__
*f&call_and_return_all_conditional_losses
gaxis
	hgamma
ibeta
jmoving_mean
kmoving_variance"
_tf_keras_layer
▌
l	variables
mtrainable_variables
nregularization_losses
o	keras_api
p__call__
*q&call_and_return_all_conditional_losses

rkernel
sbias
 t_jit_compiled_convolution_op"
_tf_keras_layer
е
u	variables
vtrainable_variables
wregularization_losses
x	keras_api
y__call__
*z&call_and_return_all_conditional_losses"
_tf_keras_layer
╜
{	variables
|trainable_variables
}regularization_losses
~	keras_api
__call__
+А&call_and_return_all_conditional_losses

Бgamma
	Вbeta"
_tf_keras_layer
ц
Г	variables
Дtrainable_variables
Еregularization_losses
Ж	keras_api
З__call__
+И&call_and_return_all_conditional_losses
Йkernel
	Кbias
!Л_jit_compiled_convolution_op"
_tf_keras_layer
л
М	variables
Нtrainable_variables
Оregularization_losses
П	keras_api
Р__call__
+С&call_and_return_all_conditional_losses"
_tf_keras_layer
л
Т	variables
Уtrainable_variables
Фregularization_losses
Х	keras_api
Ц__call__
+Ч&call_and_return_all_conditional_losses"
_tf_keras_layer
л
Ш	variables
Щtrainable_variables
Ъregularization_losses
Ы	keras_api
Ь__call__
+Э&call_and_return_all_conditional_losses"
_tf_keras_layer
л
Ю	variables
Яtrainable_variables
аregularization_losses
б	keras_api
в__call__
+г&call_and_return_all_conditional_losses"
_tf_keras_layer
├
д	variables
еtrainable_variables
жregularization_losses
з	keras_api
и__call__
+й&call_and_return_all_conditional_losses
кkernel
	лbias"
_tf_keras_layer
л
м	variables
нtrainable_variables
оregularization_losses
п	keras_api
░__call__
+▒&call_and_return_all_conditional_losses"
_tf_keras_layer
├
▓	variables
│trainable_variables
┤regularization_losses
╡	keras_api
╢__call__
+╖&call_and_return_all_conditional_losses
╕kernel
	╣bias"
_tf_keras_layer
╬
&0
'1
52
63
D4
E5
L6
M7
h8
i9
j10
k11
r12
s13
Б14
В15
Й16
К17
к18
л19
╕20
╣21"
trackable_list_wrapper
╛
&0
'1
52
63
D4
E5
L6
M7
h8
i9
r10
s11
Б12
В13
Й14
К15
к16
л17
╕18
╣19"
trackable_list_wrapper
 "
trackable_list_wrapper
╧
║non_trainable_variables
╗layers
╝metrics
 ╜layer_regularization_losses
╛layer_metrics
	variables
trainable_variables
regularization_losses
__call__
_default_save_signature
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
х
┐trace_0
└trace_1
┴trace_2
┬trace_32Є
*__inference_model_1_layer_call_fn_21505212
*__inference_model_1_layer_call_fn_21505945
*__inference_model_1_layer_call_fn_21505994
*__inference_model_1_layer_call_fn_21505703┐
╢▓▓
FullArgSpec1
args)Ъ&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsЪ
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 z┐trace_0z└trace_1z┴trace_2z┬trace_3
╤
├trace_0
─trace_1
┼trace_2
╞trace_32▐
E__inference_model_1_layer_call_and_return_conditional_losses_21506166
E__inference_model_1_layer_call_and_return_conditional_losses_21506338
E__inference_model_1_layer_call_and_return_conditional_losses_21505772
E__inference_model_1_layer_call_and_return_conditional_losses_21505841┐
╢▓▓
FullArgSpec1
args)Ъ&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsЪ
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 z├trace_0z─trace_1z┼trace_2z╞trace_3
╬B╦
#__inference__wrapped_model_21504767input_2"Ш
С▓Н
FullArgSpec
argsЪ 
varargsjargs
varkwjkwargs
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
M
	╟iter

╚decay
╔learning_rate
╩momentum"
	optimizer
-
╦serving_default"
signature_map
.
&0
'1"
trackable_list_wrapper
.
&0
'1"
trackable_list_wrapper
 "
trackable_list_wrapper
▓
╠non_trainable_variables
═layers
╬metrics
 ╧layer_regularization_losses
╨layer_metrics
 	variables
!trainable_variables
"regularization_losses
$__call__
*%&call_and_return_all_conditional_losses
&%"call_and_return_conditional_losses"
_generic_user_object
Є
╤trace_02╙
,__inference_conv2d_13_layer_call_fn_21506347в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 z╤trace_0
Н
╥trace_02ю
G__inference_conv2d_13_layer_call_and_return_conditional_losses_21506357в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 z╥trace_0
*:(2conv2d_13/kernel
:2conv2d_13/bias
┤2▒о
г▓Я
FullArgSpec'
argsЪ
jself
jinputs
jkernel
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 0
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
▓
╙non_trainable_variables
╘layers
╒metrics
 ╓layer_regularization_losses
╫layer_metrics
)	variables
*trainable_variables
+regularization_losses
-__call__
*.&call_and_return_all_conditional_losses
&."call_and_return_conditional_losses"
_generic_user_object
Ў
╪trace_02╫
0__inference_activation_20_layer_call_fn_21506362в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 z╪trace_0
С
┘trace_02Є
K__inference_activation_20_layer_call_and_return_conditional_losses_21506367в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 z┘trace_0
.
50
61"
trackable_list_wrapper
.
50
61"
trackable_list_wrapper
 "
trackable_list_wrapper
▓
┌non_trainable_variables
█layers
▄metrics
 ▌layer_regularization_losses
▐layer_metrics
/	variables
0trainable_variables
1regularization_losses
3__call__
*4&call_and_return_all_conditional_losses
&4"call_and_return_conditional_losses"
_generic_user_object
Є
▀trace_02╙
,__inference_conv2d_14_layer_call_fn_21506376в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 z▀trace_0
Н
рtrace_02ю
G__inference_conv2d_14_layer_call_and_return_conditional_losses_21506386в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 zрtrace_0
*:(2conv2d_14/kernel
:2conv2d_14/bias
┤2▒о
г▓Я
FullArgSpec'
argsЪ
jself
jinputs
jkernel
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 0
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
▓
сnon_trainable_variables
тlayers
уmetrics
 фlayer_regularization_losses
хlayer_metrics
8	variables
9trainable_variables
:regularization_losses
<__call__
*=&call_and_return_all_conditional_losses
&="call_and_return_conditional_losses"
_generic_user_object
Ў
цtrace_02╫
0__inference_activation_21_layer_call_fn_21506391в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 zцtrace_0
С
чtrace_02Є
K__inference_activation_21_layer_call_and_return_conditional_losses_21506396в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 zчtrace_0
.
D0
E1"
trackable_list_wrapper
.
D0
E1"
trackable_list_wrapper
 "
trackable_list_wrapper
▓
шnon_trainable_variables
щlayers
ъmetrics
 ыlayer_regularization_losses
ьlayer_metrics
>	variables
?trainable_variables
@regularization_losses
B__call__
*C&call_and_return_all_conditional_losses
&C"call_and_return_conditional_losses"
_generic_user_object
є
эtrace_0
юtrace_12╕
6__inference_group_normalization_layer_call_fn_21506405
6__inference_group_normalization_layer_call_fn_21506414┼
╝▓╕
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkwjkwargs
defaults
 

kwonlyargsЪ

jtraining%
kwonlydefaultsк

trainingp 
annotationsк *
 zэtrace_0zюtrace_1
й
яtrace_0
Ёtrace_12ю
Q__inference_group_normalization_layer_call_and_return_conditional_losses_21506467
Q__inference_group_normalization_layer_call_and_return_conditional_losses_21506520┼
╝▓╕
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkwjkwargs
defaults
 

kwonlyargsЪ

jtraining%
kwonlydefaultsк

trainingp 
annotationsк *
 zяtrace_0zЁtrace_1
':%2group_normalization/gamma
&:$2group_normalization/beta
.
L0
M1"
trackable_list_wrapper
.
L0
M1"
trackable_list_wrapper
 "
trackable_list_wrapper
▓
ёnon_trainable_variables
Єlayers
єmetrics
 Їlayer_regularization_losses
їlayer_metrics
F	variables
Gtrainable_variables
Hregularization_losses
J__call__
*K&call_and_return_all_conditional_losses
&K"call_and_return_conditional_losses"
_generic_user_object
Є
Ўtrace_02╙
,__inference_conv2d_15_layer_call_fn_21506529в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 zЎtrace_0
Н
ўtrace_02ю
G__inference_conv2d_15_layer_call_and_return_conditional_losses_21506539в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 zўtrace_0
*:(2conv2d_15/kernel
:2conv2d_15/bias
┤2▒о
г▓Я
FullArgSpec'
argsЪ
jself
jinputs
jkernel
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 0
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
▓
°non_trainable_variables
∙layers
·metrics
 √layer_regularization_losses
№layer_metrics
O	variables
Ptrainable_variables
Qregularization_losses
S__call__
*T&call_and_return_all_conditional_losses
&T"call_and_return_conditional_losses"
_generic_user_object
Ў
¤trace_02╫
0__inference_activation_22_layer_call_fn_21506544в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 z¤trace_0
С
■trace_02Є
K__inference_activation_22_layer_call_and_return_conditional_losses_21506549в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 z■trace_0
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
▓
 non_trainable_variables
Аlayers
Бmetrics
 Вlayer_regularization_losses
Гlayer_metrics
U	variables
Vtrainable_variables
Wregularization_losses
Y__call__
*Z&call_and_return_all_conditional_losses
&Z"call_and_return_conditional_losses"
_generic_user_object
·
Дtrace_02█
4__inference_average_pooling2d_layer_call_fn_21506554в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 zДtrace_0
Х
Еtrace_02Ў
O__inference_average_pooling2d_layer_call_and_return_conditional_losses_21506559в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 zЕtrace_0
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
▓
Жnon_trainable_variables
Зlayers
Иmetrics
 Йlayer_regularization_losses
Кlayer_metrics
[	variables
\trainable_variables
]regularization_losses
___call__
*`&call_and_return_all_conditional_losses
&`"call_and_return_conditional_losses"
_generic_user_object
Ў
Лtrace_02╫
0__inference_activation_23_layer_call_fn_21506564в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 zЛtrace_0
С
Мtrace_02Є
K__inference_activation_23_layer_call_and_return_conditional_losses_21506569в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 zМtrace_0
<
h0
i1
j2
k3"
trackable_list_wrapper
.
h0
i1"
trackable_list_wrapper
 "
trackable_list_wrapper
▓
Нnon_trainable_variables
Оlayers
Пmetrics
 Рlayer_regularization_losses
Сlayer_metrics
a	variables
btrainable_variables
cregularization_losses
e__call__
*f&call_and_return_all_conditional_losses
&f"call_and_return_conditional_losses"
_generic_user_object
с
Тtrace_0
Уtrace_12ж
6__inference_batch_normalization_layer_call_fn_21506582
6__inference_batch_normalization_layer_call_fn_21506595│
к▓ж
FullArgSpec)
args!Ъ
jself
jinputs

jtraining
varargs
 
varkw
 
defaultsЪ
p 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 zТtrace_0zУtrace_1
Ч
Фtrace_0
Хtrace_12▄
Q__inference_batch_normalization_layer_call_and_return_conditional_losses_21506613
Q__inference_batch_normalization_layer_call_and_return_conditional_losses_21506631│
к▓ж
FullArgSpec)
args!Ъ
jself
jinputs

jtraining
varargs
 
varkw
 
defaultsЪ
p 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 zФtrace_0zХtrace_1
 "
trackable_list_wrapper
':%2batch_normalization/gamma
&:$2batch_normalization/beta
/:- (2batch_normalization/moving_mean
3:1 (2#batch_normalization/moving_variance
.
r0
s1"
trackable_list_wrapper
.
r0
s1"
trackable_list_wrapper
 "
trackable_list_wrapper
▓
Цnon_trainable_variables
Чlayers
Шmetrics
 Щlayer_regularization_losses
Ъlayer_metrics
l	variables
mtrainable_variables
nregularization_losses
p__call__
*q&call_and_return_all_conditional_losses
&q"call_and_return_conditional_losses"
_generic_user_object
Є
Ыtrace_02╙
,__inference_conv2d_16_layer_call_fn_21506640в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 zЫtrace_0
Н
Ьtrace_02ю
G__inference_conv2d_16_layer_call_and_return_conditional_losses_21506650в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 zЬtrace_0
*:(2conv2d_16/kernel
:2conv2d_16/bias
┤2▒о
г▓Я
FullArgSpec'
argsЪ
jself
jinputs
jkernel
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 0
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
▓
Эnon_trainable_variables
Юlayers
Яmetrics
 аlayer_regularization_losses
бlayer_metrics
u	variables
vtrainable_variables
wregularization_losses
y__call__
*z&call_and_return_all_conditional_losses
&z"call_and_return_conditional_losses"
_generic_user_object
Ў
вtrace_02╫
0__inference_activation_24_layer_call_fn_21506655в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 zвtrace_0
С
гtrace_02Є
K__inference_activation_24_layer_call_and_return_conditional_losses_21506660в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 zгtrace_0
0
Б0
В1"
trackable_list_wrapper
0
Б0
В1"
trackable_list_wrapper
 "
trackable_list_wrapper
┤
дnon_trainable_variables
еlayers
жmetrics
 зlayer_regularization_losses
иlayer_metrics
{	variables
|trainable_variables
}regularization_losses
__call__
+А&call_and_return_all_conditional_losses
'А"call_and_return_conditional_losses"
_generic_user_object
ў
йtrace_0
кtrace_12╝
8__inference_group_normalization_1_layer_call_fn_21506669
8__inference_group_normalization_1_layer_call_fn_21506678┼
╝▓╕
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkwjkwargs
defaults
 

kwonlyargsЪ

jtraining%
kwonlydefaultsк

trainingp 
annotationsк *
 zйtrace_0zкtrace_1
н
лtrace_0
мtrace_12Є
S__inference_group_normalization_1_layer_call_and_return_conditional_losses_21506731
S__inference_group_normalization_1_layer_call_and_return_conditional_losses_21506784┼
╝▓╕
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkwjkwargs
defaults
 

kwonlyargsЪ

jtraining%
kwonlydefaultsк

trainingp 
annotationsк *
 zлtrace_0zмtrace_1
):'2group_normalization_1/gamma
(:&2group_normalization_1/beta
0
Й0
К1"
trackable_list_wrapper
0
Й0
К1"
trackable_list_wrapper
 "
trackable_list_wrapper
╕
нnon_trainable_variables
оlayers
пmetrics
 ░layer_regularization_losses
▒layer_metrics
Г	variables
Дtrainable_variables
Еregularization_losses
З__call__
+И&call_and_return_all_conditional_losses
'И"call_and_return_conditional_losses"
_generic_user_object
Є
▓trace_02╙
,__inference_conv2d_17_layer_call_fn_21506793в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 z▓trace_0
Н
│trace_02ю
G__inference_conv2d_17_layer_call_and_return_conditional_losses_21506803в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 z│trace_0
*:(2conv2d_17/kernel
:2conv2d_17/bias
┤2▒о
г▓Я
FullArgSpec'
argsЪ
jself
jinputs
jkernel
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 0
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
╕
┤non_trainable_variables
╡layers
╢metrics
 ╖layer_regularization_losses
╕layer_metrics
М	variables
Нtrainable_variables
Оregularization_losses
Р__call__
+С&call_and_return_all_conditional_losses
'С"call_and_return_conditional_losses"
_generic_user_object
Ў
╣trace_02╫
0__inference_activation_25_layer_call_fn_21506808в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 z╣trace_0
С
║trace_02Є
K__inference_activation_25_layer_call_and_return_conditional_losses_21506813в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 z║trace_0
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
╕
╗non_trainable_variables
╝layers
╜metrics
 ╛layer_regularization_losses
┐layer_metrics
Т	variables
Уtrainable_variables
Фregularization_losses
Ц__call__
+Ч&call_and_return_all_conditional_losses
'Ч"call_and_return_conditional_losses"
_generic_user_object
Ё
└trace_02╤
*__inference_flatten_layer_call_fn_21506818в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 z└trace_0
Л
┴trace_02ь
E__inference_flatten_layer_call_and_return_conditional_losses_21506824в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 z┴trace_0
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
╕
┬non_trainable_variables
├layers
─metrics
 ┼layer_regularization_losses
╞layer_metrics
Ш	variables
Щtrainable_variables
Ъregularization_losses
Ь__call__
+Э&call_and_return_all_conditional_losses
'Э"call_and_return_conditional_losses"
_generic_user_object
Є
╟trace_02╙
,__inference_flatten_1_layer_call_fn_21506829в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 z╟trace_0
Н
╚trace_02ю
G__inference_flatten_1_layer_call_and_return_conditional_losses_21506835в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 z╚trace_0
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
╕
╔non_trainable_variables
╩layers
╦metrics
 ╠layer_regularization_losses
═layer_metrics
Ю	variables
Яtrainable_variables
аregularization_losses
в__call__
+г&call_and_return_all_conditional_losses
'г"call_and_return_conditional_losses"
_generic_user_object
Ї
╬trace_02╒
.__inference_concatenate_layer_call_fn_21506841в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 z╬trace_0
П
╧trace_02Ё
I__inference_concatenate_layer_call_and_return_conditional_losses_21506848в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 z╧trace_0
0
к0
л1"
trackable_list_wrapper
0
к0
л1"
trackable_list_wrapper
 "
trackable_list_wrapper
╕
╨non_trainable_variables
╤layers
╥metrics
 ╙layer_regularization_losses
╘layer_metrics
д	variables
еtrainable_variables
жregularization_losses
и__call__
+й&call_and_return_all_conditional_losses
'й"call_and_return_conditional_losses"
_generic_user_object
Ё
╒trace_02╤
*__inference_dense_4_layer_call_fn_21506857в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 z╒trace_0
Л
╓trace_02ь
E__inference_dense_4_layer_call_and_return_conditional_losses_21506867в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 z╓trace_0
": 
А╙
2dense_4/kernel
:2dense_4/bias
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
╕
╫non_trainable_variables
╪layers
┘metrics
 ┌layer_regularization_losses
█layer_metrics
м	variables
нtrainable_variables
оregularization_losses
░__call__
+▒&call_and_return_all_conditional_losses
'▒"call_and_return_conditional_losses"
_generic_user_object
Ў
▄trace_02╫
0__inference_activation_26_layer_call_fn_21506872в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 z▄trace_0
С
▌trace_02Є
K__inference_activation_26_layer_call_and_return_conditional_losses_21506877в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 z▌trace_0
0
╕0
╣1"
trackable_list_wrapper
0
╕0
╣1"
trackable_list_wrapper
 "
trackable_list_wrapper
╕
▐non_trainable_variables
▀layers
рmetrics
 сlayer_regularization_losses
тlayer_metrics
▓	variables
│trainable_variables
┤regularization_losses
╢__call__
+╖&call_and_return_all_conditional_losses
'╖"call_and_return_conditional_losses"
_generic_user_object
Ё
уtrace_02╤
*__inference_dense_5_layer_call_fn_21506886в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 zуtrace_0
Л
фtrace_02ь
E__inference_dense_5_layer_call_and_return_conditional_losses_21506896в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 zфtrace_0
 :2dense_5/kernel
:2dense_5/bias
.
j0
k1"
trackable_list_wrapper
╞
0
1
2
3
4
5
6
7
	8

9
10
11
12
13
14
15
16
17
18
19
20
21"
trackable_list_wrapper
0
х0
ц1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
№B∙
*__inference_model_1_layer_call_fn_21505212input_2"┐
╢▓▓
FullArgSpec1
args)Ъ&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsЪ
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
√B°
*__inference_model_1_layer_call_fn_21505945inputs"┐
╢▓▓
FullArgSpec1
args)Ъ&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsЪ
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
√B°
*__inference_model_1_layer_call_fn_21505994inputs"┐
╢▓▓
FullArgSpec1
args)Ъ&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsЪ
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
№B∙
*__inference_model_1_layer_call_fn_21505703input_2"┐
╢▓▓
FullArgSpec1
args)Ъ&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsЪ
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
ЦBУ
E__inference_model_1_layer_call_and_return_conditional_losses_21506166inputs"┐
╢▓▓
FullArgSpec1
args)Ъ&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsЪ
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
ЦBУ
E__inference_model_1_layer_call_and_return_conditional_losses_21506338inputs"┐
╢▓▓
FullArgSpec1
args)Ъ&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsЪ
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
ЧBФ
E__inference_model_1_layer_call_and_return_conditional_losses_21505772input_2"┐
╢▓▓
FullArgSpec1
args)Ъ&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsЪ
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
ЧBФ
E__inference_model_1_layer_call_and_return_conditional_losses_21505841input_2"┐
╢▓▓
FullArgSpec1
args)Ъ&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsЪ
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
:	 (2SGD/iter
: (2	SGD/decay
: (2SGD/learning_rate
: (2SGD/momentum
═B╩
&__inference_signature_wrapper_21505896input_2"Ф
Н▓Й
FullArgSpec
argsЪ 
varargs
 
varkwjkwargs
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
рB▌
,__inference_conv2d_13_layer_call_fn_21506347inputs"в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
√B°
G__inference_conv2d_13_layer_call_and_return_conditional_losses_21506357inputs"в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
фBс
0__inference_activation_20_layer_call_fn_21506362inputs"в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
 B№
K__inference_activation_20_layer_call_and_return_conditional_losses_21506367inputs"в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
рB▌
,__inference_conv2d_14_layer_call_fn_21506376inputs"в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
√B°
G__inference_conv2d_14_layer_call_and_return_conditional_losses_21506386inputs"в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
фBс
0__inference_activation_21_layer_call_fn_21506391inputs"в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
 B№
K__inference_activation_21_layer_call_and_return_conditional_losses_21506396inputs"в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
НBК
6__inference_group_normalization_layer_call_fn_21506405inputs"┼
╝▓╕
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkwjkwargs
defaults
 

kwonlyargsЪ

jtraining%
kwonlydefaultsк

trainingp 
annotationsк *
 
НBК
6__inference_group_normalization_layer_call_fn_21506414inputs"┼
╝▓╕
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkwjkwargs
defaults
 

kwonlyargsЪ

jtraining%
kwonlydefaultsк

trainingp 
annotationsк *
 
иBе
Q__inference_group_normalization_layer_call_and_return_conditional_losses_21506467inputs"┼
╝▓╕
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkwjkwargs
defaults
 

kwonlyargsЪ

jtraining%
kwonlydefaultsк

trainingp 
annotationsк *
 
иBе
Q__inference_group_normalization_layer_call_and_return_conditional_losses_21506520inputs"┼
╝▓╕
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkwjkwargs
defaults
 

kwonlyargsЪ

jtraining%
kwonlydefaultsк

trainingp 
annotationsк *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
рB▌
,__inference_conv2d_15_layer_call_fn_21506529inputs"в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
√B°
G__inference_conv2d_15_layer_call_and_return_conditional_losses_21506539inputs"в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
фBс
0__inference_activation_22_layer_call_fn_21506544inputs"в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
 B№
K__inference_activation_22_layer_call_and_return_conditional_losses_21506549inputs"в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
шBх
4__inference_average_pooling2d_layer_call_fn_21506554inputs"в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
ГBА
O__inference_average_pooling2d_layer_call_and_return_conditional_losses_21506559inputs"в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
фBс
0__inference_activation_23_layer_call_fn_21506564inputs"в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
 B№
K__inference_activation_23_layer_call_and_return_conditional_losses_21506569inputs"в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
.
j0
k1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
√B°
6__inference_batch_normalization_layer_call_fn_21506582inputs"│
к▓ж
FullArgSpec)
args!Ъ
jself
jinputs

jtraining
varargs
 
varkw
 
defaultsЪ
p 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
√B°
6__inference_batch_normalization_layer_call_fn_21506595inputs"│
к▓ж
FullArgSpec)
args!Ъ
jself
jinputs

jtraining
varargs
 
varkw
 
defaultsЪ
p 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
ЦBУ
Q__inference_batch_normalization_layer_call_and_return_conditional_losses_21506613inputs"│
к▓ж
FullArgSpec)
args!Ъ
jself
jinputs

jtraining
varargs
 
varkw
 
defaultsЪ
p 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
ЦBУ
Q__inference_batch_normalization_layer_call_and_return_conditional_losses_21506631inputs"│
к▓ж
FullArgSpec)
args!Ъ
jself
jinputs

jtraining
varargs
 
varkw
 
defaultsЪ
p 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
рB▌
,__inference_conv2d_16_layer_call_fn_21506640inputs"в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
√B°
G__inference_conv2d_16_layer_call_and_return_conditional_losses_21506650inputs"в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
фBс
0__inference_activation_24_layer_call_fn_21506655inputs"в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
 B№
K__inference_activation_24_layer_call_and_return_conditional_losses_21506660inputs"в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
ПBМ
8__inference_group_normalization_1_layer_call_fn_21506669inputs"┼
╝▓╕
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkwjkwargs
defaults
 

kwonlyargsЪ

jtraining%
kwonlydefaultsк

trainingp 
annotationsк *
 
ПBМ
8__inference_group_normalization_1_layer_call_fn_21506678inputs"┼
╝▓╕
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkwjkwargs
defaults
 

kwonlyargsЪ

jtraining%
kwonlydefaultsк

trainingp 
annotationsк *
 
кBз
S__inference_group_normalization_1_layer_call_and_return_conditional_losses_21506731inputs"┼
╝▓╕
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkwjkwargs
defaults
 

kwonlyargsЪ

jtraining%
kwonlydefaultsк

trainingp 
annotationsк *
 
кBз
S__inference_group_normalization_1_layer_call_and_return_conditional_losses_21506784inputs"┼
╝▓╕
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkwjkwargs
defaults
 

kwonlyargsЪ

jtraining%
kwonlydefaultsк

trainingp 
annotationsк *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
рB▌
,__inference_conv2d_17_layer_call_fn_21506793inputs"в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
√B°
G__inference_conv2d_17_layer_call_and_return_conditional_losses_21506803inputs"в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
фBс
0__inference_activation_25_layer_call_fn_21506808inputs"в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
 B№
K__inference_activation_25_layer_call_and_return_conditional_losses_21506813inputs"в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
▐B█
*__inference_flatten_layer_call_fn_21506818inputs"в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
∙BЎ
E__inference_flatten_layer_call_and_return_conditional_losses_21506824inputs"в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
рB▌
,__inference_flatten_1_layer_call_fn_21506829inputs"в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
√B°
G__inference_flatten_1_layer_call_and_return_conditional_losses_21506835inputs"в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
юBы
.__inference_concatenate_layer_call_fn_21506841inputs/0inputs/1"в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
ЙBЖ
I__inference_concatenate_layer_call_and_return_conditional_losses_21506848inputs/0inputs/1"в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
▐B█
*__inference_dense_4_layer_call_fn_21506857inputs"в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
∙BЎ
E__inference_dense_4_layer_call_and_return_conditional_losses_21506867inputs"в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
фBс
0__inference_activation_26_layer_call_fn_21506872inputs"в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
 B№
K__inference_activation_26_layer_call_and_return_conditional_losses_21506877inputs"в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
▐B█
*__inference_dense_5_layer_call_fn_21506886inputs"в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
∙BЎ
E__inference_dense_5_layer_call_and_return_conditional_losses_21506896inputs"в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
R
ч	variables
ш	keras_api

щtotal

ъcount"
_tf_keras_metric
c
ы	variables
ь	keras_api

эtotal

юcount
я
_fn_kwargs"
_tf_keras_metric
0
щ0
ъ1"
trackable_list_wrapper
.
ч	variables"
_generic_user_object
:  (2total
:  (2count
0
э0
ю1"
trackable_list_wrapper
.
ы	variables"
_generic_user_object
:  (2total
:  (2count
 "
trackable_dict_wrapper╢
#__inference__wrapped_model_21504767О&'56DELMhijkrsБВЙКкл╕╣9в6
/в,
*К'
input_2         t╝
к "1к.
,
dense_5!К
dense_5         ╣
K__inference_activation_20_layer_call_and_return_conditional_losses_21506367j8в5
.в+
)К&
inputs         t╝
к ".в+
$К!
0         t╝
Ъ С
0__inference_activation_20_layer_call_fn_21506362]8в5
.в+
)К&
inputs         t╝
к "!К         t╝╣
K__inference_activation_21_layer_call_and_return_conditional_losses_21506396j8в5
.в+
)К&
inputs         t╝
к ".в+
$К!
0         t╝
Ъ С
0__inference_activation_21_layer_call_fn_21506391]8в5
.в+
)К&
inputs         t╝
к "!К         t╝╣
K__inference_activation_22_layer_call_and_return_conditional_losses_21506549j8в5
.в+
)К&
inputs         t╝
к ".в+
$К!
0         t╝
Ъ С
0__inference_activation_22_layer_call_fn_21506544]8в5
.в+
)К&
inputs         t╝
к "!К         t╝╖
K__inference_activation_23_layer_call_and_return_conditional_losses_21506569h7в4
-в*
(К%
inputs         :^
к "-в*
#К 
0         :^
Ъ П
0__inference_activation_23_layer_call_fn_21506564[7в4
-в*
(К%
inputs         :^
к " К         :^╖
K__inference_activation_24_layer_call_and_return_conditional_losses_21506660h7в4
-в*
(К%
inputs         :^
к "-в*
#К 
0         :^
Ъ П
0__inference_activation_24_layer_call_fn_21506655[7в4
-в*
(К%
inputs         :^
к " К         :^╖
K__inference_activation_25_layer_call_and_return_conditional_losses_21506813h7в4
-в*
(К%
inputs         :^
к "-в*
#К 
0         :^
Ъ П
0__inference_activation_25_layer_call_fn_21506808[7в4
-в*
(К%
inputs         :^
к " К         :^з
K__inference_activation_26_layer_call_and_return_conditional_losses_21506877X/в,
%в"
 К
inputs         
к "%в"
К
0         
Ъ 
0__inference_activation_26_layer_call_fn_21506872K/в,
%в"
 К
inputs         
к "К         Є
O__inference_average_pooling2d_layer_call_and_return_conditional_losses_21506559ЮRвO
HвE
CК@
inputs4                                    
к "HвE
>К;
04                                    
Ъ ╩
4__inference_average_pooling2d_layer_call_fn_21506554СRвO
HвE
CК@
inputs4                                    
к ";К84                                    ь
Q__inference_batch_normalization_layer_call_and_return_conditional_losses_21506613ЦhijkMвJ
Cв@
:К7
inputs+                           
p 
к "?в<
5К2
0+                           
Ъ ь
Q__inference_batch_normalization_layer_call_and_return_conditional_losses_21506631ЦhijkMвJ
Cв@
:К7
inputs+                           
p
к "?в<
5К2
0+                           
Ъ ─
6__inference_batch_normalization_layer_call_fn_21506582ЙhijkMвJ
Cв@
:К7
inputs+                           
p 
к "2К/+                           ─
6__inference_batch_normalization_layer_call_fn_21506595ЙhijkMвJ
Cв@
:К7
inputs+                           
p
к "2К/+                           ╫
I__inference_concatenate_layer_call_and_return_conditional_losses_21506848Й^в[
TвQ
OЪL
$К!
inputs/0         └й
$К!
inputs/1         └й
к "'в$
К
0         А╙

Ъ о
.__inference_concatenate_layer_call_fn_21506841|^в[
TвQ
OЪL
$К!
inputs/0         └й
$К!
inputs/1         └й
к "К         А╙
╣
G__inference_conv2d_13_layer_call_and_return_conditional_losses_21506357n&'8в5
.в+
)К&
inputs         t╝
к ".в+
$К!
0         t╝
Ъ С
,__inference_conv2d_13_layer_call_fn_21506347a&'8в5
.в+
)К&
inputs         t╝
к "!К         t╝╣
G__inference_conv2d_14_layer_call_and_return_conditional_losses_21506386n568в5
.в+
)К&
inputs         t╝
к ".в+
$К!
0         t╝
Ъ С
,__inference_conv2d_14_layer_call_fn_21506376a568в5
.в+
)К&
inputs         t╝
к "!К         t╝╣
G__inference_conv2d_15_layer_call_and_return_conditional_losses_21506539nLM8в5
.в+
)К&
inputs         t╝
к ".в+
$К!
0         t╝
Ъ С
,__inference_conv2d_15_layer_call_fn_21506529aLM8в5
.в+
)К&
inputs         t╝
к "!К         t╝╖
G__inference_conv2d_16_layer_call_and_return_conditional_losses_21506650lrs7в4
-в*
(К%
inputs         :^
к "-в*
#К 
0         :^
Ъ П
,__inference_conv2d_16_layer_call_fn_21506640_rs7в4
-в*
(К%
inputs         :^
к " К         :^╣
G__inference_conv2d_17_layer_call_and_return_conditional_losses_21506803nЙК7в4
-в*
(К%
inputs         :^
к "-в*
#К 
0         :^
Ъ С
,__inference_conv2d_17_layer_call_fn_21506793aЙК7в4
-в*
(К%
inputs         :^
к " К         :^й
E__inference_dense_4_layer_call_and_return_conditional_losses_21506867`кл1в.
'в$
"К
inputs         А╙

к "%в"
К
0         
Ъ Б
*__inference_dense_4_layer_call_fn_21506857Sкл1в.
'в$
"К
inputs         А╙

к "К         з
E__inference_dense_5_layer_call_and_return_conditional_losses_21506896^╕╣/в,
%в"
 К
inputs         
к "%в"
К
0         
Ъ 
*__inference_dense_5_layer_call_fn_21506886Q╕╣/в,
%в"
 К
inputs         
к "К         н
G__inference_flatten_1_layer_call_and_return_conditional_losses_21506835b7в4
-в*
(К%
inputs         :^
к "'в$
К
0         └й
Ъ Е
,__inference_flatten_1_layer_call_fn_21506829U7в4
-в*
(К%
inputs         :^
к "К         └йл
E__inference_flatten_layer_call_and_return_conditional_losses_21506824b7в4
-в*
(К%
inputs         :^
к "'в$
К
0         └й
Ъ Г
*__inference_flatten_layer_call_fn_21506818U7в4
-в*
(К%
inputs         :^
к "К         └й╒
S__inference_group_normalization_1_layer_call_and_return_conditional_losses_21506731~БВGвD
-в*
(К%
inputs         :^
к

trainingp "-в*
#К 
0         :^
Ъ ╒
S__inference_group_normalization_1_layer_call_and_return_conditional_losses_21506784~БВGвD
-в*
(К%
inputs         :^
к

trainingp"-в*
#К 
0         :^
Ъ н
8__inference_group_normalization_1_layer_call_fn_21506669qБВGвD
-в*
(К%
inputs         :^
к

trainingp " К         :^н
8__inference_group_normalization_1_layer_call_fn_21506678qБВGвD
-в*
(К%
inputs         :^
к

trainingp" К         :^╙
Q__inference_group_normalization_layer_call_and_return_conditional_losses_21506467~DEHвE
.в+
)К&
inputs         t╝
к

trainingp ".в+
$К!
0         t╝
Ъ ╙
Q__inference_group_normalization_layer_call_and_return_conditional_losses_21506520~DEHвE
.в+
)К&
inputs         t╝
к

trainingp".в+
$К!
0         t╝
Ъ л
6__inference_group_normalization_layer_call_fn_21506405qDEHвE
.в+
)К&
inputs         t╝
к

trainingp "!К         t╝л
6__inference_group_normalization_layer_call_fn_21506414qDEHвE
.в+
)К&
inputs         t╝
к

trainingp"!К         t╝╘
E__inference_model_1_layer_call_and_return_conditional_losses_21505772К&'56DELMhijkrsБВЙКкл╕╣Aв>
7в4
*К'
input_2         t╝
p 

 
к "%в"
К
0         
Ъ ╘
E__inference_model_1_layer_call_and_return_conditional_losses_21505841К&'56DELMhijkrsБВЙКкл╕╣Aв>
7в4
*К'
input_2         t╝
p

 
к "%в"
К
0         
Ъ ╙
E__inference_model_1_layer_call_and_return_conditional_losses_21506166Й&'56DELMhijkrsБВЙКкл╕╣@в=
6в3
)К&
inputs         t╝
p 

 
к "%в"
К
0         
Ъ ╙
E__inference_model_1_layer_call_and_return_conditional_losses_21506338Й&'56DELMhijkrsБВЙКкл╕╣@в=
6в3
)К&
inputs         t╝
p

 
к "%в"
К
0         
Ъ л
*__inference_model_1_layer_call_fn_21505212}&'56DELMhijkrsБВЙКкл╕╣Aв>
7в4
*К'
input_2         t╝
p 

 
к "К         л
*__inference_model_1_layer_call_fn_21505703}&'56DELMhijkrsБВЙКкл╕╣Aв>
7в4
*К'
input_2         t╝
p

 
к "К         к
*__inference_model_1_layer_call_fn_21505945|&'56DELMhijkrsБВЙКкл╕╣@в=
6в3
)К&
inputs         t╝
p 

 
к "К         к
*__inference_model_1_layer_call_fn_21505994|&'56DELMhijkrsБВЙКкл╕╣@в=
6в3
)К&
inputs         t╝
p

 
к "К         ─
&__inference_signature_wrapper_21505896Щ&'56DELMhijkrsБВЙКкл╕╣DвA
в 
:к7
5
input_2*К'
input_2         t╝"1к.
,
dense_5!К
dense_5         