кр
И
D
AddV2
x"T
y"T
z"T"
Ttype:
2	
^
AssignVariableOp
resource
value"dtype"
dtypetype"
validate_shapebool( 
М
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

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
ћ
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
epsilonfloat%Зб8"&
exponential_avg_factorfloat%  ?";
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
alphafloat%ЭЬL>"
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

Mean

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( " 
Ttype:
2	"
Tidxtype0:
2	

MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool("
allow_missing_filesbool( 
?
Mul
x"T
y"T
z"T"
Ttype:
2	
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
dtypetype
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
list(type)(0
l
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0
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
С
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
executor_typestring Ј
@
StaticRegexFullMatch	
input

output
"
patternstring
ї
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

VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 "serve*2.10.02v2.10.0-rc3-6-g359c3cdfc5f8Хђ
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
r
dense_17/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_17/bias
k
!dense_17/bias/Read/ReadVariableOpReadVariableOpdense_17/bias*
_output_shapes
:*
dtype0
z
dense_17/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:* 
shared_namedense_17/kernel
s
#dense_17/kernel/Read/ReadVariableOpReadVariableOpdense_17/kernel*
_output_shapes

:*
dtype0
r
dense_16/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_16/bias
k
!dense_16/bias/Read/ReadVariableOpReadVariableOpdense_16/bias*
_output_shapes
:*
dtype0
|
dense_16/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
г
* 
shared_namedense_16/kernel
u
#dense_16/kernel/Read/ReadVariableOpReadVariableOpdense_16/kernel* 
_output_shapes
:
г
*
dtype0
t
conv2d_61/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_nameconv2d_61/bias
m
"conv2d_61/bias/Read/ReadVariableOpReadVariableOpconv2d_61/bias*
_output_shapes
:*
dtype0

conv2d_61/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*!
shared_nameconv2d_61/kernel
}
$conv2d_61/kernel/Read/ReadVariableOpReadVariableOpconv2d_61/kernel*&
_output_shapes
:*
dtype0

group_normalization_5/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:*+
shared_namegroup_normalization_5/beta

.group_normalization_5/beta/Read/ReadVariableOpReadVariableOpgroup_normalization_5/beta*
_output_shapes
:*
dtype0

group_normalization_5/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:*,
shared_namegroup_normalization_5/gamma

/group_normalization_5/gamma/Read/ReadVariableOpReadVariableOpgroup_normalization_5/gamma*
_output_shapes
:*
dtype0
t
conv2d_60/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_nameconv2d_60/bias
m
"conv2d_60/bias/Read/ReadVariableOpReadVariableOpconv2d_60/bias*
_output_shapes
:*
dtype0

conv2d_60/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*!
shared_nameconv2d_60/kernel
}
$conv2d_60/kernel/Read/ReadVariableOpReadVariableOpconv2d_60/kernel*&
_output_shapes
:*
dtype0
Є
&batch_normalization_10/moving_varianceVarHandleOp*
_output_shapes
: *
dtype0*
shape:*7
shared_name(&batch_normalization_10/moving_variance

:batch_normalization_10/moving_variance/Read/ReadVariableOpReadVariableOp&batch_normalization_10/moving_variance*
_output_shapes
:*
dtype0

"batch_normalization_10/moving_meanVarHandleOp*
_output_shapes
: *
dtype0*
shape:*3
shared_name$"batch_normalization_10/moving_mean

6batch_normalization_10/moving_mean/Read/ReadVariableOpReadVariableOp"batch_normalization_10/moving_mean*
_output_shapes
:*
dtype0

batch_normalization_10/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:*,
shared_namebatch_normalization_10/beta

/batch_normalization_10/beta/Read/ReadVariableOpReadVariableOpbatch_normalization_10/beta*
_output_shapes
:*
dtype0

batch_normalization_10/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:*-
shared_namebatch_normalization_10/gamma

0batch_normalization_10/gamma/Read/ReadVariableOpReadVariableOpbatch_normalization_10/gamma*
_output_shapes
:*
dtype0
t
conv2d_59/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_nameconv2d_59/bias
m
"conv2d_59/bias/Read/ReadVariableOpReadVariableOpconv2d_59/bias*
_output_shapes
:*
dtype0

conv2d_59/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*!
shared_nameconv2d_59/kernel
}
$conv2d_59/kernel/Read/ReadVariableOpReadVariableOpconv2d_59/kernel*&
_output_shapes
:*
dtype0

group_normalization_4/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:*+
shared_namegroup_normalization_4/beta

.group_normalization_4/beta/Read/ReadVariableOpReadVariableOpgroup_normalization_4/beta*
_output_shapes
:*
dtype0

group_normalization_4/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:*,
shared_namegroup_normalization_4/gamma

/group_normalization_4/gamma/Read/ReadVariableOpReadVariableOpgroup_normalization_4/gamma*
_output_shapes
:*
dtype0
t
conv2d_58/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_nameconv2d_58/bias
m
"conv2d_58/bias/Read/ReadVariableOpReadVariableOpconv2d_58/bias*
_output_shapes
:*
dtype0

conv2d_58/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*!
shared_nameconv2d_58/kernel
}
$conv2d_58/kernel/Read/ReadVariableOpReadVariableOpconv2d_58/kernel*&
_output_shapes
:*
dtype0
t
conv2d_57/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_nameconv2d_57/bias
m
"conv2d_57/bias/Read/ReadVariableOpReadVariableOpconv2d_57/bias*
_output_shapes
:*
dtype0

conv2d_57/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*!
shared_nameconv2d_57/kernel
}
$conv2d_57/kernel/Read/ReadVariableOpReadVariableOpconv2d_57/kernel*&
_output_shapes
:*
dtype0

serving_default_input_8Placeholder*0
_output_shapes
:џџџџџџџџџtМ*
dtype0*%
shape:џџџџџџџџџtМ
Ш
StatefulPartitionedCallStatefulPartitionedCallserving_default_input_8conv2d_57/kernelconv2d_57/biasconv2d_58/kernelconv2d_58/biasgroup_normalization_4/gammagroup_normalization_4/betaconv2d_59/kernelconv2d_59/biasbatch_normalization_10/gammabatch_normalization_10/beta"batch_normalization_10/moving_mean&batch_normalization_10/moving_varianceconv2d_60/kernelconv2d_60/biasgroup_normalization_5/gammagroup_normalization_5/betaconv2d_61/kernelconv2d_61/biasdense_16/kerneldense_16/biasdense_17/kerneldense_17/bias*"
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ*8
_read_only_resource_inputs
	
*2
config_proto" 

CPU

GPU2 *0J 8 */
f*R(
&__inference_signature_wrapper_21513642

NoOpNoOp
џ
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*Й
valueЎBЊ BЂ
њ
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
Ш
 	variables
!trainable_variables
"regularization_losses
#	keras_api
$__call__
*%&call_and_return_all_conditional_losses

&kernel
'bias
 (_jit_compiled_convolution_op*

)	variables
*trainable_variables
+regularization_losses
,	keras_api
-__call__
*.&call_and_return_all_conditional_losses* 
Ш
/	variables
0trainable_variables
1regularization_losses
2	keras_api
3__call__
*4&call_and_return_all_conditional_losses

5kernel
6bias
 7_jit_compiled_convolution_op*

8	variables
9trainable_variables
:regularization_losses
;	keras_api
<__call__
*=&call_and_return_all_conditional_losses* 
Ѕ
>	variables
?trainable_variables
@regularization_losses
A	keras_api
B__call__
*C&call_and_return_all_conditional_losses
	Dgamma
Ebeta*
Ш
F	variables
Gtrainable_variables
Hregularization_losses
I	keras_api
J__call__
*K&call_and_return_all_conditional_losses

Lkernel
Mbias
 N_jit_compiled_convolution_op*

O	variables
Ptrainable_variables
Qregularization_losses
R	keras_api
S__call__
*T&call_and_return_all_conditional_losses* 

U	variables
Vtrainable_variables
Wregularization_losses
X	keras_api
Y__call__
*Z&call_and_return_all_conditional_losses* 

[	variables
\trainable_variables
]regularization_losses
^	keras_api
___call__
*`&call_and_return_all_conditional_losses* 
е
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
Ш
l	variables
mtrainable_variables
nregularization_losses
o	keras_api
p__call__
*q&call_and_return_all_conditional_losses

rkernel
sbias
 t_jit_compiled_convolution_op*

u	variables
vtrainable_variables
wregularization_losses
x	keras_api
y__call__
*z&call_and_return_all_conditional_losses* 
Ј
{	variables
|trainable_variables
}regularization_losses
~	keras_api
__call__
+&call_and_return_all_conditional_losses

gamma
	beta*
б
	variables
trainable_variables
regularization_losses
	keras_api
__call__
+&call_and_return_all_conditional_losses
kernel
	bias
!_jit_compiled_convolution_op*

	variables
trainable_variables
regularization_losses
	keras_api
__call__
+&call_and_return_all_conditional_losses* 

	variables
trainable_variables
regularization_losses
	keras_api
__call__
+&call_and_return_all_conditional_losses* 

	variables
trainable_variables
regularization_losses
	keras_api
__call__
+&call_and_return_all_conditional_losses* 

	variables
trainable_variables
 regularization_losses
Ё	keras_api
Ђ__call__
+Ѓ&call_and_return_all_conditional_losses* 
Ў
Є	variables
Ѕtrainable_variables
Іregularization_losses
Ї	keras_api
Ј__call__
+Љ&call_and_return_all_conditional_losses
Њkernel
	Ћbias*

Ќ	variables
­trainable_variables
Ўregularization_losses
Џ	keras_api
А__call__
+Б&call_and_return_all_conditional_losses* 
Ў
В	variables
Гtrainable_variables
Дregularization_losses
Е	keras_api
Ж__call__
+З&call_and_return_all_conditional_losses
Иkernel
	Йbias*
В
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
14
15
16
17
Њ18
Ћ19
И20
Й21*
Ђ
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
12
13
14
15
Њ16
Ћ17
И18
Й19*
* 
Е
Кnon_trainable_variables
Лlayers
Мmetrics
 Нlayer_regularization_losses
Оlayer_metrics
	variables
trainable_variables
regularization_losses
__call__
_default_save_signature
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses*
:
Пtrace_0
Рtrace_1
Сtrace_2
Тtrace_3* 
:
Уtrace_0
Фtrace_1
Хtrace_2
Цtrace_3* 
* 
>
	Чiter

Шdecay
Щlearning_rate
Ъmomentum*

Ыserving_default* 

&0
'1*

&0
'1*
* 

Ьnon_trainable_variables
Эlayers
Юmetrics
 Яlayer_regularization_losses
аlayer_metrics
 	variables
!trainable_variables
"regularization_losses
$__call__
*%&call_and_return_all_conditional_losses
&%"call_and_return_conditional_losses*

бtrace_0* 

вtrace_0* 
`Z
VARIABLE_VALUEconv2d_57/kernel6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUE*
\V
VARIABLE_VALUEconv2d_57/bias4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
* 
* 

гnon_trainable_variables
дlayers
еmetrics
 жlayer_regularization_losses
зlayer_metrics
)	variables
*trainable_variables
+regularization_losses
-__call__
*.&call_and_return_all_conditional_losses
&."call_and_return_conditional_losses* 

иtrace_0* 

йtrace_0* 

50
61*

50
61*
* 

кnon_trainable_variables
лlayers
мmetrics
 нlayer_regularization_losses
оlayer_metrics
/	variables
0trainable_variables
1regularization_losses
3__call__
*4&call_and_return_all_conditional_losses
&4"call_and_return_conditional_losses*

пtrace_0* 

рtrace_0* 
`Z
VARIABLE_VALUEconv2d_58/kernel6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUE*
\V
VARIABLE_VALUEconv2d_58/bias4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
* 
* 

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

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
№trace_1* 
jd
VARIABLE_VALUEgroup_normalization_4/gamma5layer_with_weights-2/gamma/.ATTRIBUTES/VARIABLE_VALUE*
hb
VARIABLE_VALUEgroup_normalization_4/beta4layer_with_weights-2/beta/.ATTRIBUTES/VARIABLE_VALUE*

L0
M1*

L0
M1*
* 

ёnon_trainable_variables
ђlayers
ѓmetrics
 єlayer_regularization_losses
ѕlayer_metrics
F	variables
Gtrainable_variables
Hregularization_losses
J__call__
*K&call_and_return_all_conditional_losses
&K"call_and_return_conditional_losses*

іtrace_0* 

їtrace_0* 
`Z
VARIABLE_VALUEconv2d_59/kernel6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUE*
\V
VARIABLE_VALUEconv2d_59/bias4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
* 
* 

јnon_trainable_variables
љlayers
њmetrics
 ћlayer_regularization_losses
ќlayer_metrics
O	variables
Ptrainable_variables
Qregularization_losses
S__call__
*T&call_and_return_all_conditional_losses
&T"call_and_return_conditional_losses* 

§trace_0* 

ўtrace_0* 
* 
* 
* 

џnon_trainable_variables
layers
metrics
 layer_regularization_losses
layer_metrics
U	variables
Vtrainable_variables
Wregularization_losses
Y__call__
*Z&call_and_return_all_conditional_losses
&Z"call_and_return_conditional_losses* 

trace_0* 

trace_0* 
* 
* 
* 

non_trainable_variables
layers
metrics
 layer_regularization_losses
layer_metrics
[	variables
\trainable_variables
]regularization_losses
___call__
*`&call_and_return_all_conditional_losses
&`"call_and_return_conditional_losses* 

trace_0* 

trace_0* 
 
h0
i1
j2
k3*

h0
i1*
* 

non_trainable_variables
layers
metrics
 layer_regularization_losses
layer_metrics
a	variables
btrainable_variables
cregularization_losses
e__call__
*f&call_and_return_all_conditional_losses
&f"call_and_return_conditional_losses*

trace_0
trace_1* 

trace_0
trace_1* 
* 
ke
VARIABLE_VALUEbatch_normalization_10/gamma5layer_with_weights-4/gamma/.ATTRIBUTES/VARIABLE_VALUE*
ic
VARIABLE_VALUEbatch_normalization_10/beta4layer_with_weights-4/beta/.ATTRIBUTES/VARIABLE_VALUE*
wq
VARIABLE_VALUE"batch_normalization_10/moving_mean;layer_with_weights-4/moving_mean/.ATTRIBUTES/VARIABLE_VALUE*
y
VARIABLE_VALUE&batch_normalization_10/moving_variance?layer_with_weights-4/moving_variance/.ATTRIBUTES/VARIABLE_VALUE*

r0
s1*

r0
s1*
* 

non_trainable_variables
layers
metrics
 layer_regularization_losses
layer_metrics
l	variables
mtrainable_variables
nregularization_losses
p__call__
*q&call_and_return_all_conditional_losses
&q"call_and_return_conditional_losses*

trace_0* 

trace_0* 
`Z
VARIABLE_VALUEconv2d_60/kernel6layer_with_weights-5/kernel/.ATTRIBUTES/VARIABLE_VALUE*
\V
VARIABLE_VALUEconv2d_60/bias4layer_with_weights-5/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
* 
* 

non_trainable_variables
layers
metrics
  layer_regularization_losses
Ёlayer_metrics
u	variables
vtrainable_variables
wregularization_losses
y__call__
*z&call_and_return_all_conditional_losses
&z"call_and_return_conditional_losses* 

Ђtrace_0* 

Ѓtrace_0* 

0
1*

0
1*
* 

Єnon_trainable_variables
Ѕlayers
Іmetrics
 Їlayer_regularization_losses
Јlayer_metrics
{	variables
|trainable_variables
}regularization_losses
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses*

Љtrace_0
Њtrace_1* 

Ћtrace_0
Ќtrace_1* 
jd
VARIABLE_VALUEgroup_normalization_5/gamma5layer_with_weights-6/gamma/.ATTRIBUTES/VARIABLE_VALUE*
hb
VARIABLE_VALUEgroup_normalization_5/beta4layer_with_weights-6/beta/.ATTRIBUTES/VARIABLE_VALUE*

0
1*

0
1*
* 

­non_trainable_variables
Ўlayers
Џmetrics
 Аlayer_regularization_losses
Бlayer_metrics
	variables
trainable_variables
regularization_losses
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses*

Вtrace_0* 

Гtrace_0* 
`Z
VARIABLE_VALUEconv2d_61/kernel6layer_with_weights-7/kernel/.ATTRIBUTES/VARIABLE_VALUE*
\V
VARIABLE_VALUEconv2d_61/bias4layer_with_weights-7/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
* 
* 

Дnon_trainable_variables
Еlayers
Жmetrics
 Зlayer_regularization_losses
Иlayer_metrics
	variables
trainable_variables
regularization_losses
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses* 

Йtrace_0* 

Кtrace_0* 
* 
* 
* 

Лnon_trainable_variables
Мlayers
Нmetrics
 Оlayer_regularization_losses
Пlayer_metrics
	variables
trainable_variables
regularization_losses
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses* 

Рtrace_0* 

Сtrace_0* 
* 
* 
* 

Тnon_trainable_variables
Уlayers
Фmetrics
 Хlayer_regularization_losses
Цlayer_metrics
	variables
trainable_variables
regularization_losses
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses* 

Чtrace_0* 

Шtrace_0* 
* 
* 
* 

Щnon_trainable_variables
Ъlayers
Ыmetrics
 Ьlayer_regularization_losses
Эlayer_metrics
	variables
trainable_variables
 regularization_losses
Ђ__call__
+Ѓ&call_and_return_all_conditional_losses
'Ѓ"call_and_return_conditional_losses* 

Юtrace_0* 

Яtrace_0* 

Њ0
Ћ1*

Њ0
Ћ1*
* 

аnon_trainable_variables
бlayers
вmetrics
 гlayer_regularization_losses
дlayer_metrics
Є	variables
Ѕtrainable_variables
Іregularization_losses
Ј__call__
+Љ&call_and_return_all_conditional_losses
'Љ"call_and_return_conditional_losses*

еtrace_0* 

жtrace_0* 
_Y
VARIABLE_VALUEdense_16/kernel6layer_with_weights-8/kernel/.ATTRIBUTES/VARIABLE_VALUE*
[U
VARIABLE_VALUEdense_16/bias4layer_with_weights-8/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
* 

зnon_trainable_variables
иlayers
йmetrics
 кlayer_regularization_losses
лlayer_metrics
Ќ	variables
­trainable_variables
Ўregularization_losses
А__call__
+Б&call_and_return_all_conditional_losses
'Б"call_and_return_conditional_losses* 

мtrace_0* 

нtrace_0* 

И0
Й1*

И0
Й1*
* 

оnon_trainable_variables
пlayers
рmetrics
 сlayer_regularization_losses
тlayer_metrics
В	variables
Гtrainable_variables
Дregularization_losses
Ж__call__
+З&call_and_return_all_conditional_losses
'З"call_and_return_conditional_losses*

уtrace_0* 

фtrace_0* 
_Y
VARIABLE_VALUEdense_17/kernel6layer_with_weights-9/kernel/.ATTRIBUTES/VARIABLE_VALUE*
[U
VARIABLE_VALUEdense_17/bias4layer_with_weights-9/bias/.ATTRIBUTES/VARIABLE_VALUE*

j0
k1*
Њ
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
б
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename$conv2d_57/kernel/Read/ReadVariableOp"conv2d_57/bias/Read/ReadVariableOp$conv2d_58/kernel/Read/ReadVariableOp"conv2d_58/bias/Read/ReadVariableOp/group_normalization_4/gamma/Read/ReadVariableOp.group_normalization_4/beta/Read/ReadVariableOp$conv2d_59/kernel/Read/ReadVariableOp"conv2d_59/bias/Read/ReadVariableOp0batch_normalization_10/gamma/Read/ReadVariableOp/batch_normalization_10/beta/Read/ReadVariableOp6batch_normalization_10/moving_mean/Read/ReadVariableOp:batch_normalization_10/moving_variance/Read/ReadVariableOp$conv2d_60/kernel/Read/ReadVariableOp"conv2d_60/bias/Read/ReadVariableOp/group_normalization_5/gamma/Read/ReadVariableOp.group_normalization_5/beta/Read/ReadVariableOp$conv2d_61/kernel/Read/ReadVariableOp"conv2d_61/bias/Read/ReadVariableOp#dense_16/kernel/Read/ReadVariableOp!dense_16/bias/Read/ReadVariableOp#dense_17/kernel/Read/ReadVariableOp!dense_17/bias/Read/ReadVariableOpSGD/iter/Read/ReadVariableOpSGD/decay/Read/ReadVariableOp%SGD/learning_rate/Read/ReadVariableOp SGD/momentum/Read/ReadVariableOptotal_1/Read/ReadVariableOpcount_1/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOpConst*+
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
GPU2 *0J 8 **
f%R#
!__inference__traced_save_21514755
є
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenameconv2d_57/kernelconv2d_57/biasconv2d_58/kernelconv2d_58/biasgroup_normalization_4/gammagroup_normalization_4/betaconv2d_59/kernelconv2d_59/biasbatch_normalization_10/gammabatch_normalization_10/beta"batch_normalization_10/moving_mean&batch_normalization_10/moving_varianceconv2d_60/kernelconv2d_60/biasgroup_normalization_5/gammagroup_normalization_5/betaconv2d_61/kernelconv2d_61/biasdense_16/kerneldense_16/biasdense_17/kerneldense_17/biasSGD/iter	SGD/decaySGD/learning_rateSGD/momentumtotal_1count_1totalcount**
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
GPU2 *0J 8 *-
f(R&
$__inference__traced_restore_21514855
е
g
K__inference_activation_88_layer_call_and_return_conditional_losses_21512892

inputs
identityG
	LeakyRelu	LeakyReluinputs*'
_output_shapes
:џџџџџџџџџ_
IdentityIdentityLeakyRelu:activations:0*
T0*'
_output_shapes
:џџџџџџџџџ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:џџџџџџџџџ:O K
'
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs

Ё
8__inference_group_normalization_4_layer_call_fn_21514160

inputs
unknown:
	unknown_0:
identityЂStatefulPartitionedCallі
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:џџџџџџџџџtМ*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8 *\
fWRU
S__inference_group_normalization_4_layer_call_and_return_conditional_losses_21513194x
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*0
_output_shapes
:џџџџџџџџџtМ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :џџџџџџџџџtМ: : 22
StatefulPartitionedCallStatefulPartitionedCall:X T
0
_output_shapes
:џџџџџџџџџtМ
 
_user_specified_nameinputs
ѕ
g
K__inference_activation_87_layer_call_and_return_conditional_losses_21514559

inputs
identityO
	LeakyRelu	LeakyReluinputs*/
_output_shapes
:џџџџџџџџџ:^g
IdentityIdentityLeakyRelu:activations:0*
T0*/
_output_shapes
:џџџџџџџџџ:^"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:џџџџџџџџџ:^:W S
/
_output_shapes
:џџџџџџџџџ:^
 
_user_specified_nameinputs
Њ


G__inference_conv2d_61_layer_call_and_return_conditional_losses_21514549

inputs8
conv2d_readvariableop_resource:-
biasadd_readvariableop_resource:
identityЂBiasAdd/ReadVariableOpЂConv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:*
dtype0
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:џџџџџџџџџ:^*
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
:џџџџџџџџџ:^g
IdentityIdentityBiasAdd:output:0^NoOp*
T0*/
_output_shapes
:џџџџџџџџџ:^w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:џџџџџџџџџ:^: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:џџџџџџџџџ:^
 
_user_specified_nameinputs
Ё2

S__inference_group_normalization_4_layer_call_and_return_conditional_losses_21512695

inputs/
!reshape_2_readvariableop_resource:/
!reshape_3_readvariableop_resource:
identityЂReshape_2/ReadVariableOpЂReshape_3/ReadVariableOp;
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
valueB:г
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
valueB:л
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
valueB:л
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
valueB:л
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
value	B :Ћ
stackPackstrided_slice:output:0stack/1:output:0strided_slice_1:output:0strided_slice_2:output:0stack/4:output:0*
N*
T0*
_output_shapes
:i
ReshapeReshapeinputsstack:output:0*
T0*4
_output_shapes"
 :џџџџџџџџџtМk
Mean/reduction_indicesConst*
_output_shapes
:*
dtype0*!
valueB"         
MeanMeanReshape:output:0Mean/reduction_indices:output:0*
T0*3
_output_shapes!
:џџџџџџџџџ*
	keep_dims({
&reduce_variance/Mean/reduction_indicesConst*
_output_shapes
:*
dtype0*!
valueB"         Ў
reduce_variance/MeanMeanReshape:output:0/reduce_variance/Mean/reduction_indices:output:0*
T0*3
_output_shapes!
:џџџџџџџџџ*
	keep_dims(
reduce_variance/subSubReshape:output:0reduce_variance/Mean:output:0*
T0*4
_output_shapes"
 :џџџџџџџџџtМx
reduce_variance/SquareSquarereduce_variance/sub:z:0*
T0*4
_output_shapes"
 :џџџџџџџџџtМ}
(reduce_variance/Mean_1/reduction_indicesConst*
_output_shapes
:*
dtype0*!
valueB"         М
reduce_variance/Mean_1Meanreduce_variance/Square:y:01reduce_variance/Mean_1/reduction_indices:output:0*
T0*3
_output_shapes!
:џџџџџџџџџ*
	keep_dims(j
subSubReshape:output:0Mean:output:0*
T0*4
_output_shapes"
 :џџџџџџџџџtМJ
add/yConst*
_output_shapes
: *
dtype0*
valueB
 *ЭЬЬ={
addAddV2reduce_variance/Mean_1:output:0add/y:output:0*
T0*3
_output_shapes!
:џџџџџџџџџJ
ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    i
MaximumMaximumadd:z:0Const:output:0*
T0*3
_output_shapes!
:џџџџџџџџџW
SqrtSqrtMaximum:z:0*
T0*3
_output_shapes!
:џџџџџџџџџd
truedivRealDivsub:z:0Sqrt:y:0*
T0*4
_output_shapes"
 :џџџџџџџџџtМp
	Reshape_1Reshapetruediv:z:0stack:output:0*
T0*4
_output_shapes"
 :џџџџџџџџџtМv
Reshape_2/ReadVariableOpReadVariableOp!reshape_2_readvariableop_resource*
_output_shapes
:*
dtype0l
Reshape_2/shapeConst*
_output_shapes
:*
dtype0*)
value B"               
	Reshape_2Reshape Reshape_2/ReadVariableOp:value:0Reshape_2/shape:output:0*
T0**
_output_shapes
:q
mulMulReshape_1:output:0Reshape_2:output:0*
T0*4
_output_shapes"
 :џџџџџџџџџtМv
Reshape_3/ReadVariableOpReadVariableOp!reshape_3_readvariableop_resource*
_output_shapes
:*
dtype0l
Reshape_3/shapeConst*
_output_shapes
:*
dtype0*)
value B"               
	Reshape_3Reshape Reshape_3/ReadVariableOp:value:0Reshape_3/shape:output:0*
T0**
_output_shapes
:j
add_1AddV2mul:z:0Reshape_3:output:0*
T0*4
_output_shapes"
 :џџџџџџџџџtМj
	Reshape_4Reshape	add_1:z:0Shape:output:0*
T0*0
_output_shapes
:џџџџџџџџџtМj
IdentityIdentityReshape_4:output:0^NoOp*
T0*0
_output_shapes
:џџџџџџџџџtМ|
NoOpNoOp^Reshape_2/ReadVariableOp^Reshape_3/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :џџџџџџџџџtМ: : 24
Reshape_2/ReadVariableOpReshape_2/ReadVariableOp24
Reshape_3/ReadVariableOpReshape_3/ReadVariableOp:X T
0
_output_shapes
:џџџџџџџџџtМ
 
_user_specified_nameinputs
ж
й
*__inference_model_7_layer_call_fn_21512958
input_8!
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
г


unknown_18:

unknown_19:

unknown_20:
identityЂStatefulPartitionedCallя
StatefulPartitionedCallStatefulPartitionedCallinput_8unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
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
:џџџџџџџџџ*8
_read_only_resource_inputs
	
*2
config_proto" 

CPU

GPU2 *0J 8 *N
fIRG
E__inference_model_7_layer_call_and_return_conditional_losses_21512911o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*[
_input_shapesJ
H:џџџџџџџџџtМ: : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Y U
0
_output_shapes
:џџџџџџџџџtМ
!
_user_specified_name	input_8
Ё2

S__inference_group_normalization_4_layer_call_and_return_conditional_losses_21513194

inputs/
!reshape_2_readvariableop_resource:/
!reshape_3_readvariableop_resource:
identityЂReshape_2/ReadVariableOpЂReshape_3/ReadVariableOp;
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
valueB:г
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
valueB:л
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
valueB:л
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
valueB:л
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
value	B :Ћ
stackPackstrided_slice:output:0stack/1:output:0strided_slice_1:output:0strided_slice_2:output:0stack/4:output:0*
N*
T0*
_output_shapes
:i
ReshapeReshapeinputsstack:output:0*
T0*4
_output_shapes"
 :џџџџџџџџџtМk
Mean/reduction_indicesConst*
_output_shapes
:*
dtype0*!
valueB"         
MeanMeanReshape:output:0Mean/reduction_indices:output:0*
T0*3
_output_shapes!
:џџџџџџџџџ*
	keep_dims({
&reduce_variance/Mean/reduction_indicesConst*
_output_shapes
:*
dtype0*!
valueB"         Ў
reduce_variance/MeanMeanReshape:output:0/reduce_variance/Mean/reduction_indices:output:0*
T0*3
_output_shapes!
:џџџџџџџџџ*
	keep_dims(
reduce_variance/subSubReshape:output:0reduce_variance/Mean:output:0*
T0*4
_output_shapes"
 :џџџџџџџџџtМx
reduce_variance/SquareSquarereduce_variance/sub:z:0*
T0*4
_output_shapes"
 :џџџџџџџџџtМ}
(reduce_variance/Mean_1/reduction_indicesConst*
_output_shapes
:*
dtype0*!
valueB"         М
reduce_variance/Mean_1Meanreduce_variance/Square:y:01reduce_variance/Mean_1/reduction_indices:output:0*
T0*3
_output_shapes!
:џџџџџџџџџ*
	keep_dims(j
subSubReshape:output:0Mean:output:0*
T0*4
_output_shapes"
 :џџџџџџџџџtМJ
add/yConst*
_output_shapes
: *
dtype0*
valueB
 *ЭЬЬ={
addAddV2reduce_variance/Mean_1:output:0add/y:output:0*
T0*3
_output_shapes!
:џџџџџџџџџJ
ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    i
MaximumMaximumadd:z:0Const:output:0*
T0*3
_output_shapes!
:џџџџџџџџџW
SqrtSqrtMaximum:z:0*
T0*3
_output_shapes!
:џџџџџџџџџd
truedivRealDivsub:z:0Sqrt:y:0*
T0*4
_output_shapes"
 :џџџџџџџџџtМp
	Reshape_1Reshapetruediv:z:0stack:output:0*
T0*4
_output_shapes"
 :џџџџџџџџџtМv
Reshape_2/ReadVariableOpReadVariableOp!reshape_2_readvariableop_resource*
_output_shapes
:*
dtype0l
Reshape_2/shapeConst*
_output_shapes
:*
dtype0*)
value B"               
	Reshape_2Reshape Reshape_2/ReadVariableOp:value:0Reshape_2/shape:output:0*
T0**
_output_shapes
:q
mulMulReshape_1:output:0Reshape_2:output:0*
T0*4
_output_shapes"
 :џџџџџџџџџtМv
Reshape_3/ReadVariableOpReadVariableOp!reshape_3_readvariableop_resource*
_output_shapes
:*
dtype0l
Reshape_3/shapeConst*
_output_shapes
:*
dtype0*)
value B"               
	Reshape_3Reshape Reshape_3/ReadVariableOp:value:0Reshape_3/shape:output:0*
T0**
_output_shapes
:j
add_1AddV2mul:z:0Reshape_3:output:0*
T0*4
_output_shapes"
 :џџџџџџџџџtМj
	Reshape_4Reshape	add_1:z:0Shape:output:0*
T0*0
_output_shapes
:џџџџџџџџџtМj
IdentityIdentityReshape_4:output:0^NoOp*
T0*0
_output_shapes
:џџџџџџџџџtМ|
NoOpNoOp^Reshape_2/ReadVariableOp^Reshape_3/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :џџџџџџџџџtМ: : 24
Reshape_2/ReadVariableOpReshape_2/ReadVariableOp24
Reshape_3/ReadVariableOpReshape_3/ReadVariableOp:X T
0
_output_shapes
:џџџџџџџџџtМ
 
_user_specified_nameinputs
д
L
0__inference_activation_83_layer_call_fn_21514137

inputs
identityФ
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:џџџџџџџџџtМ* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2 *0J 8 *T
fORM
K__inference_activation_83_layer_call_and_return_conditional_losses_21512640i
IdentityIdentityPartitionedCall:output:0*
T0*0
_output_shapes
:џџџџџџџџџtМ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:џџџџџџџџџtМ:X T
0
_output_shapes
:џџџџџџџџџtМ
 
_user_specified_nameinputs
б
и
*__inference_model_7_layer_call_fn_21513740

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
г


unknown_18:

unknown_19:

unknown_20:
identityЂStatefulPartitionedCallь
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
:џџџџџџџџџ*6
_read_only_resource_inputs
	
*2
config_proto" 

CPU

GPU2 *0J 8 *N
fIRG
E__inference_model_7_layer_call_and_return_conditional_losses_21513353o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*[
_input_shapesJ
H:џџџџџџџџџtМ: : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:X T
0
_output_shapes
:џџџџџџџџџtМ
 
_user_specified_nameinputs
д
L
0__inference_activation_82_layer_call_fn_21514108

inputs
identityФ
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:џџџџџџџџџtМ* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2 *0J 8 *T
fORM
K__inference_activation_82_layer_call_and_return_conditional_losses_21512617i
IdentityIdentityPartitionedCall:output:0*
T0*0
_output_shapes
:џџџџџџџџџtМ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:џџџџџџџџџtМ:X T
0
_output_shapes
:џџџџџџџџџtМ
 
_user_specified_nameinputs
љ
g
K__inference_activation_83_layer_call_and_return_conditional_losses_21512640

inputs
identityP
	LeakyRelu	LeakyReluinputs*0
_output_shapes
:џџџџџџџџџtМh
IdentityIdentityLeakyRelu:activations:0*
T0*0
_output_shapes
:џџџџџџџџџtМ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:џџџџџџџџџtМ:X T
0
_output_shapes
:џџџџџџџџџtМ
 
_user_specified_nameinputs
ѕ
Ё
,__inference_conv2d_61_layer_call_fn_21514539

inputs!
unknown:
	unknown_0:
identityЂStatefulPartitionedCallщ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:џџџџџџџџџ:^*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8 *P
fKRI
G__inference_conv2d_61_layer_call_and_return_conditional_losses_21512833w
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:џџџџџџџџџ:^`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:џџџџџџџџџ:^: : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:џџџџџџџџџ:^
 
_user_specified_nameinputs
Ы
c
G__inference_flatten_5_layer_call_and_return_conditional_losses_21514581

inputs
identityV
ConstConst*
_output_shapes
:*
dtype0*
valueB"џџџџРT ^
ReshapeReshapeinputsConst:output:0*
T0*)
_output_shapes
:џџџџџџџџџРЉZ
IdentityIdentityReshape:output:0*
T0*)
_output_shapes
:џџџџџџџџџРЉ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:џџџџџџџџџ:^:W S
/
_output_shapes
:џџџџџџџџџ:^
 
_user_specified_nameinputs
е
g
K__inference_activation_88_layer_call_and_return_conditional_losses_21514623

inputs
identityG
	LeakyRelu	LeakyReluinputs*'
_output_shapes
:џџџџџџџџџ_
IdentityIdentityLeakyRelu:activations:0*
T0*'
_output_shapes
:џџџџџџџџџ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:џџџџџџџџџ:O K
'
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs
љ
g
K__inference_activation_84_layer_call_and_return_conditional_losses_21514295

inputs
identityP
	LeakyRelu	LeakyReluinputs*0
_output_shapes
:џџџџџџџџџtМh
IdentityIdentityLeakyRelu:activations:0*
T0*0
_output_shapes
:џџџџџџџџџtМ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:џџџџџџџџџtМ:X T
0
_output_shapes
:џџџџџџџџџtМ
 
_user_specified_nameinputs
б	
љ
F__inference_dense_16_layer_call_and_return_conditional_losses_21514613

inputs2
matmul_readvariableop_resource:
г
-
biasadd_readvariableop_resource:
identityЂBiasAdd/ReadVariableOpЂMatMul/ReadVariableOpv
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
г
*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџr
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ_
IdentityIdentityBiasAdd:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџw
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*,
_input_shapes
:џџџџџџџџџг
: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:Q M
)
_output_shapes
:џџџџџџџџџг

 
_user_specified_nameinputs
а
L
0__inference_activation_85_layer_call_fn_21514310

inputs
identityУ
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:џџџџџџџџџ:^* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2 *0J 8 *T
fORM
K__inference_activation_85_layer_call_and_return_conditional_losses_21512730h
IdentityIdentityPartitionedCall:output:0*
T0*/
_output_shapes
:џџџџџџџџџ:^"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:џџџџџџџџџ:^:W S
/
_output_shapes
:џџџџџџџџџ:^
 
_user_specified_nameinputs

Ё
8__inference_group_normalization_5_layer_call_fn_21514424

inputs
unknown:
	unknown_0:
identityЂStatefulPartitionedCallѕ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:џџџџџџџџџ:^*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8 *\
fWRU
S__inference_group_normalization_5_layer_call_and_return_conditional_losses_21513084w
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:џџџџџџџџџ:^`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:џџџџџџџџџ:^: : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:џџџџџџџџџ:^
 
_user_specified_nameinputs
љ
Ё
,__inference_conv2d_59_layer_call_fn_21514275

inputs!
unknown:
	unknown_0:
identityЂStatefulPartitionedCallъ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:џџџџџџџџџtМ*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8 *P
fKRI
G__inference_conv2d_59_layer_call_and_return_conditional_losses_21512711x
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*0
_output_shapes
:џџџџџџџџџtМ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :џџџџџџџџџtМ: : 22
StatefulPartitionedCallStatefulPartitionedCall:X T
0
_output_shapes
:џџџџџџџџџtМ
 
_user_specified_nameinputs
[

E__inference_model_7_layer_call_and_return_conditional_losses_21513518
input_8,
conv2d_57_21513452: 
conv2d_57_21513454:,
conv2d_58_21513458: 
conv2d_58_21513460:,
group_normalization_4_21513464:,
group_normalization_4_21513466:,
conv2d_59_21513469: 
conv2d_59_21513471:-
batch_normalization_10_21513477:-
batch_normalization_10_21513479:-
batch_normalization_10_21513481:-
batch_normalization_10_21513483:,
conv2d_60_21513486: 
conv2d_60_21513488:,
group_normalization_5_21513492:,
group_normalization_5_21513494:,
conv2d_61_21513497: 
conv2d_61_21513499:%
dense_16_21513506:
г

dense_16_21513508:#
dense_17_21513512:
dense_17_21513514:
identityЂ.batch_normalization_10/StatefulPartitionedCallЂ!conv2d_57/StatefulPartitionedCallЂ!conv2d_58/StatefulPartitionedCallЂ!conv2d_59/StatefulPartitionedCallЂ!conv2d_60/StatefulPartitionedCallЂ!conv2d_61/StatefulPartitionedCallЂ dense_16/StatefulPartitionedCallЂ dense_17/StatefulPartitionedCallЂ-group_normalization_4/StatefulPartitionedCallЂ-group_normalization_5/StatefulPartitionedCall
!conv2d_57/StatefulPartitionedCallStatefulPartitionedCallinput_8conv2d_57_21513452conv2d_57_21513454*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:џџџџџџџџџtМ*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8 *P
fKRI
G__inference_conv2d_57_layer_call_and_return_conditional_losses_21512606і
activation_82/PartitionedCallPartitionedCall*conv2d_57/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:џџџџџџџџџtМ* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2 *0J 8 *T
fORM
K__inference_activation_82_layer_call_and_return_conditional_losses_21512617Ј
!conv2d_58/StatefulPartitionedCallStatefulPartitionedCall&activation_82/PartitionedCall:output:0conv2d_58_21513458conv2d_58_21513460*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:џџџџџџџџџtМ*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8 *P
fKRI
G__inference_conv2d_58_layer_call_and_return_conditional_losses_21512629і
activation_83/PartitionedCallPartitionedCall*conv2d_58/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:џџџџџџџџџtМ* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2 *0J 8 *T
fORM
K__inference_activation_83_layer_call_and_return_conditional_losses_21512640и
-group_normalization_4/StatefulPartitionedCallStatefulPartitionedCall&activation_83/PartitionedCall:output:0group_normalization_4_21513464group_normalization_4_21513466*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:џџџџџџџџџtМ*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8 *\
fWRU
S__inference_group_normalization_4_layer_call_and_return_conditional_losses_21512695И
!conv2d_59/StatefulPartitionedCallStatefulPartitionedCall6group_normalization_4/StatefulPartitionedCall:output:0conv2d_59_21513469conv2d_59_21513471*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:џџџџџџџџџtМ*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8 *P
fKRI
G__inference_conv2d_59_layer_call_and_return_conditional_losses_21512711і
activation_84/PartitionedCallPartitionedCall*conv2d_59/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:џџџџџџџџџtМ* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2 *0J 8 *T
fORM
K__inference_activation_84_layer_call_and_return_conditional_losses_21512722§
#average_pooling2d_2/PartitionedCallPartitionedCall&activation_84/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:џџџџџџџџџ:^* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2 *0J 8 *Z
fURS
Q__inference_average_pooling2d_2_layer_call_and_return_conditional_losses_21512522ї
activation_85/PartitionedCallPartitionedCall,average_pooling2d_2/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:џџџџџџџџџ:^* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2 *0J 8 *T
fORM
K__inference_activation_85_layer_call_and_return_conditional_losses_21512730Ё
.batch_normalization_10/StatefulPartitionedCallStatefulPartitionedCall&activation_85/PartitionedCall:output:0batch_normalization_10_21513477batch_normalization_10_21513479batch_normalization_10_21513481batch_normalization_10_21513483*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:џџџџџџџџџ:^*&
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8 *]
fXRV
T__inference_batch_normalization_10_layer_call_and_return_conditional_losses_21512547И
!conv2d_60/StatefulPartitionedCallStatefulPartitionedCall7batch_normalization_10/StatefulPartitionedCall:output:0conv2d_60_21513486conv2d_60_21513488*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:џџџџџџџџџ:^*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8 *P
fKRI
G__inference_conv2d_60_layer_call_and_return_conditional_losses_21512751ѕ
activation_86/PartitionedCallPartitionedCall*conv2d_60/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:џџџџџџџџџ:^* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2 *0J 8 *T
fORM
K__inference_activation_86_layer_call_and_return_conditional_losses_21512762з
-group_normalization_5/StatefulPartitionedCallStatefulPartitionedCall&activation_86/PartitionedCall:output:0group_normalization_5_21513492group_normalization_5_21513494*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:џџџџџџџџџ:^*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8 *\
fWRU
S__inference_group_normalization_5_layer_call_and_return_conditional_losses_21512817З
!conv2d_61/StatefulPartitionedCallStatefulPartitionedCall6group_normalization_5/StatefulPartitionedCall:output:0conv2d_61_21513497conv2d_61_21513499*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:џџџџџџџџџ:^*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8 *P
fKRI
G__inference_conv2d_61_layer_call_and_return_conditional_losses_21512833ѕ
activation_87/PartitionedCallPartitionedCall*conv2d_61/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:џџџџџџџџџ:^* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2 *0J 8 *T
fORM
K__inference_activation_87_layer_call_and_return_conditional_losses_21512844у
flatten_4/PartitionedCallPartitionedCall&activation_85/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *)
_output_shapes
:џџџџџџџџџРЉ* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2 *0J 8 *P
fKRI
G__inference_flatten_4_layer_call_and_return_conditional_losses_21512852у
flatten_5/PartitionedCallPartitionedCall&activation_87/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *)
_output_shapes
:џџџџџџџџџРЉ* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2 *0J 8 *P
fKRI
G__inference_flatten_5_layer_call_and_return_conditional_losses_21512860
concatenate_2/PartitionedCallPartitionedCall"flatten_4/PartitionedCall:output:0"flatten_5/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *)
_output_shapes
:џџџџџџџџџг
* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2 *0J 8 *T
fORM
K__inference_concatenate_2_layer_call_and_return_conditional_losses_21512869
 dense_16/StatefulPartitionedCallStatefulPartitionedCall&concatenate_2/PartitionedCall:output:0dense_16_21513506dense_16_21513508*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8 *O
fJRH
F__inference_dense_16_layer_call_and_return_conditional_losses_21512881ь
activation_88/PartitionedCallPartitionedCall)dense_16/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2 *0J 8 *T
fORM
K__inference_activation_88_layer_call_and_return_conditional_losses_21512892
 dense_17/StatefulPartitionedCallStatefulPartitionedCall&activation_88/PartitionedCall:output:0dense_17_21513512dense_17_21513514*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8 *O
fJRH
F__inference_dense_17_layer_call_and_return_conditional_losses_21512904x
IdentityIdentity)dense_17/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџб
NoOpNoOp/^batch_normalization_10/StatefulPartitionedCall"^conv2d_57/StatefulPartitionedCall"^conv2d_58/StatefulPartitionedCall"^conv2d_59/StatefulPartitionedCall"^conv2d_60/StatefulPartitionedCall"^conv2d_61/StatefulPartitionedCall!^dense_16/StatefulPartitionedCall!^dense_17/StatefulPartitionedCall.^group_normalization_4/StatefulPartitionedCall.^group_normalization_5/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*[
_input_shapesJ
H:џџџџџџџџџtМ: : : : : : : : : : : : : : : : : : : : : : 2`
.batch_normalization_10/StatefulPartitionedCall.batch_normalization_10/StatefulPartitionedCall2F
!conv2d_57/StatefulPartitionedCall!conv2d_57/StatefulPartitionedCall2F
!conv2d_58/StatefulPartitionedCall!conv2d_58/StatefulPartitionedCall2F
!conv2d_59/StatefulPartitionedCall!conv2d_59/StatefulPartitionedCall2F
!conv2d_60/StatefulPartitionedCall!conv2d_60/StatefulPartitionedCall2F
!conv2d_61/StatefulPartitionedCall!conv2d_61/StatefulPartitionedCall2D
 dense_16/StatefulPartitionedCall dense_16/StatefulPartitionedCall2D
 dense_17/StatefulPartitionedCall dense_17/StatefulPartitionedCall2^
-group_normalization_4/StatefulPartitionedCall-group_normalization_4/StatefulPartitionedCall2^
-group_normalization_5/StatefulPartitionedCall-group_normalization_5/StatefulPartitionedCall:Y U
0
_output_shapes
:џџџџџџџџџtМ
!
_user_specified_name	input_8
2

S__inference_group_normalization_5_layer_call_and_return_conditional_losses_21514530

inputs/
!reshape_2_readvariableop_resource:/
!reshape_3_readvariableop_resource:
identityЂReshape_2/ReadVariableOpЂReshape_3/ReadVariableOp;
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
valueB:г
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
valueB:л
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
valueB:л
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
valueB:л
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
value	B :Ћ
stackPackstrided_slice:output:0stack/1:output:0strided_slice_1:output:0strided_slice_2:output:0stack/4:output:0*
N*
T0*
_output_shapes
:h
ReshapeReshapeinputsstack:output:0*
T0*3
_output_shapes!
:џџџџџџџџџ:^k
Mean/reduction_indicesConst*
_output_shapes
:*
dtype0*!
valueB"         
MeanMeanReshape:output:0Mean/reduction_indices:output:0*
T0*3
_output_shapes!
:џџџџџџџџџ*
	keep_dims({
&reduce_variance/Mean/reduction_indicesConst*
_output_shapes
:*
dtype0*!
valueB"         Ў
reduce_variance/MeanMeanReshape:output:0/reduce_variance/Mean/reduction_indices:output:0*
T0*3
_output_shapes!
:џџџџџџџџџ*
	keep_dims(
reduce_variance/subSubReshape:output:0reduce_variance/Mean:output:0*
T0*3
_output_shapes!
:џџџџџџџџџ:^w
reduce_variance/SquareSquarereduce_variance/sub:z:0*
T0*3
_output_shapes!
:џџџџџџџџџ:^}
(reduce_variance/Mean_1/reduction_indicesConst*
_output_shapes
:*
dtype0*!
valueB"         М
reduce_variance/Mean_1Meanreduce_variance/Square:y:01reduce_variance/Mean_1/reduction_indices:output:0*
T0*3
_output_shapes!
:џџџџџџџџџ*
	keep_dims(i
subSubReshape:output:0Mean:output:0*
T0*3
_output_shapes!
:џџџџџџџџџ:^J
add/yConst*
_output_shapes
: *
dtype0*
valueB
 *ЭЬЬ={
addAddV2reduce_variance/Mean_1:output:0add/y:output:0*
T0*3
_output_shapes!
:џџџџџџџџџJ
ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    i
MaximumMaximumadd:z:0Const:output:0*
T0*3
_output_shapes!
:џџџџџџџџџW
SqrtSqrtMaximum:z:0*
T0*3
_output_shapes!
:џџџџџџџџџc
truedivRealDivsub:z:0Sqrt:y:0*
T0*3
_output_shapes!
:џџџџџџџџџ:^o
	Reshape_1Reshapetruediv:z:0stack:output:0*
T0*3
_output_shapes!
:џџџџџџџџџ:^v
Reshape_2/ReadVariableOpReadVariableOp!reshape_2_readvariableop_resource*
_output_shapes
:*
dtype0l
Reshape_2/shapeConst*
_output_shapes
:*
dtype0*)
value B"               
	Reshape_2Reshape Reshape_2/ReadVariableOp:value:0Reshape_2/shape:output:0*
T0**
_output_shapes
:p
mulMulReshape_1:output:0Reshape_2:output:0*
T0*3
_output_shapes!
:џџџџџџџџџ:^v
Reshape_3/ReadVariableOpReadVariableOp!reshape_3_readvariableop_resource*
_output_shapes
:*
dtype0l
Reshape_3/shapeConst*
_output_shapes
:*
dtype0*)
value B"               
	Reshape_3Reshape Reshape_3/ReadVariableOp:value:0Reshape_3/shape:output:0*
T0**
_output_shapes
:i
add_1AddV2mul:z:0Reshape_3:output:0*
T0*3
_output_shapes!
:џџџџџџџџџ:^i
	Reshape_4Reshape	add_1:z:0Shape:output:0*
T0*/
_output_shapes
:џџџџџџџџџ:^i
IdentityIdentityReshape_4:output:0^NoOp*
T0*/
_output_shapes
:џџџџџџџџџ:^|
NoOpNoOp^Reshape_2/ReadVariableOp^Reshape_3/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:џџџџџџџџџ:^: : 24
Reshape_2/ReadVariableOpReshape_2/ReadVariableOp24
Reshape_3/ReadVariableOpReshape_3/ReadVariableOp:W S
/
_output_shapes
:џџџџџџџџџ:^
 
_user_specified_nameinputs
Џ


G__inference_conv2d_58_layer_call_and_return_conditional_losses_21512629

inputs8
conv2d_readvariableop_resource:-
biasadd_readvariableop_resource:
identityЂBiasAdd/ReadVariableOpЂConv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:*
dtype0
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:џџџџџџџџџtМ*
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
:џџџџџџџџџtМh
IdentityIdentityBiasAdd:output:0^NoOp*
T0*0
_output_shapes
:џџџџџџџџџtМw
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :џџџџџџџџџtМ: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:X T
0
_output_shapes
:џџџџџџџџџtМ
 
_user_specified_nameinputs
[

E__inference_model_7_layer_call_and_return_conditional_losses_21513353

inputs,
conv2d_57_21513287: 
conv2d_57_21513289:,
conv2d_58_21513293: 
conv2d_58_21513295:,
group_normalization_4_21513299:,
group_normalization_4_21513301:,
conv2d_59_21513304: 
conv2d_59_21513306:-
batch_normalization_10_21513312:-
batch_normalization_10_21513314:-
batch_normalization_10_21513316:-
batch_normalization_10_21513318:,
conv2d_60_21513321: 
conv2d_60_21513323:,
group_normalization_5_21513327:,
group_normalization_5_21513329:,
conv2d_61_21513332: 
conv2d_61_21513334:%
dense_16_21513341:
г

dense_16_21513343:#
dense_17_21513347:
dense_17_21513349:
identityЂ.batch_normalization_10/StatefulPartitionedCallЂ!conv2d_57/StatefulPartitionedCallЂ!conv2d_58/StatefulPartitionedCallЂ!conv2d_59/StatefulPartitionedCallЂ!conv2d_60/StatefulPartitionedCallЂ!conv2d_61/StatefulPartitionedCallЂ dense_16/StatefulPartitionedCallЂ dense_17/StatefulPartitionedCallЂ-group_normalization_4/StatefulPartitionedCallЂ-group_normalization_5/StatefulPartitionedCall
!conv2d_57/StatefulPartitionedCallStatefulPartitionedCallinputsconv2d_57_21513287conv2d_57_21513289*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:џџџџџџџџџtМ*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8 *P
fKRI
G__inference_conv2d_57_layer_call_and_return_conditional_losses_21512606і
activation_82/PartitionedCallPartitionedCall*conv2d_57/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:џџџџџџџџџtМ* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2 *0J 8 *T
fORM
K__inference_activation_82_layer_call_and_return_conditional_losses_21512617Ј
!conv2d_58/StatefulPartitionedCallStatefulPartitionedCall&activation_82/PartitionedCall:output:0conv2d_58_21513293conv2d_58_21513295*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:џџџџџџџџџtМ*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8 *P
fKRI
G__inference_conv2d_58_layer_call_and_return_conditional_losses_21512629і
activation_83/PartitionedCallPartitionedCall*conv2d_58/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:џџџџџџџџџtМ* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2 *0J 8 *T
fORM
K__inference_activation_83_layer_call_and_return_conditional_losses_21512640и
-group_normalization_4/StatefulPartitionedCallStatefulPartitionedCall&activation_83/PartitionedCall:output:0group_normalization_4_21513299group_normalization_4_21513301*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:џџџџџџџџџtМ*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8 *\
fWRU
S__inference_group_normalization_4_layer_call_and_return_conditional_losses_21513194И
!conv2d_59/StatefulPartitionedCallStatefulPartitionedCall6group_normalization_4/StatefulPartitionedCall:output:0conv2d_59_21513304conv2d_59_21513306*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:џџџџџџџџџtМ*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8 *P
fKRI
G__inference_conv2d_59_layer_call_and_return_conditional_losses_21512711і
activation_84/PartitionedCallPartitionedCall*conv2d_59/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:џџџџџџџџџtМ* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2 *0J 8 *T
fORM
K__inference_activation_84_layer_call_and_return_conditional_losses_21512722§
#average_pooling2d_2/PartitionedCallPartitionedCall&activation_84/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:џџџџџџџџџ:^* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2 *0J 8 *Z
fURS
Q__inference_average_pooling2d_2_layer_call_and_return_conditional_losses_21512522ї
activation_85/PartitionedCallPartitionedCall,average_pooling2d_2/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:џџџџџџџџџ:^* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2 *0J 8 *T
fORM
K__inference_activation_85_layer_call_and_return_conditional_losses_21512730
.batch_normalization_10/StatefulPartitionedCallStatefulPartitionedCall&activation_85/PartitionedCall:output:0batch_normalization_10_21513312batch_normalization_10_21513314batch_normalization_10_21513316batch_normalization_10_21513318*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:џџџџџџџџџ:^*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8 *]
fXRV
T__inference_batch_normalization_10_layer_call_and_return_conditional_losses_21512578И
!conv2d_60/StatefulPartitionedCallStatefulPartitionedCall7batch_normalization_10/StatefulPartitionedCall:output:0conv2d_60_21513321conv2d_60_21513323*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:џџџџџџџџџ:^*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8 *P
fKRI
G__inference_conv2d_60_layer_call_and_return_conditional_losses_21512751ѕ
activation_86/PartitionedCallPartitionedCall*conv2d_60/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:џџџџџџџџџ:^* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2 *0J 8 *T
fORM
K__inference_activation_86_layer_call_and_return_conditional_losses_21512762з
-group_normalization_5/StatefulPartitionedCallStatefulPartitionedCall&activation_86/PartitionedCall:output:0group_normalization_5_21513327group_normalization_5_21513329*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:џџџџџџџџџ:^*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8 *\
fWRU
S__inference_group_normalization_5_layer_call_and_return_conditional_losses_21513084З
!conv2d_61/StatefulPartitionedCallStatefulPartitionedCall6group_normalization_5/StatefulPartitionedCall:output:0conv2d_61_21513332conv2d_61_21513334*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:џџџџџџџџџ:^*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8 *P
fKRI
G__inference_conv2d_61_layer_call_and_return_conditional_losses_21512833ѕ
activation_87/PartitionedCallPartitionedCall*conv2d_61/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:џџџџџџџџџ:^* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2 *0J 8 *T
fORM
K__inference_activation_87_layer_call_and_return_conditional_losses_21512844у
flatten_4/PartitionedCallPartitionedCall&activation_85/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *)
_output_shapes
:џџџџџџџџџРЉ* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2 *0J 8 *P
fKRI
G__inference_flatten_4_layer_call_and_return_conditional_losses_21512852у
flatten_5/PartitionedCallPartitionedCall&activation_87/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *)
_output_shapes
:џџџџџџџџџРЉ* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2 *0J 8 *P
fKRI
G__inference_flatten_5_layer_call_and_return_conditional_losses_21512860
concatenate_2/PartitionedCallPartitionedCall"flatten_4/PartitionedCall:output:0"flatten_5/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *)
_output_shapes
:џџџџџџџџџг
* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2 *0J 8 *T
fORM
K__inference_concatenate_2_layer_call_and_return_conditional_losses_21512869
 dense_16/StatefulPartitionedCallStatefulPartitionedCall&concatenate_2/PartitionedCall:output:0dense_16_21513341dense_16_21513343*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8 *O
fJRH
F__inference_dense_16_layer_call_and_return_conditional_losses_21512881ь
activation_88/PartitionedCallPartitionedCall)dense_16/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2 *0J 8 *T
fORM
K__inference_activation_88_layer_call_and_return_conditional_losses_21512892
 dense_17/StatefulPartitionedCallStatefulPartitionedCall&activation_88/PartitionedCall:output:0dense_17_21513347dense_17_21513349*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8 *O
fJRH
F__inference_dense_17_layer_call_and_return_conditional_losses_21512904x
IdentityIdentity)dense_17/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџб
NoOpNoOp/^batch_normalization_10/StatefulPartitionedCall"^conv2d_57/StatefulPartitionedCall"^conv2d_58/StatefulPartitionedCall"^conv2d_59/StatefulPartitionedCall"^conv2d_60/StatefulPartitionedCall"^conv2d_61/StatefulPartitionedCall!^dense_16/StatefulPartitionedCall!^dense_17/StatefulPartitionedCall.^group_normalization_4/StatefulPartitionedCall.^group_normalization_5/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*[
_input_shapesJ
H:џџџџџџџџџtМ: : : : : : : : : : : : : : : : : : : : : : 2`
.batch_normalization_10/StatefulPartitionedCall.batch_normalization_10/StatefulPartitionedCall2F
!conv2d_57/StatefulPartitionedCall!conv2d_57/StatefulPartitionedCall2F
!conv2d_58/StatefulPartitionedCall!conv2d_58/StatefulPartitionedCall2F
!conv2d_59/StatefulPartitionedCall!conv2d_59/StatefulPartitionedCall2F
!conv2d_60/StatefulPartitionedCall!conv2d_60/StatefulPartitionedCall2F
!conv2d_61/StatefulPartitionedCall!conv2d_61/StatefulPartitionedCall2D
 dense_16/StatefulPartitionedCall dense_16/StatefulPartitionedCall2D
 dense_17/StatefulPartitionedCall dense_17/StatefulPartitionedCall2^
-group_normalization_4/StatefulPartitionedCall-group_normalization_4/StatefulPartitionedCall2^
-group_normalization_5/StatefulPartitionedCall-group_normalization_5/StatefulPartitionedCall:X T
0
_output_shapes
:џџџџџџџџџtМ
 
_user_specified_nameinputs
Њ


G__inference_conv2d_60_layer_call_and_return_conditional_losses_21512751

inputs8
conv2d_readvariableop_resource:-
biasadd_readvariableop_resource:
identityЂBiasAdd/ReadVariableOpЂConv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:*
dtype0
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:џџџџџџџџџ:^*
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
:џџџџџџџџџ:^g
IdentityIdentityBiasAdd:output:0^NoOp*
T0*/
_output_shapes
:џџџџџџџџџ:^w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:џџџџџџџџџ:^: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:џџџџџџџџџ:^
 
_user_specified_nameinputs
Щ	
ї
F__inference_dense_17_layer_call_and_return_conditional_losses_21514642

inputs0
matmul_readvariableop_resource:-
biasadd_readvariableop_resource:
identityЂBiasAdd/ReadVariableOpЂMatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџr
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ_
IdentityIdentityBiasAdd:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџw
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:џџџџџџџџџ: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs
Ы
c
G__inference_flatten_4_layer_call_and_return_conditional_losses_21512852

inputs
identityV
ConstConst*
_output_shapes
:*
dtype0*
valueB"џџџџРT ^
ReshapeReshapeinputsConst:output:0*
T0*)
_output_shapes
:џџџџџџџџџРЉZ
IdentityIdentityReshape:output:0*
T0*)
_output_shapes
:џџџџџџџџџРЉ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:џџџџџџџџџ:^:W S
/
_output_shapes
:џџџџџџџџџ:^
 
_user_specified_nameinputs
љ
g
K__inference_activation_83_layer_call_and_return_conditional_losses_21514142

inputs
identityP
	LeakyRelu	LeakyReluinputs*0
_output_shapes
:џџџџџџџџџtМh
IdentityIdentityLeakyRelu:activations:0*
T0*0
_output_shapes
:џџџџџџџџџtМ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:џџџџџџџџџtМ:X T
0
_output_shapes
:џџџџџџџџџtМ
 
_user_specified_nameinputs

Ё
8__inference_group_normalization_5_layer_call_fn_21514415

inputs
unknown:
	unknown_0:
identityЂStatefulPartitionedCallѕ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:џџџџџџџџџ:^*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8 *\
fWRU
S__inference_group_normalization_5_layer_call_and_return_conditional_losses_21512817w
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:џџџџџџџџџ:^`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:џџџџџџџџџ:^: : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:џџџџџџџџџ:^
 
_user_specified_nameinputs
Џ


G__inference_conv2d_58_layer_call_and_return_conditional_losses_21514132

inputs8
conv2d_readvariableop_resource:-
biasadd_readvariableop_resource:
identityЂBiasAdd/ReadVariableOpЂConv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:*
dtype0
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:џџџџџџџџџtМ*
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
:џџџџџџџџџtМh
IdentityIdentityBiasAdd:output:0^NoOp*
T0*0
_output_shapes
:џџџџџџџџџtМw
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :џџџџџџџџџtМ: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:X T
0
_output_shapes
:џџџџџџџџџtМ
 
_user_specified_nameinputs
ѕ
Ё
,__inference_conv2d_60_layer_call_fn_21514386

inputs!
unknown:
	unknown_0:
identityЂStatefulPartitionedCallщ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:џџџџџџџџџ:^*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8 *P
fKRI
G__inference_conv2d_60_layer_call_and_return_conditional_losses_21512751w
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:џџџџџџџџџ:^`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:џџџџџџџџџ:^: : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:џџџџџџџџџ:^
 
_user_specified_nameinputs
Щ
R
6__inference_average_pooling2d_2_layer_call_fn_21514300

inputs
identityф
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2 *0J 8 *Z
fURS
Q__inference_average_pooling2d_2_layer_call_and_return_conditional_losses_21512522
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ:r n
J
_output_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
 
_user_specified_nameinputs
Ђ
m
Q__inference_average_pooling2d_2_layer_call_and_return_conditional_losses_21512522

inputs
identityЋ
AvgPoolAvgPoolinputs*
T0*J
_output_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ*
ksize
*
paddingVALID*
strides
{
IdentityIdentityAvgPool:output:0*
T0*J
_output_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ:r n
J
_output_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
 
_user_specified_nameinputs
Я

T__inference_batch_normalization_10_layer_call_and_return_conditional_losses_21512547

inputs%
readvariableop_resource:'
readvariableop_1_resource:6
(fusedbatchnormv3_readvariableop_resource:8
*fusedbatchnormv3_readvariableop_1_resource:
identityЂFusedBatchNormV3/ReadVariableOpЂ!FusedBatchNormV3/ReadVariableOp_1ЂReadVariableOpЂReadVariableOp_1b
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:*
dtype0f
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:*
dtype0
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:*
dtype0
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:*
dtype0Ш
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ:::::*
epsilon%o:*
is_training( }
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџА
NoOpNoOp ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ: : : : 2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ
 
_user_specified_nameinputs
Џ


G__inference_conv2d_59_layer_call_and_return_conditional_losses_21514285

inputs8
conv2d_readvariableop_resource:-
biasadd_readvariableop_resource:
identityЂBiasAdd/ReadVariableOpЂConv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:*
dtype0
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:џџџџџџџџџtМ*
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
:џџџџџџџџџtМh
IdentityIdentityBiasAdd:output:0^NoOp*
T0*0
_output_shapes
:џџџџџџџџџtМw
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :џџџџџџџџџtМ: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:X T
0
_output_shapes
:џџџџџџџџџtМ
 
_user_specified_nameinputs
Я

T__inference_batch_normalization_10_layer_call_and_return_conditional_losses_21514359

inputs%
readvariableop_resource:'
readvariableop_1_resource:6
(fusedbatchnormv3_readvariableop_resource:8
*fusedbatchnormv3_readvariableop_1_resource:
identityЂFusedBatchNormV3/ReadVariableOpЂ!FusedBatchNormV3/ReadVariableOp_1ЂReadVariableOpЂReadVariableOp_1b
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:*
dtype0f
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:*
dtype0
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:*
dtype0
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:*
dtype0Ш
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ:::::*
epsilon%o:*
is_training( }
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџА
NoOpNoOp ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ: : : : 2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ
 
_user_specified_nameinputs
А
L
0__inference_activation_88_layer_call_fn_21514618

inputs
identityЛ
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2 *0J 8 *T
fORM
K__inference_activation_88_layer_call_and_return_conditional_losses_21512892`
IdentityIdentityPartitionedCall:output:0*
T0*'
_output_shapes
:џџџџџџџџџ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:џџџџџџџџџ:O K
'
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs
ѕ
g
K__inference_activation_85_layer_call_and_return_conditional_losses_21514315

inputs
identityO
	LeakyRelu	LeakyReluinputs*/
_output_shapes
:џџџџџџџџџ:^g
IdentityIdentityLeakyRelu:activations:0*
T0*/
_output_shapes
:џџџџџџџџџ:^"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:џџџџџџџџџ:^:W S
/
_output_shapes
:џџџџџџџџџ:^
 
_user_specified_nameinputs
Ш
u
K__inference_concatenate_2_layer_call_and_return_conditional_losses_21512869

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
:џџџџџџџџџг
Y
IdentityIdentityconcat:output:0*
T0*)
_output_shapes
:џџџџџџџџџг
"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*=
_input_shapes,
*:џџџџџџџџџРЉ:џџџџџџџџџРЉ:Q M
)
_output_shapes
:џџџџџџџџџРЉ
 
_user_specified_nameinputs:QM
)
_output_shapes
:џџџџџџџџџРЉ
 
_user_specified_nameinputs
	
д
9__inference_batch_normalization_10_layer_call_fn_21514328

inputs
unknown:
	unknown_0:
	unknown_1:
	unknown_2:
identityЂStatefulPartitionedCallЂ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ*&
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8 *]
fXRV
T__inference_batch_normalization_10_layer_call_and_return_conditional_losses_21512547
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ
 
_user_specified_nameinputs
љ
Ё
,__inference_conv2d_58_layer_call_fn_21514122

inputs!
unknown:
	unknown_0:
identityЂStatefulPartitionedCallъ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:џџџџџџџџџtМ*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8 *P
fKRI
G__inference_conv2d_58_layer_call_and_return_conditional_losses_21512629x
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*0
_output_shapes
:џџџџџџџџџtМ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :џџџџџџџџџtМ: : 22
StatefulPartitionedCallStatefulPartitionedCall:X T
0
_output_shapes
:џџџџџџџџџtМ
 
_user_specified_nameinputs
љ
Ё
,__inference_conv2d_57_layer_call_fn_21514093

inputs!
unknown:
	unknown_0:
identityЂStatefulPartitionedCallъ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:џџџџџџџџџtМ*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8 *P
fKRI
G__inference_conv2d_57_layer_call_and_return_conditional_losses_21512606x
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*0
_output_shapes
:џџџџџџџџџtМ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :џџџџџџџџџtМ: : 22
StatefulPartitionedCallStatefulPartitionedCall:X T
0
_output_shapes
:џџџџџџџџџtМ
 
_user_specified_nameinputs
Џ


G__inference_conv2d_59_layer_call_and_return_conditional_losses_21512711

inputs8
conv2d_readvariableop_resource:-
biasadd_readvariableop_resource:
identityЂBiasAdd/ReadVariableOpЂConv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:*
dtype0
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:џџџџџџџџџtМ*
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
:џџџџџџџџџtМh
IdentityIdentityBiasAdd:output:0^NoOp*
T0*0
_output_shapes
:џџџџџџџџџtМw
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :џџџџџџџџџtМ: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:X T
0
_output_shapes
:џџџџџџџџџtМ
 
_user_specified_nameinputs
ѕ
g
K__inference_activation_87_layer_call_and_return_conditional_losses_21512844

inputs
identityO
	LeakyRelu	LeakyReluinputs*/
_output_shapes
:џџџџџџџџџ:^g
IdentityIdentityLeakyRelu:activations:0*
T0*/
_output_shapes
:џџџџџџџџџ:^"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:џџџџџџџџџ:^:W S
/
_output_shapes
:џџџџџџџџџ:^
 
_user_specified_nameinputs

У
T__inference_batch_normalization_10_layer_call_and_return_conditional_losses_21512578

inputs%
readvariableop_resource:'
readvariableop_1_resource:6
(fusedbatchnormv3_readvariableop_resource:8
*fusedbatchnormv3_readvariableop_1_resource:
identityЂAssignNewValueЂAssignNewValue_1ЂFusedBatchNormV3/ReadVariableOpЂ!FusedBatchNormV3/ReadVariableOp_1ЂReadVariableOpЂReadVariableOp_1b
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:*
dtype0f
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:*
dtype0
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:*
dtype0
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:*
dtype0ж
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ:::::*
epsilon%o:*
exponential_avg_factor%
з#<Ц
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype0*
validate_shape(а
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype0*
validate_shape(}
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџд
NoOpNoOp^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ: : : : 2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ
 
_user_specified_nameinputs
љ
g
K__inference_activation_84_layer_call_and_return_conditional_losses_21512722

inputs
identityP
	LeakyRelu	LeakyReluinputs*0
_output_shapes
:џџџџџџџџџtМh
IdentityIdentityLeakyRelu:activations:0*
T0*0
_output_shapes
:џџџџџџџџџtМ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:џџџџџџџџџtМ:X T
0
_output_shapes
:џџџџџџџџџtМ
 
_user_specified_nameinputs
љ
g
K__inference_activation_82_layer_call_and_return_conditional_losses_21514113

inputs
identityP
	LeakyRelu	LeakyReluinputs*0
_output_shapes
:џџџџџџџџџtМh
IdentityIdentityLeakyRelu:activations:0*
T0*0
_output_shapes
:џџџџџџџџџtМ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:џџџџџџџџџtМ:X T
0
_output_shapes
:џџџџџџџџџtМ
 
_user_specified_nameinputs
Ђ
m
Q__inference_average_pooling2d_2_layer_call_and_return_conditional_losses_21514305

inputs
identityЋ
AvgPoolAvgPoolinputs*
T0*J
_output_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ*
ksize
*
paddingVALID*
strides
{
IdentityIdentityAvgPool:output:0*
T0*J
_output_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ:r n
J
_output_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
 
_user_specified_nameinputs
Сп
р
E__inference_model_7_layer_call_and_return_conditional_losses_21513912

inputsB
(conv2d_57_conv2d_readvariableop_resource:7
)conv2d_57_biasadd_readvariableop_resource:B
(conv2d_58_conv2d_readvariableop_resource:7
)conv2d_58_biasadd_readvariableop_resource:E
7group_normalization_4_reshape_2_readvariableop_resource:E
7group_normalization_4_reshape_3_readvariableop_resource:B
(conv2d_59_conv2d_readvariableop_resource:7
)conv2d_59_biasadd_readvariableop_resource:<
.batch_normalization_10_readvariableop_resource:>
0batch_normalization_10_readvariableop_1_resource:M
?batch_normalization_10_fusedbatchnormv3_readvariableop_resource:O
Abatch_normalization_10_fusedbatchnormv3_readvariableop_1_resource:B
(conv2d_60_conv2d_readvariableop_resource:7
)conv2d_60_biasadd_readvariableop_resource:E
7group_normalization_5_reshape_2_readvariableop_resource:E
7group_normalization_5_reshape_3_readvariableop_resource:B
(conv2d_61_conv2d_readvariableop_resource:7
)conv2d_61_biasadd_readvariableop_resource:;
'dense_16_matmul_readvariableop_resource:
г
6
(dense_16_biasadd_readvariableop_resource:9
'dense_17_matmul_readvariableop_resource:6
(dense_17_biasadd_readvariableop_resource:
identityЂ6batch_normalization_10/FusedBatchNormV3/ReadVariableOpЂ8batch_normalization_10/FusedBatchNormV3/ReadVariableOp_1Ђ%batch_normalization_10/ReadVariableOpЂ'batch_normalization_10/ReadVariableOp_1Ђ conv2d_57/BiasAdd/ReadVariableOpЂconv2d_57/Conv2D/ReadVariableOpЂ conv2d_58/BiasAdd/ReadVariableOpЂconv2d_58/Conv2D/ReadVariableOpЂ conv2d_59/BiasAdd/ReadVariableOpЂconv2d_59/Conv2D/ReadVariableOpЂ conv2d_60/BiasAdd/ReadVariableOpЂconv2d_60/Conv2D/ReadVariableOpЂ conv2d_61/BiasAdd/ReadVariableOpЂconv2d_61/Conv2D/ReadVariableOpЂdense_16/BiasAdd/ReadVariableOpЂdense_16/MatMul/ReadVariableOpЂdense_17/BiasAdd/ReadVariableOpЂdense_17/MatMul/ReadVariableOpЂ.group_normalization_4/Reshape_2/ReadVariableOpЂ.group_normalization_4/Reshape_3/ReadVariableOpЂ.group_normalization_5/Reshape_2/ReadVariableOpЂ.group_normalization_5/Reshape_3/ReadVariableOp
conv2d_57/Conv2D/ReadVariableOpReadVariableOp(conv2d_57_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype0Ў
conv2d_57/Conv2DConv2Dinputs'conv2d_57/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:џџџџџџџџџtМ*
paddingSAME*
strides

 conv2d_57/BiasAdd/ReadVariableOpReadVariableOp)conv2d_57_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0
conv2d_57/BiasAddBiasAddconv2d_57/Conv2D:output:0(conv2d_57/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:џџџџџџџџџtМr
activation_82/LeakyRelu	LeakyReluconv2d_57/BiasAdd:output:0*0
_output_shapes
:џџџџџџџџџtМ
conv2d_58/Conv2D/ReadVariableOpReadVariableOp(conv2d_58_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype0Э
conv2d_58/Conv2DConv2D%activation_82/LeakyRelu:activations:0'conv2d_58/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:џџџџџџџџџtМ*
paddingSAME*
strides

 conv2d_58/BiasAdd/ReadVariableOpReadVariableOp)conv2d_58_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0
conv2d_58/BiasAddBiasAddconv2d_58/Conv2D:output:0(conv2d_58/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:џџџџџџџџџtМr
activation_83/LeakyRelu	LeakyReluconv2d_58/BiasAdd:output:0*0
_output_shapes
:џџџџџџџџџtМp
group_normalization_4/ShapeShape%activation_83/LeakyRelu:activations:0*
T0*
_output_shapes
:r
group_normalization_4/Shape_1Shape%activation_83/LeakyRelu:activations:0*
T0*
_output_shapes
:s
)group_normalization_4/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: u
+group_normalization_4/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:u
+group_normalization_4/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:С
#group_normalization_4/strided_sliceStridedSlice&group_normalization_4/Shape_1:output:02group_normalization_4/strided_slice/stack:output:04group_normalization_4/strided_slice/stack_1:output:04group_normalization_4/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masku
+group_normalization_4/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:w
-group_normalization_4/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:w
-group_normalization_4/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Щ
%group_normalization_4/strided_slice_1StridedSlice&group_normalization_4/Shape_1:output:04group_normalization_4/strided_slice_1/stack:output:06group_normalization_4/strided_slice_1/stack_1:output:06group_normalization_4/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masku
+group_normalization_4/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:w
-group_normalization_4/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:w
-group_normalization_4/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Щ
%group_normalization_4/strided_slice_2StridedSlice&group_normalization_4/Shape_1:output:04group_normalization_4/strided_slice_2/stack:output:06group_normalization_4/strided_slice_2/stack_1:output:06group_normalization_4/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masku
+group_normalization_4/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:w
-group_normalization_4/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB:w
-group_normalization_4/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Щ
%group_normalization_4/strided_slice_3StridedSlice&group_normalization_4/Shape_1:output:04group_normalization_4/strided_slice_3/stack:output:06group_normalization_4/strided_slice_3/stack_1:output:06group_normalization_4/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask_
group_normalization_4/stack/1Const*
_output_shapes
: *
dtype0*
value	B :_
group_normalization_4/stack/4Const*
_output_shapes
: *
dtype0*
value	B :Џ
group_normalization_4/stackPack,group_normalization_4/strided_slice:output:0&group_normalization_4/stack/1:output:0.group_normalization_4/strided_slice_1:output:0.group_normalization_4/strided_slice_2:output:0&group_normalization_4/stack/4:output:0*
N*
T0*
_output_shapes
:Д
group_normalization_4/ReshapeReshape%activation_83/LeakyRelu:activations:0$group_normalization_4/stack:output:0*
T0*4
_output_shapes"
 :џџџџџџџџџtМ
,group_normalization_4/Mean/reduction_indicesConst*
_output_shapes
:*
dtype0*!
valueB"         а
group_normalization_4/MeanMean&group_normalization_4/Reshape:output:05group_normalization_4/Mean/reduction_indices:output:0*
T0*3
_output_shapes!
:џџџџџџџџџ*
	keep_dims(
<group_normalization_4/reduce_variance/Mean/reduction_indicesConst*
_output_shapes
:*
dtype0*!
valueB"         №
*group_normalization_4/reduce_variance/MeanMean&group_normalization_4/Reshape:output:0Egroup_normalization_4/reduce_variance/Mean/reduction_indices:output:0*
T0*3
_output_shapes!
:џџџџџџџџџ*
	keep_dims(Ь
)group_normalization_4/reduce_variance/subSub&group_normalization_4/Reshape:output:03group_normalization_4/reduce_variance/Mean:output:0*
T0*4
_output_shapes"
 :џџџџџџџџџtМЄ
,group_normalization_4/reduce_variance/SquareSquare-group_normalization_4/reduce_variance/sub:z:0*
T0*4
_output_shapes"
 :џџџџџџџџџtМ
>group_normalization_4/reduce_variance/Mean_1/reduction_indicesConst*
_output_shapes
:*
dtype0*!
valueB"         ў
,group_normalization_4/reduce_variance/Mean_1Mean0group_normalization_4/reduce_variance/Square:y:0Ggroup_normalization_4/reduce_variance/Mean_1/reduction_indices:output:0*
T0*3
_output_shapes!
:џџџџџџџџџ*
	keep_dims(Ќ
group_normalization_4/subSub&group_normalization_4/Reshape:output:0#group_normalization_4/Mean:output:0*
T0*4
_output_shapes"
 :џџџџџџџџџtМ`
group_normalization_4/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *ЭЬЬ=Н
group_normalization_4/addAddV25group_normalization_4/reduce_variance/Mean_1:output:0$group_normalization_4/add/y:output:0*
T0*3
_output_shapes!
:џџџџџџџџџ`
group_normalization_4/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    Ћ
group_normalization_4/MaximumMaximumgroup_normalization_4/add:z:0$group_normalization_4/Const:output:0*
T0*3
_output_shapes!
:џџџџџџџџџ
group_normalization_4/SqrtSqrt!group_normalization_4/Maximum:z:0*
T0*3
_output_shapes!
:џџџџџџџџџІ
group_normalization_4/truedivRealDivgroup_normalization_4/sub:z:0group_normalization_4/Sqrt:y:0*
T0*4
_output_shapes"
 :џџџџџџџџџtМВ
group_normalization_4/Reshape_1Reshape!group_normalization_4/truediv:z:0$group_normalization_4/stack:output:0*
T0*4
_output_shapes"
 :џџџџџџџџџtМЂ
.group_normalization_4/Reshape_2/ReadVariableOpReadVariableOp7group_normalization_4_reshape_2_readvariableop_resource*
_output_shapes
:*
dtype0
%group_normalization_4/Reshape_2/shapeConst*
_output_shapes
:*
dtype0*)
value B"               Ч
group_normalization_4/Reshape_2Reshape6group_normalization_4/Reshape_2/ReadVariableOp:value:0.group_normalization_4/Reshape_2/shape:output:0*
T0**
_output_shapes
:Г
group_normalization_4/mulMul(group_normalization_4/Reshape_1:output:0(group_normalization_4/Reshape_2:output:0*
T0*4
_output_shapes"
 :џџџџџџџџџtМЂ
.group_normalization_4/Reshape_3/ReadVariableOpReadVariableOp7group_normalization_4_reshape_3_readvariableop_resource*
_output_shapes
:*
dtype0
%group_normalization_4/Reshape_3/shapeConst*
_output_shapes
:*
dtype0*)
value B"               Ч
group_normalization_4/Reshape_3Reshape6group_normalization_4/Reshape_3/ReadVariableOp:value:0.group_normalization_4/Reshape_3/shape:output:0*
T0**
_output_shapes
:Ќ
group_normalization_4/add_1AddV2group_normalization_4/mul:z:0(group_normalization_4/Reshape_3:output:0*
T0*4
_output_shapes"
 :џџџџџџџџџtМЌ
group_normalization_4/Reshape_4Reshapegroup_normalization_4/add_1:z:0$group_normalization_4/Shape:output:0*
T0*0
_output_shapes
:џџџџџџџџџtМ
conv2d_59/Conv2D/ReadVariableOpReadVariableOp(conv2d_59_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype0а
conv2d_59/Conv2DConv2D(group_normalization_4/Reshape_4:output:0'conv2d_59/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:џџџџџџџџџtМ*
paddingSAME*
strides

 conv2d_59/BiasAdd/ReadVariableOpReadVariableOp)conv2d_59_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0
conv2d_59/BiasAddBiasAddconv2d_59/Conv2D:output:0(conv2d_59/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:џџџџџџџџџtМr
activation_84/LeakyRelu	LeakyReluconv2d_59/BiasAdd:output:0*0
_output_shapes
:џџџџџџџџџtМУ
average_pooling2d_2/AvgPoolAvgPool%activation_84/LeakyRelu:activations:0*
T0*/
_output_shapes
:џџџџџџџџџ:^*
ksize
*
paddingVALID*
strides
{
activation_85/LeakyRelu	LeakyRelu$average_pooling2d_2/AvgPool:output:0*/
_output_shapes
:џџџџџџџџџ:^
%batch_normalization_10/ReadVariableOpReadVariableOp.batch_normalization_10_readvariableop_resource*
_output_shapes
:*
dtype0
'batch_normalization_10/ReadVariableOp_1ReadVariableOp0batch_normalization_10_readvariableop_1_resource*
_output_shapes
:*
dtype0В
6batch_normalization_10/FusedBatchNormV3/ReadVariableOpReadVariableOp?batch_normalization_10_fusedbatchnormv3_readvariableop_resource*
_output_shapes
:*
dtype0Ж
8batch_normalization_10/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpAbatch_normalization_10_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:*
dtype0Ш
'batch_normalization_10/FusedBatchNormV3FusedBatchNormV3%activation_85/LeakyRelu:activations:0-batch_normalization_10/ReadVariableOp:value:0/batch_normalization_10/ReadVariableOp_1:value:0>batch_normalization_10/FusedBatchNormV3/ReadVariableOp:value:0@batch_normalization_10/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:џџџџџџџџџ:^:::::*
epsilon%o:*
is_training( 
conv2d_60/Conv2D/ReadVariableOpReadVariableOp(conv2d_60_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype0в
conv2d_60/Conv2DConv2D+batch_normalization_10/FusedBatchNormV3:y:0'conv2d_60/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:џџџџџџџџџ:^*
paddingSAME*
strides

 conv2d_60/BiasAdd/ReadVariableOpReadVariableOp)conv2d_60_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0
conv2d_60/BiasAddBiasAddconv2d_60/Conv2D:output:0(conv2d_60/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:џџџџџџџџџ:^q
activation_86/LeakyRelu	LeakyReluconv2d_60/BiasAdd:output:0*/
_output_shapes
:џџџџџџџџџ:^p
group_normalization_5/ShapeShape%activation_86/LeakyRelu:activations:0*
T0*
_output_shapes
:r
group_normalization_5/Shape_1Shape%activation_86/LeakyRelu:activations:0*
T0*
_output_shapes
:s
)group_normalization_5/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: u
+group_normalization_5/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:u
+group_normalization_5/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:С
#group_normalization_5/strided_sliceStridedSlice&group_normalization_5/Shape_1:output:02group_normalization_5/strided_slice/stack:output:04group_normalization_5/strided_slice/stack_1:output:04group_normalization_5/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masku
+group_normalization_5/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:w
-group_normalization_5/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:w
-group_normalization_5/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Щ
%group_normalization_5/strided_slice_1StridedSlice&group_normalization_5/Shape_1:output:04group_normalization_5/strided_slice_1/stack:output:06group_normalization_5/strided_slice_1/stack_1:output:06group_normalization_5/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masku
+group_normalization_5/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:w
-group_normalization_5/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:w
-group_normalization_5/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Щ
%group_normalization_5/strided_slice_2StridedSlice&group_normalization_5/Shape_1:output:04group_normalization_5/strided_slice_2/stack:output:06group_normalization_5/strided_slice_2/stack_1:output:06group_normalization_5/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masku
+group_normalization_5/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:w
-group_normalization_5/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB:w
-group_normalization_5/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Щ
%group_normalization_5/strided_slice_3StridedSlice&group_normalization_5/Shape_1:output:04group_normalization_5/strided_slice_3/stack:output:06group_normalization_5/strided_slice_3/stack_1:output:06group_normalization_5/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask_
group_normalization_5/stack/1Const*
_output_shapes
: *
dtype0*
value	B :_
group_normalization_5/stack/4Const*
_output_shapes
: *
dtype0*
value	B :Џ
group_normalization_5/stackPack,group_normalization_5/strided_slice:output:0&group_normalization_5/stack/1:output:0.group_normalization_5/strided_slice_1:output:0.group_normalization_5/strided_slice_2:output:0&group_normalization_5/stack/4:output:0*
N*
T0*
_output_shapes
:Г
group_normalization_5/ReshapeReshape%activation_86/LeakyRelu:activations:0$group_normalization_5/stack:output:0*
T0*3
_output_shapes!
:џџџџџџџџџ:^
,group_normalization_5/Mean/reduction_indicesConst*
_output_shapes
:*
dtype0*!
valueB"         а
group_normalization_5/MeanMean&group_normalization_5/Reshape:output:05group_normalization_5/Mean/reduction_indices:output:0*
T0*3
_output_shapes!
:џџџџџџџџџ*
	keep_dims(
<group_normalization_5/reduce_variance/Mean/reduction_indicesConst*
_output_shapes
:*
dtype0*!
valueB"         №
*group_normalization_5/reduce_variance/MeanMean&group_normalization_5/Reshape:output:0Egroup_normalization_5/reduce_variance/Mean/reduction_indices:output:0*
T0*3
_output_shapes!
:џџџџџџџџџ*
	keep_dims(Ы
)group_normalization_5/reduce_variance/subSub&group_normalization_5/Reshape:output:03group_normalization_5/reduce_variance/Mean:output:0*
T0*3
_output_shapes!
:џџџџџџџџџ:^Ѓ
,group_normalization_5/reduce_variance/SquareSquare-group_normalization_5/reduce_variance/sub:z:0*
T0*3
_output_shapes!
:џџџџџџџџџ:^
>group_normalization_5/reduce_variance/Mean_1/reduction_indicesConst*
_output_shapes
:*
dtype0*!
valueB"         ў
,group_normalization_5/reduce_variance/Mean_1Mean0group_normalization_5/reduce_variance/Square:y:0Ggroup_normalization_5/reduce_variance/Mean_1/reduction_indices:output:0*
T0*3
_output_shapes!
:џџџџџџџџџ*
	keep_dims(Ћ
group_normalization_5/subSub&group_normalization_5/Reshape:output:0#group_normalization_5/Mean:output:0*
T0*3
_output_shapes!
:џџџџџџџџџ:^`
group_normalization_5/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *ЭЬЬ=Н
group_normalization_5/addAddV25group_normalization_5/reduce_variance/Mean_1:output:0$group_normalization_5/add/y:output:0*
T0*3
_output_shapes!
:џџџџџџџџџ`
group_normalization_5/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    Ћ
group_normalization_5/MaximumMaximumgroup_normalization_5/add:z:0$group_normalization_5/Const:output:0*
T0*3
_output_shapes!
:џџџџџџџџџ
group_normalization_5/SqrtSqrt!group_normalization_5/Maximum:z:0*
T0*3
_output_shapes!
:џџџџџџџџџЅ
group_normalization_5/truedivRealDivgroup_normalization_5/sub:z:0group_normalization_5/Sqrt:y:0*
T0*3
_output_shapes!
:џџџџџџџџџ:^Б
group_normalization_5/Reshape_1Reshape!group_normalization_5/truediv:z:0$group_normalization_5/stack:output:0*
T0*3
_output_shapes!
:џџџџџџџџџ:^Ђ
.group_normalization_5/Reshape_2/ReadVariableOpReadVariableOp7group_normalization_5_reshape_2_readvariableop_resource*
_output_shapes
:*
dtype0
%group_normalization_5/Reshape_2/shapeConst*
_output_shapes
:*
dtype0*)
value B"               Ч
group_normalization_5/Reshape_2Reshape6group_normalization_5/Reshape_2/ReadVariableOp:value:0.group_normalization_5/Reshape_2/shape:output:0*
T0**
_output_shapes
:В
group_normalization_5/mulMul(group_normalization_5/Reshape_1:output:0(group_normalization_5/Reshape_2:output:0*
T0*3
_output_shapes!
:џџџџџџџџџ:^Ђ
.group_normalization_5/Reshape_3/ReadVariableOpReadVariableOp7group_normalization_5_reshape_3_readvariableop_resource*
_output_shapes
:*
dtype0
%group_normalization_5/Reshape_3/shapeConst*
_output_shapes
:*
dtype0*)
value B"               Ч
group_normalization_5/Reshape_3Reshape6group_normalization_5/Reshape_3/ReadVariableOp:value:0.group_normalization_5/Reshape_3/shape:output:0*
T0**
_output_shapes
:Ћ
group_normalization_5/add_1AddV2group_normalization_5/mul:z:0(group_normalization_5/Reshape_3:output:0*
T0*3
_output_shapes!
:џџџџџџџџџ:^Ћ
group_normalization_5/Reshape_4Reshapegroup_normalization_5/add_1:z:0$group_normalization_5/Shape:output:0*
T0*/
_output_shapes
:џџџџџџџџџ:^
conv2d_61/Conv2D/ReadVariableOpReadVariableOp(conv2d_61_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype0Я
conv2d_61/Conv2DConv2D(group_normalization_5/Reshape_4:output:0'conv2d_61/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:џџџџџџџџџ:^*
paddingSAME*
strides

 conv2d_61/BiasAdd/ReadVariableOpReadVariableOp)conv2d_61_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0
conv2d_61/BiasAddBiasAddconv2d_61/Conv2D:output:0(conv2d_61/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:џџџџџџџџџ:^q
activation_87/LeakyRelu	LeakyReluconv2d_61/BiasAdd:output:0*/
_output_shapes
:џџџџџџџџџ:^`
flatten_4/ConstConst*
_output_shapes
:*
dtype0*
valueB"џџџџРT 
flatten_4/ReshapeReshape%activation_85/LeakyRelu:activations:0flatten_4/Const:output:0*
T0*)
_output_shapes
:џџџџџџџџџРЉ`
flatten_5/ConstConst*
_output_shapes
:*
dtype0*
valueB"џџџџРT 
flatten_5/ReshapeReshape%activation_87/LeakyRelu:activations:0flatten_5/Const:output:0*
T0*)
_output_shapes
:џџџџџџџџџРЉ[
concatenate_2/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :Й
concatenate_2/concatConcatV2flatten_4/Reshape:output:0flatten_5/Reshape:output:0"concatenate_2/concat/axis:output:0*
N*
T0*)
_output_shapes
:џџџџџџџџџг

dense_16/MatMul/ReadVariableOpReadVariableOp'dense_16_matmul_readvariableop_resource* 
_output_shapes
:
г
*
dtype0
dense_16/MatMulMatMulconcatenate_2/concat:output:0&dense_16/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ
dense_16/BiasAdd/ReadVariableOpReadVariableOp(dense_16_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0
dense_16/BiasAddBiasAdddense_16/MatMul:product:0'dense_16/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџh
activation_88/LeakyRelu	LeakyReludense_16/BiasAdd:output:0*'
_output_shapes
:џџџџџџџџџ
dense_17/MatMul/ReadVariableOpReadVariableOp'dense_17_matmul_readvariableop_resource*
_output_shapes

:*
dtype0
dense_17/MatMulMatMul%activation_88/LeakyRelu:activations:0&dense_17/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ
dense_17/BiasAdd/ReadVariableOpReadVariableOp(dense_17_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0
dense_17/BiasAddBiasAdddense_17/MatMul:product:0'dense_17/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџh
IdentityIdentitydense_17/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџЏ
NoOpNoOp7^batch_normalization_10/FusedBatchNormV3/ReadVariableOp9^batch_normalization_10/FusedBatchNormV3/ReadVariableOp_1&^batch_normalization_10/ReadVariableOp(^batch_normalization_10/ReadVariableOp_1!^conv2d_57/BiasAdd/ReadVariableOp ^conv2d_57/Conv2D/ReadVariableOp!^conv2d_58/BiasAdd/ReadVariableOp ^conv2d_58/Conv2D/ReadVariableOp!^conv2d_59/BiasAdd/ReadVariableOp ^conv2d_59/Conv2D/ReadVariableOp!^conv2d_60/BiasAdd/ReadVariableOp ^conv2d_60/Conv2D/ReadVariableOp!^conv2d_61/BiasAdd/ReadVariableOp ^conv2d_61/Conv2D/ReadVariableOp ^dense_16/BiasAdd/ReadVariableOp^dense_16/MatMul/ReadVariableOp ^dense_17/BiasAdd/ReadVariableOp^dense_17/MatMul/ReadVariableOp/^group_normalization_4/Reshape_2/ReadVariableOp/^group_normalization_4/Reshape_3/ReadVariableOp/^group_normalization_5/Reshape_2/ReadVariableOp/^group_normalization_5/Reshape_3/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*[
_input_shapesJ
H:џџџџџџџџџtМ: : : : : : : : : : : : : : : : : : : : : : 2p
6batch_normalization_10/FusedBatchNormV3/ReadVariableOp6batch_normalization_10/FusedBatchNormV3/ReadVariableOp2t
8batch_normalization_10/FusedBatchNormV3/ReadVariableOp_18batch_normalization_10/FusedBatchNormV3/ReadVariableOp_12N
%batch_normalization_10/ReadVariableOp%batch_normalization_10/ReadVariableOp2R
'batch_normalization_10/ReadVariableOp_1'batch_normalization_10/ReadVariableOp_12D
 conv2d_57/BiasAdd/ReadVariableOp conv2d_57/BiasAdd/ReadVariableOp2B
conv2d_57/Conv2D/ReadVariableOpconv2d_57/Conv2D/ReadVariableOp2D
 conv2d_58/BiasAdd/ReadVariableOp conv2d_58/BiasAdd/ReadVariableOp2B
conv2d_58/Conv2D/ReadVariableOpconv2d_58/Conv2D/ReadVariableOp2D
 conv2d_59/BiasAdd/ReadVariableOp conv2d_59/BiasAdd/ReadVariableOp2B
conv2d_59/Conv2D/ReadVariableOpconv2d_59/Conv2D/ReadVariableOp2D
 conv2d_60/BiasAdd/ReadVariableOp conv2d_60/BiasAdd/ReadVariableOp2B
conv2d_60/Conv2D/ReadVariableOpconv2d_60/Conv2D/ReadVariableOp2D
 conv2d_61/BiasAdd/ReadVariableOp conv2d_61/BiasAdd/ReadVariableOp2B
conv2d_61/Conv2D/ReadVariableOpconv2d_61/Conv2D/ReadVariableOp2B
dense_16/BiasAdd/ReadVariableOpdense_16/BiasAdd/ReadVariableOp2@
dense_16/MatMul/ReadVariableOpdense_16/MatMul/ReadVariableOp2B
dense_17/BiasAdd/ReadVariableOpdense_17/BiasAdd/ReadVariableOp2@
dense_17/MatMul/ReadVariableOpdense_17/MatMul/ReadVariableOp2`
.group_normalization_4/Reshape_2/ReadVariableOp.group_normalization_4/Reshape_2/ReadVariableOp2`
.group_normalization_4/Reshape_3/ReadVariableOp.group_normalization_4/Reshape_3/ReadVariableOp2`
.group_normalization_5/Reshape_2/ReadVariableOp.group_normalization_5/Reshape_2/ReadVariableOp2`
.group_normalization_5/Reshape_3/ReadVariableOp.group_normalization_5/Reshape_3/ReadVariableOp:X T
0
_output_shapes
:џџџџџџџџџtМ
 
_user_specified_nameinputs
Ы
c
G__inference_flatten_5_layer_call_and_return_conditional_losses_21512860

inputs
identityV
ConstConst*
_output_shapes
:*
dtype0*
valueB"џџџџРT ^
ReshapeReshapeinputsConst:output:0*
T0*)
_output_shapes
:џџџџџџџџџРЉZ
IdentityIdentityReshape:output:0*
T0*)
_output_shapes
:џџџџџџџџџРЉ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:џџџџџџџџџ:^:W S
/
_output_shapes
:џџџџџџџџџ:^
 
_user_specified_nameinputs
М
H
,__inference_flatten_4_layer_call_fn_21514564

inputs
identityЙ
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *)
_output_shapes
:џџџџџџџџџРЉ* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2 *0J 8 *P
fKRI
G__inference_flatten_4_layer_call_and_return_conditional_losses_21512852b
IdentityIdentityPartitionedCall:output:0*
T0*)
_output_shapes
:џџџџџџџџџРЉ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:џџџџџџџџџ:^:W S
/
_output_shapes
:џџџџџџџџџ:^
 
_user_specified_nameinputs
д
й
*__inference_model_7_layer_call_fn_21513449
input_8!
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
г


unknown_18:

unknown_19:

unknown_20:
identityЂStatefulPartitionedCallэ
StatefulPartitionedCallStatefulPartitionedCallinput_8unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
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
:џџџџџџџџџ*6
_read_only_resource_inputs
	
*2
config_proto" 

CPU

GPU2 *0J 8 *N
fIRG
E__inference_model_7_layer_call_and_return_conditional_losses_21513353o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*[
_input_shapesJ
H:џџџџџџџџџtМ: : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Y U
0
_output_shapes
:џџџџџџџџџtМ
!
_user_specified_name	input_8
д
L
0__inference_activation_84_layer_call_fn_21514290

inputs
identityФ
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:џџџџџџџџџtМ* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2 *0J 8 *T
fORM
K__inference_activation_84_layer_call_and_return_conditional_losses_21512722i
IdentityIdentityPartitionedCall:output:0*
T0*0
_output_shapes
:џџџџџџџџџtМ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:џџџџџџџџџtМ:X T
0
_output_shapes
:џџџџџџџџџtМ
 
_user_specified_nameinputs
С
\
0__inference_concatenate_2_layer_call_fn_21514587
inputs_0
inputs_1
identityЪ
PartitionedCallPartitionedCallinputs_0inputs_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *)
_output_shapes
:џџџџџџџџџг
* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2 *0J 8 *T
fORM
K__inference_concatenate_2_layer_call_and_return_conditional_losses_21512869b
IdentityIdentityPartitionedCall:output:0*
T0*)
_output_shapes
:џџџџџџџџџг
"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*=
_input_shapes,
*:џџџџџџџџџРЉ:џџџџџџџџџРЉ:S O
)
_output_shapes
:џџџџџџџџџРЉ
"
_user_specified_name
inputs/0:SO
)
_output_shapes
:џџџџџџџџџРЉ
"
_user_specified_name
inputs/1
[

E__inference_model_7_layer_call_and_return_conditional_losses_21513587
input_8,
conv2d_57_21513521: 
conv2d_57_21513523:,
conv2d_58_21513527: 
conv2d_58_21513529:,
group_normalization_4_21513533:,
group_normalization_4_21513535:,
conv2d_59_21513538: 
conv2d_59_21513540:-
batch_normalization_10_21513546:-
batch_normalization_10_21513548:-
batch_normalization_10_21513550:-
batch_normalization_10_21513552:,
conv2d_60_21513555: 
conv2d_60_21513557:,
group_normalization_5_21513561:,
group_normalization_5_21513563:,
conv2d_61_21513566: 
conv2d_61_21513568:%
dense_16_21513575:
г

dense_16_21513577:#
dense_17_21513581:
dense_17_21513583:
identityЂ.batch_normalization_10/StatefulPartitionedCallЂ!conv2d_57/StatefulPartitionedCallЂ!conv2d_58/StatefulPartitionedCallЂ!conv2d_59/StatefulPartitionedCallЂ!conv2d_60/StatefulPartitionedCallЂ!conv2d_61/StatefulPartitionedCallЂ dense_16/StatefulPartitionedCallЂ dense_17/StatefulPartitionedCallЂ-group_normalization_4/StatefulPartitionedCallЂ-group_normalization_5/StatefulPartitionedCall
!conv2d_57/StatefulPartitionedCallStatefulPartitionedCallinput_8conv2d_57_21513521conv2d_57_21513523*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:џџџџџџџџџtМ*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8 *P
fKRI
G__inference_conv2d_57_layer_call_and_return_conditional_losses_21512606і
activation_82/PartitionedCallPartitionedCall*conv2d_57/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:џџџџџџџџџtМ* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2 *0J 8 *T
fORM
K__inference_activation_82_layer_call_and_return_conditional_losses_21512617Ј
!conv2d_58/StatefulPartitionedCallStatefulPartitionedCall&activation_82/PartitionedCall:output:0conv2d_58_21513527conv2d_58_21513529*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:џџџџџџџџџtМ*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8 *P
fKRI
G__inference_conv2d_58_layer_call_and_return_conditional_losses_21512629і
activation_83/PartitionedCallPartitionedCall*conv2d_58/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:џџџџџџџџџtМ* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2 *0J 8 *T
fORM
K__inference_activation_83_layer_call_and_return_conditional_losses_21512640и
-group_normalization_4/StatefulPartitionedCallStatefulPartitionedCall&activation_83/PartitionedCall:output:0group_normalization_4_21513533group_normalization_4_21513535*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:џџџџџџџџџtМ*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8 *\
fWRU
S__inference_group_normalization_4_layer_call_and_return_conditional_losses_21513194И
!conv2d_59/StatefulPartitionedCallStatefulPartitionedCall6group_normalization_4/StatefulPartitionedCall:output:0conv2d_59_21513538conv2d_59_21513540*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:џџџџџџџџџtМ*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8 *P
fKRI
G__inference_conv2d_59_layer_call_and_return_conditional_losses_21512711і
activation_84/PartitionedCallPartitionedCall*conv2d_59/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:џџџџџџџџџtМ* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2 *0J 8 *T
fORM
K__inference_activation_84_layer_call_and_return_conditional_losses_21512722§
#average_pooling2d_2/PartitionedCallPartitionedCall&activation_84/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:џџџџџџџџџ:^* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2 *0J 8 *Z
fURS
Q__inference_average_pooling2d_2_layer_call_and_return_conditional_losses_21512522ї
activation_85/PartitionedCallPartitionedCall,average_pooling2d_2/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:џџџџџџџџџ:^* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2 *0J 8 *T
fORM
K__inference_activation_85_layer_call_and_return_conditional_losses_21512730
.batch_normalization_10/StatefulPartitionedCallStatefulPartitionedCall&activation_85/PartitionedCall:output:0batch_normalization_10_21513546batch_normalization_10_21513548batch_normalization_10_21513550batch_normalization_10_21513552*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:џџџџџџџџџ:^*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8 *]
fXRV
T__inference_batch_normalization_10_layer_call_and_return_conditional_losses_21512578И
!conv2d_60/StatefulPartitionedCallStatefulPartitionedCall7batch_normalization_10/StatefulPartitionedCall:output:0conv2d_60_21513555conv2d_60_21513557*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:џџџџџџџџџ:^*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8 *P
fKRI
G__inference_conv2d_60_layer_call_and_return_conditional_losses_21512751ѕ
activation_86/PartitionedCallPartitionedCall*conv2d_60/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:џџџџџџџџџ:^* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2 *0J 8 *T
fORM
K__inference_activation_86_layer_call_and_return_conditional_losses_21512762з
-group_normalization_5/StatefulPartitionedCallStatefulPartitionedCall&activation_86/PartitionedCall:output:0group_normalization_5_21513561group_normalization_5_21513563*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:џџџџџџџџџ:^*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8 *\
fWRU
S__inference_group_normalization_5_layer_call_and_return_conditional_losses_21513084З
!conv2d_61/StatefulPartitionedCallStatefulPartitionedCall6group_normalization_5/StatefulPartitionedCall:output:0conv2d_61_21513566conv2d_61_21513568*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:џџџџџџџџџ:^*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8 *P
fKRI
G__inference_conv2d_61_layer_call_and_return_conditional_losses_21512833ѕ
activation_87/PartitionedCallPartitionedCall*conv2d_61/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:џџџџџџџџџ:^* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2 *0J 8 *T
fORM
K__inference_activation_87_layer_call_and_return_conditional_losses_21512844у
flatten_4/PartitionedCallPartitionedCall&activation_85/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *)
_output_shapes
:џџџџџџџџџРЉ* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2 *0J 8 *P
fKRI
G__inference_flatten_4_layer_call_and_return_conditional_losses_21512852у
flatten_5/PartitionedCallPartitionedCall&activation_87/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *)
_output_shapes
:џџџџџџџџџРЉ* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2 *0J 8 *P
fKRI
G__inference_flatten_5_layer_call_and_return_conditional_losses_21512860
concatenate_2/PartitionedCallPartitionedCall"flatten_4/PartitionedCall:output:0"flatten_5/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *)
_output_shapes
:џџџџџџџџџг
* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2 *0J 8 *T
fORM
K__inference_concatenate_2_layer_call_and_return_conditional_losses_21512869
 dense_16/StatefulPartitionedCallStatefulPartitionedCall&concatenate_2/PartitionedCall:output:0dense_16_21513575dense_16_21513577*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8 *O
fJRH
F__inference_dense_16_layer_call_and_return_conditional_losses_21512881ь
activation_88/PartitionedCallPartitionedCall)dense_16/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2 *0J 8 *T
fORM
K__inference_activation_88_layer_call_and_return_conditional_losses_21512892
 dense_17/StatefulPartitionedCallStatefulPartitionedCall&activation_88/PartitionedCall:output:0dense_17_21513581dense_17_21513583*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8 *O
fJRH
F__inference_dense_17_layer_call_and_return_conditional_losses_21512904x
IdentityIdentity)dense_17/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџб
NoOpNoOp/^batch_normalization_10/StatefulPartitionedCall"^conv2d_57/StatefulPartitionedCall"^conv2d_58/StatefulPartitionedCall"^conv2d_59/StatefulPartitionedCall"^conv2d_60/StatefulPartitionedCall"^conv2d_61/StatefulPartitionedCall!^dense_16/StatefulPartitionedCall!^dense_17/StatefulPartitionedCall.^group_normalization_4/StatefulPartitionedCall.^group_normalization_5/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*[
_input_shapesJ
H:џџџџџџџџџtМ: : : : : : : : : : : : : : : : : : : : : : 2`
.batch_normalization_10/StatefulPartitionedCall.batch_normalization_10/StatefulPartitionedCall2F
!conv2d_57/StatefulPartitionedCall!conv2d_57/StatefulPartitionedCall2F
!conv2d_58/StatefulPartitionedCall!conv2d_58/StatefulPartitionedCall2F
!conv2d_59/StatefulPartitionedCall!conv2d_59/StatefulPartitionedCall2F
!conv2d_60/StatefulPartitionedCall!conv2d_60/StatefulPartitionedCall2F
!conv2d_61/StatefulPartitionedCall!conv2d_61/StatefulPartitionedCall2D
 dense_16/StatefulPartitionedCall dense_16/StatefulPartitionedCall2D
 dense_17/StatefulPartitionedCall dense_17/StatefulPartitionedCall2^
-group_normalization_4/StatefulPartitionedCall-group_normalization_4/StatefulPartitionedCall2^
-group_normalization_5/StatefulPartitionedCall-group_normalization_5/StatefulPartitionedCall:Y U
0
_output_shapes
:џџџџџџџџџtМ
!
_user_specified_name	input_8
Џ


G__inference_conv2d_57_layer_call_and_return_conditional_losses_21512606

inputs8
conv2d_readvariableop_resource:-
biasadd_readvariableop_resource:
identityЂBiasAdd/ReadVariableOpЂConv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:*
dtype0
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:џџџџџџџџџtМ*
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
:џџџџџџџџџtМh
IdentityIdentityBiasAdd:output:0^NoOp*
T0*0
_output_shapes
:џџџџџџџџџtМw
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :џџџџџџџџџtМ: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:X T
0
_output_shapes
:џџџџџџџџџtМ
 
_user_specified_nameinputs
а
L
0__inference_activation_86_layer_call_fn_21514401

inputs
identityУ
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:џџџџџџџџџ:^* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2 *0J 8 *T
fORM
K__inference_activation_86_layer_call_and_return_conditional_losses_21512762h
IdentityIdentityPartitionedCall:output:0*
T0*/
_output_shapes
:џџџџџџџџџ:^"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:џџџџџџџџџ:^:W S
/
_output_shapes
:џџџџџџџџџ:^
 
_user_specified_nameinputs
Џ


G__inference_conv2d_57_layer_call_and_return_conditional_losses_21514103

inputs8
conv2d_readvariableop_resource:-
biasadd_readvariableop_resource:
identityЂBiasAdd/ReadVariableOpЂConv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:*
dtype0
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:џџџџџџџџџtМ*
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
:џџџџџџџџџtМh
IdentityIdentityBiasAdd:output:0^NoOp*
T0*0
_output_shapes
:џџџџџџџџџtМw
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :џџџџџџџџџtМ: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:X T
0
_output_shapes
:џџџџџџџџџtМ
 
_user_specified_nameinputs
б

+__inference_dense_16_layer_call_fn_21514603

inputs
unknown:
г

	unknown_0:
identityЂStatefulPartitionedCallр
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8 *O
fJRH
F__inference_dense_16_layer_call_and_return_conditional_losses_21512881o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*,
_input_shapes
:џџџџџџџџџг
: : 22
StatefulPartitionedCallStatefulPartitionedCall:Q M
)
_output_shapes
:џџџџџџџџџг

 
_user_specified_nameinputs
Щ	
ї
F__inference_dense_17_layer_call_and_return_conditional_losses_21512904

inputs0
matmul_readvariableop_resource:-
biasadd_readvariableop_resource:
identityЂBiasAdd/ReadVariableOpЂMatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџr
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ_
IdentityIdentityBiasAdd:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџw
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:џџџџџџџџџ: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs
2

S__inference_group_normalization_5_layer_call_and_return_conditional_losses_21514477

inputs/
!reshape_2_readvariableop_resource:/
!reshape_3_readvariableop_resource:
identityЂReshape_2/ReadVariableOpЂReshape_3/ReadVariableOp;
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
valueB:г
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
valueB:л
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
valueB:л
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
valueB:л
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
value	B :Ћ
stackPackstrided_slice:output:0stack/1:output:0strided_slice_1:output:0strided_slice_2:output:0stack/4:output:0*
N*
T0*
_output_shapes
:h
ReshapeReshapeinputsstack:output:0*
T0*3
_output_shapes!
:џџџџџџџџџ:^k
Mean/reduction_indicesConst*
_output_shapes
:*
dtype0*!
valueB"         
MeanMeanReshape:output:0Mean/reduction_indices:output:0*
T0*3
_output_shapes!
:џџџџџџџџџ*
	keep_dims({
&reduce_variance/Mean/reduction_indicesConst*
_output_shapes
:*
dtype0*!
valueB"         Ў
reduce_variance/MeanMeanReshape:output:0/reduce_variance/Mean/reduction_indices:output:0*
T0*3
_output_shapes!
:џџџџџџџџџ*
	keep_dims(
reduce_variance/subSubReshape:output:0reduce_variance/Mean:output:0*
T0*3
_output_shapes!
:џџџџџџџџџ:^w
reduce_variance/SquareSquarereduce_variance/sub:z:0*
T0*3
_output_shapes!
:џџџџџџџџџ:^}
(reduce_variance/Mean_1/reduction_indicesConst*
_output_shapes
:*
dtype0*!
valueB"         М
reduce_variance/Mean_1Meanreduce_variance/Square:y:01reduce_variance/Mean_1/reduction_indices:output:0*
T0*3
_output_shapes!
:џџџџџџџџџ*
	keep_dims(i
subSubReshape:output:0Mean:output:0*
T0*3
_output_shapes!
:џџџџџџџџџ:^J
add/yConst*
_output_shapes
: *
dtype0*
valueB
 *ЭЬЬ={
addAddV2reduce_variance/Mean_1:output:0add/y:output:0*
T0*3
_output_shapes!
:џџџџџџџџџJ
ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    i
MaximumMaximumadd:z:0Const:output:0*
T0*3
_output_shapes!
:џџџџџџџџџW
SqrtSqrtMaximum:z:0*
T0*3
_output_shapes!
:џџџџџџџџџc
truedivRealDivsub:z:0Sqrt:y:0*
T0*3
_output_shapes!
:џџџџџџџџџ:^o
	Reshape_1Reshapetruediv:z:0stack:output:0*
T0*3
_output_shapes!
:џџџџџџџџџ:^v
Reshape_2/ReadVariableOpReadVariableOp!reshape_2_readvariableop_resource*
_output_shapes
:*
dtype0l
Reshape_2/shapeConst*
_output_shapes
:*
dtype0*)
value B"               
	Reshape_2Reshape Reshape_2/ReadVariableOp:value:0Reshape_2/shape:output:0*
T0**
_output_shapes
:p
mulMulReshape_1:output:0Reshape_2:output:0*
T0*3
_output_shapes!
:џџџџџџџџџ:^v
Reshape_3/ReadVariableOpReadVariableOp!reshape_3_readvariableop_resource*
_output_shapes
:*
dtype0l
Reshape_3/shapeConst*
_output_shapes
:*
dtype0*)
value B"               
	Reshape_3Reshape Reshape_3/ReadVariableOp:value:0Reshape_3/shape:output:0*
T0**
_output_shapes
:i
add_1AddV2mul:z:0Reshape_3:output:0*
T0*3
_output_shapes!
:џџџџџџџџџ:^i
	Reshape_4Reshape	add_1:z:0Shape:output:0*
T0*/
_output_shapes
:џџџџџџџџџ:^i
IdentityIdentityReshape_4:output:0^NoOp*
T0*/
_output_shapes
:џџџџџџџџџ:^|
NoOpNoOp^Reshape_2/ReadVariableOp^Reshape_3/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:џџџџџџџџџ:^: : 24
Reshape_2/ReadVariableOpReshape_2/ReadVariableOp24
Reshape_3/ReadVariableOpReshape_3/ReadVariableOp:W S
/
_output_shapes
:џџџџџџџџџ:^
 
_user_specified_nameinputs
ыц
В
E__inference_model_7_layer_call_and_return_conditional_losses_21514084

inputsB
(conv2d_57_conv2d_readvariableop_resource:7
)conv2d_57_biasadd_readvariableop_resource:B
(conv2d_58_conv2d_readvariableop_resource:7
)conv2d_58_biasadd_readvariableop_resource:E
7group_normalization_4_reshape_2_readvariableop_resource:E
7group_normalization_4_reshape_3_readvariableop_resource:B
(conv2d_59_conv2d_readvariableop_resource:7
)conv2d_59_biasadd_readvariableop_resource:<
.batch_normalization_10_readvariableop_resource:>
0batch_normalization_10_readvariableop_1_resource:M
?batch_normalization_10_fusedbatchnormv3_readvariableop_resource:O
Abatch_normalization_10_fusedbatchnormv3_readvariableop_1_resource:B
(conv2d_60_conv2d_readvariableop_resource:7
)conv2d_60_biasadd_readvariableop_resource:E
7group_normalization_5_reshape_2_readvariableop_resource:E
7group_normalization_5_reshape_3_readvariableop_resource:B
(conv2d_61_conv2d_readvariableop_resource:7
)conv2d_61_biasadd_readvariableop_resource:;
'dense_16_matmul_readvariableop_resource:
г
6
(dense_16_biasadd_readvariableop_resource:9
'dense_17_matmul_readvariableop_resource:6
(dense_17_biasadd_readvariableop_resource:
identityЂ%batch_normalization_10/AssignNewValueЂ'batch_normalization_10/AssignNewValue_1Ђ6batch_normalization_10/FusedBatchNormV3/ReadVariableOpЂ8batch_normalization_10/FusedBatchNormV3/ReadVariableOp_1Ђ%batch_normalization_10/ReadVariableOpЂ'batch_normalization_10/ReadVariableOp_1Ђ conv2d_57/BiasAdd/ReadVariableOpЂconv2d_57/Conv2D/ReadVariableOpЂ conv2d_58/BiasAdd/ReadVariableOpЂconv2d_58/Conv2D/ReadVariableOpЂ conv2d_59/BiasAdd/ReadVariableOpЂconv2d_59/Conv2D/ReadVariableOpЂ conv2d_60/BiasAdd/ReadVariableOpЂconv2d_60/Conv2D/ReadVariableOpЂ conv2d_61/BiasAdd/ReadVariableOpЂconv2d_61/Conv2D/ReadVariableOpЂdense_16/BiasAdd/ReadVariableOpЂdense_16/MatMul/ReadVariableOpЂdense_17/BiasAdd/ReadVariableOpЂdense_17/MatMul/ReadVariableOpЂ.group_normalization_4/Reshape_2/ReadVariableOpЂ.group_normalization_4/Reshape_3/ReadVariableOpЂ.group_normalization_5/Reshape_2/ReadVariableOpЂ.group_normalization_5/Reshape_3/ReadVariableOp
conv2d_57/Conv2D/ReadVariableOpReadVariableOp(conv2d_57_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype0Ў
conv2d_57/Conv2DConv2Dinputs'conv2d_57/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:џџџџџџџџџtМ*
paddingSAME*
strides

 conv2d_57/BiasAdd/ReadVariableOpReadVariableOp)conv2d_57_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0
conv2d_57/BiasAddBiasAddconv2d_57/Conv2D:output:0(conv2d_57/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:џџџџџџџџџtМr
activation_82/LeakyRelu	LeakyReluconv2d_57/BiasAdd:output:0*0
_output_shapes
:џџџџџџџџџtМ
conv2d_58/Conv2D/ReadVariableOpReadVariableOp(conv2d_58_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype0Э
conv2d_58/Conv2DConv2D%activation_82/LeakyRelu:activations:0'conv2d_58/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:џџџџџџџџџtМ*
paddingSAME*
strides

 conv2d_58/BiasAdd/ReadVariableOpReadVariableOp)conv2d_58_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0
conv2d_58/BiasAddBiasAddconv2d_58/Conv2D:output:0(conv2d_58/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:џџџџџџџџџtМr
activation_83/LeakyRelu	LeakyReluconv2d_58/BiasAdd:output:0*0
_output_shapes
:џџџџџџџџџtМp
group_normalization_4/ShapeShape%activation_83/LeakyRelu:activations:0*
T0*
_output_shapes
:r
group_normalization_4/Shape_1Shape%activation_83/LeakyRelu:activations:0*
T0*
_output_shapes
:s
)group_normalization_4/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: u
+group_normalization_4/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:u
+group_normalization_4/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:С
#group_normalization_4/strided_sliceStridedSlice&group_normalization_4/Shape_1:output:02group_normalization_4/strided_slice/stack:output:04group_normalization_4/strided_slice/stack_1:output:04group_normalization_4/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masku
+group_normalization_4/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:w
-group_normalization_4/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:w
-group_normalization_4/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Щ
%group_normalization_4/strided_slice_1StridedSlice&group_normalization_4/Shape_1:output:04group_normalization_4/strided_slice_1/stack:output:06group_normalization_4/strided_slice_1/stack_1:output:06group_normalization_4/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masku
+group_normalization_4/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:w
-group_normalization_4/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:w
-group_normalization_4/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Щ
%group_normalization_4/strided_slice_2StridedSlice&group_normalization_4/Shape_1:output:04group_normalization_4/strided_slice_2/stack:output:06group_normalization_4/strided_slice_2/stack_1:output:06group_normalization_4/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masku
+group_normalization_4/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:w
-group_normalization_4/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB:w
-group_normalization_4/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Щ
%group_normalization_4/strided_slice_3StridedSlice&group_normalization_4/Shape_1:output:04group_normalization_4/strided_slice_3/stack:output:06group_normalization_4/strided_slice_3/stack_1:output:06group_normalization_4/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask_
group_normalization_4/stack/1Const*
_output_shapes
: *
dtype0*
value	B :_
group_normalization_4/stack/4Const*
_output_shapes
: *
dtype0*
value	B :Џ
group_normalization_4/stackPack,group_normalization_4/strided_slice:output:0&group_normalization_4/stack/1:output:0.group_normalization_4/strided_slice_1:output:0.group_normalization_4/strided_slice_2:output:0&group_normalization_4/stack/4:output:0*
N*
T0*
_output_shapes
:Д
group_normalization_4/ReshapeReshape%activation_83/LeakyRelu:activations:0$group_normalization_4/stack:output:0*
T0*4
_output_shapes"
 :џџџџџџџџџtМ
,group_normalization_4/Mean/reduction_indicesConst*
_output_shapes
:*
dtype0*!
valueB"         а
group_normalization_4/MeanMean&group_normalization_4/Reshape:output:05group_normalization_4/Mean/reduction_indices:output:0*
T0*3
_output_shapes!
:џџџџџџџџџ*
	keep_dims(
<group_normalization_4/reduce_variance/Mean/reduction_indicesConst*
_output_shapes
:*
dtype0*!
valueB"         №
*group_normalization_4/reduce_variance/MeanMean&group_normalization_4/Reshape:output:0Egroup_normalization_4/reduce_variance/Mean/reduction_indices:output:0*
T0*3
_output_shapes!
:џџџџџџџџџ*
	keep_dims(Ь
)group_normalization_4/reduce_variance/subSub&group_normalization_4/Reshape:output:03group_normalization_4/reduce_variance/Mean:output:0*
T0*4
_output_shapes"
 :џџџџџџџџџtМЄ
,group_normalization_4/reduce_variance/SquareSquare-group_normalization_4/reduce_variance/sub:z:0*
T0*4
_output_shapes"
 :џџџџџџџџџtМ
>group_normalization_4/reduce_variance/Mean_1/reduction_indicesConst*
_output_shapes
:*
dtype0*!
valueB"         ў
,group_normalization_4/reduce_variance/Mean_1Mean0group_normalization_4/reduce_variance/Square:y:0Ggroup_normalization_4/reduce_variance/Mean_1/reduction_indices:output:0*
T0*3
_output_shapes!
:џџџџџџџџџ*
	keep_dims(Ќ
group_normalization_4/subSub&group_normalization_4/Reshape:output:0#group_normalization_4/Mean:output:0*
T0*4
_output_shapes"
 :џџџџџџџџџtМ`
group_normalization_4/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *ЭЬЬ=Н
group_normalization_4/addAddV25group_normalization_4/reduce_variance/Mean_1:output:0$group_normalization_4/add/y:output:0*
T0*3
_output_shapes!
:џџџџџџџџџ`
group_normalization_4/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    Ћ
group_normalization_4/MaximumMaximumgroup_normalization_4/add:z:0$group_normalization_4/Const:output:0*
T0*3
_output_shapes!
:џџџџџџџџџ
group_normalization_4/SqrtSqrt!group_normalization_4/Maximum:z:0*
T0*3
_output_shapes!
:џџџџџџџџџІ
group_normalization_4/truedivRealDivgroup_normalization_4/sub:z:0group_normalization_4/Sqrt:y:0*
T0*4
_output_shapes"
 :џџџџџџџџџtМВ
group_normalization_4/Reshape_1Reshape!group_normalization_4/truediv:z:0$group_normalization_4/stack:output:0*
T0*4
_output_shapes"
 :џџџџџџџџџtМЂ
.group_normalization_4/Reshape_2/ReadVariableOpReadVariableOp7group_normalization_4_reshape_2_readvariableop_resource*
_output_shapes
:*
dtype0
%group_normalization_4/Reshape_2/shapeConst*
_output_shapes
:*
dtype0*)
value B"               Ч
group_normalization_4/Reshape_2Reshape6group_normalization_4/Reshape_2/ReadVariableOp:value:0.group_normalization_4/Reshape_2/shape:output:0*
T0**
_output_shapes
:Г
group_normalization_4/mulMul(group_normalization_4/Reshape_1:output:0(group_normalization_4/Reshape_2:output:0*
T0*4
_output_shapes"
 :џџџџџџџџџtМЂ
.group_normalization_4/Reshape_3/ReadVariableOpReadVariableOp7group_normalization_4_reshape_3_readvariableop_resource*
_output_shapes
:*
dtype0
%group_normalization_4/Reshape_3/shapeConst*
_output_shapes
:*
dtype0*)
value B"               Ч
group_normalization_4/Reshape_3Reshape6group_normalization_4/Reshape_3/ReadVariableOp:value:0.group_normalization_4/Reshape_3/shape:output:0*
T0**
_output_shapes
:Ќ
group_normalization_4/add_1AddV2group_normalization_4/mul:z:0(group_normalization_4/Reshape_3:output:0*
T0*4
_output_shapes"
 :џџџџџџџџџtМЌ
group_normalization_4/Reshape_4Reshapegroup_normalization_4/add_1:z:0$group_normalization_4/Shape:output:0*
T0*0
_output_shapes
:џџџџџџџџџtМ
conv2d_59/Conv2D/ReadVariableOpReadVariableOp(conv2d_59_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype0а
conv2d_59/Conv2DConv2D(group_normalization_4/Reshape_4:output:0'conv2d_59/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:џџџџџџџџџtМ*
paddingSAME*
strides

 conv2d_59/BiasAdd/ReadVariableOpReadVariableOp)conv2d_59_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0
conv2d_59/BiasAddBiasAddconv2d_59/Conv2D:output:0(conv2d_59/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:џџџџџџџџџtМr
activation_84/LeakyRelu	LeakyReluconv2d_59/BiasAdd:output:0*0
_output_shapes
:џџџџџџџџџtМУ
average_pooling2d_2/AvgPoolAvgPool%activation_84/LeakyRelu:activations:0*
T0*/
_output_shapes
:џџџџџџџџџ:^*
ksize
*
paddingVALID*
strides
{
activation_85/LeakyRelu	LeakyRelu$average_pooling2d_2/AvgPool:output:0*/
_output_shapes
:џџџџџџџџџ:^
%batch_normalization_10/ReadVariableOpReadVariableOp.batch_normalization_10_readvariableop_resource*
_output_shapes
:*
dtype0
'batch_normalization_10/ReadVariableOp_1ReadVariableOp0batch_normalization_10_readvariableop_1_resource*
_output_shapes
:*
dtype0В
6batch_normalization_10/FusedBatchNormV3/ReadVariableOpReadVariableOp?batch_normalization_10_fusedbatchnormv3_readvariableop_resource*
_output_shapes
:*
dtype0Ж
8batch_normalization_10/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpAbatch_normalization_10_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:*
dtype0ж
'batch_normalization_10/FusedBatchNormV3FusedBatchNormV3%activation_85/LeakyRelu:activations:0-batch_normalization_10/ReadVariableOp:value:0/batch_normalization_10/ReadVariableOp_1:value:0>batch_normalization_10/FusedBatchNormV3/ReadVariableOp:value:0@batch_normalization_10/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:џџџџџџџџџ:^:::::*
epsilon%o:*
exponential_avg_factor%
з#<Ђ
%batch_normalization_10/AssignNewValueAssignVariableOp?batch_normalization_10_fusedbatchnormv3_readvariableop_resource4batch_normalization_10/FusedBatchNormV3:batch_mean:07^batch_normalization_10/FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype0*
validate_shape(Ќ
'batch_normalization_10/AssignNewValue_1AssignVariableOpAbatch_normalization_10_fusedbatchnormv3_readvariableop_1_resource8batch_normalization_10/FusedBatchNormV3:batch_variance:09^batch_normalization_10/FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype0*
validate_shape(
conv2d_60/Conv2D/ReadVariableOpReadVariableOp(conv2d_60_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype0в
conv2d_60/Conv2DConv2D+batch_normalization_10/FusedBatchNormV3:y:0'conv2d_60/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:џџџџџџџџџ:^*
paddingSAME*
strides

 conv2d_60/BiasAdd/ReadVariableOpReadVariableOp)conv2d_60_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0
conv2d_60/BiasAddBiasAddconv2d_60/Conv2D:output:0(conv2d_60/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:џџџџџџџџџ:^q
activation_86/LeakyRelu	LeakyReluconv2d_60/BiasAdd:output:0*/
_output_shapes
:џџџџџџџџџ:^p
group_normalization_5/ShapeShape%activation_86/LeakyRelu:activations:0*
T0*
_output_shapes
:r
group_normalization_5/Shape_1Shape%activation_86/LeakyRelu:activations:0*
T0*
_output_shapes
:s
)group_normalization_5/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: u
+group_normalization_5/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:u
+group_normalization_5/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:С
#group_normalization_5/strided_sliceStridedSlice&group_normalization_5/Shape_1:output:02group_normalization_5/strided_slice/stack:output:04group_normalization_5/strided_slice/stack_1:output:04group_normalization_5/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masku
+group_normalization_5/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:w
-group_normalization_5/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:w
-group_normalization_5/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Щ
%group_normalization_5/strided_slice_1StridedSlice&group_normalization_5/Shape_1:output:04group_normalization_5/strided_slice_1/stack:output:06group_normalization_5/strided_slice_1/stack_1:output:06group_normalization_5/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masku
+group_normalization_5/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:w
-group_normalization_5/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:w
-group_normalization_5/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Щ
%group_normalization_5/strided_slice_2StridedSlice&group_normalization_5/Shape_1:output:04group_normalization_5/strided_slice_2/stack:output:06group_normalization_5/strided_slice_2/stack_1:output:06group_normalization_5/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masku
+group_normalization_5/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:w
-group_normalization_5/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB:w
-group_normalization_5/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Щ
%group_normalization_5/strided_slice_3StridedSlice&group_normalization_5/Shape_1:output:04group_normalization_5/strided_slice_3/stack:output:06group_normalization_5/strided_slice_3/stack_1:output:06group_normalization_5/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask_
group_normalization_5/stack/1Const*
_output_shapes
: *
dtype0*
value	B :_
group_normalization_5/stack/4Const*
_output_shapes
: *
dtype0*
value	B :Џ
group_normalization_5/stackPack,group_normalization_5/strided_slice:output:0&group_normalization_5/stack/1:output:0.group_normalization_5/strided_slice_1:output:0.group_normalization_5/strided_slice_2:output:0&group_normalization_5/stack/4:output:0*
N*
T0*
_output_shapes
:Г
group_normalization_5/ReshapeReshape%activation_86/LeakyRelu:activations:0$group_normalization_5/stack:output:0*
T0*3
_output_shapes!
:џџџџџџџџџ:^
,group_normalization_5/Mean/reduction_indicesConst*
_output_shapes
:*
dtype0*!
valueB"         а
group_normalization_5/MeanMean&group_normalization_5/Reshape:output:05group_normalization_5/Mean/reduction_indices:output:0*
T0*3
_output_shapes!
:џџџџџџџџџ*
	keep_dims(
<group_normalization_5/reduce_variance/Mean/reduction_indicesConst*
_output_shapes
:*
dtype0*!
valueB"         №
*group_normalization_5/reduce_variance/MeanMean&group_normalization_5/Reshape:output:0Egroup_normalization_5/reduce_variance/Mean/reduction_indices:output:0*
T0*3
_output_shapes!
:џџџџџџџџџ*
	keep_dims(Ы
)group_normalization_5/reduce_variance/subSub&group_normalization_5/Reshape:output:03group_normalization_5/reduce_variance/Mean:output:0*
T0*3
_output_shapes!
:џџџџџџџџџ:^Ѓ
,group_normalization_5/reduce_variance/SquareSquare-group_normalization_5/reduce_variance/sub:z:0*
T0*3
_output_shapes!
:џџџџџџџџџ:^
>group_normalization_5/reduce_variance/Mean_1/reduction_indicesConst*
_output_shapes
:*
dtype0*!
valueB"         ў
,group_normalization_5/reduce_variance/Mean_1Mean0group_normalization_5/reduce_variance/Square:y:0Ggroup_normalization_5/reduce_variance/Mean_1/reduction_indices:output:0*
T0*3
_output_shapes!
:џџџџџџџџџ*
	keep_dims(Ћ
group_normalization_5/subSub&group_normalization_5/Reshape:output:0#group_normalization_5/Mean:output:0*
T0*3
_output_shapes!
:џџџџџџџџџ:^`
group_normalization_5/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *ЭЬЬ=Н
group_normalization_5/addAddV25group_normalization_5/reduce_variance/Mean_1:output:0$group_normalization_5/add/y:output:0*
T0*3
_output_shapes!
:џџџџџџџџџ`
group_normalization_5/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    Ћ
group_normalization_5/MaximumMaximumgroup_normalization_5/add:z:0$group_normalization_5/Const:output:0*
T0*3
_output_shapes!
:џџџџџџџџџ
group_normalization_5/SqrtSqrt!group_normalization_5/Maximum:z:0*
T0*3
_output_shapes!
:џџџџџџџџџЅ
group_normalization_5/truedivRealDivgroup_normalization_5/sub:z:0group_normalization_5/Sqrt:y:0*
T0*3
_output_shapes!
:џџџџџџџџџ:^Б
group_normalization_5/Reshape_1Reshape!group_normalization_5/truediv:z:0$group_normalization_5/stack:output:0*
T0*3
_output_shapes!
:џџџџџџџџџ:^Ђ
.group_normalization_5/Reshape_2/ReadVariableOpReadVariableOp7group_normalization_5_reshape_2_readvariableop_resource*
_output_shapes
:*
dtype0
%group_normalization_5/Reshape_2/shapeConst*
_output_shapes
:*
dtype0*)
value B"               Ч
group_normalization_5/Reshape_2Reshape6group_normalization_5/Reshape_2/ReadVariableOp:value:0.group_normalization_5/Reshape_2/shape:output:0*
T0**
_output_shapes
:В
group_normalization_5/mulMul(group_normalization_5/Reshape_1:output:0(group_normalization_5/Reshape_2:output:0*
T0*3
_output_shapes!
:џџџџџџџџџ:^Ђ
.group_normalization_5/Reshape_3/ReadVariableOpReadVariableOp7group_normalization_5_reshape_3_readvariableop_resource*
_output_shapes
:*
dtype0
%group_normalization_5/Reshape_3/shapeConst*
_output_shapes
:*
dtype0*)
value B"               Ч
group_normalization_5/Reshape_3Reshape6group_normalization_5/Reshape_3/ReadVariableOp:value:0.group_normalization_5/Reshape_3/shape:output:0*
T0**
_output_shapes
:Ћ
group_normalization_5/add_1AddV2group_normalization_5/mul:z:0(group_normalization_5/Reshape_3:output:0*
T0*3
_output_shapes!
:џџџџџџџџџ:^Ћ
group_normalization_5/Reshape_4Reshapegroup_normalization_5/add_1:z:0$group_normalization_5/Shape:output:0*
T0*/
_output_shapes
:џџџџџџџџџ:^
conv2d_61/Conv2D/ReadVariableOpReadVariableOp(conv2d_61_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype0Я
conv2d_61/Conv2DConv2D(group_normalization_5/Reshape_4:output:0'conv2d_61/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:џџџџџџџџџ:^*
paddingSAME*
strides

 conv2d_61/BiasAdd/ReadVariableOpReadVariableOp)conv2d_61_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0
conv2d_61/BiasAddBiasAddconv2d_61/Conv2D:output:0(conv2d_61/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:џџџџџџџџџ:^q
activation_87/LeakyRelu	LeakyReluconv2d_61/BiasAdd:output:0*/
_output_shapes
:џџџџџџџџџ:^`
flatten_4/ConstConst*
_output_shapes
:*
dtype0*
valueB"џџџџРT 
flatten_4/ReshapeReshape%activation_85/LeakyRelu:activations:0flatten_4/Const:output:0*
T0*)
_output_shapes
:џџџџџџџџџРЉ`
flatten_5/ConstConst*
_output_shapes
:*
dtype0*
valueB"џџџџРT 
flatten_5/ReshapeReshape%activation_87/LeakyRelu:activations:0flatten_5/Const:output:0*
T0*)
_output_shapes
:џџџџџџџџџРЉ[
concatenate_2/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :Й
concatenate_2/concatConcatV2flatten_4/Reshape:output:0flatten_5/Reshape:output:0"concatenate_2/concat/axis:output:0*
N*
T0*)
_output_shapes
:џџџџџџџџџг

dense_16/MatMul/ReadVariableOpReadVariableOp'dense_16_matmul_readvariableop_resource* 
_output_shapes
:
г
*
dtype0
dense_16/MatMulMatMulconcatenate_2/concat:output:0&dense_16/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ
dense_16/BiasAdd/ReadVariableOpReadVariableOp(dense_16_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0
dense_16/BiasAddBiasAdddense_16/MatMul:product:0'dense_16/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџh
activation_88/LeakyRelu	LeakyReludense_16/BiasAdd:output:0*'
_output_shapes
:џџџџџџџџџ
dense_17/MatMul/ReadVariableOpReadVariableOp'dense_17_matmul_readvariableop_resource*
_output_shapes

:*
dtype0
dense_17/MatMulMatMul%activation_88/LeakyRelu:activations:0&dense_17/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ
dense_17/BiasAdd/ReadVariableOpReadVariableOp(dense_17_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0
dense_17/BiasAddBiasAdddense_17/MatMul:product:0'dense_17/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџh
IdentityIdentitydense_17/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ
NoOpNoOp&^batch_normalization_10/AssignNewValue(^batch_normalization_10/AssignNewValue_17^batch_normalization_10/FusedBatchNormV3/ReadVariableOp9^batch_normalization_10/FusedBatchNormV3/ReadVariableOp_1&^batch_normalization_10/ReadVariableOp(^batch_normalization_10/ReadVariableOp_1!^conv2d_57/BiasAdd/ReadVariableOp ^conv2d_57/Conv2D/ReadVariableOp!^conv2d_58/BiasAdd/ReadVariableOp ^conv2d_58/Conv2D/ReadVariableOp!^conv2d_59/BiasAdd/ReadVariableOp ^conv2d_59/Conv2D/ReadVariableOp!^conv2d_60/BiasAdd/ReadVariableOp ^conv2d_60/Conv2D/ReadVariableOp!^conv2d_61/BiasAdd/ReadVariableOp ^conv2d_61/Conv2D/ReadVariableOp ^dense_16/BiasAdd/ReadVariableOp^dense_16/MatMul/ReadVariableOp ^dense_17/BiasAdd/ReadVariableOp^dense_17/MatMul/ReadVariableOp/^group_normalization_4/Reshape_2/ReadVariableOp/^group_normalization_4/Reshape_3/ReadVariableOp/^group_normalization_5/Reshape_2/ReadVariableOp/^group_normalization_5/Reshape_3/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*[
_input_shapesJ
H:џџџџџџџџџtМ: : : : : : : : : : : : : : : : : : : : : : 2N
%batch_normalization_10/AssignNewValue%batch_normalization_10/AssignNewValue2R
'batch_normalization_10/AssignNewValue_1'batch_normalization_10/AssignNewValue_12p
6batch_normalization_10/FusedBatchNormV3/ReadVariableOp6batch_normalization_10/FusedBatchNormV3/ReadVariableOp2t
8batch_normalization_10/FusedBatchNormV3/ReadVariableOp_18batch_normalization_10/FusedBatchNormV3/ReadVariableOp_12N
%batch_normalization_10/ReadVariableOp%batch_normalization_10/ReadVariableOp2R
'batch_normalization_10/ReadVariableOp_1'batch_normalization_10/ReadVariableOp_12D
 conv2d_57/BiasAdd/ReadVariableOp conv2d_57/BiasAdd/ReadVariableOp2B
conv2d_57/Conv2D/ReadVariableOpconv2d_57/Conv2D/ReadVariableOp2D
 conv2d_58/BiasAdd/ReadVariableOp conv2d_58/BiasAdd/ReadVariableOp2B
conv2d_58/Conv2D/ReadVariableOpconv2d_58/Conv2D/ReadVariableOp2D
 conv2d_59/BiasAdd/ReadVariableOp conv2d_59/BiasAdd/ReadVariableOp2B
conv2d_59/Conv2D/ReadVariableOpconv2d_59/Conv2D/ReadVariableOp2D
 conv2d_60/BiasAdd/ReadVariableOp conv2d_60/BiasAdd/ReadVariableOp2B
conv2d_60/Conv2D/ReadVariableOpconv2d_60/Conv2D/ReadVariableOp2D
 conv2d_61/BiasAdd/ReadVariableOp conv2d_61/BiasAdd/ReadVariableOp2B
conv2d_61/Conv2D/ReadVariableOpconv2d_61/Conv2D/ReadVariableOp2B
dense_16/BiasAdd/ReadVariableOpdense_16/BiasAdd/ReadVariableOp2@
dense_16/MatMul/ReadVariableOpdense_16/MatMul/ReadVariableOp2B
dense_17/BiasAdd/ReadVariableOpdense_17/BiasAdd/ReadVariableOp2@
dense_17/MatMul/ReadVariableOpdense_17/MatMul/ReadVariableOp2`
.group_normalization_4/Reshape_2/ReadVariableOp.group_normalization_4/Reshape_2/ReadVariableOp2`
.group_normalization_4/Reshape_3/ReadVariableOp.group_normalization_4/Reshape_3/ReadVariableOp2`
.group_normalization_5/Reshape_2/ReadVariableOp.group_normalization_5/Reshape_2/ReadVariableOp2`
.group_normalization_5/Reshape_3/ReadVariableOp.group_normalization_5/Reshape_3/ReadVariableOp:X T
0
_output_shapes
:џџџџџџџџџtМ
 
_user_specified_nameinputs
Іњ

#__inference__wrapped_model_21512513
input_8J
0model_7_conv2d_57_conv2d_readvariableop_resource:?
1model_7_conv2d_57_biasadd_readvariableop_resource:J
0model_7_conv2d_58_conv2d_readvariableop_resource:?
1model_7_conv2d_58_biasadd_readvariableop_resource:M
?model_7_group_normalization_4_reshape_2_readvariableop_resource:M
?model_7_group_normalization_4_reshape_3_readvariableop_resource:J
0model_7_conv2d_59_conv2d_readvariableop_resource:?
1model_7_conv2d_59_biasadd_readvariableop_resource:D
6model_7_batch_normalization_10_readvariableop_resource:F
8model_7_batch_normalization_10_readvariableop_1_resource:U
Gmodel_7_batch_normalization_10_fusedbatchnormv3_readvariableop_resource:W
Imodel_7_batch_normalization_10_fusedbatchnormv3_readvariableop_1_resource:J
0model_7_conv2d_60_conv2d_readvariableop_resource:?
1model_7_conv2d_60_biasadd_readvariableop_resource:M
?model_7_group_normalization_5_reshape_2_readvariableop_resource:M
?model_7_group_normalization_5_reshape_3_readvariableop_resource:J
0model_7_conv2d_61_conv2d_readvariableop_resource:?
1model_7_conv2d_61_biasadd_readvariableop_resource:C
/model_7_dense_16_matmul_readvariableop_resource:
г
>
0model_7_dense_16_biasadd_readvariableop_resource:A
/model_7_dense_17_matmul_readvariableop_resource:>
0model_7_dense_17_biasadd_readvariableop_resource:
identityЂ>model_7/batch_normalization_10/FusedBatchNormV3/ReadVariableOpЂ@model_7/batch_normalization_10/FusedBatchNormV3/ReadVariableOp_1Ђ-model_7/batch_normalization_10/ReadVariableOpЂ/model_7/batch_normalization_10/ReadVariableOp_1Ђ(model_7/conv2d_57/BiasAdd/ReadVariableOpЂ'model_7/conv2d_57/Conv2D/ReadVariableOpЂ(model_7/conv2d_58/BiasAdd/ReadVariableOpЂ'model_7/conv2d_58/Conv2D/ReadVariableOpЂ(model_7/conv2d_59/BiasAdd/ReadVariableOpЂ'model_7/conv2d_59/Conv2D/ReadVariableOpЂ(model_7/conv2d_60/BiasAdd/ReadVariableOpЂ'model_7/conv2d_60/Conv2D/ReadVariableOpЂ(model_7/conv2d_61/BiasAdd/ReadVariableOpЂ'model_7/conv2d_61/Conv2D/ReadVariableOpЂ'model_7/dense_16/BiasAdd/ReadVariableOpЂ&model_7/dense_16/MatMul/ReadVariableOpЂ'model_7/dense_17/BiasAdd/ReadVariableOpЂ&model_7/dense_17/MatMul/ReadVariableOpЂ6model_7/group_normalization_4/Reshape_2/ReadVariableOpЂ6model_7/group_normalization_4/Reshape_3/ReadVariableOpЂ6model_7/group_normalization_5/Reshape_2/ReadVariableOpЂ6model_7/group_normalization_5/Reshape_3/ReadVariableOp 
'model_7/conv2d_57/Conv2D/ReadVariableOpReadVariableOp0model_7_conv2d_57_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype0П
model_7/conv2d_57/Conv2DConv2Dinput_8/model_7/conv2d_57/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:џџџџџџџџџtМ*
paddingSAME*
strides

(model_7/conv2d_57/BiasAdd/ReadVariableOpReadVariableOp1model_7_conv2d_57_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0Д
model_7/conv2d_57/BiasAddBiasAdd!model_7/conv2d_57/Conv2D:output:00model_7/conv2d_57/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:џџџџџџџџџtМ
model_7/activation_82/LeakyRelu	LeakyRelu"model_7/conv2d_57/BiasAdd:output:0*0
_output_shapes
:џџџџџџџџџtМ 
'model_7/conv2d_58/Conv2D/ReadVariableOpReadVariableOp0model_7_conv2d_58_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype0х
model_7/conv2d_58/Conv2DConv2D-model_7/activation_82/LeakyRelu:activations:0/model_7/conv2d_58/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:џџџџџџџџџtМ*
paddingSAME*
strides

(model_7/conv2d_58/BiasAdd/ReadVariableOpReadVariableOp1model_7_conv2d_58_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0Д
model_7/conv2d_58/BiasAddBiasAdd!model_7/conv2d_58/Conv2D:output:00model_7/conv2d_58/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:џџџџџџџџџtМ
model_7/activation_83/LeakyRelu	LeakyRelu"model_7/conv2d_58/BiasAdd:output:0*0
_output_shapes
:џџџџџџџџџtМ
#model_7/group_normalization_4/ShapeShape-model_7/activation_83/LeakyRelu:activations:0*
T0*
_output_shapes
:
%model_7/group_normalization_4/Shape_1Shape-model_7/activation_83/LeakyRelu:activations:0*
T0*
_output_shapes
:{
1model_7/group_normalization_4/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: }
3model_7/group_normalization_4/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:}
3model_7/group_normalization_4/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:щ
+model_7/group_normalization_4/strided_sliceStridedSlice.model_7/group_normalization_4/Shape_1:output:0:model_7/group_normalization_4/strided_slice/stack:output:0<model_7/group_normalization_4/strided_slice/stack_1:output:0<model_7/group_normalization_4/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask}
3model_7/group_normalization_4/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:
5model_7/group_normalization_4/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
5model_7/group_normalization_4/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ё
-model_7/group_normalization_4/strided_slice_1StridedSlice.model_7/group_normalization_4/Shape_1:output:0<model_7/group_normalization_4/strided_slice_1/stack:output:0>model_7/group_normalization_4/strided_slice_1/stack_1:output:0>model_7/group_normalization_4/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask}
3model_7/group_normalization_4/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:
5model_7/group_normalization_4/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
5model_7/group_normalization_4/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ё
-model_7/group_normalization_4/strided_slice_2StridedSlice.model_7/group_normalization_4/Shape_1:output:0<model_7/group_normalization_4/strided_slice_2/stack:output:0>model_7/group_normalization_4/strided_slice_2/stack_1:output:0>model_7/group_normalization_4/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask}
3model_7/group_normalization_4/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
5model_7/group_normalization_4/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
5model_7/group_normalization_4/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ё
-model_7/group_normalization_4/strided_slice_3StridedSlice.model_7/group_normalization_4/Shape_1:output:0<model_7/group_normalization_4/strided_slice_3/stack:output:0>model_7/group_normalization_4/strided_slice_3/stack_1:output:0>model_7/group_normalization_4/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskg
%model_7/group_normalization_4/stack/1Const*
_output_shapes
: *
dtype0*
value	B :g
%model_7/group_normalization_4/stack/4Const*
_output_shapes
: *
dtype0*
value	B :п
#model_7/group_normalization_4/stackPack4model_7/group_normalization_4/strided_slice:output:0.model_7/group_normalization_4/stack/1:output:06model_7/group_normalization_4/strided_slice_1:output:06model_7/group_normalization_4/strided_slice_2:output:0.model_7/group_normalization_4/stack/4:output:0*
N*
T0*
_output_shapes
:Ь
%model_7/group_normalization_4/ReshapeReshape-model_7/activation_83/LeakyRelu:activations:0,model_7/group_normalization_4/stack:output:0*
T0*4
_output_shapes"
 :џџџџџџџџџtМ
4model_7/group_normalization_4/Mean/reduction_indicesConst*
_output_shapes
:*
dtype0*!
valueB"         ш
"model_7/group_normalization_4/MeanMean.model_7/group_normalization_4/Reshape:output:0=model_7/group_normalization_4/Mean/reduction_indices:output:0*
T0*3
_output_shapes!
:џџџџџџџџџ*
	keep_dims(
Dmodel_7/group_normalization_4/reduce_variance/Mean/reduction_indicesConst*
_output_shapes
:*
dtype0*!
valueB"         
2model_7/group_normalization_4/reduce_variance/MeanMean.model_7/group_normalization_4/Reshape:output:0Mmodel_7/group_normalization_4/reduce_variance/Mean/reduction_indices:output:0*
T0*3
_output_shapes!
:џџџџџџџџџ*
	keep_dims(ф
1model_7/group_normalization_4/reduce_variance/subSub.model_7/group_normalization_4/Reshape:output:0;model_7/group_normalization_4/reduce_variance/Mean:output:0*
T0*4
_output_shapes"
 :џџџџџџџџџtМД
4model_7/group_normalization_4/reduce_variance/SquareSquare5model_7/group_normalization_4/reduce_variance/sub:z:0*
T0*4
_output_shapes"
 :џџџџџџџџџtМ
Fmodel_7/group_normalization_4/reduce_variance/Mean_1/reduction_indicesConst*
_output_shapes
:*
dtype0*!
valueB"         
4model_7/group_normalization_4/reduce_variance/Mean_1Mean8model_7/group_normalization_4/reduce_variance/Square:y:0Omodel_7/group_normalization_4/reduce_variance/Mean_1/reduction_indices:output:0*
T0*3
_output_shapes!
:џџџџџџџџџ*
	keep_dims(Ф
!model_7/group_normalization_4/subSub.model_7/group_normalization_4/Reshape:output:0+model_7/group_normalization_4/Mean:output:0*
T0*4
_output_shapes"
 :џџџџџџџџџtМh
#model_7/group_normalization_4/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *ЭЬЬ=е
!model_7/group_normalization_4/addAddV2=model_7/group_normalization_4/reduce_variance/Mean_1:output:0,model_7/group_normalization_4/add/y:output:0*
T0*3
_output_shapes!
:џџџџџџџџџh
#model_7/group_normalization_4/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    У
%model_7/group_normalization_4/MaximumMaximum%model_7/group_normalization_4/add:z:0,model_7/group_normalization_4/Const:output:0*
T0*3
_output_shapes!
:џџџџџџџџџ
"model_7/group_normalization_4/SqrtSqrt)model_7/group_normalization_4/Maximum:z:0*
T0*3
_output_shapes!
:џџџџџџџџџО
%model_7/group_normalization_4/truedivRealDiv%model_7/group_normalization_4/sub:z:0&model_7/group_normalization_4/Sqrt:y:0*
T0*4
_output_shapes"
 :џџџџџџџџџtМЪ
'model_7/group_normalization_4/Reshape_1Reshape)model_7/group_normalization_4/truediv:z:0,model_7/group_normalization_4/stack:output:0*
T0*4
_output_shapes"
 :џџџџџџџџџtМВ
6model_7/group_normalization_4/Reshape_2/ReadVariableOpReadVariableOp?model_7_group_normalization_4_reshape_2_readvariableop_resource*
_output_shapes
:*
dtype0
-model_7/group_normalization_4/Reshape_2/shapeConst*
_output_shapes
:*
dtype0*)
value B"               п
'model_7/group_normalization_4/Reshape_2Reshape>model_7/group_normalization_4/Reshape_2/ReadVariableOp:value:06model_7/group_normalization_4/Reshape_2/shape:output:0*
T0**
_output_shapes
:Ы
!model_7/group_normalization_4/mulMul0model_7/group_normalization_4/Reshape_1:output:00model_7/group_normalization_4/Reshape_2:output:0*
T0*4
_output_shapes"
 :џџџџџџџџџtМВ
6model_7/group_normalization_4/Reshape_3/ReadVariableOpReadVariableOp?model_7_group_normalization_4_reshape_3_readvariableop_resource*
_output_shapes
:*
dtype0
-model_7/group_normalization_4/Reshape_3/shapeConst*
_output_shapes
:*
dtype0*)
value B"               п
'model_7/group_normalization_4/Reshape_3Reshape>model_7/group_normalization_4/Reshape_3/ReadVariableOp:value:06model_7/group_normalization_4/Reshape_3/shape:output:0*
T0**
_output_shapes
:Ф
#model_7/group_normalization_4/add_1AddV2%model_7/group_normalization_4/mul:z:00model_7/group_normalization_4/Reshape_3:output:0*
T0*4
_output_shapes"
 :џџџџџџџџџtМФ
'model_7/group_normalization_4/Reshape_4Reshape'model_7/group_normalization_4/add_1:z:0,model_7/group_normalization_4/Shape:output:0*
T0*0
_output_shapes
:џџџџџџџџџtМ 
'model_7/conv2d_59/Conv2D/ReadVariableOpReadVariableOp0model_7_conv2d_59_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype0ш
model_7/conv2d_59/Conv2DConv2D0model_7/group_normalization_4/Reshape_4:output:0/model_7/conv2d_59/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:џџџџџџџџџtМ*
paddingSAME*
strides

(model_7/conv2d_59/BiasAdd/ReadVariableOpReadVariableOp1model_7_conv2d_59_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0Д
model_7/conv2d_59/BiasAddBiasAdd!model_7/conv2d_59/Conv2D:output:00model_7/conv2d_59/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:џџџџџџџџџtМ
model_7/activation_84/LeakyRelu	LeakyRelu"model_7/conv2d_59/BiasAdd:output:0*0
_output_shapes
:џџџџџџџџџtМг
#model_7/average_pooling2d_2/AvgPoolAvgPool-model_7/activation_84/LeakyRelu:activations:0*
T0*/
_output_shapes
:џџџџџџџџџ:^*
ksize
*
paddingVALID*
strides

model_7/activation_85/LeakyRelu	LeakyRelu,model_7/average_pooling2d_2/AvgPool:output:0*/
_output_shapes
:џџџџџџџџџ:^ 
-model_7/batch_normalization_10/ReadVariableOpReadVariableOp6model_7_batch_normalization_10_readvariableop_resource*
_output_shapes
:*
dtype0Є
/model_7/batch_normalization_10/ReadVariableOp_1ReadVariableOp8model_7_batch_normalization_10_readvariableop_1_resource*
_output_shapes
:*
dtype0Т
>model_7/batch_normalization_10/FusedBatchNormV3/ReadVariableOpReadVariableOpGmodel_7_batch_normalization_10_fusedbatchnormv3_readvariableop_resource*
_output_shapes
:*
dtype0Ц
@model_7/batch_normalization_10/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpImodel_7_batch_normalization_10_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:*
dtype0ј
/model_7/batch_normalization_10/FusedBatchNormV3FusedBatchNormV3-model_7/activation_85/LeakyRelu:activations:05model_7/batch_normalization_10/ReadVariableOp:value:07model_7/batch_normalization_10/ReadVariableOp_1:value:0Fmodel_7/batch_normalization_10/FusedBatchNormV3/ReadVariableOp:value:0Hmodel_7/batch_normalization_10/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:џџџџџџџџџ:^:::::*
epsilon%o:*
is_training(  
'model_7/conv2d_60/Conv2D/ReadVariableOpReadVariableOp0model_7_conv2d_60_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype0ъ
model_7/conv2d_60/Conv2DConv2D3model_7/batch_normalization_10/FusedBatchNormV3:y:0/model_7/conv2d_60/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:џџџџџџџџџ:^*
paddingSAME*
strides

(model_7/conv2d_60/BiasAdd/ReadVariableOpReadVariableOp1model_7_conv2d_60_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0Г
model_7/conv2d_60/BiasAddBiasAdd!model_7/conv2d_60/Conv2D:output:00model_7/conv2d_60/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:џџџџџџџџџ:^
model_7/activation_86/LeakyRelu	LeakyRelu"model_7/conv2d_60/BiasAdd:output:0*/
_output_shapes
:џџџџџџџџџ:^
#model_7/group_normalization_5/ShapeShape-model_7/activation_86/LeakyRelu:activations:0*
T0*
_output_shapes
:
%model_7/group_normalization_5/Shape_1Shape-model_7/activation_86/LeakyRelu:activations:0*
T0*
_output_shapes
:{
1model_7/group_normalization_5/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: }
3model_7/group_normalization_5/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:}
3model_7/group_normalization_5/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:щ
+model_7/group_normalization_5/strided_sliceStridedSlice.model_7/group_normalization_5/Shape_1:output:0:model_7/group_normalization_5/strided_slice/stack:output:0<model_7/group_normalization_5/strided_slice/stack_1:output:0<model_7/group_normalization_5/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask}
3model_7/group_normalization_5/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:
5model_7/group_normalization_5/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
5model_7/group_normalization_5/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ё
-model_7/group_normalization_5/strided_slice_1StridedSlice.model_7/group_normalization_5/Shape_1:output:0<model_7/group_normalization_5/strided_slice_1/stack:output:0>model_7/group_normalization_5/strided_slice_1/stack_1:output:0>model_7/group_normalization_5/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask}
3model_7/group_normalization_5/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:
5model_7/group_normalization_5/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
5model_7/group_normalization_5/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ё
-model_7/group_normalization_5/strided_slice_2StridedSlice.model_7/group_normalization_5/Shape_1:output:0<model_7/group_normalization_5/strided_slice_2/stack:output:0>model_7/group_normalization_5/strided_slice_2/stack_1:output:0>model_7/group_normalization_5/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask}
3model_7/group_normalization_5/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
5model_7/group_normalization_5/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
5model_7/group_normalization_5/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ё
-model_7/group_normalization_5/strided_slice_3StridedSlice.model_7/group_normalization_5/Shape_1:output:0<model_7/group_normalization_5/strided_slice_3/stack:output:0>model_7/group_normalization_5/strided_slice_3/stack_1:output:0>model_7/group_normalization_5/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskg
%model_7/group_normalization_5/stack/1Const*
_output_shapes
: *
dtype0*
value	B :g
%model_7/group_normalization_5/stack/4Const*
_output_shapes
: *
dtype0*
value	B :п
#model_7/group_normalization_5/stackPack4model_7/group_normalization_5/strided_slice:output:0.model_7/group_normalization_5/stack/1:output:06model_7/group_normalization_5/strided_slice_1:output:06model_7/group_normalization_5/strided_slice_2:output:0.model_7/group_normalization_5/stack/4:output:0*
N*
T0*
_output_shapes
:Ы
%model_7/group_normalization_5/ReshapeReshape-model_7/activation_86/LeakyRelu:activations:0,model_7/group_normalization_5/stack:output:0*
T0*3
_output_shapes!
:џџџџџџџџџ:^
4model_7/group_normalization_5/Mean/reduction_indicesConst*
_output_shapes
:*
dtype0*!
valueB"         ш
"model_7/group_normalization_5/MeanMean.model_7/group_normalization_5/Reshape:output:0=model_7/group_normalization_5/Mean/reduction_indices:output:0*
T0*3
_output_shapes!
:џџџџџџџџџ*
	keep_dims(
Dmodel_7/group_normalization_5/reduce_variance/Mean/reduction_indicesConst*
_output_shapes
:*
dtype0*!
valueB"         
2model_7/group_normalization_5/reduce_variance/MeanMean.model_7/group_normalization_5/Reshape:output:0Mmodel_7/group_normalization_5/reduce_variance/Mean/reduction_indices:output:0*
T0*3
_output_shapes!
:џџџџџџџџџ*
	keep_dims(у
1model_7/group_normalization_5/reduce_variance/subSub.model_7/group_normalization_5/Reshape:output:0;model_7/group_normalization_5/reduce_variance/Mean:output:0*
T0*3
_output_shapes!
:џџџџџџџџџ:^Г
4model_7/group_normalization_5/reduce_variance/SquareSquare5model_7/group_normalization_5/reduce_variance/sub:z:0*
T0*3
_output_shapes!
:џџџџџџџџџ:^
Fmodel_7/group_normalization_5/reduce_variance/Mean_1/reduction_indicesConst*
_output_shapes
:*
dtype0*!
valueB"         
4model_7/group_normalization_5/reduce_variance/Mean_1Mean8model_7/group_normalization_5/reduce_variance/Square:y:0Omodel_7/group_normalization_5/reduce_variance/Mean_1/reduction_indices:output:0*
T0*3
_output_shapes!
:џџџџџџџџџ*
	keep_dims(У
!model_7/group_normalization_5/subSub.model_7/group_normalization_5/Reshape:output:0+model_7/group_normalization_5/Mean:output:0*
T0*3
_output_shapes!
:џџџџџџџџџ:^h
#model_7/group_normalization_5/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *ЭЬЬ=е
!model_7/group_normalization_5/addAddV2=model_7/group_normalization_5/reduce_variance/Mean_1:output:0,model_7/group_normalization_5/add/y:output:0*
T0*3
_output_shapes!
:џџџџџџџџџh
#model_7/group_normalization_5/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    У
%model_7/group_normalization_5/MaximumMaximum%model_7/group_normalization_5/add:z:0,model_7/group_normalization_5/Const:output:0*
T0*3
_output_shapes!
:џџџџџџџџџ
"model_7/group_normalization_5/SqrtSqrt)model_7/group_normalization_5/Maximum:z:0*
T0*3
_output_shapes!
:џџџџџџџџџН
%model_7/group_normalization_5/truedivRealDiv%model_7/group_normalization_5/sub:z:0&model_7/group_normalization_5/Sqrt:y:0*
T0*3
_output_shapes!
:џџџџџџџџџ:^Щ
'model_7/group_normalization_5/Reshape_1Reshape)model_7/group_normalization_5/truediv:z:0,model_7/group_normalization_5/stack:output:0*
T0*3
_output_shapes!
:џџџџџџџџџ:^В
6model_7/group_normalization_5/Reshape_2/ReadVariableOpReadVariableOp?model_7_group_normalization_5_reshape_2_readvariableop_resource*
_output_shapes
:*
dtype0
-model_7/group_normalization_5/Reshape_2/shapeConst*
_output_shapes
:*
dtype0*)
value B"               п
'model_7/group_normalization_5/Reshape_2Reshape>model_7/group_normalization_5/Reshape_2/ReadVariableOp:value:06model_7/group_normalization_5/Reshape_2/shape:output:0*
T0**
_output_shapes
:Ъ
!model_7/group_normalization_5/mulMul0model_7/group_normalization_5/Reshape_1:output:00model_7/group_normalization_5/Reshape_2:output:0*
T0*3
_output_shapes!
:џџџџџџџџџ:^В
6model_7/group_normalization_5/Reshape_3/ReadVariableOpReadVariableOp?model_7_group_normalization_5_reshape_3_readvariableop_resource*
_output_shapes
:*
dtype0
-model_7/group_normalization_5/Reshape_3/shapeConst*
_output_shapes
:*
dtype0*)
value B"               п
'model_7/group_normalization_5/Reshape_3Reshape>model_7/group_normalization_5/Reshape_3/ReadVariableOp:value:06model_7/group_normalization_5/Reshape_3/shape:output:0*
T0**
_output_shapes
:У
#model_7/group_normalization_5/add_1AddV2%model_7/group_normalization_5/mul:z:00model_7/group_normalization_5/Reshape_3:output:0*
T0*3
_output_shapes!
:џџџџџџџџџ:^У
'model_7/group_normalization_5/Reshape_4Reshape'model_7/group_normalization_5/add_1:z:0,model_7/group_normalization_5/Shape:output:0*
T0*/
_output_shapes
:џџџџџџџџџ:^ 
'model_7/conv2d_61/Conv2D/ReadVariableOpReadVariableOp0model_7_conv2d_61_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype0ч
model_7/conv2d_61/Conv2DConv2D0model_7/group_normalization_5/Reshape_4:output:0/model_7/conv2d_61/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:џџџџџџџџџ:^*
paddingSAME*
strides

(model_7/conv2d_61/BiasAdd/ReadVariableOpReadVariableOp1model_7_conv2d_61_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0Г
model_7/conv2d_61/BiasAddBiasAdd!model_7/conv2d_61/Conv2D:output:00model_7/conv2d_61/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:џџџџџџџџџ:^
model_7/activation_87/LeakyRelu	LeakyRelu"model_7/conv2d_61/BiasAdd:output:0*/
_output_shapes
:џџџџџџџџџ:^h
model_7/flatten_4/ConstConst*
_output_shapes
:*
dtype0*
valueB"џџџџРT Љ
model_7/flatten_4/ReshapeReshape-model_7/activation_85/LeakyRelu:activations:0 model_7/flatten_4/Const:output:0*
T0*)
_output_shapes
:џџџџџџџџџРЉh
model_7/flatten_5/ConstConst*
_output_shapes
:*
dtype0*
valueB"џџџџРT Љ
model_7/flatten_5/ReshapeReshape-model_7/activation_87/LeakyRelu:activations:0 model_7/flatten_5/Const:output:0*
T0*)
_output_shapes
:џџџџџџџџџРЉc
!model_7/concatenate_2/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :й
model_7/concatenate_2/concatConcatV2"model_7/flatten_4/Reshape:output:0"model_7/flatten_5/Reshape:output:0*model_7/concatenate_2/concat/axis:output:0*
N*
T0*)
_output_shapes
:џџџџџџџџџг

&model_7/dense_16/MatMul/ReadVariableOpReadVariableOp/model_7_dense_16_matmul_readvariableop_resource* 
_output_shapes
:
г
*
dtype0Њ
model_7/dense_16/MatMulMatMul%model_7/concatenate_2/concat:output:0.model_7/dense_16/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ
'model_7/dense_16/BiasAdd/ReadVariableOpReadVariableOp0model_7_dense_16_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0Љ
model_7/dense_16/BiasAddBiasAdd!model_7/dense_16/MatMul:product:0/model_7/dense_16/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџx
model_7/activation_88/LeakyRelu	LeakyRelu!model_7/dense_16/BiasAdd:output:0*'
_output_shapes
:џџџџџџџџџ
&model_7/dense_17/MatMul/ReadVariableOpReadVariableOp/model_7_dense_17_matmul_readvariableop_resource*
_output_shapes

:*
dtype0В
model_7/dense_17/MatMulMatMul-model_7/activation_88/LeakyRelu:activations:0.model_7/dense_17/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ
'model_7/dense_17/BiasAdd/ReadVariableOpReadVariableOp0model_7_dense_17_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0Љ
model_7/dense_17/BiasAddBiasAdd!model_7/dense_17/MatMul:product:0/model_7/dense_17/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџp
IdentityIdentity!model_7/dense_17/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџп
NoOpNoOp?^model_7/batch_normalization_10/FusedBatchNormV3/ReadVariableOpA^model_7/batch_normalization_10/FusedBatchNormV3/ReadVariableOp_1.^model_7/batch_normalization_10/ReadVariableOp0^model_7/batch_normalization_10/ReadVariableOp_1)^model_7/conv2d_57/BiasAdd/ReadVariableOp(^model_7/conv2d_57/Conv2D/ReadVariableOp)^model_7/conv2d_58/BiasAdd/ReadVariableOp(^model_7/conv2d_58/Conv2D/ReadVariableOp)^model_7/conv2d_59/BiasAdd/ReadVariableOp(^model_7/conv2d_59/Conv2D/ReadVariableOp)^model_7/conv2d_60/BiasAdd/ReadVariableOp(^model_7/conv2d_60/Conv2D/ReadVariableOp)^model_7/conv2d_61/BiasAdd/ReadVariableOp(^model_7/conv2d_61/Conv2D/ReadVariableOp(^model_7/dense_16/BiasAdd/ReadVariableOp'^model_7/dense_16/MatMul/ReadVariableOp(^model_7/dense_17/BiasAdd/ReadVariableOp'^model_7/dense_17/MatMul/ReadVariableOp7^model_7/group_normalization_4/Reshape_2/ReadVariableOp7^model_7/group_normalization_4/Reshape_3/ReadVariableOp7^model_7/group_normalization_5/Reshape_2/ReadVariableOp7^model_7/group_normalization_5/Reshape_3/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*[
_input_shapesJ
H:џџџџџџџџџtМ: : : : : : : : : : : : : : : : : : : : : : 2
>model_7/batch_normalization_10/FusedBatchNormV3/ReadVariableOp>model_7/batch_normalization_10/FusedBatchNormV3/ReadVariableOp2
@model_7/batch_normalization_10/FusedBatchNormV3/ReadVariableOp_1@model_7/batch_normalization_10/FusedBatchNormV3/ReadVariableOp_12^
-model_7/batch_normalization_10/ReadVariableOp-model_7/batch_normalization_10/ReadVariableOp2b
/model_7/batch_normalization_10/ReadVariableOp_1/model_7/batch_normalization_10/ReadVariableOp_12T
(model_7/conv2d_57/BiasAdd/ReadVariableOp(model_7/conv2d_57/BiasAdd/ReadVariableOp2R
'model_7/conv2d_57/Conv2D/ReadVariableOp'model_7/conv2d_57/Conv2D/ReadVariableOp2T
(model_7/conv2d_58/BiasAdd/ReadVariableOp(model_7/conv2d_58/BiasAdd/ReadVariableOp2R
'model_7/conv2d_58/Conv2D/ReadVariableOp'model_7/conv2d_58/Conv2D/ReadVariableOp2T
(model_7/conv2d_59/BiasAdd/ReadVariableOp(model_7/conv2d_59/BiasAdd/ReadVariableOp2R
'model_7/conv2d_59/Conv2D/ReadVariableOp'model_7/conv2d_59/Conv2D/ReadVariableOp2T
(model_7/conv2d_60/BiasAdd/ReadVariableOp(model_7/conv2d_60/BiasAdd/ReadVariableOp2R
'model_7/conv2d_60/Conv2D/ReadVariableOp'model_7/conv2d_60/Conv2D/ReadVariableOp2T
(model_7/conv2d_61/BiasAdd/ReadVariableOp(model_7/conv2d_61/BiasAdd/ReadVariableOp2R
'model_7/conv2d_61/Conv2D/ReadVariableOp'model_7/conv2d_61/Conv2D/ReadVariableOp2R
'model_7/dense_16/BiasAdd/ReadVariableOp'model_7/dense_16/BiasAdd/ReadVariableOp2P
&model_7/dense_16/MatMul/ReadVariableOp&model_7/dense_16/MatMul/ReadVariableOp2R
'model_7/dense_17/BiasAdd/ReadVariableOp'model_7/dense_17/BiasAdd/ReadVariableOp2P
&model_7/dense_17/MatMul/ReadVariableOp&model_7/dense_17/MatMul/ReadVariableOp2p
6model_7/group_normalization_4/Reshape_2/ReadVariableOp6model_7/group_normalization_4/Reshape_2/ReadVariableOp2p
6model_7/group_normalization_4/Reshape_3/ReadVariableOp6model_7/group_normalization_4/Reshape_3/ReadVariableOp2p
6model_7/group_normalization_5/Reshape_2/ReadVariableOp6model_7/group_normalization_5/Reshape_2/ReadVariableOp2p
6model_7/group_normalization_5/Reshape_3/ReadVariableOp6model_7/group_normalization_5/Reshape_3/ReadVariableOp:Y U
0
_output_shapes
:џџџџџџџџџtМ
!
_user_specified_name	input_8
ѕ
g
K__inference_activation_86_layer_call_and_return_conditional_losses_21512762

inputs
identityO
	LeakyRelu	LeakyReluinputs*/
_output_shapes
:џџџџџџџџџ:^g
IdentityIdentityLeakyRelu:activations:0*
T0*/
_output_shapes
:џџџџџџџџџ:^"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:џџџџџџџџџ:^:W S
/
_output_shapes
:џџџџџџџџџ:^
 
_user_specified_nameinputs
г
и
*__inference_model_7_layer_call_fn_21513691

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
г


unknown_18:

unknown_19:

unknown_20:
identityЂStatefulPartitionedCallю
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
:џџџџџџџџџ*8
_read_only_resource_inputs
	
*2
config_proto" 

CPU

GPU2 *0J 8 *N
fIRG
E__inference_model_7_layer_call_and_return_conditional_losses_21512911o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*[
_input_shapesJ
H:џџџџџџџџџtМ: : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:X T
0
_output_shapes
:џџџџџџџџџtМ
 
_user_specified_nameinputs
ѕ
g
K__inference_activation_86_layer_call_and_return_conditional_losses_21514406

inputs
identityO
	LeakyRelu	LeakyReluinputs*/
_output_shapes
:џџџџџџџџџ:^g
IdentityIdentityLeakyRelu:activations:0*
T0*/
_output_shapes
:џџџџџџџџџ:^"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:џџџџџџџџџ:^:W S
/
_output_shapes
:џџџџџџџџџ:^
 
_user_specified_nameinputs

У
T__inference_batch_normalization_10_layer_call_and_return_conditional_losses_21514377

inputs%
readvariableop_resource:'
readvariableop_1_resource:6
(fusedbatchnormv3_readvariableop_resource:8
*fusedbatchnormv3_readvariableop_1_resource:
identityЂAssignNewValueЂAssignNewValue_1ЂFusedBatchNormV3/ReadVariableOpЂ!FusedBatchNormV3/ReadVariableOp_1ЂReadVariableOpЂReadVariableOp_1b
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:*
dtype0f
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:*
dtype0
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:*
dtype0
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:*
dtype0ж
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ:::::*
epsilon%o:*
exponential_avg_factor%
з#<Ц
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype0*
validate_shape(а
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype0*
validate_shape(}
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџд
NoOpNoOp^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ: : : : 2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ
 
_user_specified_nameinputs
а
L
0__inference_activation_87_layer_call_fn_21514554

inputs
identityУ
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:џџџџџџџџџ:^* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2 *0J 8 *T
fORM
K__inference_activation_87_layer_call_and_return_conditional_losses_21512844h
IdentityIdentityPartitionedCall:output:0*
T0*/
_output_shapes
:џџџџџџџџџ:^"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:џџџџџџџџџ:^:W S
/
_output_shapes
:џџџџџџџџџ:^
 
_user_specified_nameinputs
2

S__inference_group_normalization_5_layer_call_and_return_conditional_losses_21512817

inputs/
!reshape_2_readvariableop_resource:/
!reshape_3_readvariableop_resource:
identityЂReshape_2/ReadVariableOpЂReshape_3/ReadVariableOp;
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
valueB:г
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
valueB:л
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
valueB:л
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
valueB:л
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
value	B :Ћ
stackPackstrided_slice:output:0stack/1:output:0strided_slice_1:output:0strided_slice_2:output:0stack/4:output:0*
N*
T0*
_output_shapes
:h
ReshapeReshapeinputsstack:output:0*
T0*3
_output_shapes!
:џџџџџџџџџ:^k
Mean/reduction_indicesConst*
_output_shapes
:*
dtype0*!
valueB"         
MeanMeanReshape:output:0Mean/reduction_indices:output:0*
T0*3
_output_shapes!
:џџџџџџџџџ*
	keep_dims({
&reduce_variance/Mean/reduction_indicesConst*
_output_shapes
:*
dtype0*!
valueB"         Ў
reduce_variance/MeanMeanReshape:output:0/reduce_variance/Mean/reduction_indices:output:0*
T0*3
_output_shapes!
:џџџџџџџџџ*
	keep_dims(
reduce_variance/subSubReshape:output:0reduce_variance/Mean:output:0*
T0*3
_output_shapes!
:џџџџџџџџџ:^w
reduce_variance/SquareSquarereduce_variance/sub:z:0*
T0*3
_output_shapes!
:џџџџџџџџџ:^}
(reduce_variance/Mean_1/reduction_indicesConst*
_output_shapes
:*
dtype0*!
valueB"         М
reduce_variance/Mean_1Meanreduce_variance/Square:y:01reduce_variance/Mean_1/reduction_indices:output:0*
T0*3
_output_shapes!
:џџџџџџџџџ*
	keep_dims(i
subSubReshape:output:0Mean:output:0*
T0*3
_output_shapes!
:џџџџџџџџџ:^J
add/yConst*
_output_shapes
: *
dtype0*
valueB
 *ЭЬЬ={
addAddV2reduce_variance/Mean_1:output:0add/y:output:0*
T0*3
_output_shapes!
:џџџџџџџџџJ
ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    i
MaximumMaximumadd:z:0Const:output:0*
T0*3
_output_shapes!
:џџџџџџџџџW
SqrtSqrtMaximum:z:0*
T0*3
_output_shapes!
:џџџџџџџџџc
truedivRealDivsub:z:0Sqrt:y:0*
T0*3
_output_shapes!
:џџџџџџџџџ:^o
	Reshape_1Reshapetruediv:z:0stack:output:0*
T0*3
_output_shapes!
:џџџџџџџџџ:^v
Reshape_2/ReadVariableOpReadVariableOp!reshape_2_readvariableop_resource*
_output_shapes
:*
dtype0l
Reshape_2/shapeConst*
_output_shapes
:*
dtype0*)
value B"               
	Reshape_2Reshape Reshape_2/ReadVariableOp:value:0Reshape_2/shape:output:0*
T0**
_output_shapes
:p
mulMulReshape_1:output:0Reshape_2:output:0*
T0*3
_output_shapes!
:џџџџџџџџџ:^v
Reshape_3/ReadVariableOpReadVariableOp!reshape_3_readvariableop_resource*
_output_shapes
:*
dtype0l
Reshape_3/shapeConst*
_output_shapes
:*
dtype0*)
value B"               
	Reshape_3Reshape Reshape_3/ReadVariableOp:value:0Reshape_3/shape:output:0*
T0**
_output_shapes
:i
add_1AddV2mul:z:0Reshape_3:output:0*
T0*3
_output_shapes!
:џџџџџџџџџ:^i
	Reshape_4Reshape	add_1:z:0Shape:output:0*
T0*/
_output_shapes
:џџџџџџџџџ:^i
IdentityIdentityReshape_4:output:0^NoOp*
T0*/
_output_shapes
:џџџџџџџџџ:^|
NoOpNoOp^Reshape_2/ReadVariableOp^Reshape_3/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:џџџџџџџџџ:^: : 24
Reshape_2/ReadVariableOpReshape_2/ReadVariableOp24
Reshape_3/ReadVariableOpReshape_3/ReadVariableOp:W S
/
_output_shapes
:џџџџџџџџџ:^
 
_user_specified_nameinputs
б	
љ
F__inference_dense_16_layer_call_and_return_conditional_losses_21512881

inputs2
matmul_readvariableop_resource:
г
-
biasadd_readvariableop_resource:
identityЂBiasAdd/ReadVariableOpЂMatMul/ReadVariableOpv
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
г
*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџr
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ_
IdentityIdentityBiasAdd:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџw
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*,
_input_shapes
:џџџџџџџџџг
: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:Q M
)
_output_shapes
:џџџџџџџџџг

 
_user_specified_nameinputs
Ё2

S__inference_group_normalization_4_layer_call_and_return_conditional_losses_21514213

inputs/
!reshape_2_readvariableop_resource:/
!reshape_3_readvariableop_resource:
identityЂReshape_2/ReadVariableOpЂReshape_3/ReadVariableOp;
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
valueB:г
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
valueB:л
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
valueB:л
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
valueB:л
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
value	B :Ћ
stackPackstrided_slice:output:0stack/1:output:0strided_slice_1:output:0strided_slice_2:output:0stack/4:output:0*
N*
T0*
_output_shapes
:i
ReshapeReshapeinputsstack:output:0*
T0*4
_output_shapes"
 :џџџџџџџџџtМk
Mean/reduction_indicesConst*
_output_shapes
:*
dtype0*!
valueB"         
MeanMeanReshape:output:0Mean/reduction_indices:output:0*
T0*3
_output_shapes!
:џџџџџџџџџ*
	keep_dims({
&reduce_variance/Mean/reduction_indicesConst*
_output_shapes
:*
dtype0*!
valueB"         Ў
reduce_variance/MeanMeanReshape:output:0/reduce_variance/Mean/reduction_indices:output:0*
T0*3
_output_shapes!
:џџџџџџџџџ*
	keep_dims(
reduce_variance/subSubReshape:output:0reduce_variance/Mean:output:0*
T0*4
_output_shapes"
 :џџџџџџџџџtМx
reduce_variance/SquareSquarereduce_variance/sub:z:0*
T0*4
_output_shapes"
 :џџџџџџџџџtМ}
(reduce_variance/Mean_1/reduction_indicesConst*
_output_shapes
:*
dtype0*!
valueB"         М
reduce_variance/Mean_1Meanreduce_variance/Square:y:01reduce_variance/Mean_1/reduction_indices:output:0*
T0*3
_output_shapes!
:џџџџџџџџџ*
	keep_dims(j
subSubReshape:output:0Mean:output:0*
T0*4
_output_shapes"
 :џџџџџџџџџtМJ
add/yConst*
_output_shapes
: *
dtype0*
valueB
 *ЭЬЬ={
addAddV2reduce_variance/Mean_1:output:0add/y:output:0*
T0*3
_output_shapes!
:џџџџџџџџџJ
ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    i
MaximumMaximumadd:z:0Const:output:0*
T0*3
_output_shapes!
:џџџџџџџџџW
SqrtSqrtMaximum:z:0*
T0*3
_output_shapes!
:џџџџџџџџџd
truedivRealDivsub:z:0Sqrt:y:0*
T0*4
_output_shapes"
 :џџџџџџџџџtМp
	Reshape_1Reshapetruediv:z:0stack:output:0*
T0*4
_output_shapes"
 :џџџџџџџџџtМv
Reshape_2/ReadVariableOpReadVariableOp!reshape_2_readvariableop_resource*
_output_shapes
:*
dtype0l
Reshape_2/shapeConst*
_output_shapes
:*
dtype0*)
value B"               
	Reshape_2Reshape Reshape_2/ReadVariableOp:value:0Reshape_2/shape:output:0*
T0**
_output_shapes
:q
mulMulReshape_1:output:0Reshape_2:output:0*
T0*4
_output_shapes"
 :џџџџџџџџџtМv
Reshape_3/ReadVariableOpReadVariableOp!reshape_3_readvariableop_resource*
_output_shapes
:*
dtype0l
Reshape_3/shapeConst*
_output_shapes
:*
dtype0*)
value B"               
	Reshape_3Reshape Reshape_3/ReadVariableOp:value:0Reshape_3/shape:output:0*
T0**
_output_shapes
:j
add_1AddV2mul:z:0Reshape_3:output:0*
T0*4
_output_shapes"
 :џџџџџџџџџtМj
	Reshape_4Reshape	add_1:z:0Shape:output:0*
T0*0
_output_shapes
:џџџџџџџџџtМj
IdentityIdentityReshape_4:output:0^NoOp*
T0*0
_output_shapes
:џџџџџџџџџtМ|
NoOpNoOp^Reshape_2/ReadVariableOp^Reshape_3/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :џџџџџџџџџtМ: : 24
Reshape_2/ReadVariableOpReshape_2/ReadVariableOp24
Reshape_3/ReadVariableOpReshape_3/ReadVariableOp:X T
0
_output_shapes
:џџџџџџџџџtМ
 
_user_specified_nameinputs
Ё2

S__inference_group_normalization_4_layer_call_and_return_conditional_losses_21514266

inputs/
!reshape_2_readvariableop_resource:/
!reshape_3_readvariableop_resource:
identityЂReshape_2/ReadVariableOpЂReshape_3/ReadVariableOp;
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
valueB:г
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
valueB:л
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
valueB:л
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
valueB:л
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
value	B :Ћ
stackPackstrided_slice:output:0stack/1:output:0strided_slice_1:output:0strided_slice_2:output:0stack/4:output:0*
N*
T0*
_output_shapes
:i
ReshapeReshapeinputsstack:output:0*
T0*4
_output_shapes"
 :џџџџџџџџџtМk
Mean/reduction_indicesConst*
_output_shapes
:*
dtype0*!
valueB"         
MeanMeanReshape:output:0Mean/reduction_indices:output:0*
T0*3
_output_shapes!
:џџџџџџџџџ*
	keep_dims({
&reduce_variance/Mean/reduction_indicesConst*
_output_shapes
:*
dtype0*!
valueB"         Ў
reduce_variance/MeanMeanReshape:output:0/reduce_variance/Mean/reduction_indices:output:0*
T0*3
_output_shapes!
:џџџџџџџџџ*
	keep_dims(
reduce_variance/subSubReshape:output:0reduce_variance/Mean:output:0*
T0*4
_output_shapes"
 :џџџџџџџџџtМx
reduce_variance/SquareSquarereduce_variance/sub:z:0*
T0*4
_output_shapes"
 :џџџџџџџџџtМ}
(reduce_variance/Mean_1/reduction_indicesConst*
_output_shapes
:*
dtype0*!
valueB"         М
reduce_variance/Mean_1Meanreduce_variance/Square:y:01reduce_variance/Mean_1/reduction_indices:output:0*
T0*3
_output_shapes!
:џџџџџџџџџ*
	keep_dims(j
subSubReshape:output:0Mean:output:0*
T0*4
_output_shapes"
 :џџџџџџџџџtМJ
add/yConst*
_output_shapes
: *
dtype0*
valueB
 *ЭЬЬ={
addAddV2reduce_variance/Mean_1:output:0add/y:output:0*
T0*3
_output_shapes!
:џџџџџџџџџJ
ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    i
MaximumMaximumadd:z:0Const:output:0*
T0*3
_output_shapes!
:џџџџџџџџџW
SqrtSqrtMaximum:z:0*
T0*3
_output_shapes!
:џџџџџџџџџd
truedivRealDivsub:z:0Sqrt:y:0*
T0*4
_output_shapes"
 :џџџџџџџџџtМp
	Reshape_1Reshapetruediv:z:0stack:output:0*
T0*4
_output_shapes"
 :џџџџџџџџџtМv
Reshape_2/ReadVariableOpReadVariableOp!reshape_2_readvariableop_resource*
_output_shapes
:*
dtype0l
Reshape_2/shapeConst*
_output_shapes
:*
dtype0*)
value B"               
	Reshape_2Reshape Reshape_2/ReadVariableOp:value:0Reshape_2/shape:output:0*
T0**
_output_shapes
:q
mulMulReshape_1:output:0Reshape_2:output:0*
T0*4
_output_shapes"
 :џџџџџџџџџtМv
Reshape_3/ReadVariableOpReadVariableOp!reshape_3_readvariableop_resource*
_output_shapes
:*
dtype0l
Reshape_3/shapeConst*
_output_shapes
:*
dtype0*)
value B"               
	Reshape_3Reshape Reshape_3/ReadVariableOp:value:0Reshape_3/shape:output:0*
T0**
_output_shapes
:j
add_1AddV2mul:z:0Reshape_3:output:0*
T0*4
_output_shapes"
 :џџџџџџџџџtМj
	Reshape_4Reshape	add_1:z:0Shape:output:0*
T0*0
_output_shapes
:џџџџџџџџџtМj
IdentityIdentityReshape_4:output:0^NoOp*
T0*0
_output_shapes
:џџџџџџџџџtМ|
NoOpNoOp^Reshape_2/ReadVariableOp^Reshape_3/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :џџџџџџџџџtМ: : 24
Reshape_2/ReadVariableOpReshape_2/ReadVariableOp24
Reshape_3/ReadVariableOpReshape_3/ReadVariableOp:X T
0
_output_shapes
:џџџџџџџџџtМ
 
_user_specified_nameinputs
Ы
c
G__inference_flatten_4_layer_call_and_return_conditional_losses_21514570

inputs
identityV
ConstConst*
_output_shapes
:*
dtype0*
valueB"џџџџРT ^
ReshapeReshapeinputsConst:output:0*
T0*)
_output_shapes
:џџџџџџџџџРЉZ
IdentityIdentityReshape:output:0*
T0*)
_output_shapes
:џџџџџџџџџРЉ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:џџџџџџџџџ:^:W S
/
_output_shapes
:џџџџџџџџџ:^
 
_user_specified_nameinputs
М
H
,__inference_flatten_5_layer_call_fn_21514575

inputs
identityЙ
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *)
_output_shapes
:џџџџџџџџџРЉ* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2 *0J 8 *P
fKRI
G__inference_flatten_5_layer_call_and_return_conditional_losses_21512860b
IdentityIdentityPartitionedCall:output:0*
T0*)
_output_shapes
:џџџџџџџџџРЉ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:џџџџџџџџџ:^:W S
/
_output_shapes
:џџџџџџџџџ:^
 
_user_specified_nameinputs
А
е
&__inference_signature_wrapper_21513642
input_8!
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
г


unknown_18:

unknown_19:

unknown_20:
identityЂStatefulPartitionedCallЭ
StatefulPartitionedCallStatefulPartitionedCallinput_8unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
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
:џџџџџџџџџ*8
_read_only_resource_inputs
	
*2
config_proto" 

CPU

GPU2 *0J 8 *,
f'R%
#__inference__wrapped_model_21512513o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*[
_input_shapesJ
H:џџџџџџџџџtМ: : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Y U
0
_output_shapes
:џџџџџџџџџtМ
!
_user_specified_name	input_8
ѕ
g
K__inference_activation_85_layer_call_and_return_conditional_losses_21512730

inputs
identityO
	LeakyRelu	LeakyReluinputs*/
_output_shapes
:џџџџџџџџџ:^g
IdentityIdentityLeakyRelu:activations:0*
T0*/
_output_shapes
:џџџџџџџџџ:^"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:џџџџџџџџџ:^:W S
/
_output_shapes
:џџџџџџџџџ:^
 
_user_specified_nameinputs

Ё
8__inference_group_normalization_4_layer_call_fn_21514151

inputs
unknown:
	unknown_0:
identityЂStatefulPartitionedCallі
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:џџџџџџџџџtМ*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8 *\
fWRU
S__inference_group_normalization_4_layer_call_and_return_conditional_losses_21512695x
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*0
_output_shapes
:џџџџџџџџџtМ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :џџџџџџџџџtМ: : 22
StatefulPartitionedCallStatefulPartitionedCall:X T
0
_output_shapes
:џџџџџџџџџtМ
 
_user_specified_nameinputs
	
д
9__inference_batch_normalization_10_layer_call_fn_21514341

inputs
unknown:
	unknown_0:
	unknown_1:
	unknown_2:
identityЂStatefulPartitionedCall 
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8 *]
fXRV
T__inference_batch_normalization_10_layer_call_and_return_conditional_losses_21512578
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ
 
_user_specified_nameinputs
Ы

+__inference_dense_17_layer_call_fn_21514632

inputs
unknown:
	unknown_0:
identityЂStatefulPartitionedCallр
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8 *O
fJRH
F__inference_dense_17_layer_call_and_return_conditional_losses_21512904o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:џџџџџџџџџ: : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs
[

E__inference_model_7_layer_call_and_return_conditional_losses_21512911

inputs,
conv2d_57_21512607: 
conv2d_57_21512609:,
conv2d_58_21512630: 
conv2d_58_21512632:,
group_normalization_4_21512696:,
group_normalization_4_21512698:,
conv2d_59_21512712: 
conv2d_59_21512714:-
batch_normalization_10_21512732:-
batch_normalization_10_21512734:-
batch_normalization_10_21512736:-
batch_normalization_10_21512738:,
conv2d_60_21512752: 
conv2d_60_21512754:,
group_normalization_5_21512818:,
group_normalization_5_21512820:,
conv2d_61_21512834: 
conv2d_61_21512836:%
dense_16_21512882:
г

dense_16_21512884:#
dense_17_21512905:
dense_17_21512907:
identityЂ.batch_normalization_10/StatefulPartitionedCallЂ!conv2d_57/StatefulPartitionedCallЂ!conv2d_58/StatefulPartitionedCallЂ!conv2d_59/StatefulPartitionedCallЂ!conv2d_60/StatefulPartitionedCallЂ!conv2d_61/StatefulPartitionedCallЂ dense_16/StatefulPartitionedCallЂ dense_17/StatefulPartitionedCallЂ-group_normalization_4/StatefulPartitionedCallЂ-group_normalization_5/StatefulPartitionedCall
!conv2d_57/StatefulPartitionedCallStatefulPartitionedCallinputsconv2d_57_21512607conv2d_57_21512609*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:џџџџџџџџџtМ*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8 *P
fKRI
G__inference_conv2d_57_layer_call_and_return_conditional_losses_21512606і
activation_82/PartitionedCallPartitionedCall*conv2d_57/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:џџџџџџџџџtМ* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2 *0J 8 *T
fORM
K__inference_activation_82_layer_call_and_return_conditional_losses_21512617Ј
!conv2d_58/StatefulPartitionedCallStatefulPartitionedCall&activation_82/PartitionedCall:output:0conv2d_58_21512630conv2d_58_21512632*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:џџџџџџџџџtМ*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8 *P
fKRI
G__inference_conv2d_58_layer_call_and_return_conditional_losses_21512629і
activation_83/PartitionedCallPartitionedCall*conv2d_58/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:џџџџџџџџџtМ* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2 *0J 8 *T
fORM
K__inference_activation_83_layer_call_and_return_conditional_losses_21512640и
-group_normalization_4/StatefulPartitionedCallStatefulPartitionedCall&activation_83/PartitionedCall:output:0group_normalization_4_21512696group_normalization_4_21512698*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:џџџџџџџџџtМ*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8 *\
fWRU
S__inference_group_normalization_4_layer_call_and_return_conditional_losses_21512695И
!conv2d_59/StatefulPartitionedCallStatefulPartitionedCall6group_normalization_4/StatefulPartitionedCall:output:0conv2d_59_21512712conv2d_59_21512714*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:џџџџџџџџџtМ*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8 *P
fKRI
G__inference_conv2d_59_layer_call_and_return_conditional_losses_21512711і
activation_84/PartitionedCallPartitionedCall*conv2d_59/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:џџџџџџџџџtМ* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2 *0J 8 *T
fORM
K__inference_activation_84_layer_call_and_return_conditional_losses_21512722§
#average_pooling2d_2/PartitionedCallPartitionedCall&activation_84/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:џџџџџџџџџ:^* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2 *0J 8 *Z
fURS
Q__inference_average_pooling2d_2_layer_call_and_return_conditional_losses_21512522ї
activation_85/PartitionedCallPartitionedCall,average_pooling2d_2/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:џџџџџџџџџ:^* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2 *0J 8 *T
fORM
K__inference_activation_85_layer_call_and_return_conditional_losses_21512730Ё
.batch_normalization_10/StatefulPartitionedCallStatefulPartitionedCall&activation_85/PartitionedCall:output:0batch_normalization_10_21512732batch_normalization_10_21512734batch_normalization_10_21512736batch_normalization_10_21512738*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:џџџџџџџџџ:^*&
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8 *]
fXRV
T__inference_batch_normalization_10_layer_call_and_return_conditional_losses_21512547И
!conv2d_60/StatefulPartitionedCallStatefulPartitionedCall7batch_normalization_10/StatefulPartitionedCall:output:0conv2d_60_21512752conv2d_60_21512754*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:џџџџџџџџџ:^*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8 *P
fKRI
G__inference_conv2d_60_layer_call_and_return_conditional_losses_21512751ѕ
activation_86/PartitionedCallPartitionedCall*conv2d_60/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:џџџџџџџџџ:^* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2 *0J 8 *T
fORM
K__inference_activation_86_layer_call_and_return_conditional_losses_21512762з
-group_normalization_5/StatefulPartitionedCallStatefulPartitionedCall&activation_86/PartitionedCall:output:0group_normalization_5_21512818group_normalization_5_21512820*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:џџџџџџџџџ:^*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8 *\
fWRU
S__inference_group_normalization_5_layer_call_and_return_conditional_losses_21512817З
!conv2d_61/StatefulPartitionedCallStatefulPartitionedCall6group_normalization_5/StatefulPartitionedCall:output:0conv2d_61_21512834conv2d_61_21512836*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:џџџџџџџџџ:^*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8 *P
fKRI
G__inference_conv2d_61_layer_call_and_return_conditional_losses_21512833ѕ
activation_87/PartitionedCallPartitionedCall*conv2d_61/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:џџџџџџџџџ:^* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2 *0J 8 *T
fORM
K__inference_activation_87_layer_call_and_return_conditional_losses_21512844у
flatten_4/PartitionedCallPartitionedCall&activation_85/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *)
_output_shapes
:џџџџџџџџџРЉ* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2 *0J 8 *P
fKRI
G__inference_flatten_4_layer_call_and_return_conditional_losses_21512852у
flatten_5/PartitionedCallPartitionedCall&activation_87/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *)
_output_shapes
:џџџџџџџџџРЉ* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2 *0J 8 *P
fKRI
G__inference_flatten_5_layer_call_and_return_conditional_losses_21512860
concatenate_2/PartitionedCallPartitionedCall"flatten_4/PartitionedCall:output:0"flatten_5/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *)
_output_shapes
:џџџџџџџџџг
* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2 *0J 8 *T
fORM
K__inference_concatenate_2_layer_call_and_return_conditional_losses_21512869
 dense_16/StatefulPartitionedCallStatefulPartitionedCall&concatenate_2/PartitionedCall:output:0dense_16_21512882dense_16_21512884*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8 *O
fJRH
F__inference_dense_16_layer_call_and_return_conditional_losses_21512881ь
activation_88/PartitionedCallPartitionedCall)dense_16/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2 *0J 8 *T
fORM
K__inference_activation_88_layer_call_and_return_conditional_losses_21512892
 dense_17/StatefulPartitionedCallStatefulPartitionedCall&activation_88/PartitionedCall:output:0dense_17_21512905dense_17_21512907*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8 *O
fJRH
F__inference_dense_17_layer_call_and_return_conditional_losses_21512904x
IdentityIdentity)dense_17/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџб
NoOpNoOp/^batch_normalization_10/StatefulPartitionedCall"^conv2d_57/StatefulPartitionedCall"^conv2d_58/StatefulPartitionedCall"^conv2d_59/StatefulPartitionedCall"^conv2d_60/StatefulPartitionedCall"^conv2d_61/StatefulPartitionedCall!^dense_16/StatefulPartitionedCall!^dense_17/StatefulPartitionedCall.^group_normalization_4/StatefulPartitionedCall.^group_normalization_5/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*[
_input_shapesJ
H:џџџџџџџџџtМ: : : : : : : : : : : : : : : : : : : : : : 2`
.batch_normalization_10/StatefulPartitionedCall.batch_normalization_10/StatefulPartitionedCall2F
!conv2d_57/StatefulPartitionedCall!conv2d_57/StatefulPartitionedCall2F
!conv2d_58/StatefulPartitionedCall!conv2d_58/StatefulPartitionedCall2F
!conv2d_59/StatefulPartitionedCall!conv2d_59/StatefulPartitionedCall2F
!conv2d_60/StatefulPartitionedCall!conv2d_60/StatefulPartitionedCall2F
!conv2d_61/StatefulPartitionedCall!conv2d_61/StatefulPartitionedCall2D
 dense_16/StatefulPartitionedCall dense_16/StatefulPartitionedCall2D
 dense_17/StatefulPartitionedCall dense_17/StatefulPartitionedCall2^
-group_normalization_4/StatefulPartitionedCall-group_normalization_4/StatefulPartitionedCall2^
-group_normalization_5/StatefulPartitionedCall-group_normalization_5/StatefulPartitionedCall:X T
0
_output_shapes
:џџџџџџџџџtМ
 
_user_specified_nameinputs
љ
g
K__inference_activation_82_layer_call_and_return_conditional_losses_21512617

inputs
identityP
	LeakyRelu	LeakyReluinputs*0
_output_shapes
:џџџџџџџџџtМh
IdentityIdentityLeakyRelu:activations:0*
T0*0
_output_shapes
:џџџџџџџџџtМ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:џџџџџџџџџtМ:X T
0
_output_shapes
:џџџџџџџџџtМ
 
_user_specified_nameinputs
?
Щ
!__inference__traced_save_21514755
file_prefix/
+savev2_conv2d_57_kernel_read_readvariableop-
)savev2_conv2d_57_bias_read_readvariableop/
+savev2_conv2d_58_kernel_read_readvariableop-
)savev2_conv2d_58_bias_read_readvariableop:
6savev2_group_normalization_4_gamma_read_readvariableop9
5savev2_group_normalization_4_beta_read_readvariableop/
+savev2_conv2d_59_kernel_read_readvariableop-
)savev2_conv2d_59_bias_read_readvariableop;
7savev2_batch_normalization_10_gamma_read_readvariableop:
6savev2_batch_normalization_10_beta_read_readvariableopA
=savev2_batch_normalization_10_moving_mean_read_readvariableopE
Asavev2_batch_normalization_10_moving_variance_read_readvariableop/
+savev2_conv2d_60_kernel_read_readvariableop-
)savev2_conv2d_60_bias_read_readvariableop:
6savev2_group_normalization_5_gamma_read_readvariableop9
5savev2_group_normalization_5_beta_read_readvariableop/
+savev2_conv2d_61_kernel_read_readvariableop-
)savev2_conv2d_61_bias_read_readvariableop.
*savev2_dense_16_kernel_read_readvariableop,
(savev2_dense_16_bias_read_readvariableop.
*savev2_dense_17_kernel_read_readvariableop,
(savev2_dense_17_bias_read_readvariableop'
#savev2_sgd_iter_read_readvariableop	(
$savev2_sgd_decay_read_readvariableop0
,savev2_sgd_learning_rate_read_readvariableop+
'savev2_sgd_momentum_read_readvariableop&
"savev2_total_1_read_readvariableop&
"savev2_count_1_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop
savev2_const

identity_1ЂMergeV2Checkpointsw
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
_temp/part
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
value	B : 
ShardedFilenameShardedFilenameStringJoin:output:0ShardedFilename/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: у
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*
valueBџB6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-2/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/beta/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-4/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-4/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-4/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-4/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-5/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-5/bias/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-6/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-6/beta/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-7/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-7/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-8/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-8/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-9/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-9/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB-optimizer/momentum/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPHЋ
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*Q
valueHBFB B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B Б
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0+savev2_conv2d_57_kernel_read_readvariableop)savev2_conv2d_57_bias_read_readvariableop+savev2_conv2d_58_kernel_read_readvariableop)savev2_conv2d_58_bias_read_readvariableop6savev2_group_normalization_4_gamma_read_readvariableop5savev2_group_normalization_4_beta_read_readvariableop+savev2_conv2d_59_kernel_read_readvariableop)savev2_conv2d_59_bias_read_readvariableop7savev2_batch_normalization_10_gamma_read_readvariableop6savev2_batch_normalization_10_beta_read_readvariableop=savev2_batch_normalization_10_moving_mean_read_readvariableopAsavev2_batch_normalization_10_moving_variance_read_readvariableop+savev2_conv2d_60_kernel_read_readvariableop)savev2_conv2d_60_bias_read_readvariableop6savev2_group_normalization_5_gamma_read_readvariableop5savev2_group_normalization_5_beta_read_readvariableop+savev2_conv2d_61_kernel_read_readvariableop)savev2_conv2d_61_bias_read_readvariableop*savev2_dense_16_kernel_read_readvariableop(savev2_dense_16_bias_read_readvariableop*savev2_dense_17_kernel_read_readvariableop(savev2_dense_17_bias_read_readvariableop#savev2_sgd_iter_read_readvariableop$savev2_sgd_decay_read_readvariableop,savev2_sgd_learning_rate_read_readvariableop'savev2_sgd_momentum_read_readvariableop"savev2_total_1_read_readvariableop"savev2_count_1_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableopsavev2_const"/device:CPU:0*
_output_shapes
 *-
dtypes#
!2	
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:
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

identity_1Identity_1:output:0*ѓ
_input_shapesс
о: :::::::::::::::::::
г
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
г
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
v
Ђ
$__inference__traced_restore_21514855
file_prefix;
!assignvariableop_conv2d_57_kernel:/
!assignvariableop_1_conv2d_57_bias:=
#assignvariableop_2_conv2d_58_kernel:/
!assignvariableop_3_conv2d_58_bias:<
.assignvariableop_4_group_normalization_4_gamma:;
-assignvariableop_5_group_normalization_4_beta:=
#assignvariableop_6_conv2d_59_kernel:/
!assignvariableop_7_conv2d_59_bias:=
/assignvariableop_8_batch_normalization_10_gamma:<
.assignvariableop_9_batch_normalization_10_beta:D
6assignvariableop_10_batch_normalization_10_moving_mean:H
:assignvariableop_11_batch_normalization_10_moving_variance:>
$assignvariableop_12_conv2d_60_kernel:0
"assignvariableop_13_conv2d_60_bias:=
/assignvariableop_14_group_normalization_5_gamma:<
.assignvariableop_15_group_normalization_5_beta:>
$assignvariableop_16_conv2d_61_kernel:0
"assignvariableop_17_conv2d_61_bias:7
#assignvariableop_18_dense_16_kernel:
г
/
!assignvariableop_19_dense_16_bias:5
#assignvariableop_20_dense_17_kernel:/
!assignvariableop_21_dense_17_bias:&
assignvariableop_22_sgd_iter:	 '
assignvariableop_23_sgd_decay: /
%assignvariableop_24_sgd_learning_rate: *
 assignvariableop_25_sgd_momentum: %
assignvariableop_26_total_1: %
assignvariableop_27_count_1: #
assignvariableop_28_total: #
assignvariableop_29_count: 
identity_31ЂAssignVariableOpЂAssignVariableOp_1ЂAssignVariableOp_10ЂAssignVariableOp_11ЂAssignVariableOp_12ЂAssignVariableOp_13ЂAssignVariableOp_14ЂAssignVariableOp_15ЂAssignVariableOp_16ЂAssignVariableOp_17ЂAssignVariableOp_18ЂAssignVariableOp_19ЂAssignVariableOp_2ЂAssignVariableOp_20ЂAssignVariableOp_21ЂAssignVariableOp_22ЂAssignVariableOp_23ЂAssignVariableOp_24ЂAssignVariableOp_25ЂAssignVariableOp_26ЂAssignVariableOp_27ЂAssignVariableOp_28ЂAssignVariableOp_29ЂAssignVariableOp_3ЂAssignVariableOp_4ЂAssignVariableOp_5ЂAssignVariableOp_6ЂAssignVariableOp_7ЂAssignVariableOp_8ЂAssignVariableOp_9ц
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*
valueBџB6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-2/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/beta/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-4/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-4/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-4/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-4/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-5/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-5/bias/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-6/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-6/beta/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-7/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-7/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-8/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-8/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-9/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-9/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB-optimizer/momentum/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPHЎ
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*Q
valueHBFB B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B К
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*
_output_shapes~
|:::::::::::::::::::::::::::::::*-
dtypes#
!2	[
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOpAssignVariableOp!assignvariableop_conv2d_57_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_1AssignVariableOp!assignvariableop_1_conv2d_57_biasIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_2AssignVariableOp#assignvariableop_2_conv2d_58_kernelIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_3AssignVariableOp!assignvariableop_3_conv2d_58_biasIdentity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_4AssignVariableOp.assignvariableop_4_group_normalization_4_gammaIdentity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_5AssignVariableOp-assignvariableop_5_group_normalization_4_betaIdentity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_6AssignVariableOp#assignvariableop_6_conv2d_59_kernelIdentity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_7AssignVariableOp!assignvariableop_7_conv2d_59_biasIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_8AssignVariableOp/assignvariableop_8_batch_normalization_10_gammaIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_9AssignVariableOp.assignvariableop_9_batch_normalization_10_betaIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:Ї
AssignVariableOp_10AssignVariableOp6assignvariableop_10_batch_normalization_10_moving_meanIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:Ћ
AssignVariableOp_11AssignVariableOp:assignvariableop_11_batch_normalization_10_moving_varianceIdentity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_12AssignVariableOp$assignvariableop_12_conv2d_60_kernelIdentity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_13AssignVariableOp"assignvariableop_13_conv2d_60_biasIdentity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
: 
AssignVariableOp_14AssignVariableOp/assignvariableop_14_group_normalization_5_gammaIdentity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_15AssignVariableOp.assignvariableop_15_group_normalization_5_betaIdentity_15:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_16AssignVariableOp$assignvariableop_16_conv2d_61_kernelIdentity_16:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_17AssignVariableOp"assignvariableop_17_conv2d_61_biasIdentity_17:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_18AssignVariableOp#assignvariableop_18_dense_16_kernelIdentity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_19AssignVariableOp!assignvariableop_19_dense_16_biasIdentity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_20AssignVariableOp#assignvariableop_20_dense_17_kernelIdentity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_21AssignVariableOp!assignvariableop_21_dense_17_biasIdentity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0	*
_output_shapes
:
AssignVariableOp_22AssignVariableOpassignvariableop_22_sgd_iterIdentity_22:output:0"/device:CPU:0*
_output_shapes
 *
dtype0	_
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_23AssignVariableOpassignvariableop_23_sgd_decayIdentity_23:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_24AssignVariableOp%assignvariableop_24_sgd_learning_rateIdentity_24:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_25AssignVariableOp assignvariableop_25_sgd_momentumIdentity_25:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_26AssignVariableOpassignvariableop_26_total_1Identity_26:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_27AssignVariableOpassignvariableop_27_count_1Identity_27:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_28IdentityRestoreV2:tensors:28"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_28AssignVariableOpassignvariableop_28_totalIdentity_28:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_29IdentityRestoreV2:tensors:29"/device:CPU:0*
T0*
_output_shapes
:
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
: а
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
Њ


G__inference_conv2d_60_layer_call_and_return_conditional_losses_21514396

inputs8
conv2d_readvariableop_resource:-
biasadd_readvariableop_resource:
identityЂBiasAdd/ReadVariableOpЂConv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:*
dtype0
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:џџџџџџџџџ:^*
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
:џџџџџџџџџ:^g
IdentityIdentityBiasAdd:output:0^NoOp*
T0*/
_output_shapes
:џџџџџџџџџ:^w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:џџџџџџџџџ:^: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:џџџџџџџџџ:^
 
_user_specified_nameinputs
2

S__inference_group_normalization_5_layer_call_and_return_conditional_losses_21513084

inputs/
!reshape_2_readvariableop_resource:/
!reshape_3_readvariableop_resource:
identityЂReshape_2/ReadVariableOpЂReshape_3/ReadVariableOp;
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
valueB:г
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
valueB:л
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
valueB:л
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
valueB:л
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
value	B :Ћ
stackPackstrided_slice:output:0stack/1:output:0strided_slice_1:output:0strided_slice_2:output:0stack/4:output:0*
N*
T0*
_output_shapes
:h
ReshapeReshapeinputsstack:output:0*
T0*3
_output_shapes!
:џџџџџџџџџ:^k
Mean/reduction_indicesConst*
_output_shapes
:*
dtype0*!
valueB"         
MeanMeanReshape:output:0Mean/reduction_indices:output:0*
T0*3
_output_shapes!
:џџџџџџџџџ*
	keep_dims({
&reduce_variance/Mean/reduction_indicesConst*
_output_shapes
:*
dtype0*!
valueB"         Ў
reduce_variance/MeanMeanReshape:output:0/reduce_variance/Mean/reduction_indices:output:0*
T0*3
_output_shapes!
:џџџџџџџџџ*
	keep_dims(
reduce_variance/subSubReshape:output:0reduce_variance/Mean:output:0*
T0*3
_output_shapes!
:џџџџџџџџџ:^w
reduce_variance/SquareSquarereduce_variance/sub:z:0*
T0*3
_output_shapes!
:џџџџџџџџџ:^}
(reduce_variance/Mean_1/reduction_indicesConst*
_output_shapes
:*
dtype0*!
valueB"         М
reduce_variance/Mean_1Meanreduce_variance/Square:y:01reduce_variance/Mean_1/reduction_indices:output:0*
T0*3
_output_shapes!
:џџџџџџџџџ*
	keep_dims(i
subSubReshape:output:0Mean:output:0*
T0*3
_output_shapes!
:џџџџџџџџџ:^J
add/yConst*
_output_shapes
: *
dtype0*
valueB
 *ЭЬЬ={
addAddV2reduce_variance/Mean_1:output:0add/y:output:0*
T0*3
_output_shapes!
:џџџџџџџџџJ
ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    i
MaximumMaximumadd:z:0Const:output:0*
T0*3
_output_shapes!
:џџџџџџџџџW
SqrtSqrtMaximum:z:0*
T0*3
_output_shapes!
:џџџџџџџџџc
truedivRealDivsub:z:0Sqrt:y:0*
T0*3
_output_shapes!
:џџџџџџџџџ:^o
	Reshape_1Reshapetruediv:z:0stack:output:0*
T0*3
_output_shapes!
:џџџџџџџџџ:^v
Reshape_2/ReadVariableOpReadVariableOp!reshape_2_readvariableop_resource*
_output_shapes
:*
dtype0l
Reshape_2/shapeConst*
_output_shapes
:*
dtype0*)
value B"               
	Reshape_2Reshape Reshape_2/ReadVariableOp:value:0Reshape_2/shape:output:0*
T0**
_output_shapes
:p
mulMulReshape_1:output:0Reshape_2:output:0*
T0*3
_output_shapes!
:џџџџџџџџџ:^v
Reshape_3/ReadVariableOpReadVariableOp!reshape_3_readvariableop_resource*
_output_shapes
:*
dtype0l
Reshape_3/shapeConst*
_output_shapes
:*
dtype0*)
value B"               
	Reshape_3Reshape Reshape_3/ReadVariableOp:value:0Reshape_3/shape:output:0*
T0**
_output_shapes
:i
add_1AddV2mul:z:0Reshape_3:output:0*
T0*3
_output_shapes!
:џџџџџџџџџ:^i
	Reshape_4Reshape	add_1:z:0Shape:output:0*
T0*/
_output_shapes
:џџџџџџџџџ:^i
IdentityIdentityReshape_4:output:0^NoOp*
T0*/
_output_shapes
:џџџџџџџџџ:^|
NoOpNoOp^Reshape_2/ReadVariableOp^Reshape_3/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:џџџџџџџџџ:^: : 24
Reshape_2/ReadVariableOpReshape_2/ReadVariableOp24
Reshape_3/ReadVariableOpReshape_3/ReadVariableOp:W S
/
_output_shapes
:џџџџџџџџџ:^
 
_user_specified_nameinputs
Њ


G__inference_conv2d_61_layer_call_and_return_conditional_losses_21512833

inputs8
conv2d_readvariableop_resource:-
biasadd_readvariableop_resource:
identityЂBiasAdd/ReadVariableOpЂConv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:*
dtype0
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:џџџџџџџџџ:^*
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
:џџџџџџџџџ:^g
IdentityIdentityBiasAdd:output:0^NoOp*
T0*/
_output_shapes
:џџџџџџџџџ:^w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:џџџџџџџџџ:^: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:џџџџџџџџџ:^
 
_user_specified_nameinputs
а
w
K__inference_concatenate_2_layer_call_and_return_conditional_losses_21514594
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
:џџџџџџџџџг
Y
IdentityIdentityconcat:output:0*
T0*)
_output_shapes
:џџџџџџџџџг
"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*=
_input_shapes,
*:џџџџџџџџџРЉ:џџџџџџџџџРЉ:S O
)
_output_shapes
:џџџџџџџџџРЉ
"
_user_specified_name
inputs/0:SO
)
_output_shapes
:џџџџџџџџџРЉ
"
_user_specified_name
inputs/1"Е	L
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*Д
serving_default 
D
input_89
serving_default_input_8:0џџџџџџџџџtМ<
dense_170
StatefulPartitionedCall:0џџџџџџџџџtensorflow/serving/predict:ьЭ

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
н
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
Ѕ
)	variables
*trainable_variables
+regularization_losses
,	keras_api
-__call__
*.&call_and_return_all_conditional_losses"
_tf_keras_layer
н
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
Ѕ
8	variables
9trainable_variables
:regularization_losses
;	keras_api
<__call__
*=&call_and_return_all_conditional_losses"
_tf_keras_layer
К
>	variables
?trainable_variables
@regularization_losses
A	keras_api
B__call__
*C&call_and_return_all_conditional_losses
	Dgamma
Ebeta"
_tf_keras_layer
н
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
Ѕ
O	variables
Ptrainable_variables
Qregularization_losses
R	keras_api
S__call__
*T&call_and_return_all_conditional_losses"
_tf_keras_layer
Ѕ
U	variables
Vtrainable_variables
Wregularization_losses
X	keras_api
Y__call__
*Z&call_and_return_all_conditional_losses"
_tf_keras_layer
Ѕ
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
н
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
Ѕ
u	variables
vtrainable_variables
wregularization_losses
x	keras_api
y__call__
*z&call_and_return_all_conditional_losses"
_tf_keras_layer
Н
{	variables
|trainable_variables
}regularization_losses
~	keras_api
__call__
+&call_and_return_all_conditional_losses

gamma
	beta"
_tf_keras_layer
ц
	variables
trainable_variables
regularization_losses
	keras_api
__call__
+&call_and_return_all_conditional_losses
kernel
	bias
!_jit_compiled_convolution_op"
_tf_keras_layer
Ћ
	variables
trainable_variables
regularization_losses
	keras_api
__call__
+&call_and_return_all_conditional_losses"
_tf_keras_layer
Ћ
	variables
trainable_variables
regularization_losses
	keras_api
__call__
+&call_and_return_all_conditional_losses"
_tf_keras_layer
Ћ
	variables
trainable_variables
regularization_losses
	keras_api
__call__
+&call_and_return_all_conditional_losses"
_tf_keras_layer
Ћ
	variables
trainable_variables
 regularization_losses
Ё	keras_api
Ђ__call__
+Ѓ&call_and_return_all_conditional_losses"
_tf_keras_layer
У
Є	variables
Ѕtrainable_variables
Іregularization_losses
Ї	keras_api
Ј__call__
+Љ&call_and_return_all_conditional_losses
Њkernel
	Ћbias"
_tf_keras_layer
Ћ
Ќ	variables
­trainable_variables
Ўregularization_losses
Џ	keras_api
А__call__
+Б&call_and_return_all_conditional_losses"
_tf_keras_layer
У
В	variables
Гtrainable_variables
Дregularization_losses
Е	keras_api
Ж__call__
+З&call_and_return_all_conditional_losses
Иkernel
	Йbias"
_tf_keras_layer
Ю
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
14
15
16
17
Њ18
Ћ19
И20
Й21"
trackable_list_wrapper
О
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
12
13
14
15
Њ16
Ћ17
И18
Й19"
trackable_list_wrapper
 "
trackable_list_wrapper
Я
Кnon_trainable_variables
Лlayers
Мmetrics
 Нlayer_regularization_losses
Оlayer_metrics
	variables
trainable_variables
regularization_losses
__call__
_default_save_signature
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
х
Пtrace_0
Рtrace_1
Сtrace_2
Тtrace_32ђ
*__inference_model_7_layer_call_fn_21512958
*__inference_model_7_layer_call_fn_21513691
*__inference_model_7_layer_call_fn_21513740
*__inference_model_7_layer_call_fn_21513449П
ЖВВ
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 zПtrace_0zРtrace_1zСtrace_2zТtrace_3
б
Уtrace_0
Фtrace_1
Хtrace_2
Цtrace_32о
E__inference_model_7_layer_call_and_return_conditional_losses_21513912
E__inference_model_7_layer_call_and_return_conditional_losses_21514084
E__inference_model_7_layer_call_and_return_conditional_losses_21513518
E__inference_model_7_layer_call_and_return_conditional_losses_21513587П
ЖВВ
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 zУtrace_0zФtrace_1zХtrace_2zЦtrace_3
ЮBЫ
#__inference__wrapped_model_21512513input_8"
В
FullArgSpec
args 
varargsjargs
varkwjkwargs
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
M
	Чiter

Шdecay
Щlearning_rate
Ъmomentum"
	optimizer
-
Ыserving_default"
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
В
Ьnon_trainable_variables
Эlayers
Юmetrics
 Яlayer_regularization_losses
аlayer_metrics
 	variables
!trainable_variables
"regularization_losses
$__call__
*%&call_and_return_all_conditional_losses
&%"call_and_return_conditional_losses"
_generic_user_object
ђ
бtrace_02г
,__inference_conv2d_57_layer_call_fn_21514093Ђ
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 zбtrace_0

вtrace_02ю
G__inference_conv2d_57_layer_call_and_return_conditional_losses_21514103Ђ
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 zвtrace_0
*:(2conv2d_57/kernel
:2conv2d_57/bias
Д2БЎ
ЃВ
FullArgSpec'
args
jself
jinputs
jkernel
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 0
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
В
гnon_trainable_variables
дlayers
еmetrics
 жlayer_regularization_losses
зlayer_metrics
)	variables
*trainable_variables
+regularization_losses
-__call__
*.&call_and_return_all_conditional_losses
&."call_and_return_conditional_losses"
_generic_user_object
і
иtrace_02з
0__inference_activation_82_layer_call_fn_21514108Ђ
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 zиtrace_0

йtrace_02ђ
K__inference_activation_82_layer_call_and_return_conditional_losses_21514113Ђ
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 zйtrace_0
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
В
кnon_trainable_variables
лlayers
мmetrics
 нlayer_regularization_losses
оlayer_metrics
/	variables
0trainable_variables
1regularization_losses
3__call__
*4&call_and_return_all_conditional_losses
&4"call_and_return_conditional_losses"
_generic_user_object
ђ
пtrace_02г
,__inference_conv2d_58_layer_call_fn_21514122Ђ
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 zпtrace_0

рtrace_02ю
G__inference_conv2d_58_layer_call_and_return_conditional_losses_21514132Ђ
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 zрtrace_0
*:(2conv2d_58/kernel
:2conv2d_58/bias
Д2БЎ
ЃВ
FullArgSpec'
args
jself
jinputs
jkernel
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 0
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
В
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
і
цtrace_02з
0__inference_activation_83_layer_call_fn_21514137Ђ
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 zцtrace_0

чtrace_02ђ
K__inference_activation_83_layer_call_and_return_conditional_losses_21514142Ђ
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
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
В
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
ї
эtrace_0
юtrace_12М
8__inference_group_normalization_4_layer_call_fn_21514151
8__inference_group_normalization_4_layer_call_fn_21514160Х
МВИ
FullArgSpec
args
jself
jinputs
varargs
 
varkwjkwargs
defaults
 

kwonlyargs

jtraining%
kwonlydefaultsЊ

trainingp 
annotationsЊ *
 zэtrace_0zюtrace_1
­
яtrace_0
№trace_12ђ
S__inference_group_normalization_4_layer_call_and_return_conditional_losses_21514213
S__inference_group_normalization_4_layer_call_and_return_conditional_losses_21514266Х
МВИ
FullArgSpec
args
jself
jinputs
varargs
 
varkwjkwargs
defaults
 

kwonlyargs

jtraining%
kwonlydefaultsЊ

trainingp 
annotationsЊ *
 zяtrace_0z№trace_1
):'2group_normalization_4/gamma
(:&2group_normalization_4/beta
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
В
ёnon_trainable_variables
ђlayers
ѓmetrics
 єlayer_regularization_losses
ѕlayer_metrics
F	variables
Gtrainable_variables
Hregularization_losses
J__call__
*K&call_and_return_all_conditional_losses
&K"call_and_return_conditional_losses"
_generic_user_object
ђ
іtrace_02г
,__inference_conv2d_59_layer_call_fn_21514275Ђ
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 zіtrace_0

їtrace_02ю
G__inference_conv2d_59_layer_call_and_return_conditional_losses_21514285Ђ
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 zїtrace_0
*:(2conv2d_59/kernel
:2conv2d_59/bias
Д2БЎ
ЃВ
FullArgSpec'
args
jself
jinputs
jkernel
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 0
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
В
јnon_trainable_variables
љlayers
њmetrics
 ћlayer_regularization_losses
ќlayer_metrics
O	variables
Ptrainable_variables
Qregularization_losses
S__call__
*T&call_and_return_all_conditional_losses
&T"call_and_return_conditional_losses"
_generic_user_object
і
§trace_02з
0__inference_activation_84_layer_call_fn_21514290Ђ
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 z§trace_0

ўtrace_02ђ
K__inference_activation_84_layer_call_and_return_conditional_losses_21514295Ђ
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 zўtrace_0
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
В
џnon_trainable_variables
layers
metrics
 layer_regularization_losses
layer_metrics
U	variables
Vtrainable_variables
Wregularization_losses
Y__call__
*Z&call_and_return_all_conditional_losses
&Z"call_and_return_conditional_losses"
_generic_user_object
ќ
trace_02н
6__inference_average_pooling2d_2_layer_call_fn_21514300Ђ
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 ztrace_0

trace_02ј
Q__inference_average_pooling2d_2_layer_call_and_return_conditional_losses_21514305Ђ
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 ztrace_0
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
В
non_trainable_variables
layers
metrics
 layer_regularization_losses
layer_metrics
[	variables
\trainable_variables
]regularization_losses
___call__
*`&call_and_return_all_conditional_losses
&`"call_and_return_conditional_losses"
_generic_user_object
і
trace_02з
0__inference_activation_85_layer_call_fn_21514310Ђ
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 ztrace_0

trace_02ђ
K__inference_activation_85_layer_call_and_return_conditional_losses_21514315Ђ
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 ztrace_0
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
В
non_trainable_variables
layers
metrics
 layer_regularization_losses
layer_metrics
a	variables
btrainable_variables
cregularization_losses
e__call__
*f&call_and_return_all_conditional_losses
&f"call_and_return_conditional_losses"
_generic_user_object
ч
trace_0
trace_12Ќ
9__inference_batch_normalization_10_layer_call_fn_21514328
9__inference_batch_normalization_10_layer_call_fn_21514341Г
ЊВІ
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 ztrace_0ztrace_1

trace_0
trace_12т
T__inference_batch_normalization_10_layer_call_and_return_conditional_losses_21514359
T__inference_batch_normalization_10_layer_call_and_return_conditional_losses_21514377Г
ЊВІ
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 ztrace_0ztrace_1
 "
trackable_list_wrapper
*:(2batch_normalization_10/gamma
):'2batch_normalization_10/beta
2:0 (2"batch_normalization_10/moving_mean
6:4 (2&batch_normalization_10/moving_variance
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
В
non_trainable_variables
layers
metrics
 layer_regularization_losses
layer_metrics
l	variables
mtrainable_variables
nregularization_losses
p__call__
*q&call_and_return_all_conditional_losses
&q"call_and_return_conditional_losses"
_generic_user_object
ђ
trace_02г
,__inference_conv2d_60_layer_call_fn_21514386Ђ
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 ztrace_0

trace_02ю
G__inference_conv2d_60_layer_call_and_return_conditional_losses_21514396Ђ
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 ztrace_0
*:(2conv2d_60/kernel
:2conv2d_60/bias
Д2БЎ
ЃВ
FullArgSpec'
args
jself
jinputs
jkernel
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 0
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
В
non_trainable_variables
layers
metrics
  layer_regularization_losses
Ёlayer_metrics
u	variables
vtrainable_variables
wregularization_losses
y__call__
*z&call_and_return_all_conditional_losses
&z"call_and_return_conditional_losses"
_generic_user_object
і
Ђtrace_02з
0__inference_activation_86_layer_call_fn_21514401Ђ
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 zЂtrace_0

Ѓtrace_02ђ
K__inference_activation_86_layer_call_and_return_conditional_losses_21514406Ђ
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 zЃtrace_0
0
0
1"
trackable_list_wrapper
0
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
Д
Єnon_trainable_variables
Ѕlayers
Іmetrics
 Їlayer_regularization_losses
Јlayer_metrics
{	variables
|trainable_variables
}regularization_losses
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses"
_generic_user_object
ї
Љtrace_0
Њtrace_12М
8__inference_group_normalization_5_layer_call_fn_21514415
8__inference_group_normalization_5_layer_call_fn_21514424Х
МВИ
FullArgSpec
args
jself
jinputs
varargs
 
varkwjkwargs
defaults
 

kwonlyargs

jtraining%
kwonlydefaultsЊ

trainingp 
annotationsЊ *
 zЉtrace_0zЊtrace_1
­
Ћtrace_0
Ќtrace_12ђ
S__inference_group_normalization_5_layer_call_and_return_conditional_losses_21514477
S__inference_group_normalization_5_layer_call_and_return_conditional_losses_21514530Х
МВИ
FullArgSpec
args
jself
jinputs
varargs
 
varkwjkwargs
defaults
 

kwonlyargs

jtraining%
kwonlydefaultsЊ

trainingp 
annotationsЊ *
 zЋtrace_0zЌtrace_1
):'2group_normalization_5/gamma
(:&2group_normalization_5/beta
0
0
1"
trackable_list_wrapper
0
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
И
­non_trainable_variables
Ўlayers
Џmetrics
 Аlayer_regularization_losses
Бlayer_metrics
	variables
trainable_variables
regularization_losses
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses"
_generic_user_object
ђ
Вtrace_02г
,__inference_conv2d_61_layer_call_fn_21514539Ђ
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 zВtrace_0

Гtrace_02ю
G__inference_conv2d_61_layer_call_and_return_conditional_losses_21514549Ђ
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 zГtrace_0
*:(2conv2d_61/kernel
:2conv2d_61/bias
Д2БЎ
ЃВ
FullArgSpec'
args
jself
jinputs
jkernel
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 0
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
И
Дnon_trainable_variables
Еlayers
Жmetrics
 Зlayer_regularization_losses
Иlayer_metrics
	variables
trainable_variables
regularization_losses
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses"
_generic_user_object
і
Йtrace_02з
0__inference_activation_87_layer_call_fn_21514554Ђ
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 zЙtrace_0

Кtrace_02ђ
K__inference_activation_87_layer_call_and_return_conditional_losses_21514559Ђ
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 zКtrace_0
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
И
Лnon_trainable_variables
Мlayers
Нmetrics
 Оlayer_regularization_losses
Пlayer_metrics
	variables
trainable_variables
regularization_losses
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses"
_generic_user_object
ђ
Рtrace_02г
,__inference_flatten_4_layer_call_fn_21514564Ђ
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 zРtrace_0

Сtrace_02ю
G__inference_flatten_4_layer_call_and_return_conditional_losses_21514570Ђ
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 zСtrace_0
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
И
Тnon_trainable_variables
Уlayers
Фmetrics
 Хlayer_regularization_losses
Цlayer_metrics
	variables
trainable_variables
regularization_losses
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses"
_generic_user_object
ђ
Чtrace_02г
,__inference_flatten_5_layer_call_fn_21514575Ђ
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 zЧtrace_0

Шtrace_02ю
G__inference_flatten_5_layer_call_and_return_conditional_losses_21514581Ђ
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 zШtrace_0
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
И
Щnon_trainable_variables
Ъlayers
Ыmetrics
 Ьlayer_regularization_losses
Эlayer_metrics
	variables
trainable_variables
 regularization_losses
Ђ__call__
+Ѓ&call_and_return_all_conditional_losses
'Ѓ"call_and_return_conditional_losses"
_generic_user_object
і
Юtrace_02з
0__inference_concatenate_2_layer_call_fn_21514587Ђ
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 zЮtrace_0

Яtrace_02ђ
K__inference_concatenate_2_layer_call_and_return_conditional_losses_21514594Ђ
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 zЯtrace_0
0
Њ0
Ћ1"
trackable_list_wrapper
0
Њ0
Ћ1"
trackable_list_wrapper
 "
trackable_list_wrapper
И
аnon_trainable_variables
бlayers
вmetrics
 гlayer_regularization_losses
дlayer_metrics
Є	variables
Ѕtrainable_variables
Іregularization_losses
Ј__call__
+Љ&call_and_return_all_conditional_losses
'Љ"call_and_return_conditional_losses"
_generic_user_object
ё
еtrace_02в
+__inference_dense_16_layer_call_fn_21514603Ђ
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 zеtrace_0

жtrace_02э
F__inference_dense_16_layer_call_and_return_conditional_losses_21514613Ђ
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 zжtrace_0
#:!
г
2dense_16/kernel
:2dense_16/bias
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
И
зnon_trainable_variables
иlayers
йmetrics
 кlayer_regularization_losses
лlayer_metrics
Ќ	variables
­trainable_variables
Ўregularization_losses
А__call__
+Б&call_and_return_all_conditional_losses
'Б"call_and_return_conditional_losses"
_generic_user_object
і
мtrace_02з
0__inference_activation_88_layer_call_fn_21514618Ђ
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 zмtrace_0

нtrace_02ђ
K__inference_activation_88_layer_call_and_return_conditional_losses_21514623Ђ
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 zнtrace_0
0
И0
Й1"
trackable_list_wrapper
0
И0
Й1"
trackable_list_wrapper
 "
trackable_list_wrapper
И
оnon_trainable_variables
пlayers
рmetrics
 сlayer_regularization_losses
тlayer_metrics
В	variables
Гtrainable_variables
Дregularization_losses
Ж__call__
+З&call_and_return_all_conditional_losses
'З"call_and_return_conditional_losses"
_generic_user_object
ё
уtrace_02в
+__inference_dense_17_layer_call_fn_21514632Ђ
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 zуtrace_0

фtrace_02э
F__inference_dense_17_layer_call_and_return_conditional_losses_21514642Ђ
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 zфtrace_0
!:2dense_17/kernel
:2dense_17/bias
.
j0
k1"
trackable_list_wrapper
Ц
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
ќBљ
*__inference_model_7_layer_call_fn_21512958input_8"П
ЖВВ
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
ћBј
*__inference_model_7_layer_call_fn_21513691inputs"П
ЖВВ
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
ћBј
*__inference_model_7_layer_call_fn_21513740inputs"П
ЖВВ
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
ќBљ
*__inference_model_7_layer_call_fn_21513449input_8"П
ЖВВ
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
B
E__inference_model_7_layer_call_and_return_conditional_losses_21513912inputs"П
ЖВВ
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
B
E__inference_model_7_layer_call_and_return_conditional_losses_21514084inputs"П
ЖВВ
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
B
E__inference_model_7_layer_call_and_return_conditional_losses_21513518input_8"П
ЖВВ
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
B
E__inference_model_7_layer_call_and_return_conditional_losses_21513587input_8"П
ЖВВ
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
:	 (2SGD/iter
: (2	SGD/decay
: (2SGD/learning_rate
: (2SGD/momentum
ЭBЪ
&__inference_signature_wrapper_21513642input_8"
В
FullArgSpec
args 
varargs
 
varkwjkwargs
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
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
рBн
,__inference_conv2d_57_layer_call_fn_21514093inputs"Ђ
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
ћBј
G__inference_conv2d_57_layer_call_and_return_conditional_losses_21514103inputs"Ђ
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
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
0__inference_activation_82_layer_call_fn_21514108inputs"Ђ
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
џBќ
K__inference_activation_82_layer_call_and_return_conditional_losses_21514113inputs"Ђ
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
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
рBн
,__inference_conv2d_58_layer_call_fn_21514122inputs"Ђ
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
ћBј
G__inference_conv2d_58_layer_call_and_return_conditional_losses_21514132inputs"Ђ
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
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
0__inference_activation_83_layer_call_fn_21514137inputs"Ђ
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
џBќ
K__inference_activation_83_layer_call_and_return_conditional_losses_21514142inputs"Ђ
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
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
B
8__inference_group_normalization_4_layer_call_fn_21514151inputs"Х
МВИ
FullArgSpec
args
jself
jinputs
varargs
 
varkwjkwargs
defaults
 

kwonlyargs

jtraining%
kwonlydefaultsЊ

trainingp 
annotationsЊ *
 
B
8__inference_group_normalization_4_layer_call_fn_21514160inputs"Х
МВИ
FullArgSpec
args
jself
jinputs
varargs
 
varkwjkwargs
defaults
 

kwonlyargs

jtraining%
kwonlydefaultsЊ

trainingp 
annotationsЊ *
 
ЊBЇ
S__inference_group_normalization_4_layer_call_and_return_conditional_losses_21514213inputs"Х
МВИ
FullArgSpec
args
jself
jinputs
varargs
 
varkwjkwargs
defaults
 

kwonlyargs

jtraining%
kwonlydefaultsЊ

trainingp 
annotationsЊ *
 
ЊBЇ
S__inference_group_normalization_4_layer_call_and_return_conditional_losses_21514266inputs"Х
МВИ
FullArgSpec
args
jself
jinputs
varargs
 
varkwjkwargs
defaults
 

kwonlyargs

jtraining%
kwonlydefaultsЊ

trainingp 
annotationsЊ *
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
рBн
,__inference_conv2d_59_layer_call_fn_21514275inputs"Ђ
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
ћBј
G__inference_conv2d_59_layer_call_and_return_conditional_losses_21514285inputs"Ђ
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
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
0__inference_activation_84_layer_call_fn_21514290inputs"Ђ
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
џBќ
K__inference_activation_84_layer_call_and_return_conditional_losses_21514295inputs"Ђ
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
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
ъBч
6__inference_average_pooling2d_2_layer_call_fn_21514300inputs"Ђ
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
B
Q__inference_average_pooling2d_2_layer_call_and_return_conditional_losses_21514305inputs"Ђ
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
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
0__inference_activation_85_layer_call_fn_21514310inputs"Ђ
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
џBќ
K__inference_activation_85_layer_call_and_return_conditional_losses_21514315inputs"Ђ
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
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
ўBћ
9__inference_batch_normalization_10_layer_call_fn_21514328inputs"Г
ЊВІ
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
ўBћ
9__inference_batch_normalization_10_layer_call_fn_21514341inputs"Г
ЊВІ
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
B
T__inference_batch_normalization_10_layer_call_and_return_conditional_losses_21514359inputs"Г
ЊВІ
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
B
T__inference_batch_normalization_10_layer_call_and_return_conditional_losses_21514377inputs"Г
ЊВІ
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
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
рBн
,__inference_conv2d_60_layer_call_fn_21514386inputs"Ђ
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
ћBј
G__inference_conv2d_60_layer_call_and_return_conditional_losses_21514396inputs"Ђ
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
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
0__inference_activation_86_layer_call_fn_21514401inputs"Ђ
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
џBќ
K__inference_activation_86_layer_call_and_return_conditional_losses_21514406inputs"Ђ
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
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
B
8__inference_group_normalization_5_layer_call_fn_21514415inputs"Х
МВИ
FullArgSpec
args
jself
jinputs
varargs
 
varkwjkwargs
defaults
 

kwonlyargs

jtraining%
kwonlydefaultsЊ

trainingp 
annotationsЊ *
 
B
8__inference_group_normalization_5_layer_call_fn_21514424inputs"Х
МВИ
FullArgSpec
args
jself
jinputs
varargs
 
varkwjkwargs
defaults
 

kwonlyargs

jtraining%
kwonlydefaultsЊ

trainingp 
annotationsЊ *
 
ЊBЇ
S__inference_group_normalization_5_layer_call_and_return_conditional_losses_21514477inputs"Х
МВИ
FullArgSpec
args
jself
jinputs
varargs
 
varkwjkwargs
defaults
 

kwonlyargs

jtraining%
kwonlydefaultsЊ

trainingp 
annotationsЊ *
 
ЊBЇ
S__inference_group_normalization_5_layer_call_and_return_conditional_losses_21514530inputs"Х
МВИ
FullArgSpec
args
jself
jinputs
varargs
 
varkwjkwargs
defaults
 

kwonlyargs

jtraining%
kwonlydefaultsЊ

trainingp 
annotationsЊ *
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
рBн
,__inference_conv2d_61_layer_call_fn_21514539inputs"Ђ
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
ћBј
G__inference_conv2d_61_layer_call_and_return_conditional_losses_21514549inputs"Ђ
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
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
0__inference_activation_87_layer_call_fn_21514554inputs"Ђ
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
џBќ
K__inference_activation_87_layer_call_and_return_conditional_losses_21514559inputs"Ђ
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
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
рBн
,__inference_flatten_4_layer_call_fn_21514564inputs"Ђ
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
ћBј
G__inference_flatten_4_layer_call_and_return_conditional_losses_21514570inputs"Ђ
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
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
рBн
,__inference_flatten_5_layer_call_fn_21514575inputs"Ђ
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
ћBј
G__inference_flatten_5_layer_call_and_return_conditional_losses_21514581inputs"Ђ
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
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
№Bэ
0__inference_concatenate_2_layer_call_fn_21514587inputs/0inputs/1"Ђ
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
B
K__inference_concatenate_2_layer_call_and_return_conditional_losses_21514594inputs/0inputs/1"Ђ
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
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
пBм
+__inference_dense_16_layer_call_fn_21514603inputs"Ђ
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
њBї
F__inference_dense_16_layer_call_and_return_conditional_losses_21514613inputs"Ђ
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
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
0__inference_activation_88_layer_call_fn_21514618inputs"Ђ
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
џBќ
K__inference_activation_88_layer_call_and_return_conditional_losses_21514623inputs"Ђ
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
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
пBм
+__inference_dense_17_layer_call_fn_21514632inputs"Ђ
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
њBї
F__inference_dense_17_layer_call_and_return_conditional_losses_21514642inputs"Ђ
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
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
trackable_dict_wrapperИ
#__inference__wrapped_model_21512513&'56DELMhijkrsЊЋИЙ9Ђ6
/Ђ,
*'
input_8џџџџџџџџџtМ
Њ "3Њ0
.
dense_17"
dense_17џџџџџџџџџЙ
K__inference_activation_82_layer_call_and_return_conditional_losses_21514113j8Ђ5
.Ђ+
)&
inputsџџџџџџџџџtМ
Њ ".Ђ+
$!
0џџџџџџџџџtМ
 
0__inference_activation_82_layer_call_fn_21514108]8Ђ5
.Ђ+
)&
inputsџџџџџџџџџtМ
Њ "!џџџџџџџџџtМЙ
K__inference_activation_83_layer_call_and_return_conditional_losses_21514142j8Ђ5
.Ђ+
)&
inputsџџџџџџџџџtМ
Њ ".Ђ+
$!
0џџџџџџџџџtМ
 
0__inference_activation_83_layer_call_fn_21514137]8Ђ5
.Ђ+
)&
inputsџџџџџџџџџtМ
Њ "!џџџџџџџџџtМЙ
K__inference_activation_84_layer_call_and_return_conditional_losses_21514295j8Ђ5
.Ђ+
)&
inputsџџџџџџџџџtМ
Њ ".Ђ+
$!
0џџџџџџџџџtМ
 
0__inference_activation_84_layer_call_fn_21514290]8Ђ5
.Ђ+
)&
inputsџџџџџџџџџtМ
Њ "!џџџџџџџџџtМЗ
K__inference_activation_85_layer_call_and_return_conditional_losses_21514315h7Ђ4
-Ђ*
(%
inputsџџџџџџџџџ:^
Њ "-Ђ*
# 
0џџџџџџџџџ:^
 
0__inference_activation_85_layer_call_fn_21514310[7Ђ4
-Ђ*
(%
inputsџџџџџџџџџ:^
Њ " џџџџџџџџџ:^З
K__inference_activation_86_layer_call_and_return_conditional_losses_21514406h7Ђ4
-Ђ*
(%
inputsџџџџџџџџџ:^
Њ "-Ђ*
# 
0џџџџџџџџџ:^
 
0__inference_activation_86_layer_call_fn_21514401[7Ђ4
-Ђ*
(%
inputsџџџџџџџџџ:^
Њ " џџџџџџџџџ:^З
K__inference_activation_87_layer_call_and_return_conditional_losses_21514559h7Ђ4
-Ђ*
(%
inputsџџџџџџџџџ:^
Њ "-Ђ*
# 
0џџџџџџџџџ:^
 
0__inference_activation_87_layer_call_fn_21514554[7Ђ4
-Ђ*
(%
inputsџџџџџџџџџ:^
Њ " џџџџџџџџџ:^Ї
K__inference_activation_88_layer_call_and_return_conditional_losses_21514623X/Ђ,
%Ђ"
 
inputsџџџџџџџџџ
Њ "%Ђ"

0џџџџџџџџџ
 
0__inference_activation_88_layer_call_fn_21514618K/Ђ,
%Ђ"
 
inputsџџџџџџџџџ
Њ "џџџџџџџџџє
Q__inference_average_pooling2d_2_layer_call_and_return_conditional_losses_21514305RЂO
HЂE
C@
inputs4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
Њ "HЂE
>;
04џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
 Ь
6__inference_average_pooling2d_2_layer_call_fn_21514300RЂO
HЂE
C@
inputs4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
Њ ";84џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџя
T__inference_batch_normalization_10_layer_call_and_return_conditional_losses_21514359hijkMЂJ
CЂ@
:7
inputs+џџџџџџџџџџџџџџџџџџџџџџџџџџџ
p 
Њ "?Ђ<
52
0+џџџџџџџџџџџџџџџџџџџџџџџџџџџ
 я
T__inference_batch_normalization_10_layer_call_and_return_conditional_losses_21514377hijkMЂJ
CЂ@
:7
inputs+џџџџџџџџџџџџџџџџџџџџџџџџџџџ
p
Њ "?Ђ<
52
0+џџџџџџџџџџџџџџџџџџџџџџџџџџџ
 Ч
9__inference_batch_normalization_10_layer_call_fn_21514328hijkMЂJ
CЂ@
:7
inputs+џџџџџџџџџџџџџџџџџџџџџџџџџџџ
p 
Њ "2/+џџџџџџџџџџџџџџџџџџџџџџџџџџџЧ
9__inference_batch_normalization_10_layer_call_fn_21514341hijkMЂJ
CЂ@
:7
inputs+џџџџџџџџџџџџџџџџџџџџџџџџџџџ
p
Њ "2/+џџџџџџџџџџџџџџџџџџџџџџџџџџџй
K__inference_concatenate_2_layer_call_and_return_conditional_losses_21514594^Ђ[
TЂQ
OL
$!
inputs/0џџџџџџџџџРЉ
$!
inputs/1џџџџџџџџџРЉ
Њ "'Ђ$

0џџџџџџџџџг

 А
0__inference_concatenate_2_layer_call_fn_21514587|^Ђ[
TЂQ
OL
$!
inputs/0џџџџџџџџџРЉ
$!
inputs/1џџџџџџџџџРЉ
Њ "џџџџџџџџџг
Й
G__inference_conv2d_57_layer_call_and_return_conditional_losses_21514103n&'8Ђ5
.Ђ+
)&
inputsџџџџџџџџџtМ
Њ ".Ђ+
$!
0џџџџџџџџџtМ
 
,__inference_conv2d_57_layer_call_fn_21514093a&'8Ђ5
.Ђ+
)&
inputsџџџџџџџџџtМ
Њ "!џџџџџџџџџtМЙ
G__inference_conv2d_58_layer_call_and_return_conditional_losses_21514132n568Ђ5
.Ђ+
)&
inputsџџџџџџџџџtМ
Њ ".Ђ+
$!
0џџџџџџџџџtМ
 
,__inference_conv2d_58_layer_call_fn_21514122a568Ђ5
.Ђ+
)&
inputsџџџџџџџџџtМ
Њ "!џџџџџџџџџtМЙ
G__inference_conv2d_59_layer_call_and_return_conditional_losses_21514285nLM8Ђ5
.Ђ+
)&
inputsџџџџџџџџџtМ
Њ ".Ђ+
$!
0џџџџџџџџџtМ
 
,__inference_conv2d_59_layer_call_fn_21514275aLM8Ђ5
.Ђ+
)&
inputsџџџџџџџџџtМ
Њ "!џџџџџџџџџtМЗ
G__inference_conv2d_60_layer_call_and_return_conditional_losses_21514396lrs7Ђ4
-Ђ*
(%
inputsџџџџџџџџџ:^
Њ "-Ђ*
# 
0џџџџџџџџџ:^
 
,__inference_conv2d_60_layer_call_fn_21514386_rs7Ђ4
-Ђ*
(%
inputsџџџџџџџџџ:^
Њ " џџџџџџџџџ:^Й
G__inference_conv2d_61_layer_call_and_return_conditional_losses_21514549n7Ђ4
-Ђ*
(%
inputsџџџџџџџџџ:^
Њ "-Ђ*
# 
0џџџџџџџџџ:^
 
,__inference_conv2d_61_layer_call_fn_21514539a7Ђ4
-Ђ*
(%
inputsџџџџџџџџџ:^
Њ " џџџџџџџџџ:^Њ
F__inference_dense_16_layer_call_and_return_conditional_losses_21514613`ЊЋ1Ђ.
'Ђ$
"
inputsџџџџџџџџџг

Њ "%Ђ"

0џџџџџџџџџ
 
+__inference_dense_16_layer_call_fn_21514603SЊЋ1Ђ.
'Ђ$
"
inputsџџџџџџџџџг

Њ "џџџџџџџџџЈ
F__inference_dense_17_layer_call_and_return_conditional_losses_21514642^ИЙ/Ђ,
%Ђ"
 
inputsџџџџџџџџџ
Њ "%Ђ"

0џџџџџџџџџ
 
+__inference_dense_17_layer_call_fn_21514632QИЙ/Ђ,
%Ђ"
 
inputsџџџџџџџџџ
Њ "џџџџџџџџџ­
G__inference_flatten_4_layer_call_and_return_conditional_losses_21514570b7Ђ4
-Ђ*
(%
inputsџџџџџџџџџ:^
Њ "'Ђ$

0џџџџџџџџџРЉ
 
,__inference_flatten_4_layer_call_fn_21514564U7Ђ4
-Ђ*
(%
inputsџџџџџџџџџ:^
Њ "џџџџџџџџџРЉ­
G__inference_flatten_5_layer_call_and_return_conditional_losses_21514581b7Ђ4
-Ђ*
(%
inputsџџџџџџџџџ:^
Њ "'Ђ$

0џџџџџџџџџРЉ
 
,__inference_flatten_5_layer_call_fn_21514575U7Ђ4
-Ђ*
(%
inputsџџџџџџџџџ:^
Њ "џџџџџџџџџРЉе
S__inference_group_normalization_4_layer_call_and_return_conditional_losses_21514213~DEHЂE
.Ђ+
)&
inputsџџџџџџџџџtМ
Њ

trainingp ".Ђ+
$!
0џџџџџџџџџtМ
 е
S__inference_group_normalization_4_layer_call_and_return_conditional_losses_21514266~DEHЂE
.Ђ+
)&
inputsџџџџџџџџџtМ
Њ

trainingp".Ђ+
$!
0џџџџџџџџџtМ
 ­
8__inference_group_normalization_4_layer_call_fn_21514151qDEHЂE
.Ђ+
)&
inputsџџџџџџџџџtМ
Њ

trainingp "!џџџџџџџџџtМ­
8__inference_group_normalization_4_layer_call_fn_21514160qDEHЂE
.Ђ+
)&
inputsџџџџџџџџџtМ
Њ

trainingp"!џџџџџџџџџtМе
S__inference_group_normalization_5_layer_call_and_return_conditional_losses_21514477~GЂD
-Ђ*
(%
inputsџџџџџџџџџ:^
Њ

trainingp "-Ђ*
# 
0џџџџџџџџџ:^
 е
S__inference_group_normalization_5_layer_call_and_return_conditional_losses_21514530~GЂD
-Ђ*
(%
inputsџџџџџџџџџ:^
Њ

trainingp"-Ђ*
# 
0џџџџџџџџџ:^
 ­
8__inference_group_normalization_5_layer_call_fn_21514415qGЂD
-Ђ*
(%
inputsџџџџџџџџџ:^
Њ

trainingp " џџџџџџџџџ:^­
8__inference_group_normalization_5_layer_call_fn_21514424qGЂD
-Ђ*
(%
inputsџџџџџџџџџ:^
Њ

trainingp" џџџџџџџџџ:^д
E__inference_model_7_layer_call_and_return_conditional_losses_21513518&'56DELMhijkrsЊЋИЙAЂ>
7Ђ4
*'
input_8џџџџџџџџџtМ
p 

 
Њ "%Ђ"

0џџџџџџџџџ
 д
E__inference_model_7_layer_call_and_return_conditional_losses_21513587&'56DELMhijkrsЊЋИЙAЂ>
7Ђ4
*'
input_8џџџџџџџџџtМ
p

 
Њ "%Ђ"

0џџџџџџџџџ
 г
E__inference_model_7_layer_call_and_return_conditional_losses_21513912&'56DELMhijkrsЊЋИЙ@Ђ=
6Ђ3
)&
inputsџџџџџџџџџtМ
p 

 
Њ "%Ђ"

0џџџџџџџџџ
 г
E__inference_model_7_layer_call_and_return_conditional_losses_21514084&'56DELMhijkrsЊЋИЙ@Ђ=
6Ђ3
)&
inputsџџџџџџџџџtМ
p

 
Њ "%Ђ"

0џџџџџџџџџ
 Ћ
*__inference_model_7_layer_call_fn_21512958}&'56DELMhijkrsЊЋИЙAЂ>
7Ђ4
*'
input_8џџџџџџџџџtМ
p 

 
Њ "џџџџџџџџџЋ
*__inference_model_7_layer_call_fn_21513449}&'56DELMhijkrsЊЋИЙAЂ>
7Ђ4
*'
input_8џџџџџџџџџtМ
p

 
Њ "џџџџџџџџџЊ
*__inference_model_7_layer_call_fn_21513691|&'56DELMhijkrsЊЋИЙ@Ђ=
6Ђ3
)&
inputsџџџџџџџџџtМ
p 

 
Њ "џџџџџџџџџЊ
*__inference_model_7_layer_call_fn_21513740|&'56DELMhijkrsЊЋИЙ@Ђ=
6Ђ3
)&
inputsџџџџџџџџџtМ
p

 
Њ "џџџџџџџџџЦ
&__inference_signature_wrapper_21513642&'56DELMhijkrsЊЋИЙDЂA
Ђ 
:Њ7
5
input_8*'
input_8џџџџџџџџџtМ"3Њ0
.
dense_17"
dense_17џџџџџџџџџ