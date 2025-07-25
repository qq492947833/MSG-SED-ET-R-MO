�
��
D
AddV2
x"T
y"T
z"T"
Ttype:
2	��
^
AssignVariableOp
resource
value"dtype"
dtypetype"
validate_shapebool( �
�
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
�
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
�
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
epsilonfloat%��8"&
exponential_avg_factorfloat%  �?";
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
alphafloat%��L>"
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
�
Mean

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( " 
Ttype:
2	"
Tidxtype0:
2	
�
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool("
allow_missing_filesbool( �
?
Mul
x"T
y"T
z"T"
Ttype:
2	�
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
dtypetype�
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
list(type)(0�
l
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0�
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
�
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
executor_typestring ��
@
StaticRegexFullMatch	
input

output
"
patternstring
�
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
�
VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 �"serve*2.10.02v2.10.0-rc3-6-g359c3cdfc5f8��
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
��
*
shared_namedense_4/kernel
s
"dense_4/kernel/Read/ReadVariableOpReadVariableOpdense_4/kernel* 
_output_shapes
:
��
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
�
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
�
group_normalization_1/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:*+
shared_namegroup_normalization_1/beta
�
.group_normalization_1/beta/Read/ReadVariableOpReadVariableOpgroup_normalization_1/beta*
_output_shapes
:*
dtype0
�
group_normalization_1/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:*,
shared_namegroup_normalization_1/gamma
�
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
�
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
�
#batch_normalization/moving_varianceVarHandleOp*
_output_shapes
: *
dtype0*
shape:*4
shared_name%#batch_normalization/moving_variance
�
7batch_normalization/moving_variance/Read/ReadVariableOpReadVariableOp#batch_normalization/moving_variance*
_output_shapes
:*
dtype0
�
batch_normalization/moving_meanVarHandleOp*
_output_shapes
: *
dtype0*
shape:*0
shared_name!batch_normalization/moving_mean
�
3batch_normalization/moving_mean/Read/ReadVariableOpReadVariableOpbatch_normalization/moving_mean*
_output_shapes
:*
dtype0
�
batch_normalization/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:*)
shared_namebatch_normalization/beta
�
,batch_normalization/beta/Read/ReadVariableOpReadVariableOpbatch_normalization/beta*
_output_shapes
:*
dtype0
�
batch_normalization/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:**
shared_namebatch_normalization/gamma
�
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
�
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
�
group_normalization/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:*)
shared_namegroup_normalization/beta
�
,group_normalization/beta/Read/ReadVariableOpReadVariableOpgroup_normalization/beta*
_output_shapes
:*
dtype0
�
group_normalization/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:**
shared_namegroup_normalization/gamma
�
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
�
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
�
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
�
serving_default_input_2Placeholder*0
_output_shapes
:���������t�*
dtype0*%
shape:���������t�
�
StatefulPartitionedCallStatefulPartitionedCallserving_default_input_2conv2d_13/kernelconv2d_13/biasconv2d_14/kernelconv2d_14/biasgroup_normalization/gammagroup_normalization/betaconv2d_15/kernelconv2d_15/biasbatch_normalization/gammabatch_normalization/betabatch_normalization/moving_mean#batch_normalization/moving_varianceconv2d_16/kernelconv2d_16/biasgroup_normalization_1/gammagroup_normalization_1/betaconv2d_17/kernelconv2d_17/biasdense_4/kerneldense_4/biasdense_5/kerneldense_5/bias*"
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*8
_read_only_resource_inputs
	
*2
config_proto" 

CPU

GPU2 *1J 8� *.
f)R'
%__inference_signature_wrapper_3134380

NoOpNoOp
��
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*��
value�B� Bމ
�
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
signatures
# _self_saveable_object_factories*
'
#!_self_saveable_object_factories* 
�
"	variables
#trainable_variables
$regularization_losses
%	keras_api
&__call__
*'&call_and_return_all_conditional_losses

(kernel
)bias
#*_self_saveable_object_factories
 +_jit_compiled_convolution_op*
�
,	variables
-trainable_variables
.regularization_losses
/	keras_api
0__call__
*1&call_and_return_all_conditional_losses
#2_self_saveable_object_factories* 
�
3	variables
4trainable_variables
5regularization_losses
6	keras_api
7__call__
*8&call_and_return_all_conditional_losses

9kernel
:bias
#;_self_saveable_object_factories
 <_jit_compiled_convolution_op*
�
=	variables
>trainable_variables
?regularization_losses
@	keras_api
A__call__
*B&call_and_return_all_conditional_losses
#C_self_saveable_object_factories* 
�
D	variables
Etrainable_variables
Fregularization_losses
G	keras_api
H__call__
*I&call_and_return_all_conditional_losses
	Jgamma
Kbeta
#L_self_saveable_object_factories*
�
M	variables
Ntrainable_variables
Oregularization_losses
P	keras_api
Q__call__
*R&call_and_return_all_conditional_losses

Skernel
Tbias
#U_self_saveable_object_factories
 V_jit_compiled_convolution_op*
�
W	variables
Xtrainable_variables
Yregularization_losses
Z	keras_api
[__call__
*\&call_and_return_all_conditional_losses
#]_self_saveable_object_factories* 
�
^	variables
_trainable_variables
`regularization_losses
a	keras_api
b__call__
*c&call_and_return_all_conditional_losses
#d_self_saveable_object_factories* 
�
e	variables
ftrainable_variables
gregularization_losses
h	keras_api
i__call__
*j&call_and_return_all_conditional_losses
#k_self_saveable_object_factories* 
�
l	variables
mtrainable_variables
nregularization_losses
o	keras_api
p__call__
*q&call_and_return_all_conditional_losses
raxis
	sgamma
tbeta
umoving_mean
vmoving_variance
#w_self_saveable_object_factories*
�
x	variables
ytrainable_variables
zregularization_losses
{	keras_api
|__call__
*}&call_and_return_all_conditional_losses

~kernel
bias
$�_self_saveable_object_factories
!�_jit_compiled_convolution_op*
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses
$�_self_saveable_object_factories* 
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses

�gamma
	�beta
$�_self_saveable_object_factories*
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses
�kernel
	�bias
$�_self_saveable_object_factories
!�_jit_compiled_convolution_op*
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses
$�_self_saveable_object_factories* 
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses
$�_self_saveable_object_factories* 
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses
$�_self_saveable_object_factories* 
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses
$�_self_saveable_object_factories* 
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses
�kernel
	�bias
$�_self_saveable_object_factories*
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses
$�_self_saveable_object_factories* 
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses
�kernel
	�bias
$�_self_saveable_object_factories*
�
(0
)1
92
:3
J4
K5
S6
T7
s8
t9
u10
v11
~12
13
�14
�15
�16
�17
�18
�19
�20
�21*
�
(0
)1
92
:3
J4
K5
S6
T7
s8
t9
~10
11
�12
�13
�14
�15
�16
�17
�18
�19*
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
	variables
trainable_variables
regularization_losses
__call__
_default_save_signature
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses*
:
�trace_0
�trace_1
�trace_2
�trace_3* 
:
�trace_0
�trace_1
�trace_2
�trace_3* 
* 
>
	�iter

�decay
�learning_rate
�momentum*

�serving_default* 
* 
* 

(0
)1*

(0
)1*
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
"	variables
#trainable_variables
$regularization_losses
&__call__
*'&call_and_return_all_conditional_losses
&'"call_and_return_conditional_losses*

�trace_0* 

�trace_0* 
`Z
VARIABLE_VALUEconv2d_13/kernel6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUE*
\V
VARIABLE_VALUEconv2d_13/bias4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
* 
* 
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
,	variables
-trainable_variables
.regularization_losses
0__call__
*1&call_and_return_all_conditional_losses
&1"call_and_return_conditional_losses* 

�trace_0* 

�trace_0* 
* 

90
:1*

90
:1*
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
3	variables
4trainable_variables
5regularization_losses
7__call__
*8&call_and_return_all_conditional_losses
&8"call_and_return_conditional_losses*

�trace_0* 

�trace_0* 
`Z
VARIABLE_VALUEconv2d_14/kernel6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUE*
\V
VARIABLE_VALUEconv2d_14/bias4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
* 
* 
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
=	variables
>trainable_variables
?regularization_losses
A__call__
*B&call_and_return_all_conditional_losses
&B"call_and_return_conditional_losses* 

�trace_0* 

�trace_0* 
* 

J0
K1*

J0
K1*
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
D	variables
Etrainable_variables
Fregularization_losses
H__call__
*I&call_and_return_all_conditional_losses
&I"call_and_return_conditional_losses*

�trace_0
�trace_1* 

�trace_0
�trace_1* 
hb
VARIABLE_VALUEgroup_normalization/gamma5layer_with_weights-2/gamma/.ATTRIBUTES/VARIABLE_VALUE*
f`
VARIABLE_VALUEgroup_normalization/beta4layer_with_weights-2/beta/.ATTRIBUTES/VARIABLE_VALUE*
* 

S0
T1*

S0
T1*
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
M	variables
Ntrainable_variables
Oregularization_losses
Q__call__
*R&call_and_return_all_conditional_losses
&R"call_and_return_conditional_losses*

�trace_0* 

�trace_0* 
`Z
VARIABLE_VALUEconv2d_15/kernel6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUE*
\V
VARIABLE_VALUEconv2d_15/bias4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
* 
* 
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
W	variables
Xtrainable_variables
Yregularization_losses
[__call__
*\&call_and_return_all_conditional_losses
&\"call_and_return_conditional_losses* 

�trace_0* 

�trace_0* 
* 
* 
* 
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
^	variables
_trainable_variables
`regularization_losses
b__call__
*c&call_and_return_all_conditional_losses
&c"call_and_return_conditional_losses* 

�trace_0* 

�trace_0* 
* 
* 
* 
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
e	variables
ftrainable_variables
gregularization_losses
i__call__
*j&call_and_return_all_conditional_losses
&j"call_and_return_conditional_losses* 

�trace_0* 

�trace_0* 
* 
 
s0
t1
u2
v3*

s0
t1*
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
l	variables
mtrainable_variables
nregularization_losses
p__call__
*q&call_and_return_all_conditional_losses
&q"call_and_return_conditional_losses*

�trace_0
�trace_1* 

�trace_0
�trace_1* 
* 
hb
VARIABLE_VALUEbatch_normalization/gamma5layer_with_weights-4/gamma/.ATTRIBUTES/VARIABLE_VALUE*
f`
VARIABLE_VALUEbatch_normalization/beta4layer_with_weights-4/beta/.ATTRIBUTES/VARIABLE_VALUE*
tn
VARIABLE_VALUEbatch_normalization/moving_mean;layer_with_weights-4/moving_mean/.ATTRIBUTES/VARIABLE_VALUE*
|v
VARIABLE_VALUE#batch_normalization/moving_variance?layer_with_weights-4/moving_variance/.ATTRIBUTES/VARIABLE_VALUE*
* 

~0
1*

~0
1*
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
x	variables
ytrainable_variables
zregularization_losses
|__call__
*}&call_and_return_all_conditional_losses
&}"call_and_return_conditional_losses*

�trace_0* 

�trace_0* 
`Z
VARIABLE_VALUEconv2d_16/kernel6layer_with_weights-5/kernel/.ATTRIBUTES/VARIABLE_VALUE*
\V
VARIABLE_VALUEconv2d_16/bias4layer_with_weights-5/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
* 
* 
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses* 

�trace_0* 

�trace_0* 
* 

�0
�1*

�0
�1*
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses*

�trace_0
�trace_1* 

�trace_0
�trace_1* 
jd
VARIABLE_VALUEgroup_normalization_1/gamma5layer_with_weights-6/gamma/.ATTRIBUTES/VARIABLE_VALUE*
hb
VARIABLE_VALUEgroup_normalization_1/beta4layer_with_weights-6/beta/.ATTRIBUTES/VARIABLE_VALUE*
* 

�0
�1*

�0
�1*
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses*

�trace_0* 

�trace_0* 
`Z
VARIABLE_VALUEconv2d_17/kernel6layer_with_weights-7/kernel/.ATTRIBUTES/VARIABLE_VALUE*
\V
VARIABLE_VALUEconv2d_17/bias4layer_with_weights-7/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
* 
* 
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses* 

�trace_0* 

�trace_0* 
* 
* 
* 
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses* 

�trace_0* 

�trace_0* 
* 
* 
* 
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses* 

�trace_0* 

�trace_0* 
* 
* 
* 
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses* 

�trace_0* 

�trace_0* 
* 

�0
�1*

�0
�1*
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses*

�trace_0* 

�trace_0* 
^X
VARIABLE_VALUEdense_4/kernel6layer_with_weights-8/kernel/.ATTRIBUTES/VARIABLE_VALUE*
ZT
VARIABLE_VALUEdense_4/bias4layer_with_weights-8/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
* 
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses* 

�trace_0* 

�trace_0* 
* 

�0
�1*

�0
�1*
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses*

�trace_0* 

�trace_0* 
^X
VARIABLE_VALUEdense_5/kernel6layer_with_weights-9/kernel/.ATTRIBUTES/VARIABLE_VALUE*
ZT
VARIABLE_VALUEdense_5/bias4layer_with_weights-9/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 

u0
v1*
�
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
�0
�1*
* 
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
u0
v1*
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
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
�	variables
�	keras_api

�total

�count*
M
�	variables
�	keras_api

�total

�count
�
_fn_kwargs*

�0
�1*

�	variables*
UO
VARIABLE_VALUEtotal_14keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUE*
UO
VARIABLE_VALUEcount_14keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUE*

�0
�1*

�	variables*
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
�
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
GPU2 *1J 8� *)
f$R"
 __inference__traced_save_3135069
�
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
GPU2 *1J 8� *,
f'R%
#__inference__traced_restore_3135169�
�
G
+__inference_flatten_1_layer_call_fn_3134889

inputs
identity�
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *)
_output_shapes
:�����������* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2 *1J 8� *O
fJRH
F__inference_flatten_1_layer_call_and_return_conditional_losses_3133742b
IdentityIdentityPartitionedCall:output:0*
T0*)
_output_shapes
:�����������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:���������:^:W S
/
_output_shapes
:���������:^
 
_user_specified_nameinputs
�
�
)__inference_restored_function_body_205888

inputs
unknown:
	unknown_0:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*0
_output_shapes
:���������t�*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *1J 8� *V
fQRO
M__inference_group_normalization_layer_call_and_return_conditional_losses_5442x
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*0
_output_shapes
:���������t�`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :���������t�: : 22
StatefulPartitionedCallStatefulPartitionedCall:X T
0
_output_shapes
:���������t�
 
_user_specified_nameinputs
�
�
)__inference_dense_4_layer_call_fn_3134917

inputs
unknown:
��

	unknown_0:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *1J 8� *M
fHRF
D__inference_dense_4_layer_call_and_return_conditional_losses_3133763o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*,
_input_shapes
:�����������
: : 22
StatefulPartitionedCallStatefulPartitionedCall:Q M
)
_output_shapes
:�����������

 
_user_specified_nameinputs
�
t
H__inference_concatenate_layer_call_and_return_conditional_losses_3134908
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
:�����������
Y
IdentityIdentityconcat:output:0*
T0*)
_output_shapes
:�����������
"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*=
_input_shapes,
*:�����������:�����������:S O
)
_output_shapes
:�����������
"
_user_specified_name
inputs/0:SO
)
_output_shapes
:�����������
"
_user_specified_name
inputs/1
�

�
F__inference_conv2d_16_layer_call_and_return_conditional_losses_3134834

inputs8
conv2d_readvariableop_resource:-
biasadd_readvariableop_resource:
identity��BiasAdd/ReadVariableOp�Conv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:*
dtype0�
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������:^*
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
:���������:^g
IdentityIdentityBiasAdd:output:0^NoOp*
T0*/
_output_shapes
:���������:^w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:���������:^: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:���������:^
 
_user_specified_nameinputs
�
f
J__inference_activation_25_layer_call_and_return_conditional_losses_3133726

inputs
identityO
	LeakyRelu	LeakyReluinputs*/
_output_shapes
:���������:^g
IdentityIdentityLeakyRelu:activations:0*
T0*/
_output_shapes
:���������:^"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:���������:^:W S
/
_output_shapes
:���������:^
 
_user_specified_nameinputs
�
`
D__inference_flatten_layer_call_and_return_conditional_losses_3133734

inputs
identityV
ConstConst*
_output_shapes
:*
dtype0*
valueB"�����T ^
ReshapeReshapeinputsConst:output:0*
T0*)
_output_shapes
:�����������Z
IdentityIdentityReshape:output:0*
T0*)
_output_shapes
:�����������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:���������:^:W S
/
_output_shapes
:���������:^
 
_user_specified_nameinputs
�
�
+__inference_conv2d_15_layer_call_fn_3134713

inputs!
unknown:
	unknown_0:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:���������t�*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *1J 8� *O
fJRH
F__inference_conv2d_15_layer_call_and_return_conditional_losses_3133647x
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*0
_output_shapes
:���������t�`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :���������t�: : 22
StatefulPartitionedCallStatefulPartitionedCall:X T
0
_output_shapes
:���������t�
 
_user_specified_nameinputs
�

�
F__inference_conv2d_14_layer_call_and_return_conditional_losses_3134694

inputs8
conv2d_readvariableop_resource:-
biasadd_readvariableop_resource:
identity��BiasAdd/ReadVariableOp�Conv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:*
dtype0�
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:���������t�*
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
:���������t�h
IdentityIdentityBiasAdd:output:0^NoOp*
T0*0
_output_shapes
:���������t�w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :���������t�: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:X T
0
_output_shapes
:���������t�
 
_user_specified_nameinputs
�
�
P__inference_batch_normalization_layer_call_and_return_conditional_losses_3133568

