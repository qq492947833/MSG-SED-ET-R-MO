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
shape:*
shared_namedense_5/bias
i
 dense_5/bias/Read/ReadVariableOpReadVariableOpdense_5/bias*
_output_shapes
:*
dtype0
x
dense_5/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*
shared_namedense_5/kernel
q
"dense_5/kernel/Read/ReadVariableOpReadVariableOpdense_5/kernel*
_output_shapes

:*
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
shape:*!
shared_nameconv2d_13/kernel
}
$conv2d_13/kernel/Read/ReadVariableOpReadVariableOpconv2d_13/kernel*&
_output_shapes
:*
dtype0
�
serving_default_input_2Placeholder*0
_output_shapes
:���������t�*
dtype0*%
shape:���������t�
�
StatefulPartitionedCallStatefulPartitionedCallserving_default_input_2conv2d_13/kernelconv2d_13/biasconv2d_14/kernelconv2d_14/biasgroup_normalization/gammagroup_normalization/betaconv2d_15/kernelconv2d_15/biasbatch_normalization/gammabatch_normalization/betabatch_normalization/moving_mean#batch_normalization/moving_varianceconv2d_16/kernelconv2d_16/biasgroup_normalization_1/gammagroup_normalization_1/betaconv2d_17/kernelconv2d_17/biasdense_4/kerneldense_4/biasdense_5/kerneldense_5/bias*"
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*8
_read_only_resource_inputs
	
*2
config_proto" 

CPU

GPU2 *1J 8� *.
f)R'
%__inference_signature_wrapper_7232908

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
 __inference__traced_save_7233597
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
#__inference__traced_restore_7233697�
�
�
2__inference_group_normalization_layer_call_fn_5100

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
M__inference_group_normalization_layer_call_and_return_conditional_losses_5093`
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
J__inference_activation_24_layer_call_and_return_conditional_losses_7232226

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
�2
�
O__inference_group_normalization_1_layer_call_and_return_conditional_losses_4524

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
�
�
)__inference_model_1_layer_call_fn_7232368
input_2!
unknown:
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

unknown_19:

unknown_20:
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
:���������*8
_read_only_resource_inputs
	
*2
config_proto" 

CPU

GPU2 *1J 8� *M
fHRF
D__inference_model_1_layer_call_and_return_conditional_losses_7232321o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*[
_input_shapesJ
H:���������t�: : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Y U
0
_output_shapes
:���������t�
!
_user_specified_name	input_2
�2
�
M__inference_group_normalization_layer_call_and_return_conditional_losses_4342

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
�
�
P__inference_batch_normalization_layer_call_and_return_conditional_losses_7233325

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
�>
�
 __inference__traced_save_7233597
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
�: :::::::::::::::::::
��
:::: : : : : : : : : 2(
MergeV2CheckpointsMergeV2Checkpoints:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:,(
&
_output_shapes
:: 
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

:: 

_output_shapes
::
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
�
b
F__inference_flatten_1_layer_call_and_return_conditional_losses_7232270

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
�
K
/__inference_activation_26_layer_call_fn_7233460

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
J__inference_activation_26_layer_call_and_return_conditional_losses_7232302`
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
4__inference_group_normalization_1_layer_call_fn_4531

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
O__inference_group_normalization_1_layer_call_and_return_conditional_losses_4524`
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
�
f
J__inference_activation_24_layer_call_and_return_conditional_losses_7233372

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
K
/__inference_activation_22_layer_call_fn_7233256

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
J__inference_activation_22_layer_call_and_return_conditional_losses_7232186i
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
�2
�
O__inference_group_normalization_1_layer_call_and_return_conditional_losses_5630

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
�
�
)__inference_dense_4_layer_call_fn_7233445

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
D__inference_dense_4_layer_call_and_return_conditional_losses_7232291o
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
r
H__inference_concatenate_layer_call_and_return_conditional_losses_7232279

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
�
K
/__inference_activation_20_layer_call_fn_7233198

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
J__inference_activation_20_layer_call_and_return_conditional_losses_7232135i
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
�
E
)__inference_flatten_layer_call_fn_7233406

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
D__inference_flatten_layer_call_and_return_conditional_losses_7232262b
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
4__inference_group_normalization_1_layer_call_fn_5637

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
O__inference_group_normalization_1_layer_call_and_return_conditional_losses_5630`
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
�
f
J__inference_activation_26_layer_call_and_return_conditional_losses_7233465

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
�2
�
O__inference_group_normalization_1_layer_call_and_return_conditional_losses_4786

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
�
j
N__inference_average_pooling2d_layer_call_and_return_conditional_losses_7233271

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
�

�
F__inference_conv2d_14_layer_call_and_return_conditional_losses_7233222

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
M__inference_group_normalization_layer_call_and_return_conditional_losses_5040x
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
�
`
D__inference_flatten_layer_call_and_return_conditional_losses_7233412

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
M__inference_group_normalization_layer_call_and_return_conditional_losses_5093

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
�
f
J__inference_activation_20_layer_call_and_return_conditional_losses_7233203

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
�
G
+__inference_flatten_1_layer_call_fn_7233417

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
F__inference_flatten_1_layer_call_and_return_conditional_losses_7232270b
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
+__inference_conv2d_14_layer_call_fn_7233212

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
F__inference_conv2d_14_layer_call_and_return_conditional_losses_7232147x
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
%__inference_signature_wrapper_7232908
input_2!
unknown:
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

unknown_19:

unknown_20:
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
:���������*8
_read_only_resource_inputs
	
*2
config_proto" 

CPU

GPU2 *1J 8� *+
f&R$
"__inference__wrapped_model_7232031o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*[
_input_shapesJ
H:���������t�: : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Y U
0
_output_shapes
:���������t�
!
_user_specified_name	input_2
�Y
�

D__inference_model_1_layer_call_and_return_conditional_losses_7232784
input_2+
conv2d_13_7232718:
conv2d_13_7232720:+
conv2d_14_7232724:
conv2d_14_7232726:)
group_normalization_7232730:)
group_normalization_7232732:+
conv2d_15_7232735:
conv2d_15_7232737:)
batch_normalization_7232743:)
batch_normalization_7232745:)
batch_normalization_7232747:)
batch_normalization_7232749:+
conv2d_16_7232752:
conv2d_16_7232754:+
group_normalization_1_7232758:+
group_normalization_1_7232760:+
conv2d_17_7232763:
conv2d_17_7232765:#
dense_4_7232772:
��

dense_4_7232774:!
dense_5_7232778:
dense_5_7232780:
identity��+batch_normalization/StatefulPartitionedCall�!conv2d_13/StatefulPartitionedCall�!conv2d_14/StatefulPartitionedCall�!conv2d_15/StatefulPartitionedCall�!conv2d_16/StatefulPartitionedCall�!conv2d_17/StatefulPartitionedCall�dense_4/StatefulPartitionedCall�dense_5/StatefulPartitionedCall�+group_normalization/StatefulPartitionedCall�-group_normalization_1/StatefulPartitionedCall�
!conv2d_13/StatefulPartitionedCallStatefulPartitionedCallinput_2conv2d_13_7232718conv2d_13_7232720*
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
F__inference_conv2d_13_layer_call_and_return_conditional_losses_7232124�
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
J__inference_activation_20_layer_call_and_return_conditional_losses_7232135�
!conv2d_14/StatefulPartitionedCallStatefulPartitionedCall&activation_20/PartitionedCall:output:0conv2d_14_7232724conv2d_14_7232726*
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
F__inference_conv2d_14_layer_call_and_return_conditional_losses_7232147�
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
J__inference_activation_21_layer_call_and_return_conditional_losses_7232158�
+group_normalization/StatefulPartitionedCallStatefulPartitionedCall&activation_21/PartitionedCall:output:0group_normalization_7232730group_normalization_7232732*
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
!conv2d_15/StatefulPartitionedCallStatefulPartitionedCall4group_normalization/StatefulPartitionedCall:output:0conv2d_15_7232735conv2d_15_7232737*
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
F__inference_conv2d_15_layer_call_and_return_conditional_losses_7232175�
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
J__inference_activation_22_layer_call_and_return_conditional_losses_7232186�
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
N__inference_average_pooling2d_layer_call_and_return_conditional_losses_7232040�
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
J__inference_activation_23_layer_call_and_return_conditional_losses_7232194�
+batch_normalization/StatefulPartitionedCallStatefulPartitionedCall&activation_23/PartitionedCall:output:0batch_normalization_7232743batch_normalization_7232745batch_normalization_7232747batch_normalization_7232749*
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
P__inference_batch_normalization_layer_call_and_return_conditional_losses_7232065�
!conv2d_16/StatefulPartitionedCallStatefulPartitionedCall4batch_normalization/StatefulPartitionedCall:output:0conv2d_16_7232752conv2d_16_7232754*
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
F__inference_conv2d_16_layer_call_and_return_conditional_losses_7232215�
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
J__inference_activation_24_layer_call_and_return_conditional_losses_7232226�
-group_normalization_1/StatefulPartitionedCallStatefulPartitionedCall&activation_24/PartitionedCall:output:0group_normalization_1_7232758group_normalization_1_7232760*
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
!conv2d_17/StatefulPartitionedCallStatefulPartitionedCall6group_normalization_1/StatefulPartitionedCall:output:0conv2d_17_7232763conv2d_17_7232765*
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
F__inference_conv2d_17_layer_call_and_return_conditional_losses_7232243�
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
J__inference_activation_25_layer_call_and_return_conditional_losses_7232254�
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
D__inference_flatten_layer_call_and_return_conditional_losses_7232262�
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
F__inference_flatten_1_layer_call_and_return_conditional_losses_7232270�
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
H__inference_concatenate_layer_call_and_return_conditional_losses_7232279�
dense_4/StatefulPartitionedCallStatefulPartitionedCall$concatenate/PartitionedCall:output:0dense_4_7232772dense_4_7232774*
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
D__inference_dense_4_layer_call_and_return_conditional_losses_7232291�
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
J__inference_activation_26_layer_call_and_return_conditional_losses_7232302�
dense_5/StatefulPartitionedCallStatefulPartitionedCall&activation_26/PartitionedCall:output:0dense_5_7232778dense_5_7232780*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *1J 8� *M
fHRF
D__inference_dense_5_layer_call_and_return_conditional_losses_7232314w
IdentityIdentity(dense_5/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp,^batch_normalization/StatefulPartitionedCall"^conv2d_13/StatefulPartitionedCall"^conv2d_14/StatefulPartitionedCall"^conv2d_15/StatefulPartitionedCall"^conv2d_16/StatefulPartitionedCall"^conv2d_17/StatefulPartitionedCall ^dense_4/StatefulPartitionedCall ^dense_5/StatefulPartitionedCall,^group_normalization/StatefulPartitionedCall.^group_normalization_1/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*[
_input_shapesJ
H:���������t�: : : : : : : : : : : : : : : : : : : : : : 2Z
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
:���������t�
!
_user_specified_name	input_2
�

�
F__inference_conv2d_16_layer_call_and_return_conditional_losses_7232215

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
J__inference_activation_25_layer_call_and_return_conditional_losses_7232254

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
�
�
)__inference_dense_5_layer_call_fn_7233474

inputs
unknown:
	unknown_0:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *1J 8� *M
fHRF
D__inference_dense_5_layer_call_and_return_conditional_losses_7232314o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������`
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
�2
�
O__inference_group_normalization_1_layer_call_and_return_conditional_losses_5203

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
�
�
)__inference_model_1_layer_call_fn_7232715
input_2!
unknown:
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

