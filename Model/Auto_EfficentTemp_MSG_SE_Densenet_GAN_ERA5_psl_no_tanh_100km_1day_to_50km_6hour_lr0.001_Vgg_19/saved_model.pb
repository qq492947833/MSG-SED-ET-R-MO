��
��
^
AssignVariableOp
resource
value"dtype"
dtypetype"
validate_shapebool( �
~
BiasAdd

value"T	
bias"T
output"T" 
Ttype:
2	"-
data_formatstringNHWC:
NHWCNCHW
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
�
MaxPool

input"T
output"T"
Ttype0:
2	"
ksize	list(int)(0"
strides	list(int)(0",
paddingstring:
SAMEVALIDEXPLICIT""
explicit_paddings	list(int)
 ":
data_formatstringNHWC:
NHWCNCHWNCHW_VECT_C
�
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool("
allow_missing_filesbool( �
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
E
Relu
features"T
activations"T"
Ttype:
2	
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
H
ShardedFilename
basename	
shard

num_shards
filename
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
N

StringJoin
inputs*N

output"
Nint(0"
	separatorstring 
�
VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 �"serve*2.10.02v2.10.0-rc3-6-g359c3cdfc5f8�
�
%batch_normalization_4/moving_varianceVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*6
shared_name'%batch_normalization_4/moving_variance
�
9batch_normalization_4/moving_variance/Read/ReadVariableOpReadVariableOp%batch_normalization_4/moving_variance*
_output_shapes
:@*
dtype0
�
!batch_normalization_4/moving_meanVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*2
shared_name#!batch_normalization_4/moving_mean
�
5batch_normalization_4/moving_mean/Read/ReadVariableOpReadVariableOp!batch_normalization_4/moving_mean*
_output_shapes
:@*
dtype0
�
batch_normalization_4/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*+
shared_namebatch_normalization_4/beta
�
.batch_normalization_4/beta/Read/ReadVariableOpReadVariableOpbatch_normalization_4/beta*
_output_shapes
:@*
dtype0
�
batch_normalization_4/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*,
shared_namebatch_normalization_4/gamma
�
/batch_normalization_4/gamma/Read/ReadVariableOpReadVariableOpbatch_normalization_4/gamma*
_output_shapes
:@*
dtype0
t
conv2d_21/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*
shared_nameconv2d_21/bias
m
"conv2d_21/bias/Read/ReadVariableOpReadVariableOpconv2d_21/bias*
_output_shapes
:@*
dtype0
�
conv2d_21/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:@@*!
shared_nameconv2d_21/kernel
}
$conv2d_21/kernel/Read/ReadVariableOpReadVariableOpconv2d_21/kernel*&
_output_shapes
:@@*
dtype0
�
%batch_normalization_3/moving_varianceVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*6
shared_name'%batch_normalization_3/moving_variance
�
9batch_normalization_3/moving_variance/Read/ReadVariableOpReadVariableOp%batch_normalization_3/moving_variance*
_output_shapes
:@*
dtype0
�
!batch_normalization_3/moving_meanVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*2
shared_name#!batch_normalization_3/moving_mean
�
5batch_normalization_3/moving_mean/Read/ReadVariableOpReadVariableOp!batch_normalization_3/moving_mean*
_output_shapes
:@*
dtype0
�
batch_normalization_3/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*+
shared_namebatch_normalization_3/beta
�
.batch_normalization_3/beta/Read/ReadVariableOpReadVariableOpbatch_normalization_3/beta*
_output_shapes
:@*
dtype0
�
batch_normalization_3/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*,
shared_namebatch_normalization_3/gamma
�
/batch_normalization_3/gamma/Read/ReadVariableOpReadVariableOpbatch_normalization_3/gamma*
_output_shapes
:@*
dtype0
t
conv2d_20/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*
shared_nameconv2d_20/bias
m
"conv2d_20/bias/Read/ReadVariableOpReadVariableOpconv2d_20/bias*
_output_shapes
:@*
dtype0
�
conv2d_20/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:@@*!
shared_nameconv2d_20/kernel
}
$conv2d_20/kernel/Read/ReadVariableOpReadVariableOpconv2d_20/kernel*&
_output_shapes
:@@*
dtype0
�
%batch_normalization_2/moving_varianceVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*6
shared_name'%batch_normalization_2/moving_variance
�
9batch_normalization_2/moving_variance/Read/ReadVariableOpReadVariableOp%batch_normalization_2/moving_variance*
_output_shapes
:@*
dtype0
�
!batch_normalization_2/moving_meanVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*2
shared_name#!batch_normalization_2/moving_mean
�
5batch_normalization_2/moving_mean/Read/ReadVariableOpReadVariableOp!batch_normalization_2/moving_mean*
_output_shapes
:@*
dtype0
�
batch_normalization_2/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*+
shared_namebatch_normalization_2/beta
�
.batch_normalization_2/beta/Read/ReadVariableOpReadVariableOpbatch_normalization_2/beta*
_output_shapes
:@*
dtype0
�
batch_normalization_2/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*,
shared_namebatch_normalization_2/gamma
�
/batch_normalization_2/gamma/Read/ReadVariableOpReadVariableOpbatch_normalization_2/gamma*
_output_shapes
:@*
dtype0
t
conv2d_19/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*
shared_nameconv2d_19/bias
m
"conv2d_19/bias/Read/ReadVariableOpReadVariableOpconv2d_19/bias*
_output_shapes
:@*
dtype0
�
conv2d_19/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:@@*!
shared_nameconv2d_19/kernel
}
$conv2d_19/kernel/Read/ReadVariableOpReadVariableOpconv2d_19/kernel*&
_output_shapes
:@@*
dtype0
�
%batch_normalization_1/moving_varianceVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*6
shared_name'%batch_normalization_1/moving_variance
�
9batch_normalization_1/moving_variance/Read/ReadVariableOpReadVariableOp%batch_normalization_1/moving_variance*
_output_shapes
:@*
dtype0
�
!batch_normalization_1/moving_meanVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*2
shared_name#!batch_normalization_1/moving_mean
�
5batch_normalization_1/moving_mean/Read/ReadVariableOpReadVariableOp!batch_normalization_1/moving_mean*
_output_shapes
:@*
dtype0
�
batch_normalization_1/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*+
shared_namebatch_normalization_1/beta
�
.batch_normalization_1/beta/Read/ReadVariableOpReadVariableOpbatch_normalization_1/beta*
_output_shapes
:@*
dtype0
�
batch_normalization_1/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*,
shared_namebatch_normalization_1/gamma
�
/batch_normalization_1/gamma/Read/ReadVariableOpReadVariableOpbatch_normalization_1/gamma*
_output_shapes
:@*
dtype0
t
conv2d_18/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*
shared_nameconv2d_18/bias
m
"conv2d_18/bias/Read/ReadVariableOpReadVariableOpconv2d_18/bias*
_output_shapes
:@*
dtype0
�
conv2d_18/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*!
shared_nameconv2d_18/kernel
}
$conv2d_18/kernel/Read/ReadVariableOpReadVariableOpconv2d_18/kernel*&
_output_shapes
:@*
dtype0
�
serving_default_input_3Placeholder*0
_output_shapes
:���������t�*
dtype0*%
shape:���������t�
�
StatefulPartitionedCallStatefulPartitionedCallserving_default_input_3conv2d_18/kernelconv2d_18/biasbatch_normalization_1/gammabatch_normalization_1/beta!batch_normalization_1/moving_mean%batch_normalization_1/moving_varianceconv2d_19/kernelconv2d_19/biasbatch_normalization_2/gammabatch_normalization_2/beta!batch_normalization_2/moving_mean%batch_normalization_2/moving_varianceconv2d_20/kernelconv2d_20/biasbatch_normalization_3/gammabatch_normalization_3/beta!batch_normalization_3/moving_mean%batch_normalization_3/moving_varianceconv2d_21/kernelconv2d_21/biasbatch_normalization_4/gammabatch_normalization_4/beta!batch_normalization_4/moving_mean%batch_normalization_4/moving_variance*$
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������:^@*:
_read_only_resource_inputs
	
*2
config_proto" 

CPU

GPU2 *1J 8� */
f*R(
&__inference_signature_wrapper_18090235

NoOpNoOp
�]
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*�\
value�\B�\ B�\
�
layer-0
layer_with_weights-0
layer-1
layer_with_weights-1
layer-2
layer-3
layer_with_weights-2
layer-4
layer_with_weights-3
layer-5
layer-6
layer_with_weights-4
layer-7
	layer_with_weights-5
	layer-8

layer-9
layer_with_weights-6
layer-10
layer_with_weights-7
layer-11
layer-12
layer-13
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses
_default_save_signature

signatures*
* 
�
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses

kernel
bias
 _jit_compiled_convolution_op*
�
 	variables
!trainable_variables
"regularization_losses
#	keras_api
$__call__
*%&call_and_return_all_conditional_losses
&axis
	'gamma
(beta
)moving_mean
*moving_variance*
�
+	variables
,trainable_variables
-regularization_losses
.	keras_api
/__call__
*0&call_and_return_all_conditional_losses* 
�
1	variables
2trainable_variables
3regularization_losses
4	keras_api
5__call__
*6&call_and_return_all_conditional_losses

7kernel
8bias
 9_jit_compiled_convolution_op*
�
:	variables
;trainable_variables
<regularization_losses
=	keras_api
>__call__
*?&call_and_return_all_conditional_losses
@axis
	Agamma
Bbeta
Cmoving_mean
Dmoving_variance*
�
E	variables
Ftrainable_variables
Gregularization_losses
H	keras_api
I__call__
*J&call_and_return_all_conditional_losses* 
�
K	variables
Ltrainable_variables
Mregularization_losses
N	keras_api
O__call__
*P&call_and_return_all_conditional_losses

Qkernel
Rbias
 S_jit_compiled_convolution_op*
�
T	variables
Utrainable_variables
Vregularization_losses
W	keras_api
X__call__
*Y&call_and_return_all_conditional_losses
Zaxis
	[gamma
\beta
]moving_mean
^moving_variance*
�
_	variables
`trainable_variables
aregularization_losses
b	keras_api
c__call__
*d&call_and_return_all_conditional_losses* 
�
e	variables
ftrainable_variables
gregularization_losses
h	keras_api
i__call__
*j&call_and_return_all_conditional_losses

kkernel
lbias
 m_jit_compiled_convolution_op*
�
n	variables
otrainable_variables
pregularization_losses
q	keras_api
r__call__
*s&call_and_return_all_conditional_losses
taxis
	ugamma
vbeta
wmoving_mean
xmoving_variance*
�
y	variables
ztrainable_variables
{regularization_losses
|	keras_api
}__call__
*~&call_and_return_all_conditional_losses* 
�
	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses* 
�
0
1
'2
(3
)4
*5
76
87
A8
B9
C10
D11
Q12
R13
[14
\15
]16
^17
k18
l19
u20
v21
w22
x23*
z
0
1
'2
(3
74
85
A6
B7
Q8
R9
[10
\11
k12
l13
u14
v15*
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
	variables
trainable_variables
regularization_losses
__call__
_default_save_signature
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses*
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

�serving_default* 

0
1*

0
1*
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
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses*

�trace_0* 

�trace_0* 
`Z
VARIABLE_VALUEconv2d_18/kernel6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUE*
\V
VARIABLE_VALUEconv2d_18/bias4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 
 
'0
(1
)2
*3*

'0
(1*
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
 	variables
!trainable_variables
"regularization_losses
$__call__
*%&call_and_return_all_conditional_losses
&%"call_and_return_conditional_losses*

�trace_0
�trace_1* 

�trace_0
�trace_1* 
* 
jd
VARIABLE_VALUEbatch_normalization_1/gamma5layer_with_weights-1/gamma/.ATTRIBUTES/VARIABLE_VALUE*
hb
VARIABLE_VALUEbatch_normalization_1/beta4layer_with_weights-1/beta/.ATTRIBUTES/VARIABLE_VALUE*
vp
VARIABLE_VALUE!batch_normalization_1/moving_mean;layer_with_weights-1/moving_mean/.ATTRIBUTES/VARIABLE_VALUE*
~x
VARIABLE_VALUE%batch_normalization_1/moving_variance?layer_with_weights-1/moving_variance/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
+	variables
,trainable_variables
-regularization_losses
/__call__
*0&call_and_return_all_conditional_losses
&0"call_and_return_conditional_losses* 

�trace_0* 

�trace_0* 

70
81*

70
81*
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
1	variables
2trainable_variables
3regularization_losses
5__call__
*6&call_and_return_all_conditional_losses
&6"call_and_return_conditional_losses*

�trace_0* 

�trace_0* 
`Z
VARIABLE_VALUEconv2d_19/kernel6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUE*
\V
VARIABLE_VALUEconv2d_19/bias4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 
 
A0
B1
C2
D3*

A0
B1*
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
:	variables
;trainable_variables
<regularization_losses
>__call__
*?&call_and_return_all_conditional_losses
&?"call_and_return_conditional_losses*

�trace_0
�trace_1* 

�trace_0
�trace_1* 
* 
jd
VARIABLE_VALUEbatch_normalization_2/gamma5layer_with_weights-3/gamma/.ATTRIBUTES/VARIABLE_VALUE*
hb
VARIABLE_VALUEbatch_normalization_2/beta4layer_with_weights-3/beta/.ATTRIBUTES/VARIABLE_VALUE*
vp
VARIABLE_VALUE!batch_normalization_2/moving_mean;layer_with_weights-3/moving_mean/.ATTRIBUTES/VARIABLE_VALUE*
~x
VARIABLE_VALUE%batch_normalization_2/moving_variance?layer_with_weights-3/moving_variance/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
E	variables
Ftrainable_variables
Gregularization_losses
I__call__
*J&call_and_return_all_conditional_losses
&J"call_and_return_conditional_losses* 

�trace_0* 

�trace_0* 

Q0
R1*

Q0
R1*
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
K	variables
Ltrainable_variables
Mregularization_losses
O__call__
*P&call_and_return_all_conditional_losses
&P"call_and_return_conditional_losses*

�trace_0* 

�trace_0* 
`Z
VARIABLE_VALUEconv2d_20/kernel6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUE*
\V
VARIABLE_VALUEconv2d_20/bias4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 
 
[0
\1
]2
^3*

[0
\1*
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
T	variables
Utrainable_variables
Vregularization_losses
X__call__
*Y&call_and_return_all_conditional_losses
&Y"call_and_return_conditional_losses*

�trace_0
�trace_1* 

�trace_0
�trace_1* 
* 
jd
VARIABLE_VALUEbatch_normalization_3/gamma5layer_with_weights-5/gamma/.ATTRIBUTES/VARIABLE_VALUE*
hb
VARIABLE_VALUEbatch_normalization_3/beta4layer_with_weights-5/beta/.ATTRIBUTES/VARIABLE_VALUE*
vp
VARIABLE_VALUE!batch_normalization_3/moving_mean;layer_with_weights-5/moving_mean/.ATTRIBUTES/VARIABLE_VALUE*
~x
VARIABLE_VALUE%batch_normalization_3/moving_variance?layer_with_weights-5/moving_variance/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
_	variables
`trainable_variables
aregularization_losses
c__call__
*d&call_and_return_all_conditional_losses
&d"call_and_return_conditional_losses* 

�trace_0* 

�trace_0* 

k0
l1*

k0
l1*
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
e	variables
ftrainable_variables
gregularization_losses
i__call__
*j&call_and_return_all_conditional_losses
&j"call_and_return_conditional_losses*

�trace_0* 

�trace_0* 
`Z
VARIABLE_VALUEconv2d_21/kernel6layer_with_weights-6/kernel/.ATTRIBUTES/VARIABLE_VALUE*
\V
VARIABLE_VALUEconv2d_21/bias4layer_with_weights-6/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 
 
u0
v1
w2
x3*

u0
v1*
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
n	variables
otrainable_variables
pregularization_losses
r__call__
*s&call_and_return_all_conditional_losses
&s"call_and_return_conditional_losses*

�trace_0
�trace_1* 

�trace_0
�trace_1* 
* 
jd
VARIABLE_VALUEbatch_normalization_4/gamma5layer_with_weights-7/gamma/.ATTRIBUTES/VARIABLE_VALUE*
hb
VARIABLE_VALUEbatch_normalization_4/beta4layer_with_weights-7/beta/.ATTRIBUTES/VARIABLE_VALUE*
vp
VARIABLE_VALUE!batch_normalization_4/moving_mean;layer_with_weights-7/moving_mean/.ATTRIBUTES/VARIABLE_VALUE*
~x
VARIABLE_VALUE%batch_normalization_4/moving_variance?layer_with_weights-7/moving_variance/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
y	variables
ztrainable_variables
{regularization_losses
}__call__
*~&call_and_return_all_conditional_losses
&~"call_and_return_conditional_losses* 

�trace_0* 

�trace_0* 
* 
* 
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses* 

�trace_0* 

�trace_0* 
<
)0
*1
C2
D3
]4
^5
w6
x7*
j
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
13*
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
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
)0
*1*
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
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
C0
D1*
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
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
]0
^1*
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
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
w0
x1*
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
�
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename$conv2d_18/kernel/Read/ReadVariableOp"conv2d_18/bias/Read/ReadVariableOp/batch_normalization_1/gamma/Read/ReadVariableOp.batch_normalization_1/beta/Read/ReadVariableOp5batch_normalization_1/moving_mean/Read/ReadVariableOp9batch_normalization_1/moving_variance/Read/ReadVariableOp$conv2d_19/kernel/Read/ReadVariableOp"conv2d_19/bias/Read/ReadVariableOp/batch_normalization_2/gamma/Read/ReadVariableOp.batch_normalization_2/beta/Read/ReadVariableOp5batch_normalization_2/moving_mean/Read/ReadVariableOp9batch_normalization_2/moving_variance/Read/ReadVariableOp$conv2d_20/kernel/Read/ReadVariableOp"conv2d_20/bias/Read/ReadVariableOp/batch_normalization_3/gamma/Read/ReadVariableOp.batch_normalization_3/beta/Read/ReadVariableOp5batch_normalization_3/moving_mean/Read/ReadVariableOp9batch_normalization_3/moving_variance/Read/ReadVariableOp$conv2d_21/kernel/Read/ReadVariableOp"conv2d_21/bias/Read/ReadVariableOp/batch_normalization_4/gamma/Read/ReadVariableOp.batch_normalization_4/beta/Read/ReadVariableOp5batch_normalization_4/moving_mean/Read/ReadVariableOp9batch_normalization_4/moving_variance/Read/ReadVariableOpConst*%
Tin
2*
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
GPU2 *1J 8� **
f%R#
!__inference__traced_save_18090988
�
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenameconv2d_18/kernelconv2d_18/biasbatch_normalization_1/gammabatch_normalization_1/beta!batch_normalization_1/moving_mean%batch_normalization_1/moving_varianceconv2d_19/kernelconv2d_19/biasbatch_normalization_2/gammabatch_normalization_2/beta!batch_normalization_2/moving_mean%batch_normalization_2/moving_varianceconv2d_20/kernelconv2d_20/biasbatch_normalization_3/gammabatch_normalization_3/beta!batch_normalization_3/moving_mean%batch_normalization_3/moving_varianceconv2d_21/kernelconv2d_21/biasbatch_normalization_4/gammabatch_normalization_4/beta!batch_normalization_4/moving_mean%batch_normalization_4/moving_variance*$
Tin
2*
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
GPU2 *1J 8� *-
f(R&
$__inference__traced_restore_18091070��
�
�
S__inference_batch_normalization_1_layer_call_and_return_conditional_losses_18090600

inputs%
readvariableop_resource:@'
readvariableop_1_resource:@6
(fusedbatchnormv3_readvariableop_resource:@8
*fusedbatchnormv3_readvariableop_1_resource:@
identity��AssignNewValue�AssignNewValue_1�FusedBatchNormV3/ReadVariableOp�!FusedBatchNormV3/ReadVariableOp_1�ReadVariableOp�ReadVariableOp_1b
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:@*
dtype0f
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:@*
dtype0�
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype0�
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype0�
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+���������������������������@:@:@:@:@:*
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
-:+���������������������������@�
NoOpNoOp^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+���������������������������@: : : : 2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+���������������������������@
 
_user_specified_nameinputs
�
L
0__inference_activation_28_layer_call_fn_18090696

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
:���������t�@* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2 *1J 8� *T
fORM
K__inference_activation_28_layer_call_and_return_conditional_losses_18089643i
IdentityIdentityPartitionedCall:output:0*
T0*0
_output_shapes
:���������t�@"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:���������t�@:X T
0
_output_shapes
:���������t�@
 
_user_specified_nameinputs
�
L
0__inference_activation_30_layer_call_fn_18090878

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
:���������t�@* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2 *1J 8� *T
fORM
K__inference_activation_30_layer_call_and_return_conditional_losses_18089707i
IdentityIdentityPartitionedCall:output:0*
T0*0
_output_shapes
:���������t�@"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:���������t�@:X T
0
_output_shapes
:���������t�@
 
_user_specified_nameinputs
�
g
K__inference_activation_27_layer_call_and_return_conditional_losses_18090610

inputs
identityO
ReluReluinputs*
T0*0
_output_shapes
:���������t�@c
IdentityIdentityRelu:activations:0*
T0*0
_output_shapes
:���������t�@"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:���������t�@:X T
0
_output_shapes
:���������t�@
 
_user_specified_nameinputs
�	
�
8__inference_batch_normalization_3_layer_call_fn_18090733

inputs
unknown:@
	unknown_0:@
	unknown_1:@
	unknown_2:@
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+���������������������������@*&
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *1J 8� *\
fWRU
S__inference_batch_normalization_3_layer_call_and_return_conditional_losses_18089456�
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*A
_output_shapes/
-:+���������������������������@`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+���������������������������@: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+���������������������������@
 
_user_specified_nameinputs
�	
�
8__inference_batch_normalization_2_layer_call_fn_18090642

inputs
unknown:@
	unknown_0:@
	unknown_1:@
	unknown_2:@
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+���������������������������@*&
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *1J 8� *\
fWRU
S__inference_batch_normalization_2_layer_call_and_return_conditional_losses_18089392�
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*A
_output_shapes/
-:+���������������������������@`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+���������������������������@: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+���������������������������@
 
_user_specified_nameinputs
�
�
S__inference_batch_normalization_4_layer_call_and_return_conditional_losses_18089520

inputs%
readvariableop_resource:@'
readvariableop_1_resource:@6
(fusedbatchnormv3_readvariableop_resource:@8
*fusedbatchnormv3_readvariableop_1_resource:@
identity��FusedBatchNormV3/ReadVariableOp�!FusedBatchNormV3/ReadVariableOp_1�ReadVariableOp�ReadVariableOp_1b
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:@*
dtype0f
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:@*
dtype0�
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype0�
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype0�
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+���������������������������@:@:@:@:@:*
epsilon%o�:*
is_training( }
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*A
_output_shapes/
-:+���������������������������@�
NoOpNoOp ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+���������������������������@: : : : 2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+���������������������������@
 
_user_specified_nameinputs
�
�
S__inference_batch_normalization_1_layer_call_and_return_conditional_losses_18089328

inputs%
readvariableop_resource:@'
readvariableop_1_resource:@6
(fusedbatchnormv3_readvariableop_resource:@8
*fusedbatchnormv3_readvariableop_1_resource:@
identity��FusedBatchNormV3/ReadVariableOp�!FusedBatchNormV3/ReadVariableOp_1�ReadVariableOp�ReadVariableOp_1b
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:@*
dtype0f
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:@*
dtype0�
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype0�
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype0�
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+���������������������������@:@:@:@:@:*
epsilon%o�:*
is_training( }
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*A
_output_shapes/
-:+���������������������������@�
NoOpNoOp ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+���������������������������@: : : : 2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+���������������������������@
 
_user_specified_nameinputs
�
�
,__inference_conv2d_19_layer_call_fn_18090619

inputs!
unknown:@@
	unknown_0:@
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:���������t�@*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *1J 8� *P
fKRI
G__inference_conv2d_19_layer_call_and_return_conditional_losses_18089623x
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*0
_output_shapes
:���������t�@`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :���������t�@: : 22
StatefulPartitionedCallStatefulPartitionedCall:X T
0
_output_shapes
:���������t�@
 
_user_specified_nameinputs
�	
�
8__inference_batch_normalization_3_layer_call_fn_18090746

inputs
unknown:@
	unknown_0:@
	unknown_1:@
	unknown_2:@
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+���������������������������@*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *1J 8� *\
fWRU
S__inference_batch_normalization_3_layer_call_and_return_conditional_losses_18089487�
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*A
_output_shapes/
-:+���������������������������@`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+���������������������������@: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+���������������������������@
 
_user_specified_nameinputs
�

�
G__inference_conv2d_19_layer_call_and_return_conditional_losses_18090629

inputs8
conv2d_readvariableop_resource:@@-
biasadd_readvariableop_resource:@
identity��BiasAdd/ReadVariableOp�Conv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype0�
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:���������t�@*
paddingSAME*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype0~
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:���������t�@h
IdentityIdentityBiasAdd:output:0^NoOp*
T0*0
_output_shapes
:���������t�@w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :���������t�@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:X T
0
_output_shapes
:���������t�@
 
_user_specified_nameinputs
�
g
K__inference_max_pooling2d_layer_call_and_return_conditional_losses_18090893

inputs
identity�
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4������������������������������������*
ksize
*
paddingVALID*
strides
{
IdentityIdentityMaxPool:output:0*
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
�
�
*__inference_model_2_layer_call_fn_18090050
input_3!
unknown:@
	unknown_0:@
	unknown_1:@
	unknown_2:@
	unknown_3:@
	unknown_4:@#
	unknown_5:@@
	unknown_6:@
	unknown_7:@
	unknown_8:@
	unknown_9:@

unknown_10:@$

unknown_11:@@

unknown_12:@

unknown_13:@

unknown_14:@

unknown_15:@

unknown_16:@$

unknown_17:@@

unknown_18:@

unknown_19:@

unknown_20:@

unknown_21:@

unknown_22:@
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinput_3unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
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
unknown_20
unknown_21
unknown_22*$
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������:^@*2
_read_only_resource_inputs
	
*2
config_proto" 

CPU

GPU2 *1J 8� *N
fIRG
E__inference_model_2_layer_call_and_return_conditional_losses_18089946w
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:���������:^@`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*_
_input_shapesN
L:���������t�: : : : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Y U
0
_output_shapes
:���������t�
!
_user_specified_name	input_3
�
�
&__inference_signature_wrapper_18090235
input_3!
unknown:@
	unknown_0:@
	unknown_1:@
	unknown_2:@
	unknown_3:@
	unknown_4:@#
	unknown_5:@@
	unknown_6:@
	unknown_7:@
	unknown_8:@
	unknown_9:@

unknown_10:@$

unknown_11:@@

unknown_12:@

unknown_13:@

unknown_14:@

unknown_15:@

unknown_16:@$

unknown_17:@@

unknown_18:@

unknown_19:@

unknown_20:@

unknown_21:@

unknown_22:@
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinput_3unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
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
unknown_20
unknown_21
unknown_22*$
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������:^@*:
_read_only_resource_inputs
	
*2
config_proto" 

CPU

GPU2 *1J 8� *,
f'R%
#__inference__wrapped_model_18089306w
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:���������:^@`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*_
_input_shapesN
L:���������t�: : : : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Y U
0
_output_shapes
:���������t�
!
_user_specified_name	input_3
�D
�
E__inference_model_2_layer_call_and_return_conditional_losses_18089711

inputs,
conv2d_18_18089592:@ 
conv2d_18_18089594:@,
batch_normalization_1_18089597:@,
batch_normalization_1_18089599:@,
batch_normalization_1_18089601:@,
batch_normalization_1_18089603:@,
conv2d_19_18089624:@@ 
conv2d_19_18089626:@,
batch_normalization_2_18089629:@,
batch_normalization_2_18089631:@,
batch_normalization_2_18089633:@,
batch_normalization_2_18089635:@,
conv2d_20_18089656:@@ 
conv2d_20_18089658:@,
batch_normalization_3_18089661:@,
batch_normalization_3_18089663:@,
batch_normalization_3_18089665:@,
batch_normalization_3_18089667:@,
conv2d_21_18089688:@@ 
conv2d_21_18089690:@,
batch_normalization_4_18089693:@,
batch_normalization_4_18089695:@,
batch_normalization_4_18089697:@,
batch_normalization_4_18089699:@
identity��-batch_normalization_1/StatefulPartitionedCall�-batch_normalization_2/StatefulPartitionedCall�-batch_normalization_3/StatefulPartitionedCall�-batch_normalization_4/StatefulPartitionedCall�!conv2d_18/StatefulPartitionedCall�!conv2d_19/StatefulPartitionedCall�!conv2d_20/StatefulPartitionedCall�!conv2d_21/StatefulPartitionedCall�
!conv2d_18/StatefulPartitionedCallStatefulPartitionedCallinputsconv2d_18_18089592conv2d_18_18089594*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:���������t�@*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *1J 8� *P
fKRI
G__inference_conv2d_18_layer_call_and_return_conditional_losses_18089591�
-batch_normalization_1/StatefulPartitionedCallStatefulPartitionedCall*conv2d_18/StatefulPartitionedCall:output:0batch_normalization_1_18089597batch_normalization_1_18089599batch_normalization_1_18089601batch_normalization_1_18089603*
Tin	
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:���������t�@*&
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *1J 8� *\
fWRU
S__inference_batch_normalization_1_layer_call_and_return_conditional_losses_18089328�
activation_27/PartitionedCallPartitionedCall6batch_normalization_1/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:���������t�@* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2 *1J 8� *T
fORM
K__inference_activation_27_layer_call_and_return_conditional_losses_18089611�
!conv2d_19/StatefulPartitionedCallStatefulPartitionedCall&activation_27/PartitionedCall:output:0conv2d_19_18089624conv2d_19_18089626*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:���������t�@*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *1J 8� *P
fKRI
G__inference_conv2d_19_layer_call_and_return_conditional_losses_18089623�
-batch_normalization_2/StatefulPartitionedCallStatefulPartitionedCall*conv2d_19/StatefulPartitionedCall:output:0batch_normalization_2_18089629batch_normalization_2_18089631batch_normalization_2_18089633batch_normalization_2_18089635*
Tin	
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:���������t�@*&
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *1J 8� *\
fWRU
S__inference_batch_normalization_2_layer_call_and_return_conditional_losses_18089392�
activation_28/PartitionedCallPartitionedCall6batch_normalization_2/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:���������t�@* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2 *1J 8� *T
fORM
K__inference_activation_28_layer_call_and_return_conditional_losses_18089643�
!conv2d_20/StatefulPartitionedCallStatefulPartitionedCall&activation_28/PartitionedCall:output:0conv2d_20_18089656conv2d_20_18089658*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:���������t�@*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *1J 8� *P
fKRI
G__inference_conv2d_20_layer_call_and_return_conditional_losses_18089655�
-batch_normalization_3/StatefulPartitionedCallStatefulPartitionedCall*conv2d_20/StatefulPartitionedCall:output:0batch_normalization_3_18089661batch_normalization_3_18089663batch_normalization_3_18089665batch_normalization_3_18089667*
Tin	
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:���������t�@*&
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *1J 8� *\
fWRU
S__inference_batch_normalization_3_layer_call_and_return_conditional_losses_18089456�
activation_29/PartitionedCallPartitionedCall6batch_normalization_3/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:���������t�@* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2 *1J 8� *T
fORM
K__inference_activation_29_layer_call_and_return_conditional_losses_18089675�
!conv2d_21/StatefulPartitionedCallStatefulPartitionedCall&activation_29/PartitionedCall:output:0conv2d_21_18089688conv2d_21_18089690*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:���������t�@*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *1J 8� *P
fKRI
G__inference_conv2d_21_layer_call_and_return_conditional_losses_18089687�
-batch_normalization_4/StatefulPartitionedCallStatefulPartitionedCall*conv2d_21/StatefulPartitionedCall:output:0batch_normalization_4_18089693batch_normalization_4_18089695batch_normalization_4_18089697batch_normalization_4_18089699*
Tin	
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:���������t�@*&
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *1J 8� *\
fWRU
S__inference_batch_normalization_4_layer_call_and_return_conditional_losses_18089520�
activation_30/PartitionedCallPartitionedCall6batch_normalization_4/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:���������t�@* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2 *1J 8� *T
fORM
K__inference_activation_30_layer_call_and_return_conditional_losses_18089707�
max_pooling2d/PartitionedCallPartitionedCall&activation_30/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������:^@* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2 *1J 8� *T
fORM
K__inference_max_pooling2d_layer_call_and_return_conditional_losses_18089571}
IdentityIdentity&max_pooling2d/PartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:���������:^@�
NoOpNoOp.^batch_normalization_1/StatefulPartitionedCall.^batch_normalization_2/StatefulPartitionedCall.^batch_normalization_3/StatefulPartitionedCall.^batch_normalization_4/StatefulPartitionedCall"^conv2d_18/StatefulPartitionedCall"^conv2d_19/StatefulPartitionedCall"^conv2d_20/StatefulPartitionedCall"^conv2d_21/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*_
_input_shapesN
L:���������t�: : : : : : : : : : : : : : : : : : : : : : : : 2^
-batch_normalization_1/StatefulPartitionedCall-batch_normalization_1/StatefulPartitionedCall2^
-batch_normalization_2/StatefulPartitionedCall-batch_normalization_2/StatefulPartitionedCall2^
-batch_normalization_3/StatefulPartitionedCall-batch_normalization_3/StatefulPartitionedCall2^
-batch_normalization_4/StatefulPartitionedCall-batch_normalization_4/StatefulPartitionedCall2F
!conv2d_18/StatefulPartitionedCall!conv2d_18/StatefulPartitionedCall2F
!conv2d_19/StatefulPartitionedCall!conv2d_19/StatefulPartitionedCall2F
!conv2d_20/StatefulPartitionedCall!conv2d_20/StatefulPartitionedCall2F
!conv2d_21/StatefulPartitionedCall!conv2d_21/StatefulPartitionedCall:X T
0
_output_shapes
:���������t�
 
_user_specified_nameinputs
�
g
K__inference_activation_29_layer_call_and_return_conditional_losses_18090792

inputs
identityO
ReluReluinputs*
T0*0
_output_shapes
:���������t�@c
IdentityIdentityRelu:activations:0*
T0*0
_output_shapes
:���������t�@"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:���������t�@:X T
0
_output_shapes
:���������t�@
 
_user_specified_nameinputs
�
�
S__inference_batch_normalization_1_layer_call_and_return_conditional_losses_18089359

inputs%
readvariableop_resource:@'
readvariableop_1_resource:@6
(fusedbatchnormv3_readvariableop_resource:@8
*fusedbatchnormv3_readvariableop_1_resource:@
identity��AssignNewValue�AssignNewValue_1�FusedBatchNormV3/ReadVariableOp�!FusedBatchNormV3/ReadVariableOp_1�ReadVariableOp�ReadVariableOp_1b
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:@*
dtype0f
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:@*
dtype0�
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype0�
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype0�
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+���������������������������@:@:@:@:@:*
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
-:+���������������������������@�
NoOpNoOp^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+���������������������������@: : : : 2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+���������������������������@
 
_user_specified_nameinputs
�
L
0__inference_activation_29_layer_call_fn_18090787

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
:���������t�@* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2 *1J 8� *T
fORM
K__inference_activation_29_layer_call_and_return_conditional_losses_18089675i
IdentityIdentityPartitionedCall:output:0*
T0*0
_output_shapes
:���������t�@"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:���������t�@:X T
0
_output_shapes
:���������t�@
 
_user_specified_nameinputs
�	
�
8__inference_batch_normalization_2_layer_call_fn_18090655

inputs
unknown:@
	unknown_0:@
	unknown_1:@
	unknown_2:@
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+���������������������������@*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *1J 8� *\
fWRU
S__inference_batch_normalization_2_layer_call_and_return_conditional_losses_18089423�
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*A
_output_shapes/
-:+���������������������������@`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+���������������������������@: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+���������������������������@
 
_user_specified_nameinputs
�

�
G__inference_conv2d_20_layer_call_and_return_conditional_losses_18089655

inputs8
conv2d_readvariableop_resource:@@-
biasadd_readvariableop_resource:@
identity��BiasAdd/ReadVariableOp�Conv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype0�
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:���������t�@*
paddingSAME*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype0~
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:���������t�@h
IdentityIdentityBiasAdd:output:0^NoOp*
T0*0
_output_shapes
:���������t�@w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :���������t�@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:X T
0
_output_shapes
:���������t�@
 
_user_specified_nameinputs
�D
�
E__inference_model_2_layer_call_and_return_conditional_losses_18090115
input_3,
conv2d_18_18090053:@ 
conv2d_18_18090055:@,
batch_normalization_1_18090058:@,
batch_normalization_1_18090060:@,
batch_normalization_1_18090062:@,
batch_normalization_1_18090064:@,
conv2d_19_18090068:@@ 
conv2d_19_18090070:@,
batch_normalization_2_18090073:@,
batch_normalization_2_18090075:@,
batch_normalization_2_18090077:@,
batch_normalization_2_18090079:@,
conv2d_20_18090083:@@ 
conv2d_20_18090085:@,
batch_normalization_3_18090088:@,
batch_normalization_3_18090090:@,
batch_normalization_3_18090092:@,
batch_normalization_3_18090094:@,
conv2d_21_18090098:@@ 
conv2d_21_18090100:@,
batch_normalization_4_18090103:@,
batch_normalization_4_18090105:@,
batch_normalization_4_18090107:@,
batch_normalization_4_18090109:@
identity��-batch_normalization_1/StatefulPartitionedCall�-batch_normalization_2/StatefulPartitionedCall�-batch_normalization_3/StatefulPartitionedCall�-batch_normalization_4/StatefulPartitionedCall�!conv2d_18/StatefulPartitionedCall�!conv2d_19/StatefulPartitionedCall�!conv2d_20/StatefulPartitionedCall�!conv2d_21/StatefulPartitionedCall�
!conv2d_18/StatefulPartitionedCallStatefulPartitionedCallinput_3conv2d_18_18090053conv2d_18_18090055*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:���������t�@*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *1J 8� *P
fKRI
G__inference_conv2d_18_layer_call_and_return_conditional_losses_18089591�
-batch_normalization_1/StatefulPartitionedCallStatefulPartitionedCall*conv2d_18/StatefulPartitionedCall:output:0batch_normalization_1_18090058batch_normalization_1_18090060batch_normalization_1_18090062batch_normalization_1_18090064*
Tin	
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:���������t�@*&
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *1J 8� *\
fWRU
S__inference_batch_normalization_1_layer_call_and_return_conditional_losses_18089328�
activation_27/PartitionedCallPartitionedCall6batch_normalization_1/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:���������t�@* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2 *1J 8� *T
fORM
K__inference_activation_27_layer_call_and_return_conditional_losses_18089611�
!conv2d_19/StatefulPartitionedCallStatefulPartitionedCall&activation_27/PartitionedCall:output:0conv2d_19_18090068conv2d_19_18090070*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:���������t�@*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *1J 8� *P
fKRI
G__inference_conv2d_19_layer_call_and_return_conditional_losses_18089623�
-batch_normalization_2/StatefulPartitionedCallStatefulPartitionedCall*conv2d_19/StatefulPartitionedCall:output:0batch_normalization_2_18090073batch_normalization_2_18090075batch_normalization_2_18090077batch_normalization_2_18090079*
Tin	
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:���������t�@*&
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *1J 8� *\
fWRU
S__inference_batch_normalization_2_layer_call_and_return_conditional_losses_18089392�
activation_28/PartitionedCallPartitionedCall6batch_normalization_2/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:���������t�@* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2 *1J 8� *T
fORM
K__inference_activation_28_layer_call_and_return_conditional_losses_18089643�
!conv2d_20/StatefulPartitionedCallStatefulPartitionedCall&activation_28/PartitionedCall:output:0conv2d_20_18090083conv2d_20_18090085*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:���������t�@*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *1J 8� *P
fKRI
G__inference_conv2d_20_layer_call_and_return_conditional_losses_18089655�
-batch_normalization_3/StatefulPartitionedCallStatefulPartitionedCall*conv2d_20/StatefulPartitionedCall:output:0batch_normalization_3_18090088batch_normalization_3_18090090batch_normalization_3_18090092batch_normalization_3_18090094*
Tin	
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:���������t�@*&
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *1J 8� *\
fWRU
S__inference_batch_normalization_3_layer_call_and_return_conditional_losses_18089456�
activation_29/PartitionedCallPartitionedCall6batch_normalization_3/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:���������t�@* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2 *1J 8� *T
fORM
K__inference_activation_29_layer_call_and_return_conditional_losses_18089675�
!conv2d_21/StatefulPartitionedCallStatefulPartitionedCall&activation_29/PartitionedCall:output:0conv2d_21_18090098conv2d_21_18090100*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:���������t�@*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *1J 8� *P
fKRI
G__inference_conv2d_21_layer_call_and_return_conditional_losses_18089687�
-batch_normalization_4/StatefulPartitionedCallStatefulPartitionedCall*conv2d_21/StatefulPartitionedCall:output:0batch_normalization_4_18090103batch_normalization_4_18090105batch_normalization_4_18090107batch_normalization_4_18090109*
Tin	
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:���������t�@*&
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *1J 8� *\
fWRU
S__inference_batch_normalization_4_layer_call_and_return_conditional_losses_18089520�
activation_30/PartitionedCallPartitionedCall6batch_normalization_4/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:���������t�@* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2 *1J 8� *T
fORM
K__inference_activation_30_layer_call_and_return_conditional_losses_18089707�
max_pooling2d/PartitionedCallPartitionedCall&activation_30/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������:^@* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2 *1J 8� *T
fORM
K__inference_max_pooling2d_layer_call_and_return_conditional_losses_18089571}
IdentityIdentity&max_pooling2d/PartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:���������:^@�
NoOpNoOp.^batch_normalization_1/StatefulPartitionedCall.^batch_normalization_2/StatefulPartitionedCall.^batch_normalization_3/StatefulPartitionedCall.^batch_normalization_4/StatefulPartitionedCall"^conv2d_18/StatefulPartitionedCall"^conv2d_19/StatefulPartitionedCall"^conv2d_20/StatefulPartitionedCall"^conv2d_21/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*_
_input_shapesN
L:���������t�: : : : : : : : : : : : : : : : : : : : : : : : 2^
-batch_normalization_1/StatefulPartitionedCall-batch_normalization_1/StatefulPartitionedCall2^
-batch_normalization_2/StatefulPartitionedCall-batch_normalization_2/StatefulPartitionedCall2^
-batch_normalization_3/StatefulPartitionedCall-batch_normalization_3/StatefulPartitionedCall2^
-batch_normalization_4/StatefulPartitionedCall-batch_normalization_4/StatefulPartitionedCall2F
!conv2d_18/StatefulPartitionedCall!conv2d_18/StatefulPartitionedCall2F
!conv2d_19/StatefulPartitionedCall!conv2d_19/StatefulPartitionedCall2F
!conv2d_20/StatefulPartitionedCall!conv2d_20/StatefulPartitionedCall2F
!conv2d_21/StatefulPartitionedCall!conv2d_21/StatefulPartitionedCall:Y U
0
_output_shapes
:���������t�
!
_user_specified_name	input_3
�
�
S__inference_batch_normalization_3_layer_call_and_return_conditional_losses_18089487

inputs%
readvariableop_resource:@'
readvariableop_1_resource:@6
(fusedbatchnormv3_readvariableop_resource:@8
*fusedbatchnormv3_readvariableop_1_resource:@
identity��AssignNewValue�AssignNewValue_1�FusedBatchNormV3/ReadVariableOp�!FusedBatchNormV3/ReadVariableOp_1�ReadVariableOp�ReadVariableOp_1b
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:@*
dtype0f
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:@*
dtype0�
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype0�
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype0�
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+���������������������������@:@:@:@:@:*
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
-:+���������������������������@�
NoOpNoOp^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+���������������������������@: : : : 2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+���������������������������@
 
_user_specified_nameinputs
�
�
S__inference_batch_normalization_2_layer_call_and_return_conditional_losses_18089392

inputs%
readvariableop_resource:@'
readvariableop_1_resource:@6
(fusedbatchnormv3_readvariableop_resource:@8
*fusedbatchnormv3_readvariableop_1_resource:@
identity��FusedBatchNormV3/ReadVariableOp�!FusedBatchNormV3/ReadVariableOp_1�ReadVariableOp�ReadVariableOp_1b
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:@*
dtype0f
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:@*
dtype0�
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype0�
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype0�
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+���������������������������@:@:@:@:@:*
epsilon%o�:*
is_training( }
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*A
_output_shapes/
-:+���������������������������@�
NoOpNoOp ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+���������������������������@: : : : 2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+���������������������������@
 
_user_specified_nameinputs
�{
�
#__inference__wrapped_model_18089306
input_3J
0model_2_conv2d_18_conv2d_readvariableop_resource:@?
1model_2_conv2d_18_biasadd_readvariableop_resource:@C
5model_2_batch_normalization_1_readvariableop_resource:@E
7model_2_batch_normalization_1_readvariableop_1_resource:@T
Fmodel_2_batch_normalization_1_fusedbatchnormv3_readvariableop_resource:@V
Hmodel_2_batch_normalization_1_fusedbatchnormv3_readvariableop_1_resource:@J
0model_2_conv2d_19_conv2d_readvariableop_resource:@@?
1model_2_conv2d_19_biasadd_readvariableop_resource:@C
5model_2_batch_normalization_2_readvariableop_resource:@E
7model_2_batch_normalization_2_readvariableop_1_resource:@T
Fmodel_2_batch_normalization_2_fusedbatchnormv3_readvariableop_resource:@V
Hmodel_2_batch_normalization_2_fusedbatchnormv3_readvariableop_1_resource:@J
0model_2_conv2d_20_conv2d_readvariableop_resource:@@?
1model_2_conv2d_20_biasadd_readvariableop_resource:@C
5model_2_batch_normalization_3_readvariableop_resource:@E
7model_2_batch_normalization_3_readvariableop_1_resource:@T
Fmodel_2_batch_normalization_3_fusedbatchnormv3_readvariableop_resource:@V
Hmodel_2_batch_normalization_3_fusedbatchnormv3_readvariableop_1_resource:@J
0model_2_conv2d_21_conv2d_readvariableop_resource:@@?
1model_2_conv2d_21_biasadd_readvariableop_resource:@C
5model_2_batch_normalization_4_readvariableop_resource:@E
7model_2_batch_normalization_4_readvariableop_1_resource:@T
Fmodel_2_batch_normalization_4_fusedbatchnormv3_readvariableop_resource:@V
Hmodel_2_batch_normalization_4_fusedbatchnormv3_readvariableop_1_resource:@
identity��=model_2/batch_normalization_1/FusedBatchNormV3/ReadVariableOp�?model_2/batch_normalization_1/FusedBatchNormV3/ReadVariableOp_1�,model_2/batch_normalization_1/ReadVariableOp�.model_2/batch_normalization_1/ReadVariableOp_1�=model_2/batch_normalization_2/FusedBatchNormV3/ReadVariableOp�?model_2/batch_normalization_2/FusedBatchNormV3/ReadVariableOp_1�,model_2/batch_normalization_2/ReadVariableOp�.model_2/batch_normalization_2/ReadVariableOp_1�=model_2/batch_normalization_3/FusedBatchNormV3/ReadVariableOp�?model_2/batch_normalization_3/FusedBatchNormV3/ReadVariableOp_1�,model_2/batch_normalization_3/ReadVariableOp�.model_2/batch_normalization_3/ReadVariableOp_1�=model_2/batch_normalization_4/FusedBatchNormV3/ReadVariableOp�?model_2/batch_normalization_4/FusedBatchNormV3/ReadVariableOp_1�,model_2/batch_normalization_4/ReadVariableOp�.model_2/batch_normalization_4/ReadVariableOp_1�(model_2/conv2d_18/BiasAdd/ReadVariableOp�'model_2/conv2d_18/Conv2D/ReadVariableOp�(model_2/conv2d_19/BiasAdd/ReadVariableOp�'model_2/conv2d_19/Conv2D/ReadVariableOp�(model_2/conv2d_20/BiasAdd/ReadVariableOp�'model_2/conv2d_20/Conv2D/ReadVariableOp�(model_2/conv2d_21/BiasAdd/ReadVariableOp�'model_2/conv2d_21/Conv2D/ReadVariableOp�
'model_2/conv2d_18/Conv2D/ReadVariableOpReadVariableOp0model_2_conv2d_18_conv2d_readvariableop_resource*&
_output_shapes
:@*
dtype0�
model_2/conv2d_18/Conv2DConv2Dinput_3/model_2/conv2d_18/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:���������t�@*
paddingSAME*
strides
�
(model_2/conv2d_18/BiasAdd/ReadVariableOpReadVariableOp1model_2_conv2d_18_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0�
model_2/conv2d_18/BiasAddBiasAdd!model_2/conv2d_18/Conv2D:output:00model_2/conv2d_18/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:���������t�@�
,model_2/batch_normalization_1/ReadVariableOpReadVariableOp5model_2_batch_normalization_1_readvariableop_resource*
_output_shapes
:@*
dtype0�
.model_2/batch_normalization_1/ReadVariableOp_1ReadVariableOp7model_2_batch_normalization_1_readvariableop_1_resource*
_output_shapes
:@*
dtype0�
=model_2/batch_normalization_1/FusedBatchNormV3/ReadVariableOpReadVariableOpFmodel_2_batch_normalization_1_fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype0�
?model_2/batch_normalization_1/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpHmodel_2_batch_normalization_1_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype0�
.model_2/batch_normalization_1/FusedBatchNormV3FusedBatchNormV3"model_2/conv2d_18/BiasAdd:output:04model_2/batch_normalization_1/ReadVariableOp:value:06model_2/batch_normalization_1/ReadVariableOp_1:value:0Emodel_2/batch_normalization_1/FusedBatchNormV3/ReadVariableOp:value:0Gmodel_2/batch_normalization_1/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*L
_output_shapes:
8:���������t�@:@:@:@:@:*
epsilon%o�:*
is_training( �
model_2/activation_27/ReluRelu2model_2/batch_normalization_1/FusedBatchNormV3:y:0*
T0*0
_output_shapes
:���������t�@�
'model_2/conv2d_19/Conv2D/ReadVariableOpReadVariableOp0model_2_conv2d_19_conv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype0�
model_2/conv2d_19/Conv2DConv2D(model_2/activation_27/Relu:activations:0/model_2/conv2d_19/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:���������t�@*
paddingSAME*
strides
�
(model_2/conv2d_19/BiasAdd/ReadVariableOpReadVariableOp1model_2_conv2d_19_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0�
model_2/conv2d_19/BiasAddBiasAdd!model_2/conv2d_19/Conv2D:output:00model_2/conv2d_19/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:���������t�@�
,model_2/batch_normalization_2/ReadVariableOpReadVariableOp5model_2_batch_normalization_2_readvariableop_resource*
_output_shapes
:@*
dtype0�
.model_2/batch_normalization_2/ReadVariableOp_1ReadVariableOp7model_2_batch_normalization_2_readvariableop_1_resource*
_output_shapes
:@*
dtype0�
=model_2/batch_normalization_2/FusedBatchNormV3/ReadVariableOpReadVariableOpFmodel_2_batch_normalization_2_fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype0�
?model_2/batch_normalization_2/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpHmodel_2_batch_normalization_2_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype0�
.model_2/batch_normalization_2/FusedBatchNormV3FusedBatchNormV3"model_2/conv2d_19/BiasAdd:output:04model_2/batch_normalization_2/ReadVariableOp:value:06model_2/batch_normalization_2/ReadVariableOp_1:value:0Emodel_2/batch_normalization_2/FusedBatchNormV3/ReadVariableOp:value:0Gmodel_2/batch_normalization_2/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*L
_output_shapes:
8:���������t�@:@:@:@:@:*
epsilon%o�:*
is_training( �
model_2/activation_28/ReluRelu2model_2/batch_normalization_2/FusedBatchNormV3:y:0*
T0*0
_output_shapes
:���������t�@�
'model_2/conv2d_20/Conv2D/ReadVariableOpReadVariableOp0model_2_conv2d_20_conv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype0�
model_2/conv2d_20/Conv2DConv2D(model_2/activation_28/Relu:activations:0/model_2/conv2d_20/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:���������t�@*
paddingSAME*
strides
�
(model_2/conv2d_20/BiasAdd/ReadVariableOpReadVariableOp1model_2_conv2d_20_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0�
model_2/conv2d_20/BiasAddBiasAdd!model_2/conv2d_20/Conv2D:output:00model_2/conv2d_20/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:���������t�@�
,model_2/batch_normalization_3/ReadVariableOpReadVariableOp5model_2_batch_normalization_3_readvariableop_resource*
_output_shapes
:@*
dtype0�
.model_2/batch_normalization_3/ReadVariableOp_1ReadVariableOp7model_2_batch_normalization_3_readvariableop_1_resource*
_output_shapes
:@*
dtype0�
=model_2/batch_normalization_3/FusedBatchNormV3/ReadVariableOpReadVariableOpFmodel_2_batch_normalization_3_fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype0�
?model_2/batch_normalization_3/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpHmodel_2_batch_normalization_3_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype0�
.model_2/batch_normalization_3/FusedBatchNormV3FusedBatchNormV3"model_2/conv2d_20/BiasAdd:output:04model_2/batch_normalization_3/ReadVariableOp:value:06model_2/batch_normalization_3/ReadVariableOp_1:value:0Emodel_2/batch_normalization_3/FusedBatchNormV3/ReadVariableOp:value:0Gmodel_2/batch_normalization_3/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*L
_output_shapes:
8:���������t�@:@:@:@:@:*
epsilon%o�:*
is_training( �
model_2/activation_29/ReluRelu2model_2/batch_normalization_3/FusedBatchNormV3:y:0*
T0*0
_output_shapes
:���������t�@�
'model_2/conv2d_21/Conv2D/ReadVariableOpReadVariableOp0model_2_conv2d_21_conv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype0�
model_2/conv2d_21/Conv2DConv2D(model_2/activation_29/Relu:activations:0/model_2/conv2d_21/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:���������t�@*
paddingSAME*
strides
�
(model_2/conv2d_21/BiasAdd/ReadVariableOpReadVariableOp1model_2_conv2d_21_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0�
model_2/conv2d_21/BiasAddBiasAdd!model_2/conv2d_21/Conv2D:output:00model_2/conv2d_21/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:���������t�@�
,model_2/batch_normalization_4/ReadVariableOpReadVariableOp5model_2_batch_normalization_4_readvariableop_resource*
_output_shapes
:@*
dtype0�
.model_2/batch_normalization_4/ReadVariableOp_1ReadVariableOp7model_2_batch_normalization_4_readvariableop_1_resource*
_output_shapes
:@*
dtype0�
=model_2/batch_normalization_4/FusedBatchNormV3/ReadVariableOpReadVariableOpFmodel_2_batch_normalization_4_fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype0�
?model_2/batch_normalization_4/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpHmodel_2_batch_normalization_4_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype0�
.model_2/batch_normalization_4/FusedBatchNormV3FusedBatchNormV3"model_2/conv2d_21/BiasAdd:output:04model_2/batch_normalization_4/ReadVariableOp:value:06model_2/batch_normalization_4/ReadVariableOp_1:value:0Emodel_2/batch_normalization_4/FusedBatchNormV3/ReadVariableOp:value:0Gmodel_2/batch_normalization_4/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*L
_output_shapes:
8:���������t�@:@:@:@:@:*
epsilon%o�:*
is_training( �
model_2/activation_30/ReluRelu2model_2/batch_normalization_4/FusedBatchNormV3:y:0*
T0*0
_output_shapes
:���������t�@�
model_2/max_pooling2d/MaxPoolMaxPool(model_2/activation_30/Relu:activations:0*/
_output_shapes
:���������:^@*
ksize
*
paddingVALID*
strides
}
IdentityIdentity&model_2/max_pooling2d/MaxPool:output:0^NoOp*
T0*/
_output_shapes
:���������:^@�

NoOpNoOp>^model_2/batch_normalization_1/FusedBatchNormV3/ReadVariableOp@^model_2/batch_normalization_1/FusedBatchNormV3/ReadVariableOp_1-^model_2/batch_normalization_1/ReadVariableOp/^model_2/batch_normalization_1/ReadVariableOp_1>^model_2/batch_normalization_2/FusedBatchNormV3/ReadVariableOp@^model_2/batch_normalization_2/FusedBatchNormV3/ReadVariableOp_1-^model_2/batch_normalization_2/ReadVariableOp/^model_2/batch_normalization_2/ReadVariableOp_1>^model_2/batch_normalization_3/FusedBatchNormV3/ReadVariableOp@^model_2/batch_normalization_3/FusedBatchNormV3/ReadVariableOp_1-^model_2/batch_normalization_3/ReadVariableOp/^model_2/batch_normalization_3/ReadVariableOp_1>^model_2/batch_normalization_4/FusedBatchNormV3/ReadVariableOp@^model_2/batch_normalization_4/FusedBatchNormV3/ReadVariableOp_1-^model_2/batch_normalization_4/ReadVariableOp/^model_2/batch_normalization_4/ReadVariableOp_1)^model_2/conv2d_18/BiasAdd/ReadVariableOp(^model_2/conv2d_18/Conv2D/ReadVariableOp)^model_2/conv2d_19/BiasAdd/ReadVariableOp(^model_2/conv2d_19/Conv2D/ReadVariableOp)^model_2/conv2d_20/BiasAdd/ReadVariableOp(^model_2/conv2d_20/Conv2D/ReadVariableOp)^model_2/conv2d_21/BiasAdd/ReadVariableOp(^model_2/conv2d_21/Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*_
_input_shapesN
L:���������t�: : : : : : : : : : : : : : : : : : : : : : : : 2~
=model_2/batch_normalization_1/FusedBatchNormV3/ReadVariableOp=model_2/batch_normalization_1/FusedBatchNormV3/ReadVariableOp2�
?model_2/batch_normalization_1/FusedBatchNormV3/ReadVariableOp_1?model_2/batch_normalization_1/FusedBatchNormV3/ReadVariableOp_12\
,model_2/batch_normalization_1/ReadVariableOp,model_2/batch_normalization_1/ReadVariableOp2`
.model_2/batch_normalization_1/ReadVariableOp_1.model_2/batch_normalization_1/ReadVariableOp_12~
=model_2/batch_normalization_2/FusedBatchNormV3/ReadVariableOp=model_2/batch_normalization_2/FusedBatchNormV3/ReadVariableOp2�
?model_2/batch_normalization_2/FusedBatchNormV3/ReadVariableOp_1?model_2/batch_normalization_2/FusedBatchNormV3/ReadVariableOp_12\
,model_2/batch_normalization_2/ReadVariableOp,model_2/batch_normalization_2/ReadVariableOp2`
.model_2/batch_normalization_2/ReadVariableOp_1.model_2/batch_normalization_2/ReadVariableOp_12~
=model_2/batch_normalization_3/FusedBatchNormV3/ReadVariableOp=model_2/batch_normalization_3/FusedBatchNormV3/ReadVariableOp2�
?model_2/batch_normalization_3/FusedBatchNormV3/ReadVariableOp_1?model_2/batch_normalization_3/FusedBatchNormV3/ReadVariableOp_12\
,model_2/batch_normalization_3/ReadVariableOp,model_2/batch_normalization_3/ReadVariableOp2`
.model_2/batch_normalization_3/ReadVariableOp_1.model_2/batch_normalization_3/ReadVariableOp_12~
=model_2/batch_normalization_4/FusedBatchNormV3/ReadVariableOp=model_2/batch_normalization_4/FusedBatchNormV3/ReadVariableOp2�
?model_2/batch_normalization_4/FusedBatchNormV3/ReadVariableOp_1?model_2/batch_normalization_4/FusedBatchNormV3/ReadVariableOp_12\
,model_2/batch_normalization_4/ReadVariableOp,model_2/batch_normalization_4/ReadVariableOp2`
.model_2/batch_normalization_4/ReadVariableOp_1.model_2/batch_normalization_4/ReadVariableOp_12T
(model_2/conv2d_18/BiasAdd/ReadVariableOp(model_2/conv2d_18/BiasAdd/ReadVariableOp2R
'model_2/conv2d_18/Conv2D/ReadVariableOp'model_2/conv2d_18/Conv2D/ReadVariableOp2T
(model_2/conv2d_19/BiasAdd/ReadVariableOp(model_2/conv2d_19/BiasAdd/ReadVariableOp2R
'model_2/conv2d_19/Conv2D/ReadVariableOp'model_2/conv2d_19/Conv2D/ReadVariableOp2T
(model_2/conv2d_20/BiasAdd/ReadVariableOp(model_2/conv2d_20/BiasAdd/ReadVariableOp2R
'model_2/conv2d_20/Conv2D/ReadVariableOp'model_2/conv2d_20/Conv2D/ReadVariableOp2T
(model_2/conv2d_21/BiasAdd/ReadVariableOp(model_2/conv2d_21/BiasAdd/ReadVariableOp2R
'model_2/conv2d_21/Conv2D/ReadVariableOp'model_2/conv2d_21/Conv2D/ReadVariableOp:Y U
0
_output_shapes
:���������t�
!
_user_specified_name	input_3
�
�
,__inference_conv2d_21_layer_call_fn_18090801

inputs!
unknown:@@
	unknown_0:@
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:���������t�@*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *1J 8� *P
fKRI
G__inference_conv2d_21_layer_call_and_return_conditional_losses_18089687x
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*0
_output_shapes
:���������t�@`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :���������t�@: : 22
StatefulPartitionedCallStatefulPartitionedCall:X T
0
_output_shapes
:���������t�@
 
_user_specified_nameinputs
�
�
S__inference_batch_normalization_4_layer_call_and_return_conditional_losses_18089551

inputs%
readvariableop_resource:@'
readvariableop_1_resource:@6
(fusedbatchnormv3_readvariableop_resource:@8
*fusedbatchnormv3_readvariableop_1_resource:@
identity��AssignNewValue�AssignNewValue_1�FusedBatchNormV3/ReadVariableOp�!FusedBatchNormV3/ReadVariableOp_1�ReadVariableOp�ReadVariableOp_1b
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:@*
dtype0f
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:@*
dtype0�
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype0�
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype0�
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+���������������������������@:@:@:@:@:*
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
-:+���������������������������@�
NoOpNoOp^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+���������������������������@: : : : 2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+���������������������������@
 
_user_specified_nameinputs
�	
�
8__inference_batch_normalization_4_layer_call_fn_18090824

inputs
unknown:@
	unknown_0:@
	unknown_1:@
	unknown_2:@
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+���������������������������@*&
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *1J 8� *\
fWRU
S__inference_batch_normalization_4_layer_call_and_return_conditional_losses_18089520�
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*A
_output_shapes/
-:+���������������������������@`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+���������������������������@: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+���������������������������@
 
_user_specified_nameinputs
�
�
S__inference_batch_normalization_2_layer_call_and_return_conditional_losses_18090673

inputs%
readvariableop_resource:@'
readvariableop_1_resource:@6
(fusedbatchnormv3_readvariableop_resource:@8
*fusedbatchnormv3_readvariableop_1_resource:@
identity��FusedBatchNormV3/ReadVariableOp�!FusedBatchNormV3/ReadVariableOp_1�ReadVariableOp�ReadVariableOp_1b
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:@*
dtype0f
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:@*
dtype0�
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype0�
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype0�
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+���������������������������@:@:@:@:@:*
epsilon%o�:*
is_training( }
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*A
_output_shapes/
-:+���������������������������@�
NoOpNoOp ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+���������������������������@: : : : 2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+���������������������������@
 
_user_specified_nameinputs
�

�
G__inference_conv2d_19_layer_call_and_return_conditional_losses_18089623

inputs8
conv2d_readvariableop_resource:@@-
biasadd_readvariableop_resource:@
identity��BiasAdd/ReadVariableOp�Conv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype0�
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:���������t�@*
paddingSAME*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype0~
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:���������t�@h
IdentityIdentityBiasAdd:output:0^NoOp*
T0*0
_output_shapes
:���������t�@w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :���������t�@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:X T
0
_output_shapes
:���������t�@
 
_user_specified_nameinputs
�
L
0__inference_max_pooling2d_layer_call_fn_18090888

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
GPU2 *1J 8� *T
fORM
K__inference_max_pooling2d_layer_call_and_return_conditional_losses_18089571�
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
�
�
S__inference_batch_normalization_4_layer_call_and_return_conditional_losses_18090855

inputs%
readvariableop_resource:@'
readvariableop_1_resource:@6
(fusedbatchnormv3_readvariableop_resource:@8
*fusedbatchnormv3_readvariableop_1_resource:@
identity��FusedBatchNormV3/ReadVariableOp�!FusedBatchNormV3/ReadVariableOp_1�ReadVariableOp�ReadVariableOp_1b
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:@*
dtype0f
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:@*
dtype0�
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype0�
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype0�
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+���������������������������@:@:@:@:@:*
epsilon%o�:*
is_training( }
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*A
_output_shapes/
-:+���������������������������@�
NoOpNoOp ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+���������������������������@: : : : 2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+���������������������������@
 
_user_specified_nameinputs
�
�
S__inference_batch_normalization_1_layer_call_and_return_conditional_losses_18090582

inputs%
readvariableop_resource:@'
readvariableop_1_resource:@6
(fusedbatchnormv3_readvariableop_resource:@8
*fusedbatchnormv3_readvariableop_1_resource:@
identity��FusedBatchNormV3/ReadVariableOp�!FusedBatchNormV3/ReadVariableOp_1�ReadVariableOp�ReadVariableOp_1b
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:@*
dtype0f
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:@*
dtype0�
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype0�
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype0�
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+���������������������������@:@:@:@:@:*
epsilon%o�:*
is_training( }
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*A
_output_shapes/
-:+���������������������������@�
NoOpNoOp ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+���������������������������@: : : : 2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+���������������������������@
 
_user_specified_nameinputs
�c
�
$__inference__traced_restore_18091070
file_prefix;
!assignvariableop_conv2d_18_kernel:@/
!assignvariableop_1_conv2d_18_bias:@<
.assignvariableop_2_batch_normalization_1_gamma:@;
-assignvariableop_3_batch_normalization_1_beta:@B
4assignvariableop_4_batch_normalization_1_moving_mean:@F
8assignvariableop_5_batch_normalization_1_moving_variance:@=
#assignvariableop_6_conv2d_19_kernel:@@/
!assignvariableop_7_conv2d_19_bias:@<
.assignvariableop_8_batch_normalization_2_gamma:@;
-assignvariableop_9_batch_normalization_2_beta:@C
5assignvariableop_10_batch_normalization_2_moving_mean:@G
9assignvariableop_11_batch_normalization_2_moving_variance:@>
$assignvariableop_12_conv2d_20_kernel:@@0
"assignvariableop_13_conv2d_20_bias:@=
/assignvariableop_14_batch_normalization_3_gamma:@<
.assignvariableop_15_batch_normalization_3_beta:@C
5assignvariableop_16_batch_normalization_3_moving_mean:@G
9assignvariableop_17_batch_normalization_3_moving_variance:@>
$assignvariableop_18_conv2d_21_kernel:@@0
"assignvariableop_19_conv2d_21_bias:@=
/assignvariableop_20_batch_normalization_4_gamma:@<
.assignvariableop_21_batch_normalization_4_beta:@C
5assignvariableop_22_batch_normalization_4_moving_mean:@G
9assignvariableop_23_batch_normalization_4_moving_variance:@
identity_25��AssignVariableOp�AssignVariableOp_1�AssignVariableOp_10�AssignVariableOp_11�AssignVariableOp_12�AssignVariableOp_13�AssignVariableOp_14�AssignVariableOp_15�AssignVariableOp_16�AssignVariableOp_17�AssignVariableOp_18�AssignVariableOp_19�AssignVariableOp_2�AssignVariableOp_20�AssignVariableOp_21�AssignVariableOp_22�AssignVariableOp_23�AssignVariableOp_3�AssignVariableOp_4�AssignVariableOp_5�AssignVariableOp_6�AssignVariableOp_7�AssignVariableOp_8�AssignVariableOp_9�
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*�
value�B�B6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-1/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-1/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-1/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-3/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-3/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-3/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-5/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-5/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-5/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-5/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-6/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-6/bias/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-7/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-7/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-7/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-7/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH�
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*E
value<B:B B B B B B B B B B B B B B B B B B B B B B B B B �
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*x
_output_shapesf
d:::::::::::::::::::::::::*'
dtypes
2[
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOpAssignVariableOp!assignvariableop_conv2d_18_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_1AssignVariableOp!assignvariableop_1_conv2d_18_biasIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_2AssignVariableOp.assignvariableop_2_batch_normalization_1_gammaIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_3AssignVariableOp-assignvariableop_3_batch_normalization_1_betaIdentity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_4AssignVariableOp4assignvariableop_4_batch_normalization_1_moving_meanIdentity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_5AssignVariableOp8assignvariableop_5_batch_normalization_1_moving_varianceIdentity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_6AssignVariableOp#assignvariableop_6_conv2d_19_kernelIdentity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_7AssignVariableOp!assignvariableop_7_conv2d_19_biasIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_8AssignVariableOp.assignvariableop_8_batch_normalization_2_gammaIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_9AssignVariableOp-assignvariableop_9_batch_normalization_2_betaIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_10AssignVariableOp5assignvariableop_10_batch_normalization_2_moving_meanIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_11AssignVariableOp9assignvariableop_11_batch_normalization_2_moving_varianceIdentity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_12AssignVariableOp$assignvariableop_12_conv2d_20_kernelIdentity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_13AssignVariableOp"assignvariableop_13_conv2d_20_biasIdentity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_14AssignVariableOp/assignvariableop_14_batch_normalization_3_gammaIdentity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_15AssignVariableOp.assignvariableop_15_batch_normalization_3_betaIdentity_15:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_16AssignVariableOp5assignvariableop_16_batch_normalization_3_moving_meanIdentity_16:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_17AssignVariableOp9assignvariableop_17_batch_normalization_3_moving_varianceIdentity_17:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_18AssignVariableOp$assignvariableop_18_conv2d_21_kernelIdentity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_19AssignVariableOp"assignvariableop_19_conv2d_21_biasIdentity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_20AssignVariableOp/assignvariableop_20_batch_normalization_4_gammaIdentity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_21AssignVariableOp.assignvariableop_21_batch_normalization_4_betaIdentity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_22AssignVariableOp5assignvariableop_22_batch_normalization_4_moving_meanIdentity_22:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_23AssignVariableOp9assignvariableop_23_batch_normalization_4_moving_varianceIdentity_23:output:0"/device:CPU:0*
_output_shapes
 *
dtype01
NoOpNoOp"/device:CPU:0*
_output_shapes
 �
Identity_24Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: W
Identity_25IdentityIdentity_24:output:0^NoOp_1*
T0*
_output_shapes
: �
NoOp_1NoOp^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9*"
_acd_function_control_output(*
_output_shapes
 "#
identity_25Identity_25:output:0*E
_input_shapes4
2: : : : : : : : : : : : : : : : : : : : : : : : : 2$
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
AssignVariableOp_23AssignVariableOp_232(
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
�9
�
!__inference__traced_save_18090988
file_prefix/
+savev2_conv2d_18_kernel_read_readvariableop-
)savev2_conv2d_18_bias_read_readvariableop:
6savev2_batch_normalization_1_gamma_read_readvariableop9
5savev2_batch_normalization_1_beta_read_readvariableop@
<savev2_batch_normalization_1_moving_mean_read_readvariableopD
@savev2_batch_normalization_1_moving_variance_read_readvariableop/
+savev2_conv2d_19_kernel_read_readvariableop-
)savev2_conv2d_19_bias_read_readvariableop:
6savev2_batch_normalization_2_gamma_read_readvariableop9
5savev2_batch_normalization_2_beta_read_readvariableop@
<savev2_batch_normalization_2_moving_mean_read_readvariableopD
@savev2_batch_normalization_2_moving_variance_read_readvariableop/
+savev2_conv2d_20_kernel_read_readvariableop-
)savev2_conv2d_20_bias_read_readvariableop:
6savev2_batch_normalization_3_gamma_read_readvariableop9
5savev2_batch_normalization_3_beta_read_readvariableop@
<savev2_batch_normalization_3_moving_mean_read_readvariableopD
@savev2_batch_normalization_3_moving_variance_read_readvariableop/
+savev2_conv2d_21_kernel_read_readvariableop-
)savev2_conv2d_21_bias_read_readvariableop:
6savev2_batch_normalization_4_gamma_read_readvariableop9
5savev2_batch_normalization_4_beta_read_readvariableop@
<savev2_batch_normalization_4_moving_mean_read_readvariableopD
@savev2_batch_normalization_4_moving_variance_read_readvariableop
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
:*
dtype0*�
value�B�B6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-1/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-1/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-1/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-3/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-3/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-3/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-5/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-5/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-5/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-5/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-6/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-6/bias/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-7/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-7/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-7/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-7/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH�
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*E
value<B:B B B B B B B B B B B B B B B B B B B B B B B B B �
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0+savev2_conv2d_18_kernel_read_readvariableop)savev2_conv2d_18_bias_read_readvariableop6savev2_batch_normalization_1_gamma_read_readvariableop5savev2_batch_normalization_1_beta_read_readvariableop<savev2_batch_normalization_1_moving_mean_read_readvariableop@savev2_batch_normalization_1_moving_variance_read_readvariableop+savev2_conv2d_19_kernel_read_readvariableop)savev2_conv2d_19_bias_read_readvariableop6savev2_batch_normalization_2_gamma_read_readvariableop5savev2_batch_normalization_2_beta_read_readvariableop<savev2_batch_normalization_2_moving_mean_read_readvariableop@savev2_batch_normalization_2_moving_variance_read_readvariableop+savev2_conv2d_20_kernel_read_readvariableop)savev2_conv2d_20_bias_read_readvariableop6savev2_batch_normalization_3_gamma_read_readvariableop5savev2_batch_normalization_3_beta_read_readvariableop<savev2_batch_normalization_3_moving_mean_read_readvariableop@savev2_batch_normalization_3_moving_variance_read_readvariableop+savev2_conv2d_21_kernel_read_readvariableop)savev2_conv2d_21_bias_read_readvariableop6savev2_batch_normalization_4_gamma_read_readvariableop5savev2_batch_normalization_4_beta_read_readvariableop<savev2_batch_normalization_4_moving_mean_read_readvariableop@savev2_batch_normalization_4_moving_variance_read_readvariableopsavev2_const"/device:CPU:0*
_output_shapes
 *'
dtypes
2�
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
�: :@:@:@:@:@:@:@@:@:@:@:@:@:@@:@:@:@:@:@:@@:@:@:@:@:@: 2(
MergeV2CheckpointsMergeV2Checkpoints:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:,(
&
_output_shapes
:@: 

_output_shapes
:@: 

_output_shapes
:@: 

_output_shapes
:@: 

_output_shapes
:@: 

_output_shapes
:@:,(
&
_output_shapes
:@@: 

_output_shapes
:@: 	

_output_shapes
:@: 


_output_shapes
:@: 

_output_shapes
:@: 

_output_shapes
:@:,(
&
_output_shapes
:@@: 

_output_shapes
:@: 

_output_shapes
:@: 

_output_shapes
:@: 

_output_shapes
:@: 

_output_shapes
:@:,(
&
_output_shapes
:@@: 

_output_shapes
:@: 

_output_shapes
:@: 

_output_shapes
:@: 

_output_shapes
:@: 

_output_shapes
:@:

_output_shapes
: 
�

�
G__inference_conv2d_18_layer_call_and_return_conditional_losses_18090538

inputs8
conv2d_readvariableop_resource:@-
biasadd_readvariableop_resource:@
identity��BiasAdd/ReadVariableOp�Conv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:@*
dtype0�
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:���������t�@*
paddingSAME*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype0~
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:���������t�@h
IdentityIdentityBiasAdd:output:0^NoOp*
T0*0
_output_shapes
:���������t�@w
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
�
�
S__inference_batch_normalization_2_layer_call_and_return_conditional_losses_18089423

inputs%
readvariableop_resource:@'
readvariableop_1_resource:@6
(fusedbatchnormv3_readvariableop_resource:@8
*fusedbatchnormv3_readvariableop_1_resource:@
identity��AssignNewValue�AssignNewValue_1�FusedBatchNormV3/ReadVariableOp�!FusedBatchNormV3/ReadVariableOp_1�ReadVariableOp�ReadVariableOp_1b
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:@*
dtype0f
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:@*
dtype0�
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype0�
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype0�
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+���������������������������@:@:@:@:@:*
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
-:+���������������������������@�
NoOpNoOp^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+���������������������������@: : : : 2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+���������������������������@
 
_user_specified_nameinputs
�
�
,__inference_conv2d_18_layer_call_fn_18090528

inputs!
unknown:@
	unknown_0:@
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:���������t�@*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *1J 8� *P
fKRI
G__inference_conv2d_18_layer_call_and_return_conditional_losses_18089591x
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*0
_output_shapes
:���������t�@`
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
�m
�
E__inference_model_2_layer_call_and_return_conditional_losses_18090430

inputsB
(conv2d_18_conv2d_readvariableop_resource:@7
)conv2d_18_biasadd_readvariableop_resource:@;
-batch_normalization_1_readvariableop_resource:@=
/batch_normalization_1_readvariableop_1_resource:@L
>batch_normalization_1_fusedbatchnormv3_readvariableop_resource:@N
@batch_normalization_1_fusedbatchnormv3_readvariableop_1_resource:@B
(conv2d_19_conv2d_readvariableop_resource:@@7
)conv2d_19_biasadd_readvariableop_resource:@;
-batch_normalization_2_readvariableop_resource:@=
/batch_normalization_2_readvariableop_1_resource:@L
>batch_normalization_2_fusedbatchnormv3_readvariableop_resource:@N
@batch_normalization_2_fusedbatchnormv3_readvariableop_1_resource:@B
(conv2d_20_conv2d_readvariableop_resource:@@7
)conv2d_20_biasadd_readvariableop_resource:@;
-batch_normalization_3_readvariableop_resource:@=
/batch_normalization_3_readvariableop_1_resource:@L
>batch_normalization_3_fusedbatchnormv3_readvariableop_resource:@N
@batch_normalization_3_fusedbatchnormv3_readvariableop_1_resource:@B
(conv2d_21_conv2d_readvariableop_resource:@@7
)conv2d_21_biasadd_readvariableop_resource:@;
-batch_normalization_4_readvariableop_resource:@=
/batch_normalization_4_readvariableop_1_resource:@L
>batch_normalization_4_fusedbatchnormv3_readvariableop_resource:@N
@batch_normalization_4_fusedbatchnormv3_readvariableop_1_resource:@
identity��5batch_normalization_1/FusedBatchNormV3/ReadVariableOp�7batch_normalization_1/FusedBatchNormV3/ReadVariableOp_1�$batch_normalization_1/ReadVariableOp�&batch_normalization_1/ReadVariableOp_1�5batch_normalization_2/FusedBatchNormV3/ReadVariableOp�7batch_normalization_2/FusedBatchNormV3/ReadVariableOp_1�$batch_normalization_2/ReadVariableOp�&batch_normalization_2/ReadVariableOp_1�5batch_normalization_3/FusedBatchNormV3/ReadVariableOp�7batch_normalization_3/FusedBatchNormV3/ReadVariableOp_1�$batch_normalization_3/ReadVariableOp�&batch_normalization_3/ReadVariableOp_1�5batch_normalization_4/FusedBatchNormV3/ReadVariableOp�7batch_normalization_4/FusedBatchNormV3/ReadVariableOp_1�$batch_normalization_4/ReadVariableOp�&batch_normalization_4/ReadVariableOp_1� conv2d_18/BiasAdd/ReadVariableOp�conv2d_18/Conv2D/ReadVariableOp� conv2d_19/BiasAdd/ReadVariableOp�conv2d_19/Conv2D/ReadVariableOp� conv2d_20/BiasAdd/ReadVariableOp�conv2d_20/Conv2D/ReadVariableOp� conv2d_21/BiasAdd/ReadVariableOp�conv2d_21/Conv2D/ReadVariableOp�
conv2d_18/Conv2D/ReadVariableOpReadVariableOp(conv2d_18_conv2d_readvariableop_resource*&
_output_shapes
:@*
dtype0�
conv2d_18/Conv2DConv2Dinputs'conv2d_18/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:���������t�@*
paddingSAME*
strides
�
 conv2d_18/BiasAdd/ReadVariableOpReadVariableOp)conv2d_18_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0�
conv2d_18/BiasAddBiasAddconv2d_18/Conv2D:output:0(conv2d_18/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:���������t�@�
$batch_normalization_1/ReadVariableOpReadVariableOp-batch_normalization_1_readvariableop_resource*
_output_shapes
:@*
dtype0�
&batch_normalization_1/ReadVariableOp_1ReadVariableOp/batch_normalization_1_readvariableop_1_resource*
_output_shapes
:@*
dtype0�
5batch_normalization_1/FusedBatchNormV3/ReadVariableOpReadVariableOp>batch_normalization_1_fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype0�
7batch_normalization_1/FusedBatchNormV3/ReadVariableOp_1ReadVariableOp@batch_normalization_1_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype0�
&batch_normalization_1/FusedBatchNormV3FusedBatchNormV3conv2d_18/BiasAdd:output:0,batch_normalization_1/ReadVariableOp:value:0.batch_normalization_1/ReadVariableOp_1:value:0=batch_normalization_1/FusedBatchNormV3/ReadVariableOp:value:0?batch_normalization_1/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*L
_output_shapes:
8:���������t�@:@:@:@:@:*
epsilon%o�:*
is_training( �
activation_27/ReluRelu*batch_normalization_1/FusedBatchNormV3:y:0*
T0*0
_output_shapes
:���������t�@�
conv2d_19/Conv2D/ReadVariableOpReadVariableOp(conv2d_19_conv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype0�
conv2d_19/Conv2DConv2D activation_27/Relu:activations:0'conv2d_19/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:���������t�@*
paddingSAME*
strides
�
 conv2d_19/BiasAdd/ReadVariableOpReadVariableOp)conv2d_19_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0�
conv2d_19/BiasAddBiasAddconv2d_19/Conv2D:output:0(conv2d_19/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:���������t�@�
$batch_normalization_2/ReadVariableOpReadVariableOp-batch_normalization_2_readvariableop_resource*
_output_shapes
:@*
dtype0�
&batch_normalization_2/ReadVariableOp_1ReadVariableOp/batch_normalization_2_readvariableop_1_resource*
_output_shapes
:@*
dtype0�
5batch_normalization_2/FusedBatchNormV3/ReadVariableOpReadVariableOp>batch_normalization_2_fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype0�
7batch_normalization_2/FusedBatchNormV3/ReadVariableOp_1ReadVariableOp@batch_normalization_2_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype0�
&batch_normalization_2/FusedBatchNormV3FusedBatchNormV3conv2d_19/BiasAdd:output:0,batch_normalization_2/ReadVariableOp:value:0.batch_normalization_2/ReadVariableOp_1:value:0=batch_normalization_2/FusedBatchNormV3/ReadVariableOp:value:0?batch_normalization_2/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*L
_output_shapes:
8:���������t�@:@:@:@:@:*
epsilon%o�:*
is_training( �
activation_28/ReluRelu*batch_normalization_2/FusedBatchNormV3:y:0*
T0*0
_output_shapes
:���������t�@�
conv2d_20/Conv2D/ReadVariableOpReadVariableOp(conv2d_20_conv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype0�
conv2d_20/Conv2DConv2D activation_28/Relu:activations:0'conv2d_20/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:���������t�@*
paddingSAME*
strides
�
 conv2d_20/BiasAdd/ReadVariableOpReadVariableOp)conv2d_20_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0�
conv2d_20/BiasAddBiasAddconv2d_20/Conv2D:output:0(conv2d_20/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:���������t�@�
$batch_normalization_3/ReadVariableOpReadVariableOp-batch_normalization_3_readvariableop_resource*
_output_shapes
:@*
dtype0�
&batch_normalization_3/ReadVariableOp_1ReadVariableOp/batch_normalization_3_readvariableop_1_resource*
_output_shapes
:@*
dtype0�
5batch_normalization_3/FusedBatchNormV3/ReadVariableOpReadVariableOp>batch_normalization_3_fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype0�
7batch_normalization_3/FusedBatchNormV3/ReadVariableOp_1ReadVariableOp@batch_normalization_3_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype0�
&batch_normalization_3/FusedBatchNormV3FusedBatchNormV3conv2d_20/BiasAdd:output:0,batch_normalization_3/ReadVariableOp:value:0.batch_normalization_3/ReadVariableOp_1:value:0=batch_normalization_3/FusedBatchNormV3/ReadVariableOp:value:0?batch_normalization_3/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*L
_output_shapes:
8:���������t�@:@:@:@:@:*
epsilon%o�:*
is_training( �
activation_29/ReluRelu*batch_normalization_3/FusedBatchNormV3:y:0*
T0*0
_output_shapes
:���������t�@�
conv2d_21/Conv2D/ReadVariableOpReadVariableOp(conv2d_21_conv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype0�
conv2d_21/Conv2DConv2D activation_29/Relu:activations:0'conv2d_21/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:���������t�@*
paddingSAME*
strides
�
 conv2d_21/BiasAdd/ReadVariableOpReadVariableOp)conv2d_21_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0�
conv2d_21/BiasAddBiasAddconv2d_21/Conv2D:output:0(conv2d_21/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:���������t�@�
$batch_normalization_4/ReadVariableOpReadVariableOp-batch_normalization_4_readvariableop_resource*
_output_shapes
:@*
dtype0�
&batch_normalization_4/ReadVariableOp_1ReadVariableOp/batch_normalization_4_readvariableop_1_resource*
_output_shapes
:@*
dtype0�
5batch_normalization_4/FusedBatchNormV3/ReadVariableOpReadVariableOp>batch_normalization_4_fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype0�
7batch_normalization_4/FusedBatchNormV3/ReadVariableOp_1ReadVariableOp@batch_normalization_4_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype0�
&batch_normalization_4/FusedBatchNormV3FusedBatchNormV3conv2d_21/BiasAdd:output:0,batch_normalization_4/ReadVariableOp:value:0.batch_normalization_4/ReadVariableOp_1:value:0=batch_normalization_4/FusedBatchNormV3/ReadVariableOp:value:0?batch_normalization_4/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*L
_output_shapes:
8:���������t�@:@:@:@:@:*
epsilon%o�:*
is_training( �
activation_30/ReluRelu*batch_normalization_4/FusedBatchNormV3:y:0*
T0*0
_output_shapes
:���������t�@�
max_pooling2d/MaxPoolMaxPool activation_30/Relu:activations:0*/
_output_shapes
:���������:^@*
ksize
*
paddingVALID*
strides
u
IdentityIdentitymax_pooling2d/MaxPool:output:0^NoOp*
T0*/
_output_shapes
:���������:^@�
NoOpNoOp6^batch_normalization_1/FusedBatchNormV3/ReadVariableOp8^batch_normalization_1/FusedBatchNormV3/ReadVariableOp_1%^batch_normalization_1/ReadVariableOp'^batch_normalization_1/ReadVariableOp_16^batch_normalization_2/FusedBatchNormV3/ReadVariableOp8^batch_normalization_2/FusedBatchNormV3/ReadVariableOp_1%^batch_normalization_2/ReadVariableOp'^batch_normalization_2/ReadVariableOp_16^batch_normalization_3/FusedBatchNormV3/ReadVariableOp8^batch_normalization_3/FusedBatchNormV3/ReadVariableOp_1%^batch_normalization_3/ReadVariableOp'^batch_normalization_3/ReadVariableOp_16^batch_normalization_4/FusedBatchNormV3/ReadVariableOp8^batch_normalization_4/FusedBatchNormV3/ReadVariableOp_1%^batch_normalization_4/ReadVariableOp'^batch_normalization_4/ReadVariableOp_1!^conv2d_18/BiasAdd/ReadVariableOp ^conv2d_18/Conv2D/ReadVariableOp!^conv2d_19/BiasAdd/ReadVariableOp ^conv2d_19/Conv2D/ReadVariableOp!^conv2d_20/BiasAdd/ReadVariableOp ^conv2d_20/Conv2D/ReadVariableOp!^conv2d_21/BiasAdd/ReadVariableOp ^conv2d_21/Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*_
_input_shapesN
L:���������t�: : : : : : : : : : : : : : : : : : : : : : : : 2n
5batch_normalization_1/FusedBatchNormV3/ReadVariableOp5batch_normalization_1/FusedBatchNormV3/ReadVariableOp2r
7batch_normalization_1/FusedBatchNormV3/ReadVariableOp_17batch_normalization_1/FusedBatchNormV3/ReadVariableOp_12L
$batch_normalization_1/ReadVariableOp$batch_normalization_1/ReadVariableOp2P
&batch_normalization_1/ReadVariableOp_1&batch_normalization_1/ReadVariableOp_12n
5batch_normalization_2/FusedBatchNormV3/ReadVariableOp5batch_normalization_2/FusedBatchNormV3/ReadVariableOp2r
7batch_normalization_2/FusedBatchNormV3/ReadVariableOp_17batch_normalization_2/FusedBatchNormV3/ReadVariableOp_12L
$batch_normalization_2/ReadVariableOp$batch_normalization_2/ReadVariableOp2P
&batch_normalization_2/ReadVariableOp_1&batch_normalization_2/ReadVariableOp_12n
5batch_normalization_3/FusedBatchNormV3/ReadVariableOp5batch_normalization_3/FusedBatchNormV3/ReadVariableOp2r
7batch_normalization_3/FusedBatchNormV3/ReadVariableOp_17batch_normalization_3/FusedBatchNormV3/ReadVariableOp_12L
$batch_normalization_3/ReadVariableOp$batch_normalization_3/ReadVariableOp2P
&batch_normalization_3/ReadVariableOp_1&batch_normalization_3/ReadVariableOp_12n
5batch_normalization_4/FusedBatchNormV3/ReadVariableOp5batch_normalization_4/FusedBatchNormV3/ReadVariableOp2r
7batch_normalization_4/FusedBatchNormV3/ReadVariableOp_17batch_normalization_4/FusedBatchNormV3/ReadVariableOp_12L
$batch_normalization_4/ReadVariableOp$batch_normalization_4/ReadVariableOp2P
&batch_normalization_4/ReadVariableOp_1&batch_normalization_4/ReadVariableOp_12D
 conv2d_18/BiasAdd/ReadVariableOp conv2d_18/BiasAdd/ReadVariableOp2B
conv2d_18/Conv2D/ReadVariableOpconv2d_18/Conv2D/ReadVariableOp2D
 conv2d_19/BiasAdd/ReadVariableOp conv2d_19/BiasAdd/ReadVariableOp2B
conv2d_19/Conv2D/ReadVariableOpconv2d_19/Conv2D/ReadVariableOp2D
 conv2d_20/BiasAdd/ReadVariableOp conv2d_20/BiasAdd/ReadVariableOp2B
conv2d_20/Conv2D/ReadVariableOpconv2d_20/Conv2D/ReadVariableOp2D
 conv2d_21/BiasAdd/ReadVariableOp conv2d_21/BiasAdd/ReadVariableOp2B
conv2d_21/Conv2D/ReadVariableOpconv2d_21/Conv2D/ReadVariableOp:X T
0
_output_shapes
:���������t�
 
_user_specified_nameinputs
�
�
S__inference_batch_normalization_3_layer_call_and_return_conditional_losses_18089456

inputs%
readvariableop_resource:@'
readvariableop_1_resource:@6
(fusedbatchnormv3_readvariableop_resource:@8
*fusedbatchnormv3_readvariableop_1_resource:@
identity��FusedBatchNormV3/ReadVariableOp�!FusedBatchNormV3/ReadVariableOp_1�ReadVariableOp�ReadVariableOp_1b
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:@*
dtype0f
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:@*
dtype0�
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype0�
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype0�
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+���������������������������@:@:@:@:@:*
epsilon%o�:*
is_training( }
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*A
_output_shapes/
-:+���������������������������@�
NoOpNoOp ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+���������������������������@: : : : 2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+���������������������������@
 
_user_specified_nameinputs
�

�
G__inference_conv2d_18_layer_call_and_return_conditional_losses_18089591

inputs8
conv2d_readvariableop_resource:@-
biasadd_readvariableop_resource:@
identity��BiasAdd/ReadVariableOp�Conv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:@*
dtype0�
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:���������t�@*
paddingSAME*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype0~
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:���������t�@h
IdentityIdentityBiasAdd:output:0^NoOp*
T0*0
_output_shapes
:���������t�@w
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
�
�
S__inference_batch_normalization_4_layer_call_and_return_conditional_losses_18090873

inputs%
readvariableop_resource:@'
readvariableop_1_resource:@6
(fusedbatchnormv3_readvariableop_resource:@8
*fusedbatchnormv3_readvariableop_1_resource:@
identity��AssignNewValue�AssignNewValue_1�FusedBatchNormV3/ReadVariableOp�!FusedBatchNormV3/ReadVariableOp_1�ReadVariableOp�ReadVariableOp_1b
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:@*
dtype0f
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:@*
dtype0�
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype0�
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype0�
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+���������������������������@:@:@:@:@:*
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
-:+���������������������������@�
NoOpNoOp^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+���������������������������@: : : : 2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+���������������������������@
 
_user_specified_nameinputs
�
g
K__inference_activation_28_layer_call_and_return_conditional_losses_18089643

inputs
identityO
ReluReluinputs*
T0*0
_output_shapes
:���������t�@c
IdentityIdentityRelu:activations:0*
T0*0
_output_shapes
:���������t�@"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:���������t�@:X T
0
_output_shapes
:���������t�@
 
_user_specified_nameinputs
�
�
*__inference_model_2_layer_call_fn_18090341

inputs!
unknown:@
	unknown_0:@
	unknown_1:@
	unknown_2:@
	unknown_3:@
	unknown_4:@#
	unknown_5:@@
	unknown_6:@
	unknown_7:@
	unknown_8:@
	unknown_9:@

unknown_10:@$

unknown_11:@@

unknown_12:@

unknown_13:@

unknown_14:@

unknown_15:@

unknown_16:@$

unknown_17:@@

unknown_18:@

unknown_19:@

unknown_20:@

unknown_21:@

unknown_22:@
identity��StatefulPartitionedCall�
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
unknown_20
unknown_21
unknown_22*$
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������:^@*2
_read_only_resource_inputs
	
*2
config_proto" 

CPU

GPU2 *1J 8� *N
fIRG
E__inference_model_2_layer_call_and_return_conditional_losses_18089946w
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:���������:^@`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*_
_input_shapesN
L:���������t�: : : : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:X T
0
_output_shapes
:���������t�
 
_user_specified_nameinputs
�
g
K__inference_activation_30_layer_call_and_return_conditional_losses_18090883

inputs
identityO
ReluReluinputs*
T0*0
_output_shapes
:���������t�@c
IdentityIdentityRelu:activations:0*
T0*0
_output_shapes
:���������t�@"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:���������t�@:X T
0
_output_shapes
:���������t�@
 
_user_specified_nameinputs
�
L
0__inference_activation_27_layer_call_fn_18090605

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
:���������t�@* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2 *1J 8� *T
fORM
K__inference_activation_27_layer_call_and_return_conditional_losses_18089611i
IdentityIdentityPartitionedCall:output:0*
T0*0
_output_shapes
:���������t�@"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:���������t�@:X T
0
_output_shapes
:���������t�@
 
_user_specified_nameinputs
�
�
S__inference_batch_normalization_3_layer_call_and_return_conditional_losses_18090782

inputs%
readvariableop_resource:@'
readvariableop_1_resource:@6
(fusedbatchnormv3_readvariableop_resource:@8
*fusedbatchnormv3_readvariableop_1_resource:@
identity��AssignNewValue�AssignNewValue_1�FusedBatchNormV3/ReadVariableOp�!FusedBatchNormV3/ReadVariableOp_1�ReadVariableOp�ReadVariableOp_1b
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:@*
dtype0f
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:@*
dtype0�
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype0�
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype0�
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+���������������������������@:@:@:@:@:*
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
-:+���������������������������@�
NoOpNoOp^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+���������������������������@: : : : 2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+���������������������������@
 
_user_specified_nameinputs
�
�
*__inference_model_2_layer_call_fn_18090288

inputs!
unknown:@
	unknown_0:@
	unknown_1:@
	unknown_2:@
	unknown_3:@
	unknown_4:@#
	unknown_5:@@
	unknown_6:@
	unknown_7:@
	unknown_8:@
	unknown_9:@

unknown_10:@$

unknown_11:@@

unknown_12:@

unknown_13:@

unknown_14:@

unknown_15:@

unknown_16:@$

unknown_17:@@

unknown_18:@

unknown_19:@

unknown_20:@

unknown_21:@

unknown_22:@
identity��StatefulPartitionedCall�
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
unknown_20
unknown_21
unknown_22*$
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������:^@*:
_read_only_resource_inputs
	
*2
config_proto" 

CPU

GPU2 *1J 8� *N
fIRG
E__inference_model_2_layer_call_and_return_conditional_losses_18089711w
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:���������:^@`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*_
_input_shapesN
L:���������t�: : : : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:X T
0
_output_shapes
:���������t�
 
_user_specified_nameinputs
�
�
*__inference_model_2_layer_call_fn_18089762
input_3!
unknown:@
	unknown_0:@
	unknown_1:@
	unknown_2:@
	unknown_3:@
	unknown_4:@#
	unknown_5:@@
	unknown_6:@
	unknown_7:@
	unknown_8:@
	unknown_9:@

unknown_10:@$

unknown_11:@@

unknown_12:@

unknown_13:@

unknown_14:@

unknown_15:@

unknown_16:@$

unknown_17:@@

unknown_18:@

unknown_19:@

unknown_20:@

unknown_21:@

unknown_22:@
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinput_3unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
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
unknown_20
unknown_21
unknown_22*$
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������:^@*:
_read_only_resource_inputs
	
*2
config_proto" 

CPU

GPU2 *1J 8� *N
fIRG
E__inference_model_2_layer_call_and_return_conditional_losses_18089711w
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:���������:^@`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*_
_input_shapesN
L:���������t�: : : : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Y U
0
_output_shapes
:���������t�
!
_user_specified_name	input_3
�
g
K__inference_max_pooling2d_layer_call_and_return_conditional_losses_18089571

inputs
identity�
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4������������������������������������*
ksize
*
paddingVALID*
strides
{
IdentityIdentityMaxPool:output:0*
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
ϊ
�
E__inference_model_2_layer_call_and_return_conditional_losses_18090519

inputsB
(conv2d_18_conv2d_readvariableop_resource:@7
)conv2d_18_biasadd_readvariableop_resource:@;
-batch_normalization_1_readvariableop_resource:@=
/batch_normalization_1_readvariableop_1_resource:@L
>batch_normalization_1_fusedbatchnormv3_readvariableop_resource:@N
@batch_normalization_1_fusedbatchnormv3_readvariableop_1_resource:@B
(conv2d_19_conv2d_readvariableop_resource:@@7
)conv2d_19_biasadd_readvariableop_resource:@;
-batch_normalization_2_readvariableop_resource:@=
/batch_normalization_2_readvariableop_1_resource:@L
>batch_normalization_2_fusedbatchnormv3_readvariableop_resource:@N
@batch_normalization_2_fusedbatchnormv3_readvariableop_1_resource:@B
(conv2d_20_conv2d_readvariableop_resource:@@7
)conv2d_20_biasadd_readvariableop_resource:@;
-batch_normalization_3_readvariableop_resource:@=
/batch_normalization_3_readvariableop_1_resource:@L
>batch_normalization_3_fusedbatchnormv3_readvariableop_resource:@N
@batch_normalization_3_fusedbatchnormv3_readvariableop_1_resource:@B
(conv2d_21_conv2d_readvariableop_resource:@@7
)conv2d_21_biasadd_readvariableop_resource:@;
-batch_normalization_4_readvariableop_resource:@=
/batch_normalization_4_readvariableop_1_resource:@L
>batch_normalization_4_fusedbatchnormv3_readvariableop_resource:@N
@batch_normalization_4_fusedbatchnormv3_readvariableop_1_resource:@
identity��$batch_normalization_1/AssignNewValue�&batch_normalization_1/AssignNewValue_1�5batch_normalization_1/FusedBatchNormV3/ReadVariableOp�7batch_normalization_1/FusedBatchNormV3/ReadVariableOp_1�$batch_normalization_1/ReadVariableOp�&batch_normalization_1/ReadVariableOp_1�$batch_normalization_2/AssignNewValue�&batch_normalization_2/AssignNewValue_1�5batch_normalization_2/FusedBatchNormV3/ReadVariableOp�7batch_normalization_2/FusedBatchNormV3/ReadVariableOp_1�$batch_normalization_2/ReadVariableOp�&batch_normalization_2/ReadVariableOp_1�$batch_normalization_3/AssignNewValue�&batch_normalization_3/AssignNewValue_1�5batch_normalization_3/FusedBatchNormV3/ReadVariableOp�7batch_normalization_3/FusedBatchNormV3/ReadVariableOp_1�$batch_normalization_3/ReadVariableOp�&batch_normalization_3/ReadVariableOp_1�$batch_normalization_4/AssignNewValue�&batch_normalization_4/AssignNewValue_1�5batch_normalization_4/FusedBatchNormV3/ReadVariableOp�7batch_normalization_4/FusedBatchNormV3/ReadVariableOp_1�$batch_normalization_4/ReadVariableOp�&batch_normalization_4/ReadVariableOp_1� conv2d_18/BiasAdd/ReadVariableOp�conv2d_18/Conv2D/ReadVariableOp� conv2d_19/BiasAdd/ReadVariableOp�conv2d_19/Conv2D/ReadVariableOp� conv2d_20/BiasAdd/ReadVariableOp�conv2d_20/Conv2D/ReadVariableOp� conv2d_21/BiasAdd/ReadVariableOp�conv2d_21/Conv2D/ReadVariableOp�
conv2d_18/Conv2D/ReadVariableOpReadVariableOp(conv2d_18_conv2d_readvariableop_resource*&
_output_shapes
:@*
dtype0�
conv2d_18/Conv2DConv2Dinputs'conv2d_18/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:���������t�@*
paddingSAME*
strides
�
 conv2d_18/BiasAdd/ReadVariableOpReadVariableOp)conv2d_18_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0�
conv2d_18/BiasAddBiasAddconv2d_18/Conv2D:output:0(conv2d_18/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:���������t�@�
$batch_normalization_1/ReadVariableOpReadVariableOp-batch_normalization_1_readvariableop_resource*
_output_shapes
:@*
dtype0�
&batch_normalization_1/ReadVariableOp_1ReadVariableOp/batch_normalization_1_readvariableop_1_resource*
_output_shapes
:@*
dtype0�
5batch_normalization_1/FusedBatchNormV3/ReadVariableOpReadVariableOp>batch_normalization_1_fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype0�
7batch_normalization_1/FusedBatchNormV3/ReadVariableOp_1ReadVariableOp@batch_normalization_1_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype0�
&batch_normalization_1/FusedBatchNormV3FusedBatchNormV3conv2d_18/BiasAdd:output:0,batch_normalization_1/ReadVariableOp:value:0.batch_normalization_1/ReadVariableOp_1:value:0=batch_normalization_1/FusedBatchNormV3/ReadVariableOp:value:0?batch_normalization_1/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*L
_output_shapes:
8:���������t�@:@:@:@:@:*
epsilon%o�:*
exponential_avg_factor%
�#<�
$batch_normalization_1/AssignNewValueAssignVariableOp>batch_normalization_1_fusedbatchnormv3_readvariableop_resource3batch_normalization_1/FusedBatchNormV3:batch_mean:06^batch_normalization_1/FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype0*
validate_shape(�
&batch_normalization_1/AssignNewValue_1AssignVariableOp@batch_normalization_1_fusedbatchnormv3_readvariableop_1_resource7batch_normalization_1/FusedBatchNormV3:batch_variance:08^batch_normalization_1/FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype0*
validate_shape(�
activation_27/ReluRelu*batch_normalization_1/FusedBatchNormV3:y:0*
T0*0
_output_shapes
:���������t�@�
conv2d_19/Conv2D/ReadVariableOpReadVariableOp(conv2d_19_conv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype0�
conv2d_19/Conv2DConv2D activation_27/Relu:activations:0'conv2d_19/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:���������t�@*
paddingSAME*
strides
�
 conv2d_19/BiasAdd/ReadVariableOpReadVariableOp)conv2d_19_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0�
conv2d_19/BiasAddBiasAddconv2d_19/Conv2D:output:0(conv2d_19/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:���������t�@�
$batch_normalization_2/ReadVariableOpReadVariableOp-batch_normalization_2_readvariableop_resource*
_output_shapes
:@*
dtype0�
&batch_normalization_2/ReadVariableOp_1ReadVariableOp/batch_normalization_2_readvariableop_1_resource*
_output_shapes
:@*
dtype0�
5batch_normalization_2/FusedBatchNormV3/ReadVariableOpReadVariableOp>batch_normalization_2_fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype0�
7batch_normalization_2/FusedBatchNormV3/ReadVariableOp_1ReadVariableOp@batch_normalization_2_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype0�
&batch_normalization_2/FusedBatchNormV3FusedBatchNormV3conv2d_19/BiasAdd:output:0,batch_normalization_2/ReadVariableOp:value:0.batch_normalization_2/ReadVariableOp_1:value:0=batch_normalization_2/FusedBatchNormV3/ReadVariableOp:value:0?batch_normalization_2/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*L
_output_shapes:
8:���������t�@:@:@:@:@:*
epsilon%o�:*
exponential_avg_factor%
�#<�
$batch_normalization_2/AssignNewValueAssignVariableOp>batch_normalization_2_fusedbatchnormv3_readvariableop_resource3batch_normalization_2/FusedBatchNormV3:batch_mean:06^batch_normalization_2/FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype0*
validate_shape(�
&batch_normalization_2/AssignNewValue_1AssignVariableOp@batch_normalization_2_fusedbatchnormv3_readvariableop_1_resource7batch_normalization_2/FusedBatchNormV3:batch_variance:08^batch_normalization_2/FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype0*
validate_shape(�
activation_28/ReluRelu*batch_normalization_2/FusedBatchNormV3:y:0*
T0*0
_output_shapes
:���������t�@�
conv2d_20/Conv2D/ReadVariableOpReadVariableOp(conv2d_20_conv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype0�
conv2d_20/Conv2DConv2D activation_28/Relu:activations:0'conv2d_20/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:���������t�@*
paddingSAME*
strides
�
 conv2d_20/BiasAdd/ReadVariableOpReadVariableOp)conv2d_20_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0�
conv2d_20/BiasAddBiasAddconv2d_20/Conv2D:output:0(conv2d_20/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:���������t�@�
$batch_normalization_3/ReadVariableOpReadVariableOp-batch_normalization_3_readvariableop_resource*
_output_shapes
:@*
dtype0�
&batch_normalization_3/ReadVariableOp_1ReadVariableOp/batch_normalization_3_readvariableop_1_resource*
_output_shapes
:@*
dtype0�
5batch_normalization_3/FusedBatchNormV3/ReadVariableOpReadVariableOp>batch_normalization_3_fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype0�
7batch_normalization_3/FusedBatchNormV3/ReadVariableOp_1ReadVariableOp@batch_normalization_3_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype0�
&batch_normalization_3/FusedBatchNormV3FusedBatchNormV3conv2d_20/BiasAdd:output:0,batch_normalization_3/ReadVariableOp:value:0.batch_normalization_3/ReadVariableOp_1:value:0=batch_normalization_3/FusedBatchNormV3/ReadVariableOp:value:0?batch_normalization_3/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*L
_output_shapes:
8:���������t�@:@:@:@:@:*
epsilon%o�:*
exponential_avg_factor%
�#<�
$batch_normalization_3/AssignNewValueAssignVariableOp>batch_normalization_3_fusedbatchnormv3_readvariableop_resource3batch_normalization_3/FusedBatchNormV3:batch_mean:06^batch_normalization_3/FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype0*
validate_shape(�
&batch_normalization_3/AssignNewValue_1AssignVariableOp@batch_normalization_3_fusedbatchnormv3_readvariableop_1_resource7batch_normalization_3/FusedBatchNormV3:batch_variance:08^batch_normalization_3/FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype0*
validate_shape(�
activation_29/ReluRelu*batch_normalization_3/FusedBatchNormV3:y:0*
T0*0
_output_shapes
:���������t�@�
conv2d_21/Conv2D/ReadVariableOpReadVariableOp(conv2d_21_conv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype0�
conv2d_21/Conv2DConv2D activation_29/Relu:activations:0'conv2d_21/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:���������t�@*
paddingSAME*
strides
�
 conv2d_21/BiasAdd/ReadVariableOpReadVariableOp)conv2d_21_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0�
conv2d_21/BiasAddBiasAddconv2d_21/Conv2D:output:0(conv2d_21/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:���������t�@�
$batch_normalization_4/ReadVariableOpReadVariableOp-batch_normalization_4_readvariableop_resource*
_output_shapes
:@*
dtype0�
&batch_normalization_4/ReadVariableOp_1ReadVariableOp/batch_normalization_4_readvariableop_1_resource*
_output_shapes
:@*
dtype0�
5batch_normalization_4/FusedBatchNormV3/ReadVariableOpReadVariableOp>batch_normalization_4_fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype0�
7batch_normalization_4/FusedBatchNormV3/ReadVariableOp_1ReadVariableOp@batch_normalization_4_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype0�
&batch_normalization_4/FusedBatchNormV3FusedBatchNormV3conv2d_21/BiasAdd:output:0,batch_normalization_4/ReadVariableOp:value:0.batch_normalization_4/ReadVariableOp_1:value:0=batch_normalization_4/FusedBatchNormV3/ReadVariableOp:value:0?batch_normalization_4/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*L
_output_shapes:
8:���������t�@:@:@:@:@:*
epsilon%o�:*
exponential_avg_factor%
�#<�
$batch_normalization_4/AssignNewValueAssignVariableOp>batch_normalization_4_fusedbatchnormv3_readvariableop_resource3batch_normalization_4/FusedBatchNormV3:batch_mean:06^batch_normalization_4/FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype0*
validate_shape(�
&batch_normalization_4/AssignNewValue_1AssignVariableOp@batch_normalization_4_fusedbatchnormv3_readvariableop_1_resource7batch_normalization_4/FusedBatchNormV3:batch_variance:08^batch_normalization_4/FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype0*
validate_shape(�
activation_30/ReluRelu*batch_normalization_4/FusedBatchNormV3:y:0*
T0*0
_output_shapes
:���������t�@�
max_pooling2d/MaxPoolMaxPool activation_30/Relu:activations:0*/
_output_shapes
:���������:^@*
ksize
*
paddingVALID*
strides
u
IdentityIdentitymax_pooling2d/MaxPool:output:0^NoOp*
T0*/
_output_shapes
:���������:^@�
NoOpNoOp%^batch_normalization_1/AssignNewValue'^batch_normalization_1/AssignNewValue_16^batch_normalization_1/FusedBatchNormV3/ReadVariableOp8^batch_normalization_1/FusedBatchNormV3/ReadVariableOp_1%^batch_normalization_1/ReadVariableOp'^batch_normalization_1/ReadVariableOp_1%^batch_normalization_2/AssignNewValue'^batch_normalization_2/AssignNewValue_16^batch_normalization_2/FusedBatchNormV3/ReadVariableOp8^batch_normalization_2/FusedBatchNormV3/ReadVariableOp_1%^batch_normalization_2/ReadVariableOp'^batch_normalization_2/ReadVariableOp_1%^batch_normalization_3/AssignNewValue'^batch_normalization_3/AssignNewValue_16^batch_normalization_3/FusedBatchNormV3/ReadVariableOp8^batch_normalization_3/FusedBatchNormV3/ReadVariableOp_1%^batch_normalization_3/ReadVariableOp'^batch_normalization_3/ReadVariableOp_1%^batch_normalization_4/AssignNewValue'^batch_normalization_4/AssignNewValue_16^batch_normalization_4/FusedBatchNormV3/ReadVariableOp8^batch_normalization_4/FusedBatchNormV3/ReadVariableOp_1%^batch_normalization_4/ReadVariableOp'^batch_normalization_4/ReadVariableOp_1!^conv2d_18/BiasAdd/ReadVariableOp ^conv2d_18/Conv2D/ReadVariableOp!^conv2d_19/BiasAdd/ReadVariableOp ^conv2d_19/Conv2D/ReadVariableOp!^conv2d_20/BiasAdd/ReadVariableOp ^conv2d_20/Conv2D/ReadVariableOp!^conv2d_21/BiasAdd/ReadVariableOp ^conv2d_21/Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*_
_input_shapesN
L:���������t�: : : : : : : : : : : : : : : : : : : : : : : : 2L
$batch_normalization_1/AssignNewValue$batch_normalization_1/AssignNewValue2P
&batch_normalization_1/AssignNewValue_1&batch_normalization_1/AssignNewValue_12n
5batch_normalization_1/FusedBatchNormV3/ReadVariableOp5batch_normalization_1/FusedBatchNormV3/ReadVariableOp2r
7batch_normalization_1/FusedBatchNormV3/ReadVariableOp_17batch_normalization_1/FusedBatchNormV3/ReadVariableOp_12L
$batch_normalization_1/ReadVariableOp$batch_normalization_1/ReadVariableOp2P
&batch_normalization_1/ReadVariableOp_1&batch_normalization_1/ReadVariableOp_12L
$batch_normalization_2/AssignNewValue$batch_normalization_2/AssignNewValue2P
&batch_normalization_2/AssignNewValue_1&batch_normalization_2/AssignNewValue_12n
5batch_normalization_2/FusedBatchNormV3/ReadVariableOp5batch_normalization_2/FusedBatchNormV3/ReadVariableOp2r
7batch_normalization_2/FusedBatchNormV3/ReadVariableOp_17batch_normalization_2/FusedBatchNormV3/ReadVariableOp_12L
$batch_normalization_2/ReadVariableOp$batch_normalization_2/ReadVariableOp2P
&batch_normalization_2/ReadVariableOp_1&batch_normalization_2/ReadVariableOp_12L
$batch_normalization_3/AssignNewValue$batch_normalization_3/AssignNewValue2P
&batch_normalization_3/AssignNewValue_1&batch_normalization_3/AssignNewValue_12n
5batch_normalization_3/FusedBatchNormV3/ReadVariableOp5batch_normalization_3/FusedBatchNormV3/ReadVariableOp2r
7batch_normalization_3/FusedBatchNormV3/ReadVariableOp_17batch_normalization_3/FusedBatchNormV3/ReadVariableOp_12L
$batch_normalization_3/ReadVariableOp$batch_normalization_3/ReadVariableOp2P
&batch_normalization_3/ReadVariableOp_1&batch_normalization_3/ReadVariableOp_12L
$batch_normalization_4/AssignNewValue$batch_normalization_4/AssignNewValue2P
&batch_normalization_4/AssignNewValue_1&batch_normalization_4/AssignNewValue_12n
5batch_normalization_4/FusedBatchNormV3/ReadVariableOp5batch_normalization_4/FusedBatchNormV3/ReadVariableOp2r
7batch_normalization_4/FusedBatchNormV3/ReadVariableOp_17batch_normalization_4/FusedBatchNormV3/ReadVariableOp_12L
$batch_normalization_4/ReadVariableOp$batch_normalization_4/ReadVariableOp2P
&batch_normalization_4/ReadVariableOp_1&batch_normalization_4/ReadVariableOp_12D
 conv2d_18/BiasAdd/ReadVariableOp conv2d_18/BiasAdd/ReadVariableOp2B
conv2d_18/Conv2D/ReadVariableOpconv2d_18/Conv2D/ReadVariableOp2D
 conv2d_19/BiasAdd/ReadVariableOp conv2d_19/BiasAdd/ReadVariableOp2B
conv2d_19/Conv2D/ReadVariableOpconv2d_19/Conv2D/ReadVariableOp2D
 conv2d_20/BiasAdd/ReadVariableOp conv2d_20/BiasAdd/ReadVariableOp2B
conv2d_20/Conv2D/ReadVariableOpconv2d_20/Conv2D/ReadVariableOp2D
 conv2d_21/BiasAdd/ReadVariableOp conv2d_21/BiasAdd/ReadVariableOp2B
conv2d_21/Conv2D/ReadVariableOpconv2d_21/Conv2D/ReadVariableOp:X T
0
_output_shapes
:���������t�
 
_user_specified_nameinputs
�

�
G__inference_conv2d_21_layer_call_and_return_conditional_losses_18089687

inputs8
conv2d_readvariableop_resource:@@-
biasadd_readvariableop_resource:@
identity��BiasAdd/ReadVariableOp�Conv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype0�
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:���������t�@*
paddingSAME*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype0~
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:���������t�@h
IdentityIdentityBiasAdd:output:0^NoOp*
T0*0
_output_shapes
:���������t�@w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :���������t�@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:X T
0
_output_shapes
:���������t�@
 
_user_specified_nameinputs
�D
�
E__inference_model_2_layer_call_and_return_conditional_losses_18090180
input_3,
conv2d_18_18090118:@ 
conv2d_18_18090120:@,
batch_normalization_1_18090123:@,
batch_normalization_1_18090125:@,
batch_normalization_1_18090127:@,
batch_normalization_1_18090129:@,
conv2d_19_18090133:@@ 
conv2d_19_18090135:@,
batch_normalization_2_18090138:@,
batch_normalization_2_18090140:@,
batch_normalization_2_18090142:@,
batch_normalization_2_18090144:@,
conv2d_20_18090148:@@ 
conv2d_20_18090150:@,
batch_normalization_3_18090153:@,
batch_normalization_3_18090155:@,
batch_normalization_3_18090157:@,
batch_normalization_3_18090159:@,
conv2d_21_18090163:@@ 
conv2d_21_18090165:@,
batch_normalization_4_18090168:@,
batch_normalization_4_18090170:@,
batch_normalization_4_18090172:@,
batch_normalization_4_18090174:@
identity��-batch_normalization_1/StatefulPartitionedCall�-batch_normalization_2/StatefulPartitionedCall�-batch_normalization_3/StatefulPartitionedCall�-batch_normalization_4/StatefulPartitionedCall�!conv2d_18/StatefulPartitionedCall�!conv2d_19/StatefulPartitionedCall�!conv2d_20/StatefulPartitionedCall�!conv2d_21/StatefulPartitionedCall�
!conv2d_18/StatefulPartitionedCallStatefulPartitionedCallinput_3conv2d_18_18090118conv2d_18_18090120*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:���������t�@*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *1J 8� *P
fKRI
G__inference_conv2d_18_layer_call_and_return_conditional_losses_18089591�
-batch_normalization_1/StatefulPartitionedCallStatefulPartitionedCall*conv2d_18/StatefulPartitionedCall:output:0batch_normalization_1_18090123batch_normalization_1_18090125batch_normalization_1_18090127batch_normalization_1_18090129*
Tin	
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:���������t�@*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *1J 8� *\
fWRU
S__inference_batch_normalization_1_layer_call_and_return_conditional_losses_18089359�
activation_27/PartitionedCallPartitionedCall6batch_normalization_1/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:���������t�@* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2 *1J 8� *T
fORM
K__inference_activation_27_layer_call_and_return_conditional_losses_18089611�
!conv2d_19/StatefulPartitionedCallStatefulPartitionedCall&activation_27/PartitionedCall:output:0conv2d_19_18090133conv2d_19_18090135*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:���������t�@*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *1J 8� *P
fKRI
G__inference_conv2d_19_layer_call_and_return_conditional_losses_18089623�
-batch_normalization_2/StatefulPartitionedCallStatefulPartitionedCall*conv2d_19/StatefulPartitionedCall:output:0batch_normalization_2_18090138batch_normalization_2_18090140batch_normalization_2_18090142batch_normalization_2_18090144*
Tin	
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:���������t�@*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *1J 8� *\
fWRU
S__inference_batch_normalization_2_layer_call_and_return_conditional_losses_18089423�
activation_28/PartitionedCallPartitionedCall6batch_normalization_2/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:���������t�@* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2 *1J 8� *T
fORM
K__inference_activation_28_layer_call_and_return_conditional_losses_18089643�
!conv2d_20/StatefulPartitionedCallStatefulPartitionedCall&activation_28/PartitionedCall:output:0conv2d_20_18090148conv2d_20_18090150*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:���������t�@*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *1J 8� *P
fKRI
G__inference_conv2d_20_layer_call_and_return_conditional_losses_18089655�
-batch_normalization_3/StatefulPartitionedCallStatefulPartitionedCall*conv2d_20/StatefulPartitionedCall:output:0batch_normalization_3_18090153batch_normalization_3_18090155batch_normalization_3_18090157batch_normalization_3_18090159*
Tin	
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:���������t�@*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *1J 8� *\
fWRU
S__inference_batch_normalization_3_layer_call_and_return_conditional_losses_18089487�
activation_29/PartitionedCallPartitionedCall6batch_normalization_3/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:���������t�@* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2 *1J 8� *T
fORM
K__inference_activation_29_layer_call_and_return_conditional_losses_18089675�
!conv2d_21/StatefulPartitionedCallStatefulPartitionedCall&activation_29/PartitionedCall:output:0conv2d_21_18090163conv2d_21_18090165*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:���������t�@*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *1J 8� *P
fKRI
G__inference_conv2d_21_layer_call_and_return_conditional_losses_18089687�
-batch_normalization_4/StatefulPartitionedCallStatefulPartitionedCall*conv2d_21/StatefulPartitionedCall:output:0batch_normalization_4_18090168batch_normalization_4_18090170batch_normalization_4_18090172batch_normalization_4_18090174*
Tin	
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:���������t�@*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *1J 8� *\
fWRU
S__inference_batch_normalization_4_layer_call_and_return_conditional_losses_18089551�
activation_30/PartitionedCallPartitionedCall6batch_normalization_4/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:���������t�@* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2 *1J 8� *T
fORM
K__inference_activation_30_layer_call_and_return_conditional_losses_18089707�
max_pooling2d/PartitionedCallPartitionedCall&activation_30/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������:^@* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2 *1J 8� *T
fORM
K__inference_max_pooling2d_layer_call_and_return_conditional_losses_18089571}
IdentityIdentity&max_pooling2d/PartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:���������:^@�
NoOpNoOp.^batch_normalization_1/StatefulPartitionedCall.^batch_normalization_2/StatefulPartitionedCall.^batch_normalization_3/StatefulPartitionedCall.^batch_normalization_4/StatefulPartitionedCall"^conv2d_18/StatefulPartitionedCall"^conv2d_19/StatefulPartitionedCall"^conv2d_20/StatefulPartitionedCall"^conv2d_21/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*_
_input_shapesN
L:���������t�: : : : : : : : : : : : : : : : : : : : : : : : 2^
-batch_normalization_1/StatefulPartitionedCall-batch_normalization_1/StatefulPartitionedCall2^
-batch_normalization_2/StatefulPartitionedCall-batch_normalization_2/StatefulPartitionedCall2^
-batch_normalization_3/StatefulPartitionedCall-batch_normalization_3/StatefulPartitionedCall2^
-batch_normalization_4/StatefulPartitionedCall-batch_normalization_4/StatefulPartitionedCall2F
!conv2d_18/StatefulPartitionedCall!conv2d_18/StatefulPartitionedCall2F
!conv2d_19/StatefulPartitionedCall!conv2d_19/StatefulPartitionedCall2F
!conv2d_20/StatefulPartitionedCall!conv2d_20/StatefulPartitionedCall2F
!conv2d_21/StatefulPartitionedCall!conv2d_21/StatefulPartitionedCall:Y U
0
_output_shapes
:���������t�
!
_user_specified_name	input_3
�
�
S__inference_batch_normalization_3_layer_call_and_return_conditional_losses_18090764

inputs%
readvariableop_resource:@'
readvariableop_1_resource:@6
(fusedbatchnormv3_readvariableop_resource:@8
*fusedbatchnormv3_readvariableop_1_resource:@
identity��FusedBatchNormV3/ReadVariableOp�!FusedBatchNormV3/ReadVariableOp_1�ReadVariableOp�ReadVariableOp_1b
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:@*
dtype0f
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:@*
dtype0�
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype0�
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype0�
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+���������������������������@:@:@:@:@:*
epsilon%o�:*
is_training( }
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*A
_output_shapes/
-:+���������������������������@�
NoOpNoOp ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+���������������������������@: : : : 2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+���������������������������@
 
_user_specified_nameinputs
�	
�
8__inference_batch_normalization_1_layer_call_fn_18090551

inputs
unknown:@
	unknown_0:@
	unknown_1:@
	unknown_2:@
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+���������������������������@*&
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *1J 8� *\
fWRU
S__inference_batch_normalization_1_layer_call_and_return_conditional_losses_18089328�
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*A
_output_shapes/
-:+���������������������������@`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+���������������������������@: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+���������������������������@
 
_user_specified_nameinputs
�

�
G__inference_conv2d_21_layer_call_and_return_conditional_losses_18090811

inputs8
conv2d_readvariableop_resource:@@-
biasadd_readvariableop_resource:@
identity��BiasAdd/ReadVariableOp�Conv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype0�
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:���������t�@*
paddingSAME*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype0~
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:���������t�@h
IdentityIdentityBiasAdd:output:0^NoOp*
T0*0
_output_shapes
:���������t�@w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :���������t�@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:X T
0
_output_shapes
:���������t�@
 
_user_specified_nameinputs
�
g
K__inference_activation_28_layer_call_and_return_conditional_losses_18090701

inputs
identityO
ReluReluinputs*
T0*0
_output_shapes
:���������t�@c
IdentityIdentityRelu:activations:0*
T0*0
_output_shapes
:���������t�@"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:���������t�@:X T
0
_output_shapes
:���������t�@
 
_user_specified_nameinputs
�
�
,__inference_conv2d_20_layer_call_fn_18090710

inputs!
unknown:@@
	unknown_0:@
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:���������t�@*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *1J 8� *P
fKRI
G__inference_conv2d_20_layer_call_and_return_conditional_losses_18089655x
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*0
_output_shapes
:���������t�@`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :���������t�@: : 22
StatefulPartitionedCallStatefulPartitionedCall:X T
0
_output_shapes
:���������t�@
 
_user_specified_nameinputs
�
�
S__inference_batch_normalization_2_layer_call_and_return_conditional_losses_18090691

inputs%
readvariableop_resource:@'
readvariableop_1_resource:@6
(fusedbatchnormv3_readvariableop_resource:@8
*fusedbatchnormv3_readvariableop_1_resource:@
identity��AssignNewValue�AssignNewValue_1�FusedBatchNormV3/ReadVariableOp�!FusedBatchNormV3/ReadVariableOp_1�ReadVariableOp�ReadVariableOp_1b
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:@*
dtype0f
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:@*
dtype0�
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype0�
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype0�
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+���������������������������@:@:@:@:@:*
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
-:+���������������������������@�
NoOpNoOp^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+���������������������������@: : : : 2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+���������������������������@
 
_user_specified_nameinputs
�
g
K__inference_activation_27_layer_call_and_return_conditional_losses_18089611

inputs
identityO
ReluReluinputs*
T0*0
_output_shapes
:���������t�@c
IdentityIdentityRelu:activations:0*
T0*0
_output_shapes
:���������t�@"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:���������t�@:X T
0
_output_shapes
:���������t�@
 
_user_specified_nameinputs
�
g
K__inference_activation_29_layer_call_and_return_conditional_losses_18089675

inputs
identityO
ReluReluinputs*
T0*0
_output_shapes
:���������t�@c
IdentityIdentityRelu:activations:0*
T0*0
_output_shapes
:���������t�@"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:���������t�@:X T
0
_output_shapes
:���������t�@
 
_user_specified_nameinputs
�	
�
8__inference_batch_normalization_4_layer_call_fn_18090837

inputs
unknown:@
	unknown_0:@
	unknown_1:@
	unknown_2:@
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+���������������������������@*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *1J 8� *\
fWRU
S__inference_batch_normalization_4_layer_call_and_return_conditional_losses_18089551�
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*A
_output_shapes/
-:+���������������������������@`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+���������������������������@: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+���������������������������@
 
_user_specified_nameinputs
�D
�
E__inference_model_2_layer_call_and_return_conditional_losses_18089946

inputs,
conv2d_18_18089884:@ 
conv2d_18_18089886:@,
batch_normalization_1_18089889:@,
batch_normalization_1_18089891:@,
batch_normalization_1_18089893:@,
batch_normalization_1_18089895:@,
conv2d_19_18089899:@@ 
conv2d_19_18089901:@,
batch_normalization_2_18089904:@,
batch_normalization_2_18089906:@,
batch_normalization_2_18089908:@,
batch_normalization_2_18089910:@,
conv2d_20_18089914:@@ 
conv2d_20_18089916:@,
batch_normalization_3_18089919:@,
batch_normalization_3_18089921:@,
batch_normalization_3_18089923:@,
batch_normalization_3_18089925:@,
conv2d_21_18089929:@@ 
conv2d_21_18089931:@,
batch_normalization_4_18089934:@,
batch_normalization_4_18089936:@,
batch_normalization_4_18089938:@,
batch_normalization_4_18089940:@
identity��-batch_normalization_1/StatefulPartitionedCall�-batch_normalization_2/StatefulPartitionedCall�-batch_normalization_3/StatefulPartitionedCall�-batch_normalization_4/StatefulPartitionedCall�!conv2d_18/StatefulPartitionedCall�!conv2d_19/StatefulPartitionedCall�!conv2d_20/StatefulPartitionedCall�!conv2d_21/StatefulPartitionedCall�
!conv2d_18/StatefulPartitionedCallStatefulPartitionedCallinputsconv2d_18_18089884conv2d_18_18089886*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:���������t�@*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *1J 8� *P
fKRI
G__inference_conv2d_18_layer_call_and_return_conditional_losses_18089591�
-batch_normalization_1/StatefulPartitionedCallStatefulPartitionedCall*conv2d_18/StatefulPartitionedCall:output:0batch_normalization_1_18089889batch_normalization_1_18089891batch_normalization_1_18089893batch_normalization_1_18089895*
Tin	
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:���������t�@*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *1J 8� *\
fWRU
S__inference_batch_normalization_1_layer_call_and_return_conditional_losses_18089359�
activation_27/PartitionedCallPartitionedCall6batch_normalization_1/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:���������t�@* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2 *1J 8� *T
fORM
K__inference_activation_27_layer_call_and_return_conditional_losses_18089611�
!conv2d_19/StatefulPartitionedCallStatefulPartitionedCall&activation_27/PartitionedCall:output:0conv2d_19_18089899conv2d_19_18089901*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:���������t�@*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *1J 8� *P
fKRI
G__inference_conv2d_19_layer_call_and_return_conditional_losses_18089623�
-batch_normalization_2/StatefulPartitionedCallStatefulPartitionedCall*conv2d_19/StatefulPartitionedCall:output:0batch_normalization_2_18089904batch_normalization_2_18089906batch_normalization_2_18089908batch_normalization_2_18089910*
Tin	
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:���������t�@*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *1J 8� *\
fWRU
S__inference_batch_normalization_2_layer_call_and_return_conditional_losses_18089423�
activation_28/PartitionedCallPartitionedCall6batch_normalization_2/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:���������t�@* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2 *1J 8� *T
fORM
K__inference_activation_28_layer_call_and_return_conditional_losses_18089643�
!conv2d_20/StatefulPartitionedCallStatefulPartitionedCall&activation_28/PartitionedCall:output:0conv2d_20_18089914conv2d_20_18089916*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:���������t�@*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *1J 8� *P
fKRI
G__inference_conv2d_20_layer_call_and_return_conditional_losses_18089655�
-batch_normalization_3/StatefulPartitionedCallStatefulPartitionedCall*conv2d_20/StatefulPartitionedCall:output:0batch_normalization_3_18089919batch_normalization_3_18089921batch_normalization_3_18089923batch_normalization_3_18089925*
Tin	
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:���������t�@*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *1J 8� *\
fWRU
S__inference_batch_normalization_3_layer_call_and_return_conditional_losses_18089487�
activation_29/PartitionedCallPartitionedCall6batch_normalization_3/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:���������t�@* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2 *1J 8� *T
fORM
K__inference_activation_29_layer_call_and_return_conditional_losses_18089675�
!conv2d_21/StatefulPartitionedCallStatefulPartitionedCall&activation_29/PartitionedCall:output:0conv2d_21_18089929conv2d_21_18089931*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:���������t�@*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *1J 8� *P
fKRI
G__inference_conv2d_21_layer_call_and_return_conditional_losses_18089687�
-batch_normalization_4/StatefulPartitionedCallStatefulPartitionedCall*conv2d_21/StatefulPartitionedCall:output:0batch_normalization_4_18089934batch_normalization_4_18089936batch_normalization_4_18089938batch_normalization_4_18089940*
Tin	
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:���������t�@*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *1J 8� *\
fWRU
S__inference_batch_normalization_4_layer_call_and_return_conditional_losses_18089551�
activation_30/PartitionedCallPartitionedCall6batch_normalization_4/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:���������t�@* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2 *1J 8� *T
fORM
K__inference_activation_30_layer_call_and_return_conditional_losses_18089707�
max_pooling2d/PartitionedCallPartitionedCall&activation_30/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������:^@* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2 *1J 8� *T
fORM
K__inference_max_pooling2d_layer_call_and_return_conditional_losses_18089571}
IdentityIdentity&max_pooling2d/PartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:���������:^@�
NoOpNoOp.^batch_normalization_1/StatefulPartitionedCall.^batch_normalization_2/StatefulPartitionedCall.^batch_normalization_3/StatefulPartitionedCall.^batch_normalization_4/StatefulPartitionedCall"^conv2d_18/StatefulPartitionedCall"^conv2d_19/StatefulPartitionedCall"^conv2d_20/StatefulPartitionedCall"^conv2d_21/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*_
_input_shapesN
L:���������t�: : : : : : : : : : : : : : : : : : : : : : : : 2^
-batch_normalization_1/StatefulPartitionedCall-batch_normalization_1/StatefulPartitionedCall2^
-batch_normalization_2/StatefulPartitionedCall-batch_normalization_2/StatefulPartitionedCall2^
-batch_normalization_3/StatefulPartitionedCall-batch_normalization_3/StatefulPartitionedCall2^
-batch_normalization_4/StatefulPartitionedCall-batch_normalization_4/StatefulPartitionedCall2F
!conv2d_18/StatefulPartitionedCall!conv2d_18/StatefulPartitionedCall2F
!conv2d_19/StatefulPartitionedCall!conv2d_19/StatefulPartitionedCall2F
!conv2d_20/StatefulPartitionedCall!conv2d_20/StatefulPartitionedCall2F
!conv2d_21/StatefulPartitionedCall!conv2d_21/StatefulPartitionedCall:X T
0
_output_shapes
:���������t�
 
_user_specified_nameinputs
�

�
G__inference_conv2d_20_layer_call_and_return_conditional_losses_18090720

inputs8
conv2d_readvariableop_resource:@@-
biasadd_readvariableop_resource:@
identity��BiasAdd/ReadVariableOp�Conv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype0�
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:���������t�@*
paddingSAME*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype0~
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:���������t�@h
IdentityIdentityBiasAdd:output:0^NoOp*
T0*0
_output_shapes
:���������t�@w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :���������t�@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:X T
0
_output_shapes
:���������t�@
 
_user_specified_nameinputs
�	
�
8__inference_batch_normalization_1_layer_call_fn_18090564

inputs
unknown:@
	unknown_0:@
	unknown_1:@
	unknown_2:@
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+���������������������������@*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *1J 8� *\
fWRU
S__inference_batch_normalization_1_layer_call_and_return_conditional_losses_18089359�
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*A
_output_shapes/
-:+���������������������������@`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+���������������������������@: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+���������������������������@
 
_user_specified_nameinputs
�
g
K__inference_activation_30_layer_call_and_return_conditional_losses_18089707

inputs
identityO
ReluReluinputs*
T0*0
_output_shapes
:���������t�@c
IdentityIdentityRelu:activations:0*
T0*0
_output_shapes
:���������t�@"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:���������t�@:X T
0
_output_shapes
:���������t�@
 
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
input_39
serving_default_input_3:0���������t�I
max_pooling2d8
StatefulPartitionedCall:0���������:^@tensorflow/serving/predict:��
�
layer-0
layer_with_weights-0
layer-1
layer_with_weights-1
layer-2
layer-3
layer_with_weights-2
layer-4
layer_with_weights-3
layer-5
layer-6
layer_with_weights-4
layer-7
	layer_with_weights-5
	layer-8

layer-9
layer_with_weights-6
layer-10
layer_with_weights-7
layer-11
layer-12
layer-13
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses
_default_save_signature

signatures"
_tf_keras_network
"
_tf_keras_input_layer
�
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses

kernel
bias
 _jit_compiled_convolution_op"
_tf_keras_layer
�
 	variables
!trainable_variables
"regularization_losses
#	keras_api
$__call__
*%&call_and_return_all_conditional_losses
&axis
	'gamma
(beta
)moving_mean
*moving_variance"
_tf_keras_layer
�
+	variables
,trainable_variables
-regularization_losses
.	keras_api
/__call__
*0&call_and_return_all_conditional_losses"
_tf_keras_layer
�
1	variables
2trainable_variables
3regularization_losses
4	keras_api
5__call__
*6&call_and_return_all_conditional_losses

7kernel
8bias
 9_jit_compiled_convolution_op"
_tf_keras_layer
�
:	variables
;trainable_variables
<regularization_losses
=	keras_api
>__call__
*?&call_and_return_all_conditional_losses
@axis
	Agamma
Bbeta
Cmoving_mean
Dmoving_variance"
_tf_keras_layer
�
E	variables
Ftrainable_variables
Gregularization_losses
H	keras_api
I__call__
*J&call_and_return_all_conditional_losses"
_tf_keras_layer
�
K	variables
Ltrainable_variables
Mregularization_losses
N	keras_api
O__call__
*P&call_and_return_all_conditional_losses

Qkernel
Rbias
 S_jit_compiled_convolution_op"
_tf_keras_layer
�
T	variables
Utrainable_variables
Vregularization_losses
W	keras_api
X__call__
*Y&call_and_return_all_conditional_losses
Zaxis
	[gamma
\beta
]moving_mean
^moving_variance"
_tf_keras_layer
�
_	variables
`trainable_variables
aregularization_losses
b	keras_api
c__call__
*d&call_and_return_all_conditional_losses"
_tf_keras_layer
�
e	variables
ftrainable_variables
gregularization_losses
h	keras_api
i__call__
*j&call_and_return_all_conditional_losses

kkernel
lbias
 m_jit_compiled_convolution_op"
_tf_keras_layer
�
n	variables
otrainable_variables
pregularization_losses
q	keras_api
r__call__
*s&call_and_return_all_conditional_losses
taxis
	ugamma
vbeta
wmoving_mean
xmoving_variance"
_tf_keras_layer
�
y	variables
ztrainable_variables
{regularization_losses
|	keras_api
}__call__
*~&call_and_return_all_conditional_losses"
_tf_keras_layer
�
	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses"
_tf_keras_layer
�
0
1
'2
(3
)4
*5
76
87
A8
B9
C10
D11
Q12
R13
[14
\15
]16
^17
k18
l19
u20
v21
w22
x23"
trackable_list_wrapper
�
0
1
'2
(3
74
85
A6
B7
Q8
R9
[10
\11
k12
l13
u14
v15"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
	variables
trainable_variables
regularization_losses
__call__
_default_save_signature
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
�
�trace_0
�trace_1
�trace_2
�trace_32�
*__inference_model_2_layer_call_fn_18089762
*__inference_model_2_layer_call_fn_18090288
*__inference_model_2_layer_call_fn_18090341
*__inference_model_2_layer_call_fn_18090050�
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
E__inference_model_2_layer_call_and_return_conditional_losses_18090430
E__inference_model_2_layer_call_and_return_conditional_losses_18090519
E__inference_model_2_layer_call_and_return_conditional_losses_18090115
E__inference_model_2_layer_call_and_return_conditional_losses_18090180�
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
#__inference__wrapped_model_18089306input_3"�
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
-
�serving_default"
signature_map
.
0
1"
trackable_list_wrapper
.
0
1"
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
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
,__inference_conv2d_18_layer_call_fn_18090528�
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
G__inference_conv2d_18_layer_call_and_return_conditional_losses_18090538�
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
*:(@2conv2d_18/kernel
:@2conv2d_18/bias
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
<
'0
(1
)2
*3"
trackable_list_wrapper
.
'0
(1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
 	variables
!trainable_variables
"regularization_losses
$__call__
*%&call_and_return_all_conditional_losses
&%"call_and_return_conditional_losses"
_generic_user_object
�
�trace_0
�trace_12�
8__inference_batch_normalization_1_layer_call_fn_18090551
8__inference_batch_normalization_1_layer_call_fn_18090564�
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
 z�trace_0z�trace_1
�
�trace_0
�trace_12�
S__inference_batch_normalization_1_layer_call_and_return_conditional_losses_18090582
S__inference_batch_normalization_1_layer_call_and_return_conditional_losses_18090600�
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
 z�trace_0z�trace_1
 "
trackable_list_wrapper
):'@2batch_normalization_1/gamma
(:&@2batch_normalization_1/beta
1:/@ (2!batch_normalization_1/moving_mean
5:3@ (2%batch_normalization_1/moving_variance
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
+	variables
,trainable_variables
-regularization_losses
/__call__
*0&call_and_return_all_conditional_losses
&0"call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
0__inference_activation_27_layer_call_fn_18090605�
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
K__inference_activation_27_layer_call_and_return_conditional_losses_18090610�
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
.
70
81"
trackable_list_wrapper
.
70
81"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
1	variables
2trainable_variables
3regularization_losses
5__call__
*6&call_and_return_all_conditional_losses
&6"call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
,__inference_conv2d_19_layer_call_fn_18090619�
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
G__inference_conv2d_19_layer_call_and_return_conditional_losses_18090629�
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
*:(@@2conv2d_19/kernel
:@2conv2d_19/bias
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
<
A0
B1
C2
D3"
trackable_list_wrapper
.
A0
B1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
:	variables
;trainable_variables
<regularization_losses
>__call__
*?&call_and_return_all_conditional_losses
&?"call_and_return_conditional_losses"
_generic_user_object
�
�trace_0
�trace_12�
8__inference_batch_normalization_2_layer_call_fn_18090642
8__inference_batch_normalization_2_layer_call_fn_18090655�
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
 z�trace_0z�trace_1
�
�trace_0
�trace_12�
S__inference_batch_normalization_2_layer_call_and_return_conditional_losses_18090673
S__inference_batch_normalization_2_layer_call_and_return_conditional_losses_18090691�
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
 z�trace_0z�trace_1
 "
trackable_list_wrapper
):'@2batch_normalization_2/gamma
(:&@2batch_normalization_2/beta
1:/@ (2!batch_normalization_2/moving_mean
5:3@ (2%batch_normalization_2/moving_variance
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
E	variables
Ftrainable_variables
Gregularization_losses
I__call__
*J&call_and_return_all_conditional_losses
&J"call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
0__inference_activation_28_layer_call_fn_18090696�
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
K__inference_activation_28_layer_call_and_return_conditional_losses_18090701�
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
.
Q0
R1"
trackable_list_wrapper
.
Q0
R1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
K	variables
Ltrainable_variables
Mregularization_losses
O__call__
*P&call_and_return_all_conditional_losses
&P"call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
,__inference_conv2d_20_layer_call_fn_18090710�
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
G__inference_conv2d_20_layer_call_and_return_conditional_losses_18090720�
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
*:(@@2conv2d_20/kernel
:@2conv2d_20/bias
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
<
[0
\1
]2
^3"
trackable_list_wrapper
.
[0
\1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
T	variables
Utrainable_variables
Vregularization_losses
X__call__
*Y&call_and_return_all_conditional_losses
&Y"call_and_return_conditional_losses"
_generic_user_object
�
�trace_0
�trace_12�
8__inference_batch_normalization_3_layer_call_fn_18090733
8__inference_batch_normalization_3_layer_call_fn_18090746�
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
 z�trace_0z�trace_1
�
�trace_0
�trace_12�
S__inference_batch_normalization_3_layer_call_and_return_conditional_losses_18090764
S__inference_batch_normalization_3_layer_call_and_return_conditional_losses_18090782�
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
 z�trace_0z�trace_1
 "
trackable_list_wrapper
):'@2batch_normalization_3/gamma
(:&@2batch_normalization_3/beta
1:/@ (2!batch_normalization_3/moving_mean
5:3@ (2%batch_normalization_3/moving_variance
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
_	variables
`trainable_variables
aregularization_losses
c__call__
*d&call_and_return_all_conditional_losses
&d"call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
0__inference_activation_29_layer_call_fn_18090787�
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
K__inference_activation_29_layer_call_and_return_conditional_losses_18090792�
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
.
k0
l1"
trackable_list_wrapper
.
k0
l1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
e	variables
ftrainable_variables
gregularization_losses
i__call__
*j&call_and_return_all_conditional_losses
&j"call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
,__inference_conv2d_21_layer_call_fn_18090801�
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
G__inference_conv2d_21_layer_call_and_return_conditional_losses_18090811�
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
*:(@@2conv2d_21/kernel
:@2conv2d_21/bias
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
<
u0
v1
w2
x3"
trackable_list_wrapper
.
u0
v1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
n	variables
otrainable_variables
pregularization_losses
r__call__
*s&call_and_return_all_conditional_losses
&s"call_and_return_conditional_losses"
_generic_user_object
�
�trace_0
�trace_12�
8__inference_batch_normalization_4_layer_call_fn_18090824
8__inference_batch_normalization_4_layer_call_fn_18090837�
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
 z�trace_0z�trace_1
�
�trace_0
�trace_12�
S__inference_batch_normalization_4_layer_call_and_return_conditional_losses_18090855
S__inference_batch_normalization_4_layer_call_and_return_conditional_losses_18090873�
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
 z�trace_0z�trace_1
 "
trackable_list_wrapper
):'@2batch_normalization_4/gamma
(:&@2batch_normalization_4/beta
1:/@ (2!batch_normalization_4/moving_mean
5:3@ (2%batch_normalization_4/moving_variance
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
y	variables
ztrainable_variables
{regularization_losses
}__call__
*~&call_and_return_all_conditional_losses
&~"call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
0__inference_activation_30_layer_call_fn_18090878�
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
K__inference_activation_30_layer_call_and_return_conditional_losses_18090883�
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
	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
0__inference_max_pooling2d_layer_call_fn_18090888�
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
K__inference_max_pooling2d_layer_call_and_return_conditional_losses_18090893�
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
X
)0
*1
C2
D3
]4
^5
w6
x7"
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
13"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
�B�
*__inference_model_2_layer_call_fn_18089762input_3"�
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
*__inference_model_2_layer_call_fn_18090288inputs"�
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
*__inference_model_2_layer_call_fn_18090341inputs"�
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
*__inference_model_2_layer_call_fn_18090050input_3"�
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
E__inference_model_2_layer_call_and_return_conditional_losses_18090430inputs"�
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
E__inference_model_2_layer_call_and_return_conditional_losses_18090519inputs"�
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
E__inference_model_2_layer_call_and_return_conditional_losses_18090115input_3"�
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
E__inference_model_2_layer_call_and_return_conditional_losses_18090180input_3"�
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
&__inference_signature_wrapper_18090235input_3"�
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
,__inference_conv2d_18_layer_call_fn_18090528inputs"�
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
G__inference_conv2d_18_layer_call_and_return_conditional_losses_18090538inputs"�
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
)0
*1"
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
8__inference_batch_normalization_1_layer_call_fn_18090551inputs"�
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
8__inference_batch_normalization_1_layer_call_fn_18090564inputs"�
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
S__inference_batch_normalization_1_layer_call_and_return_conditional_losses_18090582inputs"�
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
S__inference_batch_normalization_1_layer_call_and_return_conditional_losses_18090600inputs"�
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
0__inference_activation_27_layer_call_fn_18090605inputs"�
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
K__inference_activation_27_layer_call_and_return_conditional_losses_18090610inputs"�
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
,__inference_conv2d_19_layer_call_fn_18090619inputs"�
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
G__inference_conv2d_19_layer_call_and_return_conditional_losses_18090629inputs"�
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
C0
D1"
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
8__inference_batch_normalization_2_layer_call_fn_18090642inputs"�
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
8__inference_batch_normalization_2_layer_call_fn_18090655inputs"�
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
S__inference_batch_normalization_2_layer_call_and_return_conditional_losses_18090673inputs"�
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
S__inference_batch_normalization_2_layer_call_and_return_conditional_losses_18090691inputs"�
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
0__inference_activation_28_layer_call_fn_18090696inputs"�
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
K__inference_activation_28_layer_call_and_return_conditional_losses_18090701inputs"�
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
,__inference_conv2d_20_layer_call_fn_18090710inputs"�
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
G__inference_conv2d_20_layer_call_and_return_conditional_losses_18090720inputs"�
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
]0
^1"
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
8__inference_batch_normalization_3_layer_call_fn_18090733inputs"�
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
8__inference_batch_normalization_3_layer_call_fn_18090746inputs"�
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
S__inference_batch_normalization_3_layer_call_and_return_conditional_losses_18090764inputs"�
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
S__inference_batch_normalization_3_layer_call_and_return_conditional_losses_18090782inputs"�
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
0__inference_activation_29_layer_call_fn_18090787inputs"�
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
K__inference_activation_29_layer_call_and_return_conditional_losses_18090792inputs"�
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
,__inference_conv2d_21_layer_call_fn_18090801inputs"�
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
G__inference_conv2d_21_layer_call_and_return_conditional_losses_18090811inputs"�
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
w0
x1"
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
8__inference_batch_normalization_4_layer_call_fn_18090824inputs"�
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
8__inference_batch_normalization_4_layer_call_fn_18090837inputs"�
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
S__inference_batch_normalization_4_layer_call_and_return_conditional_losses_18090855inputs"�
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
S__inference_batch_normalization_4_layer_call_and_return_conditional_losses_18090873inputs"�
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
0__inference_activation_30_layer_call_fn_18090878inputs"�
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
K__inference_activation_30_layer_call_and_return_conditional_losses_18090883inputs"�
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
0__inference_max_pooling2d_layer_call_fn_18090888inputs"�
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
K__inference_max_pooling2d_layer_call_and_return_conditional_losses_18090893inputs"�
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
 �
#__inference__wrapped_model_18089306�'()*78ABCDQR[\]^kluvwx9�6
/�,
*�'
input_3���������t�
� "E�B
@
max_pooling2d/�,
max_pooling2d���������:^@�
K__inference_activation_27_layer_call_and_return_conditional_losses_18090610j8�5
.�+
)�&
inputs���������t�@
� ".�+
$�!
0���������t�@
� �
0__inference_activation_27_layer_call_fn_18090605]8�5
.�+
)�&
inputs���������t�@
� "!����������t�@�
K__inference_activation_28_layer_call_and_return_conditional_losses_18090701j8�5
.�+
)�&
inputs���������t�@
� ".�+
$�!
0���������t�@
� �
0__inference_activation_28_layer_call_fn_18090696]8�5
.�+
)�&
inputs���������t�@
� "!����������t�@�
K__inference_activation_29_layer_call_and_return_conditional_losses_18090792j8�5
.�+
)�&
inputs���������t�@
� ".�+
$�!
0���������t�@
� �
0__inference_activation_29_layer_call_fn_18090787]8�5
.�+
)�&
inputs���������t�@
� "!����������t�@�
K__inference_activation_30_layer_call_and_return_conditional_losses_18090883j8�5
.�+
)�&
inputs���������t�@
� ".�+
$�!
0���������t�@
� �
0__inference_activation_30_layer_call_fn_18090878]8�5
.�+
)�&
inputs���������t�@
� "!����������t�@�
S__inference_batch_normalization_1_layer_call_and_return_conditional_losses_18090582�'()*M�J
C�@
:�7
inputs+���������������������������@
p 
� "?�<
5�2
0+���������������������������@
� �
S__inference_batch_normalization_1_layer_call_and_return_conditional_losses_18090600�'()*M�J
C�@
:�7
inputs+���������������������������@
p
� "?�<
5�2
0+���������������������������@
� �
8__inference_batch_normalization_1_layer_call_fn_18090551�'()*M�J
C�@
:�7
inputs+���������������������������@
p 
� "2�/+���������������������������@�
8__inference_batch_normalization_1_layer_call_fn_18090564�'()*M�J
C�@
:�7
inputs+���������������������������@
p
� "2�/+���������������������������@�
S__inference_batch_normalization_2_layer_call_and_return_conditional_losses_18090673�ABCDM�J
C�@
:�7
inputs+���������������������������@
p 
� "?�<
5�2
0+���������������������������@
� �
S__inference_batch_normalization_2_layer_call_and_return_conditional_losses_18090691�ABCDM�J
C�@
:�7
inputs+���������������������������@
p
� "?�<
5�2
0+���������������������������@
� �
8__inference_batch_normalization_2_layer_call_fn_18090642�ABCDM�J
C�@
:�7
inputs+���������������������������@
p 
� "2�/+���������������������������@�
8__inference_batch_normalization_2_layer_call_fn_18090655�ABCDM�J
C�@
:�7
inputs+���������������������������@
p
� "2�/+���������������������������@�
S__inference_batch_normalization_3_layer_call_and_return_conditional_losses_18090764�[\]^M�J
C�@
:�7
inputs+���������������������������@
p 
� "?�<
5�2
0+���������������������������@
� �
S__inference_batch_normalization_3_layer_call_and_return_conditional_losses_18090782�[\]^M�J
C�@
:�7
inputs+���������������������������@
p
� "?�<
5�2
0+���������������������������@
� �
8__inference_batch_normalization_3_layer_call_fn_18090733�[\]^M�J
C�@
:�7
inputs+���������������������������@
p 
� "2�/+���������������������������@�
8__inference_batch_normalization_3_layer_call_fn_18090746�[\]^M�J
C�@
:�7
inputs+���������������������������@
p
� "2�/+���������������������������@�
S__inference_batch_normalization_4_layer_call_and_return_conditional_losses_18090855�uvwxM�J
C�@
:�7
inputs+���������������������������@
p 
� "?�<
5�2
0+���������������������������@
� �
S__inference_batch_normalization_4_layer_call_and_return_conditional_losses_18090873�uvwxM�J
C�@
:�7
inputs+���������������������������@
p
� "?�<
5�2
0+���������������������������@
� �
8__inference_batch_normalization_4_layer_call_fn_18090824�uvwxM�J
C�@
:�7
inputs+���������������������������@
p 
� "2�/+���������������������������@�
8__inference_batch_normalization_4_layer_call_fn_18090837�uvwxM�J
C�@
:�7
inputs+���������������������������@
p
� "2�/+���������������������������@�
G__inference_conv2d_18_layer_call_and_return_conditional_losses_18090538n8�5
.�+
)�&
inputs���������t�
� ".�+
$�!
0���������t�@
� �
,__inference_conv2d_18_layer_call_fn_18090528a8�5
.�+
)�&
inputs���������t�
� "!����������t�@�
G__inference_conv2d_19_layer_call_and_return_conditional_losses_18090629n788�5
.�+
)�&
inputs���������t�@
� ".�+
$�!
0���������t�@
� �
,__inference_conv2d_19_layer_call_fn_18090619a788�5
.�+
)�&
inputs���������t�@
� "!����������t�@�
G__inference_conv2d_20_layer_call_and_return_conditional_losses_18090720nQR8�5
.�+
)�&
inputs���������t�@
� ".�+
$�!
0���������t�@
� �
,__inference_conv2d_20_layer_call_fn_18090710aQR8�5
.�+
)�&
inputs���������t�@
� "!����������t�@�
G__inference_conv2d_21_layer_call_and_return_conditional_losses_18090811nkl8�5
.�+
)�&
inputs���������t�@
� ".�+
$�!
0���������t�@
� �
,__inference_conv2d_21_layer_call_fn_18090801akl8�5
.�+
)�&
inputs���������t�@
� "!����������t�@�
K__inference_max_pooling2d_layer_call_and_return_conditional_losses_18090893�R�O
H�E
C�@
inputs4������������������������������������
� "H�E
>�;
04������������������������������������
� �
0__inference_max_pooling2d_layer_call_fn_18090888�R�O
H�E
C�@
inputs4������������������������������������
� ";�84�������������������������������������
E__inference_model_2_layer_call_and_return_conditional_losses_18090115�'()*78ABCDQR[\]^kluvwxA�>
7�4
*�'
input_3���������t�
p 

 
� "-�*
#� 
0���������:^@
� �
E__inference_model_2_layer_call_and_return_conditional_losses_18090180�'()*78ABCDQR[\]^kluvwxA�>
7�4
*�'
input_3���������t�
p

 
� "-�*
#� 
0���������:^@
� �
E__inference_model_2_layer_call_and_return_conditional_losses_18090430�'()*78ABCDQR[\]^kluvwx@�=
6�3
)�&
inputs���������t�
p 

 
� "-�*
#� 
0���������:^@
� �
E__inference_model_2_layer_call_and_return_conditional_losses_18090519�'()*78ABCDQR[\]^kluvwx@�=
6�3
)�&
inputs���������t�
p

 
� "-�*
#� 
0���������:^@
� �
*__inference_model_2_layer_call_fn_18089762'()*78ABCDQR[\]^kluvwxA�>
7�4
*�'
input_3���������t�
p 

 
� " ����������:^@�
*__inference_model_2_layer_call_fn_18090050'()*78ABCDQR[\]^kluvwxA�>
7�4
*�'
input_3���������t�
p

 
� " ����������:^@�
*__inference_model_2_layer_call_fn_18090288~'()*78ABCDQR[\]^kluvwx@�=
6�3
)�&
inputs���������t�
p 

 
� " ����������:^@�
*__inference_model_2_layer_call_fn_18090341~'()*78ABCDQR[\]^kluvwx@�=
6�3
)�&
inputs���������t�
p

 
� " ����������:^@�
&__inference_signature_wrapper_18090235�'()*78ABCDQR[\]^kluvwxD�A
� 
:�7
5
input_3*�'
input_3���������t�"E�B
@
max_pooling2d/�,
max_pooling2d���������:^@