inputs%
readvariableop_resource:'
readvariableop_1_resource:6
(fusedbatchnormv3_readvariableop_resource:8
*fusedbatchnormv3_readvariableop_1_resource:
identity��AssignNewValue�AssignNewValue_1�FusedBatchNormV3/ReadVariableOp�!FusedBatchNormV3/ReadVariableOp_1�ReadVariableOp�ReadVariableOp_1b
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:*
dtype0f
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:*
dtype0�
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:*
dtype0�
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:*
dtype0�
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+���������������������������:::::*
epsilon%o�:*
exponential_avg_factor%
�#<�
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype0*
validate_shape(�
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype0*
validate_shape(}
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*A
_output_shapes/
-:+����������������������������
NoOpNoOp^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+���������������������������: : : : 2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+���������������������������
 
_user_specified_nameinputs
�
`
D__inference_flatten_layer_call_and_return_conditional_losses_3134884

inputs
identityV
ConstConst*
_output_shapes
:*
dtype0*
valueB"�����T ^
ReshapeReshapeinputsConst:output:0*
T0*)
_output_shapes
:�����������Z
IdentityIdentityReshape:output:0*
T0*)
_output_shapes
:�����������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:���������:^:W S
/
_output_shapes
:���������:^
 
_user_specified_nameinputs
�2
�
O__inference_group_normalization_1_layer_call_and_return_conditional_losses_5287

inputs/
!reshape_2_readvariableop_resource:/
!reshape_3_readvariableop_resource:
identity��Reshape_2/ReadVariableOp�Reshape_3/ReadVariableOp;
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
valueB:�
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
valueB:�
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
valueB:�
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
valueB:�
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
value	B :�
stackPackstrided_slice:output:0stack/1:output:0strided_slice_1:output:0strided_slice_2:output:0stack/4:output:0*
N*
T0*
_output_shapes
:h
ReshapeReshapeinputsstack:output:0*
T0*3
_output_shapes!
:���������:^k
Mean/reduction_indicesConst*
_output_shapes
:*
dtype0*!
valueB"         �
MeanMeanReshape:output:0Mean/reduction_indices:output:0*
T0*3
_output_shapes!
:���������*
	keep_dims({
&reduce_variance/Mean/reduction_indicesConst*
_output_shapes
:*
dtype0*!
valueB"         �
reduce_variance/MeanMeanReshape:output:0/reduce_variance/Mean/reduction_indices:output:0*
T0*3
_output_shapes!
:���������*
	keep_dims(�
reduce_variance/subSubReshape:output:0reduce_variance/Mean:output:0*
T0*3
_output_shapes!
:���������:^w
reduce_variance/SquareSquarereduce_variance/sub:z:0*
T0*3
_output_shapes!
:���������:^}
(reduce_variance/Mean_1/reduction_indicesConst*
_output_shapes
:*
dtype0*!
valueB"         �
reduce_variance/Mean_1Meanreduce_variance/Square:y:01reduce_variance/Mean_1/reduction_indices:output:0*
T0*3
_output_shapes!
:���������*
	keep_dims(i
subSubReshape:output:0Mean:output:0*
T0*3
_output_shapes!
:���������:^J
add/yConst*
_output_shapes
: *
dtype0*
valueB
 *���={
addAddV2reduce_variance/Mean_1:output:0add/y:output:0*
T0*3
_output_shapes!
:���������J
ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    i
MaximumMaximumadd:z:0Const:output:0*
T0*3
_output_shapes!
:���������W
SqrtSqrtMaximum:z:0*
T0*3
_output_shapes!
:���������c
truedivRealDivsub:z:0Sqrt:y:0*
T0*3
_output_shapes!
:���������:^o
	Reshape_1Reshapetruediv:z:0stack:output:0*
T0*3
_output_shapes!
:���������:^v
Reshape_2/ReadVariableOpReadVariableOp!reshape_2_readvariableop_resource*
_output_shapes
:*
dtype0l
Reshape_2/shapeConst*
_output_shapes
:*
dtype0*)
value B"               �
	Reshape_2Reshape Reshape_2/ReadVariableOp:value:0Reshape_2/shape:output:0*
T0**
_output_shapes
:p
mulMulReshape_1:output:0Reshape_2:output:0*
T0*3
_output_shapes!
:���������:^v
Reshape_3/ReadVariableOpReadVariableOp!reshape_3_readvariableop_resource*
_output_shapes
:*
dtype0l
Reshape_3/shapeConst*
_output_shapes
:*
dtype0*)
value B"               �
	Reshape_3Reshape Reshape_3/ReadVariableOp:value:0Reshape_3/shape:output:0*
T0**
_output_shapes
:i
add_1AddV2mul:z:0Reshape_3:output:0*
T0*3
_output_shapes!
:���������:^i
	Reshape_4Reshape	add_1:z:0Shape:output:0*
T0*/
_output_shapes
:���������:^|
NoOpNoOp^Reshape_2/ReadVariableOp^Reshape_3/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 i
IdentityIdentityReshape_4:output:0^NoOp*
T0*/
_output_shapes
:���������:^"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:���������:^: : 24
Reshape_2/ReadVariableOpReshape_2/ReadVariableOp24
Reshape_3/ReadVariableOpReshape_3/ReadVariableOp:W S
/
_output_shapes
:���������:^
 
_user_specified_nameinputs
�Y
�

D__inference_model_1_layer_call_and_return_conditional_losses_3134256
input_2+
conv2d_13_3134190:
conv2d_13_3134192:+
conv2d_14_3134196:
conv2d_14_3134198:)
group_normalization_3134202:)
group_normalization_3134204:+
conv2d_15_3134207:
conv2d_15_3134209:)
batch_normalization_3134215:)
batch_normalization_3134217:)
batch_normalization_3134219:)
batch_normalization_3134221:+
conv2d_16_3134224:
conv2d_16_3134226:+
group_normalization_1_3134230:+
group_normalization_1_3134232:+
conv2d_17_3134235:
conv2d_17_3134237:#
dense_4_3134244:
��

dense_4_3134246:!
dense_5_3134250:
dense_5_3134252:
identity��+batch_normalization/StatefulPartitionedCall�!conv2d_13/StatefulPartitionedCall�!conv2d_14/StatefulPartitionedCall�!conv2d_15/StatefulPartitionedCall�!conv2d_16/StatefulPartitionedCall�!conv2d_17/StatefulPartitionedCall�dense_4/StatefulPartitionedCall�dense_5/StatefulPartitionedCall�+group_normalization/StatefulPartitionedCall�-group_normalization_1/StatefulPartitionedCall�
!conv2d_13/StatefulPartitionedCallStatefulPartitionedCallinput_2conv2d_13_3134190conv2d_13_3134192*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:���������t�*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *1J 8� *O
fJRH
F__inference_conv2d_13_layer_call_and_return_conditional_losses_3133596�
activation_20/PartitionedCallPartitionedCall*conv2d_13/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:���������t�* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2 *1J 8� *S
fNRL
J__inference_activation_20_layer_call_and_return_conditional_losses_3133607�
!conv2d_14/StatefulPartitionedCallStatefulPartitionedCall&activation_20/PartitionedCall:output:0conv2d_14_3134196conv2d_14_3134198*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:���������t�*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *1J 8� *O
fJRH
F__inference_conv2d_14_layer_call_and_return_conditional_losses_3133619�
activation_21/PartitionedCallPartitionedCall*conv2d_14/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:���������t�* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2 *1J 8� *S
fNRL
J__inference_activation_21_layer_call_and_return_conditional_losses_3133630�
+group_normalization/StatefulPartitionedCallStatefulPartitionedCall&activation_21/PartitionedCall:output:0group_normalization_3134202group_normalization_3134204*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:���������t�*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *1J 8� *2
f-R+
)__inference_restored_function_body_205888�
!conv2d_15/StatefulPartitionedCallStatefulPartitionedCall4group_normalization/StatefulPartitionedCall:output:0conv2d_15_3134207conv2d_15_3134209*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:���������t�*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *1J 8� *O
fJRH
F__inference_conv2d_15_layer_call_and_return_conditional_losses_3133647�
activation_22/PartitionedCallPartitionedCall*conv2d_15/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:���������t�* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2 *1J 8� *S
fNRL
J__inference_activation_22_layer_call_and_return_conditional_losses_3133658�
!average_pooling2d/PartitionedCallPartitionedCall&activation_22/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������:^* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2 *1J 8� *W
fRRP
N__inference_average_pooling2d_layer_call_and_return_conditional_losses_3133512�
activation_23/PartitionedCallPartitionedCall*average_pooling2d/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������:^* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2 *1J 8� *S
fNRL
J__inference_activation_23_layer_call_and_return_conditional_losses_3133666�
+batch_normalization/StatefulPartitionedCallStatefulPartitionedCall&activation_23/PartitionedCall:output:0batch_normalization_3134215batch_normalization_3134217batch_normalization_3134219batch_normalization_3134221*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������:^*&
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *1J 8� *Y
fTRR
P__inference_batch_normalization_layer_call_and_return_conditional_losses_3133537�
!conv2d_16/StatefulPartitionedCallStatefulPartitionedCall4batch_normalization/StatefulPartitionedCall:output:0conv2d_16_3134224conv2d_16_3134226*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������:^*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *1J 8� *O
fJRH
F__inference_conv2d_16_layer_call_and_return_conditional_losses_3133687�
activation_24/PartitionedCallPartitionedCall*conv2d_16/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������:^* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2 *1J 8� *S
fNRL
J__inference_activation_24_layer_call_and_return_conditional_losses_3133698�
-group_normalization_1/StatefulPartitionedCallStatefulPartitionedCall&activation_24/PartitionedCall:output:0group_normalization_1_3134230group_normalization_1_3134232*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������:^*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *1J 8� *2
f-R+
)__inference_restored_function_body_205932�
!conv2d_17/StatefulPartitionedCallStatefulPartitionedCall6group_normalization_1/StatefulPartitionedCall:output:0conv2d_17_3134235conv2d_17_3134237*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������:^*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *1J 8� *O
fJRH
F__inference_conv2d_17_layer_call_and_return_conditional_losses_3133715�
activation_25/PartitionedCallPartitionedCall*conv2d_17/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������:^* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2 *1J 8� *S
fNRL
J__inference_activation_25_layer_call_and_return_conditional_losses_3133726�
flatten/PartitionedCallPartitionedCall&activation_23/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *)
_output_shapes
:�����������* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2 *1J 8� *M
fHRF
D__inference_flatten_layer_call_and_return_conditional_losses_3133734�
flatten_1/PartitionedCallPartitionedCall&activation_25/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *)
_output_shapes
:�����������* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2 *1J 8� *O
fJRH
F__inference_flatten_1_layer_call_and_return_conditional_losses_3133742�
concatenate/PartitionedCallPartitionedCall flatten/PartitionedCall:output:0"flatten_1/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *)
_output_shapes
:�����������
* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2 *1J 8� *Q
fLRJ
H__inference_concatenate_layer_call_and_return_conditional_losses_3133751�
dense_4/StatefulPartitionedCallStatefulPartitionedCall$concatenate/PartitionedCall:output:0dense_4_3134244dense_4_3134246*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *1J 8� *M
fHRF
D__inference_dense_4_layer_call_and_return_conditional_losses_3133763�
activation_26/PartitionedCallPartitionedCall(dense_4/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2 *1J 8� *S
fNRL
J__inference_activation_26_layer_call_and_return_conditional_losses_3133774�
dense_5/StatefulPartitionedCallStatefulPartitionedCall&activation_26/PartitionedCall:output:0dense_5_3134250dense_5_3134252*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *1J 8� *M
fHRF
D__inference_dense_5_layer_call_and_return_conditional_losses_3133786w
IdentityIdentity(dense_5/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp,^batch_normalization/StatefulPartitionedCall"^conv2d_13/StatefulPartitionedCall"^conv2d_14/StatefulPartitionedCall"^conv2d_15/StatefulPartitionedCall"^conv2d_16/StatefulPartitionedCall"^conv2d_17/StatefulPartitionedCall ^dense_4/StatefulPartitionedCall ^dense_5/StatefulPartitionedCall,^group_normalization/StatefulPartitionedCall.^group_normalization_1/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*[
_input_shapesJ
H:���������t�: : : : : : : : : : : : : : : : : : : : : : 2Z
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
:���������t�
!
_user_specified_name	input_2
�
�
)__inference_model_1_layer_call_fn_3134478

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
��


unknown_18:

unknown_19:

unknown_20:
identity��StatefulPartitionedCall�
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
:���������*6
_read_only_resource_inputs
	
*2
config_proto" 

CPU

GPU2 *1J 8� *M
fHRF
D__inference_model_1_layer_call_and_return_conditional_losses_3134091o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*[
_input_shapesJ
H:���������t�: : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:X T
0
_output_shapes
:���������t�
 
_user_specified_nameinputs
�
f
J__inference_activation_24_layer_call_and_return_conditional_losses_3134844

inputs
identityO
	LeakyRelu	LeakyReluinputs*/
_output_shapes
:���������:^g
IdentityIdentityLeakyRelu:activations:0*
T0*/
_output_shapes
:���������:^"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:���������:^:W S
/
_output_shapes
:���������:^
 
_user_specified_nameinputs
�u
�
#__inference__traced_restore_3135169
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
��
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
identity_31��AssignVariableOp�AssignVariableOp_1�AssignVariableOp_10�AssignVariableOp_11�AssignVariableOp_12�AssignVariableOp_13�AssignVariableOp_14�AssignVariableOp_15�AssignVariableOp_16�AssignVariableOp_17�AssignVariableOp_18�AssignVariableOp_19�AssignVariableOp_2�AssignVariableOp_20�AssignVariableOp_21�AssignVariableOp_22�AssignVariableOp_23�AssignVariableOp_24�AssignVariableOp_25�AssignVariableOp_26�AssignVariableOp_27�AssignVariableOp_28�AssignVariableOp_29�AssignVariableOp_3�AssignVariableOp_4�AssignVariableOp_5�AssignVariableOp_6�AssignVariableOp_7�AssignVariableOp_8�AssignVariableOp_9�
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*�
value�B�B6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-2/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/beta/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-4/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-4/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-4/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-4/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-5/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-5/bias/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-6/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-6/beta/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-7/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-7/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-8/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-8/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-9/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-9/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB-optimizer/momentum/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH�
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*Q
valueHBFB B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B �
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*�
_output_shapes~
|:::::::::::::::::::::::::::::::*-
dtypes#
!2	[
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOpAssignVariableOp!assignvariableop_conv2d_13_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_1AssignVariableOp!assignvariableop_1_conv2d_13_biasIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_2AssignVariableOp#assignvariableop_2_conv2d_14_kernelIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_3AssignVariableOp!assignvariableop_3_conv2d_14_biasIdentity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_4AssignVariableOp,assignvariableop_4_group_normalization_gammaIdentity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_5AssignVariableOp+assignvariableop_5_group_normalization_betaIdentity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_6AssignVariableOp#assignvariableop_6_conv2d_15_kernelIdentity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_7AssignVariableOp!assignvariableop_7_conv2d_15_biasIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_8AssignVariableOp,assignvariableop_8_batch_normalization_gammaIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_9AssignVariableOp+assignvariableop_9_batch_normalization_betaIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_10AssignVariableOp3assignvariableop_10_batch_normalization_moving_meanIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_11AssignVariableOp7assignvariableop_11_batch_normalization_moving_varianceIdentity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_12AssignVariableOp$assignvariableop_12_conv2d_16_kernelIdentity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_13AssignVariableOp"assignvariableop_13_conv2d_16_biasIdentity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_14AssignVariableOp/assignvariableop_14_group_normalization_1_gammaIdentity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_15AssignVariableOp.assignvariableop_15_group_normalization_1_betaIdentity_15:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_16AssignVariableOp$assignvariableop_16_conv2d_17_kernelIdentity_16:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_17AssignVariableOp"assignvariableop_17_conv2d_17_biasIdentity_17:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_18AssignVariableOp"assignvariableop_18_dense_4_kernelIdentity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_19AssignVariableOp assignvariableop_19_dense_4_biasIdentity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_20AssignVariableOp"assignvariableop_20_dense_5_kernelIdentity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_21AssignVariableOp assignvariableop_21_dense_5_biasIdentity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0	*
_output_shapes
:�
AssignVariableOp_22AssignVariableOpassignvariableop_22_sgd_iterIdentity_22:output:0"/device:CPU:0*
_output_shapes
 *
dtype0	_
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_23AssignVariableOpassignvariableop_23_sgd_decayIdentity_23:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_24AssignVariableOp%assignvariableop_24_sgd_learning_rateIdentity_24:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_25AssignVariableOp assignvariableop_25_sgd_momentumIdentity_25:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_26AssignVariableOpassignvariableop_26_total_1Identity_26:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_27AssignVariableOpassignvariableop_27_count_1Identity_27:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_28IdentityRestoreV2:tensors:28"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_28AssignVariableOpassignvariableop_28_totalIdentity_28:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_29IdentityRestoreV2:tensors:29"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_29AssignVariableOpassignvariableop_29_countIdentity_29:output:0"/device:CPU:0*
_output_shapes
 *
dtype01
NoOpNoOp"/device:CPU:0*
_output_shapes
 �
Identity_30Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: W
Identity_31IdentityIdentity_30:output:0^NoOp_1*
T0*
_output_shapes
: �
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
�
K
/__inference_activation_24_layer_call_fn_3134839

inputs
identity�
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������:^* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2 *1J 8� *S
fNRL
J__inference_activation_24_layer_call_and_return_conditional_losses_3133698h
IdentityIdentityPartitionedCall:output:0*
T0*/
_output_shapes
:���������:^"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:���������:^:W S
/
_output_shapes
:���������:^
 
_user_specified_nameinputs
�
K
/__inference_activation_21_layer_call_fn_3134699

inputs
identity�
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:���������t�* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2 *1J 8� *S
fNRL
J__inference_activation_21_layer_call_and_return_conditional_losses_3133630i
IdentityIdentityPartitionedCall:output:0*
T0*0
_output_shapes
:���������t�"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:���������t�:X T
0
_output_shapes
:���������t�
 
_user_specified_nameinputs
�

�
F__inference_conv2d_13_layer_call_and_return_conditional_losses_3133596

inputs8
conv2d_readvariableop_resource:-
biasadd_readvariableop_resource:
identity��BiasAdd/ReadVariableOp�Conv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:*
dtype0�
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:���������t�*
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
:���������t�h
IdentityIdentityBiasAdd:output:0^NoOp*
T0*0
_output_shapes
:���������t�w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :���������t�: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:X T
0
_output_shapes
:���������t�
 
_user_specified_nameinputs
�
�
)__inference_dense_5_layer_call_fn_3134946

inputs
unknown:
	unknown_0:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *1J 8� *M
fHRF
D__inference_dense_5_layer_call_and_return_conditional_losses_3133786o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:���������: : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs
�
�
)__inference_restored_function_body_206507

inputs
unknown:
	unknown_0:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*0
_output_shapes
:���������t�*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *1J 8� *V
fQRO
M__inference_group_normalization_layer_call_and_return_conditional_losses_5832x
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*0
_output_shapes
:���������t�`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :���������t�: : 22
StatefulPartitionedCallStatefulPartitionedCall:X T
0
_output_shapes
:���������t�
 
_user_specified_nameinputs
�
�
%__inference_signature_wrapper_3134380
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
��


unknown_18:

unknown_19:

unknown_20:
identity��StatefulPartitionedCall�
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
:���������*8
_read_only_resource_inputs
	
*2
config_proto" 

CPU

GPU2 *1J 8� *+
f&R$
"__inference__wrapped_model_3133503o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*[
_input_shapesJ
H:���������t�: : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Y U
0
_output_shapes
:���������t�
!
_user_specified_name	input_2
�
�
P__inference_batch_normalization_layer_call_and_return_conditional_losses_3134797

inputs%
readvariableop_resource:'
readvariableop_1_resource:6
(fusedbatchnormv3_readvariableop_resource:8
*fusedbatchnormv3_readvariableop_1_resource:
identity��FusedBatchNormV3/ReadVariableOp�!FusedBatchNormV3/ReadVariableOp_1�ReadVariableOp�ReadVariableOp_1b
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:*
dtype0f
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:*
dtype0�
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:*
dtype0�
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:*
dtype0�
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+���������������������������:::::*
epsilon%o�:*
is_training( }
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*A
_output_shapes/
-:+����������������������������
NoOpNoOp ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+���������������������������: : : : 2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+���������������������������
 
_user_specified_nameinputs
�

�
F__inference_conv2d_16_layer_call_and_return_conditional_losses_3133687

inputs8
conv2d_readvariableop_resource:-
biasadd_readvariableop_resource:
identity��BiasAdd/ReadVariableOp�Conv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:*
dtype0�
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������:^*
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
:���������:^g
IdentityIdentityBiasAdd:output:0^NoOp*
T0*/
_output_shapes
:���������:^w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:���������:^: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:���������:^
 
_user_specified_nameinputs
�
K
/__inference_activation_26_layer_call_fn_3134932

inputs
identity�
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2 *1J 8� *S
fNRL
J__inference_activation_26_layer_call_and_return_conditional_losses_3133774`
IdentityIdentityPartitionedCall:output:0*
T0*'
_output_shapes
:���������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:���������:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs
�
�
2__inference_group_normalization_layer_call_fn_4451

inputs
unknown:
	unknown_0:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:���������t�*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *1J 8� *V
fQRO
M__inference_group_normalization_layer_call_and_return_conditional_losses_4444`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 x
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*0
_output_shapes
:���������t�"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :���������t�: : 22
StatefulPartitionedCallStatefulPartitionedCall:X T
0
_output_shapes
:���������t�
 
_user_specified_nameinputs
�
f
J__inference_activation_21_layer_call_and_return_conditional_losses_3133630

inputs
identityP
	LeakyRelu	LeakyReluinputs*0
_output_shapes
:���������t�h
IdentityIdentityLeakyRelu:activations:0*
T0*0
_output_shapes
:���������t�"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:���������t�:X T
0
_output_shapes
:���������t�
 
_user_specified_nameinputs
�

�
F__inference_conv2d_14_layer_call_and_return_conditional_losses_3133619

inputs8
conv2d_readvariableop_resource:-
biasadd_readvariableop_resource:
identity��BiasAdd/ReadVariableOp�Conv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:*
dtype0�
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:���������t�*
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
:���������t�h
IdentityIdentityBiasAdd:output:0^NoOp*
T0*0
_output_shapes
:���������t�w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :���������t�: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:X T
0
_output_shapes
:���������t�
 
_user_specified_nameinputs
�
f
J__inference_activation_26_layer_call_and_return_conditional_losses_3134937

inputs
identityG
	LeakyRelu	LeakyReluinputs*'
_output_shapes
:���������_
IdentityIdentityLeakyRelu:activations:0*
T0*'
_output_shapes
:���������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:���������:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs
�
j
N__inference_average_pooling2d_layer_call_and_return_conditional_losses_3134743

inputs
identity�
AvgPoolAvgPoolinputs*
T0*J
_output_shapes8
6:4������������������������������������*
ksize
*
paddingVALID*
strides
{
IdentityIdentityAvgPool:output:0*
T0*J
_output_shapes8
6:4������������������������������������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4������������������������������������:r n
J
_output_shapes8
6:4������������������������������������
 
_user_specified_nameinputs
�
f
J__inference_activation_22_layer_call_and_return_conditional_losses_3133658

inputs
identityP
	LeakyRelu	LeakyReluinputs*0
_output_shapes
:���������t�h
IdentityIdentityLeakyRelu:activations:0*
T0*0
_output_shapes
:���������t�"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:���������t�:X T
0
_output_shapes
:���������t�
 
_user_specified_nameinputs
�
f
J__inference_activation_20_layer_call_and_return_conditional_losses_3133607

inputs
identityP
	LeakyRelu	LeakyReluinputs*0
_output_shapes
:���������t�h
IdentityIdentityLeakyRelu:activations:0*
T0*0
_output_shapes
:���������t�"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:���������t�:X T
0
_output_shapes
:���������t�
 
_user_specified_nameinputs
�	
�
5__inference_batch_normalization_layer_call_fn_3134779

inputs
unknown:
	unknown_0:
	unknown_1:
	unknown_2:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+���������������������������*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *1J 8� *Y
fTRR
P__inference_batch_normalization_layer_call_and_return_conditional_losses_3133568�
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*A
_output_shapes/
-:+���������������������������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+���������������������������: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+���������������������������
 
_user_specified_nameinputs
�
E
)__inference_flatten_layer_call_fn_3134878

inputs
identity�
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *)
_output_shapes
:�����������* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2 *1J 8� *M
fHRF
D__inference_flatten_layer_call_and_return_conditional_losses_3133734b
IdentityIdentityPartitionedCall:output:0*
T0*)
_output_shapes
:�����������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:���������:^:W S
/
_output_shapes
:���������:^
 
_user_specified_nameinputs
�
�
+__inference_conv2d_17_layer_call_fn_3134853

inputs!
unknown:
	unknown_0:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������:^*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *1J 8� *O
fJRH
F__inference_conv2d_17_layer_call_and_return_conditional_losses_3133715w
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:���������:^`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:���������:^: : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:���������:^
 
_user_specified_nameinputs
�
K
/__inference_activation_23_layer_call_fn_3134748

inputs
identity�
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������:^* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2 *1J 8� *S
fNRL
J__inference_activation_23_layer_call_and_return_conditional_losses_3133666h
IdentityIdentityPartitionedCall:output:0*
T0*/
_output_shapes
:���������:^"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:���������:^:W S
/
_output_shapes
:���������:^
 
_user_specified_nameinputs
�
�
+__inference_conv2d_16_layer_call_fn_3134824

inputs!
unknown:
	unknown_0:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������:^*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *1J 8� *O
fJRH
F__inference_conv2d_16_layer_call_and_return_conditional_losses_3133687w
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:���������:^`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:���������:^: : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:���������:^
 
_user_specified_nameinputs
�
f
J__inference_activation_20_layer_call_and_return_conditional_losses_3134675

inputs
identityP
	LeakyRelu	LeakyReluinputs*0
_output_shapes
:���������t�h
IdentityIdentityLeakyRelu:activations:0*
T0*0
_output_shapes
:���������t�"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:���������t�:X T
0
_output_shapes
:���������t�
 
_user_specified_nameinputs
�

�
F__inference_conv2d_15_layer_call_and_return_conditional_losses_3134723

inputs8
conv2d_readvariableop_resource:-
biasadd_readvariableop_resource:
identity��BiasAdd/ReadVariableOp�Conv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:*
dtype0�
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:���������t�*
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
:���������t�h
IdentityIdentityBiasAdd:output:0^NoOp*
T0*0
_output_shapes
:���������t�w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :���������t�: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:X T
0
_output_shapes
:���������t�
 
_user_specified_nameinputs
�>
�
 __inference__traced_save_3135069
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

identity_1��MergeV2Checkpointsw
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
_temp/part�
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
value	B : �
ShardedFilenameShardedFilenameStringJoin:output:0ShardedFilename/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: �
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*�
value�B�B6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-2/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/beta/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-4/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-4/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-4/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-4/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-5/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-5/bias/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-6/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-6/beta/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-7/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-7/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-8/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-8/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-9/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-9/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB-optimizer/momentum/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH�
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*Q
valueHBFB B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B �
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0+savev2_conv2d_13_kernel_read_readvariableop)savev2_conv2d_13_bias_read_readvariableop+savev2_conv2d_14_kernel_read_readvariableop)savev2_conv2d_14_bias_read_readvariableop4savev2_group_normalization_gamma_read_readvariableop3savev2_group_normalization_beta_read_readvariableop+savev2_conv2d_15_kernel_read_readvariableop)savev2_conv2d_15_bias_read_readvariableop4savev2_batch_normalization_gamma_read_readvariableop3savev2_batch_normalization_beta_read_readvariableop:savev2_batch_normalization_moving_mean_read_readvariableop>savev2_batch_normalization_moving_variance_read_readvariableop+savev2_conv2d_16_kernel_read_readvariableop)savev2_conv2d_16_bias_read_readvariableop6savev2_group_normalization_1_gamma_read_readvariableop5savev2_group_normalization_1_beta_read_readvariableop+savev2_conv2d_17_kernel_read_readvariableop)savev2_conv2d_17_bias_read_readvariableop)savev2_dense_4_kernel_read_readvariableop'savev2_dense_4_bias_read_readvariableop)savev2_dense_5_kernel_read_readvariableop'savev2_dense_5_bias_read_readvariableop#savev2_sgd_iter_read_readvariableop$savev2_sgd_decay_read_readvariableop,savev2_sgd_learning_rate_read_readvariableop'savev2_sgd_momentum_read_readvariableop"savev2_total_1_read_readvariableop"savev2_count_1_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableopsavev2_const"/device:CPU:0*
_output_shapes
 *-