unknown_19:

unknown_20:
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
:���������*6
_read_only_resource_inputs
	
*2
config_proto" 

CPU

GPU2 *1J 8� *M
fHRF
D__inference_model_1_layer_call_and_return_conditional_losses_7232619o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*[
_input_shapesJ
H:���������t�: : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Y U
0
_output_shapes
:���������t�
!
_user_specified_name	input_2
�
f
J__inference_activation_21_layer_call_and_return_conditional_losses_7233232

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
�
f
J__inference_activation_26_layer_call_and_return_conditional_losses_7232302

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
�
O
3__inference_average_pooling2d_layer_call_fn_7233266

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
N__inference_average_pooling2d_layer_call_and_return_conditional_losses_7232040�
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
�
j
N__inference_average_pooling2d_layer_call_and_return_conditional_losses_7232040

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
�

�
F__inference_conv2d_16_layer_call_and_return_conditional_losses_7233362

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
/__inference_activation_21_layer_call_fn_7233227

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
J__inference_activation_21_layer_call_and_return_conditional_losses_7232158i
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
�
�
+__inference_conv2d_13_layer_call_fn_7233183

inputs!
unknown:
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
F__inference_conv2d_13_layer_call_and_return_conditional_losses_7232124x
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
 :���������t�: : 22
StatefulPartitionedCallStatefulPartitionedCall:X T
0
_output_shapes
:���������t�
 
_user_specified_nameinputs
�

�
F__inference_conv2d_17_layer_call_and_return_conditional_losses_7232243

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
O__inference_group_normalization_1_layer_call_and_return_conditional_losses_4786w
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
�
�
)__inference_model_1_layer_call_fn_7232957

inputs!
unknown:
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

unknown_19:

unknown_20:
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
:���������*8
_read_only_resource_inputs
	
*2
config_proto" 

CPU