dtypes#
!2	�
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:�
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

identity_1Identity_1:output:0*�
_input_shapes�
�: :::::::::::::::::::
��
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
��
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
�
�
)__inference_restored_function_body_205932

inputs
unknown:
	unknown_0:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*/
_output_shapes
:���������:^*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *1J 8� *X
fSRQ
O__inference_group_normalization_1_layer_call_and_return_conditional_losses_5362w
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:���������:^`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:���������:^: : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:���������:^
 
_user_specified_nameinputs
�

�
F__inference_conv2d_17_layer_call_and_return_conditional_losses_3134863

inputs8
conv2d_readvariableop_resource:-
biasadd_readvariableop_resource:
identity��BiasAdd/ReadVariableOp�Conv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:*
dtype0�
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������:^*
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
:���������:^g
IdentityIdentityBiasAdd:output:0^NoOp*
T0*/
_output_shapes
:���������:^w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:���������:^: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:���������:^
 
_user_specified_nameinputs
�
f
J__inference_activation_25_layer_call_and_return_conditional_losses_3134873

inputs
identityO
	LeakyRelu	LeakyReluinputs*/
_output_shapes
:���������:^g
IdentityIdentityLeakyRelu:activations:0*
T0*/
_output_shapes
:���������:^"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:���������:^:W S
/
_output_shapes
:���������:^
 
_user_specified_nameinputs
�
O
3__inference_average_pooling2d_layer_call_fn_3134738

inputs
identity�
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4������������������������������������* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2 *1J 8� *W
fRRP
N__inference_average_pooling2d_layer_call_and_return_conditional_losses_3133512�
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4������������������������������������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4������������������������������������:r n
J
_output_shapes8
6:4������������������������������������
 
_user_specified_nameinputs
�
�
+__inference_conv2d_14_layer_call_fn_3134684

inputs!
unknown:
	unknown_0:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:���������t�*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *1J 8� *O
fJRH
F__inference_conv2d_14_layer_call_and_return_conditional_losses_3133619x
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*0
_output_shapes
:���������t�`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :���������t�: : 22
StatefulPartitionedCallStatefulPartitionedCall:X T
0
_output_shapes
:���������t�
 
_user_specified_nameinputs
�
f
J__inference_activation_23_layer_call_and_return_conditional_losses_3133666

inputs
identityO
	LeakyRelu	LeakyReluinputs*/
_output_shapes
:���������:^g
IdentityIdentityLeakyRelu:activations:0*
T0*/
_output_shapes
:���������:^"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:���������:^:W S
/
_output_shapes
:���������:^
 
_user_specified_nameinputs
�	
�
D__inference_dense_4_layer_call_and_return_conditional_losses_3133763

inputs2
matmul_readvariableop_resource:
��
-
biasadd_readvariableop_resource:
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOpv
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
��
*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������_
IdentityIdentityBiasAdd:output:0^NoOp*
T0*'
_output_shapes
:���������w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*,
_input_shapes
:�����������
: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:Q M
)
_output_shapes
:�����������

 
_user_specified_nameinputs
�Y
�

D__inference_model_1_layer_call_and_return_conditional_losses_3134325
input_2+
conv2d_13_3134259:
conv2d_13_3134261:+
conv2d_14_3134265:
conv2d_14_3134267:)
group_normalization_3134271:)
group_normalization_3134273:+
conv2d_15_3134276:
conv2d_15_3134278:)
batch_normalization_3134284:)
batch_normalization_3134286:)
batch_normalization_3134288:)
batch_normalization_3134290:+
conv2d_16_3134293:
conv2d_16_3134295:+
group_normalization_1_3134299:+
group_normalization_1_3134301:+
conv2d_17_3134304:
conv2d_17_3134306:#
dense_4_3134313:
��

dense_4_3134315:!
dense_5_3134319:
dense_5_3134321:
identity��+batch_normalization/StatefulPartitionedCall�!conv2d_13/StatefulPartitionedCall�!conv2d_14/StatefulPartitionedCall�!conv2d_15/StatefulPartitionedCall�!conv2d_16/StatefulPartitionedCall�!conv2d_17/StatefulPartitionedCall�dense_4/StatefulPartitionedCall�dense_5/StatefulPartitionedCall�+group_normalization/StatefulPartitionedCall�-group_normalization_1/StatefulPartitionedCall�
!conv2d_13/StatefulPartitionedCallStatefulPartitionedCallinput_2conv2d_13_3134259conv2d_13_3134261*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:���������t�*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *1J 8� *O
fJRH
F__inference_conv2d_13_layer_call_and_return_conditional_losses_3133596�
activation_20/PartitionedCallPartitionedCall*conv2d_13/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:���������t�* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2 *1J 8� *S
fNRL
J__inference_activation_20_layer_call_and_return_conditional_losses_3133607�
!conv2d_14/StatefulPartitionedCallStatefulPartitionedCall&activation_20/PartitionedCall:output:0conv2d_14_3134265conv2d_14_3134267*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:���������t�*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *1J 8� *O
fJRH
F__inference_conv2d_14_layer_call_and_return_conditional_losses_3133619�
activation_21/PartitionedCallPartitionedCall*conv2d_14/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:���������t�* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2 *1J 8� *S
fNRL
J__inference_activation_21_layer_call_and_return_conditional_losses_3133630�
+group_normalization/StatefulPartitionedCallStatefulPartitionedCall&activation_21/PartitionedCall:output:0group_normalization_3134271group_normalization_3134273*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:���������t�*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *1J 8� *2
f-R+
)__inference_restored_function_body_206507�
!conv2d_15/StatefulPartitionedCallStatefulPartitionedCall4group_normalization/StatefulPartitionedCall:output:0conv2d_15_3134276conv2d_15_3134278*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:���������t�*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *1J 8� *O
fJRH
F__inference_conv2d_15_layer_call_and_return_conditional_losses_3133647�
activation_22/PartitionedCallPartitionedCall*conv2d_15/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:���������t�* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2 *1J 8� *S
fNRL
J__inference_activation_22_layer_call_and_return_conditional_losses_3133658�
!average_pooling2d/PartitionedCallPartitionedCall&activation_22/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������:^* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2 *1J 8� *W
fRRP
N__inference_average_pooling2d_layer_call_and_return_conditional_losses_3133512�
activation_23/PartitionedCallPartitionedCall*average_pooling2d/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������:^* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2 *1J 8� *S
fNRL
J__inference_activation_23_layer_call_and_return_conditional_losses_3133666�
+batch_normalization/StatefulPartitionedCallStatefulPartitionedCall&activation_23/PartitionedCall:output:0batch_normalization_3134284batch_normalization_3134286batch_normalization_3134288batch_normalization_3134290*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������:^*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *1J 8� *Y
fTRR
P__inference_batch_normalization_layer_call_and_return_conditional_losses_3133568�
!conv2d_16/StatefulPartitionedCallStatefulPartitionedCall4batch_normalization/StatefulPartitionedCall:output:0conv2d_16_3134293conv2d_16_3134295*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������:^*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *1J 8� *O
fJRH
F__inference_conv2d_16_layer_call_and_return_conditional_losses_3133687�
activation_24/PartitionedCallPartitionedCall*conv2d_16/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������:^* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2 *1J 8� *S
fNRL
J__inference_activation_24_layer_call_and_return_conditional_losses_3133698�
-group_normalization_1/StatefulPartitionedCallStatefulPartitionedCall&activation_24/PartitionedCall:output:0group_normalization_1_3134299group_normalization_1_3134301*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������:^*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *1J 8� *2
f-R+
)__inference_restored_function_body_206544�
!conv2d_17/StatefulPartitionedCallStatefulPartitionedCall6group_normalization_1/StatefulPartitionedCall:output:0conv2d_17_3134304conv2d_17_3134306*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������:^*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *1J 8� *O
fJRH
F__inference_conv2d_17_layer_call_and_return_conditional_losses_3133715�
activation_25/PartitionedCallPartitionedCall*conv2d_17/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������:^* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2 *1J 8� *S
fNRL
J__inference_activation_25_layer_call_and_return_conditional_losses_3133726�
flatten/PartitionedCallPartitionedCall&activation_23/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *)
_output_shapes
:�����������* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2 *1J 8� *M
fHRF
D__inference_flatten_layer_call_and_return_conditional_losses_3133734�
flatten_1/PartitionedCallPartitionedCall&activation_25/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *)
_output_shapes
:�����������* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2 *1J 8� *O
fJRH
F__inference_flatten_1_layer_call_and_return_conditional_losses_3133742�
concatenate/PartitionedCallPartitionedCall flatten/PartitionedCall:output:0"flatten_1/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *)
_output_shapes
:�����������
* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2 *1J 8� *Q
fLRJ
H__inference_concatenate_layer_call_and_return_conditional_losses_3133751�
dense_4/StatefulPartitionedCallStatefulPartitionedCall$concatenate/PartitionedCall:output:0dense_4_3134313dense_4_3134315*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *1J 8� *M
fHRF
D__inference_dense_4_layer_call_and_return_conditional_losses_3133763�
activation_26/PartitionedCallPartitionedCall(dense_4/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2 *1J 8� *S
fNRL
J__inference_activation_26_layer_call_and_return_conditional_losses_3133774�
dense_5/StatefulPartitionedCallStatefulPartitionedCall&activation_26/PartitionedCall:output:0dense_5_3134319dense_5_3134321*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *1J 8� *M
fHRF
D__inference_dense_5_layer_call_and_return_conditional_losses_3133786w
IdentityIdentity(dense_5/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp,^batch_normalization/StatefulPartitionedCall"^conv2d_13/StatefulPartitionedCall"^conv2d_14/StatefulPartitionedCall"^conv2d_15/StatefulPartitionedCall"^conv2d_16/StatefulPartitionedCall"^conv2d_17/StatefulPartitionedCall ^dense_4/StatefulPartitionedCall ^dense_5/StatefulPartitionedCall,^group_normalization/StatefulPartitionedCall.^group_normalization_1/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*[
_input_shapesJ
H:���������t�: : : : : : : : : : : : : : : : : : : : : : 2Z
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
:���������t�
!
_user_specified_name	input_2
�Y
�

D__inference_model_1_layer_call_and_return_conditional_losses_3134091

inputs+
conv2d_13_3134025:
conv2d_13_3134027:+
conv2d_14_3134031:
conv2d_14_3134033:)
group_normalization_3134037:)
group_normalization_3134039:+
conv2d_15_3134042:
conv2d_15_3134044:)
batch_normalization_3134050:)
batch_normalization_3134052:)
batch_normalization_3134054:)
batch_normalization_3134056:+
conv2d_16_3134059:
conv2d_16_3134061:+
group_normalization_1_3134065:+
group_normalization_1_3134067:+
conv2d_17_3134070:
conv2d_17_3134072:#
dense_4_3134079:
��

dense_4_3134081:!
dense_5_3134085:
dense_5_3134087:
identity��+batch_normalization/StatefulPartitionedCall�!conv2d_13/StatefulPartitionedCall�!conv2d_14/StatefulPartitionedCall�!conv2d_15/StatefulPartitionedCall�!conv2d_16/StatefulPartitionedCall�!conv2d_17/StatefulPartitionedCall�dense_4/StatefulPartitionedCall�dense_5/StatefulPartitionedCall�+group_normalization/StatefulPartitionedCall�-group_normalization_1/StatefulPartitionedCall�
!conv2d_13/StatefulPartitionedCallStatefulPartitionedCallinputsconv2d_13_3134025conv2d_13_3134027*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:���������t�*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *1J 8� *O
fJRH
F__inference_conv2d_13_layer_call_and_return_conditional_losses_3133596�
activation_20/PartitionedCallPartitionedCall*conv2d_13/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:���������t�* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2 *1J 8� *S
fNRL
J__inference_activation_20_layer_call_and_return_conditional_losses_3133607�
!conv2d_14/StatefulPartitionedCallStatefulPartitionedCall&activation_20/PartitionedCall:output:0conv2d_14_3134031conv2d_14_3134033*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:���������t�*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *1J 8� *O
fJRH
F__inference_conv2d_14_layer_call_and_return_conditional_losses_3133619�
activation_21/PartitionedCallPartitionedCall*conv2d_14/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:���������t�* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2 *1J 8� *S
fNRL
J__inference_activation_21_layer_call_and_return_conditional_losses_3133630�
+group_normalization/StatefulPartitionedCallStatefulPartitionedCall&activation_21/PartitionedCall:output:0group_normalization_3134037group_normalization_3134039*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:���������t�*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *1J 8� *2
f-R+
)__inference_restored_function_body_206507�
!conv2d_15/StatefulPartitionedCallStatefulPartitionedCall4group_normalization/StatefulPartitionedCall:output:0conv2d_15_3134042conv2d_15_3134044*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:���������t�*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *1J 8� *O
fJRH
F__inference_conv2d_15_layer_call_and_return_conditional_losses_3133647�
activation_22/PartitionedCallPartitionedCall*conv2d_15/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:���������t�* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2 *1J 8� *S
fNRL
J__inference_activation_22_layer_call_and_return_conditional_losses_3133658�
!average_pooling2d/PartitionedCallPartitionedCall&activation_22/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������:^* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2 *1J 8� *W
fRRP
N__inference_average_pooling2d_layer_call_and_return_conditional_losses_3133512�
activation_23/PartitionedCallPartitionedCall*average_pooling2d/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������:^* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2 *1J 8� *S
fNRL
J__inference_activation_23_layer_call_and_return_conditional_losses_3133666�
+batch_normalization/StatefulPartitionedCallStatefulPartitionedCall&activation_23/PartitionedCall:output:0batch_normalization_3134050batch_normalization_3134052batch_normalization_3134054batch_normalization_3134056*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������:^*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *1J 8� *Y
fTRR
P__inference_batch_normalization_layer_call_and_return_conditional_losses_3133568�
!conv2d_16/StatefulPartitionedCallStatefulPartitionedCall4batch_normalization/StatefulPartitionedCall:output:0conv2d_16_3134059conv2d_16_3134061*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������:^*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *1J 8� *O
fJRH
F__inference_conv2d_16_layer_call_and_return_conditional_losses_3133687�
activation_24/PartitionedCallPartitionedCall*conv2d_16/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������:^* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2 *1J 8� *S
fNRL
J__inference_activation_24_layer_call_and_return_conditional_losses_3133698�
-group_normalization_1/StatefulPartitionedCallStatefulPartitionedCall&activation_24/PartitionedCall:output:0group_normalization_1_3134065group_normalization_1_3134067*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������:^*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *1J 8� *2
f-R+
)__inference_restored_function_body_206544�
!conv2d_17/StatefulPartitionedCallStatefulPartitionedCall6group_normalization_1/StatefulPartitionedCall:output:0conv2d_17_3134070conv2d_17_3134072*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������:^*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *1J 8� *O
fJRH
F__inference_conv2d_17_layer_call_and_return_conditional_losses_3133715�
activation_25/PartitionedCallPartitionedCall*conv2d_17/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������:^* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2 *1J 8� *S
fNRL
J__inference_activation_25_layer_call_and_return_conditional_losses_3133726�
flatten/PartitionedCallPartitionedCall&activation_23/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *)
_output_shapes
:�����������* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2 *1J 8� *M
fHRF
D__inference_flatten_layer_call_and_return_conditional_losses_3133734�
flatten_1/PartitionedCallPartitionedCall&activation_25/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *)
_output_shapes
:�����������* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2 *1J 8� *O
fJRH
F__inference_flatten_1_layer_call_and_return_conditional_losses_3133742�
concatenate/PartitionedCallPartitionedCall flatten/PartitionedCall:output:0"flatten_1/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *)
_output_shapes
:�����������
* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2 *1J 8� *Q
fLRJ
H__inference_concatenate_layer_call_and_return_conditional_losses_3133751�
dense_4/StatefulPartitionedCallStatefulPartitionedCall$concatenate/PartitionedCall:output:0dense_4_3134079dense_4_3134081*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *1J 8� *M
fHRF
D__inference_dense_4_layer_call_and_return_conditional_losses_3133763�
activation_26/PartitionedCallPartitionedCall(dense_4/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2 *1J 8� *S
fNRL
J__inference_activation_26_layer_call_and_return_conditional_losses_3133774�
dense_5/StatefulPartitionedCallStatefulPartitionedCall&activation_26/PartitionedCall:output:0dense_5_3134085dense_5_3134087*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *1J 8� *M
fHRF
D__inference_dense_5_layer_call_and_return_conditional_losses_3133786w
IdentityIdentity(dense_5/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp,^batch_normalization/StatefulPartitionedCall"^conv2d_13/StatefulPartitionedCall"^conv2d_14/StatefulPartitionedCall"^conv2d_15/StatefulPartitionedCall"^conv2d_16/StatefulPartitionedCall"^conv2d_17/StatefulPartitionedCall ^dense_4/StatefulPartitionedCall ^dense_5/StatefulPartitionedCall,^group_normalization/StatefulPartitionedCall.^group_normalization_1/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*[
_input_shapesJ
H:���������t�: : : : : : : : : : : : : : : : : : : : : : 2Z
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
:���������t�
 
_user_specified_nameinputs
�
Y
-__inference_concatenate_layer_call_fn_3134901
inputs_0
inputs_1
identity�
PartitionedCallPartitionedCallinputs_0inputs_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *)
_output_shapes
:�����������
* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2 *1J 8� *Q
fLRJ
H__inference_concatenate_layer_call_and_return_conditional_losses_3133751b
IdentityIdentityPartitionedCall:output:0*
T0*)
_output_shapes
:�����������
"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*=
_input_shapes,
*:�����������:�����������:S O
)
_output_shapes
:�����������
"
_user_specified_name
inputs/0:SO
)
_output_shapes
:�����������
"
_user_specified_name
inputs/1
�
�
+__inference_conv2d_13_layer_call_fn_3134655

inputs!
unknown:
	unknown_0:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:���������t�*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *1J 8� *O
fJRH
F__inference_conv2d_13_layer_call_and_return_conditional_losses_3133596x
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*0
_output_shapes
:���������t�`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :���������t�: : 22
StatefulPartitionedCallStatefulPartitionedCall:X T
0
_output_shapes
:���������t�
 
_user_specified_nameinputs
�Y
�

D__inference_model_1_layer_call_and_return_conditional_losses_3133793

inputs+
conv2d_13_3133597:
conv2d_13_3133599:+
conv2d_14_3133620:
conv2d_14_3133622:)
group_normalization_3133632:)
group_normalization_3133634:+
conv2d_15_3133648:
conv2d_15_3133650:)
batch_normalization_3133668:)
batch_normalization_3133670:)
batch_normalization_3133672:)
batch_normalization_3133674:+
conv2d_16_3133688:
conv2d_16_3133690:+
group_normalization_1_3133700:+
group_normalization_1_3133702:+
conv2d_17_3133716:
conv2d_17_3133718:#
dense_4_3133764:
��

dense_4_3133766:!
dense_5_3133787:
dense_5_3133789:
identity��+batch_normalization/StatefulPartitionedCall�!conv2d_13/StatefulPartitionedCall�!conv2d_14/StatefulPartitionedCall�!conv2d_15/StatefulPartitionedCall�!conv2d_16/StatefulPartitionedCall�!conv2d_17/StatefulPartitionedCall�dense_4/StatefulPartitionedCall�dense_5/StatefulPartitionedCall�+group_normalization/StatefulPartitionedCall�-group_normalization_1/StatefulPartitionedCall�
!conv2d_13/StatefulPartitionedCallStatefulPartitionedCallinputsconv2d_13_3133597conv2d_13_3133599*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:���������t�*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *1J 8� *O
fJRH
F__inference_conv2d_13_layer_call_and_return_conditional_losses_3133596�
activation_20/PartitionedCallPartitionedCall*conv2d_13/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:���������t�* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2 *1J 8� *S
fNRL
J__inference_activation_20_layer_call_and_return_conditional_losses_3133607�
!conv2d_14/StatefulPartitionedCallStatefulPartitionedCall&activation_20/PartitionedCall:output:0conv2d_14_3133620conv2d_14_3133622*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:���������t�*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *1J 8� *O
fJRH
F__inference_conv2d_14_layer_call_and_return_conditional_losses_3133619�
activation_21/PartitionedCallPartitionedCall*conv2d_14/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:���������t�* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2 *1J 8� *S
fNRL
J__inference_activation_21_layer_call_and_return_conditional_losses_3133630�
+group_normalization/StatefulPartitionedCallStatefulPartitionedCall&activation_21/PartitionedCall:output:0group_normalization_3133632group_normalization_3133634*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:���������t�*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *1J 8� *2
f-R+
)__inference_restored_function_body_205888�
!conv2d_15/StatefulPartitionedCallStatefulPartitionedCall4group_normalization/StatefulPartitionedCall:output:0conv2d_15_3133648conv2d_15_3133650*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:���������t�*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *1J 8� *O
fJRH
F__inference_conv2d_15_layer_call_and_return_conditional_losses_3133647�
activation_22/PartitionedCallPartitionedCall*conv2d_15/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:���������t�* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2 *1J 8� *S
fNRL
J__inference_activation_22_layer_call_and_return_conditional_losses_3133658�
!average_pooling2d/PartitionedCallPartitionedCall&activation_22/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������:^* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2 *1J 8� *W
fRRP
N__inference_average_pooling2d_layer_call_and_return_conditional_losses_3133512�
activation_23/PartitionedCallPartitionedCall*average_pooling2d/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������:^* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2 *1J 8� *S
fNRL
J__inference_activation_23_layer_call_and_return_conditional_losses_3133666�
+batch_normalization/StatefulPartitionedCallStatefulPartitionedCall&activation_23/PartitionedCall:output:0batch_normalization_3133668batch_normalization_3133670batch_normalization_3133672batch_normalization_3133674*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������:^*&
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *1J 8� *Y
fTRR
P__inference_batch_normalization_layer_call_and_return_conditional_losses_3133537�
!conv2d_16/StatefulPartitionedCallStatefulPartitionedCall4batch_normalization/StatefulPartitionedCall:output:0conv2d_16_3133688conv2d_16_3133690*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������:^*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *1J 8� *O
fJRH
F__inference_conv2d_16_layer_call_and_return_conditional_losses_3133687�
activation_24/PartitionedCallPartitionedCall*conv2d_16/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������:^* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2 *1J 8� *S
fNRL
J__inference_activation_24_layer_call_and_return_conditional_losses_3133698�
-group_normalization_1/StatefulPartitionedCallStatefulPartitionedCall&activation_24/PartitionedCall:output:0group_normalization_1_3133700group_normalization_1_3133702*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������:^*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *1J 8� *2
f-R+
)__inference_restored_function_body_205932�
!conv2d_17/StatefulPartitionedCallStatefulPartitionedCall6group_normalization_1/StatefulPartitionedCall:output:0conv2d_17_3133716conv2d_17_3133718*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������:^*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *1J 8� *O
fJRH
F__inference_conv2d_17_layer_call_and_return_conditional_losses_3133715�
activation_25/PartitionedCallPartitionedCall*conv2d_17/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������:^* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2 *1J 8� *S
fNRL
J__inference_activation_25_layer_call_and_return_conditional_losses_3133726�
flatten/PartitionedCallPartitionedCall&activation_23/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *)
_output_shapes
:�����������* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2 *1J 8� *M
fHRF
D__inference_flatten_layer_call_and_return_conditional_losses_3133734�
flatten_1/PartitionedCallPartitionedCall&activation_25/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *)
_output_shapes
:�����������* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2 *1J 8� *O
fJRH
F__inference_flatten_1_layer_call_and_return_conditional_losses_3133742�
concatenate/PartitionedCallPartitionedCall flatten/PartitionedCall:output:0"flatten_1/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *)
_output_shapes
:�����������
* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2 *1J 8� *Q
fLRJ
H__inference_concatenate_layer_call_and_return_conditional_losses_3133751�
dense_4/StatefulPartitionedCallStatefulPartitionedCall$concatenate/PartitionedCall:output:0dense_4_3133764dense_4_3133766*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *1J 8� *M
fHRF
D__inference_dense_4_layer_call_and_return_conditional_losses_3133763�
activation_26/PartitionedCallPartitionedCall(dense_4/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2 *1J 8� *S
fNRL
J__inference_activation_26_layer_call_and_return_conditional_losses_3133774�
dense_5/StatefulPartitionedCallStatefulPartitionedCall&activation_26/PartitionedCall:output:0dense_5_3133787dense_5_3133789*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *1J 8� *M
fHRF
D__inference_dense_5_layer_call_and_return_conditional_losses_3133786w
IdentityIdentity(dense_5/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp,^batch_normalization/StatefulPartitionedCall"^conv2d_13/StatefulPartitionedCall"^conv2d_14/StatefulPartitionedCall"^conv2d_15/StatefulPartitionedCall"^conv2d_16/StatefulPartitionedCall"^conv2d_17/StatefulPartitionedCall ^dense_4/StatefulPartitionedCall ^dense_5/StatefulPartitionedCall,^group_normalization/StatefulPartitionedCall.^group_normalization_1/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*[
_input_shapesJ
H:���������t�: : : : : : : : : : : : : : : : : : : : : : 2Z
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
:���������t�
 
_user_specified_nameinputs
�
f
J__inference_activation_22_layer_call_and_return_conditional_losses_3134733

inputs
identityP
	LeakyRelu	LeakyReluinputs*0
_output_shapes
:���������t�h
IdentityIdentityLeakyRelu:activations:0*
T0*0
_output_shapes
:���������t�"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:���������t�:X T
0
_output_shapes
:���������t�
 
_user_specified_nameinputs
�2
�
O__inference_group_normalization_1_layer_call_and_return_conditional_losses_5362

inputs/
!reshape_2_readvariableop_resource:/
!reshape_3_readvariableop_resource:
identity��Reshape_2/ReadVariableOp�Reshape_3/ReadVariableOp;
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
valueB:�
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
valueB:�
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
valueB:�
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
valueB:�
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
value	B :�
stackPackstrided_slice:output:0stack/1:output:0strided_slice_1:output:0strided_slice_2:output:0stack/4:output:0*
N*
T0*
_output_shapes
:h
ReshapeReshapeinputsstack:output:0*
T0*3
_output_shapes!
:���������:^k
Mean/reduction_indicesConst*
_output_shapes
:*
dtype0*!
valueB"         �
MeanMeanReshape:output:0Mean/reduction_indices:output:0*
T0*3
_output_shapes!
:���������*
	keep_dims({
&reduce_variance/Mean/reduction_indicesConst*
_output_shapes
:*
dtype0*!
valueB"         �
reduce_variance/MeanMeanReshape:output:0/reduce_variance/Mean/reduction_indices:output:0*
T0*3
_output_shapes!
:���������*
	keep_dims(�
reduce_variance/subSubReshape:output:0reduce_variance/Mean:output:0*
T0*3
_output_shapes!
:���������:^w
reduce_variance/SquareSquarereduce_variance/sub:z:0*
T0*3
_output_shapes!
:���������:^}
(reduce_variance/Mean_1/reduction_indicesConst*
_output_shapes
:*
dtype0*!
valueB"         �
reduce_variance/Mean_1Meanreduce_variance/Square:y:01reduce_variance/Mean_1/reduction_indices:output:0*
T0*3
_output_shapes!
:���������*
	keep_dims(i
subSubReshape:output:0Mean:output:0*
T0*3
_output_shapes!
:���������:^J
add/yConst*
_output_shapes
: *
dtype0*
valueB
 *���={
addAddV2reduce_variance/Mean_1:output:0add/y:output:0*
T0*3
_output_shapes!
:���������J
ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    i
MaximumMaximumadd:z:0Const:output:0*
T0*3
_output_shapes!
:���������W
SqrtSqrtMaximum:z:0*
T0*3
_output_shapes!
:���������c
truedivRealDivsub:z:0Sqrt:y:0*
T0*3
_output_shapes!
:���������:^o
	Reshape_1Reshapetruediv:z:0stack:output:0*
T0*3
_output_shapes!
:���������:^v
Reshape_2/ReadVariableOpReadVariableOp!reshape_2_readvariableop_resource*
_output_shapes
:*
dtype0l
Reshape_2/shapeConst*
_output_shapes
:*
dtype0*)
value B"               �
	Reshape_2Reshape Reshape_2/ReadVariableOp:value:0Reshape_2/shape:output:0*
T0**
_output_shapes
:p
mulMulReshape_1:output:0Reshape_2:output:0*
T0*3
_output_shapes!
:���������:^v
Reshape_3/ReadVariableOpReadVariableOp!reshape_3_readvariableop_resource*
_output_shapes
:*
dtype0l
Reshape_3/shapeConst*
_output_shapes
:*
dtype0*)
value B"               �
	Reshape_3Reshape Reshape_3/ReadVariableOp:value:0Reshape_3/shape:output:0*
T0**
_output_shapes
:i
add_1AddV2mul:z:0Reshape_3:output:0*
T0*3
_output_shapes!
:���������:^i
	Reshape_4Reshape	add_1:z:0Shape:output:0*
T0*/
_output_shapes
:���������:^|
NoOpNoOp^Reshape_2/ReadVariableOp^Reshape_3/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 i
IdentityIdentityReshape_4:output:0^NoOp*
T0*/
_output_shapes
:���������:^"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:���������:^: : 24
Reshape_2/ReadVariableOpReshape_2/ReadVariableOp24
Reshape_3/ReadVariableOpReshape_3/ReadVariableOp:W S
/
_output_shapes
:���������:^
 
_user_specified_nameinputs
�
f
J__inference_activation_24_layer_call_and_return_conditional_losses_3133698

inputs
identityO
	LeakyRelu	LeakyReluinputs*/
_output_shapes
:���������:^g
IdentityIdentityLeakyRelu:activations:0*
T0*/
_output_shapes
:���������:^"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:���������:^:W S
/
_output_shapes
:���������:^
 
_user_specified_nameinputs
�r
�
"__inference__wrapped_model_3133503
input_2J
0model_1_conv2d_13_conv2d_readvariableop_resource:?
1model_1_conv2d_13_biasadd_readvariableop_resource:J
0model_1_conv2d_14_conv2d_readvariableop_resource:?
1model_1_conv2d_14_biasadd_readvariableop_resource:1
#model_1_group_normalization_3133436:1
#model_1_group_normalization_3133438:J
0model_1_conv2d_15_conv2d_readvariableop_resource:?
1model_1_conv2d_15_biasadd_readvariableop_resource:A
3model_1_batch_normalization_readvariableop_resource:C
5model_1_batch_normalization_readvariableop_1_resource:R
Dmodel_1_batch_normalization_fusedbatchnormv3_readvariableop_resource:T
Fmodel_1_batch_normalization_fusedbatchnormv3_readvariableop_1_resource:J
0model_1_conv2d_16_conv2d_readvariableop_resource:?
1model_1_conv2d_16_biasadd_readvariableop_resource:3
%model_1_group_normalization_1_3133471:3
%model_1_group_normalization_1_3133473:J
0model_1_conv2d_17_conv2d_readvariableop_resource:?
1model_1_conv2d_17_biasadd_readvariableop_resource:B
.model_1_dense_4_matmul_readvariableop_resource:
��
=
/model_1_dense_4_biasadd_readvariableop_resource:@
.model_1_dense_5_matmul_readvariableop_resource:=
/model_1_dense_5_biasadd_readvariableop_resource:
identity��;model_1/batch_normalization/FusedBatchNormV3/ReadVariableOp�=model_1/batch_normalization/FusedBatchNormV3/ReadVariableOp_1�*model_1/batch_normalization/ReadVariableOp�,model_1/batch_normalization/ReadVariableOp_1�(model_1/conv2d_13/BiasAdd/ReadVariableOp�'model_1/conv2d_13/Conv2D/ReadVariableOp�(model_1/conv2d_14/BiasAdd/ReadVariableOp�'model_1/conv2d_14/Conv2D/ReadVariableOp�(model_1/conv2d_15/BiasAdd/ReadVariableOp�'model_1/conv2d_15/Conv2D/ReadVariableOp�(model_1/conv2d_16/BiasAdd/ReadVariableOp�'model_1/conv2d_16/Conv2D/ReadVariableOp�(model_1/conv2d_17/BiasAdd/ReadVariableOp�'model_1/conv2d_17/Conv2D/ReadVariableOp�&model_1/dense_4/BiasAdd/ReadVariableOp�%model_1/dense_4/MatMul/ReadVariableOp�&model_1/dense_5/BiasAdd/ReadVariableOp�%model_1/dense_5/MatMul/ReadVariableOp�3model_1/group_normalization/StatefulPartitionedCall�5model_1/group_normalization_1/StatefulPartitionedCall�
'model_1/conv2d_13/Conv2D/ReadVariableOpReadVariableOp0model_1_conv2d_13_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype0�
model_1/conv2d_13/Conv2DConv2Dinput_2/model_1/conv2d_13/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:���������t�*
paddingSAME*
strides
�
(model_1/conv2d_13/BiasAdd/ReadVariableOpReadVariableOp1model_1_conv2d_13_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
model_1/conv2d_13/BiasAddBiasAdd!model_1/conv2d_13/Conv2D:output:00model_1/conv2d_13/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:���������t��
model_1/activation_20/LeakyRelu	LeakyRelu"model_1/conv2d_13/BiasAdd:output:0*0
_output_shapes
:���������t��
'model_1/conv2d_14/Conv2D/ReadVariableOpReadVariableOp0model_1_conv2d_14_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype0�
model_1/conv2d_14/Conv2DConv2D-model_1/activation_20/LeakyRelu:activations:0/model_1/conv2d_14/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:���������t�*
paddingSAME*
strides
�
(model_1/conv2d_14/BiasAdd/ReadVariableOpReadVariableOp1model_1_conv2d_14_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
model_1/conv2d_14/BiasAddBiasAdd!model_1/conv2d_14/Conv2D:output:00model_1/conv2d_14/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:���������t��
model_1/activation_21/LeakyRelu	LeakyRelu"model_1/conv2d_14/BiasAdd:output:0*0
_output_shapes
:���������t��
3model_1/group_normalization/StatefulPartitionedCallStatefulPartitionedCall-model_1/activation_21/LeakyRelu:activations:0#model_1_group_normalization_3133436#model_1_group_normalization_3133438*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:���������t�*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *1J 8� *2
f-R+
)__inference_restored_function_body_205888�
'model_1/conv2d_15/Conv2D/ReadVariableOpReadVariableOp0model_1_conv2d_15_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype0�
model_1/conv2d_15/Conv2DConv2D<model_1/group_normalization/StatefulPartitionedCall:output:0/model_1/conv2d_15/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:���������t�*
paddingSAME*
strides
�
(model_1/conv2d_15/BiasAdd/ReadVariableOpReadVariableOp1model_1_conv2d_15_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
model_1/conv2d_15/BiasAddBiasAdd!model_1/conv2d_15/Conv2D:output:00model_1/conv2d_15/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:���������t��
model_1/activation_22/LeakyRelu	LeakyRelu"model_1/conv2d_15/BiasAdd:output:0*0
_output_shapes
:���������t��
!model_1/average_pooling2d/AvgPoolAvgPool-model_1/activation_22/LeakyRelu:activations:0*
T0*/
_output_shapes
:���������:^*
ksize
*
paddingVALID*
strides
�
model_1/activation_23/LeakyRelu	LeakyRelu*model_1/average_pooling2d/AvgPool:output:0*/
_output_shapes
:���������:^�
*model_1/batch_normalization/ReadVariableOpReadVariableOp3model_1_batch_normalization_readvariableop_resource*
_output_shapes
:*
dtype0�
,model_1/batch_normalization/ReadVariableOp_1ReadVariableOp5model_1_batch_normalization_readvariableop_1_resource*
_output_shapes
:*
dtype0�
;model_1/batch_normalization/FusedBatchNormV3/ReadVariableOpReadVariableOpDmodel_1_batch_normalization_fusedbatchnormv3_readvariableop_resource*
_output_shapes
:*
dtype0�
=model_1/batch_normalization/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpFmodel_1_batch_normalization_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:*
dtype0�
,model_1/batch_normalization/FusedBatchNormV3FusedBatchNormV3-model_1/activation_23/LeakyRelu:activations:02model_1/batch_normalization/ReadVariableOp:value:04model_1/batch_normalization/ReadVariableOp_1:value:0Cmodel_1/batch_normalization/FusedBatchNormV3/ReadVariableOp:value:0Emodel_1/batch_normalization/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:���������:^:::::*
epsilon%o�:*
is_training( �
'model_1/conv2d_16/Conv2D/ReadVariableOpReadVariableOp0model_1_conv2d_16_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype0�
model_1/conv2d_16/Conv2DConv2D0model_1/batch_normalization/FusedBatchNormV3:y:0/model_1/conv2d_16/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������:^*
paddingSAME*
strides
�
(model_1/conv2d_16/BiasAdd/ReadVariableOpReadVariableOp1model_1_conv2d_16_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
model_1/conv2d_16/BiasAddBiasAdd!model_1/conv2d_16/Conv2D:output:00model_1/conv2d_16/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������:^�
model_1/activation_24/LeakyRelu	LeakyRelu"model_1/conv2d_16/BiasAdd:output:0*/
_output_shapes
:���������:^�
5model_1/group_normalization_1/StatefulPartitionedCallStatefulPartitionedCall-model_1/activation_24/LeakyRelu:activations:0%model_1_group_normalization_1_3133471%model_1_group_normalization_1_3133473*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������:^*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *1J 8� *2
f-R+
)__inference_restored_function_body_205932�
'model_1/conv2d_17/Conv2D/ReadVariableOpReadVariableOp0model_1_conv2d_17_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype0�
model_1/conv2d_17/Conv2DConv2D>model_1/group_normalization_1/StatefulPartitionedCall:output:0/model_1/conv2d_17/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������:^*
paddingSAME*
strides
�
(model_1/conv2d_17/BiasAdd/ReadVariableOpReadVariableOp1model_1_conv2d_17_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
model_1/conv2d_17/BiasAddBiasAdd!model_1/conv2d_17/Conv2D:output:00model_1/conv2d_17/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������:^�
model_1/activation_25/LeakyRelu	LeakyRelu"model_1/conv2d_17/BiasAdd:output:0*/
_output_shapes
:���������:^f
model_1/flatten/ConstConst*
_output_shapes
:*
dtype0*
valueB"�����T �
model_1/flatten/ReshapeReshape-model_1/activation_23/LeakyRelu:activations:0model_1/flatten/Const:output:0*
T0*)
_output_shapes
:�����������h
model_1/flatten_1/ConstConst*
_output_shapes
:*
dtype0*
valueB"�����T �
model_1/flatten_1/ReshapeReshape-model_1/activation_25/LeakyRelu:activations:0 model_1/flatten_1/Const:output:0*
T0*)
_output_shapes
:�����������a
model_1/concatenate/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :�
model_1/concatenate/concatConcatV2 model_1/flatten/Reshape:output:0"model_1/flatten_1/Reshape:output:0(model_1/concatenate/concat/axis:output:0*
N*
T0*)
_output_shapes
:�����������
�
%model_1/dense_4/MatMul/ReadVariableOpReadVariableOp.model_1_dense_4_matmul_readvariableop_resource* 
_output_shapes
:
��
*
dtype0�
model_1/dense_4/MatMulMatMul#model_1/concatenate/concat:output:0-model_1/dense_4/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
&model_1/dense_4/BiasAdd/ReadVariableOpReadVariableOp/model_1_dense_4_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
model_1/dense_4/BiasAddBiasAdd model_1/dense_4/MatMul:product:0.model_1/dense_4/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������w
model_1/activation_26/LeakyRelu	LeakyRelu model_1/dense_4/BiasAdd:output:0*'
_output_shapes
:����������
%model_1/dense_5/MatMul/ReadVariableOpReadVariableOp.model_1_dense_5_matmul_readvariableop_resource*
_output_shapes

:*
dtype0�
model_1/dense_5/MatMulMatMul-model_1/activation_26/LeakyRelu:activations:0-model_1/dense_5/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
&model_1/dense_5/BiasAdd/ReadVariableOpReadVariableOp/model_1_dense_5_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
model_1/dense_5/BiasAddBiasAdd model_1/dense_5/MatMul:product:0.model_1/dense_5/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������o
IdentityIdentity model_1/dense_5/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp<^model_1/batch_normalization/FusedBatchNormV3/ReadVariableOp>^model_1/batch_normalization/FusedBatchNormV3/ReadVariableOp_1+^model_1/batch_normalization/ReadVariableOp-^model_1/batch_normalization/ReadVariableOp_1)^model_1/conv2d_13/BiasAdd/ReadVariableOp(^model_1/conv2d_13/Conv2D/ReadVariableOp)^model_1/conv2d_14/BiasAdd/ReadVariableOp(^model_1/conv2d_14/Conv2D/ReadVariableOp)^model_1/conv2d_15/BiasAdd/ReadVariableOp(^model_1/conv2d_15/Conv2D/ReadVariableOp)^model_1/conv2d_16/BiasAdd/ReadVariableOp(^model_1/conv2d_16/Conv2D/ReadVariableOp)^model_1/conv2d_17/BiasAdd/ReadVariableOp(^model_1/conv2d_17/Conv2D/ReadVariableOp'^model_1/dense_4/BiasAdd/ReadVariableOp&^model_1/dense_4/MatMul/ReadVariableOp'^model_1/dense_5/BiasAdd/ReadVariableOp&^model_1/dense_5/MatMul/ReadVariableOp4^model_1/group_normalization/StatefulPartitionedCall6^model_1/group_normalization_1/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*[
_input_shapesJ
H:���������t�: : : : : : : : : : : : : : : : : : : : : : 2z
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
%model_1/dense_5/MatMul/ReadVariableOp%model_1/dense_5/MatMul/ReadVariableOp2j
3model_1/group_normalization/StatefulPartitionedCall3model_1/group_normalization/StatefulPartitionedCall2n
5model_1/group_normalization_1/StatefulPartitionedCall5model_1/group_normalization_1/StatefulPartitionedCall:Y U
0
_output_shapes
:���������t�
!
_user_specified_name	input_2
�
b
F__inference_flatten_1_layer_call_and_return_conditional_losses_3134895

inputs
identityV
ConstConst*
_output_shapes
:*
dtype0*
valueB"�����T ^
ReshapeReshapeinputsConst:output:0*
T0*)
_output_shapes
:�����������Z
IdentityIdentityReshape:output:0*
T0*)
_output_shapes
:�����������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:���������:^:W S
/
_output_shapes
:���������:^
 
_user_specified_nameinputs
�

�
F__inference_conv2d_13_layer_call_and_return_conditional_losses_3134665

inputs8
conv2d_readvariableop_resource:-
biasadd_readvariableop_resource:
identity��BiasAdd/ReadVariableOp�Conv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:*
dtype0�
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:���������t�*
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
:���������t�h
IdentityIdentityBiasAdd:output:0^NoOp*
T0*0
_output_shapes
:���������t�w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :���������t�: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:X T
0
_output_shapes
:���������t�
 
_user_specified_nameinputs
�e
�
D__inference_model_1_layer_call_and_return_conditional_losses_3134562

inputsB
(conv2d_13_conv2d_readvariableop_resource:7
)conv2d_13_biasadd_readvariableop_resource:B
(conv2d_14_conv2d_readvariableop_resource:7
)conv2d_14_biasadd_readvariableop_resource:)
group_normalization_3134495:)
group_normalization_3134497:B
(conv2d_15_conv2d_readvariableop_resource:7
)conv2d_15_biasadd_readvariableop_resource:9
+batch_normalization_readvariableop_resource:;
-batch_normalization_readvariableop_1_resource:J
<batch_normalization_fusedbatchnormv3_readvariableop_resource:L
>batch_normalization_fusedbatchnormv3_readvariableop_1_resource:B
(conv2d_16_conv2d_readvariableop_resource:7
)conv2d_16_biasadd_readvariableop_resource:+
group_normalization_1_3134530:+
group_normalization_1_3134532:B
(conv2d_17_conv2d_readvariableop_resource:7
)conv2d_17_biasadd_readvariableop_resource::
&dense_4_matmul_readvariableop_resource:
��
5
'dense_4_biasadd_readvariableop_resource:8
&dense_5_matmul_readvariableop_resource:5
'dense_5_biasadd_readvariableop_resource:
identity��3batch_normalization/FusedBatchNormV3/ReadVariableOp�5batch_normalization/FusedBatchNormV3/ReadVariableOp_1�"batch_normalization/ReadVariableOp�$batch_normalization/ReadVariableOp_1� conv2d_13/BiasAdd/ReadVariableOp�conv2d_13/Conv2D/ReadVariableOp� conv2d_14/BiasAdd/ReadVariableOp�conv2d_14/Conv2D/ReadVariableOp� conv2d_15/BiasAdd/ReadVariableOp�conv2d_15/Conv2D/ReadVariableOp� conv2d_16/BiasAdd/ReadVariableOp�conv2d_16/Conv2D/ReadVariableOp� conv2d_17/BiasAdd/ReadVariableOp�conv2d_17/Conv2D/ReadVariableOp�dense_4/BiasAdd/ReadVariableOp�dense_4/MatMul/ReadVariableOp�dense_5/BiasAdd/ReadVariableOp�dense_5/MatMul/ReadVariableOp�+group_normalization/StatefulPartitionedCall�-group_normalization_1/StatefulPartitionedCall�
conv2d_13/Conv2D/ReadVariableOpReadVariableOp(conv2d_13_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype0�
conv2d_13/Conv2DConv2Dinputs'conv2d_13/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:���������t�*
paddingSAME*
strides
�
 conv2d_13/BiasAdd/ReadVariableOpReadVariableOp)conv2d_13_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
conv2d_13/BiasAddBiasAddconv2d_13/Conv2D:output:0(conv2d_13/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:���������t�r
activation_20/LeakyRelu	LeakyReluconv2d_13/BiasAdd:output:0*0
_output_shapes
:���������t��
conv2d_14/Conv2D/ReadVariableOpReadVariableOp(conv2d_14_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype0�
conv2d_14/Conv2DConv2D%activation_20/LeakyRelu:activations:0'conv2d_14/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:���������t�*
paddingSAME*
strides
�
 conv2d_14/BiasAdd/ReadVariableOpReadVariableOp)conv2d_14_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
conv2d_14/BiasAddBiasAddconv2d_14/Conv2D:output:0(conv2d_14/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:���������t�r
activation_21/LeakyRelu	LeakyReluconv2d_14/BiasAdd:output:0*0
_output_shapes
:���������t��
+group_normalization/StatefulPartitionedCallStatefulPartitionedCall%activation_21/LeakyRelu:activations:0group_normalization_3134495group_normalization_3134497*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:���������t�*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *1J 8� *2
f-R+
)__inference_restored_function_body_205888�
conv2d_15/Conv2D/ReadVariableOpReadVariableOp(conv2d_15_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype0�
conv2d_15/Conv2DConv2D4group_normalization/StatefulPartitionedCall:output:0'conv2d_15/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:���������t�*
paddingSAME*
strides
�
 conv2d_15/BiasAdd/ReadVariableOpReadVariableOp)conv2d_15_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
conv2d_15/BiasAddBiasAddconv2d_15/Conv2D:output:0(conv2d_15/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:���������t�r
activation_22/LeakyRelu	LeakyReluconv2d_15/BiasAdd:output:0*0
_output_shapes
:���������t��
average_pooling2d/AvgPoolAvgPool%activation_22/LeakyRelu:activations:0*
T0*/
_output_shapes
:���������:^*
ksize
*
paddingVALID*
strides
y
activation_23/LeakyRelu	LeakyRelu"average_pooling2d/AvgPool:output:0*/
_output_shapes
:���������:^�
"batch_normalization/ReadVariableOpReadVariableOp+batch_normalization_readvariableop_resource*
_output_shapes
:*
dtype0�
$batch_normalization/ReadVariableOp_1ReadVariableOp-batch_normalization_readvariableop_1_resource*
_output_shapes
:*
dtype0�
3batch_normalization/FusedBatchNormV3/ReadVariableOpReadVariableOp<batch_normalization_fusedbatchnormv3_readvariableop_resource*
_output_shapes
:*
dtype0�
5batch_normalization/FusedBatchNormV3/ReadVariableOp_1ReadVariableOp>batch_normalization_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:*
dtype0�
$batch_normalization/FusedBatchNormV3FusedBatchNormV3%activation_23/LeakyRelu:activations:0*batch_normalization/ReadVariableOp:value:0,batch_normalization/ReadVariableOp_1:value:0;batch_normalization/FusedBatchNormV3/ReadVariableOp:value:0=batch_normalization/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:���������:^:::::*
epsilon%o�:*
is_training( �
conv2d_16/Conv2D/ReadVariableOpReadVariableOp(conv2d_16_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype0�
conv2d_16/Conv2DConv2D(batch_normalization/FusedBatchNormV3:y:0'conv2d_16/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������:^*
paddingSAME*
strides
�
 conv2d_16/BiasAdd/ReadVariableOpReadVariableOp)conv2d_16_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
conv2d_16/BiasAddBiasAddconv2d_16/Conv2D:output:0(conv2d_16/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������:^q
activation_24/LeakyRelu	LeakyReluconv2d_16/BiasAdd:output:0*/
_output_shapes
:���������:^�
-group_normalization_1/StatefulPartitionedCallStatefulPartitionedCall%activation_24/LeakyRelu:activations:0group_normalization_1_3134530group_normalization_1_3134532*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������:^*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *1J 8� *2
f-R+
)__inference_restored_function_body_205932�
conv2d_17/Conv2D/ReadVariableOpReadVariableOp(conv2d_17_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype0�
conv2d_17/Conv2DConv2D6group_normalization_1/StatefulPartitionedCall:output:0'conv2d_17/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������:^*
paddingSAME*
strides
�
 conv2d_17/BiasAdd/ReadVariableOpReadVariableOp)conv2d_17_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
conv2d_17/BiasAddBiasAddconv2d_17/Conv2D:output:0(conv2d_17/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������:^q
activation_25/LeakyRelu	LeakyReluconv2d_17/BiasAdd:output:0*/
_output_shapes
:���������:^^
flatten/ConstConst*
_output_shapes
:*
dtype0*
valueB"�����T �
flatten/ReshapeReshape%activation_23/LeakyRelu:activations:0flatten/Const:output:0*
T0*)
_output_shapes
:�����������`
flatten_1/ConstConst*
_output_shapes
:*
dtype0*
valueB"�����T �
flatten_1/ReshapeReshape%activation_25/LeakyRelu:activations:0flatten_1/Const:output:0*
T0*)
_output_shapes
:�����������Y
concatenate/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :�
concatenate/concatConcatV2flatten/Reshape:output:0flatten_1/Reshape:output:0 concatenate/concat/axis:output:0*
N*
T0*)
_output_shapes
:�����������
�
dense_4/MatMul/ReadVariableOpReadVariableOp&dense_4_matmul_readvariableop_resource* 
_output_shapes
:
��
*
dtype0�
dense_4/MatMulMatMulconcatenate/concat:output:0%dense_4/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
dense_4/BiasAdd/ReadVariableOpReadVariableOp'dense_4_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
dense_4/BiasAddBiasAdddense_4/MatMul:product:0&dense_4/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������g
activation_26/LeakyRelu	LeakyReludense_4/BiasAdd:output:0*'
_output_shapes
:����������
dense_5/MatMul/ReadVariableOpReadVariableOp&dense_5_matmul_readvariableop_resource*
_output_shapes