GPU2 *1J 8� *M
fHRF
D__inference_model_1_layer_call_and_return_conditional_losses_7232321o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*[
_input_shapesJ
H:���������t�: : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:X T
0
_output_shapes
:���������t�
 
_user_specified_nameinputs
�r
�
"__inference__wrapped_model_7232031
input_2J
0model_1_conv2d_13_conv2d_readvariableop_resource:?
1model_1_conv2d_13_biasadd_readvariableop_resource:J
0model_1_conv2d_14_conv2d_readvariableop_resource:?
1model_1_conv2d_14_biasadd_readvariableop_resource:1
#model_1_group_normalization_7231964:1
#model_1_group_normalization_7231966:J
0model_1_conv2d_15_conv2d_readvariableop_resource:?
1model_1_conv2d_15_biasadd_readvariableop_resource:A
3model_1_batch_normalization_readvariableop_resource:C
5model_1_batch_normalization_readvariableop_1_resource:R
Dmodel_1_batch_normalization_fusedbatchnormv3_readvariableop_resource:T
Fmodel_1_batch_normalization_fusedbatchnormv3_readvariableop_1_resource:J
0model_1_conv2d_16_conv2d_readvariableop_resource:?
1model_1_conv2d_16_biasadd_readvariableop_resource:3
%model_1_group_normalization_1_7231999:3
%model_1_group_normalization_1_7232001:J
0model_1_conv2d_17_conv2d_readvariableop_resource:?
1model_1_conv2d_17_biasadd_readvariableop_resource:B
.model_1_dense_4_matmul_readvariableop_resource:
��
=
/model_1_dense_4_biasadd_readvariableop_resource:@
.model_1_dense_5_matmul_readvariableop_resource:=
/model_1_dense_5_biasadd_readvariableop_resource:
identity��;model_1/batch_normalization/FusedBatchNormV3/ReadVariableOp�=model_1/batch_normalization/FusedBatchNormV3/ReadVariableOp_1�*model_1/batch_normalization/ReadVariableOp�,model_1/batch_normalization/ReadVariableOp_1�(model_1/conv2d_13/BiasAdd/ReadVariableOp�'model_1/conv2d_13/Conv2D/ReadVariableOp�(model_1/conv2d_14/BiasAdd/ReadVariableOp�'model_1/conv2d_14/Conv2D/ReadVariableOp�(model_1/conv2d_15/BiasAdd/ReadVariableOp�'model_1/conv2d_15/Conv2D/ReadVariableOp�(model_1/conv2d_16/BiasAdd/ReadVariableOp�'model_1/conv2d_16/Conv2D/ReadVariableOp�(model_1/conv2d_17/BiasAdd/ReadVariableOp�'model_1/conv2d_17/Conv2D/ReadVariableOp�&model_1/dense_4/BiasAdd/ReadVariableOp�%model_1/dense_4/MatMul/ReadVariableOp�&model_1/dense_5/BiasAdd/ReadVariableOp�%model_1/dense_5/MatMul/ReadVariableOp�3model_1/group_normalization/StatefulPartitionedCall�5model_1/group_normalization_1/StatefulPartitionedCall�
'model_1/conv2d_13/Conv2D/ReadVariableOpReadVariableOp0model_1_conv2d_13_conv2d_readvariableop_resource*&
_output_shapes
:*
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
3model_1/group_normalization/StatefulPartitionedCallStatefulPartitionedCall-model_1/activation_21/LeakyRelu:activations:0#model_1_group_normalization_7231964#model_1_group_normalization_7231966*
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
5model_1/group_normalization_1/StatefulPartitionedCallStatefulPartitionedCall-model_1/activation_24/LeakyRelu:activations:0%model_1_group_normalization_1_7231999%model_1_group_normalization_1_7232001*
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

:*
dtype0�
model_1/dense_5/MatMulMatMul-model_1/activation_26/LeakyRelu:activations:0-model_1/dense_5/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
&model_1/dense_5/BiasAdd/ReadVariableOpReadVariableOp/model_1_dense_5_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
model_1/dense_5/BiasAddBiasAdd model_1/dense_5/MatMul:product:0.model_1/dense_5/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������o
IdentityIdentity model_1/dense_5/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp<^model_1/batch_normalization/FusedBatchNormV3/ReadVariableOp>^model_1/batch_normalization/FusedBatchNormV3/ReadVariableOp_1+^model_1/batch_normalization/ReadVariableOp-^model_1/batch_normalization/ReadVariableOp_1)^model_1/conv2d_13/BiasAdd/ReadVariableOp(^model_1/conv2d_13/Conv2D/ReadVariableOp)^model_1/conv2d_14/BiasAdd/ReadVariableOp(^model_1/conv2d_14/Conv2D/ReadVariableOp)^model_1/conv2d_15/BiasAdd/ReadVariableOp(^model_1/conv2d_15/Conv2D/ReadVariableOp)^model_1/conv2d_16/BiasAdd/ReadVariableOp(^model_1/conv2d_16/Conv2D/ReadVariableOp)^model_1/conv2d_17/BiasAdd/ReadVariableOp(^model_1/conv2d_17/Conv2D/ReadVariableOp'^model_1/dense_4/BiasAdd/ReadVariableOp&^model_1/dense_4/MatMul/ReadVariableOp'^model_1/dense_5/BiasAdd/ReadVariableOp&^model_1/dense_5/MatMul/ReadVariableOp4^model_1/group_normalization/StatefulPartitionedCall6^model_1/group_normalization_1/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*[
_input_shapesJ
H:���������t�: : : : : : : : : : : : : : : : : : : : : : 2z
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
:���������t�
!
_user_specified_name	input_2
�
�
+__inference_conv2d_15_layer_call_fn_7233241

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
F__inference_conv2d_15_layer_call_and_return_conditional_losses_7232175x
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
�
t
H__inference_concatenate_layer_call_and_return_conditional_losses_7233436
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
F__inference_conv2d_17_layer_call_and_return_conditional_losses_7233391

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
F__inference_conv2d_14_layer_call_and_return_conditional_losses_7232147

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
�
�
P__inference_batch_normalization_layer_call_and_return_conditional_losses_7232065

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
�
`
D__inference_flatten_layer_call_and_return_conditional_losses_7232262

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
�Y
�

D__inference_model_1_layer_call_and_return_conditional_losses_7232853
input_2+
conv2d_13_7232787:
conv2d_13_7232789:+
conv2d_14_7232793:
conv2d_14_7232795:)
group_normalization_7232799:)
group_normalization_7232801:+
conv2d_15_7232804:
conv2d_15_7232806:)
batch_normalization_7232812:)
batch_normalization_7232814:)
batch_normalization_7232816:)
batch_normalization_7232818:+
conv2d_16_7232821:
conv2d_16_7232823:+
group_normalization_1_7232827:+
group_normalization_1_7232829:+
conv2d_17_7232832:
conv2d_17_7232834:#
dense_4_7232841:
��

dense_4_7232843:!
dense_5_7232847:
dense_5_7232849:
identity��+batch_normalization/StatefulPartitionedCall�!conv2d_13/StatefulPartitionedCall�!conv2d_14/StatefulPartitionedCall�!conv2d_15/StatefulPartitionedCall�!conv2d_16/StatefulPartitionedCall�!conv2d_17/StatefulPartitionedCall�dense_4/StatefulPartitionedCall�dense_5/StatefulPartitionedCall�+group_normalization/StatefulPartitionedCall�-group_normalization_1/StatefulPartitionedCall�
!conv2d_13/StatefulPartitionedCallStatefulPartitionedCallinput_2conv2d_13_7232787conv2d_13_7232789*
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
F__inference_conv2d_13_layer_call_and_return_conditional_losses_7232124�
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
J__inference_activation_20_layer_call_and_return_conditional_losses_7232135�
!conv2d_14/StatefulPartitionedCallStatefulPartitionedCall&activation_20/PartitionedCall:output:0conv2d_14_7232793conv2d_14_7232795*
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
F__inference_conv2d_14_layer_call_and_return_conditional_losses_7232147�
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
J__inference_activation_21_layer_call_and_return_conditional_losses_7232158�
+group_normalization/StatefulPartitionedCallStatefulPartitionedCall&activation_21/PartitionedCall:output:0group_normalization_7232799group_normalization_7232801*
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
!conv2d_15/StatefulPartitionedCallStatefulPartitionedCall4group_normalization/StatefulPartitionedCall:output:0conv2d_15_7232804conv2d_15_7232806*
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
F__inference_conv2d_15_layer_call_and_return_conditional_losses_7232175�
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
J__inference_activation_22_layer_call_and_return_conditional_losses_7232186�
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
N__inference_average_pooling2d_layer_call_and_return_conditional_losses_7232040�
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
J__inference_activation_23_layer_call_and_return_conditional_losses_7232194�
+batch_normalization/StatefulPartitionedCallStatefulPartitionedCall&activation_23/PartitionedCall:output:0batch_normalization_7232812batch_normalization_7232814batch_normalization_7232816batch_normalization_7232818*
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
P__inference_batch_normalization_layer_call_and_return_conditional_losses_7232096�
!conv2d_16/StatefulPartitionedCallStatefulPartitionedCall4batch_normalization/StatefulPartitionedCall:output:0conv2d_16_7232821conv2d_16_7232823*
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
F__inference_conv2d_16_layer_call_and_return_conditional_losses_7232215�
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
J__inference_activation_24_layer_call_and_return_conditional_losses_7232226�
-group_normalization_1/StatefulPartitionedCallStatefulPartitionedCall&activation_24/PartitionedCall:output:0group_normalization_1_7232827group_normalization_1_7232829*
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
!conv2d_17/StatefulPartitionedCallStatefulPartitionedCall6group_normalization_1/StatefulPartitionedCall:output:0conv2d_17_7232832conv2d_17_7232834*
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
F__inference_conv2d_17_layer_call_and_return_conditional_losses_7232243�
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
J__inference_activation_25_layer_call_and_return_conditional_losses_7232254�
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
D__inference_flatten_layer_call_and_return_conditional_losses_7232262�
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
F__inference_flatten_1_layer_call_and_return_conditional_losses_7232270�
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
H__inference_concatenate_layer_call_and_return_conditional_losses_7232279�
dense_4/StatefulPartitionedCallStatefulPartitionedCall$concatenate/PartitionedCall:output:0dense_4_7232841dense_4_7232843*
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
D__inference_dense_4_layer_call_and_return_conditional_losses_7232291�
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
J__inference_activation_26_layer_call_and_return_conditional_losses_7232302�
dense_5/StatefulPartitionedCallStatefulPartitionedCall&activation_26/PartitionedCall:output:0dense_5_7232847dense_5_7232849*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *1J 8� *M
fHRF
D__inference_dense_5_layer_call_and_return_conditional_losses_7232314w
IdentityIdentity(dense_5/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp,^batch_normalization/StatefulPartitionedCall"^conv2d_13/StatefulPartitionedCall"^conv2d_14/StatefulPartitionedCall"^conv2d_15/StatefulPartitionedCall"^conv2d_16/StatefulPartitionedCall"^conv2d_17/StatefulPartitionedCall ^dense_4/StatefulPartitionedCall ^dense_5/StatefulPartitionedCall,^group_normalization/StatefulPartitionedCall.^group_normalization_1/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*[
_input_shapesJ
H:���������t�: : : : : : : : : : : : : : : : : : : : : : 2Z
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
:���������t�
!
_user_specified_name	input_2
�
�
P__inference_batch_normalization_layer_call_and_return_conditional_losses_7232096

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
�
f
J__inference_activation_20_layer_call_and_return_conditional_losses_7232135

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
�Y
�

D__inference_model_1_layer_call_and_return_conditional_losses_7232321

inputs+
conv2d_13_7232125:
conv2d_13_7232127:+
conv2d_14_7232148:
conv2d_14_7232150:)
group_normalization_7232160:)
group_normalization_7232162:+
conv2d_15_7232176:
conv2d_15_7232178:)
batch_normalization_7232196:)
batch_normalization_7232198:)
batch_normalization_7232200:)
batch_normalization_7232202:+
conv2d_16_7232216:
conv2d_16_7232218:+
group_normalization_1_7232228:+
group_normalization_1_7232230:+
conv2d_17_7232244:
conv2d_17_7232246:#
dense_4_7232292:
��

dense_4_7232294:!
dense_5_7232315:
dense_5_7232317:
identity��+batch_normalization/StatefulPartitionedCall�!conv2d_13/StatefulPartitionedCall�!conv2d_14/StatefulPartitionedCall�!conv2d_15/StatefulPartitionedCall�!conv2d_16/StatefulPartitionedCall�!conv2d_17/StatefulPartitionedCall�dense_4/StatefulPartitionedCall�dense_5/StatefulPartitionedCall�+group_normalization/StatefulPartitionedCall�-group_normalization_1/StatefulPartitionedCall�
!conv2d_13/StatefulPartitionedCallStatefulPartitionedCallinputsconv2d_13_7232125conv2d_13_7232127*
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
F__inference_conv2d_13_layer_call_and_return_conditional_losses_7232124�
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
J__inference_activation_20_layer_call_and_return_conditional_losses_7232135�
!conv2d_14/StatefulPartitionedCallStatefulPartitionedCall&activation_20/PartitionedCall:output:0conv2d_14_7232148conv2d_14_7232150*
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
F__inference_conv2d_14_layer_call_and_return_conditional_losses_7232147�
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
J__inference_activation_21_layer_call_and_return_conditional_losses_7232158�
+group_normalization/StatefulPartitionedCallStatefulPartitionedCall&activation_21/PartitionedCall:output:0group_normalization_7232160group_normalization_7232162*
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
!conv2d_15/StatefulPartitionedCallStatefulPartitionedCall4group_normalization/StatefulPartitionedCall:output:0conv2d_15_7232176conv2d_15_7232178*
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
F__inference_conv2d_15_layer_call_and_return_conditional_losses_7232175�
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
J__inference_activation_22_layer_call_and_return_conditional_losses_7232186�
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
N__inference_average_pooling2d_layer_call_and_return_conditional_losses_7232040�
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
J__inference_activation_23_layer_call_and_return_conditional_losses_7232194�
+batch_normalization/StatefulPartitionedCallStatefulPartitionedCall&activation_23/PartitionedCall:output:0batch_normalization_7232196batch_normalization_7232198batch_normalization_7232200batch_normalization_7232202*
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
P__inference_batch_normalization_layer_call_and_return_conditional_losses_7232065�
!conv2d_16/StatefulPartitionedCallStatefulPartitionedCall4batch_normalization/StatefulPartitionedCall:output:0conv2d_16_7232216conv2d_16_7232218*
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
F__inference_conv2d_16_layer_call_and_return_conditional_losses_7232215�
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
J__inference_activation_24_layer_call_and_return_conditional_losses_7232226�
-group_normalization_1/StatefulPartitionedCallStatefulPartitionedCall&activation_24/PartitionedCall:output:0group_normalization_1_7232228group_normalization_1_7232230*
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
!conv2d_17/StatefulPartitionedCallStatefulPartitionedCall6group_normalization_1/StatefulPartitionedCall:output:0conv2d_17_7232244conv2d_17_7232246*
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
F__inference_conv2d_17_layer_call_and_return_conditional_losses_7232243�
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
J__inference_activation_25_layer_call_and_return_conditional_losses_7232254�
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
D__inference_flatten_layer_call_and_return_conditional_losses_7232262�
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
F__inference_flatten_1_layer_call_and_return_conditional_losses_7232270�
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
H__inference_concatenate_layer_call_and_return_conditional_losses_7232279�
dense_4/StatefulPartitionedCallStatefulPartitionedCall$concatenate/PartitionedCall:output:0dense_4_7232292dense_4_7232294*
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
D__inference_dense_4_layer_call_and_return_conditional_losses_7232291�
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
J__inference_activation_26_layer_call_and_return_conditional_losses_7232302�
dense_5/StatefulPartitionedCallStatefulPartitionedCall&activation_26/PartitionedCall:output:0dense_5_7232315dense_5_7232317*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *1J 8� *M
fHRF
D__inference_dense_5_layer_call_and_return_conditional_losses_7232314w
IdentityIdentity(dense_5/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp,^batch_normalization/StatefulPartitionedCall"^conv2d_13/StatefulPartitionedCall"^conv2d_14/StatefulPartitionedCall"^conv2d_15/StatefulPartitionedCall"^conv2d_16/StatefulPartitionedCall"^conv2d_17/StatefulPartitionedCall ^dense_4/StatefulPartitionedCall ^dense_5/StatefulPartitionedCall,^group_normalization/StatefulPartitionedCall.^group_normalization_1/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*[
_input_shapesJ
H:���������t�: : : : : : : : : : : : : : : : : : : : : : 2Z
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
:���������t�
 
_user_specified_nameinputs
�Y
�

D__inference_model_1_layer_call_and_return_conditional_losses_7232619

inputs+
conv2d_13_7232553:
conv2d_13_7232555:+
conv2d_14_7232559:
conv2d_14_7232561:)
group_normalization_7232565:)
group_normalization_7232567:+
conv2d_15_7232570:
conv2d_15_7232572:)
batch_normalization_7232578:)
batch_normalization_7232580:)
batch_normalization_7232582:)
batch_normalization_7232584:+
conv2d_16_7232587:
conv2d_16_7232589:+
group_normalization_1_7232593:+
group_normalization_1_7232595:+
conv2d_17_7232598:
conv2d_17_7232600:#
dense_4_7232607:
��

dense_4_7232609:!
dense_5_7232613:
dense_5_7232615:
identity��+batch_normalization/StatefulPartitionedCall�!conv2d_13/StatefulPartitionedCall�!conv2d_14/StatefulPartitionedCall�!conv2d_15/StatefulPartitionedCall�!conv2d_16/StatefulPartitionedCall�!conv2d_17/StatefulPartitionedCall�dense_4/StatefulPartitionedCall�dense_5/StatefulPartitionedCall�+group_normalization/StatefulPartitionedCall�-group_normalization_1/StatefulPartitionedCall�
!conv2d_13/StatefulPartitionedCallStatefulPartitionedCallinputsconv2d_13_7232553conv2d_13_7232555*
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
F__inference_conv2d_13_layer_call_and_return_conditional_losses_7232124�
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
J__inference_activation_20_layer_call_and_return_conditional_losses_7232135�
!conv2d_14/StatefulPartitionedCallStatefulPartitionedCall&activation_20/PartitionedCall:output:0conv2d_14_7232559conv2d_14_7232561*
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
F__inference_conv2d_14_layer_call_and_return_conditional_losses_7232147�
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
J__inference_activation_21_layer_call_and_return_conditional_losses_7232158�
+group_normalization/StatefulPartitionedCallStatefulPartitionedCall&activation_21/PartitionedCall:output:0group_normalization_7232565group_normalization_7232567*
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
!conv2d_15/StatefulPartitionedCallStatefulPartitionedCall4group_normalization/StatefulPartitionedCall:output:0conv2d_15_7232570conv2d_15_7232572*
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
F__inference_conv2d_15_layer_call_and_return_conditional_losses_7232175�
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
J__inference_activation_22_layer_call_and_return_conditional_losses_7232186�
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
N__inference_average_pooling2d_layer_call_and_return_conditional_losses_7232040�
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
J__inference_activation_23_layer_call_and_return_conditional_losses_7232194�
+batch_normalization/StatefulPartitionedCallStatefulPartitionedCall&activation_23/PartitionedCall:output:0batch_normalization_7232578batch_normalization_7232580batch_normalization_7232582batch_normalization_7232584*
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
P__inference_batch_normalization_layer_call_and_return_conditional_losses_7232096�
!conv2d_16/StatefulPartitionedCallStatefulPartitionedCall4batch_normalization/StatefulPartitionedCall:output:0conv2d_16_7232587conv2d_16_7232589*
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
F__inference_conv2d_16_layer_call_and_return_conditional_losses_7232215�
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
J__inference_activation_24_layer_call_and_return_conditional_losses_7232226�
-group_normalization_1/StatefulPartitionedCallStatefulPartitionedCall&activation_24/PartitionedCall:output:0group_normalization_1_7232593group_normalization_1_7232595*
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
!conv2d_17/StatefulPartitionedCallStatefulPartitionedCall6group_normalization_1/StatefulPartitionedCall:output:0conv2d_17_7232598conv2d_17_7232600*
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
F__inference_conv2d_17_layer_call_and_return_conditional_losses_7232243�
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
J__inference_activation_25_layer_call_and_return_conditional_losses_7232254�
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
D__inference_flatten_layer_call_and_return_conditional_losses_7232262�
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
F__inference_flatten_1_layer_call_and_return_conditional_losses_7232270�
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
H__inference_concatenate_layer_call_and_return_conditional_losses_7232279�
dense_4/StatefulPartitionedCallStatefulPartitionedCall$concatenate/PartitionedCall:output:0dense_4_7232607dense_4_7232609*
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
D__inference_dense_4_layer_call_and_return_conditional_losses_7232291�
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
J__inference_activation_26_layer_call_and_return_conditional_losses_7232302�
dense_5/StatefulPartitionedCallStatefulPartitionedCall&activation_26/PartitionedCall:output:0dense_5_7232613dense_5_7232615*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *1J 8� *M
fHRF
D__inference_dense_5_layer_call_and_return_conditional_losses_7232314w
IdentityIdentity(dense_5/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp,^batch_normalization/StatefulPartitionedCall"^conv2d_13/StatefulPartitionedCall"^conv2d_14/StatefulPartitionedCall"^conv2d_15/StatefulPartitionedCall"^conv2d_16/StatefulPartitionedCall"^conv2d_17/StatefulPartitionedCall ^dense_4/StatefulPartitionedCall ^dense_5/StatefulPartitionedCall,^group_normalization/StatefulPartitionedCall.^group_normalization_1/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*[
_input_shapesJ
H:���������t�: : : : : : : : : : : : : : : : : : : : : : 2Z
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
:���������t�
 
_user_specified_nameinputs
�
f
J__inference_activation_21_layer_call_and_return_conditional_losses_7232158

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
5__inference_batch_normalization_layer_call_fn_7233307

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
P__inference_batch_normalization_layer_call_and_return_conditional_losses_7232096�
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
�
f
J__inference_activation_22_layer_call_and_return_conditional_losses_7232186

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
�
�
2__inference_group_normalization_layer_call_fn_4219

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
M__inference_group_normalization_layer_call_and_return_conditional_losses_4212`
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
�	
�
D__inference_dense_4_layer_call_and_return_conditional_losses_7232291

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
�
�
P__inference_batch_normalization_layer_call_and_return_conditional_losses_7233343

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
�2
�
M__inference_group_normalization_layer_call_and_return_conditional_losses_5040

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
�
Y
-__inference_concatenate_layer_call_fn_7233429
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
H__inference_concatenate_layer_call_and_return_conditional_losses_7232279b
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
�

�
F__inference_conv2d_13_layer_call_and_return_conditional_losses_7232124

inputs8
conv2d_readvariableop_resource:-
biasadd_readvariableop_resource:
identity��BiasAdd/ReadVariableOp�Conv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:*
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
 :���������t�: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:X T
0
_output_shapes
:���������t�
 
_user_specified_nameinputs
�
K
/__inference_activation_25_layer_call_fn_7233396

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
J__inference_activation_25_layer_call_and_return_conditional_losses_7232254h
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
�
f
J__inference_activation_22_layer_call_and_return_conditional_losses_7233261

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
�
�
+__inference_conv2d_16_layer_call_fn_7233352

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
F__inference_conv2d_16_layer_call_and_return_conditional_losses_7232215w
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
�2
�
M__inference_group_normalization_layer_call_and_return_conditional_losses_4212

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
F__inference_conv2d_15_layer_call_and_return_conditional_losses_7233251

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
�

�
F__inference_conv2d_13_layer_call_and_return_conditional_losses_7233193

inputs8
conv2d_readvariableop_resource:-
biasadd_readvariableop_resource:
identity��BiasAdd/ReadVariableOp�Conv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:*
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
 :���������t�: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:X T
0
_output_shapes
:���������t�
 
_user_specified_nameinputs
�	
�
D__inference_dense_5_layer_call_and_return_conditional_losses_7232314

inputs0
matmul_readvariableop_resource:-
biasadd_readvariableop_resource:
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������_
IdentityIdentityBiasAdd:output:0^NoOp*
T0*'
_output_shapes
:���������w
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
�
f
J__inference_activation_23_layer_call_and_return_conditional_losses_7233281

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
O__inference_group_normalization_1_layer_call_and_return_conditional_losses_5203w
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
/__inference_activation_23_layer_call_fn_7233276

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
J__inference_activation_23_layer_call_and_return_conditional_losses_7232194h
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
�
b
F__inference_flatten_1_layer_call_and_return_conditional_losses_7233423

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
�u
�
#__inference__traced_restore_7233697
file_prefix;
!assignvariableop_conv2d_13_kernel:/
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
"assignvariableop_20_dense_5_kernel:.
 assignvariableop_21_dense_5_bias:&
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
�	
�
D__inference_dense_5_layer_call_and_return_conditional_losses_7233484

inputs0
matmul_readvariableop_resource:-
biasadd_readvariableop_resource:
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������_
IdentityIdentityBiasAdd:output:0^NoOp*
T0*'
_output_shapes
:���������w
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
�	
�
D__inference_dense_4_layer_call_and_return_conditional_losses_7233455

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
�
f
J__inference_activation_25_layer_call_and_return_conditional_losses_7233401

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
�
�
+__inference_conv2d_17_layer_call_fn_7233381

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
F__inference_conv2d_17_layer_call_and_return_conditional_losses_7232243w
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
5__inference_batch_normalization_layer_call_fn_7233294

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
P__inference_batch_normalization_layer_call_and_return_conditional_losses_7232065�
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
�
�
)__inference_model_1_layer_call_fn_7233006

inputs!
unknown:
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

unknown_19:

unknown_20:
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
:���������*6
_read_only_resource_inputs
	
*2
config_proto" 

CPU

GPU2 *1J 8� *M
fHRF
D__inference_model_1_layer_call_and_return_conditional_losses_7232619o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*[
_input_shapesJ
H:���������t�: : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:X T
0
_output_shapes
:���������t�
 
_user_specified_nameinputs
�
f
J__inference_activation_23_layer_call_and_return_conditional_losses_7232194

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
�l
�
D__inference_model_1_layer_call_and_return_conditional_losses_7233174

inputsB
(conv2d_13_conv2d_readvariableop_resource:7
)conv2d_13_biasadd_readvariableop_resource:B
(conv2d_14_conv2d_readvariableop_resource:7
)conv2d_14_biasadd_readvariableop_resource:)
group_normalization_7233107:)
group_normalization_7233109:B
(conv2d_15_conv2d_readvariableop_resource:7
)conv2d_15_biasadd_readvariableop_resource:9
+batch_normalization_readvariableop_resource:;
-batch_normalization_readvariableop_1_resource:J
<batch_normalization_fusedbatchnormv3_readvariableop_resource:L
>batch_normalization_fusedbatchnormv3_readvariableop_1_resource:B
(conv2d_16_conv2d_readvariableop_resource:7
)conv2d_16_biasadd_readvariableop_resource:+
group_normalization_1_7233142:+
group_normalization_1_7233144:B
(conv2d_17_conv2d_readvariableop_resource:7
)conv2d_17_biasadd_readvariableop_resource::
&dense_4_matmul_readvariableop_resource:
��
5
'dense_4_biasadd_readvariableop_resource:8
&dense_5_matmul_readvariableop_resource:5
'dense_5_biasadd_readvariableop_resource:
identity��"batch_normalization/AssignNewValue�$batch_normalization/AssignNewValue_1�3batch_normalization/FusedBatchNormV3/ReadVariableOp�5batch_normalization/FusedBatchNormV3/ReadVariableOp_1�"batch_normalization/ReadVariableOp�$batch_normalization/ReadVariableOp_1� conv2d_13/BiasAdd/ReadVariableOp�conv2d_13/Conv2D/ReadVariableOp� conv2d_14/BiasAdd/ReadVariableOp�conv2d_14/Conv2D/ReadVariableOp� conv2d_15/BiasAdd/ReadVariableOp�conv2d_15/Conv2D/ReadVariableOp� conv2d_16/BiasAdd/ReadVariableOp�conv2d_16/Conv2D/ReadVariableOp� conv2d_17/BiasAdd/ReadVariableOp�conv2d_17/Conv2D/ReadVariableOp�dense_4/BiasAdd/ReadVariableOp�dense_4/MatMul/ReadVariableOp�dense_5/BiasAdd/ReadVariableOp�dense_5/MatMul/ReadVariableOp�+group_normalization/StatefulPartitionedCall�-group_normalization_1/StatefulPartitionedCall�
conv2d_13/Conv2D/ReadVariableOpReadVariableOp(conv2d_13_conv2d_readvariableop_resource*&
_output_shapes
:*
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
+group_normalization/StatefulPartitionedCallStatefulPartitionedCall%activation_21/LeakyRelu:activations:0group_normalization_7233107group_normalization_7233109*
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
-group_normalization_1/StatefulPartitionedCallStatefulPartitionedCall%activation_24/LeakyRelu:activations:0group_normalization_1_7233142group_normalization_1_7233144*
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

:*
dtype0�
dense_5/MatMulMatMul%activation_26/LeakyRelu:activations:0%dense_5/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
dense_5/BiasAdd/ReadVariableOpReadVariableOp'dense_5_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
dense_5/BiasAddBiasAdddense_5/MatMul:product:0&dense_5/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������g
IdentityIdentitydense_5/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp#^batch_normalization/AssignNewValue%^batch_normalization/AssignNewValue_14^batch_normalization/FusedBatchNormV3/ReadVariableOp6^batch_normalization/FusedBatchNormV3/ReadVariableOp_1#^batch_normalization/ReadVariableOp%^batch_normalization/ReadVariableOp_1!^conv2d_13/BiasAdd/ReadVariableOp ^conv2d_13/Conv2D/ReadVariableOp!^conv2d_14/BiasAdd/ReadVariableOp ^conv2d_14/Conv2D/ReadVariableOp!^conv2d_15/BiasAdd/ReadVariableOp ^conv2d_15/Conv2D/ReadVariableOp!^conv2d_16/BiasAdd/ReadVariableOp ^conv2d_16/Conv2D/ReadVariableOp!^conv2d_17/BiasAdd/ReadVariableOp ^conv2d_17/Conv2D/ReadVariableOp^dense_4/BiasAdd/ReadVariableOp^dense_4/MatMul/ReadVariableOp^dense_5/BiasAdd/ReadVariableOp^dense_5/MatMul/ReadVariableOp,^group_normalization/StatefulPartitionedCall.^group_normalization_1/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*[
_input_shapesJ
H:���������t�: : : : : : : : : : : : : : : : : : : : : : 2H
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
:���������t�
 
_user_specified_nameinputs
�e
�
D__inference_model_1_layer_call_and_return_conditional_losses_7233090

inputsB
(conv2d_13_conv2d_readvariableop_resource:7
)conv2d_13_biasadd_readvariableop_resource:B
(conv2d_14_conv2d_readvariableop_resource:7
)conv2d_14_biasadd_readvariableop_resource:)
group_normalization_7233023:)
group_normalization_7233025:B
(conv2d_15_conv2d_readvariableop_resource:7
)conv2d_15_biasadd_readvariableop_resource:9
+batch_normalization_readvariableop_resource:;
-batch_normalization_readvariableop_1_resource:J
<batch_normalization_fusedbatchnormv3_readvariableop_resource:L
>batch_normalization_fusedbatchnormv3_readvariableop_1_resource:B
(conv2d_16_conv2d_readvariableop_resource:7
)conv2d_16_biasadd_readvariableop_resource:+
group_normalization_1_7233058:+
group_normalization_1_7233060:B
(conv2d_17_conv2d_readvariableop_resource:7
)conv2d_17_biasadd_readvariableop_resource::
&dense_4_matmul_readvariableop_resource:
��
5
'dense_4_biasadd_readvariableop_resource:8
&dense_5_matmul_readvariableop_resource:5
'dense_5_biasadd_readvariableop_resource:
identity��3batch_normalization/FusedBatchNormV3/ReadVariableOp�5batch_normalization/FusedBatchNormV3/ReadVariableOp_1�"batch_normalization/ReadVariableOp�$batch_normalization/ReadVariableOp_1� conv2d_13/BiasAdd/ReadVariableOp�conv2d_13/Conv2D/ReadVariableOp� conv2d_14/BiasAdd/ReadVariableOp�conv2d_14/Conv2D/ReadVariableOp� conv2d_15/BiasAdd/ReadVariableOp�conv2d_15/Conv2D/ReadVariableOp� conv2d_16/BiasAdd/ReadVariableOp�conv2d_16/Conv2D/ReadVariableOp� conv2d_17/BiasAdd/ReadVariableOp�conv2d_17/Conv2D/ReadVariableOp�dense_4/BiasAdd/ReadVariableOp�dense_4/MatMul/ReadVariableOp�dense_5/BiasAdd/ReadVariableOp�dense_5/MatMul/ReadVariableOp�+group_normalization/StatefulPartitionedCall�-group_normalization_1/StatefulPartitionedCall�
conv2d_13/Conv2D/ReadVariableOpReadVariableOp(conv2d_13_conv2d_readvariableop_resource*&
_output_shapes
:*
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
+group_normalization/StatefulPartitionedCallStatefulPartitionedCall%activation_21/LeakyRelu:activations:0group_normalization_7233023group_normalization_7233025*
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
-group_normalization_1/StatefulPartitionedCallStatefulPartitionedCall%activation_24/LeakyRelu:activations:0group_normalization_1_7233058group_normalization_1_7233060*
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

:*
dtype0�
dense_5/MatMulMatMul%activation_26/LeakyRelu:activations:0%dense_5/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
dense_5/BiasAdd/ReadVariableOpReadVariableOp'dense_5_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
dense_5/BiasAddBiasAdddense_5/MatMul:product:0&dense_5/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������g
IdentityIdentitydense_5/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp4^batch_normalization/FusedBatchNormV3/ReadVariableOp6^batch_normalization/FusedBatchNormV3/ReadVariableOp_1#^batch_normalization/ReadVariableOp%^batch_normalization/ReadVariableOp_1!^conv2d_13/BiasAdd/ReadVariableOp ^conv2d_13/Conv2D/ReadVariableOp!^conv2d_14/BiasAdd/ReadVariableOp ^conv2d_14/Conv2D/ReadVariableOp!^conv2d_15/BiasAdd/ReadVariableOp ^conv2d_15/Conv2D/ReadVariableOp!^conv2d_16/BiasAdd/ReadVariableOp ^conv2d_16/Conv2D/ReadVariableOp!^conv2d_17/BiasAdd/ReadVariableOp ^conv2d_17/Conv2D/ReadVariableOp^dense_4/BiasAdd/ReadVariableOp^dense_4/MatMul/ReadVariableOp^dense_5/BiasAdd/ReadVariableOp^dense_5/MatMul/ReadVariableOp,^group_normalization/StatefulPartitionedCall.^group_normalization_1/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*[
_input_shapesJ
H:���������t�: : : : : : : : : : : : : : : : : : : : : : 2j
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
:���������t�
 
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
M__inference_group_normalization_layer_call_and_return_conditional_losses_4342x
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
�
K
/__inference_activation_24_layer_call_fn_7233367

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
J__inference_activation_24_layer_call_and_return_conditional_losses_7232226h
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
�

�
F__inference_conv2d_15_layer_call_and_return_conditional_losses_7232175

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
serving_default_input_2:0���������t�;
dense_50
StatefulPartitionedCall:0���������tensorflow/serving/predict:��
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
)__inference_model_1_layer_call_fn_7232368
)__inference_model_1_layer_call_fn_7232957
)__inference_model_1_layer_call_fn_7233006
)__inference_model_1_layer_call_fn_7232715�
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
D__inference_model_1_layer_call_and_return_conditional_losses_7233090
D__inference_model_1_layer_call_and_return_conditional_losses_7233174
D__inference_model_1_layer_call_and_return_conditional_losses_7232784
D__inference_model_1_layer_call_and_return_conditional_losses_7232853�
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
"__inference__wrapped_model_7232031input_2"�
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
+__inference_conv2d_13_layer_call_fn_7233183�
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
F__inference_conv2d_13_layer_call_and_return_conditional_losses_7233193�
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
*:(2conv2d_13/kernel
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
/__inference_activation_20_layer_call_fn_7233198�
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
J__inference_activation_20_layer_call_and_return_conditional_losses_7233203�
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
+__inference_conv2d_14_layer_call_fn_7233212�
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
F__inference_conv2d_14_layer_call_and_return_conditional_losses_7233222�
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
/__inference_activation_21_layer_call_fn_7233227�
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
J__inference_activation_21_layer_call_and_return_conditional_losses_7233232�
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
2__inference_group_normalization_layer_call_fn_5100
2__inference_group_normalization_layer_call_fn_4219�
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
M__inference_group_normalization_layer_call_and_return_conditional_losses_4342
M__inference_group_normalization_layer_call_and_return_conditional_losses_5040�
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
+__inference_conv2d_15_layer_call_fn_7233241�
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
F__inference_conv2d_15_layer_call_and_return_conditional_losses_7233251�
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
/__inference_activation_22_layer_call_fn_7233256�
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
J__inference_activation_22_layer_call_and_return_conditional_losses_7233261�
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
3__inference_average_pooling2d_layer_call_fn_7233266�
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
N__inference_average_pooling2d_layer_call_and_return_conditional_losses_7233271�
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
/__inference_activation_23_layer_call_fn_7233276�
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
J__inference_activation_23_layer_call_and_return_conditional_losses_7233281�
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
5__inference_batch_normalization_layer_call_fn_7233294
5__inference_batch_normalization_layer_call_fn_7233307�
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
P__inference_batch_normalization_layer_call_and_return_conditional_losses_7233325
P__inference_batch_normalization_layer_call_and_return_conditional_losses_7233343�
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
+__inference_conv2d_16_layer_call_fn_7233352�
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
F__inference_conv2d_16_layer_call_and_return_conditional_losses_7233362�
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
/__inference_activation_24_layer_call_fn_7233367�
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
J__inference_activation_24_layer_call_and_return_conditional_losses_7233372�
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
4__inference_group_normalization_1_layer_call_fn_5637
4__inference_group_normalization_1_layer_call_fn_4531�
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
O__inference_group_normalization_1_layer_call_and_return_conditional_losses_4786
O__inference_group_normalization_1_layer_call_and_return_conditional_losses_5203�
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
+__inference_conv2d_17_layer_call_fn_7233381�
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
F__inference_conv2d_17_layer_call_and_return_conditional_losses_7233391�
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
/__inference_activation_25_layer_call_fn_7233396�
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
J__inference_activation_25_layer_call_and_return_conditional_losses_7233401�
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
)__inference_flatten_layer_call_fn_7233406�
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
D__inference_flatten_layer_call_and_return_conditional_losses_7233412�
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
+__inference_flatten_1_layer_call_fn_7233417�
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
F__inference_flatten_1_layer_call_and_return_conditional_losses_7233423�
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
-__inference_concatenate_layer_call_fn_7233429�
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
H__inference_concatenate_layer_call_and_return_conditional_losses_7233436�
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
)__inference_dense_4_layer_call_fn_7233445�
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
D__inference_dense_4_layer_call_and_return_conditional_losses_7233455�
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
/__inference_activation_26_layer_call_fn_7233460�
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
J__inference_activation_26_layer_call_and_return_conditional_losses_7233465�
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
)__inference_dense_5_layer_call_fn_7233474�
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
D__inference_dense_5_layer_call_and_return_conditional_losses_7233484�
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
 :2dense_5/kernel