:*
dtype0�
dense_5/MatMulMatMul%activation_26/LeakyRelu:activations:0%dense_5/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
dense_5/BiasAdd/ReadVariableOpReadVariableOp'dense_5_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
dense_5/BiasAddBiasAdddense_5/MatMul:product:0&dense_5/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������g
IdentityIdentitydense_5/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp4^batch_normalization/FusedBatchNormV3/ReadVariableOp6^batch_normalization/FusedBatchNormV3/ReadVariableOp_1#^batch_normalization/ReadVariableOp%^batch_normalization/ReadVariableOp_1!^conv2d_13/BiasAdd/ReadVariableOp ^conv2d_13/Conv2D/ReadVariableOp!^conv2d_14/BiasAdd/ReadVariableOp ^conv2d_14/Conv2D/ReadVariableOp!^conv2d_15/BiasAdd/ReadVariableOp ^conv2d_15/Conv2D/ReadVariableOp!^conv2d_16/BiasAdd/ReadVariableOp ^conv2d_16/Conv2D/ReadVariableOp!^conv2d_17/BiasAdd/ReadVariableOp ^conv2d_17/Conv2D/ReadVariableOp^dense_4/BiasAdd/ReadVariableOp^dense_4/MatMul/ReadVariableOp^dense_5/BiasAdd/ReadVariableOp^dense_5/MatMul/ReadVariableOp,^group_normalization/StatefulPartitionedCall.^group_normalization_1/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*[
_input_shapesJ
H:���������t�: : : : : : : : : : : : : : : : : : : : : : 2j
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
dense_5/MatMul/ReadVariableOpdense_5/MatMul/ReadVariableOp2Z
+group_normalization/StatefulPartitionedCall+group_normalization/StatefulPartitionedCall2^
-group_normalization_1/StatefulPartitionedCall-group_normalization_1/StatefulPartitionedCall:X T
0
_output_shapes
:���������t�
 
_user_specified_nameinputs
�2
�
O__inference_group_normalization_1_layer_call_and_return_conditional_losses_5155