:2dense_5/bias
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
)__inference_model_1_layer_call_fn_7232368input_2"�
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
)__inference_model_1_layer_call_fn_7232957inputs"�
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
)__inference_model_1_layer_call_fn_7233006inputs"�
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
)__inference_model_1_layer_call_fn_7232715input_2"�
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
D__inference_model_1_layer_call_and_return_conditional_losses_7233090inputs"�
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
D__inference_model_1_layer_call_and_return_conditional_losses_7233174inputs"�
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
D__inference_model_1_layer_call_and_return_conditional_losses_7232784input_2"�
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
D__inference_model_1_layer_call_and_return_conditional_losses_7232853input_2"�
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
%__inference_signature_wrapper_7232908input_2"�
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
+__inference_conv2d_13_layer_call_fn_7233183inputs"�
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
F__inference_conv2d_13_layer_call_and_return_conditional_losses_7233193inputs"�
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
/__inference_activation_20_layer_call_fn_7233198inputs"�
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
J__inference_activation_20_layer_call_and_return_conditional_losses_7233203inputs"�
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
+__inference_conv2d_14_layer_call_fn_7233212inputs"�
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
F__inference_conv2d_14_layer_call_and_return_conditional_losses_7233222inputs"�
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
/__inference_activation_21_layer_call_fn_7233227inputs"�
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
J__inference_activation_21_layer_call_and_return_conditional_losses_7233232inputs"�
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
2__inference_group_normalization_layer_call_fn_5100inputs"�
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
2__inference_group_normalization_layer_call_fn_4219inputs"�
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
M__inference_group_normalization_layer_call_and_return_conditional_losses_4342inputs"�
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
M__inference_group_normalization_layer_call_and_return_conditional_losses_5040inputs"�
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
+__inference_conv2d_15_layer_call_fn_7233241inputs"�
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
F__inference_conv2d_15_layer_call_and_return_conditional_losses_7233251inputs"�
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
/__inference_activation_22_layer_call_fn_7233256inputs"�
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
J__inference_activation_22_layer_call_and_return_conditional_losses_7233261inputs"�
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
3__inference_average_pooling2d_layer_call_fn_7233266inputs"�
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
N__inference_average_pooling2d_layer_call_and_return_conditional_losses_7233271inputs"�
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
/__inference_activation_23_layer_call_fn_7233276inputs"�
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
J__inference_activation_23_layer_call_and_return_conditional_losses_7233281inputs"�
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
5__inference_batch_normalization_layer_call_fn_7233294inputs"�
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
5__inference_batch_normalization_layer_call_fn_7233307inputs"�
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
P__inference_batch_normalization_layer_call_and_return_conditional_losses_7233325inputs"�
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
P__inference_batch_normalization_layer_call_and_return_conditional_losses_7233343inputs"�
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
+__inference_conv2d_16_layer_call_fn_7233352inputs"�
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
F__inference_conv2d_16_layer_call_and_return_conditional_losses_7233362inputs"�
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
/__inference_activation_24_layer_call_fn_7233367inputs"�
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
J__inference_activation_24_layer_call_and_return_conditional_losses_7233372inputs"�
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
4__inference_group_normalization_1_layer_call_fn_5637inputs"�
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
4__inference_group_normalization_1_layer_call_fn_4531inputs"�
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
O__inference_group_normalization_1_layer_call_and_return_conditional_losses_4786inputs"�
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
O__inference_group_normalization_1_layer_call_and_return_conditional_losses_5203inputs"�
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
+__inference_conv2d_17_layer_call_fn_7233381inputs"�
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
F__inference_conv2d_17_layer_call_and_return_conditional_losses_7233391inputs"�
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
/__inference_activation_25_layer_call_fn_7233396inputs"�
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
J__inference_activation_25_layer_call_and_return_conditional_losses_7233401inputs"�
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
)__inference_flatten_layer_call_fn_7233406inputs"�
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
D__inference_flatten_layer_call_and_return_conditional_losses_7233412inputs"�
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
+__inference_flatten_1_layer_call_fn_7233417inputs"�
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
F__inference_flatten_1_layer_call_and_return_conditional_losses_7233423inputs"�
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
-__inference_concatenate_layer_call_fn_7233429inputs/0inputs/1"�
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
H__inference_concatenate_layer_call_and_return_conditional_losses_7233436inputs/0inputs/1"�
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
)__inference_dense_4_layer_call_fn_7233445inputs"�
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
D__inference_dense_4_layer_call_and_return_conditional_losses_7233455inputs"�
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
/__inference_activation_26_layer_call_fn_7233460inputs"�
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
J__inference_activation_26_layer_call_and_return_conditional_losses_7233465inputs"�
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
)__inference_dense_5_layer_call_fn_7233474inputs"�
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
D__inference_dense_5_layer_call_and_return_conditional_losses_7233484inputs"�
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
"__inference__wrapped_model_7232031�()9:JKSTstuv~��������9�6
/�,
*�'
input_2���������t�
� "1�.
,
dense_5!�
dense_5����������
J__inference_activation_20_layer_call_and_return_conditional_losses_7233203j8�5
.�+
)�&
inputs���������t�
� ".�+
$�!
0���������t�
� �
/__inference_activation_20_layer_call_fn_7233198]8�5
.�+
)�&
inputs���������t�
� "!����������t��
J__inference_activation_21_layer_call_and_return_conditional_losses_7233232j8�5
.�+
)�&
inputs���������t�
� ".�+
$�!
0���������t�
� �
/__inference_activation_21_layer_call_fn_7233227]8�5
.�+
)�&
inputs���������t�
� "!����������t��
J__inference_activation_22_layer_call_and_return_conditional_losses_7233261j8�5
.�+
)�&
inputs���������t�
� ".�+
$�!
0���������t�
� �
/__inference_activation_22_layer_call_fn_7233256]8�5
.�+
)�&
inputs���������t�
� "!����������t��
J__inference_activation_23_layer_call_and_return_conditional_losses_7233281h7�4
-�*
(�%
inputs���������:^
� "-�*
#� 
0���������:^
� �
/__inference_activation_23_layer_call_fn_7233276[7�4
-�*
(�%
inputs���������:^
� " ����������:^�
J__inference_activation_24_layer_call_and_return_conditional_losses_7233372h7�4
-�*
(�%
inputs���������:^
� "-�*
#� 
0���������:^
� �
/__inference_activation_24_layer_call_fn_7233367[7�4
-�*
(�%
inputs���������:^
� " ����������:^�
J__inference_activation_25_layer_call_and_return_conditional_losses_7233401h7�4
-�*
(�%
inputs���������:^
� "-�*
#� 
0���������:^
� �
/__inference_activation_25_layer_call_fn_7233396[7�4
-�*
(�%
inputs���������:^
� " ����������:^�
J__inference_activation_26_layer_call_and_return_conditional_losses_7233465X/�,
%�"
 �
inputs���������
� "%�"
�
0���������
� ~
/__inference_activation_26_layer_call_fn_7233460K/�,
%�"
 �
inputs���������
� "�����������
N__inference_average_pooling2d_layer_call_and_return_conditional_losses_7233271�R�O
H�E
C�@
inputs4������������������������������������
� "H�E
>�;
04������������������������������������
� �
3__inference_average_pooling2d_layer_call_fn_7233266�R�O
H�E
C�@
inputs4������������������������������������
� ";�84�������������������������������������
P__inference_batch_normalization_layer_call_and_return_conditional_losses_7233325�stuvM�J
C�@
:�7
inputs+���������������������������
p 
� "?�<
5�2
0+���������������������������
� �
P__inference_batch_normalization_layer_call_and_return_conditional_losses_7233343�stuvM�J
C�@
:�7
inputs+���������������������������
p
� "?�<
5�2
0+���������������������������
� �
5__inference_batch_normalization_layer_call_fn_7233294�stuvM�J
C�@
:�7
inputs+���������������������������
p 
� "2�/+����������������������������
5__inference_batch_normalization_layer_call_fn_7233307�stuvM�J
C�@
:�7
inputs+���������������������������
p
� "2�/+����������������������������
H__inference_concatenate_layer_call_and_return_conditional_losses_7233436�^�[
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
-__inference_concatenate_layer_call_fn_7233429|^�[
T�Q
O�L
$�!
inputs/0�����������
$�!
inputs/1�����������
� "������������
�
F__inference_conv2d_13_layer_call_and_return_conditional_losses_7233193n()8�5
.�+
)�&
inputs���������t�
� ".�+
$�!
0���������t�
� �
+__inference_conv2d_13_layer_call_fn_7233183a()8�5
.�+
)�&
inputs���������t�
� "!����������t��
F__inference_conv2d_14_layer_call_and_return_conditional_losses_7233222n9:8�5
.�+
)�&
inputs���������t�
� ".�+
$�!
0���������t�
� �
+__inference_conv2d_14_layer_call_fn_7233212a9:8�5
.�+
)�&
inputs���������t�
� "!����������t��
F__inference_conv2d_15_layer_call_and_return_conditional_losses_7233251nST8�5
.�+
)�&
inputs���������t�
� ".�+
$�!
0���������t�
� �
+__inference_conv2d_15_layer_call_fn_7233241aST8�5
.�+
)�&
inputs���������t�
� "!����������t��
F__inference_conv2d_16_layer_call_and_return_conditional_losses_7233362l~7�4
-�*
(�%
inputs���������:^
� "-�*
#� 
0���������:^
� �
+__inference_conv2d_16_layer_call_fn_7233352_~7�4
-�*
(�%
inputs���������:^
� " ����������:^�
F__inference_conv2d_17_layer_call_and_return_conditional_losses_7233391n��7�4
-�*
(�%
inputs���������:^
� "-�*
#� 
0���������:^
� �
+__inference_conv2d_17_layer_call_fn_7233381a��7�4
-�*
(�%
inputs���������:^
� " ����������:^�
D__inference_dense_4_layer_call_and_return_conditional_losses_7233455`��1�.
'�$
"�
inputs�����������

� "%�"
�
0���������
� �
)__inference_dense_4_layer_call_fn_7233445S��1�.
'�$
"�
inputs�����������

� "�����������
D__inference_dense_5_layer_call_and_return_conditional_losses_7233484^��/�,
%�"
 �
inputs���������
� "%�"
�
0���������
� ~
)__inference_dense_5_layer_call_fn_7233474Q��/�,
%�"
 �
inputs���������
� "�����������
F__inference_flatten_1_layer_call_and_return_conditional_losses_7233423b7�4
-�*
(�%
inputs���������:^
� "'�$
�
0�����������
� �
+__inference_flatten_1_layer_call_fn_7233417U7�4
-�*
(�%
inputs���������:^
� "�������������
D__inference_flatten_layer_call_and_return_conditional_losses_7233412b7�4
-�*
(�%
inputs���������:^
� "'�$
�
0�����������
� �
)__inference_flatten_layer_call_fn_7233406U7�4
-�*
(�%
inputs���������:^
� "�������������
O__inference_group_normalization_1_layer_call_and_return_conditional_losses_4786~��G�D
-�*
(�%
inputs���������:^
�

trainingp "-�*
#� 
0���������:^
� �
O__inference_group_normalization_1_layer_call_and_return_conditional_losses_5203~��G�D
-�*
(�%
inputs���������:^
�

trainingp"-�*
#� 
0���������:^
� �
4__inference_group_normalization_1_layer_call_fn_4531q��G�D
-�*
(�%
inputs���������:^
�

trainingp" ����������:^�
4__inference_group_normalization_1_layer_call_fn_5637q��G�D
-�*
(�%
inputs���������:^
�

trainingp " ����������:^�
M__inference_group_normalization_layer_call_and_return_conditional_losses_4342~JKH�E
.�+
)�&
inputs���������t�
�

trainingp ".�+
$�!
0���������t�
� �
M__inference_group_normalization_layer_call_and_return_conditional_losses_5040~JKH�E
.�+
)�&
inputs���������t�
�

trainingp".�+
$�!
0���������t�
� �
2__inference_group_normalization_layer_call_fn_4219qJKH�E
.�+
)�&
inputs���������t�
�

trainingp"!����������t��
2__inference_group_normalization_layer_call_fn_5100qJKH�E
.�+
)�&
inputs���������t�
�

trainingp "!����������t��
D__inference_model_1_layer_call_and_return_conditional_losses_7232784�()9:JKSTstuv~��������A�>
7�4
*�'
input_2���������t�
p 

 
� "%�"
�
0���������
� �
D__inference_model_1_layer_call_and_return_conditional_losses_7232853�()9:JKSTstuv~��������A�>
7�4
*�'
input_2���������t�
p

 
� "%�"
�
0���������
� �
D__inference_model_1_layer_call_and_return_conditional_losses_7233090�()9:JKSTstuv~��������@�=
6�3
)�&
inputs���������t�
p 

 
� "%�"
�
0���������
� �
D__inference_model_1_layer_call_and_return_conditional_losses_7233174�()9:JKSTstuv~��������@�=
6�3
)�&
inputs���������t�
p

 
� "%�"
�
0���������
� �
)__inference_model_1_layer_call_fn_7232368}()9:JKSTstuv~��������A�>
7�4
*�'
input_2���������t�
p 

 
� "�����������
)__inference_model_1_layer_call_fn_7232715}()9:JKSTstuv~��������A�>
7�4
*�'
input_2���������t�
p

 
� "�����������
)__inference_model_1_layer_call_fn_7232957|()9:JKSTstuv~��������@�=
6�3
)�&
inputs���������t�
p 

 
� "�����������
)__inference_model_1_layer_call_fn_7233006|()9:JKSTstuv~��������@�=
6�3
)�&
inputs���������t�
p

 
� "�����������
%__inference_signature_wrapper_7232908�()9:JKSTstuv~��������D�A
� 
:�7
5
input_2*�'
input_2���������t�"1�.
,
dense_5!�
dense_5���������