inputs/
!reshape_2_readvariableop_resource:/
!reshape_3_readvariableop_resource:
identity��Reshape_2/ReadVariableOp�Reshape_3/ReadVariableOp;
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
valueB:�
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
valueB:�
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
valueB:�
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
valueB:�
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
value	B :�
stackPackstrided_slice:output:0stack/1:output:0strided_slice_1:output:0strided_slice_2:output:0stack/4:output:0*
N*
T0*
_output_shapes
:h
ReshapeReshapeinputsstack:output:0*
T0*3
_output_shapes!
:���������:^k
Mean/reduction_indicesConst*
_output_shapes
:*
dtype0*!
valueB"         �
MeanMeanReshape:output:0Mean/reduction_indices:output:0*
T0*3
_output_shapes!
:���������*
	keep_dims({
&reduce_variance/Mean/reduction_indicesConst*
_output_shapes
:*
dtype0*!
valueB"         �
reduce_variance/MeanMeanReshape:output:0/reduce_variance/Mean/reduction_indices:output:0*
T0*3
_output_shapes!
:���������*
	keep_dims(�
reduce_variance/subSubReshape:output:0reduce_variance/Mean:output:0*
T0*3
_output_shapes!
:���������:^w
reduce_variance/SquareSquarereduce_variance/sub:z:0*
T0*3
_output_shapes!
:���������:^}
(reduce_variance/Mean_1/reduction_indicesConst*
_output_shapes
:*
dtype0*!
valueB"         �
reduce_variance/Mean_1Meanreduce_variance/Square:y:01reduce_variance/Mean_1/reduction_indices:output:0*
T0*3
_output_shapes!
:���������*
	keep_dims(i
subSubReshape:output:0Mean:output:0*
T0*3
_output_shapes!
:���������:^J
add/yConst*
_output_shapes
: *
dtype0*
valueB
 *���={
addAddV2reduce_variance/Mean_1:output:0add/y:output:0*
T0*3
_output_shapes!
:���������J
ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    i
MaximumMaximumadd:z:0Const:output:0*
T0*3
_output_shapes!
:���������W
SqrtSqrtMaximum:z:0*
T0*3
_output_shapes!
:���������c
truedivRealDivsub:z:0Sqrt:y:0*
T0*3
_output_shapes!
:���������:^o
	Reshape_1Reshapetruediv:z:0stack:output:0*
T0*3
_output_shapes!
:���������:^v
Reshape_2/ReadVariableOpReadVariableOp!reshape_2_readvariableop_resource*
_output_shapes
:*
dtype0l
Reshape_2/shapeConst*
_output_shapes
:*
dtype0*)
value B"               �
	Reshape_2Reshape Reshape_2/ReadVariableOp:value:0Reshape_2/shape:output:0*
T0**
_output_shapes
:p
mulMulReshape_1:output:0Reshape_2:output:0*
T0*3
_output_shapes!
:���������:^v
Reshape_3/ReadVariableOpReadVariableOp!reshape_3_readvariableop_resource*
_output_shapes
:*
dtype0l
Reshape_3/shapeConst*
_output_shapes
:*
dtype0*)
value B"               �
	Reshape_3Reshape Reshape_3/ReadVariableOp:value:0Reshape_3/shape:output:0*
T0**
_output_shapes
:i
add_1AddV2mul:z:0Reshape_3:output:0*
T0*3
_output_shapes!
:���������:^i
	Reshape_4Reshape	add_1:z:0Shape:output:0*
T0*/
_output_shapes
:���������:^|
NoOpNoOp^Reshape_2/ReadVariableOp^Reshape_3/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 i
IdentityIdentityReshape_4:output:0^NoOp*
T0*/
_output_shapes
:���������:^"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:���������:^: : 24
Reshape_2/ReadVariableOpReshape_2/ReadVariableOp24
Reshape_3/ReadVariableOpReshape_3/ReadVariableOp:W S
/
_output_shapes
:���������:^
 
_user_specified_nameinputs
�

�
F__inference_conv2d_17_layer_call_and_return_conditional_losses_3133715

inputs8
conv2d_readvariableop_resource:-
biasadd_readvariableop_resource:
identity��BiasAdd/ReadVariableOp�Conv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:*
dtype0�
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������:^*
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
:���������:^g
IdentityIdentityBiasAdd:output:0^NoOp*
T0*/
_output_shapes
:���������:^w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:���������:^: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:���������:^
 
_user_specified_nameinputs
�	
�
D__inference_dense_5_layer_call_and_return_conditional_losses_3133786

inputs0
matmul_readvariableop_resource:-
biasadd_readvariableop_resource:
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������_
IdentityIdentityBiasAdd:output:0^NoOp*
T0*'
_output_shapes
:���������w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:���������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs
�
�
2__inference_group_normalization_layer_call_fn_4334

inputs
unknown:
	unknown_0:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:���������t�*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *1J 8� *V
fQRO
M__inference_group_normalization_layer_call_and_return_conditional_losses_4327`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 x
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*0
_output_shapes
:���������t�"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :���������t�: : 22
StatefulPartitionedCallStatefulPartitionedCall:X T
0
_output_shapes
:���������t�
 
_user_specified_nameinputs
�
f
J__inference_activation_26_layer_call_and_return_conditional_losses_3133774

inputs
identityG
	LeakyRelu	LeakyReluinputs*'
_output_shapes
:���������_
IdentityIdentityLeakyRelu:activations:0*
T0*'
_output_shapes
:���������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:���������:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs
�

�
F__inference_conv2d_15_layer_call_and_return_conditional_losses_3133647

inputs8
conv2d_readvariableop_resource:-
biasadd_readvariableop_resource:
identity��BiasAdd/ReadVariableOp�Conv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:*
dtype0�
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:���������t�*
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
:���������t�h
IdentityIdentityBiasAdd:output:0^NoOp*
T0*0
_output_shapes
:���������t�w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :���������t�: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:X T
0
_output_shapes
:���������t�
 
_user_specified_nameinputs
�
�
)__inference_model_1_layer_call_fn_3133840
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
��


unknown_18:

unknown_19:

unknown_20:
identity��StatefulPartitionedCall�
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
:���������*8
_read_only_resource_inputs
	
*2
config_proto" 

CPU

GPU2 *1J 8� *M
fHRF
D__inference_model_1_layer_call_and_return_conditional_losses_3133793o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*[
_input_shapesJ
H:���������t�: : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Y U
0
_output_shapes
:���������t�
!
_user_specified_name	input_2
�2
�
O__inference_group_normalization_1_layer_call_and_return_conditional_losses_4548

inputs/
!reshape_2_readvariableop_resource:/
!reshape_3_readvariableop_resource:
identity��Reshape_2/ReadVariableOp�Reshape_3/ReadVariableOp;
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
valueB:�
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
valueB:�
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
valueB:�
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
valueB:�
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
value	B :�
stackPackstrided_slice:output:0stack/1:output:0strided_slice_1:output:0strided_slice_2:output:0stack/4:output:0*
N*
T0*
_output_shapes
:h
ReshapeReshapeinputsstack:output:0*
T0*3
_output_shapes!
:���������:^k
Mean/reduction_indicesConst*
_output_shapes
:*
dtype0*!
valueB"         �
MeanMeanReshape:output:0Mean/reduction_indices:output:0*
T0*3
_output_shapes!
:���������*
	keep_dims({
&reduce_variance/Mean/reduction_indicesConst*
_output_shapes
:*
dtype0*!
valueB"         �
reduce_variance/MeanMeanReshape:output:0/reduce_variance/Mean/reduction_indices:output:0*
T0*3
_output_shapes!
:���������*
	keep_dims(�
reduce_variance/subSubReshape:output:0reduce_variance/Mean:output:0*
T0*3
_output_shapes!
:���������:^w
reduce_variance/SquareSquarereduce_variance/sub:z:0*
T0*3
_output_shapes!
:���������:^}
(reduce_variance/Mean_1/reduction_indicesConst*
_output_shapes
:*
dtype0*!
valueB"         �
reduce_variance/Mean_1Meanreduce_variance/Square:y:01reduce_variance/Mean_1/reduction_indices:output:0*
T0*3
_output_shapes!
:���������*
	keep_dims(i
subSubReshape:output:0Mean:output:0*
T0*3
_output_shapes!
:���������:^J
add/yConst*
_output_shapes
: *
dtype0*
valueB
 *���={
addAddV2reduce_variance/Mean_1:output:0add/y:output:0*
T0*3
_output_shapes!
:���������J
ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    i
MaximumMaximumadd:z:0Const:output:0*
T0*3
_output_shapes!
:���������W
SqrtSqrtMaximum:z:0*
T0*3
_output_shapes!
:���������c
truedivRealDivsub:z:0Sqrt:y:0*
T0*3
_output_shapes!
:���������:^o
	Reshape_1Reshapetruediv:z:0stack:output:0*
T0*3
_output_shapes!
:���������:^v
Reshape_2/ReadVariableOpReadVariableOp!reshape_2_readvariableop_resource*
_output_shapes
:*
dtype0l
Reshape_2/shapeConst*
_output_shapes
:*
dtype0*)
value B"               �
	Reshape_2Reshape Reshape_2/ReadVariableOp:value:0Reshape_2/shape:output:0*
T0**
_output_shapes
:p
mulMulReshape_1:output:0Reshape_2:output:0*
T0*3
_output_shapes!
:���������:^v
Reshape_3/ReadVariableOpReadVariableOp!reshape_3_readvariableop_resource*
_output_shapes
:*
dtype0l
Reshape_3/shapeConst*
_output_shapes
:*
dtype0*)
value B"               �
	Reshape_3Reshape Reshape_3/ReadVariableOp:value:0Reshape_3/shape:output:0*
T0**
_output_shapes
:i
add_1AddV2mul:z:0Reshape_3:output:0*
T0*3
_output_shapes!
:���������:^i
	Reshape_4Reshape	add_1:z:0Shape:output:0*
T0*/
_output_shapes
:���������:^|
NoOpNoOp^Reshape_2/ReadVariableOp^Reshape_3/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 i
IdentityIdentityReshape_4:output:0^NoOp*
T0*/
_output_shapes
:���������:^"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:���������:^: : 24
Reshape_2/ReadVariableOpReshape_2/ReadVariableOp24
Reshape_3/ReadVariableOpReshape_3/ReadVariableOp:W S
/
_output_shapes
:���������:^
 
_user_specified_nameinputs
�
f
J__inference_activation_23_layer_call_and_return_conditional_losses_3134753

inputs
identityO
	LeakyRelu	LeakyReluinputs*/
_output_shapes
:���������:^g
IdentityIdentityLeakyRelu:activations:0*
T0*/
_output_shapes
:���������:^"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:���������:^:W S
/
_output_shapes
:���������:^
 
_user_specified_nameinputs
�
r
H__inference_concatenate_layer_call_and_return_conditional_losses_3133751

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
:�����������
Y
IdentityIdentityconcat:output:0*
T0*)
_output_shapes
:�����������
"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*=
_input_shapes,
*:�����������:�����������:Q M
)
_output_shapes
:�����������
 
_user_specified_nameinputs:QM
)
_output_shapes
:�����������
 
_user_specified_nameinputs
�
�
)__inference_restored_function_body_206544

inputs
unknown:
	unknown_0:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*/
_output_shapes
:���������:^*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *1J 8� *X
fSRQ
O__inference_group_normalization_1_layer_call_and_return_conditional_losses_4548w
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:���������:^`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:���������:^: : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:���������:^
 
_user_specified_nameinputs
�	
�
5__inference_batch_normalization_layer_call_fn_3134766

inputs
unknown:
	unknown_0:
	unknown_1:
	unknown_2:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+���������������������������*&
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *1J 8� *Y
fTRR
P__inference_batch_normalization_layer_call_and_return_conditional_losses_3133537�
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*A
_output_shapes/
-:+���������������������������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+���������������������������: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+���������������������������
 
_user_specified_nameinputs
�
K
/__inference_activation_22_layer_call_fn_3134728

inputs
identity�
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:���������t�* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2 *1J 8� *S
fNRL
J__inference_activation_22_layer_call_and_return_conditional_losses_3133658i
IdentityIdentityPartitionedCall:output:0*
T0*0
_output_shapes
:���������t�"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:���������t�:X T
0
_output_shapes
:���������t�
 
_user_specified_nameinputs
�
�
)__inference_model_1_layer_call_fn_3134429

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
��


unknown_18:

unknown_19:

unknown_20:
identity��StatefulPartitionedCall�
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
:���������*8
_read_only_resource_inputs
	
*2
config_proto" 

CPU

GPU2 *1J 8� *M
fHRF
D__inference_model_1_layer_call_and_return_conditional_losses_3133793o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*[
_input_shapesJ
H:���������t�: : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:X T
0
_output_shapes
:���������t�
 
_user_specified_nameinputs
�
K
/__inference_activation_20_layer_call_fn_3134670

inputs
identity�
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:���������t�* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2 *1J 8� *S
fNRL
J__inference_activation_20_layer_call_and_return_conditional_losses_3133607i
IdentityIdentityPartitionedCall:output:0*
T0*0
_output_shapes
:���������t�"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:���������t�:X T
0
_output_shapes
:���������t�
 
_user_specified_nameinputs
�
f
J__inference_activation_21_layer_call_and_return_conditional_losses_3134704

inputs
identityP
	LeakyRelu	LeakyReluinputs*0
_output_shapes
:���������t�h
IdentityIdentityLeakyRelu:activations:0*
T0*0
_output_shapes
:���������t�"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:���������t�:X T
0
_output_shapes
:���������t�
 
_user_specified_nameinputs
�2
�
M__inference_group_normalization_layer_call_and_return_conditional_losses_5832

inputs/
!reshape_2_readvariableop_resource:/
!reshape_3_readvariableop_resource:
identity��Reshape_2/ReadVariableOp�Reshape_3/ReadVariableOp;
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
valueB:�
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
valueB:�
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
valueB:�
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
valueB:�
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
value	B :�
stackPackstrided_slice:output:0stack/1:output:0strided_slice_1:output:0strided_slice_2:output:0stack/4:output:0*
N*
T0*
_output_shapes
:i
ReshapeReshapeinputsstack:output:0*
T0*4
_output_shapes"
 :���������t�k
Mean/reduction_indicesConst*
_output_shapes
:*
dtype0*!
valueB"         �
MeanMeanReshape:output:0Mean/reduction_indices:output:0*
T0*3
_output_shapes!
:���������*
	keep_dims({
&reduce_variance/Mean/reduction_indicesConst*
_output_shapes
:*
dtype0*!
valueB"         �
reduce_variance/MeanMeanReshape:output:0/reduce_variance/Mean/reduction_indices:output:0*
T0*3
_output_shapes!
:���������*
	keep_dims(�
reduce_variance/subSubReshape:output:0reduce_variance/Mean:output:0*
T0*4
_output_shapes"
 :���������t�x
reduce_variance/SquareSquarereduce_variance/sub:z:0*
T0*4
_output_shapes"
 :���������t�}
(reduce_variance/Mean_1/reduction_indicesConst*
_output_shapes
:*
dtype0*!
valueB"         �
reduce_variance/Mean_1Meanreduce_variance/Square:y:01reduce_variance/Mean_1/reduction_indices:output:0*
T0*3
_output_shapes!
:���������*
	keep_dims(j
subSubReshape:output:0Mean:output:0*
T0*4
_output_shapes"
 :���������t�J
add/yConst*
_output_shapes
: *
dtype0*
valueB
 *���={
addAddV2reduce_variance/Mean_1:output:0add/y:output:0*
T0*3
_output_shapes!
:���������J
ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    i
MaximumMaximumadd:z:0Const:output:0*
T0*3
_output_shapes!
:���������W
SqrtSqrtMaximum:z:0*
T0*3
_output_shapes!
:���������d
truedivRealDivsub:z:0Sqrt:y:0*
T0*4
_output_shapes"
 :���������t�p
	Reshape_1Reshapetruediv:z:0stack:output:0*
T0*4
_output_shapes"
 :���������t�v
Reshape_2/ReadVariableOpReadVariableOp!reshape_2_readvariableop_resource*
_output_shapes
:*
dtype0l
Reshape_2/shapeConst*
_output_shapes
:*
dtype0*)
value B"               �
	Reshape_2Reshape Reshape_2/ReadVariableOp:value:0Reshape_2/shape:output:0*
T0**
_output_shapes
:q
mulMulReshape_1:output:0Reshape_2:output:0*
T0*4
_output_shapes"
 :���������t�v
Reshape_3/ReadVariableOpReadVariableOp!reshape_3_readvariableop_resource*
_output_shapes
:*
dtype0l
Reshape_3/shapeConst*
_output_shapes
:*
dtype0*)
value B"               �
	Reshape_3Reshape Reshape_3/ReadVariableOp:value:0Reshape_3/shape:output:0*
T0**
_output_shapes
:j
add_1AddV2mul:z:0Reshape_3:output:0*
T0*4
_output_shapes"
 :���������t�j
	Reshape_4Reshape	add_1:z:0Shape:output:0*
T0*0
_output_shapes
:���������t�|
NoOpNoOp^Reshape_2/ReadVariableOp^Reshape_3/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 j
IdentityIdentityReshape_4:output:0^NoOp*
T0*0
_output_shapes
:���������t�"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :���������t�: : 24
Reshape_2/ReadVariableOpReshape_2/ReadVariableOp24
Reshape_3/ReadVariableOpReshape_3/ReadVariableOp:X T
0
_output_shapes
:���������t�
 
_user_specified_nameinputs
�
�
P__inference_batch_normalization_layer_call_and_return_conditional_losses_3134815

inputs%
readvariableop_resource:'
readvariableop_1_resource:6
(fusedbatchnormv3_readvariableop_resource:8
*fusedbatchnormv3_readvariableop_1_resource:
identity��AssignNewValue�AssignNewValue_1�FusedBatchNormV3/ReadVariableOp�!FusedBatchNormV3/ReadVariableOp_1�ReadVariableOp�ReadVariableOp_1b
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:*
dtype0f
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:*
dtype0�
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:*
dtype0�
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:*
dtype0�
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+���������������������������:::::*
epsilon%o�:*
exponential_avg_factor%
�#<�
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype0*
validate_shape(�
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype0*
validate_shape(}
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*A
_output_shapes/
-:+����������������������������
NoOpNoOp^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+���������������������������: : : : 2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+���������������������������
 
_user_specified_nameinputs
�
�
)__inference_model_1_layer_call_fn_3134187
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
��


unknown_18:

unknown_19:

unknown_20:
identity��StatefulPartitionedCall�
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
:���������*6
_read_only_resource_inputs
	
*2
config_proto" 

CPU

GPU2 *1J 8� *M
fHRF
D__inference_model_1_layer_call_and_return_conditional_losses_3134091o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*[
_input_shapesJ
H:���������t�: : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Y U
0
_output_shapes
:���������t�
!
_user_specified_name	input_2
�2
�
M__inference_group_normalization_layer_call_and_return_conditional_losses_5442

inputs/
!reshape_2_readvariableop_resource:/
!reshape_3_readvariableop_resource:
identity��Reshape_2/ReadVariableOp�Reshape_3/ReadVariableOp;
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
valueB:�
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
valueB:�
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
valueB:�
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
valueB:�
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
value	B :�
stackPackstrided_slice:output:0stack/1:output:0strided_slice_1:output:0strided_slice_2:output:0stack/4:output:0*
N*
T0*
_output_shapes
:i
ReshapeReshapeinputsstack:output:0*
T0*4
_output_shapes"
 :���������t�k
Mean/reduction_indicesConst*
_output_shapes
:*
dtype0*!
valueB"         �
MeanMeanReshape:output:0Mean/reduction_indices:output:0*
T0*3
_output_shapes!
:���������*
	keep_dims({
&reduce_variance/Mean/reduction_indicesConst*
_output_shapes
:*
dtype0*!
valueB"         �
reduce_variance/MeanMeanReshape:output:0/reduce_variance/Mean/reduction_indices:output:0*
T0*3
_output_shapes!
:���������*
	keep_dims(�
reduce_variance/subSubReshape:output:0reduce_variance/Mean:output:0*
T0*4
_output_shapes"
 :���������t�x
reduce_variance/SquareSquarereduce_variance/sub:z:0*
T0*4
_output_shapes"
 :���������t�}
(reduce_variance/Mean_1/reduction_indicesConst*
_output_shapes
:*
dtype0*!
valueB"         �
reduce_variance/Mean_1Meanreduce_variance/Square:y:01reduce_variance/Mean_1/reduction_indices:output:0*
T0*3
_output_shapes!
:���������*
	keep_dims(j
subSubReshape:output:0Mean:output:0*
T0*4
_output_shapes"
 :���������t�J
add/yConst*
_output_shapes
: *
dtype0*
valueB
 *���={
addAddV2reduce_variance/Mean_1:output:0add/y:output:0*
T0*3
_output_shapes!
:���������J
ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    i
MaximumMaximumadd:z:0Const:output:0*
T0*3
_output_shapes!
:���������W
SqrtSqrtMaximum:z:0*
T0*3
_output_shapes!
:���������d
truedivRealDivsub:z:0Sqrt:y:0*
T0*4
_output_shapes"
 :���������t�p
	Reshape_1Reshapetruediv:z:0stack:output:0*
T0*4
_output_shapes"
 :���������t�v
Reshape_2/ReadVariableOpReadVariableOp!reshape_2_readvariableop_resource*
_output_shapes
:*
dtype0l
Reshape_2/shapeConst*
_output_shapes
:*
dtype0*)
value B"               �
	Reshape_2Reshape Reshape_2/ReadVariableOp:value:0Reshape_2/shape:output:0*
T0**
_output_shapes
:q
mulMulReshape_1:output:0Reshape_2:output:0*
T0*4
_output_shapes"
 :���������t�v
Reshape_3/ReadVariableOpReadVariableOp!reshape_3_readvariableop_resource*
_output_shapes
:*
dtype0l
Reshape_3/shapeConst*
_output_shapes
:*
dtype0*)
value B"               �
	Reshape_3Reshape Reshape_3/ReadVariableOp:value:0Reshape_3/shape:output:0*
T0**
_output_shapes
:j
add_1AddV2mul:z:0Reshape_3:output:0*
T0*4
_output_shapes"
 :���������t�j
	Reshape_4Reshape	add_1:z:0Shape:output:0*
T0*0
_output_shapes
:���������t�|
NoOpNoOp^Reshape_2/ReadVariableOp^Reshape_3/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 j
IdentityIdentityReshape_4:output:0^NoOp*
T0*0
_output_shapes
:���������t�"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :���������t�: : 24
Reshape_2/ReadVariableOpReshape_2/ReadVariableOp24
Reshape_3/ReadVariableOpReshape_3/ReadVariableOp:X T
0
_output_shapes
:���������t�
 
_user_specified_nameinputs
�	
�
D__inference_dense_4_layer_call_and_return_conditional_losses_3134927

inputs2
matmul_readvariableop_resource:
��
-
biasadd_readvariableop_resource:
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOpv
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
��
*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������_
IdentityIdentityBiasAdd:output:0^NoOp*
T0*'
_output_shapes
:���������w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*,
_input_shapes
:�����������
: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:Q M
)
_output_shapes
:�����������

 
_user_specified_nameinputs
�	
�
D__inference_dense_5_layer_call_and_return_conditional_losses_3134956

inputs0
matmul_readvariableop_resource:-
biasadd_readvariableop_resource:
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������_
IdentityIdentityBiasAdd:output:0^NoOp*
T0*'
_output_shapes
:���������w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:���������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs
�
b
F__inference_flatten_1_layer_call_and_return_conditional_losses_3133742

inputs
identityV
ConstConst*
_output_shapes
:*
dtype0*
valueB"�����T ^
ReshapeReshapeinputsConst:output:0*
T0*)
_output_shapes
:�����������Z
IdentityIdentityReshape:output:0*
T0*)
_output_shapes
:�����������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:���������:^:W S
/
_output_shapes
:���������:^
 
_user_specified_nameinputs
�2
�
M__inference_group_normalization_layer_call_and_return_conditional_losses_4327

inputs/
!reshape_2_readvariableop_resource:/
!reshape_3_readvariableop_resource:
identity��Reshape_2/ReadVariableOp�Reshape_3/ReadVariableOp;
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
valueB:�
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
valueB:�
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
valueB:�
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
valueB:�
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
value	B :�
stackPackstrided_slice:output:0stack/1:output:0strided_slice_1:output:0strided_slice_2:output:0stack/4:output:0*
N*
T0*
_output_shapes
:i
ReshapeReshapeinputsstack:output:0*
T0*4
_output_shapes"
 :���������t�k
Mean/reduction_indicesConst*
_output_shapes
:*
dtype0*!
valueB"         �
MeanMeanReshape:output:0Mean/reduction_indices:output:0*
T0*3
_output_shapes!
:���������*
	keep_dims({
&reduce_variance/Mean/reduction_indicesConst*
_output_shapes
:*
dtype0*!
valueB"         �
reduce_variance/MeanMeanReshape:output:0/reduce_variance/Mean/reduction_indices:output:0*
T0*3
_output_shapes!
:���������*
	keep_dims(�
reduce_variance/subSubReshape:output:0reduce_variance/Mean:output:0*
T0*4
_output_shapes"
 :���������t�x
reduce_variance/SquareSquarereduce_variance/sub:z:0*
T0*4
_output_shapes"
 :���������t�}
(reduce_variance/Mean_1/reduction_indicesConst*
_output_shapes
:*
dtype0*!
valueB"         �
reduce_variance/Mean_1Meanreduce_variance/Square:y:01reduce_variance/Mean_1/reduction_indices:output:0*
T0*3
_output_shapes!
:���������*
	keep_dims(j
subSubReshape:output:0Mean:output:0*
T0*4
_output_shapes"
 :���������t�J
add/yConst*
_output_shapes
: *
dtype0*
valueB
 *���={
addAddV2reduce_variance/Mean_1:output:0add/y:output:0*
T0*3
_output_shapes!
:���������J
ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    i
MaximumMaximumadd:z:0Const:output:0*
T0*3
_output_shapes!
:���������W
SqrtSqrtMaximum:z:0*
T0*3
_output_shapes!
:���������d
truedivRealDivsub:z:0Sqrt:y:0*
T0*4
_output_shapes"
 :���������t�p
	Reshape_1Reshapetruediv:z:0stack:output:0*
T0*4
_output_shapes"
 :���������t�v
Reshape_2/ReadVariableOpReadVariableOp!reshape_2_readvariableop_resource*
_output_shapes
:*
dtype0l
Reshape_2/shapeConst*
_output_shapes
:*
dtype0*)
value B"               �
	Reshape_2Reshape Reshape_2/ReadVariableOp:value:0Reshape_2/shape:output:0*
T0**
_output_shapes
:q
mulMulReshape_1:output:0Reshape_2:output:0*
T0*4
_output_shapes"
 :���������t�v
Reshape_3/ReadVariableOpReadVariableOp!reshape_3_readvariableop_resource*
_output_shapes
:*
dtype0l
Reshape_3/shapeConst*
_output_shapes
:*
dtype0*)
value B"               �
	Reshape_3Reshape Reshape_3/ReadVariableOp:value:0Reshape_3/shape:output:0*
T0**
_output_shapes
:j
add_1AddV2mul:z:0Reshape_3:output:0*
T0*4
_output_shapes"
 :���������t�j
	Reshape_4Reshape	add_1:z:0Shape:output:0*
T0*0
_output_shapes
:���������t�|
NoOpNoOp^Reshape_2/ReadVariableOp^Reshape_3/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 j
IdentityIdentityReshape_4:output:0^NoOp*
T0*0
_output_shapes
:���������t�"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :���������t�: : 24
Reshape_2/ReadVariableOpReshape_2/ReadVariableOp24
Reshape_3/ReadVariableOpReshape_3/ReadVariableOp:X T
0
_output_shapes
:���������t�
 
_user_specified_nameinputs
�l
�
D__inference_model_1_layer_call_and_return_conditional_losses_3134646

inputsB
(conv2d_13_conv2d_readvariableop_resource:7
)conv2d_13_biasadd_readvariableop_resource:B
(conv2d_14_conv2d_readvariableop_resource:7
)conv2d_14_biasadd_readvariableop_resource:)
group_normalization_3134579:)
group_normalization_3134581:B
(conv2d_15_conv2d_readvariableop_resource:7
)conv2d_15_biasadd_readvariableop_resource:9
+batch_normalization_readvariableop_resource:;
-batch_normalization_readvariableop_1_resource:J
<batch_normalization_fusedbatchnormv3_readvariableop_resource:L
>batch_normalization_fusedbatchnormv3_readvariableop_1_resource:B
(conv2d_16_conv2d_readvariableop_resource:7
)conv2d_16_biasadd_readvariableop_resource:+
group_normalization_1_3134614:+
group_normalization_1_3134616:B
(conv2d_17_conv2d_readvariableop_resource:7
)conv2d_17_biasadd_readvariableop_resource::
&dense_4_matmul_readvariableop_resource:
��
5
'dense_4_biasadd_readvariableop_resource:8
&dense_5_matmul_readvariableop_resource:5
'dense_5_biasadd_readvariableop_resource:
identity��"batch_normalization/AssignNewValue�$batch_normalization/AssignNewValue_1�3batch_normalization/FusedBatchNormV3/ReadVariableOp�5batch_normalization/FusedBatchNormV3/ReadVariableOp_1�"batch_normalization/ReadVariableOp�$batch_normalization/ReadVariableOp_1� conv2d_13/BiasAdd/ReadVariableOp�conv2d_13/Conv2D/ReadVariableOp� conv2d_14/BiasAdd/ReadVariableOp�conv2d_14/Conv2D/ReadVariableOp� conv2d_15/BiasAdd/ReadVariableOp�conv2d_15/Conv2D/ReadVariableOp� conv2d_16/BiasAdd/ReadVariableOp�conv2d_16/Conv2D/ReadVariableOp� conv2d_17/BiasAdd/ReadVariableOp�conv2d_17/Conv2D/ReadVariableOp�dense_4/BiasAdd/ReadVariableOp�dense_4/MatMul/ReadVariableOp�dense_5/BiasAdd/ReadVariableOp�dense_5/MatMul/ReadVariableOp�+group_normalization/StatefulPartitionedCall�-group_normalization_1/StatefulPartitionedCall�
conv2d_13/Conv2D/ReadVariableOpReadVariableOp(conv2d_13_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype0�
conv2d_13/Conv2DConv2Dinputs'conv2d_13/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:���������t�*
paddingSAME*
strides
�
 conv2d_13/BiasAdd/ReadVariableOpReadVariableOp)conv2d_13_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
conv2d_13/BiasAddBiasAddconv2d_13/Conv2D:output:0(conv2d_13/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:���������t�r
activation_20/LeakyRelu	LeakyReluconv2d_13/BiasAdd:output:0*0
_output_shapes
:���������t��
conv2d_14/Conv2D/ReadVariableOpReadVariableOp(conv2d_14_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype0�
conv2d_14/Conv2DConv2D%activation_20/LeakyRelu:activations:0'conv2d_14/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:���������t�*
paddingSAME*
strides
�
 conv2d_14/BiasAdd/ReadVariableOpReadVariableOp)conv2d_14_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
conv2d_14/BiasAddBiasAddconv2d_14/Conv2D:output:0(conv2d_14/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:���������t�r
activation_21/LeakyRelu	LeakyReluconv2d_14/BiasAdd:output:0*0
_output_shapes
:���������t��
+group_normalization/StatefulPartitionedCallStatefulPartitionedCall%activation_21/LeakyRelu:activations:0group_normalization_3134579group_normalization_3134581*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:���������t�*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *1J 8� *2
f-R+
)__inference_restored_function_body_206507�
conv2d_15/Conv2D/ReadVariableOpReadVariableOp(conv2d_15_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype0�
conv2d_15/Conv2DConv2D4group_normalization/StatefulPartitionedCall:output:0'conv2d_15/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:���������t�*
paddingSAME*
strides
�
 conv2d_15/BiasAdd/ReadVariableOpReadVariableOp)conv2d_15_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
conv2d_15/BiasAddBiasAddconv2d_15/Conv2D:output:0(conv2d_15/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:���������t�r
activation_22/LeakyRelu	LeakyReluconv2d_15/BiasAdd:output:0*0
_output_shapes
:���������t��
average_pooling2d/AvgPoolAvgPool%activation_22/LeakyRelu:activations:0*
T0*/
_output_shapes
:���������:^*
ksize
*
paddingVALID*
strides
y
activation_23/LeakyRelu	LeakyRelu"average_pooling2d/AvgPool:output:0*/
_output_shapes
:���������:^�
"batch_normalization/ReadVariableOpReadVariableOp+batch_normalization_readvariableop_resource*
_output_shapes
:*
dtype0�
$batch_normalization/ReadVariableOp_1ReadVariableOp-batch_normalization_readvariableop_1_resource*
_output_shapes
:*
dtype0�
3batch_normalization/FusedBatchNormV3/ReadVariableOpReadVariableOp<batch_normalization_fusedbatchnormv3_readvariableop_resource*
_output_shapes
:*
dtype0�
5batch_normalization/FusedBatchNormV3/ReadVariableOp_1ReadVariableOp>batch_normalization_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:*
dtype0�
$batch_normalization/FusedBatchNormV3FusedBatchNormV3%activation_23/LeakyRelu:activations:0*batch_normalization/ReadVariableOp:value:0,batch_normalization/ReadVariableOp_1:value:0;batch_normalization/FusedBatchNormV3/ReadVariableOp:value:0=batch_normalization/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:���������:^:::::*
epsilon%o�:*
exponential_avg_factor%
�#<�
"batch_normalization/AssignNewValueAssignVariableOp<batch_normalization_fusedbatchnormv3_readvariableop_resource1batch_normalization/FusedBatchNormV3:batch_mean:04^batch_normalization/FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype0*
validate_shape(�
$batch_normalization/AssignNewValue_1AssignVariableOp>batch_normalization_fusedbatchnormv3_readvariableop_1_resource5batch_normalization/FusedBatchNormV3:batch_variance:06^batch_normalization/FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype0*
validate_shape(�
conv2d_16/Conv2D/ReadVariableOpReadVariableOp(conv2d_16_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype0�
conv2d_16/Conv2DConv2D(batch_normalization/FusedBatchNormV3:y:0'conv2d_16/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������:^*
paddingSAME*
strides
�
 conv2d_16/BiasAdd/ReadVariableOpReadVariableOp)conv2d_16_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
conv2d_16/BiasAddBiasAddconv2d_16/Conv2D:output:0(conv2d_16/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������:^q
activation_24/LeakyRelu	LeakyReluconv2d_16/BiasAdd:output:0*/
_output_shapes
:���������:^�
-group_normalization_1/StatefulPartitionedCallStatefulPartitionedCall%activation_24/LeakyRelu:activations:0group_normalization_1_3134614group_normalization_1_3134616*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������:^*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *1J 8� *2
f-R+
)__inference_restored_function_body_206544�
conv2d_17/Conv2D/ReadVariableOpReadVariableOp(conv2d_17_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype0�
conv2d_17/Conv2DConv2D6group_normalization_1/StatefulPartitionedCall:output:0'conv2d_17/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������:^*
paddingSAME*
strides
�
 conv2d_17/BiasAdd/ReadVariableOpReadVariableOp)conv2d_17_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
conv2d_17/BiasAddBiasAddconv2d_17/Conv2D:output:0(conv2d_17/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������:^q
activation_25/LeakyRelu	LeakyReluconv2d_17/BiasAdd:output:0*/
_output_shapes
:���������:^^
flatten/ConstConst*
_output_shapes
:*
dtype0*
valueB"�����T �
flatten/ReshapeReshape%activation_23/LeakyRelu:activations:0flatten/Const:output:0*
T0*)
_output_shapes
:�����������`
flatten_1/ConstConst*
_output_shapes
:*
dtype0*
valueB"�����T �
flatten_1/ReshapeReshape%activation_25/LeakyRelu:activations:0flatten_1/Const:output:0*
T0*)
_output_shapes
:�����������Y
concatenate/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :�
concatenate/concatConcatV2flatten/Reshape:output:0flatten_1/Reshape:output:0 concatenate/concat/axis:output:0*
N*
T0*)
_output_shapes
:�����������
�
dense_4/MatMul/ReadVariableOpReadVariableOp&dense_4_matmul_readvariableop_resource* 
_output_shapes
:
��
*
dtype0�
dense_4/MatMulMatMulconcatenate/concat:output:0%dense_4/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
dense_4/BiasAdd/ReadVariableOpReadVariableOp'dense_4_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
dense_4/BiasAddBiasAdddense_4/MatMul:product:0&dense_4/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������g
activation_26/LeakyRelu	LeakyReludense_4/BiasAdd:output:0*'
_output_shapes
:����������
dense_5/MatMul/ReadVariableOpReadVariableOp&dense_5_matmul_readvariableop_resource*
_output_shapes

:*
dtype0�
dense_5/MatMulMatMul%activation_26/LeakyRelu:activations:0%dense_5/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
dense_5/BiasAdd/ReadVariableOpReadVariableOp'dense_5_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
dense_5/BiasAddBiasAdddense_5/MatMul:product:0&dense_5/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������g
IdentityIdentitydense_5/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp#^batch_normalization/AssignNewValue%^batch_normalization/AssignNewValue_14^batch_normalization/FusedBatchNormV3/ReadVariableOp6^batch_normalization/FusedBatchNormV3/ReadVariableOp_1#^batch_normalization/ReadVariableOp%^batch_normalization/ReadVariableOp_1!^conv2d_13/BiasAdd/ReadVariableOp ^conv2d_13/Conv2D/ReadVariableOp!^conv2d_14/BiasAdd/ReadVariableOp ^conv2d_14/Conv2D/ReadVariableOp!^conv2d_15/BiasAdd/ReadVariableOp ^conv2d_15/Conv2D/ReadVariableOp!^conv2d_16/BiasAdd/ReadVariableOp ^conv2d_16/Conv2D/ReadVariableOp!^conv2d_17/BiasAdd/ReadVariableOp ^conv2d_17/Conv2D/ReadVariableOp^dense_4/BiasAdd/ReadVariableOp^dense_4/MatMul/ReadVariableOp^dense_5/BiasAdd/ReadVariableOp^dense_5/MatMul/ReadVariableOp,^group_normalization/StatefulPartitionedCall.^group_normalization_1/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*[
_input_shapesJ
H:���������t�: : : : : : : : : : : : : : : : : : : : : : 2H
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
dense_5/MatMul/ReadVariableOpdense_5/MatMul/ReadVariableOp2Z
+group_normalization/StatefulPartitionedCall+group_normalization/StatefulPartitionedCall2^
-group_normalization_1/StatefulPartitionedCall-group_normalization_1/StatefulPartitionedCall:X T
0
_output_shapes
:���������t�
 
_user_specified_nameinputs
�
�
4__inference_group_normalization_1_layer_call_fn_5162

inputs
unknown:
	unknown_0:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������:^*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *1J 8� *X
fSRQ
O__inference_group_normalization_1_layer_call_and_return_conditional_losses_5155`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 w
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:���������:^"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:���������:^: : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:���������:^
 
_user_specified_nameinputs
�
K
/__inference_activation_25_layer_call_fn_3134868

inputs
identity�
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������:^* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2 *1J 8� *S
fNRL
J__inference_activation_25_layer_call_and_return_conditional_losses_3133726h
IdentityIdentityPartitionedCall:output:0*
T0*/
_output_shapes
:���������:^"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:���������:^:W S
/
_output_shapes
:���������:^
 
_user_specified_nameinputs
�
�
4__inference_group_normalization_1_layer_call_fn_5294

inputs
unknown:
	unknown_0:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������:^*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *1J 8� *X
fSRQ
O__inference_group_normalization_1_layer_call_and_return_conditional_losses_5287`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 w
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:���������:^"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:���������:^: : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:���������:^
 
_user_specified_nameinputs
�
�
P__inference_batch_normalization_layer_call_and_return_conditional_losses_3133537

inputs%
readvariableop_resource:'
readvariableop_1_resource:6
(fusedbatchnormv3_readvariableop_resource:8
*fusedbatchnormv3_readvariableop_1_resource:
identity��FusedBatchNormV3/ReadVariableOp�!FusedBatchNormV3/ReadVariableOp_1�ReadVariableOp�ReadVariableOp_1b
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:*
dtype0f
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:*
dtype0�
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:*
dtype0�
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:*
dtype0�
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+���������������������������:::::*
epsilon%o�:*
is_training( }
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*A
_output_shapes/
-:+����������������������������
NoOpNoOp ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+���������������������������: : : : 2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+���������������������������
 
_user_specified_nameinputs
�
j
N__inference_average_pooling2d_layer_call_and_return_conditional_losses_3133512

inputs
identity�
AvgPoolAvgPoolinputs*
T0*J
_output_shapes8
6:4������������������������������������*
ksize
*
paddingVALID*
strides
{
IdentityIdentityAvgPool:output:0*
T0*J
_output_shapes8
6:4������������������������������������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4������������������������������������:r n
J
_output_shapes8
6:4������������������������������������
 
_user_specified_nameinputs
�2
�
M__inference_group_normalization_layer_call_and_return_conditional_losses_4444

inputs/
!reshape_2_readvariableop_resource:/
!reshape_3_readvariableop_resource:
identity��Reshape_2/ReadVariableOp�Reshape_3/ReadVariableOp;
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
valueB:�
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
valueB:�
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
valueB:�
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
valueB:�
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
value	B :�
stackPackstrided_slice:output:0stack/1:output:0strided_slice_1:output:0strided_slice_2:output:0stack/4:output:0*
N*
T0*
_output_shapes
:i
ReshapeReshapeinputsstack:output:0*
T0*4
_output_shapes"
 :���������t�k
Mean/reduction_indicesConst*
_output_shapes
:*
dtype0*!
valueB"         �
MeanMeanReshape:output:0Mean/reduction_indices:output:0*
T0*3
_output_shapes!
:���������*
	keep_dims({
&reduce_variance/Mean/reduction_indicesConst*
_output_shapes
:*
dtype0*!
valueB"         �
reduce_variance/MeanMeanReshape:output:0/reduce_variance/Mean/reduction_indices:output:0*
T0*3
_output_shapes!
:���������*
	keep_dims(�
reduce_variance/subSubReshape:output:0reduce_variance/Mean:output:0*
T0*4
_output_shapes"
 :���������t�x
reduce_variance/SquareSquarereduce_variance/sub:z:0*
T0*4
_output_shapes"
 :���������t�}
(reduce_variance/Mean_1/reduction_indicesConst*
_output_shapes
:*
dtype0*!
valueB"         �
reduce_variance/Mean_1Meanreduce_variance/Square:y:01reduce_variance/Mean_1/reduction_indices:output:0*
T0*3
_output_shapes!
:���������*
	keep_dims(j
subSubReshape:output:0Mean:output:0*
T0*4
_output_shapes"
 :���������t�J
add/yConst*
_output_shapes
: *
dtype0*
valueB
 *���={
addAddV2reduce_variance/Mean_1:output:0add/y:output:0*
T0*3
_output_shapes!
:���������J
ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    i
MaximumMaximumadd:z:0Const:output:0*
T0*3
_output_shapes!
:���������W
SqrtSqrtMaximum:z:0*
T0*3
_output_shapes!
:���������d
truedivRealDivsub:z:0Sqrt:y:0*
T0*4
_output_shapes"
 :���������t�p
	Reshape_1Reshapetruediv:z:0stack:output:0*
T0*4
_output_shapes"
 :���������t�v
Reshape_2/ReadVariableOpReadVariableOp!reshape_2_readvariableop_resource*
_output_shapes
:*
dtype0l
Reshape_2/shapeConst*
_output_shapes
:*
dtype0*)
value B"               �
	Reshape_2Reshape Reshape_2/ReadVariableOp:value:0Reshape_2/shape:output:0*
T0**
_output_shapes
:q
mulMulReshape_1:output:0Reshape_2:output:0*
T0*4
_output_shapes"
 :���������t�v
Reshape_3/ReadVariableOpReadVariableOp!reshape_3_readvariableop_resource*
_output_shapes
:*
dtype0l
Reshape_3/shapeConst*
_output_shapes
:*
dtype0*)
value B"               �
	Reshape_3Reshape Reshape_3/ReadVariableOp:value:0Reshape_3/shape:output:0*
T0**
_output_shapes
:j
add_1AddV2mul:z:0Reshape_3:output:0*
T0*4
_output_shapes"
 :���������t�j
	Reshape_4Reshape	add_1:z:0Shape:output:0*
T0*0
_output_shapes
:���������t�|
NoOpNoOp^Reshape_2/ReadVariableOp^Reshape_3/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 j
IdentityIdentityReshape_4:output:0^NoOp*
T0*0
_output_shapes
:���������t�"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :���������t�: : 24
Reshape_2/ReadVariableOpReshape_2/ReadVariableOp24
Reshape_3/ReadVariableOpReshape_3/ReadVariableOp:X T
0
_output_shapes
:���������t�
 
_user_specified_nameinputs"�	L
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*�
serving_default�
D
input_29
serving_default_input_2:0���������t�;
dense_50
StatefulPartitionedCall:0���������tensorflow/serving/predict:��
�
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
signatures
# _self_saveable_object_factories"
_tf_keras_network
D
#!_self_saveable_object_factories"
_tf_keras_input_layer
�
"	variables
#trainable_variables
$regularization_losses
%	keras_api
&__call__
*'&call_and_return_all_conditional_losses

(kernel
)bias
#*_self_saveable_object_factories
 +_jit_compiled_convolution_op"
_tf_keras_layer
�
,	variables
-trainable_variables
.regularization_losses
/	keras_api
0__call__
*1&call_and_return_all_conditional_losses
#2_self_saveable_object_factories"
_tf_keras_layer
�
3	variables
4trainable_variables
5regularization_losses
6	keras_api
7__call__
*8&call_and_return_all_conditional_losses

9kernel
:bias
#;_self_saveable_object_factories
 <_jit_compiled_convolution_op"
_tf_keras_layer
�
=	variables
>trainable_variables
?regularization_losses
@	keras_api
A__call__
*B&call_and_return_all_conditional_losses
#C_self_saveable_object_factories"
_tf_keras_layer
�
D	variables
Etrainable_variables
Fregularization_losses
G	keras_api
H__call__
*I&call_and_return_all_conditional_losses
	Jgamma
Kbeta
#L_self_saveable_object_factories"
_tf_keras_layer
�
M	variables
Ntrainable_variables
Oregularization_losses
P	keras_api
Q__call__
*R&call_and_return_all_conditional_losses

Skernel
Tbias
#U_self_saveable_object_factories
 V_jit_compiled_convolution_op"
_tf_keras_layer
�
W	variables
Xtrainable_variables
Yregularization_losses
Z	keras_api
[__call__
*\&call_and_return_all_conditional_losses
#]_self_saveable_object_factories"
_tf_keras_layer
�
^	variables
_trainable_variables
`regularization_losses
a	keras_api
b__call__
*c&call_and_return_all_conditional_losses
#d_self_saveable_object_factories"
_tf_keras_layer
�
e	variables
ftrainable_variables
gregularization_losses
h	keras_api
i__call__
*j&call_and_return_all_conditional_losses
#k_self_saveable_object_factories"
_tf_keras_layer
�
l	variables
mtrainable_variables
nregularization_losses
o	keras_api
p__call__
*q&call_and_return_all_conditional_losses
raxis
	sgamma
tbeta
umoving_mean
vmoving_variance
#w_self_saveable_object_factories"
_tf_keras_layer
�
x	variables
ytrainable_variables
zregularization_losses
{	keras_api
|__call__
*}&call_and_return_all_conditional_losses

~kernel
bias
$�_self_saveable_object_factories
!�_jit_compiled_convolution_op"
_tf_keras_layer
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses
$�_self_saveable_object_factories"
_tf_keras_layer
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses

�gamma
	�beta
$�_self_saveable_object_factories"
_tf_keras_layer
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses
�kernel
	�bias
$�_self_saveable_object_factories
!�_jit_compiled_convolution_op"
_tf_keras_layer
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses
$�_self_saveable_object_factories"
_tf_keras_layer
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses
$�_self_saveable_object_factories"
_tf_keras_layer
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses
$�_self_saveable_object_factories"
_tf_keras_layer
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses
$�_self_saveable_object_factories"
_tf_keras_layer
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses
�kernel
	�bias
$�_self_saveable_object_factories"
_tf_keras_layer
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses
$�_self_saveable_object_factories"
_tf_keras_layer
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses
�kernel
	�bias
$�_self_saveable_object_factories"
_tf_keras_layer
�
(0
)1
92
:3
J4
K5
S6
T7
s8
t9
u10
v11
~12
13
�14
�15
�16
�17
�18
�19
�20
�21"
trackable_list_wrapper
�
(0
)1
92
:3
J4
K5
S6
T7
s8
t9
~10
11
�12
�13
�14
�15
�16
�17
�18
�19"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
	variables
trainable_variables
regularization_losses
__call__
_default_save_signature
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
�
�trace_0
�trace_1
�trace_2
�trace_32�
)__inference_model_1_layer_call_fn_3133840
)__inference_model_1_layer_call_fn_3134429
)__inference_model_1_layer_call_fn_3134478
)__inference_model_1_layer_call_fn_3134187�
���
FullArgSpec1
args)�&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0z�trace_1z�trace_2z�trace_3
�
�trace_0
�trace_1
�trace_2
�trace_32�
D__inference_model_1_layer_call_and_return_conditional_losses_3134562
D__inference_model_1_layer_call_and_return_conditional_losses_3134646
D__inference_model_1_layer_call_and_return_conditional_losses_3134256
D__inference_model_1_layer_call_and_return_conditional_losses_3134325�
���
FullArgSpec1
args)�&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0z�trace_1z�trace_2z�trace_3
�B�
"__inference__wrapped_model_3133503input_2"�
���
FullArgSpec
args� 
varargsjargs
varkwjkwargs
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
M
	�iter

�decay
�learning_rate
�momentum"
	optimizer
-
�serving_default"
signature_map
 "
trackable_dict_wrapper
 "
trackable_dict_wrapper
.
(0
)1"
trackable_list_wrapper
.
(0
)1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
"	variables
#trainable_variables
$regularization_losses
&__call__
*'&call_and_return_all_conditional_losses
&'"call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
+__inference_conv2d_13_layer_call_fn_3134655�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
�
�trace_02�
F__inference_conv2d_13_layer_call_and_return_conditional_losses_3134665�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
*:(2conv2d_13/kernel
:2conv2d_13/bias
 "
trackable_dict_wrapper
�2��
���
FullArgSpec'
args�
jself
jinputs
jkernel
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 0
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
,	variables
-trainable_variables
.regularization_losses
0__call__
*1&call_and_return_all_conditional_losses
&1"call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
/__inference_activation_20_layer_call_fn_3134670�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
�
�trace_02�
J__inference_activation_20_layer_call_and_return_conditional_losses_3134675�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
 "
trackable_dict_wrapper
.
90
:1"
trackable_list_wrapper
.
90
:1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
3	variables
4trainable_variables
5regularization_losses
7__call__
*8&call_and_return_all_conditional_losses
&8"call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
+__inference_conv2d_14_layer_call_fn_3134684�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
�
�trace_02�
F__inference_conv2d_14_layer_call_and_return_conditional_losses_3134694�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
*:(2conv2d_14/kernel
:2conv2d_14/bias
 "
trackable_dict_wrapper
�2��
���
FullArgSpec'
args�
jself
jinputs
jkernel
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 0
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
=	variables
>trainable_variables
?regularization_losses
A__call__
*B&call_and_return_all_conditional_losses
&B"call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
/__inference_activation_21_layer_call_fn_3134699�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
�
�trace_02�
J__inference_activation_21_layer_call_and_return_conditional_losses_3134704�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
 "
trackable_dict_wrapper
.
J0
K1"
trackable_list_wrapper
.
J0
K1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
D	variables
Etrainable_variables
Fregularization_losses
H__call__
*I&call_and_return_all_conditional_losses
&I"call_and_return_conditional_losses"
_generic_user_object
�
�trace_0
�trace_12�
2__inference_group_normalization_layer_call_fn_4334
2__inference_group_normalization_layer_call_fn_4451�
���
FullArgSpec
args�

jinputs
varargs
 
varkwjkwargs
defaults
 

kwonlyargs�

jtraining%
kwonlydefaults�

trainingp 
annotations� *
 z�trace_0z�trace_1
�
�trace_0
�trace_12�
M__inference_group_normalization_layer_call_and_return_conditional_losses_5442
M__inference_group_normalization_layer_call_and_return_conditional_losses_5832�
���
FullArgSpec
args�

jinputs
varargs
 
varkwjkwargs
defaults
 

kwonlyargs�

jtraining%
kwonlydefaults�

trainingp 
annotations� *
 z�trace_0z�trace_1
':%2group_normalization/gamma
&:$2group_normalization/beta
 "
trackable_dict_wrapper
.
S0
T1"
trackable_list_wrapper
.
S0
T1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
M	variables
Ntrainable_variables
Oregularization_losses
Q__call__
*R&call_and_return_all_conditional_losses
&R"call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
+__inference_conv2d_15_layer_call_fn_3134713�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
�
�trace_02�
F__inference_conv2d_15_layer_call_and_return_conditional_losses_3134723�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
*:(2conv2d_15/kernel
:2conv2d_15/bias
 "
trackable_dict_wrapper
�2��
���
FullArgSpec'
args�
jself
jinputs
jkernel
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 0
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
W	variables
Xtrainable_variables
Yregularization_losses
[__call__
*\&call_and_return_all_conditional_losses
&\"call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
/__inference_activation_22_layer_call_fn_3134728�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
�
�trace_02�
J__inference_activation_22_layer_call_and_return_conditional_losses_3134733�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
^	variables
_trainable_variables
`regularization_losses
b__call__
*c&call_and_return_all_conditional_losses
&c"call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
3__inference_average_pooling2d_layer_call_fn_3134738�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
�
�trace_02�
N__inference_average_pooling2d_layer_call_and_return_conditional_losses_3134743�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
e	variables
ftrainable_variables
gregularization_losses
i__call__
*j&call_and_return_all_conditional_losses
&j"call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
/__inference_activation_23_layer_call_fn_3134748�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
�
�trace_02�
J__inference_activation_23_layer_call_and_return_conditional_losses_3134753�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
 "
trackable_dict_wrapper
<
s0
t1
u2
v3"
trackable_list_wrapper
.
s0
t1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
l	variables
mtrainable_variables
nregularization_losses
p__call__
*q&call_and_return_all_conditional_losses
&q"call_and_return_conditional_losses"
_generic_user_object
�
�trace_0
�trace_12�
5__inference_batch_normalization_layer_call_fn_3134766
5__inference_batch_normalization_layer_call_fn_3134779�
���
FullArgSpec)
args!�
jself
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0z�trace_1
�
�trace_0
�trace_12�
P__inference_batch_normalization_layer_call_and_return_conditional_losses_3134797
P__inference_batch_normalization_layer_call_and_return_conditional_losses_3134815�
���
FullArgSpec)
args!�
jself
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0z�trace_1
 "
trackable_list_wrapper
':%2batch_normalization/gamma
&:$2batch_normalization/beta
/:- (2batch_normalization/moving_mean
3:1 (2#batch_normalization/moving_variance
 "
trackable_dict_wrapper
.
~0
1"
trackable_list_wrapper
.
~0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
x	variables
ytrainable_variables
zregularization_losses
|__call__
*}&call_and_return_all_conditional_losses
&}"call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
+__inference_conv2d_16_layer_call_fn_3134824�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
�
�trace_02�
F__inference_conv2d_16_layer_call_and_return_conditional_losses_3134834�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
*:(2conv2d_16/kernel
:2conv2d_16/bias
 "
trackable_dict_wrapper
�2��
���
FullArgSpec'
args�
jself
jinputs
jkernel
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 0
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
/__inference_activation_24_layer_call_fn_3134839�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
�
�trace_02�
J__inference_activation_24_layer_call_and_return_conditional_losses_3134844�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
 "
trackable_dict_wrapper
0
�0
�1"
trackable_list_wrapper
0
�0
�1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
�
�trace_0
�trace_12�
4__inference_group_normalization_1_layer_call_fn_5294
4__inference_group_normalization_1_layer_call_fn_5162�
���
FullArgSpec
args�

jinputs
varargs
 
varkwjkwargs
defaults
 

kwonlyargs�

jtraining%
kwonlydefaults�

trainingp 
annotations� *
 z�trace_0z�trace_1
�
�trace_0
�trace_12�
O__inference_group_normalization_1_layer_call_and_return_conditional_losses_5362
O__inference_group_normalization_1_layer_call_and_return_conditional_losses_4548�
���
FullArgSpec
args�

jinputs
varargs
 
varkwjkwargs
defaults
 

kwonlyargs�

jtraining%
kwonlydefaults�

trainingp 
annotations� *
 z�trace_0z�trace_1
):'2group_normalization_1/gamma
(:&2group_normalization_1/beta
 "
trackable_dict_wrapper
0
�0
�1"
trackable_list_wrapper
0
�0
�1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
+__inference_conv2d_17_layer_call_fn_3134853�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
�
�trace_02�
F__inference_conv2d_17_layer_call_and_return_conditional_losses_3134863�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
*:(2conv2d_17/kernel
:2conv2d_17/bias
 "
trackable_dict_wrapper
�2��
���
FullArgSpec'
args�
jself
jinputs
jkernel
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 0
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
/__inference_activation_25_layer_call_fn_3134868�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
�
�trace_02�
J__inference_activation_25_layer_call_and_return_conditional_losses_3134873�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
)__inference_flatten_layer_call_fn_3134878�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
�
�trace_02�
D__inference_flatten_layer_call_and_return_conditional_losses_3134884�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
+__inference_flatten_1_layer_call_fn_3134889�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
�
�trace_02�
F__inference_flatten_1_layer_call_and_return_conditional_losses_3134895�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
-__inference_concatenate_layer_call_fn_3134901�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
�
�trace_02�
H__inference_concatenate_layer_call_and_return_conditional_losses_3134908�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
 "
trackable_dict_wrapper
0
�0
�1"
trackable_list_wrapper
0
�0
�1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
)__inference_dense_4_layer_call_fn_3134917�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
�
�trace_02�
D__inference_dense_4_layer_call_and_return_conditional_losses_3134927�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
": 
��
2dense_4/kernel
:2dense_4/bias
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
/__inference_activation_26_layer_call_fn_3134932�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
�
�trace_02�
J__inference_activation_26_layer_call_and_return_conditional_losses_3134937�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
 "
trackable_dict_wrapper
0
�0
�1"
trackable_list_wrapper
0
�0
�1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
)__inference_dense_5_layer_call_fn_3134946�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
�
�trace_02�
D__inference_dense_5_layer_call_and_return_conditional_losses_3134956�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
 :2dense_5/kernel
:2dense_5/bias
 "
trackable_dict_wrapper
.
u0
v1"
trackable_list_wrapper
�
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
�0
�1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
�B�
)__inference_model_1_layer_call_fn_3133840input_2"�
���
FullArgSpec1
args)�&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
)__inference_model_1_layer_call_fn_3134429inputs"�
���
FullArgSpec1
args)�&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
)__inference_model_1_layer_call_fn_3134478inputs"�
���
FullArgSpec1
args)�&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
)__inference_model_1_layer_call_fn_3134187input_2"�
���
FullArgSpec1
args)�&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
D__inference_model_1_layer_call_and_return_conditional_losses_3134562inputs"�
���
FullArgSpec1
args)�&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
D__inference_model_1_layer_call_and_return_conditional_losses_3134646inputs"�
���
FullArgSpec1
args)�&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
D__inference_model_1_layer_call_and_return_conditional_losses_3134256input_2"�
���
FullArgSpec1
args)�&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
D__inference_model_1_layer_call_and_return_conditional_losses_3134325input_2"�
���
FullArgSpec1
args)�&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
:	 (2SGD/iter
: (2	SGD/decay
: (2SGD/learning_rate
: (2SGD/momentum
�B�
%__inference_signature_wrapper_3134380input_2"�
���
FullArgSpec
args� 
varargs
 
varkwjkwargs
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
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
�B�
+__inference_conv2d_13_layer_call_fn_3134655inputs"�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
F__inference_conv2d_13_layer_call_and_return_conditional_losses_3134665inputs"�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
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
�B�
/__inference_activation_20_layer_call_fn_3134670inputs"�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
J__inference_activation_20_layer_call_and_return_conditional_losses_3134675inputs"�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
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
�B�
+__inference_conv2d_14_layer_call_fn_3134684inputs"�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
F__inference_conv2d_14_layer_call_and_return_conditional_losses_3134694inputs"�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
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
�B�
/__inference_activation_21_layer_call_fn_3134699inputs"�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
J__inference_activation_21_layer_call_and_return_conditional_losses_3134704inputs"�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
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
�B�
2__inference_group_normalization_layer_call_fn_4334inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
varkwjkwargs
defaults
 

kwonlyargs�

jtraining%
kwonlydefaults�

trainingp 
annotations� *
 
�B�
2__inference_group_normalization_layer_call_fn_4451inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
varkwjkwargs
defaults
 

kwonlyargs�

jtraining%
kwonlydefaults�

trainingp 
annotations� *
 
�B�
M__inference_group_normalization_layer_call_and_return_conditional_losses_5442inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
varkwjkwargs
defaults
 

kwonlyargs�

jtraining%
kwonlydefaults�

trainingp 
annotations� *
 
�B�
M__inference_group_normalization_layer_call_and_return_conditional_losses_5832inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
varkwjkwargs
defaults
 

kwonlyargs�

jtraining%
kwonlydefaults�

trainingp 
annotations� *
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
�B�
+__inference_conv2d_15_layer_call_fn_3134713inputs"�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
F__inference_conv2d_15_layer_call_and_return_conditional_losses_3134723inputs"�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
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
�B�
/__inference_activation_22_layer_call_fn_3134728inputs"�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
J__inference_activation_22_layer_call_and_return_conditional_losses_3134733inputs"�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
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
�B�
3__inference_average_pooling2d_layer_call_fn_3134738inputs"�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
N__inference_average_pooling2d_layer_call_and_return_conditional_losses_3134743inputs"�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
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
�B�
/__inference_activation_23_layer_call_fn_3134748inputs"�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
J__inference_activation_23_layer_call_and_return_conditional_losses_3134753inputs"�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
.
u0
v1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
�B�
5__inference_batch_normalization_layer_call_fn_3134766inputs"�
���
FullArgSpec)
args!�
jself
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
5__inference_batch_normalization_layer_call_fn_3134779inputs"�
���
FullArgSpec)
args!�
jself
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
P__inference_batch_normalization_layer_call_and_return_conditional_losses_3134797inputs"�
���
FullArgSpec)
args!�
jself
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
P__inference_batch_normalization_layer_call_and_return_conditional_losses_3134815inputs"�
���
FullArgSpec)
args!�
jself
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults
 
annotations� *
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
�B�
+__inference_conv2d_16_layer_call_fn_3134824inputs"�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
F__inference_conv2d_16_layer_call_and_return_conditional_losses_3134834inputs"�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
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
�B�
/__inference_activation_24_layer_call_fn_3134839inputs"�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
J__inference_activation_24_layer_call_and_return_conditional_losses_3134844inputs"�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
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
�B�
4__inference_group_normalization_1_layer_call_fn_5294inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
varkwjkwargs
defaults
 

kwonlyargs�

jtraining%
kwonlydefaults�

trainingp 
annotations� *
 
�B�
4__inference_group_normalization_1_layer_call_fn_5162inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
varkwjkwargs
defaults
 

kwonlyargs�

jtraining%
kwonlydefaults�

trainingp 
annotations� *
 
�B�
O__inference_group_normalization_1_layer_call_and_return_conditional_losses_5362inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
varkwjkwargs
defaults
 

kwonlyargs�

jtraining%
kwonlydefaults�

trainingp 
annotations� *
 
�B�
O__inference_group_normalization_1_layer_call_and_return_conditional_losses_4548inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
varkwjkwargs
defaults
 

kwonlyargs�

jtraining%
kwonlydefaults�

trainingp 
annotations� *
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
�B�
+__inference_conv2d_17_layer_call_fn_3134853inputs"�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
F__inference_conv2d_17_layer_call_and_return_conditional_losses_3134863inputs"�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
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
�B�
/__inference_activation_25_layer_call_fn_3134868inputs"�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
J__inference_activation_25_layer_call_and_return_conditional_losses_3134873inputs"�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
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
�B�
)__inference_flatten_layer_call_fn_3134878inputs"�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
D__inference_flatten_layer_call_and_return_conditional_losses_3134884inputs"�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
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
�B�
+__inference_flatten_1_layer_call_fn_3134889inputs"�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
F__inference_flatten_1_layer_call_and_return_conditional_losses_3134895inputs"�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
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
�B�
-__inference_concatenate_layer_call_fn_3134901inputs/0inputs/1"�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
H__inference_concatenate_layer_call_and_return_conditional_losses_3134908inputs/0inputs/1"�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
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
�B�
)__inference_dense_4_layer_call_fn_3134917inputs"�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
D__inference_dense_4_layer_call_and_return_conditional_losses_3134927inputs"�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
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
�B�
/__inference_activation_26_layer_call_fn_3134932inputs"�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
J__inference_activation_26_layer_call_and_return_conditional_losses_3134937inputs"�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
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
�B�
)__inference_dense_5_layer_call_fn_3134946inputs"�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
D__inference_dense_5_layer_call_and_return_conditional_losses_3134956inputs"�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
R
�	variables
�	keras_api

�total

�count"
_tf_keras_metric
c
�	variables
�	keras_api

�total

�count
�
_fn_kwargs"
_tf_keras_metric
0
�0
�1"
trackable_list_wrapper
.
�	variables"
_generic_user_object
:  (2total
:  (2count
0
�0
�1"
trackable_list_wrapper
.
�	variables"
_generic_user_object
:  (2total
:  (2count
 "
trackable_dict_wrapper�
"__inference__wrapped_model_3133503�()9:JKSTstuv~��������9�6
/�,
*�'
input_2���������t�
� "1�.
,
dense_5!�
dense_5����������
J__inference_activation_20_layer_call_and_return_conditional_losses_3134675j8�5
.�+
)�&
inputs���������t�
� ".�+
$�!
0���������t�
� �
/__inference_activation_20_layer_call_fn_3134670]8�5
.�+
)�&
inputs���������t�
� "!����������t��
J__inference_activation_21_layer_call_and_return_conditional_losses_3134704j8�5
.�+
)�&
inputs���������t�
� ".�+
$�!
0���������t�
� �
/__inference_activation_21_layer_call_fn_3134699]8�5
.�+
)�&
inputs���������t�
� "!����������t��
J__inference_activation_22_layer_call_and_return_conditional_losses_3134733j8�5
.�+
)�&
inputs���������t�
� ".�+
$�!
0���������t�
� �
/__inference_activation_22_layer_call_fn_3134728]8�5
.�+
)�&
inputs���������t�
� "!����������t��
J__inference_activation_23_layer_call_and_return_conditional_losses_3134753h7�4
-�*
(�%
inputs���������:^
� "-�*
#� 
0���������:^
� �
/__inference_activation_23_layer_call_fn_3134748[7�4
-�*
(�%
inputs���������:^
� " ����������:^�
J__inference_activation_24_layer_call_and_return_conditional_losses_3134844h7�4
-�*
(�%
inputs���������:^
� "-�*
#� 
0���������:^
� �
/__inference_activation_24_layer_call_fn_3134839[7�4
-�*
(�%
inputs���������:^
� " ����������:^�
J__inference_activation_25_layer_call_and_return_conditional_losses_3134873h7�4
-�*
(�%
inputs���������:^
� "-�*
#� 
0���������:^
� �
/__inference_activation_25_layer_call_fn_3134868[7�4
-�*
(�%
inputs���������:^
� " ����������:^�
J__inference_activation_26_layer_call_and_return_conditional_losses_3134937X/�,
%�"
 �
inputs���������
� "%�"
�
0���������
� ~
/__inference_activation_26_layer_call_fn_3134932K/�,
%�"
 �
inputs���������
� "�����������
N__inference_average_pooling2d_layer_call_and_return_conditional_losses_3134743�R�O
H�E
C�@
inputs4������������������������������������
� "H�E
>�;
04������������������������������������
� �
3__inference_average_pooling2d_layer_call_fn_3134738�R�O
H�E
C�@
inputs4������������������������������������
� ";�84�������������������������������������
P__inference_batch_normalization_layer_call_and_return_conditional_losses_3134797�stuvM�J
C�@
:�7
inputs+���������������������������
p 
� "?�<
5�2
0+���������������������������
� �
P__inference_batch_normalization_layer_call_and_return_conditional_losses_3134815�stuvM�J
C�@
:�7
inputs+���������������������������
p
� "?�<
5�2
0+���������������������������
� �
5__inference_batch_normalization_layer_call_fn_3134766�stuvM�J
C�@
:�7
inputs+���������������������������
p 
� "2�/+����������������������������
5__inference_batch_normalization_layer_call_fn_3134779�stuvM�J
C�@
:�7
inputs+���������������������������
p
� "2�/+����������������������������
H__inference_concatenate_layer_call_and_return_conditional_losses_3134908�^�[
T�Q
O�L
$�!
inputs/0�����������
$�!
inputs/1�����������
� "'�$
�
0�����������

� �
-__inference_concatenate_layer_call_fn_3134901|^�[
T�Q
O�L
$�!
inputs/0�����������
$�!
inputs/1�����������
� "������������
�
F__inference_conv2d_13_layer_call_and_return_conditional_losses_3134665n()8�5
.�+
)�&
inputs���������t�
� ".�+
$�!
0���������t�
� �
+__inference_conv2d_13_layer_call_fn_3134655a()8�5
.�+
)�&
inputs���������t�
� "!����������t��
F__inference_conv2d_14_layer_call_and_return_conditional_losses_3134694n9:8�5
.�+
)�&
inputs���������t�
� ".�+
$�!
0���������t�
� �
+__inference_conv2d_14_layer_call_fn_3134684a9:8�5
.�+
)�&
inputs���������t�
� "!����������t��
F__inference_conv2d_15_layer_call_and_return_conditional_losses_3134723nST8�5
.�+
)�&
inputs���������t�
� ".�+
$�!
0���������t�
� �
+__inference_conv2d_15_layer_call_fn_3134713aST8�5
.�+
)�&
inputs���������t�
� "!����������t��
F__inference_conv2d_16_layer_call_and_return_conditional_losses_3134834l~7�4
-�*
(�%
inputs���������:^
� "-�*
#� 
0���������:^
� �
+__inference_conv2d_16_layer_call_fn_3134824_~7�4
-�*
(�%
inputs���������:^
� " ����������:^�
F__inference_conv2d_17_layer_call_and_return_conditional_losses_3134863n��7�4
-�*
(�%
inputs���������:^
� "-�*
#� 
0���������:^
� �
+__inference_conv2d_17_layer_call_fn_3134853a��7�4
-�*
(�%
inputs���������:^
� " ����������:^�
D__inference_dense_4_layer_call_and_return_conditional_losses_3134927`��1�.
'�$
"�
inputs�����������

� "%�"
�
0���������
� �
)__inference_dense_4_layer_call_fn_3134917S��1�.
'�$
"�
inputs�����������

� "�����������
D__inference_dense_5_layer_call_and_return_conditional_losses_3134956^��/�,
%�"
 �
inputs���������
� "%�"
�
0���������
� ~
)__inference_dense_5_layer_call_fn_3134946Q��/�,
%�"
 �
inputs���������
� "�����������
F__inference_flatten_1_layer_call_and_return_conditional_losses_3134895b7�4
-�*
(�%
inputs���������:^
� "'�$
�
0�����������
� �
+__inference_flatten_1_layer_call_fn_3134889U7�4
-�*
(�%
inputs���������:^
� "�������������
D__inference_flatten_layer_call_and_return_conditional_losses_3134884b7�4
-�*
(�%
inputs���������:^
� "'�$
�
0�����������
� �
)__inference_flatten_layer_call_fn_3134878U7�4
-�*
(�%
inputs���������:^
� "�������������
O__inference_group_normalization_1_layer_call_and_return_conditional_losses_4548~��G�D
-�*
(�%
inputs���������:^
�

trainingp"-�*
#� 
0���������:^
� �
O__inference_group_normalization_1_layer_call_and_return_conditional_losses_5362~��G�D
-�*
(�%
inputs���������:^
�

trainingp "-�*
#� 
0���������:^
� �
4__inference_group_normalization_1_layer_call_fn_5162q��G�D
-�*
(�%
inputs���������:^
�

trainingp" ����������:^�
4__inference_group_normalization_1_layer_call_fn_5294q��G�D
-�*
(�%
inputs���������:^
�

trainingp " ����������:^�
M__inference_group_normalization_layer_call_and_return_conditional_losses_5442~JKH�E
.�+
)�&
inputs���������t�
�

trainingp ".�+
$�!
0���������t�
� �
M__inference_group_normalization_layer_call_and_return_conditional_losses_5832~JKH�E
.�+
)�&
inputs���������t�
�

trainingp".�+
$�!
0���������t�
� �
2__inference_group_normalization_layer_call_fn_4334qJKH�E
.�+
)�&
inputs���������t�
�

trainingp "!����������t��
2__inference_group_normalization_layer_call_fn_4451qJKH�E
.�+
)�&
inputs���������t�
�

trainingp"!����������t��
D__inference_model_1_layer_call_and_return_conditional_losses_3134256�()9:JKSTstuv~��������A�>
7�4
*�'
input_2���������t�
p 

 
� "%�"
�
0���������
� �
D__inference_model_1_layer_call_and_return_conditional_losses_3134325�()9:JKSTstuv~��������A�>
7�4
*�'
input_2���������t�
p

 
� "%�"
�
0���������
� �
D__inference_model_1_layer_call_and_return_conditional_losses_3134562�()9:JKSTstuv~��������@�=
6�3
)�&
inputs���������t�
p 

 
� "%�"
�
0���������
� �
D__inference_model_1_layer_call_and_return_conditional_losses_3134646�()9:JKSTstuv~��������@�=
6�3
)�&
inputs���������t�
p

 
� "%�"
�
0���������
� �
)__inference_model_1_layer_call_fn_3133840}()9:JKSTstuv~��������A�>
7�4
*�'
input_2���������t�
p 

 
� "�����������
)__inference_model_1_layer_call_fn_3134187}()9:JKSTstuv~��������A�>
7�4
*�'
input_2���������t�
p

 
� "�����������
)__inference_model_1_layer_call_fn_3134429|()9:JKSTstuv~��������@�=
6�3
)�&
inputs���������t�
p 

 
� "�����������
)__inference_model_1_layer_call_fn_3134478|()9:JKSTstuv~��������@�=
6�3
)�&
inputs���������t�
p

 
� "�����������
%__inference_signature_wrapper_3134380�()9:JKSTstuv~��������D�A
� 
:�7
5
input_2*�'
input_2���������t�"1�.
,
dense_5!�
dense_5���������