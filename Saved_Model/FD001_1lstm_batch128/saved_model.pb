вч
·╔
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
А
BiasAdd

value"T	
bias"T
output"T""
Ttype:
2	"-
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
$
DisableCopyOnRead
resourceИ
^
Fill
dims"
index_type

value"T
output"T"	
Ttype"

index_typetype0:
2	
о
GatherV2
params"Tparams
indices"Tindices
axis"Taxis
output"Tparams"

batch_dimsint "
Tparamstype"
Tindicestype:
2	"
Taxistype:
2	
.
Identity

input"T
output"T"	
Ttype
u
MatMul
a"T
b"T
product"T"
transpose_abool( "
transpose_bbool( "
Ttype:
2	
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
П
Prod

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( ""
Ttype:
2	"
Tidxtype0:
2	
@
ReadVariableOp
resource
value"dtype"
dtypetypeИ
E
Relu
features"T
activations"T"
Ttype:
2	
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
d
Shape

input"T&
output"out_typeКэout_type"	
Ttype"
out_typetype0:
2	
H
ShardedFilename
basename	
shard

num_shards
filename
0
Sigmoid
x"T
y"T"
Ttype:

2
[
Split
	split_dim

value"T
output"T*	num_split"
	num_splitint(0"	
Ttype
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
-
Tanh
x"T
y"T"
Ttype:

2
░
TensorListFromTensor
tensor"element_dtype
element_shape"
shape_type/
output_handleКщшelement_dtype"
element_dtypetype"

shape_typetype:
2	
Я
TensorListReserve
element_shape"
shape_type
num_elements(
handleКщшelement_dtype"
element_dtypetype"

shape_typetype:
2	
И
TensorListStack
input_handle
element_shape
tensor"element_dtype"
element_dtypetype" 
num_elementsint         
P
	Transpose
x"T
perm"Tperm
y"T"	
Ttype"
Tpermtype0:
2	
Ц
VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 И
Ф
While

input2T
output2T"
T
list(type)("
condfunc"
bodyfunc" 
output_shapeslist(shape)
 "
parallel_iterationsint
И"serve*2.12.02v2.12.0-rc1-12-g0db597d0d758Х№
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
b
count_2VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	count_2
[
count_2/Read/ReadVariableOpReadVariableOpcount_2*
_output_shapes
: *
dtype0
b
total_2VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	total_2
[
total_2/Read/ReadVariableOpReadVariableOptotal_2*
_output_shapes
: *
dtype0
~
Adam/v/dense_1/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*$
shared_nameAdam/v/dense_1/bias
w
'Adam/v/dense_1/bias/Read/ReadVariableOpReadVariableOpAdam/v/dense_1/bias*
_output_shapes
:*
dtype0
~
Adam/m/dense_1/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*$
shared_nameAdam/m/dense_1/bias
w
'Adam/m/dense_1/bias/Read/ReadVariableOpReadVariableOpAdam/m/dense_1/bias*
_output_shapes
:*
dtype0
Ж
Adam/v/dense_1/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:2*&
shared_nameAdam/v/dense_1/kernel

)Adam/v/dense_1/kernel/Read/ReadVariableOpReadVariableOpAdam/v/dense_1/kernel*
_output_shapes

:2*
dtype0
Ж
Adam/m/dense_1/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:2*&
shared_nameAdam/m/dense_1/kernel

)Adam/m/dense_1/kernel/Read/ReadVariableOpReadVariableOpAdam/m/dense_1/kernel*
_output_shapes

:2*
dtype0
z
Adam/v/dense/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:2*"
shared_nameAdam/v/dense/bias
s
%Adam/v/dense/bias/Read/ReadVariableOpReadVariableOpAdam/v/dense/bias*
_output_shapes
:2*
dtype0
z
Adam/m/dense/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:2*"
shared_nameAdam/m/dense/bias
s
%Adam/m/dense/bias/Read/ReadVariableOpReadVariableOpAdam/m/dense/bias*
_output_shapes
:2*
dtype0
В
Adam/v/dense/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:H2*$
shared_nameAdam/v/dense/kernel
{
'Adam/v/dense/kernel/Read/ReadVariableOpReadVariableOpAdam/v/dense/kernel*
_output_shapes

:H2*
dtype0
В
Adam/m/dense/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:H2*$
shared_nameAdam/m/dense/kernel
{
'Adam/m/dense/kernel/Read/ReadVariableOpReadVariableOpAdam/m/dense/kernel*
_output_shapes

:H2*
dtype0
Л
Adam/v/rnn/lstm_cell/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:а**
shared_nameAdam/v/rnn/lstm_cell/bias
Д
-Adam/v/rnn/lstm_cell/bias/Read/ReadVariableOpReadVariableOpAdam/v/rnn/lstm_cell/bias*
_output_shapes	
:а*
dtype0
Л
Adam/m/rnn/lstm_cell/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:а**
shared_nameAdam/m/rnn/lstm_cell/bias
Д
-Adam/m/rnn/lstm_cell/bias/Read/ReadVariableOpReadVariableOpAdam/m/rnn/lstm_cell/bias*
_output_shapes	
:а*
dtype0
з
%Adam/v/rnn/lstm_cell/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	Hа*6
shared_name'%Adam/v/rnn/lstm_cell/recurrent_kernel
а
9Adam/v/rnn/lstm_cell/recurrent_kernel/Read/ReadVariableOpReadVariableOp%Adam/v/rnn/lstm_cell/recurrent_kernel*
_output_shapes
:	Hа*
dtype0
з
%Adam/m/rnn/lstm_cell/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	Hа*6
shared_name'%Adam/m/rnn/lstm_cell/recurrent_kernel
а
9Adam/m/rnn/lstm_cell/recurrent_kernel/Read/ReadVariableOpReadVariableOp%Adam/m/rnn/lstm_cell/recurrent_kernel*
_output_shapes
:	Hа*
dtype0
У
Adam/v/rnn/lstm_cell/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	а*,
shared_nameAdam/v/rnn/lstm_cell/kernel
М
/Adam/v/rnn/lstm_cell/kernel/Read/ReadVariableOpReadVariableOpAdam/v/rnn/lstm_cell/kernel*
_output_shapes
:	а*
dtype0
У
Adam/m/rnn/lstm_cell/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	а*,
shared_nameAdam/m/rnn/lstm_cell/kernel
М
/Adam/m/rnn/lstm_cell/kernel/Read/ReadVariableOpReadVariableOpAdam/m/rnn/lstm_cell/kernel*
_output_shapes
:	а*
dtype0
n
learning_rateVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_namelearning_rate
g
!learning_rate/Read/ReadVariableOpReadVariableOplearning_rate*
_output_shapes
: *
dtype0
f
	iterationVarHandleOp*
_output_shapes
: *
dtype0	*
shape: *
shared_name	iteration
_
iteration/Read/ReadVariableOpReadVariableOp	iteration*
_output_shapes
: *
dtype0	
}
rnn/lstm_cell/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:а*#
shared_namernn/lstm_cell/bias
v
&rnn/lstm_cell/bias/Read/ReadVariableOpReadVariableOprnn/lstm_cell/bias*
_output_shapes	
:а*
dtype0
Щ
rnn/lstm_cell/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	Hа*/
shared_name rnn/lstm_cell/recurrent_kernel
Т
2rnn/lstm_cell/recurrent_kernel/Read/ReadVariableOpReadVariableOprnn/lstm_cell/recurrent_kernel*
_output_shapes
:	Hа*
dtype0
Е
rnn/lstm_cell/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	а*%
shared_namernn/lstm_cell/kernel
~
(rnn/lstm_cell/kernel/Read/ReadVariableOpReadVariableOprnn/lstm_cell/kernel*
_output_shapes
:	а*
dtype0
p
dense_1/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_1/bias
i
 dense_1/bias/Read/ReadVariableOpReadVariableOpdense_1/bias*
_output_shapes
:*
dtype0
x
dense_1/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:2*
shared_namedense_1/kernel
q
"dense_1/kernel/Read/ReadVariableOpReadVariableOpdense_1/kernel*
_output_shapes

:2*
dtype0
l

dense/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:2*
shared_name
dense/bias
e
dense/bias/Read/ReadVariableOpReadVariableOp
dense/bias*
_output_shapes
:2*
dtype0
t
dense/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:H2*
shared_namedense/kernel
m
 dense/kernel/Read/ReadVariableOpReadVariableOpdense/kernel*
_output_shapes

:H2*
dtype0
Д
serving_default_rnn_inputPlaceholder*+
_output_shapes
:         d*
dtype0* 
shape:         d
╚
StatefulPartitionedCallStatefulPartitionedCallserving_default_rnn_inputrnn/lstm_cell/kernelrnn/lstm_cell/recurrent_kernelrnn/lstm_cell/biasdense/kernel
dense/biasdense_1/kerneldense_1/bias*
Tin

2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:         d*)
_read_only_resource_inputs
	*-
config_proto

CPU

GPU 2J 8В *-
f(R&
$__inference_signature_wrapper_272201

NoOpNoOp
┬;
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*¤:
valueє:BЁ: Bщ:
╬
layer_with_weights-0
layer-0
layer_with_weights-1
layer-1
layer-2
layer_with_weights-2
layer-3
	variables
trainable_variables
regularization_losses
	keras_api
	__call__
*
&call_and_return_all_conditional_losses
_default_save_signature
	optimizer

signatures*
к
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses
cell

state_spec*
ж
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses

kernel
bias*
е
	variables
trainable_variables
 regularization_losses
!	keras_api
"__call__
*#&call_and_return_all_conditional_losses
$_random_generator* 
ж
%	variables
&trainable_variables
'regularization_losses
(	keras_api
)__call__
**&call_and_return_all_conditional_losses

+kernel
,bias*
5
-0
.1
/2
3
4
+5
,6*
5
-0
.1
/2
3
4
+5
,6*
* 
░
0non_trainable_variables

1layers
2metrics
3layer_regularization_losses
4layer_metrics
	variables
trainable_variables
regularization_losses
	__call__
_default_save_signature
*
&call_and_return_all_conditional_losses
&
"call_and_return_conditional_losses*
6
5trace_0
6trace_1
7trace_2
8trace_3* 
6
9trace_0
:trace_1
;trace_2
<trace_3* 
* 
Б
=
_variables
>_iterations
?_learning_rate
@_index_dict
A
_momentums
B_velocities
C_update_step_xla*

Dserving_default* 

-0
.1
/2*

-0
.1
/2*
* 
Я

Estates
Fnon_trainable_variables

Glayers
Hmetrics
Ilayer_regularization_losses
Jlayer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses*
6
Ktrace_0
Ltrace_1
Mtrace_2
Ntrace_3* 
6
Otrace_0
Ptrace_1
Qtrace_2
Rtrace_3* 
у
S	variables
Ttrainable_variables
Uregularization_losses
V	keras_api
W__call__
*X&call_and_return_all_conditional_losses
Y_random_generator
Z
state_size

-kernel
.recurrent_kernel
/bias*
* 

0
1*

0
1*
* 
У
[non_trainable_variables

\layers
]metrics
^layer_regularization_losses
_layer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses*

`trace_0* 

atrace_0* 
\V
VARIABLE_VALUEdense/kernel6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUE*
XR
VARIABLE_VALUE
dense/bias4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
* 
С
bnon_trainable_variables

clayers
dmetrics
elayer_regularization_losses
flayer_metrics
	variables
trainable_variables
 regularization_losses
"__call__
*#&call_and_return_all_conditional_losses
&#"call_and_return_conditional_losses* 

gtrace_0
htrace_1* 

itrace_0
jtrace_1* 
* 

+0
,1*

+0
,1*
* 
У
knon_trainable_variables

llayers
mmetrics
nlayer_regularization_losses
olayer_metrics
%	variables
&trainable_variables
'regularization_losses
)__call__
**&call_and_return_all_conditional_losses
&*"call_and_return_conditional_losses*

ptrace_0* 

qtrace_0* 
^X
VARIABLE_VALUEdense_1/kernel6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUE*
ZT
VARIABLE_VALUEdense_1/bias4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUE*
TN
VARIABLE_VALUErnn/lstm_cell/kernel&variables/0/.ATTRIBUTES/VARIABLE_VALUE*
^X
VARIABLE_VALUErnn/lstm_cell/recurrent_kernel&variables/1/.ATTRIBUTES/VARIABLE_VALUE*
RL
VARIABLE_VALUErnn/lstm_cell/bias&variables/2/.ATTRIBUTES/VARIABLE_VALUE*
* 
 
0
1
2
3*

r0
s1
t2*
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
u
>0
u1
v2
w3
x4
y5
z6
{7
|8
}9
~10
11
А12
Б13
В14*
SM
VARIABLE_VALUE	iteration0optimizer/_iterations/.ATTRIBUTES/VARIABLE_VALUE*
ZT
VARIABLE_VALUElearning_rate3optimizer/_learning_rate/.ATTRIBUTES/VARIABLE_VALUE*
* 
6
u0
w1
y2
{3
}4
5
Б6*
7
v0
x1
z2
|3
~4
А5
В6*
* 
* 
* 
* 

0*
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 

-0
.1
/2*

-0
.1
/2*
* 
Ш
Гnon_trainable_variables
Дlayers
Еmetrics
 Жlayer_regularization_losses
Зlayer_metrics
S	variables
Ttrainable_variables
Uregularization_losses
W__call__
*X&call_and_return_all_conditional_losses
&X"call_and_return_conditional_losses*

Иtrace_0
Йtrace_1* 

Кtrace_0
Лtrace_1* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
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
М	variables
Н	keras_api

Оtotal

Пcount*
M
Р	variables
С	keras_api

Тtotal

Уcount
Ф
_fn_kwargs*
M
Х	variables
Ц	keras_api

Чtotal

Шcount
Щ
_fn_kwargs*
f`
VARIABLE_VALUEAdam/m/rnn/lstm_cell/kernel1optimizer/_variables/1/.ATTRIBUTES/VARIABLE_VALUE*
f`
VARIABLE_VALUEAdam/v/rnn/lstm_cell/kernel1optimizer/_variables/2/.ATTRIBUTES/VARIABLE_VALUE*
pj
VARIABLE_VALUE%Adam/m/rnn/lstm_cell/recurrent_kernel1optimizer/_variables/3/.ATTRIBUTES/VARIABLE_VALUE*
pj
VARIABLE_VALUE%Adam/v/rnn/lstm_cell/recurrent_kernel1optimizer/_variables/4/.ATTRIBUTES/VARIABLE_VALUE*
d^
VARIABLE_VALUEAdam/m/rnn/lstm_cell/bias1optimizer/_variables/5/.ATTRIBUTES/VARIABLE_VALUE*
d^
VARIABLE_VALUEAdam/v/rnn/lstm_cell/bias1optimizer/_variables/6/.ATTRIBUTES/VARIABLE_VALUE*
^X
VARIABLE_VALUEAdam/m/dense/kernel1optimizer/_variables/7/.ATTRIBUTES/VARIABLE_VALUE*
^X
VARIABLE_VALUEAdam/v/dense/kernel1optimizer/_variables/8/.ATTRIBUTES/VARIABLE_VALUE*
\V
VARIABLE_VALUEAdam/m/dense/bias1optimizer/_variables/9/.ATTRIBUTES/VARIABLE_VALUE*
]W
VARIABLE_VALUEAdam/v/dense/bias2optimizer/_variables/10/.ATTRIBUTES/VARIABLE_VALUE*
a[
VARIABLE_VALUEAdam/m/dense_1/kernel2optimizer/_variables/11/.ATTRIBUTES/VARIABLE_VALUE*
a[
VARIABLE_VALUEAdam/v/dense_1/kernel2optimizer/_variables/12/.ATTRIBUTES/VARIABLE_VALUE*
_Y
VARIABLE_VALUEAdam/m/dense_1/bias2optimizer/_variables/13/.ATTRIBUTES/VARIABLE_VALUE*
_Y
VARIABLE_VALUEAdam/v/dense_1/bias2optimizer/_variables/14/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
* 
* 
* 
* 
* 
* 
* 

О0
П1*

М	variables*
UO
VARIABLE_VALUEtotal_24keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUE*
UO
VARIABLE_VALUEcount_24keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUE*

Т0
У1*

Р	variables*
UO
VARIABLE_VALUEtotal_14keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUE*
UO
VARIABLE_VALUEcount_14keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUE*
* 

Ч0
Ш1*

Х	variables*
SM
VARIABLE_VALUEtotal4keras_api/metrics/2/total/.ATTRIBUTES/VARIABLE_VALUE*
SM
VARIABLE_VALUEcount4keras_api/metrics/2/count/.ATTRIBUTES/VARIABLE_VALUE*
* 
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
ь
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filenamedense/kernel
dense/biasdense_1/kerneldense_1/biasrnn/lstm_cell/kernelrnn/lstm_cell/recurrent_kernelrnn/lstm_cell/bias	iterationlearning_rateAdam/m/rnn/lstm_cell/kernelAdam/v/rnn/lstm_cell/kernel%Adam/m/rnn/lstm_cell/recurrent_kernel%Adam/v/rnn/lstm_cell/recurrent_kernelAdam/m/rnn/lstm_cell/biasAdam/v/rnn/lstm_cell/biasAdam/m/dense/kernelAdam/v/dense/kernelAdam/m/dense/biasAdam/v/dense/biasAdam/m/dense_1/kernelAdam/v/dense_1/kernelAdam/m/dense_1/biasAdam/v/dense_1/biastotal_2count_2total_1count_1totalcountConst**
Tin#
!2*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *(
f#R!
__inference__traced_save_273931
ч
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenamedense/kernel
dense/biasdense_1/kerneldense_1/biasrnn/lstm_cell/kernelrnn/lstm_cell/recurrent_kernelrnn/lstm_cell/bias	iterationlearning_rateAdam/m/rnn/lstm_cell/kernelAdam/v/rnn/lstm_cell/kernel%Adam/m/rnn/lstm_cell/recurrent_kernel%Adam/v/rnn/lstm_cell/recurrent_kernelAdam/m/rnn/lstm_cell/biasAdam/v/rnn/lstm_cell/biasAdam/m/dense/kernelAdam/v/dense/kernelAdam/m/dense/biasAdam/v/dense/biasAdam/m/dense_1/kernelAdam/v/dense_1/kernelAdam/m/dense_1/biasAdam/v/dense_1/biastotal_2count_2total_1count_1totalcount*)
Tin"
 2*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *+
f&R$
"__inference__traced_restore_274028її
√a
╡
while_body_273221
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0C
0while_lstm_cell_matmul_readvariableop_resource_0:	аE
2while_lstm_cell_matmul_1_readvariableop_resource_0:	Hа@
1while_lstm_cell_biasadd_readvariableop_resource_0:	а
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorA
.while_lstm_cell_matmul_readvariableop_resource:	аC
0while_lstm_cell_matmul_1_readvariableop_resource:	Hа>
/while_lstm_cell_biasadd_readvariableop_resource:	аИв&while/lstm_cell/BiasAdd/ReadVariableOpв%while/lstm_cell/MatMul/ReadVariableOpв'while/lstm_cell/MatMul_1/ReadVariableOpИ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       ж
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:         *
element_dtype0Н
while/lstm_cell/ones_like/ShapeShape0while/TensorArrayV2Read/TensorListGetItem:item:0*
T0*
_output_shapes
::э╧d
while/lstm_cell/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  А?з
while/lstm_cell/ones_likeFill(while/lstm_cell/ones_like/Shape:output:0(while/lstm_cell/ones_like/Const:output:0*
T0*'
_output_shapes
:         b
while/lstm_cell/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  а?а
while/lstm_cell/dropout/MulMul"while/lstm_cell/ones_like:output:0&while/lstm_cell/dropout/Const:output:0*
T0*'
_output_shapes
:         }
while/lstm_cell/dropout/ShapeShape"while/lstm_cell/ones_like:output:0*
T0*
_output_shapes
::э╧м
4while/lstm_cell/dropout/random_uniform/RandomUniformRandomUniform&while/lstm_cell/dropout/Shape:output:0*
T0*'
_output_shapes
:         *
dtype0k
&while/lstm_cell/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *═╠L>╓
$while/lstm_cell/dropout/GreaterEqualGreaterEqual=while/lstm_cell/dropout/random_uniform/RandomUniform:output:0/while/lstm_cell/dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:         d
while/lstm_cell/dropout/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    ╙
 while/lstm_cell/dropout/SelectV2SelectV2(while/lstm_cell/dropout/GreaterEqual:z:0while/lstm_cell/dropout/Mul:z:0(while/lstm_cell/dropout/Const_1:output:0*
T0*'
_output_shapes
:         d
while/lstm_cell/dropout_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  а?д
while/lstm_cell/dropout_1/MulMul"while/lstm_cell/ones_like:output:0(while/lstm_cell/dropout_1/Const:output:0*
T0*'
_output_shapes
:         
while/lstm_cell/dropout_1/ShapeShape"while/lstm_cell/ones_like:output:0*
T0*
_output_shapes
::э╧░
6while/lstm_cell/dropout_1/random_uniform/RandomUniformRandomUniform(while/lstm_cell/dropout_1/Shape:output:0*
T0*'
_output_shapes
:         *
dtype0m
(while/lstm_cell/dropout_1/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *═╠L>▄
&while/lstm_cell/dropout_1/GreaterEqualGreaterEqual?while/lstm_cell/dropout_1/random_uniform/RandomUniform:output:01while/lstm_cell/dropout_1/GreaterEqual/y:output:0*
T0*'
_output_shapes
:         f
!while/lstm_cell/dropout_1/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    █
"while/lstm_cell/dropout_1/SelectV2SelectV2*while/lstm_cell/dropout_1/GreaterEqual:z:0!while/lstm_cell/dropout_1/Mul:z:0*while/lstm_cell/dropout_1/Const_1:output:0*
T0*'
_output_shapes
:         d
while/lstm_cell/dropout_2/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  а?д
while/lstm_cell/dropout_2/MulMul"while/lstm_cell/ones_like:output:0(while/lstm_cell/dropout_2/Const:output:0*
T0*'
_output_shapes
:         
while/lstm_cell/dropout_2/ShapeShape"while/lstm_cell/ones_like:output:0*
T0*
_output_shapes
::э╧░
6while/lstm_cell/dropout_2/random_uniform/RandomUniformRandomUniform(while/lstm_cell/dropout_2/Shape:output:0*
T0*'
_output_shapes
:         *
dtype0m
(while/lstm_cell/dropout_2/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *═╠L>▄
&while/lstm_cell/dropout_2/GreaterEqualGreaterEqual?while/lstm_cell/dropout_2/random_uniform/RandomUniform:output:01while/lstm_cell/dropout_2/GreaterEqual/y:output:0*
T0*'
_output_shapes
:         f
!while/lstm_cell/dropout_2/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    █
"while/lstm_cell/dropout_2/SelectV2SelectV2*while/lstm_cell/dropout_2/GreaterEqual:z:0!while/lstm_cell/dropout_2/Mul:z:0*while/lstm_cell/dropout_2/Const_1:output:0*
T0*'
_output_shapes
:         d
while/lstm_cell/dropout_3/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  а?д
while/lstm_cell/dropout_3/MulMul"while/lstm_cell/ones_like:output:0(while/lstm_cell/dropout_3/Const:output:0*
T0*'
_output_shapes
:         
while/lstm_cell/dropout_3/ShapeShape"while/lstm_cell/ones_like:output:0*
T0*
_output_shapes
::э╧░
6while/lstm_cell/dropout_3/random_uniform/RandomUniformRandomUniform(while/lstm_cell/dropout_3/Shape:output:0*
T0*'
_output_shapes
:         *
dtype0m
(while/lstm_cell/dropout_3/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *═╠L>▄
&while/lstm_cell/dropout_3/GreaterEqualGreaterEqual?while/lstm_cell/dropout_3/random_uniform/RandomUniform:output:01while/lstm_cell/dropout_3/GreaterEqual/y:output:0*
T0*'
_output_shapes
:         f
!while/lstm_cell/dropout_3/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    █
"while/lstm_cell/dropout_3/SelectV2SelectV2*while/lstm_cell/dropout_3/GreaterEqual:z:0!while/lstm_cell/dropout_3/Mul:z:0*while/lstm_cell/dropout_3/Const_1:output:0*
T0*'
_output_shapes
:         й
while/lstm_cell/mulMul0while/TensorArrayV2Read/TensorListGetItem:item:0)while/lstm_cell/dropout/SelectV2:output:0*
T0*'
_output_shapes
:         Ч
%while/lstm_cell/MatMul/ReadVariableOpReadVariableOp0while_lstm_cell_matmul_readvariableop_resource_0*
_output_shapes
:	а*
dtype0Ы
while/lstm_cell/MatMulMatMulwhile/lstm_cell/mul:z:0-while/lstm_cell/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         аЫ
'while/lstm_cell/MatMul_1/ReadVariableOpReadVariableOp2while_lstm_cell_matmul_1_readvariableop_resource_0*
_output_shapes
:	Hа*
dtype0Ы
while/lstm_cell/MatMul_1MatMulwhile_placeholder_2/while/lstm_cell/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         аХ
while/lstm_cell/addAddV2 while/lstm_cell/MatMul:product:0"while/lstm_cell/MatMul_1:product:0*
T0*(
_output_shapes
:         аХ
&while/lstm_cell/BiasAdd/ReadVariableOpReadVariableOp1while_lstm_cell_biasadd_readvariableop_resource_0*
_output_shapes	
:а*
dtype0Ю
while/lstm_cell/BiasAddBiasAddwhile/lstm_cell/add:z:0.while/lstm_cell/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         аa
while/lstm_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ц
while/lstm_cell/splitSplit(while/lstm_cell/split/split_dim:output:0 while/lstm_cell/BiasAdd:output:0*
T0*`
_output_shapesN
L:         H:         H:         H:         H*
	num_splitt
while/lstm_cell/SigmoidSigmoidwhile/lstm_cell/split:output:0*
T0*'
_output_shapes
:         Hv
while/lstm_cell/Sigmoid_1Sigmoidwhile/lstm_cell/split:output:1*
T0*'
_output_shapes
:         HВ
while/lstm_cell/mul_1Mulwhile/lstm_cell/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:         Hn
while/lstm_cell/TanhTanhwhile/lstm_cell/split:output:2*
T0*'
_output_shapes
:         HЕ
while/lstm_cell/mul_2Mulwhile/lstm_cell/Sigmoid:y:0while/lstm_cell/Tanh:y:0*
T0*'
_output_shapes
:         HЖ
while/lstm_cell/add_1AddV2while/lstm_cell/mul_1:z:0while/lstm_cell/mul_2:z:0*
T0*'
_output_shapes
:         Hv
while/lstm_cell/Sigmoid_2Sigmoidwhile/lstm_cell/split:output:3*
T0*'
_output_shapes
:         Hk
while/lstm_cell/Tanh_1Tanhwhile/lstm_cell/add_1:z:0*
T0*'
_output_shapes
:         HЙ
while/lstm_cell/mul_3Mulwhile/lstm_cell/Sigmoid_2:y:0while/lstm_cell/Tanh_1:y:0*
T0*'
_output_shapes
:         H┬
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell/mul_3:z:0*
_output_shapes
: *
element_dtype0:щш╥M
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: Ж
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: v
while/Identity_4Identitywhile/lstm_cell/mul_3:z:0^while/NoOp*
T0*'
_output_shapes
:         Hv
while/Identity_5Identitywhile/lstm_cell/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:         H╟

while/NoOpNoOp'^while/lstm_cell/BiasAdd/ReadVariableOp&^while/lstm_cell/MatMul/ReadVariableOp(^while/lstm_cell/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0")
while_identitywhile/Identity:output:0"d
/while_lstm_cell_biasadd_readvariableop_resource1while_lstm_cell_biasadd_readvariableop_resource_0"f
0while_lstm_cell_matmul_1_readvariableop_resource2while_lstm_cell_matmul_1_readvariableop_resource_0"b
.while_lstm_cell_matmul_readvariableop_resource0while_lstm_cell_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"и
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :         H:         H: : : : : 2P
&while/lstm_cell/BiasAdd/ReadVariableOp&while/lstm_cell/BiasAdd/ReadVariableOp2N
%while/lstm_cell/MatMul/ReadVariableOp%while/lstm_cell/MatMul/ReadVariableOp2R
'while/lstm_cell/MatMul_1/ReadVariableOp'while/lstm_cell/MatMul_1/ReadVariableOp:

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:         H:-)
'
_output_shapes
:         H:

_output_shapes
: :

_output_shapes
: :PL

_output_shapes
: 
2
_user_specified_namewhile/maximum_iterations:J F

_output_shapes
: 
,
_user_specified_namewhile/loop_counter
¤
a
(__inference_dropout_layer_call_fn_273535

inputs
identityИвStatefulPartitionedCall┬
StatefulPartitionedCallStatefulPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:         d2* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *L
fGRE
C__inference_dropout_layer_call_and_return_conditional_losses_271788s
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:         d2`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:         d222
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:         d2
 
_user_specified_nameinputs
╢	
з
+__inference_sequential_layer_call_fn_272087
	rnn_input
unknown:	а
	unknown_0:	Hа
	unknown_1:	а
	unknown_2:H2
	unknown_3:2
	unknown_4:2
	unknown_5:
identityИвStatefulPartitionedCallг
StatefulPartitionedCallStatefulPartitionedCall	rnn_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5*
Tin

2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:         d*)
_read_only_resource_inputs
	*-
config_proto

CPU

GPU 2J 8В *O
fJRH
F__inference_sequential_layer_call_and_return_conditional_losses_272070s
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:         d`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%:         d: : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:V R
+
_output_shapes
:         d
#
_user_specified_name	rnn_input
╛;
╡
while_body_273039
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0C
0while_lstm_cell_matmul_readvariableop_resource_0:	аE
2while_lstm_cell_matmul_1_readvariableop_resource_0:	Hа@
1while_lstm_cell_biasadd_readvariableop_resource_0:	а
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorA
.while_lstm_cell_matmul_readvariableop_resource:	аC
0while_lstm_cell_matmul_1_readvariableop_resource:	Hа>
/while_lstm_cell_biasadd_readvariableop_resource:	аИв&while/lstm_cell/BiasAdd/ReadVariableOpв%while/lstm_cell/MatMul/ReadVariableOpв'while/lstm_cell/MatMul_1/ReadVariableOpИ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       ж
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:         *
element_dtype0Н
while/lstm_cell/ones_like/ShapeShape0while/TensorArrayV2Read/TensorListGetItem:item:0*
T0*
_output_shapes
::э╧d
while/lstm_cell/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  А?з
while/lstm_cell/ones_likeFill(while/lstm_cell/ones_like/Shape:output:0(while/lstm_cell/ones_like/Const:output:0*
T0*'
_output_shapes
:         в
while/lstm_cell/mulMul0while/TensorArrayV2Read/TensorListGetItem:item:0"while/lstm_cell/ones_like:output:0*
T0*'
_output_shapes
:         Ч
%while/lstm_cell/MatMul/ReadVariableOpReadVariableOp0while_lstm_cell_matmul_readvariableop_resource_0*
_output_shapes
:	а*
dtype0Ы
while/lstm_cell/MatMulMatMulwhile/lstm_cell/mul:z:0-while/lstm_cell/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         аЫ
'while/lstm_cell/MatMul_1/ReadVariableOpReadVariableOp2while_lstm_cell_matmul_1_readvariableop_resource_0*
_output_shapes
:	Hа*
dtype0Ы
while/lstm_cell/MatMul_1MatMulwhile_placeholder_2/while/lstm_cell/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         аХ
while/lstm_cell/addAddV2 while/lstm_cell/MatMul:product:0"while/lstm_cell/MatMul_1:product:0*
T0*(
_output_shapes
:         аХ
&while/lstm_cell/BiasAdd/ReadVariableOpReadVariableOp1while_lstm_cell_biasadd_readvariableop_resource_0*
_output_shapes	
:а*
dtype0Ю
while/lstm_cell/BiasAddBiasAddwhile/lstm_cell/add:z:0.while/lstm_cell/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         аa
while/lstm_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ц
while/lstm_cell/splitSplit(while/lstm_cell/split/split_dim:output:0 while/lstm_cell/BiasAdd:output:0*
T0*`
_output_shapesN
L:         H:         H:         H:         H*
	num_splitt
while/lstm_cell/SigmoidSigmoidwhile/lstm_cell/split:output:0*
T0*'
_output_shapes
:         Hv
while/lstm_cell/Sigmoid_1Sigmoidwhile/lstm_cell/split:output:1*
T0*'
_output_shapes
:         HВ
while/lstm_cell/mul_1Mulwhile/lstm_cell/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:         Hn
while/lstm_cell/TanhTanhwhile/lstm_cell/split:output:2*
T0*'
_output_shapes
:         HЕ
while/lstm_cell/mul_2Mulwhile/lstm_cell/Sigmoid:y:0while/lstm_cell/Tanh:y:0*
T0*'
_output_shapes
:         HЖ
while/lstm_cell/add_1AddV2while/lstm_cell/mul_1:z:0while/lstm_cell/mul_2:z:0*
T0*'
_output_shapes
:         Hv
while/lstm_cell/Sigmoid_2Sigmoidwhile/lstm_cell/split:output:3*
T0*'
_output_shapes
:         Hk
while/lstm_cell/Tanh_1Tanhwhile/lstm_cell/add_1:z:0*
T0*'
_output_shapes
:         HЙ
while/lstm_cell/mul_3Mulwhile/lstm_cell/Sigmoid_2:y:0while/lstm_cell/Tanh_1:y:0*
T0*'
_output_shapes
:         H┬
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell/mul_3:z:0*
_output_shapes
: *
element_dtype0:щш╥M
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: Ж
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: v
while/Identity_4Identitywhile/lstm_cell/mul_3:z:0^while/NoOp*
T0*'
_output_shapes
:         Hv
while/Identity_5Identitywhile/lstm_cell/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:         H╟

while/NoOpNoOp'^while/lstm_cell/BiasAdd/ReadVariableOp&^while/lstm_cell/MatMul/ReadVariableOp(^while/lstm_cell/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0")
while_identitywhile/Identity:output:0"d
/while_lstm_cell_biasadd_readvariableop_resource1while_lstm_cell_biasadd_readvariableop_resource_0"f
0while_lstm_cell_matmul_1_readvariableop_resource2while_lstm_cell_matmul_1_readvariableop_resource_0"b
.while_lstm_cell_matmul_readvariableop_resource0while_lstm_cell_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"и
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :         H:         H: : : : : 2P
&while/lstm_cell/BiasAdd/ReadVariableOp&while/lstm_cell/BiasAdd/ReadVariableOp2N
%while/lstm_cell/MatMul/ReadVariableOp%while/lstm_cell/MatMul/ReadVariableOp2R
'while/lstm_cell/MatMul_1/ReadVariableOp'while/lstm_cell/MatMul_1/ReadVariableOp:

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:         H:-)
'
_output_shapes
:         H:

_output_shapes
: :

_output_shapes
: :PL

_output_shapes
: 
2
_user_specified_namewhile/maximum_iterations:J F

_output_shapes
: 
,
_user_specified_namewhile/loop_counter
╪
·
C__inference_dense_1_layer_call_and_return_conditional_losses_273596

inputs3
!tensordot_readvariableop_resource:2-
biasadd_readvariableop_resource:
identityИвBiasAdd/ReadVariableOpвTensordot/ReadVariableOpz
Tensordot/ReadVariableOpReadVariableOp!tensordot_readvariableop_resource*
_output_shapes

:2*
dtype0X
Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:_
Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       S
Tensordot/ShapeShapeinputs*
T0*
_output_shapes
::э╧Y
Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : ╗
Tensordot/GatherV2GatherV2Tensordot/Shape:output:0Tensordot/free:output:0 Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:[
Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ┐
Tensordot/GatherV2_1GatherV2Tensordot/Shape:output:0Tensordot/axes:output:0"Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:Y
Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: n
Tensordot/ProdProdTensordot/GatherV2:output:0Tensordot/Const:output:0*
T0*
_output_shapes
: [
Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: t
Tensordot/Prod_1ProdTensordot/GatherV2_1:output:0Tensordot/Const_1:output:0*
T0*
_output_shapes
: W
Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : Ь
Tensordot/concatConcatV2Tensordot/free:output:0Tensordot/axes:output:0Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:y
Tensordot/stackPackTensordot/Prod:output:0Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:y
Tensordot/transpose	TransposeinputsTensordot/concat:output:0*
T0*+
_output_shapes
:         d2К
Tensordot/ReshapeReshapeTensordot/transpose:y:0Tensordot/stack:output:0*
T0*0
_output_shapes
:                  К
Tensordot/MatMulMatMulTensordot/Reshape:output:0 Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:         [
Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:Y
Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : з
Tensordot/concat_1ConcatV2Tensordot/GatherV2:output:0Tensordot/Const_2:output:0 Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:Г
	TensordotReshapeTensordot/MatMul:product:0Tensordot/concat_1:output:0*
T0*+
_output_shapes
:         dr
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0|
BiasAddBiasAddTensordot:output:0BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:         dc
IdentityIdentityBiasAdd:output:0^NoOp*
T0*+
_output_shapes
:         dz
NoOpNoOp^BiasAdd/ReadVariableOp^Tensordot/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:         d2: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp24
Tensordot/ReadVariableOpTensordot/ReadVariableOp:S O
+
_output_shapes
:         d2
 
_user_specified_nameinputs
сo
З
?__inference_rnn_layer_call_and_return_conditional_losses_272976
inputs_0;
(lstm_cell_matmul_readvariableop_resource:	а=
*lstm_cell_matmul_1_readvariableop_resource:	Hа8
)lstm_cell_biasadd_readvariableop_resource:	а
identityИв lstm_cell/BiasAdd/ReadVariableOpвlstm_cell/MatMul/ReadVariableOpв!lstm_cell/MatMul_1/ReadVariableOpвwhileK
ShapeShapeinputs_0*
T0*
_output_shapes
::э╧]
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
valueB:╤
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskP
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :Hs
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    l
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:         HR
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :Hw
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:R
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    r
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:         Hc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          x
	transpose	Transposeinputs_0transpose/perm:output:0*
T0*4
_output_shapes"
 :                  R
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
::э╧_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
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
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
         ┤
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щш╥Ж
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       р
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щш╥_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:щ
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         *
shrink_axis_masko
lstm_cell/ones_like/ShapeShapestrided_slice_2:output:0*
T0*
_output_shapes
::э╧^
lstm_cell/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  А?Х
lstm_cell/ones_likeFill"lstm_cell/ones_like/Shape:output:0"lstm_cell/ones_like/Const:output:0*
T0*'
_output_shapes
:         \
lstm_cell/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  а?О
lstm_cell/dropout/MulMullstm_cell/ones_like:output:0 lstm_cell/dropout/Const:output:0*
T0*'
_output_shapes
:         q
lstm_cell/dropout/ShapeShapelstm_cell/ones_like:output:0*
T0*
_output_shapes
::э╧а
.lstm_cell/dropout/random_uniform/RandomUniformRandomUniform lstm_cell/dropout/Shape:output:0*
T0*'
_output_shapes
:         *
dtype0e
 lstm_cell/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *═╠L>─
lstm_cell/dropout/GreaterEqualGreaterEqual7lstm_cell/dropout/random_uniform/RandomUniform:output:0)lstm_cell/dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:         ^
lstm_cell/dropout/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    ╗
lstm_cell/dropout/SelectV2SelectV2"lstm_cell/dropout/GreaterEqual:z:0lstm_cell/dropout/Mul:z:0"lstm_cell/dropout/Const_1:output:0*
T0*'
_output_shapes
:         ^
lstm_cell/dropout_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  а?Т
lstm_cell/dropout_1/MulMullstm_cell/ones_like:output:0"lstm_cell/dropout_1/Const:output:0*
T0*'
_output_shapes
:         s
lstm_cell/dropout_1/ShapeShapelstm_cell/ones_like:output:0*
T0*
_output_shapes
::э╧д
0lstm_cell/dropout_1/random_uniform/RandomUniformRandomUniform"lstm_cell/dropout_1/Shape:output:0*
T0*'
_output_shapes
:         *
dtype0g
"lstm_cell/dropout_1/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *═╠L>╩
 lstm_cell/dropout_1/GreaterEqualGreaterEqual9lstm_cell/dropout_1/random_uniform/RandomUniform:output:0+lstm_cell/dropout_1/GreaterEqual/y:output:0*
T0*'
_output_shapes
:         `
lstm_cell/dropout_1/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    ├
lstm_cell/dropout_1/SelectV2SelectV2$lstm_cell/dropout_1/GreaterEqual:z:0lstm_cell/dropout_1/Mul:z:0$lstm_cell/dropout_1/Const_1:output:0*
T0*'
_output_shapes
:         ^
lstm_cell/dropout_2/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  а?Т
lstm_cell/dropout_2/MulMullstm_cell/ones_like:output:0"lstm_cell/dropout_2/Const:output:0*
T0*'
_output_shapes
:         s
lstm_cell/dropout_2/ShapeShapelstm_cell/ones_like:output:0*
T0*
_output_shapes
::э╧д
0lstm_cell/dropout_2/random_uniform/RandomUniformRandomUniform"lstm_cell/dropout_2/Shape:output:0*
T0*'
_output_shapes
:         *
dtype0g
"lstm_cell/dropout_2/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *═╠L>╩
 lstm_cell/dropout_2/GreaterEqualGreaterEqual9lstm_cell/dropout_2/random_uniform/RandomUniform:output:0+lstm_cell/dropout_2/GreaterEqual/y:output:0*
T0*'
_output_shapes
:         `
lstm_cell/dropout_2/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    ├
lstm_cell/dropout_2/SelectV2SelectV2$lstm_cell/dropout_2/GreaterEqual:z:0lstm_cell/dropout_2/Mul:z:0$lstm_cell/dropout_2/Const_1:output:0*
T0*'
_output_shapes
:         ^
lstm_cell/dropout_3/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  а?Т
lstm_cell/dropout_3/MulMullstm_cell/ones_like:output:0"lstm_cell/dropout_3/Const:output:0*
T0*'
_output_shapes
:         s
lstm_cell/dropout_3/ShapeShapelstm_cell/ones_like:output:0*
T0*
_output_shapes
::э╧д
0lstm_cell/dropout_3/random_uniform/RandomUniformRandomUniform"lstm_cell/dropout_3/Shape:output:0*
T0*'
_output_shapes
:         *
dtype0g
"lstm_cell/dropout_3/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *═╠L>╩
 lstm_cell/dropout_3/GreaterEqualGreaterEqual9lstm_cell/dropout_3/random_uniform/RandomUniform:output:0+lstm_cell/dropout_3/GreaterEqual/y:output:0*
T0*'
_output_shapes
:         `
lstm_cell/dropout_3/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    ├
lstm_cell/dropout_3/SelectV2SelectV2$lstm_cell/dropout_3/GreaterEqual:z:0lstm_cell/dropout_3/Mul:z:0$lstm_cell/dropout_3/Const_1:output:0*
T0*'
_output_shapes
:         Е
lstm_cell/mulMulstrided_slice_2:output:0#lstm_cell/dropout/SelectV2:output:0*
T0*'
_output_shapes
:         Й
lstm_cell/MatMul/ReadVariableOpReadVariableOp(lstm_cell_matmul_readvariableop_resource*
_output_shapes
:	а*
dtype0Й
lstm_cell/MatMulMatMullstm_cell/mul:z:0'lstm_cell/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         аН
!lstm_cell/MatMul_1/ReadVariableOpReadVariableOp*lstm_cell_matmul_1_readvariableop_resource*
_output_shapes
:	Hа*
dtype0К
lstm_cell/MatMul_1MatMulzeros:output:0)lstm_cell/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         аГ
lstm_cell/addAddV2lstm_cell/MatMul:product:0lstm_cell/MatMul_1:product:0*
T0*(
_output_shapes
:         аЗ
 lstm_cell/BiasAdd/ReadVariableOpReadVariableOp)lstm_cell_biasadd_readvariableop_resource*
_output_shapes	
:а*
dtype0М
lstm_cell/BiasAddBiasAddlstm_cell/add:z:0(lstm_cell/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         а[
lstm_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :╘
lstm_cell/splitSplit"lstm_cell/split/split_dim:output:0lstm_cell/BiasAdd:output:0*
T0*`
_output_shapesN
L:         H:         H:         H:         H*
	num_splith
lstm_cell/SigmoidSigmoidlstm_cell/split:output:0*
T0*'
_output_shapes
:         Hj
lstm_cell/Sigmoid_1Sigmoidlstm_cell/split:output:1*
T0*'
_output_shapes
:         Hs
lstm_cell/mul_1Mullstm_cell/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:         Hb
lstm_cell/TanhTanhlstm_cell/split:output:2*
T0*'
_output_shapes
:         Hs
lstm_cell/mul_2Mullstm_cell/Sigmoid:y:0lstm_cell/Tanh:y:0*
T0*'
_output_shapes
:         Ht
lstm_cell/add_1AddV2lstm_cell/mul_1:z:0lstm_cell/mul_2:z:0*
T0*'
_output_shapes
:         Hj
lstm_cell/Sigmoid_2Sigmoidlstm_cell/split:output:3*
T0*'
_output_shapes
:         H_
lstm_cell/Tanh_1Tanhlstm_cell/add_1:z:0*
T0*'
_output_shapes
:         Hw
lstm_cell/mul_3Mullstm_cell/Sigmoid_2:y:0lstm_cell/Tanh_1:y:0*
T0*'
_output_shapes
:         Hn
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    H   ╕
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щш╥F
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
         T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ∙
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0(lstm_cell_matmul_readvariableop_resource*lstm_cell_matmul_1_readvariableop_resource)lstm_cell_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :         H:         H: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_272857*
condR
while_cond_272856*K
output_shapes:
8: : : : :         H:         H: : : : : *
parallel_iterations Б
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    H   ╦
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :                  H*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
         a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:З
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         H*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          Я
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :                  Hk
IdentityIdentitytranspose_1:y:0^NoOp*
T0*4
_output_shapes"
 :                  H╖
NoOpNoOp!^lstm_cell/BiasAdd/ReadVariableOp ^lstm_cell/MatMul/ReadVariableOp"^lstm_cell/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:                  : : : 2D
 lstm_cell/BiasAdd/ReadVariableOp lstm_cell/BiasAdd/ReadVariableOp2B
lstm_cell/MatMul/ReadVariableOplstm_cell/MatMul/ReadVariableOp2F
!lstm_cell/MatMul_1/ReadVariableOp!lstm_cell/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :                  
"
_user_specified_name
inputs_0
┴
Б
E__inference_lstm_cell_layer_call_and_return_conditional_losses_271374

inputs

states
states_11
matmul_readvariableop_resource:	а3
 matmul_1_readvariableop_resource:	Hа.
biasadd_readvariableop_resource:	а
identity

identity_1

identity_2ИвBiasAdd/ReadVariableOpвMatMul/ReadVariableOpвMatMul_1/ReadVariableOpS
ones_like/ShapeShapeinputs*
T0*
_output_shapes
::э╧T
ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  А?w
	ones_likeFillones_like/Shape:output:0ones_like/Const:output:0*
T0*'
_output_shapes
:         X
mulMulinputsones_like:output:0*
T0*'
_output_shapes
:         u
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	а*
dtype0k
MatMulMatMulmul:z:0MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         аy
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes
:	Hа*
dtype0n
MatMul_1MatMulstatesMatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         аe
addAddV2MatMul:product:0MatMul_1:product:0*
T0*(
_output_shapes
:         аs
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:а*
dtype0n
BiasAddBiasAddadd:z:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         аQ
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :╢
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*`
_output_shapesN
L:         H:         H:         H:         H*
	num_splitT
SigmoidSigmoidsplit:output:0*
T0*'
_output_shapes
:         HV
	Sigmoid_1Sigmoidsplit:output:1*
T0*'
_output_shapes
:         HW
mul_1MulSigmoid_1:y:0states_1*
T0*'
_output_shapes
:         HN
TanhTanhsplit:output:2*
T0*'
_output_shapes
:         HU
mul_2MulSigmoid:y:0Tanh:y:0*
T0*'
_output_shapes
:         HV
add_1AddV2	mul_1:z:0	mul_2:z:0*
T0*'
_output_shapes
:         HV
	Sigmoid_2Sigmoidsplit:output:3*
T0*'
_output_shapes
:         HK
Tanh_1Tanh	add_1:z:0*
T0*'
_output_shapes
:         HY
mul_3MulSigmoid_2:y:0
Tanh_1:y:0*
T0*'
_output_shapes
:         HX
IdentityIdentity	mul_3:z:0^NoOp*
T0*'
_output_shapes
:         HZ

Identity_1Identity	mul_3:z:0^NoOp*
T0*'
_output_shapes
:         HZ

Identity_2Identity	add_1:z:0^NoOp*
T0*'
_output_shapes
:         HС
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:         :         H:         H: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:OK
'
_output_shapes
:         H
 
_user_specified_namestates:OK
'
_output_shapes
:         H
 
_user_specified_namestates:O K
'
_output_shapes
:         
 
_user_specified_nameinputs
Ч	
├
while_cond_272856
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_272856___redundant_placeholder04
0while_while_cond_272856___redundant_placeholder14
0while_while_cond_272856___redundant_placeholder24
0while_while_cond_272856___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :         H:         H: :::::

_output_shapes
::

_output_shapes
: :-)
'
_output_shapes
:         H:-)
'
_output_shapes
:         H:

_output_shapes
: :

_output_shapes
: :PL

_output_shapes
: 
2
_user_specified_namewhile/maximum_iterations:J F

_output_shapes
: 
,
_user_specified_namewhile/loop_counter
Ч	
├
while_cond_273220
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_273220___redundant_placeholder04
0while_while_cond_273220___redundant_placeholder14
0while_while_cond_273220___redundant_placeholder24
0while_while_cond_273220___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :         H:         H: :::::

_output_shapes
::

_output_shapes
: :-)
'
_output_shapes
:         H:-)
'
_output_shapes
:         H:

_output_shapes
: :

_output_shapes
: :PL

_output_shapes
: 
2
_user_specified_namewhile/maximum_iterations:J F

_output_shapes
: 
,
_user_specified_namewhile/loop_counter
н	
д
+__inference_sequential_layer_call_fn_272220

inputs
unknown:	а
	unknown_0:	Hа
	unknown_1:	а
	unknown_2:H2
	unknown_3:2
	unknown_4:2
	unknown_5:
identityИвStatefulPartitionedCallа
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5*
Tin

2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:         d*)
_read_only_resource_inputs
	*-
config_proto

CPU

GPU 2J 8В *O
fJRH
F__inference_sequential_layer_call_and_return_conditional_losses_272029s
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:         d`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%:         d: : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:         d
 
_user_specified_nameinputs
─@
╡	
rnn_while_body_272577$
 rnn_while_rnn_while_loop_counter*
&rnn_while_rnn_while_maximum_iterations
rnn_while_placeholder
rnn_while_placeholder_1
rnn_while_placeholder_2
rnn_while_placeholder_3#
rnn_while_rnn_strided_slice_1_0_
[rnn_while_tensorarrayv2read_tensorlistgetitem_rnn_tensorarrayunstack_tensorlistfromtensor_0G
4rnn_while_lstm_cell_matmul_readvariableop_resource_0:	аI
6rnn_while_lstm_cell_matmul_1_readvariableop_resource_0:	HаD
5rnn_while_lstm_cell_biasadd_readvariableop_resource_0:	а
rnn_while_identity
rnn_while_identity_1
rnn_while_identity_2
rnn_while_identity_3
rnn_while_identity_4
rnn_while_identity_5!
rnn_while_rnn_strided_slice_1]
Yrnn_while_tensorarrayv2read_tensorlistgetitem_rnn_tensorarrayunstack_tensorlistfromtensorE
2rnn_while_lstm_cell_matmul_readvariableop_resource:	аG
4rnn_while_lstm_cell_matmul_1_readvariableop_resource:	HаB
3rnn_while_lstm_cell_biasadd_readvariableop_resource:	аИв*rnn/while/lstm_cell/BiasAdd/ReadVariableOpв)rnn/while/lstm_cell/MatMul/ReadVariableOpв+rnn/while/lstm_cell/MatMul_1/ReadVariableOpМ
;rnn/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       ║
-rnn/while/TensorArrayV2Read/TensorListGetItemTensorListGetItem[rnn_while_tensorarrayv2read_tensorlistgetitem_rnn_tensorarrayunstack_tensorlistfromtensor_0rnn_while_placeholderDrnn/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:         *
element_dtype0Х
#rnn/while/lstm_cell/ones_like/ShapeShape4rnn/while/TensorArrayV2Read/TensorListGetItem:item:0*
T0*
_output_shapes
::э╧h
#rnn/while/lstm_cell/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  А?│
rnn/while/lstm_cell/ones_likeFill,rnn/while/lstm_cell/ones_like/Shape:output:0,rnn/while/lstm_cell/ones_like/Const:output:0*
T0*'
_output_shapes
:         о
rnn/while/lstm_cell/mulMul4rnn/while/TensorArrayV2Read/TensorListGetItem:item:0&rnn/while/lstm_cell/ones_like:output:0*
T0*'
_output_shapes
:         Я
)rnn/while/lstm_cell/MatMul/ReadVariableOpReadVariableOp4rnn_while_lstm_cell_matmul_readvariableop_resource_0*
_output_shapes
:	а*
dtype0з
rnn/while/lstm_cell/MatMulMatMulrnn/while/lstm_cell/mul:z:01rnn/while/lstm_cell/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         аг
+rnn/while/lstm_cell/MatMul_1/ReadVariableOpReadVariableOp6rnn_while_lstm_cell_matmul_1_readvariableop_resource_0*
_output_shapes
:	Hа*
dtype0з
rnn/while/lstm_cell/MatMul_1MatMulrnn_while_placeholder_23rnn/while/lstm_cell/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         аб
rnn/while/lstm_cell/addAddV2$rnn/while/lstm_cell/MatMul:product:0&rnn/while/lstm_cell/MatMul_1:product:0*
T0*(
_output_shapes
:         аЭ
*rnn/while/lstm_cell/BiasAdd/ReadVariableOpReadVariableOp5rnn_while_lstm_cell_biasadd_readvariableop_resource_0*
_output_shapes	
:а*
dtype0к
rnn/while/lstm_cell/BiasAddBiasAddrnn/while/lstm_cell/add:z:02rnn/while/lstm_cell/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         аe
#rnn/while/lstm_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Є
rnn/while/lstm_cell/splitSplit,rnn/while/lstm_cell/split/split_dim:output:0$rnn/while/lstm_cell/BiasAdd:output:0*
T0*`
_output_shapesN
L:         H:         H:         H:         H*
	num_split|
rnn/while/lstm_cell/SigmoidSigmoid"rnn/while/lstm_cell/split:output:0*
T0*'
_output_shapes
:         H~
rnn/while/lstm_cell/Sigmoid_1Sigmoid"rnn/while/lstm_cell/split:output:1*
T0*'
_output_shapes
:         HО
rnn/while/lstm_cell/mul_1Mul!rnn/while/lstm_cell/Sigmoid_1:y:0rnn_while_placeholder_3*
T0*'
_output_shapes
:         Hv
rnn/while/lstm_cell/TanhTanh"rnn/while/lstm_cell/split:output:2*
T0*'
_output_shapes
:         HС
rnn/while/lstm_cell/mul_2Mulrnn/while/lstm_cell/Sigmoid:y:0rnn/while/lstm_cell/Tanh:y:0*
T0*'
_output_shapes
:         HТ
rnn/while/lstm_cell/add_1AddV2rnn/while/lstm_cell/mul_1:z:0rnn/while/lstm_cell/mul_2:z:0*
T0*'
_output_shapes
:         H~
rnn/while/lstm_cell/Sigmoid_2Sigmoid"rnn/while/lstm_cell/split:output:3*
T0*'
_output_shapes
:         Hs
rnn/while/lstm_cell/Tanh_1Tanhrnn/while/lstm_cell/add_1:z:0*
T0*'
_output_shapes
:         HХ
rnn/while/lstm_cell/mul_3Mul!rnn/while/lstm_cell/Sigmoid_2:y:0rnn/while/lstm_cell/Tanh_1:y:0*
T0*'
_output_shapes
:         H╥
.rnn/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemrnn_while_placeholder_1rnn_while_placeholderrnn/while/lstm_cell/mul_3:z:0*
_output_shapes
: *
element_dtype0:щш╥Q
rnn/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :h
rnn/while/addAddV2rnn_while_placeholderrnn/while/add/y:output:0*
T0*
_output_shapes
: S
rnn/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :w
rnn/while/add_1AddV2 rnn_while_rnn_while_loop_counterrnn/while/add_1/y:output:0*
T0*
_output_shapes
: e
rnn/while/IdentityIdentityrnn/while/add_1:z:0^rnn/while/NoOp*
T0*
_output_shapes
: z
rnn/while/Identity_1Identity&rnn_while_rnn_while_maximum_iterations^rnn/while/NoOp*
T0*
_output_shapes
: e
rnn/while/Identity_2Identityrnn/while/add:z:0^rnn/while/NoOp*
T0*
_output_shapes
: Т
rnn/while/Identity_3Identity>rnn/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^rnn/while/NoOp*
T0*
_output_shapes
: В
rnn/while/Identity_4Identityrnn/while/lstm_cell/mul_3:z:0^rnn/while/NoOp*
T0*'
_output_shapes
:         HВ
rnn/while/Identity_5Identityrnn/while/lstm_cell/add_1:z:0^rnn/while/NoOp*
T0*'
_output_shapes
:         H╫
rnn/while/NoOpNoOp+^rnn/while/lstm_cell/BiasAdd/ReadVariableOp*^rnn/while/lstm_cell/MatMul/ReadVariableOp,^rnn/while/lstm_cell/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "5
rnn_while_identity_1rnn/while/Identity_1:output:0"5
rnn_while_identity_2rnn/while/Identity_2:output:0"5
rnn_while_identity_3rnn/while/Identity_3:output:0"5
rnn_while_identity_4rnn/while/Identity_4:output:0"5
rnn_while_identity_5rnn/while/Identity_5:output:0"1
rnn_while_identityrnn/while/Identity:output:0"l
3rnn_while_lstm_cell_biasadd_readvariableop_resource5rnn_while_lstm_cell_biasadd_readvariableop_resource_0"n
4rnn_while_lstm_cell_matmul_1_readvariableop_resource6rnn_while_lstm_cell_matmul_1_readvariableop_resource_0"j
2rnn_while_lstm_cell_matmul_readvariableop_resource4rnn_while_lstm_cell_matmul_readvariableop_resource_0"@
rnn_while_rnn_strided_slice_1rnn_while_rnn_strided_slice_1_0"╕
Yrnn_while_tensorarrayv2read_tensorlistgetitem_rnn_tensorarrayunstack_tensorlistfromtensor[rnn_while_tensorarrayv2read_tensorlistgetitem_rnn_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :         H:         H: : : : : 2X
*rnn/while/lstm_cell/BiasAdd/ReadVariableOp*rnn/while/lstm_cell/BiasAdd/ReadVariableOp2V
)rnn/while/lstm_cell/MatMul/ReadVariableOp)rnn/while/lstm_cell/MatMul/ReadVariableOp2Z
+rnn/while/lstm_cell/MatMul_1/ReadVariableOp+rnn/while/lstm_cell/MatMul_1/ReadVariableOp:

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:         H:-)
'
_output_shapes
:         H:

_output_shapes
: :

_output_shapes
: :TP

_output_shapes
: 
6
_user_specified_namernn/while/maximum_iterations:N J

_output_shapes
: 
0
_user_specified_namernn/while/loop_counter
│

b
C__inference_dropout_layer_call_and_return_conditional_losses_273552

inputs
identityИR
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  а?h
dropout/MulMulinputsdropout/Const:output:0*
T0*+
_output_shapes
:         d2Q
dropout/ShapeShapeinputs*
T0*
_output_shapes
::э╧Р
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*+
_output_shapes
:         d2*
dtype0[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *═╠L>к
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*+
_output_shapes
:         d2T
dropout/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    Ч
dropout/SelectV2SelectV2dropout/GreaterEqual:z:0dropout/Mul:z:0dropout/Const_1:output:0*
T0*+
_output_shapes
:         d2e
IdentityIdentitydropout/SelectV2:output:0*
T0*+
_output_shapes
:         d2"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:         d2:S O
+
_output_shapes
:         d2
 
_user_specified_nameinputs
╢╣
Р
F__inference_sequential_layer_call_and_return_conditional_losses_272514

inputs?
,rnn_lstm_cell_matmul_readvariableop_resource:	аA
.rnn_lstm_cell_matmul_1_readvariableop_resource:	Hа<
-rnn_lstm_cell_biasadd_readvariableop_resource:	а9
'dense_tensordot_readvariableop_resource:H23
%dense_biasadd_readvariableop_resource:2;
)dense_1_tensordot_readvariableop_resource:25
'dense_1_biasadd_readvariableop_resource:
identityИвdense/BiasAdd/ReadVariableOpвdense/Tensordot/ReadVariableOpвdense_1/BiasAdd/ReadVariableOpв dense_1/Tensordot/ReadVariableOpв$rnn/lstm_cell/BiasAdd/ReadVariableOpв#rnn/lstm_cell/MatMul/ReadVariableOpв%rnn/lstm_cell/MatMul_1/ReadVariableOpв	rnn/whileM
	rnn/ShapeShapeinputs*
T0*
_output_shapes
::э╧a
rnn/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: c
rnn/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:c
rnn/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:х
rnn/strided_sliceStridedSlicernn/Shape:output:0 rnn/strided_slice/stack:output:0"rnn/strided_slice/stack_1:output:0"rnn/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskT
rnn/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :H
rnn/zeros/packedPackrnn/strided_slice:output:0rnn/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:T
rnn/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    x
	rnn/zerosFillrnn/zeros/packed:output:0rnn/zeros/Const:output:0*
T0*'
_output_shapes
:         HV
rnn/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :HГ
rnn/zeros_1/packedPackrnn/strided_slice:output:0rnn/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:V
rnn/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ~
rnn/zeros_1Fillrnn/zeros_1/packed:output:0rnn/zeros_1/Const:output:0*
T0*'
_output_shapes
:         Hg
rnn/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          u
rnn/transpose	Transposeinputsrnn/transpose/perm:output:0*
T0*+
_output_shapes
:d         Z
rnn/Shape_1Shapernn/transpose:y:0*
T0*
_output_shapes
::э╧c
rnn/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: e
rnn/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:e
rnn/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:я
rnn/strided_slice_1StridedSlicernn/Shape_1:output:0"rnn/strided_slice_1/stack:output:0$rnn/strided_slice_1/stack_1:output:0$rnn/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskj
rnn/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
         └
rnn/TensorArrayV2TensorListReserve(rnn/TensorArrayV2/element_shape:output:0rnn/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щш╥К
9rnn/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       ь
+rnn/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorrnn/transpose:y:0Brnn/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щш╥c
rnn/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: e
rnn/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:e
rnn/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:¤
rnn/strided_slice_2StridedSlicernn/transpose:y:0"rnn/strided_slice_2/stack:output:0$rnn/strided_slice_2/stack_1:output:0$rnn/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         *
shrink_axis_maskw
rnn/lstm_cell/ones_like/ShapeShapernn/strided_slice_2:output:0*
T0*
_output_shapes
::э╧b
rnn/lstm_cell/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  А?б
rnn/lstm_cell/ones_likeFill&rnn/lstm_cell/ones_like/Shape:output:0&rnn/lstm_cell/ones_like/Const:output:0*
T0*'
_output_shapes
:         `
rnn/lstm_cell/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  а?Ъ
rnn/lstm_cell/dropout/MulMul rnn/lstm_cell/ones_like:output:0$rnn/lstm_cell/dropout/Const:output:0*
T0*'
_output_shapes
:         y
rnn/lstm_cell/dropout/ShapeShape rnn/lstm_cell/ones_like:output:0*
T0*
_output_shapes
::э╧и
2rnn/lstm_cell/dropout/random_uniform/RandomUniformRandomUniform$rnn/lstm_cell/dropout/Shape:output:0*
T0*'
_output_shapes
:         *
dtype0i
$rnn/lstm_cell/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *═╠L>╨
"rnn/lstm_cell/dropout/GreaterEqualGreaterEqual;rnn/lstm_cell/dropout/random_uniform/RandomUniform:output:0-rnn/lstm_cell/dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:         b
rnn/lstm_cell/dropout/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    ╦
rnn/lstm_cell/dropout/SelectV2SelectV2&rnn/lstm_cell/dropout/GreaterEqual:z:0rnn/lstm_cell/dropout/Mul:z:0&rnn/lstm_cell/dropout/Const_1:output:0*
T0*'
_output_shapes
:         b
rnn/lstm_cell/dropout_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  а?Ю
rnn/lstm_cell/dropout_1/MulMul rnn/lstm_cell/ones_like:output:0&rnn/lstm_cell/dropout_1/Const:output:0*
T0*'
_output_shapes
:         {
rnn/lstm_cell/dropout_1/ShapeShape rnn/lstm_cell/ones_like:output:0*
T0*
_output_shapes
::э╧м
4rnn/lstm_cell/dropout_1/random_uniform/RandomUniformRandomUniform&rnn/lstm_cell/dropout_1/Shape:output:0*
T0*'
_output_shapes
:         *
dtype0k
&rnn/lstm_cell/dropout_1/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *═╠L>╓
$rnn/lstm_cell/dropout_1/GreaterEqualGreaterEqual=rnn/lstm_cell/dropout_1/random_uniform/RandomUniform:output:0/rnn/lstm_cell/dropout_1/GreaterEqual/y:output:0*
T0*'
_output_shapes
:         d
rnn/lstm_cell/dropout_1/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    ╙
 rnn/lstm_cell/dropout_1/SelectV2SelectV2(rnn/lstm_cell/dropout_1/GreaterEqual:z:0rnn/lstm_cell/dropout_1/Mul:z:0(rnn/lstm_cell/dropout_1/Const_1:output:0*
T0*'
_output_shapes
:         b
rnn/lstm_cell/dropout_2/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  а?Ю
rnn/lstm_cell/dropout_2/MulMul rnn/lstm_cell/ones_like:output:0&rnn/lstm_cell/dropout_2/Const:output:0*
T0*'
_output_shapes
:         {
rnn/lstm_cell/dropout_2/ShapeShape rnn/lstm_cell/ones_like:output:0*
T0*
_output_shapes
::э╧м
4rnn/lstm_cell/dropout_2/random_uniform/RandomUniformRandomUniform&rnn/lstm_cell/dropout_2/Shape:output:0*
T0*'
_output_shapes
:         *
dtype0k
&rnn/lstm_cell/dropout_2/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *═╠L>╓
$rnn/lstm_cell/dropout_2/GreaterEqualGreaterEqual=rnn/lstm_cell/dropout_2/random_uniform/RandomUniform:output:0/rnn/lstm_cell/dropout_2/GreaterEqual/y:output:0*
T0*'
_output_shapes
:         d
rnn/lstm_cell/dropout_2/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    ╙
 rnn/lstm_cell/dropout_2/SelectV2SelectV2(rnn/lstm_cell/dropout_2/GreaterEqual:z:0rnn/lstm_cell/dropout_2/Mul:z:0(rnn/lstm_cell/dropout_2/Const_1:output:0*
T0*'
_output_shapes
:         b
rnn/lstm_cell/dropout_3/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  а?Ю
rnn/lstm_cell/dropout_3/MulMul rnn/lstm_cell/ones_like:output:0&rnn/lstm_cell/dropout_3/Const:output:0*
T0*'
_output_shapes
:         {
rnn/lstm_cell/dropout_3/ShapeShape rnn/lstm_cell/ones_like:output:0*
T0*
_output_shapes
::э╧м
4rnn/lstm_cell/dropout_3/random_uniform/RandomUniformRandomUniform&rnn/lstm_cell/dropout_3/Shape:output:0*
T0*'
_output_shapes
:         *
dtype0k
&rnn/lstm_cell/dropout_3/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *═╠L>╓
$rnn/lstm_cell/dropout_3/GreaterEqualGreaterEqual=rnn/lstm_cell/dropout_3/random_uniform/RandomUniform:output:0/rnn/lstm_cell/dropout_3/GreaterEqual/y:output:0*
T0*'
_output_shapes
:         d
rnn/lstm_cell/dropout_3/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    ╙
 rnn/lstm_cell/dropout_3/SelectV2SelectV2(rnn/lstm_cell/dropout_3/GreaterEqual:z:0rnn/lstm_cell/dropout_3/Mul:z:0(rnn/lstm_cell/dropout_3/Const_1:output:0*
T0*'
_output_shapes
:         С
rnn/lstm_cell/mulMulrnn/strided_slice_2:output:0'rnn/lstm_cell/dropout/SelectV2:output:0*
T0*'
_output_shapes
:         С
#rnn/lstm_cell/MatMul/ReadVariableOpReadVariableOp,rnn_lstm_cell_matmul_readvariableop_resource*
_output_shapes
:	а*
dtype0Х
rnn/lstm_cell/MatMulMatMulrnn/lstm_cell/mul:z:0+rnn/lstm_cell/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         аХ
%rnn/lstm_cell/MatMul_1/ReadVariableOpReadVariableOp.rnn_lstm_cell_matmul_1_readvariableop_resource*
_output_shapes
:	Hа*
dtype0Ц
rnn/lstm_cell/MatMul_1MatMulrnn/zeros:output:0-rnn/lstm_cell/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         аП
rnn/lstm_cell/addAddV2rnn/lstm_cell/MatMul:product:0 rnn/lstm_cell/MatMul_1:product:0*
T0*(
_output_shapes
:         аП
$rnn/lstm_cell/BiasAdd/ReadVariableOpReadVariableOp-rnn_lstm_cell_biasadd_readvariableop_resource*
_output_shapes	
:а*
dtype0Ш
rnn/lstm_cell/BiasAddBiasAddrnn/lstm_cell/add:z:0,rnn/lstm_cell/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         а_
rnn/lstm_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :р
rnn/lstm_cell/splitSplit&rnn/lstm_cell/split/split_dim:output:0rnn/lstm_cell/BiasAdd:output:0*
T0*`
_output_shapesN
L:         H:         H:         H:         H*
	num_splitp
rnn/lstm_cell/SigmoidSigmoidrnn/lstm_cell/split:output:0*
T0*'
_output_shapes
:         Hr
rnn/lstm_cell/Sigmoid_1Sigmoidrnn/lstm_cell/split:output:1*
T0*'
_output_shapes
:         H
rnn/lstm_cell/mul_1Mulrnn/lstm_cell/Sigmoid_1:y:0rnn/zeros_1:output:0*
T0*'
_output_shapes
:         Hj
rnn/lstm_cell/TanhTanhrnn/lstm_cell/split:output:2*
T0*'
_output_shapes
:         H
rnn/lstm_cell/mul_2Mulrnn/lstm_cell/Sigmoid:y:0rnn/lstm_cell/Tanh:y:0*
T0*'
_output_shapes
:         HА
rnn/lstm_cell/add_1AddV2rnn/lstm_cell/mul_1:z:0rnn/lstm_cell/mul_2:z:0*
T0*'
_output_shapes
:         Hr
rnn/lstm_cell/Sigmoid_2Sigmoidrnn/lstm_cell/split:output:3*
T0*'
_output_shapes
:         Hg
rnn/lstm_cell/Tanh_1Tanhrnn/lstm_cell/add_1:z:0*
T0*'
_output_shapes
:         HГ
rnn/lstm_cell/mul_3Mulrnn/lstm_cell/Sigmoid_2:y:0rnn/lstm_cell/Tanh_1:y:0*
T0*'
_output_shapes
:         Hr
!rnn/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    H   ─
rnn/TensorArrayV2_1TensorListReserve*rnn/TensorArrayV2_1/element_shape:output:0rnn/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щш╥J
rnn/timeConst*
_output_shapes
: *
dtype0*
value	B : g
rnn/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
         X
rnn/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ▒
	rnn/whileWhilernn/while/loop_counter:output:0%rnn/while/maximum_iterations:output:0rnn/time:output:0rnn/TensorArrayV2_1:handle:0rnn/zeros:output:0rnn/zeros_1:output:0rnn/strided_slice_1:output:0;rnn/TensorArrayUnstack/TensorListFromTensor:output_handle:0,rnn_lstm_cell_matmul_readvariableop_resource.rnn_lstm_cell_matmul_1_readvariableop_resource-rnn_lstm_cell_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :         H:         H: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *!
bodyR
rnn_while_body_272334*!
condR
rnn_while_cond_272333*K
output_shapes:
8: : : : :         H:         H: : : : : *
parallel_iterations Е
4rnn/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    H   ╬
&rnn/TensorArrayV2Stack/TensorListStackTensorListStackrnn/while:output:3=rnn/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:d         H*
element_dtype0l
rnn/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
         e
rnn/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: e
rnn/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ы
rnn/strided_slice_3StridedSlice/rnn/TensorArrayV2Stack/TensorListStack:tensor:0"rnn/strided_slice_3/stack:output:0$rnn/strided_slice_3/stack_1:output:0$rnn/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         H*
shrink_axis_maski
rnn/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          в
rnn/transpose_1	Transpose/rnn/TensorArrayV2Stack/TensorListStack:tensor:0rnn/transpose_1/perm:output:0*
T0*+
_output_shapes
:         dHЖ
dense/Tensordot/ReadVariableOpReadVariableOp'dense_tensordot_readvariableop_resource*
_output_shapes

:H2*
dtype0^
dense/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:e
dense/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       f
dense/Tensordot/ShapeShapernn/transpose_1:y:0*
T0*
_output_shapes
::э╧_
dense/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : ╙
dense/Tensordot/GatherV2GatherV2dense/Tensordot/Shape:output:0dense/Tensordot/free:output:0&dense/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:a
dense/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ╫
dense/Tensordot/GatherV2_1GatherV2dense/Tensordot/Shape:output:0dense/Tensordot/axes:output:0(dense/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:_
dense/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: А
dense/Tensordot/ProdProd!dense/Tensordot/GatherV2:output:0dense/Tensordot/Const:output:0*
T0*
_output_shapes
: a
dense/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: Ж
dense/Tensordot/Prod_1Prod#dense/Tensordot/GatherV2_1:output:0 dense/Tensordot/Const_1:output:0*
T0*
_output_shapes
: ]
dense/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : ┤
dense/Tensordot/concatConcatV2dense/Tensordot/free:output:0dense/Tensordot/axes:output:0$dense/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:Л
dense/Tensordot/stackPackdense/Tensordot/Prod:output:0dense/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:Т
dense/Tensordot/transpose	Transposernn/transpose_1:y:0dense/Tensordot/concat:output:0*
T0*+
_output_shapes
:         dHЬ
dense/Tensordot/ReshapeReshapedense/Tensordot/transpose:y:0dense/Tensordot/stack:output:0*
T0*0
_output_shapes
:                  Ь
dense/Tensordot/MatMulMatMul dense/Tensordot/Reshape:output:0&dense/Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:         2a
dense/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:2_
dense/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ┐
dense/Tensordot/concat_1ConcatV2!dense/Tensordot/GatherV2:output:0 dense/Tensordot/Const_2:output:0&dense/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:Х
dense/TensordotReshape dense/Tensordot/MatMul:product:0!dense/Tensordot/concat_1:output:0*
T0*+
_output_shapes
:         d2~
dense/BiasAdd/ReadVariableOpReadVariableOp%dense_biasadd_readvariableop_resource*
_output_shapes
:2*
dtype0О
dense/BiasAddBiasAdddense/Tensordot:output:0$dense/BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:         d2`

dense/ReluReludense/BiasAdd:output:0*
T0*+
_output_shapes
:         d2Z
dropout/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  а?К
dropout/dropout/MulMuldense/Relu:activations:0dropout/dropout/Const:output:0*
T0*+
_output_shapes
:         d2k
dropout/dropout/ShapeShapedense/Relu:activations:0*
T0*
_output_shapes
::э╧а
,dropout/dropout/random_uniform/RandomUniformRandomUniformdropout/dropout/Shape:output:0*
T0*+
_output_shapes
:         d2*
dtype0c
dropout/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *═╠L>┬
dropout/dropout/GreaterEqualGreaterEqual5dropout/dropout/random_uniform/RandomUniform:output:0'dropout/dropout/GreaterEqual/y:output:0*
T0*+
_output_shapes
:         d2\
dropout/dropout/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    ╖
dropout/dropout/SelectV2SelectV2 dropout/dropout/GreaterEqual:z:0dropout/dropout/Mul:z:0 dropout/dropout/Const_1:output:0*
T0*+
_output_shapes
:         d2К
 dense_1/Tensordot/ReadVariableOpReadVariableOp)dense_1_tensordot_readvariableop_resource*
_output_shapes

:2*
dtype0`
dense_1/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:g
dense_1/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       v
dense_1/Tensordot/ShapeShape!dropout/dropout/SelectV2:output:0*
T0*
_output_shapes
::э╧a
dense_1/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : █
dense_1/Tensordot/GatherV2GatherV2 dense_1/Tensordot/Shape:output:0dense_1/Tensordot/free:output:0(dense_1/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:c
!dense_1/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ▀
dense_1/Tensordot/GatherV2_1GatherV2 dense_1/Tensordot/Shape:output:0dense_1/Tensordot/axes:output:0*dense_1/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:a
dense_1/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: Ж
dense_1/Tensordot/ProdProd#dense_1/Tensordot/GatherV2:output:0 dense_1/Tensordot/Const:output:0*
T0*
_output_shapes
: c
dense_1/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: М
dense_1/Tensordot/Prod_1Prod%dense_1/Tensordot/GatherV2_1:output:0"dense_1/Tensordot/Const_1:output:0*
T0*
_output_shapes
: _
dense_1/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : ╝
dense_1/Tensordot/concatConcatV2dense_1/Tensordot/free:output:0dense_1/Tensordot/axes:output:0&dense_1/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:С
dense_1/Tensordot/stackPackdense_1/Tensordot/Prod:output:0!dense_1/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:д
dense_1/Tensordot/transpose	Transpose!dropout/dropout/SelectV2:output:0!dense_1/Tensordot/concat:output:0*
T0*+
_output_shapes
:         d2в
dense_1/Tensordot/ReshapeReshapedense_1/Tensordot/transpose:y:0 dense_1/Tensordot/stack:output:0*
T0*0
_output_shapes
:                  в
dense_1/Tensordot/MatMulMatMul"dense_1/Tensordot/Reshape:output:0(dense_1/Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:         c
dense_1/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:a
dense_1/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ╟
dense_1/Tensordot/concat_1ConcatV2#dense_1/Tensordot/GatherV2:output:0"dense_1/Tensordot/Const_2:output:0(dense_1/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:Ы
dense_1/TensordotReshape"dense_1/Tensordot/MatMul:product:0#dense_1/Tensordot/concat_1:output:0*
T0*+
_output_shapes
:         dВ
dense_1/BiasAdd/ReadVariableOpReadVariableOp'dense_1_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0Ф
dense_1/BiasAddBiasAdddense_1/Tensordot:output:0&dense_1/BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:         dk
IdentityIdentitydense_1/BiasAdd:output:0^NoOp*
T0*+
_output_shapes
:         d╦
NoOpNoOp^dense/BiasAdd/ReadVariableOp^dense/Tensordot/ReadVariableOp^dense_1/BiasAdd/ReadVariableOp!^dense_1/Tensordot/ReadVariableOp%^rnn/lstm_cell/BiasAdd/ReadVariableOp$^rnn/lstm_cell/MatMul/ReadVariableOp&^rnn/lstm_cell/MatMul_1/ReadVariableOp
^rnn/while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%:         d: : : : : : : 2<
dense/BiasAdd/ReadVariableOpdense/BiasAdd/ReadVariableOp2@
dense/Tensordot/ReadVariableOpdense/Tensordot/ReadVariableOp2@
dense_1/BiasAdd/ReadVariableOpdense_1/BiasAdd/ReadVariableOp2D
 dense_1/Tensordot/ReadVariableOp dense_1/Tensordot/ReadVariableOp2L
$rnn/lstm_cell/BiasAdd/ReadVariableOp$rnn/lstm_cell/BiasAdd/ReadVariableOp2J
#rnn/lstm_cell/MatMul/ReadVariableOp#rnn/lstm_cell/MatMul/ReadVariableOp2N
%rnn/lstm_cell/MatMul_1/ReadVariableOp%rnn/lstm_cell/MatMul_1/ReadVariableOp2
	rnn/while	rnn/while:S O
+
_output_shapes
:         d
 
_user_specified_nameinputs
че
У
!__inference__wrapped_model_271126
	rnn_inputJ
7sequential_rnn_lstm_cell_matmul_readvariableop_resource:	аL
9sequential_rnn_lstm_cell_matmul_1_readvariableop_resource:	HаG
8sequential_rnn_lstm_cell_biasadd_readvariableop_resource:	аD
2sequential_dense_tensordot_readvariableop_resource:H2>
0sequential_dense_biasadd_readvariableop_resource:2F
4sequential_dense_1_tensordot_readvariableop_resource:2@
2sequential_dense_1_biasadd_readvariableop_resource:
identityИв'sequential/dense/BiasAdd/ReadVariableOpв)sequential/dense/Tensordot/ReadVariableOpв)sequential/dense_1/BiasAdd/ReadVariableOpв+sequential/dense_1/Tensordot/ReadVariableOpв/sequential/rnn/lstm_cell/BiasAdd/ReadVariableOpв.sequential/rnn/lstm_cell/MatMul/ReadVariableOpв0sequential/rnn/lstm_cell/MatMul_1/ReadVariableOpвsequential/rnn/while[
sequential/rnn/ShapeShape	rnn_input*
T0*
_output_shapes
::э╧l
"sequential/rnn/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: n
$sequential/rnn/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:n
$sequential/rnn/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ь
sequential/rnn/strided_sliceStridedSlicesequential/rnn/Shape:output:0+sequential/rnn/strided_slice/stack:output:0-sequential/rnn/strided_slice/stack_1:output:0-sequential/rnn/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask_
sequential/rnn/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :Hа
sequential/rnn/zeros/packedPack%sequential/rnn/strided_slice:output:0&sequential/rnn/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:_
sequential/rnn/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    Щ
sequential/rnn/zerosFill$sequential/rnn/zeros/packed:output:0#sequential/rnn/zeros/Const:output:0*
T0*'
_output_shapes
:         Ha
sequential/rnn/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :Hд
sequential/rnn/zeros_1/packedPack%sequential/rnn/strided_slice:output:0(sequential/rnn/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:a
sequential/rnn/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    Я
sequential/rnn/zeros_1Fill&sequential/rnn/zeros_1/packed:output:0%sequential/rnn/zeros_1/Const:output:0*
T0*'
_output_shapes
:         Hr
sequential/rnn/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          О
sequential/rnn/transpose	Transpose	rnn_input&sequential/rnn/transpose/perm:output:0*
T0*+
_output_shapes
:d         p
sequential/rnn/Shape_1Shapesequential/rnn/transpose:y:0*
T0*
_output_shapes
::э╧n
$sequential/rnn/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: p
&sequential/rnn/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:p
&sequential/rnn/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ж
sequential/rnn/strided_slice_1StridedSlicesequential/rnn/Shape_1:output:0-sequential/rnn/strided_slice_1/stack:output:0/sequential/rnn/strided_slice_1/stack_1:output:0/sequential/rnn/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masku
*sequential/rnn/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
         с
sequential/rnn/TensorArrayV2TensorListReserve3sequential/rnn/TensorArrayV2/element_shape:output:0'sequential/rnn/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щш╥Х
Dsequential/rnn/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       Н
6sequential/rnn/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorsequential/rnn/transpose:y:0Msequential/rnn/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щш╥n
$sequential/rnn/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: p
&sequential/rnn/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:p
&sequential/rnn/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:┤
sequential/rnn/strided_slice_2StridedSlicesequential/rnn/transpose:y:0-sequential/rnn/strided_slice_2/stack:output:0/sequential/rnn/strided_slice_2/stack_1:output:0/sequential/rnn/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         *
shrink_axis_maskН
(sequential/rnn/lstm_cell/ones_like/ShapeShape'sequential/rnn/strided_slice_2:output:0*
T0*
_output_shapes
::э╧m
(sequential/rnn/lstm_cell/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  А?┬
"sequential/rnn/lstm_cell/ones_likeFill1sequential/rnn/lstm_cell/ones_like/Shape:output:01sequential/rnn/lstm_cell/ones_like/Const:output:0*
T0*'
_output_shapes
:         л
sequential/rnn/lstm_cell/mulMul'sequential/rnn/strided_slice_2:output:0+sequential/rnn/lstm_cell/ones_like:output:0*
T0*'
_output_shapes
:         з
.sequential/rnn/lstm_cell/MatMul/ReadVariableOpReadVariableOp7sequential_rnn_lstm_cell_matmul_readvariableop_resource*
_output_shapes
:	а*
dtype0╢
sequential/rnn/lstm_cell/MatMulMatMul sequential/rnn/lstm_cell/mul:z:06sequential/rnn/lstm_cell/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ал
0sequential/rnn/lstm_cell/MatMul_1/ReadVariableOpReadVariableOp9sequential_rnn_lstm_cell_matmul_1_readvariableop_resource*
_output_shapes
:	Hа*
dtype0╖
!sequential/rnn/lstm_cell/MatMul_1MatMulsequential/rnn/zeros:output:08sequential/rnn/lstm_cell/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         а░
sequential/rnn/lstm_cell/addAddV2)sequential/rnn/lstm_cell/MatMul:product:0+sequential/rnn/lstm_cell/MatMul_1:product:0*
T0*(
_output_shapes
:         ае
/sequential/rnn/lstm_cell/BiasAdd/ReadVariableOpReadVariableOp8sequential_rnn_lstm_cell_biasadd_readvariableop_resource*
_output_shapes	
:а*
dtype0╣
 sequential/rnn/lstm_cell/BiasAddBiasAdd sequential/rnn/lstm_cell/add:z:07sequential/rnn/lstm_cell/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         аj
(sequential/rnn/lstm_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Б
sequential/rnn/lstm_cell/splitSplit1sequential/rnn/lstm_cell/split/split_dim:output:0)sequential/rnn/lstm_cell/BiasAdd:output:0*
T0*`
_output_shapesN
L:         H:         H:         H:         H*
	num_splitЖ
 sequential/rnn/lstm_cell/SigmoidSigmoid'sequential/rnn/lstm_cell/split:output:0*
T0*'
_output_shapes
:         HИ
"sequential/rnn/lstm_cell/Sigmoid_1Sigmoid'sequential/rnn/lstm_cell/split:output:1*
T0*'
_output_shapes
:         Hа
sequential/rnn/lstm_cell/mul_1Mul&sequential/rnn/lstm_cell/Sigmoid_1:y:0sequential/rnn/zeros_1:output:0*
T0*'
_output_shapes
:         HА
sequential/rnn/lstm_cell/TanhTanh'sequential/rnn/lstm_cell/split:output:2*
T0*'
_output_shapes
:         Hа
sequential/rnn/lstm_cell/mul_2Mul$sequential/rnn/lstm_cell/Sigmoid:y:0!sequential/rnn/lstm_cell/Tanh:y:0*
T0*'
_output_shapes
:         Hб
sequential/rnn/lstm_cell/add_1AddV2"sequential/rnn/lstm_cell/mul_1:z:0"sequential/rnn/lstm_cell/mul_2:z:0*
T0*'
_output_shapes
:         HИ
"sequential/rnn/lstm_cell/Sigmoid_2Sigmoid'sequential/rnn/lstm_cell/split:output:3*
T0*'
_output_shapes
:         H}
sequential/rnn/lstm_cell/Tanh_1Tanh"sequential/rnn/lstm_cell/add_1:z:0*
T0*'
_output_shapes
:         Hд
sequential/rnn/lstm_cell/mul_3Mul&sequential/rnn/lstm_cell/Sigmoid_2:y:0#sequential/rnn/lstm_cell/Tanh_1:y:0*
T0*'
_output_shapes
:         H}
,sequential/rnn/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    H   х
sequential/rnn/TensorArrayV2_1TensorListReserve5sequential/rnn/TensorArrayV2_1/element_shape:output:0'sequential/rnn/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щш╥U
sequential/rnn/timeConst*
_output_shapes
: *
dtype0*
value	B : r
'sequential/rnn/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
         c
!sequential/rnn/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ╦
sequential/rnn/whileWhile*sequential/rnn/while/loop_counter:output:00sequential/rnn/while/maximum_iterations:output:0sequential/rnn/time:output:0'sequential/rnn/TensorArrayV2_1:handle:0sequential/rnn/zeros:output:0sequential/rnn/zeros_1:output:0'sequential/rnn/strided_slice_1:output:0Fsequential/rnn/TensorArrayUnstack/TensorListFromTensor:output_handle:07sequential_rnn_lstm_cell_matmul_readvariableop_resource9sequential_rnn_lstm_cell_matmul_1_readvariableop_resource8sequential_rnn_lstm_cell_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :         H:         H: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *,
body$R"
 sequential_rnn_while_body_270985*,
cond$R"
 sequential_rnn_while_cond_270984*K
output_shapes:
8: : : : :         H:         H: : : : : *
parallel_iterations Р
?sequential/rnn/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    H   я
1sequential/rnn/TensorArrayV2Stack/TensorListStackTensorListStacksequential/rnn/while:output:3Hsequential/rnn/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:d         H*
element_dtype0w
$sequential/rnn/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
         p
&sequential/rnn/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: p
&sequential/rnn/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:╥
sequential/rnn/strided_slice_3StridedSlice:sequential/rnn/TensorArrayV2Stack/TensorListStack:tensor:0-sequential/rnn/strided_slice_3/stack:output:0/sequential/rnn/strided_slice_3/stack_1:output:0/sequential/rnn/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         H*
shrink_axis_maskt
sequential/rnn/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ├
sequential/rnn/transpose_1	Transpose:sequential/rnn/TensorArrayV2Stack/TensorListStack:tensor:0(sequential/rnn/transpose_1/perm:output:0*
T0*+
_output_shapes
:         dHЬ
)sequential/dense/Tensordot/ReadVariableOpReadVariableOp2sequential_dense_tensordot_readvariableop_resource*
_output_shapes

:H2*
dtype0i
sequential/dense/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:p
sequential/dense/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       |
 sequential/dense/Tensordot/ShapeShapesequential/rnn/transpose_1:y:0*
T0*
_output_shapes
::э╧j
(sequential/dense/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B :  
#sequential/dense/Tensordot/GatherV2GatherV2)sequential/dense/Tensordot/Shape:output:0(sequential/dense/Tensordot/free:output:01sequential/dense/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:l
*sequential/dense/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : Г
%sequential/dense/Tensordot/GatherV2_1GatherV2)sequential/dense/Tensordot/Shape:output:0(sequential/dense/Tensordot/axes:output:03sequential/dense/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:j
 sequential/dense/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: б
sequential/dense/Tensordot/ProdProd,sequential/dense/Tensordot/GatherV2:output:0)sequential/dense/Tensordot/Const:output:0*
T0*
_output_shapes
: l
"sequential/dense/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: з
!sequential/dense/Tensordot/Prod_1Prod.sequential/dense/Tensordot/GatherV2_1:output:0+sequential/dense/Tensordot/Const_1:output:0*
T0*
_output_shapes
: h
&sequential/dense/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : р
!sequential/dense/Tensordot/concatConcatV2(sequential/dense/Tensordot/free:output:0(sequential/dense/Tensordot/axes:output:0/sequential/dense/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:м
 sequential/dense/Tensordot/stackPack(sequential/dense/Tensordot/Prod:output:0*sequential/dense/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:│
$sequential/dense/Tensordot/transpose	Transposesequential/rnn/transpose_1:y:0*sequential/dense/Tensordot/concat:output:0*
T0*+
_output_shapes
:         dH╜
"sequential/dense/Tensordot/ReshapeReshape(sequential/dense/Tensordot/transpose:y:0)sequential/dense/Tensordot/stack:output:0*
T0*0
_output_shapes
:                  ╜
!sequential/dense/Tensordot/MatMulMatMul+sequential/dense/Tensordot/Reshape:output:01sequential/dense/Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:         2l
"sequential/dense/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:2j
(sequential/dense/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ы
#sequential/dense/Tensordot/concat_1ConcatV2,sequential/dense/Tensordot/GatherV2:output:0+sequential/dense/Tensordot/Const_2:output:01sequential/dense/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:╢
sequential/dense/TensordotReshape+sequential/dense/Tensordot/MatMul:product:0,sequential/dense/Tensordot/concat_1:output:0*
T0*+
_output_shapes
:         d2Ф
'sequential/dense/BiasAdd/ReadVariableOpReadVariableOp0sequential_dense_biasadd_readvariableop_resource*
_output_shapes
:2*
dtype0п
sequential/dense/BiasAddBiasAdd#sequential/dense/Tensordot:output:0/sequential/dense/BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:         d2v
sequential/dense/ReluRelu!sequential/dense/BiasAdd:output:0*
T0*+
_output_shapes
:         d2В
sequential/dropout/IdentityIdentity#sequential/dense/Relu:activations:0*
T0*+
_output_shapes
:         d2а
+sequential/dense_1/Tensordot/ReadVariableOpReadVariableOp4sequential_dense_1_tensordot_readvariableop_resource*
_output_shapes

:2*
dtype0k
!sequential/dense_1/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:r
!sequential/dense_1/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       Д
"sequential/dense_1/Tensordot/ShapeShape$sequential/dropout/Identity:output:0*
T0*
_output_shapes
::э╧l
*sequential/dense_1/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : З
%sequential/dense_1/Tensordot/GatherV2GatherV2+sequential/dense_1/Tensordot/Shape:output:0*sequential/dense_1/Tensordot/free:output:03sequential/dense_1/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:n
,sequential/dense_1/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : Л
'sequential/dense_1/Tensordot/GatherV2_1GatherV2+sequential/dense_1/Tensordot/Shape:output:0*sequential/dense_1/Tensordot/axes:output:05sequential/dense_1/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:l
"sequential/dense_1/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: з
!sequential/dense_1/Tensordot/ProdProd.sequential/dense_1/Tensordot/GatherV2:output:0+sequential/dense_1/Tensordot/Const:output:0*
T0*
_output_shapes
: n
$sequential/dense_1/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: н
#sequential/dense_1/Tensordot/Prod_1Prod0sequential/dense_1/Tensordot/GatherV2_1:output:0-sequential/dense_1/Tensordot/Const_1:output:0*
T0*
_output_shapes
: j
(sequential/dense_1/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : ш
#sequential/dense_1/Tensordot/concatConcatV2*sequential/dense_1/Tensordot/free:output:0*sequential/dense_1/Tensordot/axes:output:01sequential/dense_1/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:▓
"sequential/dense_1/Tensordot/stackPack*sequential/dense_1/Tensordot/Prod:output:0,sequential/dense_1/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:╜
&sequential/dense_1/Tensordot/transpose	Transpose$sequential/dropout/Identity:output:0,sequential/dense_1/Tensordot/concat:output:0*
T0*+
_output_shapes
:         d2├
$sequential/dense_1/Tensordot/ReshapeReshape*sequential/dense_1/Tensordot/transpose:y:0+sequential/dense_1/Tensordot/stack:output:0*
T0*0
_output_shapes
:                  ├
#sequential/dense_1/Tensordot/MatMulMatMul-sequential/dense_1/Tensordot/Reshape:output:03sequential/dense_1/Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:         n
$sequential/dense_1/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:l
*sequential/dense_1/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : є
%sequential/dense_1/Tensordot/concat_1ConcatV2.sequential/dense_1/Tensordot/GatherV2:output:0-sequential/dense_1/Tensordot/Const_2:output:03sequential/dense_1/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:╝
sequential/dense_1/TensordotReshape-sequential/dense_1/Tensordot/MatMul:product:0.sequential/dense_1/Tensordot/concat_1:output:0*
T0*+
_output_shapes
:         dШ
)sequential/dense_1/BiasAdd/ReadVariableOpReadVariableOp2sequential_dense_1_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0╡
sequential/dense_1/BiasAddBiasAdd%sequential/dense_1/Tensordot:output:01sequential/dense_1/BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:         dv
IdentityIdentity#sequential/dense_1/BiasAdd:output:0^NoOp*
T0*+
_output_shapes
:         dг
NoOpNoOp(^sequential/dense/BiasAdd/ReadVariableOp*^sequential/dense/Tensordot/ReadVariableOp*^sequential/dense_1/BiasAdd/ReadVariableOp,^sequential/dense_1/Tensordot/ReadVariableOp0^sequential/rnn/lstm_cell/BiasAdd/ReadVariableOp/^sequential/rnn/lstm_cell/MatMul/ReadVariableOp1^sequential/rnn/lstm_cell/MatMul_1/ReadVariableOp^sequential/rnn/while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%:         d: : : : : : : 2R
'sequential/dense/BiasAdd/ReadVariableOp'sequential/dense/BiasAdd/ReadVariableOp2V
)sequential/dense/Tensordot/ReadVariableOp)sequential/dense/Tensordot/ReadVariableOp2V
)sequential/dense_1/BiasAdd/ReadVariableOp)sequential/dense_1/BiasAdd/ReadVariableOp2Z
+sequential/dense_1/Tensordot/ReadVariableOp+sequential/dense_1/Tensordot/ReadVariableOp2b
/sequential/rnn/lstm_cell/BiasAdd/ReadVariableOp/sequential/rnn/lstm_cell/BiasAdd/ReadVariableOp2`
.sequential/rnn/lstm_cell/MatMul/ReadVariableOp.sequential/rnn/lstm_cell/MatMul/ReadVariableOp2d
0sequential/rnn/lstm_cell/MatMul_1/ReadVariableOp0sequential/rnn/lstm_cell/MatMul_1/ReadVariableOp2,
sequential/rnn/whilesequential/rnn/while:V R
+
_output_shapes
:         d
#
_user_specified_name	rnn_input
╨
Х
(__inference_dense_1_layer_call_fn_273566

inputs
unknown:2
	unknown_0:
identityИвStatefulPartitionedCall▄
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:         d*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *L
fGRE
C__inference_dense_1_layer_call_and_return_conditional_losses_271820s
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:         d`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:         d2: : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:         d2
 
_user_specified_nameinputs
│

b
C__inference_dropout_layer_call_and_return_conditional_losses_271788

inputs
identityИR
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  а?h
dropout/MulMulinputsdropout/Const:output:0*
T0*+
_output_shapes
:         d2Q
dropout/ShapeShapeinputs*
T0*
_output_shapes
::э╧Р
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*+
_output_shapes
:         d2*
dtype0[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *═╠L>к
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*+
_output_shapes
:         d2T
dropout/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    Ч
dropout/SelectV2SelectV2dropout/GreaterEqual:z:0dropout/Mul:z:0dropout/Const_1:output:0*
T0*+
_output_shapes
:         d2e
IdentityIdentitydropout/SelectV2:output:0*
T0*+
_output_shapes
:         d2"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:         d2:S O
+
_output_shapes
:         d2
 
_user_specified_nameinputs
ц
a
C__inference_dropout_layer_call_and_return_conditional_losses_271996

inputs

identity_1R
IdentityIdentityinputs*
T0*+
_output_shapes
:         d2_

Identity_1IdentityIdentity:output:0*
T0*+
_output_shapes
:         d2"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:         d2:S O
+
_output_shapes
:         d2
 
_user_specified_nameinputs
б
│
$__inference_rnn_layer_call_fn_272740
inputs_0
unknown:	а
	unknown_0:	Hа
	unknown_1:	а
identityИвStatefulPartitionedCallЁ
StatefulPartitionedCallStatefulPartitionedCallinputs_0unknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :                  H*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *H
fCRA
?__inference_rnn_layer_call_and_return_conditional_losses_271456|
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*4
_output_shapes"
 :                  H`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:                  : : : 22
StatefulPartitionedCallStatefulPartitionedCall:^ Z
4
_output_shapes"
 :                  
"
_user_specified_name
inputs_0
▀
╝
F__inference_sequential_layer_call_and_return_conditional_losses_272029

inputs

rnn_272010:	а

rnn_272012:	Hа

rnn_272014:	а
dense_272017:H2
dense_272019:2 
dense_1_272023:2
dense_1_272025:
identityИвdense/StatefulPartitionedCallвdense_1/StatefulPartitionedCallвdropout/StatefulPartitionedCallвrnn/StatefulPartitionedCallю
rnn/StatefulPartitionedCallStatefulPartitionedCallinputs
rnn_272010
rnn_272012
rnn_272014*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:         dH*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *H
fCRA
?__inference_rnn_layer_call_and_return_conditional_losses_271731Ж
dense/StatefulPartitionedCallStatefulPartitionedCall$rnn/StatefulPartitionedCall:output:0dense_272017dense_272019*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:         d2*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *J
fERC
A__inference_dense_layer_call_and_return_conditional_losses_271770ъ
dropout/StatefulPartitionedCallStatefulPartitionedCall&dense/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:         d2* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *L
fGRE
C__inference_dropout_layer_call_and_return_conditional_losses_271788Т
dense_1/StatefulPartitionedCallStatefulPartitionedCall(dropout/StatefulPartitionedCall:output:0dense_1_272023dense_1_272025*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:         d*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *L
fGRE
C__inference_dense_1_layer_call_and_return_conditional_losses_271820{
IdentityIdentity(dense_1/StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:         d╚
NoOpNoOp^dense/StatefulPartitionedCall ^dense_1/StatefulPartitionedCall ^dropout/StatefulPartitionedCall^rnn/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%:         d: : : : : : : 2>
dense/StatefulPartitionedCalldense/StatefulPartitionedCall2B
dense_1/StatefulPartitionedCalldense_1/StatefulPartitionedCall2B
dropout/StatefulPartitionedCalldropout/StatefulPartitionedCall2:
rnn/StatefulPartitionedCallrnn/StatefulPartitionedCall:S O
+
_output_shapes
:         d
 
_user_specified_nameinputs
л{
╓
"__inference__traced_restore_274028
file_prefix/
assignvariableop_dense_kernel:H2+
assignvariableop_1_dense_bias:23
!assignvariableop_2_dense_1_kernel:2-
assignvariableop_3_dense_1_bias::
'assignvariableop_4_rnn_lstm_cell_kernel:	аD
1assignvariableop_5_rnn_lstm_cell_recurrent_kernel:	Hа4
%assignvariableop_6_rnn_lstm_cell_bias:	а&
assignvariableop_7_iteration:	 *
 assignvariableop_8_learning_rate: A
.assignvariableop_9_adam_m_rnn_lstm_cell_kernel:	аB
/assignvariableop_10_adam_v_rnn_lstm_cell_kernel:	аL
9assignvariableop_11_adam_m_rnn_lstm_cell_recurrent_kernel:	HаL
9assignvariableop_12_adam_v_rnn_lstm_cell_recurrent_kernel:	Hа<
-assignvariableop_13_adam_m_rnn_lstm_cell_bias:	а<
-assignvariableop_14_adam_v_rnn_lstm_cell_bias:	а9
'assignvariableop_15_adam_m_dense_kernel:H29
'assignvariableop_16_adam_v_dense_kernel:H23
%assignvariableop_17_adam_m_dense_bias:23
%assignvariableop_18_adam_v_dense_bias:2;
)assignvariableop_19_adam_m_dense_1_kernel:2;
)assignvariableop_20_adam_v_dense_1_kernel:25
'assignvariableop_21_adam_m_dense_1_bias:5
'assignvariableop_22_adam_v_dense_1_bias:%
assignvariableop_23_total_2: %
assignvariableop_24_count_2: %
assignvariableop_25_total_1: %
assignvariableop_26_count_1: #
assignvariableop_27_total: #
assignvariableop_28_count: 
identity_30ИвAssignVariableOpвAssignVariableOp_1вAssignVariableOp_10вAssignVariableOp_11вAssignVariableOp_12вAssignVariableOp_13вAssignVariableOp_14вAssignVariableOp_15вAssignVariableOp_16вAssignVariableOp_17вAssignVariableOp_18вAssignVariableOp_19вAssignVariableOp_2вAssignVariableOp_20вAssignVariableOp_21вAssignVariableOp_22вAssignVariableOp_23вAssignVariableOp_24вAssignVariableOp_25вAssignVariableOp_26вAssignVariableOp_27вAssignVariableOp_28вAssignVariableOp_3вAssignVariableOp_4вAssignVariableOp_5вAssignVariableOp_6вAssignVariableOp_7вAssignVariableOp_8вAssignVariableOp_9█
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*Б
valueўBЇB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB&variables/0/.ATTRIBUTES/VARIABLE_VALUEB&variables/1/.ATTRIBUTES/VARIABLE_VALUEB&variables/2/.ATTRIBUTES/VARIABLE_VALUEB0optimizer/_iterations/.ATTRIBUTES/VARIABLE_VALUEB3optimizer/_learning_rate/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/1/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/2/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/3/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/4/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/5/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/6/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/7/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/8/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/9/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/10/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/11/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/12/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/13/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/14/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/2/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/2/count/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPHм
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*O
valueFBDB B B B B B B B B B B B B B B B B B B B B B B B B B B B B B ╡
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*М
_output_shapesz
x::::::::::::::::::::::::::::::*,
dtypes"
 2	[
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:░
AssignVariableOpAssignVariableOpassignvariableop_dense_kernelIdentity:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:┤
AssignVariableOp_1AssignVariableOpassignvariableop_1_dense_biasIdentity_1:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:╕
AssignVariableOp_2AssignVariableOp!assignvariableop_2_dense_1_kernelIdentity_2:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:╢
AssignVariableOp_3AssignVariableOpassignvariableop_3_dense_1_biasIdentity_3:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:╛
AssignVariableOp_4AssignVariableOp'assignvariableop_4_rnn_lstm_cell_kernelIdentity_4:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:╚
AssignVariableOp_5AssignVariableOp1assignvariableop_5_rnn_lstm_cell_recurrent_kernelIdentity_5:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:╝
AssignVariableOp_6AssignVariableOp%assignvariableop_6_rnn_lstm_cell_biasIdentity_6:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0	*
_output_shapes
:│
AssignVariableOp_7AssignVariableOpassignvariableop_7_iterationIdentity_7:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0	]

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:╖
AssignVariableOp_8AssignVariableOp assignvariableop_8_learning_rateIdentity_8:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:┼
AssignVariableOp_9AssignVariableOp.assignvariableop_9_adam_m_rnn_lstm_cell_kernelIdentity_9:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:╚
AssignVariableOp_10AssignVariableOp/assignvariableop_10_adam_v_rnn_lstm_cell_kernelIdentity_10:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:╥
AssignVariableOp_11AssignVariableOp9assignvariableop_11_adam_m_rnn_lstm_cell_recurrent_kernelIdentity_11:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:╥
AssignVariableOp_12AssignVariableOp9assignvariableop_12_adam_v_rnn_lstm_cell_recurrent_kernelIdentity_12:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:╞
AssignVariableOp_13AssignVariableOp-assignvariableop_13_adam_m_rnn_lstm_cell_biasIdentity_13:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:╞
AssignVariableOp_14AssignVariableOp-assignvariableop_14_adam_v_rnn_lstm_cell_biasIdentity_14:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:└
AssignVariableOp_15AssignVariableOp'assignvariableop_15_adam_m_dense_kernelIdentity_15:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:└
AssignVariableOp_16AssignVariableOp'assignvariableop_16_adam_v_dense_kernelIdentity_16:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:╛
AssignVariableOp_17AssignVariableOp%assignvariableop_17_adam_m_dense_biasIdentity_17:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:╛
AssignVariableOp_18AssignVariableOp%assignvariableop_18_adam_v_dense_biasIdentity_18:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:┬
AssignVariableOp_19AssignVariableOp)assignvariableop_19_adam_m_dense_1_kernelIdentity_19:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:┬
AssignVariableOp_20AssignVariableOp)assignvariableop_20_adam_v_dense_1_kernelIdentity_20:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:└
AssignVariableOp_21AssignVariableOp'assignvariableop_21_adam_m_dense_1_biasIdentity_21:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:└
AssignVariableOp_22AssignVariableOp'assignvariableop_22_adam_v_dense_1_biasIdentity_22:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:┤
AssignVariableOp_23AssignVariableOpassignvariableop_23_total_2Identity_23:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:┤
AssignVariableOp_24AssignVariableOpassignvariableop_24_count_2Identity_24:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:┤
AssignVariableOp_25AssignVariableOpassignvariableop_25_total_1Identity_25:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:┤
AssignVariableOp_26AssignVariableOpassignvariableop_26_count_1Identity_26:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:▓
AssignVariableOp_27AssignVariableOpassignvariableop_27_totalIdentity_27:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_28IdentityRestoreV2:tensors:28"/device:CPU:0*
T0*
_output_shapes
:▓
AssignVariableOp_28AssignVariableOpassignvariableop_28_countIdentity_28:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0Y
NoOpNoOp"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 ═
Identity_29Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: W
Identity_30IdentityIdentity_29:output:0^NoOp_1*
T0*
_output_shapes
: ║
NoOp_1NoOp^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9*"
_acd_function_control_output(*
_output_shapes
 "#
identity_30Identity_30:output:0*O
_input_shapes>
<: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2*
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
AssignVariableOp_1AssignVariableOp_12*
AssignVariableOp_20AssignVariableOp_202*
AssignVariableOp_21AssignVariableOp_212*
AssignVariableOp_22AssignVariableOp_222*
AssignVariableOp_23AssignVariableOp_232*
AssignVariableOp_24AssignVariableOp_242*
AssignVariableOp_25AssignVariableOp_252*
AssignVariableOp_26AssignVariableOp_262*
AssignVariableOp_27AssignVariableOp_272*
AssignVariableOp_28AssignVariableOp_282(
AssignVariableOp_2AssignVariableOp_22(
AssignVariableOp_3AssignVariableOp_32(
AssignVariableOp_4AssignVariableOp_42(
AssignVariableOp_5AssignVariableOp_52(
AssignVariableOp_6AssignVariableOp_62(
AssignVariableOp_7AssignVariableOp_72(
AssignVariableOp_8AssignVariableOp_82(
AssignVariableOp_9AssignVariableOp_92$
AssignVariableOpAssignVariableOp:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix
а7
ї
?__inference_rnn_layer_call_and_return_conditional_losses_271456

inputs#
lstm_cell_271375:	а#
lstm_cell_271377:	Hа
lstm_cell_271379:	а
identityИв!lstm_cell/StatefulPartitionedCallвwhileI
ShapeShapeinputs*
T0*
_output_shapes
::э╧]
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
valueB:╤
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskP
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :Hs
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    l
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:         HR
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :Hw
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:R
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    r
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:         Hc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          v
	transpose	Transposeinputstranspose/perm:output:0*
T0*4
_output_shapes"
 :                  R
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
::э╧_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
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
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
         ┤
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щш╥Ж
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       р
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щш╥_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:щ
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         *
shrink_axis_maskц
!lstm_cell/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_271375lstm_cell_271377lstm_cell_271379*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:         H:         H:         H*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *N
fIRG
E__inference_lstm_cell_layer_call_and_return_conditional_losses_271374n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    H   ╕
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щш╥F
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
         T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : о
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_271375lstm_cell_271377lstm_cell_271379*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :         H:         H: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_271388*
condR
while_cond_271387*K
output_shapes:
8: : : : :         H:         H: : : : : *
parallel_iterations Б
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    H   ╦
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :                  H*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
         a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:З
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         H*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          Я
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :                  Hk
IdentityIdentitytranspose_1:y:0^NoOp*
T0*4
_output_shapes"
 :                  Hr
NoOpNoOp"^lstm_cell/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:                  : : : 2F
!lstm_cell/StatefulPartitionedCall!lstm_cell/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :                  
 
_user_specified_nameinputs
П

У
rnn_while_cond_272576$
 rnn_while_rnn_while_loop_counter*
&rnn_while_rnn_while_maximum_iterations
rnn_while_placeholder
rnn_while_placeholder_1
rnn_while_placeholder_2
rnn_while_placeholder_3&
"rnn_while_less_rnn_strided_slice_1<
8rnn_while_rnn_while_cond_272576___redundant_placeholder0<
8rnn_while_rnn_while_cond_272576___redundant_placeholder1<
8rnn_while_rnn_while_cond_272576___redundant_placeholder2<
8rnn_while_rnn_while_cond_272576___redundant_placeholder3
rnn_while_identity
r
rnn/while/LessLessrnn_while_placeholder"rnn_while_less_rnn_strided_slice_1*
T0*
_output_shapes
: S
rnn/while/IdentityIdentityrnn/while/Less:z:0*
T0
*
_output_shapes
: "1
rnn_while_identityrnn/while/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :         H:         H: :::::

_output_shapes
::

_output_shapes
: :-)
'
_output_shapes
:         H:-)
'
_output_shapes
:         H:

_output_shapes
: :

_output_shapes
: :TP

_output_shapes
: 
6
_user_specified_namernn/while/maximum_iterations:N J

_output_shapes
: 
0
_user_specified_namernn/while/loop_counter
х
є
*__inference_lstm_cell_layer_call_fn_273613

inputs
states_0
states_1
unknown:	а
	unknown_0:	Hа
	unknown_1:	а
identity

identity_1

identity_2ИвStatefulPartitionedCallе
StatefulPartitionedCallStatefulPartitionedCallinputsstates_0states_1unknown	unknown_0	unknown_1*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:         H:         H:         H*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *N
fIRG
E__inference_lstm_cell_layer_call_and_return_conditional_losses_271226o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         Hq

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*'
_output_shapes
:         Hq

Identity_2Identity StatefulPartitionedCall:output:2^NoOp*
T0*'
_output_shapes
:         H`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:         :         H:         H: : : 22
StatefulPartitionedCallStatefulPartitionedCall:QM
'
_output_shapes
:         H
"
_user_specified_name
states_1:QM
'
_output_shapes
:         H
"
_user_specified_name
states_0:O K
'
_output_shapes
:         
 
_user_specified_nameinputs
ц
a
C__inference_dropout_layer_call_and_return_conditional_losses_273557

inputs

identity_1R
IdentityIdentityinputs*
T0*+
_output_shapes
:         d2_

Identity_1IdentityIdentity:output:0*
T0*+
_output_shapes
:         d2"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:         d2:S O
+
_output_shapes
:         d2
 
_user_specified_nameinputs
╢	
з
+__inference_sequential_layer_call_fn_272046
	rnn_input
unknown:	а
	unknown_0:	Hа
	unknown_1:	а
	unknown_2:H2
	unknown_3:2
	unknown_4:2
	unknown_5:
identityИвStatefulPartitionedCallг
StatefulPartitionedCallStatefulPartitionedCall	rnn_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5*
Tin

2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:         d*)
_read_only_resource_inputs
	*-
config_proto

CPU

GPU 2J 8В *O
fJRH
F__inference_sequential_layer_call_and_return_conditional_losses_272029s
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:         d`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%:         d: : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:V R
+
_output_shapes
:         d
#
_user_specified_name	rnn_input
┐
Ъ
F__inference_sequential_layer_call_and_return_conditional_losses_272070

inputs

rnn_272051:	а

rnn_272053:	Hа

rnn_272055:	а
dense_272058:H2
dense_272060:2 
dense_1_272064:2
dense_1_272066:
identityИвdense/StatefulPartitionedCallвdense_1/StatefulPartitionedCallвrnn/StatefulPartitionedCallю
rnn/StatefulPartitionedCallStatefulPartitionedCallinputs
rnn_272051
rnn_272053
rnn_272055*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:         dH*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *H
fCRA
?__inference_rnn_layer_call_and_return_conditional_losses_271979Ж
dense/StatefulPartitionedCallStatefulPartitionedCall$rnn/StatefulPartitionedCall:output:0dense_272058dense_272060*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:         d2*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *J
fERC
A__inference_dense_layer_call_and_return_conditional_losses_271770┌
dropout/PartitionedCallPartitionedCall&dense/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:         d2* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *L
fGRE
C__inference_dropout_layer_call_and_return_conditional_losses_271996К
dense_1/StatefulPartitionedCallStatefulPartitionedCall dropout/PartitionedCall:output:0dense_1_272064dense_1_272066*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:         d*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *L
fGRE
C__inference_dense_1_layer_call_and_return_conditional_losses_271820{
IdentityIdentity(dense_1/StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:         dж
NoOpNoOp^dense/StatefulPartitionedCall ^dense_1/StatefulPartitionedCall^rnn/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%:         d: : : : : : : 2>
dense/StatefulPartitionedCalldense/StatefulPartitionedCall2B
dense_1/StatefulPartitionedCalldense_1/StatefulPartitionedCall2:
rnn/StatefulPartitionedCallrnn/StatefulPartitionedCall:S O
+
_output_shapes
:         d
 
_user_specified_nameinputs
┬:
Г
E__inference_lstm_cell_layer_call_and_return_conditional_losses_273698

inputs
states_0
states_11
matmul_readvariableop_resource:	а3
 matmul_1_readvariableop_resource:	Hа.
biasadd_readvariableop_resource:	а
identity

identity_1

identity_2ИвBiasAdd/ReadVariableOpвMatMul/ReadVariableOpвMatMul_1/ReadVariableOpS
ones_like/ShapeShapeinputs*
T0*
_output_shapes
::э╧T
ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  А?w
	ones_likeFillones_like/Shape:output:0ones_like/Const:output:0*
T0*'
_output_shapes
:         R
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  а?p
dropout/MulMulones_like:output:0dropout/Const:output:0*
T0*'
_output_shapes
:         ]
dropout/ShapeShapeones_like:output:0*
T0*
_output_shapes
::э╧М
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*'
_output_shapes
:         *
dtype0[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *═╠L>ж
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:         T
dropout/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    У
dropout/SelectV2SelectV2dropout/GreaterEqual:z:0dropout/Mul:z:0dropout/Const_1:output:0*
T0*'
_output_shapes
:         T
dropout_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  а?t
dropout_1/MulMulones_like:output:0dropout_1/Const:output:0*
T0*'
_output_shapes
:         _
dropout_1/ShapeShapeones_like:output:0*
T0*
_output_shapes
::э╧Р
&dropout_1/random_uniform/RandomUniformRandomUniformdropout_1/Shape:output:0*
T0*'
_output_shapes
:         *
dtype0]
dropout_1/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *═╠L>м
dropout_1/GreaterEqualGreaterEqual/dropout_1/random_uniform/RandomUniform:output:0!dropout_1/GreaterEqual/y:output:0*
T0*'
_output_shapes
:         V
dropout_1/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    Ы
dropout_1/SelectV2SelectV2dropout_1/GreaterEqual:z:0dropout_1/Mul:z:0dropout_1/Const_1:output:0*
T0*'
_output_shapes
:         T
dropout_2/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  а?t
dropout_2/MulMulones_like:output:0dropout_2/Const:output:0*
T0*'
_output_shapes
:         _
dropout_2/ShapeShapeones_like:output:0*
T0*
_output_shapes
::э╧Р
&dropout_2/random_uniform/RandomUniformRandomUniformdropout_2/Shape:output:0*
T0*'
_output_shapes
:         *
dtype0]
dropout_2/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *═╠L>м
dropout_2/GreaterEqualGreaterEqual/dropout_2/random_uniform/RandomUniform:output:0!dropout_2/GreaterEqual/y:output:0*
T0*'
_output_shapes
:         V
dropout_2/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    Ы
dropout_2/SelectV2SelectV2dropout_2/GreaterEqual:z:0dropout_2/Mul:z:0dropout_2/Const_1:output:0*
T0*'
_output_shapes
:         T
dropout_3/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  а?t
dropout_3/MulMulones_like:output:0dropout_3/Const:output:0*
T0*'
_output_shapes
:         _
dropout_3/ShapeShapeones_like:output:0*
T0*
_output_shapes
::э╧Р
&dropout_3/random_uniform/RandomUniformRandomUniformdropout_3/Shape:output:0*
T0*'
_output_shapes
:         *
dtype0]
dropout_3/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *═╠L>м
dropout_3/GreaterEqualGreaterEqual/dropout_3/random_uniform/RandomUniform:output:0!dropout_3/GreaterEqual/y:output:0*
T0*'
_output_shapes
:         V
dropout_3/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    Ы
dropout_3/SelectV2SelectV2dropout_3/GreaterEqual:z:0dropout_3/Mul:z:0dropout_3/Const_1:output:0*
T0*'
_output_shapes
:         _
mulMulinputsdropout/SelectV2:output:0*
T0*'
_output_shapes
:         u
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	а*
dtype0k
MatMulMatMulmul:z:0MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         аy
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes
:	Hа*
dtype0p
MatMul_1MatMulstates_0MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         аe
addAddV2MatMul:product:0MatMul_1:product:0*
T0*(
_output_shapes
:         аs
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:а*
dtype0n
BiasAddBiasAddadd:z:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         аQ
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :╢
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*`
_output_shapesN
L:         H:         H:         H:         H*
	num_splitT
SigmoidSigmoidsplit:output:0*
T0*'
_output_shapes
:         HV
	Sigmoid_1Sigmoidsplit:output:1*
T0*'
_output_shapes
:         HW
mul_1MulSigmoid_1:y:0states_1*
T0*'
_output_shapes
:         HN
TanhTanhsplit:output:2*
T0*'
_output_shapes
:         HU
mul_2MulSigmoid:y:0Tanh:y:0*
T0*'
_output_shapes
:         HV
add_1AddV2	mul_1:z:0	mul_2:z:0*
T0*'
_output_shapes
:         HV
	Sigmoid_2Sigmoidsplit:output:3*
T0*'
_output_shapes
:         HK
Tanh_1Tanh	add_1:z:0*
T0*'
_output_shapes
:         HY
mul_3MulSigmoid_2:y:0
Tanh_1:y:0*
T0*'
_output_shapes
:         HX
IdentityIdentity	mul_3:z:0^NoOp*
T0*'
_output_shapes
:         HZ

Identity_1Identity	mul_3:z:0^NoOp*
T0*'
_output_shapes
:         HZ

Identity_2Identity	add_1:z:0^NoOp*
T0*'
_output_shapes
:         HС
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:         :         H:         H: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:QM
'
_output_shapes
:         H
"
_user_specified_name
states_1:QM
'
_output_shapes
:         H
"
_user_specified_name
states_0:O K
'
_output_shapes
:         
 
_user_specified_nameinputs
П

У
rnn_while_cond_272333$
 rnn_while_rnn_while_loop_counter*
&rnn_while_rnn_while_maximum_iterations
rnn_while_placeholder
rnn_while_placeholder_1
rnn_while_placeholder_2
rnn_while_placeholder_3&
"rnn_while_less_rnn_strided_slice_1<
8rnn_while_rnn_while_cond_272333___redundant_placeholder0<
8rnn_while_rnn_while_cond_272333___redundant_placeholder1<
8rnn_while_rnn_while_cond_272333___redundant_placeholder2<
8rnn_while_rnn_while_cond_272333___redundant_placeholder3
rnn_while_identity
r
rnn/while/LessLessrnn_while_placeholder"rnn_while_less_rnn_strided_slice_1*
T0*
_output_shapes
: S
rnn/while/IdentityIdentityrnn/while/Less:z:0*
T0
*
_output_shapes
: "1
rnn_while_identityrnn/while/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :         H:         H: :::::

_output_shapes
::

_output_shapes
: :-)
'
_output_shapes
:         H:-)
'
_output_shapes
:         H:

_output_shapes
: :

_output_shapes
: :TP

_output_shapes
: 
6
_user_specified_namernn/while/maximum_iterations:N J

_output_shapes
: 
0
_user_specified_namernn/while/loop_counter
н	
д
+__inference_sequential_layer_call_fn_272239

inputs
unknown:	а
	unknown_0:	Hа
	unknown_1:	а
	unknown_2:H2
	unknown_3:2
	unknown_4:2
	unknown_5:
identityИвStatefulPartitionedCallа
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5*
Tin

2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:         d*)
_read_only_resource_inputs
	*-
config_proto

CPU

GPU 2J 8В *O
fJRH
F__inference_sequential_layer_call_and_return_conditional_losses_272070s
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:         d`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%:         d: : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:         d
 
_user_specified_nameinputs
╛;
╡
while_body_273403
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0C
0while_lstm_cell_matmul_readvariableop_resource_0:	аE
2while_lstm_cell_matmul_1_readvariableop_resource_0:	Hа@
1while_lstm_cell_biasadd_readvariableop_resource_0:	а
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorA
.while_lstm_cell_matmul_readvariableop_resource:	аC
0while_lstm_cell_matmul_1_readvariableop_resource:	Hа>
/while_lstm_cell_biasadd_readvariableop_resource:	аИв&while/lstm_cell/BiasAdd/ReadVariableOpв%while/lstm_cell/MatMul/ReadVariableOpв'while/lstm_cell/MatMul_1/ReadVariableOpИ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       ж
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:         *
element_dtype0Н
while/lstm_cell/ones_like/ShapeShape0while/TensorArrayV2Read/TensorListGetItem:item:0*
T0*
_output_shapes
::э╧d
while/lstm_cell/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  А?з
while/lstm_cell/ones_likeFill(while/lstm_cell/ones_like/Shape:output:0(while/lstm_cell/ones_like/Const:output:0*
T0*'
_output_shapes
:         в
while/lstm_cell/mulMul0while/TensorArrayV2Read/TensorListGetItem:item:0"while/lstm_cell/ones_like:output:0*
T0*'
_output_shapes
:         Ч
%while/lstm_cell/MatMul/ReadVariableOpReadVariableOp0while_lstm_cell_matmul_readvariableop_resource_0*
_output_shapes
:	а*
dtype0Ы
while/lstm_cell/MatMulMatMulwhile/lstm_cell/mul:z:0-while/lstm_cell/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         аЫ
'while/lstm_cell/MatMul_1/ReadVariableOpReadVariableOp2while_lstm_cell_matmul_1_readvariableop_resource_0*
_output_shapes
:	Hа*
dtype0Ы
while/lstm_cell/MatMul_1MatMulwhile_placeholder_2/while/lstm_cell/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         аХ
while/lstm_cell/addAddV2 while/lstm_cell/MatMul:product:0"while/lstm_cell/MatMul_1:product:0*
T0*(
_output_shapes
:         аХ
&while/lstm_cell/BiasAdd/ReadVariableOpReadVariableOp1while_lstm_cell_biasadd_readvariableop_resource_0*
_output_shapes	
:а*
dtype0Ю
while/lstm_cell/BiasAddBiasAddwhile/lstm_cell/add:z:0.while/lstm_cell/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         аa
while/lstm_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ц
while/lstm_cell/splitSplit(while/lstm_cell/split/split_dim:output:0 while/lstm_cell/BiasAdd:output:0*
T0*`
_output_shapesN
L:         H:         H:         H:         H*
	num_splitt
while/lstm_cell/SigmoidSigmoidwhile/lstm_cell/split:output:0*
T0*'
_output_shapes
:         Hv
while/lstm_cell/Sigmoid_1Sigmoidwhile/lstm_cell/split:output:1*
T0*'
_output_shapes
:         HВ
while/lstm_cell/mul_1Mulwhile/lstm_cell/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:         Hn
while/lstm_cell/TanhTanhwhile/lstm_cell/split:output:2*
T0*'
_output_shapes
:         HЕ
while/lstm_cell/mul_2Mulwhile/lstm_cell/Sigmoid:y:0while/lstm_cell/Tanh:y:0*
T0*'
_output_shapes
:         HЖ
while/lstm_cell/add_1AddV2while/lstm_cell/mul_1:z:0while/lstm_cell/mul_2:z:0*
T0*'
_output_shapes
:         Hv
while/lstm_cell/Sigmoid_2Sigmoidwhile/lstm_cell/split:output:3*
T0*'
_output_shapes
:         Hk
while/lstm_cell/Tanh_1Tanhwhile/lstm_cell/add_1:z:0*
T0*'
_output_shapes
:         HЙ
while/lstm_cell/mul_3Mulwhile/lstm_cell/Sigmoid_2:y:0while/lstm_cell/Tanh_1:y:0*
T0*'
_output_shapes
:         H┬
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell/mul_3:z:0*
_output_shapes
: *
element_dtype0:щш╥M
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: Ж
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: v
while/Identity_4Identitywhile/lstm_cell/mul_3:z:0^while/NoOp*
T0*'
_output_shapes
:         Hv
while/Identity_5Identitywhile/lstm_cell/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:         H╟

while/NoOpNoOp'^while/lstm_cell/BiasAdd/ReadVariableOp&^while/lstm_cell/MatMul/ReadVariableOp(^while/lstm_cell/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0")
while_identitywhile/Identity:output:0"d
/while_lstm_cell_biasadd_readvariableop_resource1while_lstm_cell_biasadd_readvariableop_resource_0"f
0while_lstm_cell_matmul_1_readvariableop_resource2while_lstm_cell_matmul_1_readvariableop_resource_0"b
.while_lstm_cell_matmul_readvariableop_resource0while_lstm_cell_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"и
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :         H:         H: : : : : 2P
&while/lstm_cell/BiasAdd/ReadVariableOp&while/lstm_cell/BiasAdd/ReadVariableOp2N
%while/lstm_cell/MatMul/ReadVariableOp%while/lstm_cell/MatMul/ReadVariableOp2R
'while/lstm_cell/MatMul_1/ReadVariableOp'while/lstm_cell/MatMul_1/ReadVariableOp:

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:         H:-)
'
_output_shapes
:         H:

_output_shapes
: :

_output_shapes
: :PL

_output_shapes
: 
2
_user_specified_namewhile/maximum_iterations:J F

_output_shapes
: 
,
_user_specified_namewhile/loop_counter
А#
╬
while_body_271240
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0+
while_lstm_cell_271264_0:	а+
while_lstm_cell_271266_0:	Hа'
while_lstm_cell_271268_0:	а
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor)
while_lstm_cell_271264:	а)
while_lstm_cell_271266:	Hа%
while_lstm_cell_271268:	аИв'while/lstm_cell/StatefulPartitionedCallИ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       ж
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:         *
element_dtype0д
'while/lstm_cell/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_271264_0while_lstm_cell_271266_0while_lstm_cell_271268_0*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:         H:         H:         H*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *N
fIRG
E__inference_lstm_cell_layer_call_and_return_conditional_losses_271226┘
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder0while/lstm_cell/StatefulPartitionedCall:output:0*
_output_shapes
: *
element_dtype0:щш╥M
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: Ж
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: Н
while/Identity_4Identity0while/lstm_cell/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:         HН
while/Identity_5Identity0while/lstm_cell/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:         Hv

while/NoOpNoOp(^while/lstm_cell/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0")
while_identitywhile/Identity:output:0"2
while_lstm_cell_271264while_lstm_cell_271264_0"2
while_lstm_cell_271266while_lstm_cell_271266_0"2
while_lstm_cell_271268while_lstm_cell_271268_0"0
while_strided_slice_1while_strided_slice_1_0"и
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :         H:         H: : : : : 2R
'while/lstm_cell/StatefulPartitionedCall'while/lstm_cell/StatefulPartitionedCall:

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:         H:-)
'
_output_shapes
:         H:

_output_shapes
: :

_output_shapes
: :PL

_output_shapes
: 
2
_user_specified_namewhile/maximum_iterations:J F

_output_shapes
: 
,
_user_specified_namewhile/loop_counter
Ч	
├
while_cond_271611
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_271611___redundant_placeholder04
0while_while_cond_271611___redundant_placeholder14
0while_while_cond_271611___redundant_placeholder24
0while_while_cond_271611___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :         H:         H: :::::

_output_shapes
::

_output_shapes
: :-)
'
_output_shapes
:         H:-)
'
_output_shapes
:         H:

_output_shapes
: :

_output_shapes
: :PL

_output_shapes
: 
2
_user_specified_namewhile/maximum_iterations:J F

_output_shapes
: 
,
_user_specified_namewhile/loop_counter
а7
ї
?__inference_rnn_layer_call_and_return_conditional_losses_271308

inputs#
lstm_cell_271227:	а#
lstm_cell_271229:	Hа
lstm_cell_271231:	а
identityИв!lstm_cell/StatefulPartitionedCallвwhileI
ShapeShapeinputs*
T0*
_output_shapes
::э╧]
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
valueB:╤
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskP
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :Hs
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    l
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:         HR
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :Hw
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:R
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    r
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:         Hc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          v
	transpose	Transposeinputstranspose/perm:output:0*
T0*4
_output_shapes"
 :                  R
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
::э╧_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
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
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
         ┤
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щш╥Ж
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       р
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щш╥_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:щ
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         *
shrink_axis_maskц
!lstm_cell/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_271227lstm_cell_271229lstm_cell_271231*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:         H:         H:         H*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *N
fIRG
E__inference_lstm_cell_layer_call_and_return_conditional_losses_271226n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    H   ╕
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щш╥F
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
         T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : о
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_271227lstm_cell_271229lstm_cell_271231*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :         H:         H: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_271240*
condR
while_cond_271239*K
output_shapes:
8: : : : :         H:         H: : : : : *
parallel_iterations Б
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    H   ╦
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :                  H*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
         a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:З
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         H*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          Я
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :                  Hk
IdentityIdentitytranspose_1:y:0^NoOp*
T0*4
_output_shapes"
 :                  Hr
NoOpNoOp"^lstm_cell/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:                  : : : 2F
!lstm_cell/StatefulPartitionedCall!lstm_cell/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :                  
 
_user_specified_nameinputs
╛;
╡
while_body_271892
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0C
0while_lstm_cell_matmul_readvariableop_resource_0:	аE
2while_lstm_cell_matmul_1_readvariableop_resource_0:	Hа@
1while_lstm_cell_biasadd_readvariableop_resource_0:	а
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorA
.while_lstm_cell_matmul_readvariableop_resource:	аC
0while_lstm_cell_matmul_1_readvariableop_resource:	Hа>
/while_lstm_cell_biasadd_readvariableop_resource:	аИв&while/lstm_cell/BiasAdd/ReadVariableOpв%while/lstm_cell/MatMul/ReadVariableOpв'while/lstm_cell/MatMul_1/ReadVariableOpИ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       ж
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:         *
element_dtype0Н
while/lstm_cell/ones_like/ShapeShape0while/TensorArrayV2Read/TensorListGetItem:item:0*
T0*
_output_shapes
::э╧d
while/lstm_cell/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  А?з
while/lstm_cell/ones_likeFill(while/lstm_cell/ones_like/Shape:output:0(while/lstm_cell/ones_like/Const:output:0*
T0*'
_output_shapes
:         в
while/lstm_cell/mulMul0while/TensorArrayV2Read/TensorListGetItem:item:0"while/lstm_cell/ones_like:output:0*
T0*'
_output_shapes
:         Ч
%while/lstm_cell/MatMul/ReadVariableOpReadVariableOp0while_lstm_cell_matmul_readvariableop_resource_0*
_output_shapes
:	а*
dtype0Ы
while/lstm_cell/MatMulMatMulwhile/lstm_cell/mul:z:0-while/lstm_cell/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         аЫ
'while/lstm_cell/MatMul_1/ReadVariableOpReadVariableOp2while_lstm_cell_matmul_1_readvariableop_resource_0*
_output_shapes
:	Hа*
dtype0Ы
while/lstm_cell/MatMul_1MatMulwhile_placeholder_2/while/lstm_cell/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         аХ
while/lstm_cell/addAddV2 while/lstm_cell/MatMul:product:0"while/lstm_cell/MatMul_1:product:0*
T0*(
_output_shapes
:         аХ
&while/lstm_cell/BiasAdd/ReadVariableOpReadVariableOp1while_lstm_cell_biasadd_readvariableop_resource_0*
_output_shapes	
:а*
dtype0Ю
while/lstm_cell/BiasAddBiasAddwhile/lstm_cell/add:z:0.while/lstm_cell/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         аa
while/lstm_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ц
while/lstm_cell/splitSplit(while/lstm_cell/split/split_dim:output:0 while/lstm_cell/BiasAdd:output:0*
T0*`
_output_shapesN
L:         H:         H:         H:         H*
	num_splitt
while/lstm_cell/SigmoidSigmoidwhile/lstm_cell/split:output:0*
T0*'
_output_shapes
:         Hv
while/lstm_cell/Sigmoid_1Sigmoidwhile/lstm_cell/split:output:1*
T0*'
_output_shapes
:         HВ
while/lstm_cell/mul_1Mulwhile/lstm_cell/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:         Hn
while/lstm_cell/TanhTanhwhile/lstm_cell/split:output:2*
T0*'
_output_shapes
:         HЕ
while/lstm_cell/mul_2Mulwhile/lstm_cell/Sigmoid:y:0while/lstm_cell/Tanh:y:0*
T0*'
_output_shapes
:         HЖ
while/lstm_cell/add_1AddV2while/lstm_cell/mul_1:z:0while/lstm_cell/mul_2:z:0*
T0*'
_output_shapes
:         Hv
while/lstm_cell/Sigmoid_2Sigmoidwhile/lstm_cell/split:output:3*
T0*'
_output_shapes
:         Hk
while/lstm_cell/Tanh_1Tanhwhile/lstm_cell/add_1:z:0*
T0*'
_output_shapes
:         HЙ
while/lstm_cell/mul_3Mulwhile/lstm_cell/Sigmoid_2:y:0while/lstm_cell/Tanh_1:y:0*
T0*'
_output_shapes
:         H┬
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell/mul_3:z:0*
_output_shapes
: *
element_dtype0:щш╥M
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: Ж
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: v
while/Identity_4Identitywhile/lstm_cell/mul_3:z:0^while/NoOp*
T0*'
_output_shapes
:         Hv
while/Identity_5Identitywhile/lstm_cell/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:         H╟

while/NoOpNoOp'^while/lstm_cell/BiasAdd/ReadVariableOp&^while/lstm_cell/MatMul/ReadVariableOp(^while/lstm_cell/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0")
while_identitywhile/Identity:output:0"d
/while_lstm_cell_biasadd_readvariableop_resource1while_lstm_cell_biasadd_readvariableop_resource_0"f
0while_lstm_cell_matmul_1_readvariableop_resource2while_lstm_cell_matmul_1_readvariableop_resource_0"b
.while_lstm_cell_matmul_readvariableop_resource0while_lstm_cell_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"и
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :         H:         H: : : : : 2P
&while/lstm_cell/BiasAdd/ReadVariableOp&while/lstm_cell/BiasAdd/ReadVariableOp2N
%while/lstm_cell/MatMul/ReadVariableOp%while/lstm_cell/MatMul/ReadVariableOp2R
'while/lstm_cell/MatMul_1/ReadVariableOp'while/lstm_cell/MatMul_1/ReadVariableOp:

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:         H:-)
'
_output_shapes
:         H:

_output_shapes
: :

_output_shapes
: :PL

_output_shapes
: 
2
_user_specified_namewhile/maximum_iterations:J F

_output_shapes
: 
,
_user_specified_namewhile/loop_counter
┌
я
 sequential_rnn_while_cond_270984:
6sequential_rnn_while_sequential_rnn_while_loop_counter@
<sequential_rnn_while_sequential_rnn_while_maximum_iterations$
 sequential_rnn_while_placeholder&
"sequential_rnn_while_placeholder_1&
"sequential_rnn_while_placeholder_2&
"sequential_rnn_while_placeholder_3<
8sequential_rnn_while_less_sequential_rnn_strided_slice_1R
Nsequential_rnn_while_sequential_rnn_while_cond_270984___redundant_placeholder0R
Nsequential_rnn_while_sequential_rnn_while_cond_270984___redundant_placeholder1R
Nsequential_rnn_while_sequential_rnn_while_cond_270984___redundant_placeholder2R
Nsequential_rnn_while_sequential_rnn_while_cond_270984___redundant_placeholder3!
sequential_rnn_while_identity
Ю
sequential/rnn/while/LessLess sequential_rnn_while_placeholder8sequential_rnn_while_less_sequential_rnn_strided_slice_1*
T0*
_output_shapes
: i
sequential/rnn/while/IdentityIdentitysequential/rnn/while/Less:z:0*
T0
*
_output_shapes
: "G
sequential_rnn_while_identity&sequential/rnn/while/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :         H:         H: :::::

_output_shapes
::

_output_shapes
: :-)
'
_output_shapes
:         H:-)
'
_output_shapes
:         H:

_output_shapes
: :

_output_shapes
: :_[

_output_shapes
: 
A
_user_specified_name)'sequential/rnn/while/maximum_iterations:Y U

_output_shapes
: 
;
_user_specified_name#!sequential/rnn/while/loop_counter
л
D
(__inference_dropout_layer_call_fn_273540

inputs
identity▓
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:         d2* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *L
fGRE
C__inference_dropout_layer_call_and_return_conditional_losses_271996d
IdentityIdentityPartitionedCall:output:0*
T0*+
_output_shapes
:         d2"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:         d2:S O
+
_output_shapes
:         d2
 
_user_specified_nameinputs
х
є
*__inference_lstm_cell_layer_call_fn_273630

inputs
states_0
states_1
unknown:	а
	unknown_0:	Hа
	unknown_1:	а
identity

identity_1

identity_2ИвStatefulPartitionedCallе
StatefulPartitionedCallStatefulPartitionedCallinputsstates_0states_1unknown	unknown_0	unknown_1*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:         H:         H:         H*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *N
fIRG
E__inference_lstm_cell_layer_call_and_return_conditional_losses_271374o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         Hq

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*'
_output_shapes
:         Hq

Identity_2Identity StatefulPartitionedCall:output:2^NoOp*
T0*'
_output_shapes
:         H`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:         :         H:         H: : : 22
StatefulPartitionedCallStatefulPartitionedCall:QM
'
_output_shapes
:         H
"
_user_specified_name
states_1:QM
'
_output_shapes
:         H
"
_user_specified_name
states_0:O K
'
_output_shapes
:         
 
_user_specified_nameinputs
√a
╡
while_body_271612
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0C
0while_lstm_cell_matmul_readvariableop_resource_0:	аE
2while_lstm_cell_matmul_1_readvariableop_resource_0:	Hа@
1while_lstm_cell_biasadd_readvariableop_resource_0:	а
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorA
.while_lstm_cell_matmul_readvariableop_resource:	аC
0while_lstm_cell_matmul_1_readvariableop_resource:	Hа>
/while_lstm_cell_biasadd_readvariableop_resource:	аИв&while/lstm_cell/BiasAdd/ReadVariableOpв%while/lstm_cell/MatMul/ReadVariableOpв'while/lstm_cell/MatMul_1/ReadVariableOpИ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       ж
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:         *
element_dtype0Н
while/lstm_cell/ones_like/ShapeShape0while/TensorArrayV2Read/TensorListGetItem:item:0*
T0*
_output_shapes
::э╧d
while/lstm_cell/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  А?з
while/lstm_cell/ones_likeFill(while/lstm_cell/ones_like/Shape:output:0(while/lstm_cell/ones_like/Const:output:0*
T0*'
_output_shapes
:         b
while/lstm_cell/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  а?а
while/lstm_cell/dropout/MulMul"while/lstm_cell/ones_like:output:0&while/lstm_cell/dropout/Const:output:0*
T0*'
_output_shapes
:         }
while/lstm_cell/dropout/ShapeShape"while/lstm_cell/ones_like:output:0*
T0*
_output_shapes
::э╧м
4while/lstm_cell/dropout/random_uniform/RandomUniformRandomUniform&while/lstm_cell/dropout/Shape:output:0*
T0*'
_output_shapes
:         *
dtype0k
&while/lstm_cell/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *═╠L>╓
$while/lstm_cell/dropout/GreaterEqualGreaterEqual=while/lstm_cell/dropout/random_uniform/RandomUniform:output:0/while/lstm_cell/dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:         d
while/lstm_cell/dropout/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    ╙
 while/lstm_cell/dropout/SelectV2SelectV2(while/lstm_cell/dropout/GreaterEqual:z:0while/lstm_cell/dropout/Mul:z:0(while/lstm_cell/dropout/Const_1:output:0*
T0*'
_output_shapes
:         d
while/lstm_cell/dropout_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  а?д
while/lstm_cell/dropout_1/MulMul"while/lstm_cell/ones_like:output:0(while/lstm_cell/dropout_1/Const:output:0*
T0*'
_output_shapes
:         
while/lstm_cell/dropout_1/ShapeShape"while/lstm_cell/ones_like:output:0*
T0*
_output_shapes
::э╧░
6while/lstm_cell/dropout_1/random_uniform/RandomUniformRandomUniform(while/lstm_cell/dropout_1/Shape:output:0*
T0*'
_output_shapes
:         *
dtype0m
(while/lstm_cell/dropout_1/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *═╠L>▄
&while/lstm_cell/dropout_1/GreaterEqualGreaterEqual?while/lstm_cell/dropout_1/random_uniform/RandomUniform:output:01while/lstm_cell/dropout_1/GreaterEqual/y:output:0*
T0*'
_output_shapes
:         f
!while/lstm_cell/dropout_1/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    █
"while/lstm_cell/dropout_1/SelectV2SelectV2*while/lstm_cell/dropout_1/GreaterEqual:z:0!while/lstm_cell/dropout_1/Mul:z:0*while/lstm_cell/dropout_1/Const_1:output:0*
T0*'
_output_shapes
:         d
while/lstm_cell/dropout_2/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  а?д
while/lstm_cell/dropout_2/MulMul"while/lstm_cell/ones_like:output:0(while/lstm_cell/dropout_2/Const:output:0*
T0*'
_output_shapes
:         
while/lstm_cell/dropout_2/ShapeShape"while/lstm_cell/ones_like:output:0*
T0*
_output_shapes
::э╧░
6while/lstm_cell/dropout_2/random_uniform/RandomUniformRandomUniform(while/lstm_cell/dropout_2/Shape:output:0*
T0*'
_output_shapes
:         *
dtype0m
(while/lstm_cell/dropout_2/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *═╠L>▄
&while/lstm_cell/dropout_2/GreaterEqualGreaterEqual?while/lstm_cell/dropout_2/random_uniform/RandomUniform:output:01while/lstm_cell/dropout_2/GreaterEqual/y:output:0*
T0*'
_output_shapes
:         f
!while/lstm_cell/dropout_2/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    █
"while/lstm_cell/dropout_2/SelectV2SelectV2*while/lstm_cell/dropout_2/GreaterEqual:z:0!while/lstm_cell/dropout_2/Mul:z:0*while/lstm_cell/dropout_2/Const_1:output:0*
T0*'
_output_shapes
:         d
while/lstm_cell/dropout_3/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  а?д
while/lstm_cell/dropout_3/MulMul"while/lstm_cell/ones_like:output:0(while/lstm_cell/dropout_3/Const:output:0*
T0*'
_output_shapes
:         
while/lstm_cell/dropout_3/ShapeShape"while/lstm_cell/ones_like:output:0*
T0*
_output_shapes
::э╧░
6while/lstm_cell/dropout_3/random_uniform/RandomUniformRandomUniform(while/lstm_cell/dropout_3/Shape:output:0*
T0*'
_output_shapes
:         *
dtype0m
(while/lstm_cell/dropout_3/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *═╠L>▄
&while/lstm_cell/dropout_3/GreaterEqualGreaterEqual?while/lstm_cell/dropout_3/random_uniform/RandomUniform:output:01while/lstm_cell/dropout_3/GreaterEqual/y:output:0*
T0*'
_output_shapes
:         f
!while/lstm_cell/dropout_3/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    █
"while/lstm_cell/dropout_3/SelectV2SelectV2*while/lstm_cell/dropout_3/GreaterEqual:z:0!while/lstm_cell/dropout_3/Mul:z:0*while/lstm_cell/dropout_3/Const_1:output:0*
T0*'
_output_shapes
:         й
while/lstm_cell/mulMul0while/TensorArrayV2Read/TensorListGetItem:item:0)while/lstm_cell/dropout/SelectV2:output:0*
T0*'
_output_shapes
:         Ч
%while/lstm_cell/MatMul/ReadVariableOpReadVariableOp0while_lstm_cell_matmul_readvariableop_resource_0*
_output_shapes
:	а*
dtype0Ы
while/lstm_cell/MatMulMatMulwhile/lstm_cell/mul:z:0-while/lstm_cell/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         аЫ
'while/lstm_cell/MatMul_1/ReadVariableOpReadVariableOp2while_lstm_cell_matmul_1_readvariableop_resource_0*
_output_shapes
:	Hа*
dtype0Ы
while/lstm_cell/MatMul_1MatMulwhile_placeholder_2/while/lstm_cell/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         аХ
while/lstm_cell/addAddV2 while/lstm_cell/MatMul:product:0"while/lstm_cell/MatMul_1:product:0*
T0*(
_output_shapes
:         аХ
&while/lstm_cell/BiasAdd/ReadVariableOpReadVariableOp1while_lstm_cell_biasadd_readvariableop_resource_0*
_output_shapes	
:а*
dtype0Ю
while/lstm_cell/BiasAddBiasAddwhile/lstm_cell/add:z:0.while/lstm_cell/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         аa
while/lstm_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ц
while/lstm_cell/splitSplit(while/lstm_cell/split/split_dim:output:0 while/lstm_cell/BiasAdd:output:0*
T0*`
_output_shapesN
L:         H:         H:         H:         H*
	num_splitt
while/lstm_cell/SigmoidSigmoidwhile/lstm_cell/split:output:0*
T0*'
_output_shapes
:         Hv
while/lstm_cell/Sigmoid_1Sigmoidwhile/lstm_cell/split:output:1*
T0*'
_output_shapes
:         HВ
while/lstm_cell/mul_1Mulwhile/lstm_cell/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:         Hn
while/lstm_cell/TanhTanhwhile/lstm_cell/split:output:2*
T0*'
_output_shapes
:         HЕ
while/lstm_cell/mul_2Mulwhile/lstm_cell/Sigmoid:y:0while/lstm_cell/Tanh:y:0*
T0*'
_output_shapes
:         HЖ
while/lstm_cell/add_1AddV2while/lstm_cell/mul_1:z:0while/lstm_cell/mul_2:z:0*
T0*'
_output_shapes
:         Hv
while/lstm_cell/Sigmoid_2Sigmoidwhile/lstm_cell/split:output:3*
T0*'
_output_shapes
:         Hk
while/lstm_cell/Tanh_1Tanhwhile/lstm_cell/add_1:z:0*
T0*'
_output_shapes
:         HЙ
while/lstm_cell/mul_3Mulwhile/lstm_cell/Sigmoid_2:y:0while/lstm_cell/Tanh_1:y:0*
T0*'
_output_shapes
:         H┬
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell/mul_3:z:0*
_output_shapes
: *
element_dtype0:щш╥M
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: Ж
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: v
while/Identity_4Identitywhile/lstm_cell/mul_3:z:0^while/NoOp*
T0*'
_output_shapes
:         Hv
while/Identity_5Identitywhile/lstm_cell/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:         H╟

while/NoOpNoOp'^while/lstm_cell/BiasAdd/ReadVariableOp&^while/lstm_cell/MatMul/ReadVariableOp(^while/lstm_cell/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0")
while_identitywhile/Identity:output:0"d
/while_lstm_cell_biasadd_readvariableop_resource1while_lstm_cell_biasadd_readvariableop_resource_0"f
0while_lstm_cell_matmul_1_readvariableop_resource2while_lstm_cell_matmul_1_readvariableop_resource_0"b
.while_lstm_cell_matmul_readvariableop_resource0while_lstm_cell_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"и
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :         H:         H: : : : : 2P
&while/lstm_cell/BiasAdd/ReadVariableOp&while/lstm_cell/BiasAdd/ReadVariableOp2N
%while/lstm_cell/MatMul/ReadVariableOp%while/lstm_cell/MatMul/ReadVariableOp2R
'while/lstm_cell/MatMul_1/ReadVariableOp'while/lstm_cell/MatMul_1/ReadVariableOp:

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:         H:-)
'
_output_shapes
:         H:

_output_shapes
: :

_output_shapes
: :PL

_output_shapes
: 
2
_user_specified_namewhile/maximum_iterations:J F

_output_shapes
: 
,
_user_specified_namewhile/loop_counter
╚
Э
F__inference_sequential_layer_call_and_return_conditional_losses_272004
	rnn_input

rnn_271980:	а

rnn_271982:	Hа

rnn_271984:	а
dense_271987:H2
dense_271989:2 
dense_1_271998:2
dense_1_272000:
identityИвdense/StatefulPartitionedCallвdense_1/StatefulPartitionedCallвrnn/StatefulPartitionedCallё
rnn/StatefulPartitionedCallStatefulPartitionedCall	rnn_input
rnn_271980
rnn_271982
rnn_271984*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:         dH*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *H
fCRA
?__inference_rnn_layer_call_and_return_conditional_losses_271979Ж
dense/StatefulPartitionedCallStatefulPartitionedCall$rnn/StatefulPartitionedCall:output:0dense_271987dense_271989*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:         d2*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *J
fERC
A__inference_dense_layer_call_and_return_conditional_losses_271770┌
dropout/PartitionedCallPartitionedCall&dense/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:         d2* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *L
fGRE
C__inference_dropout_layer_call_and_return_conditional_losses_271996К
dense_1/StatefulPartitionedCallStatefulPartitionedCall dropout/PartitionedCall:output:0dense_1_271998dense_1_272000*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:         d*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *L
fGRE
C__inference_dense_1_layer_call_and_return_conditional_losses_271820{
IdentityIdentity(dense_1/StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:         dж
NoOpNoOp^dense/StatefulPartitionedCall ^dense_1/StatefulPartitionedCall^rnn/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%:         d: : : : : : : 2>
dense/StatefulPartitionedCalldense/StatefulPartitionedCall2B
dense_1/StatefulPartitionedCalldense_1/StatefulPartitionedCall2:
rnn/StatefulPartitionedCallrnn/StatefulPartitionedCall:V R
+
_output_shapes
:         d
#
_user_specified_name	rnn_input
║:
Б
E__inference_lstm_cell_layer_call_and_return_conditional_losses_271226

inputs

states
states_11
matmul_readvariableop_resource:	а3
 matmul_1_readvariableop_resource:	Hа.
biasadd_readvariableop_resource:	а
identity

identity_1

identity_2ИвBiasAdd/ReadVariableOpвMatMul/ReadVariableOpвMatMul_1/ReadVariableOpS
ones_like/ShapeShapeinputs*
T0*
_output_shapes
::э╧T
ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  А?w
	ones_likeFillones_like/Shape:output:0ones_like/Const:output:0*
T0*'
_output_shapes
:         R
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  а?p
dropout/MulMulones_like:output:0dropout/Const:output:0*
T0*'
_output_shapes
:         ]
dropout/ShapeShapeones_like:output:0*
T0*
_output_shapes
::э╧М
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*'
_output_shapes
:         *
dtype0[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *═╠L>ж
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:         T
dropout/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    У
dropout/SelectV2SelectV2dropout/GreaterEqual:z:0dropout/Mul:z:0dropout/Const_1:output:0*
T0*'
_output_shapes
:         T
dropout_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  а?t
dropout_1/MulMulones_like:output:0dropout_1/Const:output:0*
T0*'
_output_shapes
:         _
dropout_1/ShapeShapeones_like:output:0*
T0*
_output_shapes
::э╧Р
&dropout_1/random_uniform/RandomUniformRandomUniformdropout_1/Shape:output:0*
T0*'
_output_shapes
:         *
dtype0]
dropout_1/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *═╠L>м
dropout_1/GreaterEqualGreaterEqual/dropout_1/random_uniform/RandomUniform:output:0!dropout_1/GreaterEqual/y:output:0*
T0*'
_output_shapes
:         V
dropout_1/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    Ы
dropout_1/SelectV2SelectV2dropout_1/GreaterEqual:z:0dropout_1/Mul:z:0dropout_1/Const_1:output:0*
T0*'
_output_shapes
:         T
dropout_2/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  а?t
dropout_2/MulMulones_like:output:0dropout_2/Const:output:0*
T0*'
_output_shapes
:         _
dropout_2/ShapeShapeones_like:output:0*
T0*
_output_shapes
::э╧Р
&dropout_2/random_uniform/RandomUniformRandomUniformdropout_2/Shape:output:0*
T0*'
_output_shapes
:         *
dtype0]
dropout_2/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *═╠L>м
dropout_2/GreaterEqualGreaterEqual/dropout_2/random_uniform/RandomUniform:output:0!dropout_2/GreaterEqual/y:output:0*
T0*'
_output_shapes
:         V
dropout_2/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    Ы
dropout_2/SelectV2SelectV2dropout_2/GreaterEqual:z:0dropout_2/Mul:z:0dropout_2/Const_1:output:0*
T0*'
_output_shapes
:         T
dropout_3/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  а?t
dropout_3/MulMulones_like:output:0dropout_3/Const:output:0*
T0*'
_output_shapes
:         _
dropout_3/ShapeShapeones_like:output:0*
T0*
_output_shapes
::э╧Р
&dropout_3/random_uniform/RandomUniformRandomUniformdropout_3/Shape:output:0*
T0*'
_output_shapes
:         *
dtype0]
dropout_3/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *═╠L>м
dropout_3/GreaterEqualGreaterEqual/dropout_3/random_uniform/RandomUniform:output:0!dropout_3/GreaterEqual/y:output:0*
T0*'
_output_shapes
:         V
dropout_3/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    Ы
dropout_3/SelectV2SelectV2dropout_3/GreaterEqual:z:0dropout_3/Mul:z:0dropout_3/Const_1:output:0*
T0*'
_output_shapes
:         _
mulMulinputsdropout/SelectV2:output:0*
T0*'
_output_shapes
:         u
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	а*
dtype0k
MatMulMatMulmul:z:0MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         аy
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes
:	Hа*
dtype0n
MatMul_1MatMulstatesMatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         аe
addAddV2MatMul:product:0MatMul_1:product:0*
T0*(
_output_shapes
:         аs
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:а*
dtype0n
BiasAddBiasAddadd:z:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         аQ
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :╢
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*`
_output_shapesN
L:         H:         H:         H:         H*
	num_splitT
SigmoidSigmoidsplit:output:0*
T0*'
_output_shapes
:         HV
	Sigmoid_1Sigmoidsplit:output:1*
T0*'
_output_shapes
:         HW
mul_1MulSigmoid_1:y:0states_1*
T0*'
_output_shapes
:         HN
TanhTanhsplit:output:2*
T0*'
_output_shapes
:         HU
mul_2MulSigmoid:y:0Tanh:y:0*
T0*'
_output_shapes
:         HV
add_1AddV2	mul_1:z:0	mul_2:z:0*
T0*'
_output_shapes
:         HV
	Sigmoid_2Sigmoidsplit:output:3*
T0*'
_output_shapes
:         HK
Tanh_1Tanh	add_1:z:0*
T0*'
_output_shapes
:         HY
mul_3MulSigmoid_2:y:0
Tanh_1:y:0*
T0*'
_output_shapes
:         HX
IdentityIdentity	mul_3:z:0^NoOp*
T0*'
_output_shapes
:         HZ

Identity_1Identity	mul_3:z:0^NoOp*
T0*'
_output_shapes
:         HZ

Identity_2Identity	add_1:z:0^NoOp*
T0*'
_output_shapes
:         HС
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:         :         H:         H: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:OK
'
_output_shapes
:         H
 
_user_specified_namestates:OK
'
_output_shapes
:         H
 
_user_specified_namestates:O K
'
_output_shapes
:         
 
_user_specified_nameinputs
ш
┐
F__inference_sequential_layer_call_and_return_conditional_losses_271827
	rnn_input

rnn_271732:	а

rnn_271734:	Hа

rnn_271736:	а
dense_271771:H2
dense_271773:2 
dense_1_271821:2
dense_1_271823:
identityИвdense/StatefulPartitionedCallвdense_1/StatefulPartitionedCallвdropout/StatefulPartitionedCallвrnn/StatefulPartitionedCallё
rnn/StatefulPartitionedCallStatefulPartitionedCall	rnn_input
rnn_271732
rnn_271734
rnn_271736*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:         dH*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *H
fCRA
?__inference_rnn_layer_call_and_return_conditional_losses_271731Ж
dense/StatefulPartitionedCallStatefulPartitionedCall$rnn/StatefulPartitionedCall:output:0dense_271771dense_271773*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:         d2*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *J
fERC
A__inference_dense_layer_call_and_return_conditional_losses_271770ъ
dropout/StatefulPartitionedCallStatefulPartitionedCall&dense/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:         d2* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *L
fGRE
C__inference_dropout_layer_call_and_return_conditional_losses_271788Т
dense_1/StatefulPartitionedCallStatefulPartitionedCall(dropout/StatefulPartitionedCall:output:0dense_1_271821dense_1_271823*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:         d*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *L
fGRE
C__inference_dense_1_layer_call_and_return_conditional_losses_271820{
IdentityIdentity(dense_1/StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:         d╚
NoOpNoOp^dense/StatefulPartitionedCall ^dense_1/StatefulPartitionedCall ^dropout/StatefulPartitionedCall^rnn/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%:         d: : : : : : : 2>
dense/StatefulPartitionedCalldense/StatefulPartitionedCall2B
dense_1/StatefulPartitionedCalldense_1/StatefulPartitionedCall2B
dropout/StatefulPartitionedCalldropout/StatefulPartitionedCall2:
rnn/StatefulPartitionedCallrnn/StatefulPartitionedCall:V R
+
_output_shapes
:         d
#
_user_specified_name	rnn_input
╪
·
C__inference_dense_1_layer_call_and_return_conditional_losses_271820

inputs3
!tensordot_readvariableop_resource:2-
biasadd_readvariableop_resource:
identityИвBiasAdd/ReadVariableOpвTensordot/ReadVariableOpz
Tensordot/ReadVariableOpReadVariableOp!tensordot_readvariableop_resource*
_output_shapes

:2*
dtype0X
Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:_
Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       S
Tensordot/ShapeShapeinputs*
T0*
_output_shapes
::э╧Y
Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : ╗
Tensordot/GatherV2GatherV2Tensordot/Shape:output:0Tensordot/free:output:0 Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:[
Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ┐
Tensordot/GatherV2_1GatherV2Tensordot/Shape:output:0Tensordot/axes:output:0"Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:Y
Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: n
Tensordot/ProdProdTensordot/GatherV2:output:0Tensordot/Const:output:0*
T0*
_output_shapes
: [
Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: t
Tensordot/Prod_1ProdTensordot/GatherV2_1:output:0Tensordot/Const_1:output:0*
T0*
_output_shapes
: W
Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : Ь
Tensordot/concatConcatV2Tensordot/free:output:0Tensordot/axes:output:0Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:y
Tensordot/stackPackTensordot/Prod:output:0Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:y
Tensordot/transpose	TransposeinputsTensordot/concat:output:0*
T0*+
_output_shapes
:         d2К
Tensordot/ReshapeReshapeTensordot/transpose:y:0Tensordot/stack:output:0*
T0*0
_output_shapes
:                  К
Tensordot/MatMulMatMulTensordot/Reshape:output:0 Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:         [
Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:Y
Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : з
Tensordot/concat_1ConcatV2Tensordot/GatherV2:output:0Tensordot/Const_2:output:0 Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:Г
	TensordotReshapeTensordot/MatMul:product:0Tensordot/concat_1:output:0*
T0*+
_output_shapes
:         dr
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0|
BiasAddBiasAddTensordot:output:0BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:         dc
IdentityIdentityBiasAdd:output:0^NoOp*
T0*+
_output_shapes
:         dz
NoOpNoOp^BiasAdd/ReadVariableOp^Tensordot/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:         d2: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp24
Tensordot/ReadVariableOpTensordot/ReadVariableOp:S O
+
_output_shapes
:         d2
 
_user_specified_nameinputs
У╘
Я
__inference__traced_save_273931
file_prefix5
#read_disablecopyonread_dense_kernel:H21
#read_1_disablecopyonread_dense_bias:29
'read_2_disablecopyonread_dense_1_kernel:23
%read_3_disablecopyonread_dense_1_bias:@
-read_4_disablecopyonread_rnn_lstm_cell_kernel:	аJ
7read_5_disablecopyonread_rnn_lstm_cell_recurrent_kernel:	Hа:
+read_6_disablecopyonread_rnn_lstm_cell_bias:	а,
"read_7_disablecopyonread_iteration:	 0
&read_8_disablecopyonread_learning_rate: G
4read_9_disablecopyonread_adam_m_rnn_lstm_cell_kernel:	аH
5read_10_disablecopyonread_adam_v_rnn_lstm_cell_kernel:	аR
?read_11_disablecopyonread_adam_m_rnn_lstm_cell_recurrent_kernel:	HаR
?read_12_disablecopyonread_adam_v_rnn_lstm_cell_recurrent_kernel:	HаB
3read_13_disablecopyonread_adam_m_rnn_lstm_cell_bias:	аB
3read_14_disablecopyonread_adam_v_rnn_lstm_cell_bias:	а?
-read_15_disablecopyonread_adam_m_dense_kernel:H2?
-read_16_disablecopyonread_adam_v_dense_kernel:H29
+read_17_disablecopyonread_adam_m_dense_bias:29
+read_18_disablecopyonread_adam_v_dense_bias:2A
/read_19_disablecopyonread_adam_m_dense_1_kernel:2A
/read_20_disablecopyonread_adam_v_dense_1_kernel:2;
-read_21_disablecopyonread_adam_m_dense_1_bias:;
-read_22_disablecopyonread_adam_v_dense_1_bias:+
!read_23_disablecopyonread_total_2: +
!read_24_disablecopyonread_count_2: +
!read_25_disablecopyonread_total_1: +
!read_26_disablecopyonread_count_1: )
read_27_disablecopyonread_total: )
read_28_disablecopyonread_count: 
savev2_const
identity_59ИвMergeV2CheckpointsвRead/DisableCopyOnReadвRead/ReadVariableOpвRead_1/DisableCopyOnReadвRead_1/ReadVariableOpвRead_10/DisableCopyOnReadвRead_10/ReadVariableOpвRead_11/DisableCopyOnReadвRead_11/ReadVariableOpвRead_12/DisableCopyOnReadвRead_12/ReadVariableOpвRead_13/DisableCopyOnReadвRead_13/ReadVariableOpвRead_14/DisableCopyOnReadвRead_14/ReadVariableOpвRead_15/DisableCopyOnReadвRead_15/ReadVariableOpвRead_16/DisableCopyOnReadвRead_16/ReadVariableOpвRead_17/DisableCopyOnReadвRead_17/ReadVariableOpвRead_18/DisableCopyOnReadвRead_18/ReadVariableOpвRead_19/DisableCopyOnReadвRead_19/ReadVariableOpвRead_2/DisableCopyOnReadвRead_2/ReadVariableOpвRead_20/DisableCopyOnReadвRead_20/ReadVariableOpвRead_21/DisableCopyOnReadвRead_21/ReadVariableOpвRead_22/DisableCopyOnReadвRead_22/ReadVariableOpвRead_23/DisableCopyOnReadвRead_23/ReadVariableOpвRead_24/DisableCopyOnReadвRead_24/ReadVariableOpвRead_25/DisableCopyOnReadвRead_25/ReadVariableOpвRead_26/DisableCopyOnReadвRead_26/ReadVariableOpвRead_27/DisableCopyOnReadвRead_27/ReadVariableOpвRead_28/DisableCopyOnReadвRead_28/ReadVariableOpвRead_3/DisableCopyOnReadвRead_3/ReadVariableOpвRead_4/DisableCopyOnReadвRead_4/ReadVariableOpвRead_5/DisableCopyOnReadвRead_5/ReadVariableOpвRead_6/DisableCopyOnReadвRead_6/ReadVariableOpвRead_7/DisableCopyOnReadвRead_7/ReadVariableOpвRead_8/DisableCopyOnReadвRead_8/ReadVariableOpвRead_9/DisableCopyOnReadвRead_9/ReadVariableOpw
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
: u
Read/DisableCopyOnReadDisableCopyOnRead#read_disablecopyonread_dense_kernel"/device:CPU:0*
_output_shapes
 Я
Read/ReadVariableOpReadVariableOp#read_disablecopyonread_dense_kernel^Read/DisableCopyOnRead"/device:CPU:0*
_output_shapes

:H2*
dtype0i
IdentityIdentityRead/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes

:H2a

Identity_1IdentityIdentity:output:0"/device:CPU:0*
T0*
_output_shapes

:H2w
Read_1/DisableCopyOnReadDisableCopyOnRead#read_1_disablecopyonread_dense_bias"/device:CPU:0*
_output_shapes
 Я
Read_1/ReadVariableOpReadVariableOp#read_1_disablecopyonread_dense_bias^Read_1/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:2*
dtype0i

Identity_2IdentityRead_1/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:2_

Identity_3IdentityIdentity_2:output:0"/device:CPU:0*
T0*
_output_shapes
:2{
Read_2/DisableCopyOnReadDisableCopyOnRead'read_2_disablecopyonread_dense_1_kernel"/device:CPU:0*
_output_shapes
 з
Read_2/ReadVariableOpReadVariableOp'read_2_disablecopyonread_dense_1_kernel^Read_2/DisableCopyOnRead"/device:CPU:0*
_output_shapes

:2*
dtype0m

Identity_4IdentityRead_2/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes

:2c

Identity_5IdentityIdentity_4:output:0"/device:CPU:0*
T0*
_output_shapes

:2y
Read_3/DisableCopyOnReadDisableCopyOnRead%read_3_disablecopyonread_dense_1_bias"/device:CPU:0*
_output_shapes
 б
Read_3/ReadVariableOpReadVariableOp%read_3_disablecopyonread_dense_1_bias^Read_3/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:*
dtype0i

Identity_6IdentityRead_3/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:_

Identity_7IdentityIdentity_6:output:0"/device:CPU:0*
T0*
_output_shapes
:Б
Read_4/DisableCopyOnReadDisableCopyOnRead-read_4_disablecopyonread_rnn_lstm_cell_kernel"/device:CPU:0*
_output_shapes
 о
Read_4/ReadVariableOpReadVariableOp-read_4_disablecopyonread_rnn_lstm_cell_kernel^Read_4/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:	а*
dtype0n

Identity_8IdentityRead_4/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:	аd

Identity_9IdentityIdentity_8:output:0"/device:CPU:0*
T0*
_output_shapes
:	аЛ
Read_5/DisableCopyOnReadDisableCopyOnRead7read_5_disablecopyonread_rnn_lstm_cell_recurrent_kernel"/device:CPU:0*
_output_shapes
 ╕
Read_5/ReadVariableOpReadVariableOp7read_5_disablecopyonread_rnn_lstm_cell_recurrent_kernel^Read_5/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:	Hа*
dtype0o
Identity_10IdentityRead_5/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:	Hаf
Identity_11IdentityIdentity_10:output:0"/device:CPU:0*
T0*
_output_shapes
:	Hа
Read_6/DisableCopyOnReadDisableCopyOnRead+read_6_disablecopyonread_rnn_lstm_cell_bias"/device:CPU:0*
_output_shapes
 и
Read_6/ReadVariableOpReadVariableOp+read_6_disablecopyonread_rnn_lstm_cell_bias^Read_6/DisableCopyOnRead"/device:CPU:0*
_output_shapes	
:а*
dtype0k
Identity_12IdentityRead_6/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes	
:аb
Identity_13IdentityIdentity_12:output:0"/device:CPU:0*
T0*
_output_shapes	
:аv
Read_7/DisableCopyOnReadDisableCopyOnRead"read_7_disablecopyonread_iteration"/device:CPU:0*
_output_shapes
 Ъ
Read_7/ReadVariableOpReadVariableOp"read_7_disablecopyonread_iteration^Read_7/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0	f
Identity_14IdentityRead_7/ReadVariableOp:value:0"/device:CPU:0*
T0	*
_output_shapes
: ]
Identity_15IdentityIdentity_14:output:0"/device:CPU:0*
T0	*
_output_shapes
: z
Read_8/DisableCopyOnReadDisableCopyOnRead&read_8_disablecopyonread_learning_rate"/device:CPU:0*
_output_shapes
 Ю
Read_8/ReadVariableOpReadVariableOp&read_8_disablecopyonread_learning_rate^Read_8/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0f
Identity_16IdentityRead_8/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: ]
Identity_17IdentityIdentity_16:output:0"/device:CPU:0*
T0*
_output_shapes
: И
Read_9/DisableCopyOnReadDisableCopyOnRead4read_9_disablecopyonread_adam_m_rnn_lstm_cell_kernel"/device:CPU:0*
_output_shapes
 ╡
Read_9/ReadVariableOpReadVariableOp4read_9_disablecopyonread_adam_m_rnn_lstm_cell_kernel^Read_9/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:	а*
dtype0o
Identity_18IdentityRead_9/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:	аf
Identity_19IdentityIdentity_18:output:0"/device:CPU:0*
T0*
_output_shapes
:	аК
Read_10/DisableCopyOnReadDisableCopyOnRead5read_10_disablecopyonread_adam_v_rnn_lstm_cell_kernel"/device:CPU:0*
_output_shapes
 ╕
Read_10/ReadVariableOpReadVariableOp5read_10_disablecopyonread_adam_v_rnn_lstm_cell_kernel^Read_10/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:	а*
dtype0p
Identity_20IdentityRead_10/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:	аf
Identity_21IdentityIdentity_20:output:0"/device:CPU:0*
T0*
_output_shapes
:	аФ
Read_11/DisableCopyOnReadDisableCopyOnRead?read_11_disablecopyonread_adam_m_rnn_lstm_cell_recurrent_kernel"/device:CPU:0*
_output_shapes
 ┬
Read_11/ReadVariableOpReadVariableOp?read_11_disablecopyonread_adam_m_rnn_lstm_cell_recurrent_kernel^Read_11/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:	Hа*
dtype0p
Identity_22IdentityRead_11/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:	Hаf
Identity_23IdentityIdentity_22:output:0"/device:CPU:0*
T0*
_output_shapes
:	HаФ
Read_12/DisableCopyOnReadDisableCopyOnRead?read_12_disablecopyonread_adam_v_rnn_lstm_cell_recurrent_kernel"/device:CPU:0*
_output_shapes
 ┬
Read_12/ReadVariableOpReadVariableOp?read_12_disablecopyonread_adam_v_rnn_lstm_cell_recurrent_kernel^Read_12/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:	Hа*
dtype0p
Identity_24IdentityRead_12/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:	Hаf
Identity_25IdentityIdentity_24:output:0"/device:CPU:0*
T0*
_output_shapes
:	HаИ
Read_13/DisableCopyOnReadDisableCopyOnRead3read_13_disablecopyonread_adam_m_rnn_lstm_cell_bias"/device:CPU:0*
_output_shapes
 ▓
Read_13/ReadVariableOpReadVariableOp3read_13_disablecopyonread_adam_m_rnn_lstm_cell_bias^Read_13/DisableCopyOnRead"/device:CPU:0*
_output_shapes	
:а*
dtype0l
Identity_26IdentityRead_13/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes	
:аb
Identity_27IdentityIdentity_26:output:0"/device:CPU:0*
T0*
_output_shapes	
:аИ
Read_14/DisableCopyOnReadDisableCopyOnRead3read_14_disablecopyonread_adam_v_rnn_lstm_cell_bias"/device:CPU:0*
_output_shapes
 ▓
Read_14/ReadVariableOpReadVariableOp3read_14_disablecopyonread_adam_v_rnn_lstm_cell_bias^Read_14/DisableCopyOnRead"/device:CPU:0*
_output_shapes	
:а*
dtype0l
Identity_28IdentityRead_14/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes	
:аb
Identity_29IdentityIdentity_28:output:0"/device:CPU:0*
T0*
_output_shapes	
:аВ
Read_15/DisableCopyOnReadDisableCopyOnRead-read_15_disablecopyonread_adam_m_dense_kernel"/device:CPU:0*
_output_shapes
 п
Read_15/ReadVariableOpReadVariableOp-read_15_disablecopyonread_adam_m_dense_kernel^Read_15/DisableCopyOnRead"/device:CPU:0*
_output_shapes

:H2*
dtype0o
Identity_30IdentityRead_15/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes

:H2e
Identity_31IdentityIdentity_30:output:0"/device:CPU:0*
T0*
_output_shapes

:H2В
Read_16/DisableCopyOnReadDisableCopyOnRead-read_16_disablecopyonread_adam_v_dense_kernel"/device:CPU:0*
_output_shapes
 п
Read_16/ReadVariableOpReadVariableOp-read_16_disablecopyonread_adam_v_dense_kernel^Read_16/DisableCopyOnRead"/device:CPU:0*
_output_shapes

:H2*
dtype0o
Identity_32IdentityRead_16/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes

:H2e
Identity_33IdentityIdentity_32:output:0"/device:CPU:0*
T0*
_output_shapes

:H2А
Read_17/DisableCopyOnReadDisableCopyOnRead+read_17_disablecopyonread_adam_m_dense_bias"/device:CPU:0*
_output_shapes
 й
Read_17/ReadVariableOpReadVariableOp+read_17_disablecopyonread_adam_m_dense_bias^Read_17/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:2*
dtype0k
Identity_34IdentityRead_17/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:2a
Identity_35IdentityIdentity_34:output:0"/device:CPU:0*
T0*
_output_shapes
:2А
Read_18/DisableCopyOnReadDisableCopyOnRead+read_18_disablecopyonread_adam_v_dense_bias"/device:CPU:0*
_output_shapes
 й
Read_18/ReadVariableOpReadVariableOp+read_18_disablecopyonread_adam_v_dense_bias^Read_18/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:2*
dtype0k
Identity_36IdentityRead_18/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:2a
Identity_37IdentityIdentity_36:output:0"/device:CPU:0*
T0*
_output_shapes
:2Д
Read_19/DisableCopyOnReadDisableCopyOnRead/read_19_disablecopyonread_adam_m_dense_1_kernel"/device:CPU:0*
_output_shapes
 ▒
Read_19/ReadVariableOpReadVariableOp/read_19_disablecopyonread_adam_m_dense_1_kernel^Read_19/DisableCopyOnRead"/device:CPU:0*
_output_shapes

:2*
dtype0o
Identity_38IdentityRead_19/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes

:2e
Identity_39IdentityIdentity_38:output:0"/device:CPU:0*
T0*
_output_shapes

:2Д
Read_20/DisableCopyOnReadDisableCopyOnRead/read_20_disablecopyonread_adam_v_dense_1_kernel"/device:CPU:0*
_output_shapes
 ▒
Read_20/ReadVariableOpReadVariableOp/read_20_disablecopyonread_adam_v_dense_1_kernel^Read_20/DisableCopyOnRead"/device:CPU:0*
_output_shapes

:2*
dtype0o
Identity_40IdentityRead_20/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes

:2e
Identity_41IdentityIdentity_40:output:0"/device:CPU:0*
T0*
_output_shapes

:2В
Read_21/DisableCopyOnReadDisableCopyOnRead-read_21_disablecopyonread_adam_m_dense_1_bias"/device:CPU:0*
_output_shapes
 л
Read_21/ReadVariableOpReadVariableOp-read_21_disablecopyonread_adam_m_dense_1_bias^Read_21/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:*
dtype0k
Identity_42IdentityRead_21/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:a
Identity_43IdentityIdentity_42:output:0"/device:CPU:0*
T0*
_output_shapes
:В
Read_22/DisableCopyOnReadDisableCopyOnRead-read_22_disablecopyonread_adam_v_dense_1_bias"/device:CPU:0*
_output_shapes
 л
Read_22/ReadVariableOpReadVariableOp-read_22_disablecopyonread_adam_v_dense_1_bias^Read_22/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:*
dtype0k
Identity_44IdentityRead_22/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:a
Identity_45IdentityIdentity_44:output:0"/device:CPU:0*
T0*
_output_shapes
:v
Read_23/DisableCopyOnReadDisableCopyOnRead!read_23_disablecopyonread_total_2"/device:CPU:0*
_output_shapes
 Ы
Read_23/ReadVariableOpReadVariableOp!read_23_disablecopyonread_total_2^Read_23/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0g
Identity_46IdentityRead_23/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: ]
Identity_47IdentityIdentity_46:output:0"/device:CPU:0*
T0*
_output_shapes
: v
Read_24/DisableCopyOnReadDisableCopyOnRead!read_24_disablecopyonread_count_2"/device:CPU:0*
_output_shapes
 Ы
Read_24/ReadVariableOpReadVariableOp!read_24_disablecopyonread_count_2^Read_24/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0g
Identity_48IdentityRead_24/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: ]
Identity_49IdentityIdentity_48:output:0"/device:CPU:0*
T0*
_output_shapes
: v
Read_25/DisableCopyOnReadDisableCopyOnRead!read_25_disablecopyonread_total_1"/device:CPU:0*
_output_shapes
 Ы
Read_25/ReadVariableOpReadVariableOp!read_25_disablecopyonread_total_1^Read_25/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0g
Identity_50IdentityRead_25/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: ]
Identity_51IdentityIdentity_50:output:0"/device:CPU:0*
T0*
_output_shapes
: v
Read_26/DisableCopyOnReadDisableCopyOnRead!read_26_disablecopyonread_count_1"/device:CPU:0*
_output_shapes
 Ы
Read_26/ReadVariableOpReadVariableOp!read_26_disablecopyonread_count_1^Read_26/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0g
Identity_52IdentityRead_26/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: ]
Identity_53IdentityIdentity_52:output:0"/device:CPU:0*
T0*
_output_shapes
: t
Read_27/DisableCopyOnReadDisableCopyOnReadread_27_disablecopyonread_total"/device:CPU:0*
_output_shapes
 Щ
Read_27/ReadVariableOpReadVariableOpread_27_disablecopyonread_total^Read_27/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0g
Identity_54IdentityRead_27/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: ]
Identity_55IdentityIdentity_54:output:0"/device:CPU:0*
T0*
_output_shapes
: t
Read_28/DisableCopyOnReadDisableCopyOnReadread_28_disablecopyonread_count"/device:CPU:0*
_output_shapes
 Щ
Read_28/ReadVariableOpReadVariableOpread_28_disablecopyonread_count^Read_28/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0g
Identity_56IdentityRead_28/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: ]
Identity_57IdentityIdentity_56:output:0"/device:CPU:0*
T0*
_output_shapes
: ╪
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*Б
valueўBЇB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB&variables/0/.ATTRIBUTES/VARIABLE_VALUEB&variables/1/.ATTRIBUTES/VARIABLE_VALUEB&variables/2/.ATTRIBUTES/VARIABLE_VALUEB0optimizer/_iterations/.ATTRIBUTES/VARIABLE_VALUEB3optimizer/_learning_rate/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/1/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/2/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/3/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/4/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/5/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/6/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/7/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/8/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/9/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/10/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/11/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/12/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/13/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/14/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/2/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/2/count/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPHй
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*O
valueFBDB B B B B B B B B B B B B B B B B B B B B B B B B B B B B B ю
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0Identity_1:output:0Identity_3:output:0Identity_5:output:0Identity_7:output:0Identity_9:output:0Identity_11:output:0Identity_13:output:0Identity_15:output:0Identity_17:output:0Identity_19:output:0Identity_21:output:0Identity_23:output:0Identity_25:output:0Identity_27:output:0Identity_29:output:0Identity_31:output:0Identity_33:output:0Identity_35:output:0Identity_37:output:0Identity_39:output:0Identity_41:output:0Identity_43:output:0Identity_45:output:0Identity_47:output:0Identity_49:output:0Identity_51:output:0Identity_53:output:0Identity_55:output:0Identity_57:output:0savev2_const"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *,
dtypes"
 2	Р
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:│
MergeV2CheckpointsMergeV2Checkpoints/MergeV2Checkpoints/checkpoint_prefixes:output:0file_prefix"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 i
Identity_58Identityfile_prefix^MergeV2Checkpoints"/device:CPU:0*
T0*
_output_shapes
: U
Identity_59IdentityIdentity_58:output:0^NoOp*
T0*
_output_shapes
: ─
NoOpNoOp^MergeV2Checkpoints^Read/DisableCopyOnRead^Read/ReadVariableOp^Read_1/DisableCopyOnRead^Read_1/ReadVariableOp^Read_10/DisableCopyOnRead^Read_10/ReadVariableOp^Read_11/DisableCopyOnRead^Read_11/ReadVariableOp^Read_12/DisableCopyOnRead^Read_12/ReadVariableOp^Read_13/DisableCopyOnRead^Read_13/ReadVariableOp^Read_14/DisableCopyOnRead^Read_14/ReadVariableOp^Read_15/DisableCopyOnRead^Read_15/ReadVariableOp^Read_16/DisableCopyOnRead^Read_16/ReadVariableOp^Read_17/DisableCopyOnRead^Read_17/ReadVariableOp^Read_18/DisableCopyOnRead^Read_18/ReadVariableOp^Read_19/DisableCopyOnRead^Read_19/ReadVariableOp^Read_2/DisableCopyOnRead^Read_2/ReadVariableOp^Read_20/DisableCopyOnRead^Read_20/ReadVariableOp^Read_21/DisableCopyOnRead^Read_21/ReadVariableOp^Read_22/DisableCopyOnRead^Read_22/ReadVariableOp^Read_23/DisableCopyOnRead^Read_23/ReadVariableOp^Read_24/DisableCopyOnRead^Read_24/ReadVariableOp^Read_25/DisableCopyOnRead^Read_25/ReadVariableOp^Read_26/DisableCopyOnRead^Read_26/ReadVariableOp^Read_27/DisableCopyOnRead^Read_27/ReadVariableOp^Read_28/DisableCopyOnRead^Read_28/ReadVariableOp^Read_3/DisableCopyOnRead^Read_3/ReadVariableOp^Read_4/DisableCopyOnRead^Read_4/ReadVariableOp^Read_5/DisableCopyOnRead^Read_5/ReadVariableOp^Read_6/DisableCopyOnRead^Read_6/ReadVariableOp^Read_7/DisableCopyOnRead^Read_7/ReadVariableOp^Read_8/DisableCopyOnRead^Read_8/ReadVariableOp^Read_9/DisableCopyOnRead^Read_9/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "#
identity_59Identity_59:output:0*Q
_input_shapes@
>: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2(
MergeV2CheckpointsMergeV2Checkpoints20
Read/DisableCopyOnReadRead/DisableCopyOnRead2*
Read/ReadVariableOpRead/ReadVariableOp24
Read_1/DisableCopyOnReadRead_1/DisableCopyOnRead2.
Read_1/ReadVariableOpRead_1/ReadVariableOp26
Read_10/DisableCopyOnReadRead_10/DisableCopyOnRead20
Read_10/ReadVariableOpRead_10/ReadVariableOp26
Read_11/DisableCopyOnReadRead_11/DisableCopyOnRead20
Read_11/ReadVariableOpRead_11/ReadVariableOp26
Read_12/DisableCopyOnReadRead_12/DisableCopyOnRead20
Read_12/ReadVariableOpRead_12/ReadVariableOp26
Read_13/DisableCopyOnReadRead_13/DisableCopyOnRead20
Read_13/ReadVariableOpRead_13/ReadVariableOp26
Read_14/DisableCopyOnReadRead_14/DisableCopyOnRead20
Read_14/ReadVariableOpRead_14/ReadVariableOp26
Read_15/DisableCopyOnReadRead_15/DisableCopyOnRead20
Read_15/ReadVariableOpRead_15/ReadVariableOp26
Read_16/DisableCopyOnReadRead_16/DisableCopyOnRead20
Read_16/ReadVariableOpRead_16/ReadVariableOp26
Read_17/DisableCopyOnReadRead_17/DisableCopyOnRead20
Read_17/ReadVariableOpRead_17/ReadVariableOp26
Read_18/DisableCopyOnReadRead_18/DisableCopyOnRead20
Read_18/ReadVariableOpRead_18/ReadVariableOp26
Read_19/DisableCopyOnReadRead_19/DisableCopyOnRead20
Read_19/ReadVariableOpRead_19/ReadVariableOp24
Read_2/DisableCopyOnReadRead_2/DisableCopyOnRead2.
Read_2/ReadVariableOpRead_2/ReadVariableOp26
Read_20/DisableCopyOnReadRead_20/DisableCopyOnRead20
Read_20/ReadVariableOpRead_20/ReadVariableOp26
Read_21/DisableCopyOnReadRead_21/DisableCopyOnRead20
Read_21/ReadVariableOpRead_21/ReadVariableOp26
Read_22/DisableCopyOnReadRead_22/DisableCopyOnRead20
Read_22/ReadVariableOpRead_22/ReadVariableOp26
Read_23/DisableCopyOnReadRead_23/DisableCopyOnRead20
Read_23/ReadVariableOpRead_23/ReadVariableOp26
Read_24/DisableCopyOnReadRead_24/DisableCopyOnRead20
Read_24/ReadVariableOpRead_24/ReadVariableOp26
Read_25/DisableCopyOnReadRead_25/DisableCopyOnRead20
Read_25/ReadVariableOpRead_25/ReadVariableOp26
Read_26/DisableCopyOnReadRead_26/DisableCopyOnRead20
Read_26/ReadVariableOpRead_26/ReadVariableOp26
Read_27/DisableCopyOnReadRead_27/DisableCopyOnRead20
Read_27/ReadVariableOpRead_27/ReadVariableOp26
Read_28/DisableCopyOnReadRead_28/DisableCopyOnRead20
Read_28/ReadVariableOpRead_28/ReadVariableOp24
Read_3/DisableCopyOnReadRead_3/DisableCopyOnRead2.
Read_3/ReadVariableOpRead_3/ReadVariableOp24
Read_4/DisableCopyOnReadRead_4/DisableCopyOnRead2.
Read_4/ReadVariableOpRead_4/ReadVariableOp24
Read_5/DisableCopyOnReadRead_5/DisableCopyOnRead2.
Read_5/ReadVariableOpRead_5/ReadVariableOp24
Read_6/DisableCopyOnReadRead_6/DisableCopyOnRead2.
Read_6/ReadVariableOpRead_6/ReadVariableOp24
Read_7/DisableCopyOnReadRead_7/DisableCopyOnRead2.
Read_7/ReadVariableOpRead_7/ReadVariableOp24
Read_8/DisableCopyOnReadRead_8/DisableCopyOnRead2.
Read_8/ReadVariableOpRead_8/ReadVariableOp24
Read_9/DisableCopyOnReadRead_9/DisableCopyOnRead2.
Read_9/ReadVariableOpRead_9/ReadVariableOp:

_output_shapes
: :C ?

_output_shapes
: 
%
_user_specified_namefile_prefix
¤K
Е
?__inference_rnn_layer_call_and_return_conditional_losses_273490

inputs;
(lstm_cell_matmul_readvariableop_resource:	а=
*lstm_cell_matmul_1_readvariableop_resource:	Hа8
)lstm_cell_biasadd_readvariableop_resource:	а
identityИв lstm_cell/BiasAdd/ReadVariableOpвlstm_cell/MatMul/ReadVariableOpв!lstm_cell/MatMul_1/ReadVariableOpвwhileI
ShapeShapeinputs*
T0*
_output_shapes
::э╧]
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
valueB:╤
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskP
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :Hs
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    l
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:         HR
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :Hw
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:R
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    r
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:         Hc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          m
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:d         R
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
::э╧_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
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
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
         ┤
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щш╥Ж
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       р
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щш╥_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:щ
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         *
shrink_axis_masko
lstm_cell/ones_like/ShapeShapestrided_slice_2:output:0*
T0*
_output_shapes
::э╧^
lstm_cell/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  А?Х
lstm_cell/ones_likeFill"lstm_cell/ones_like/Shape:output:0"lstm_cell/ones_like/Const:output:0*
T0*'
_output_shapes
:         ~
lstm_cell/mulMulstrided_slice_2:output:0lstm_cell/ones_like:output:0*
T0*'
_output_shapes
:         Й
lstm_cell/MatMul/ReadVariableOpReadVariableOp(lstm_cell_matmul_readvariableop_resource*
_output_shapes
:	а*
dtype0Й
lstm_cell/MatMulMatMullstm_cell/mul:z:0'lstm_cell/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         аН
!lstm_cell/MatMul_1/ReadVariableOpReadVariableOp*lstm_cell_matmul_1_readvariableop_resource*
_output_shapes
:	Hа*
dtype0К
lstm_cell/MatMul_1MatMulzeros:output:0)lstm_cell/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         аГ
lstm_cell/addAddV2lstm_cell/MatMul:product:0lstm_cell/MatMul_1:product:0*
T0*(
_output_shapes
:         аЗ
 lstm_cell/BiasAdd/ReadVariableOpReadVariableOp)lstm_cell_biasadd_readvariableop_resource*
_output_shapes	
:а*
dtype0М
lstm_cell/BiasAddBiasAddlstm_cell/add:z:0(lstm_cell/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         а[
lstm_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :╘
lstm_cell/splitSplit"lstm_cell/split/split_dim:output:0lstm_cell/BiasAdd:output:0*
T0*`
_output_shapesN
L:         H:         H:         H:         H*
	num_splith
lstm_cell/SigmoidSigmoidlstm_cell/split:output:0*
T0*'
_output_shapes
:         Hj
lstm_cell/Sigmoid_1Sigmoidlstm_cell/split:output:1*
T0*'
_output_shapes
:         Hs
lstm_cell/mul_1Mullstm_cell/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:         Hb
lstm_cell/TanhTanhlstm_cell/split:output:2*
T0*'
_output_shapes
:         Hs
lstm_cell/mul_2Mullstm_cell/Sigmoid:y:0lstm_cell/Tanh:y:0*
T0*'
_output_shapes
:         Ht
lstm_cell/add_1AddV2lstm_cell/mul_1:z:0lstm_cell/mul_2:z:0*
T0*'
_output_shapes
:         Hj
lstm_cell/Sigmoid_2Sigmoidlstm_cell/split:output:3*
T0*'
_output_shapes
:         H_
lstm_cell/Tanh_1Tanhlstm_cell/add_1:z:0*
T0*'
_output_shapes
:         Hw
lstm_cell/mul_3Mullstm_cell/Sigmoid_2:y:0lstm_cell/Tanh_1:y:0*
T0*'
_output_shapes
:         Hn
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    H   ╕
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щш╥F
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
         T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ∙
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0(lstm_cell_matmul_readvariableop_resource*lstm_cell_matmul_1_readvariableop_resource)lstm_cell_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :         H:         H: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_273403*
condR
while_cond_273402*K
output_shapes:
8: : : : :         H:         H: : : : : *
parallel_iterations Б
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    H   ┬
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:d         H*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
         a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:З
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         H*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          Ц
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:         dHb
IdentityIdentitytranspose_1:y:0^NoOp*
T0*+
_output_shapes
:         dH╖
NoOpNoOp!^lstm_cell/BiasAdd/ReadVariableOp ^lstm_cell/MatMul/ReadVariableOp"^lstm_cell/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:         d: : : 2D
 lstm_cell/BiasAdd/ReadVariableOp lstm_cell/BiasAdd/ReadVariableOp2B
lstm_cell/MatMul/ReadVariableOplstm_cell/MatMul/ReadVariableOp2F
!lstm_cell/MatMul_1/ReadVariableOp!lstm_cell/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:         d
 
_user_specified_nameinputs
╗L
З
?__inference_rnn_layer_call_and_return_conditional_losses_273126
inputs_0;
(lstm_cell_matmul_readvariableop_resource:	а=
*lstm_cell_matmul_1_readvariableop_resource:	Hа8
)lstm_cell_biasadd_readvariableop_resource:	а
identityИв lstm_cell/BiasAdd/ReadVariableOpвlstm_cell/MatMul/ReadVariableOpв!lstm_cell/MatMul_1/ReadVariableOpвwhileK
ShapeShapeinputs_0*
T0*
_output_shapes
::э╧]
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
valueB:╤
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskP
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :Hs
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    l
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:         HR
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :Hw
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:R
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    r
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:         Hc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          x
	transpose	Transposeinputs_0transpose/perm:output:0*
T0*4
_output_shapes"
 :                  R
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
::э╧_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
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
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
         ┤
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щш╥Ж
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       р
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щш╥_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:щ
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         *
shrink_axis_masko
lstm_cell/ones_like/ShapeShapestrided_slice_2:output:0*
T0*
_output_shapes
::э╧^
lstm_cell/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  А?Х
lstm_cell/ones_likeFill"lstm_cell/ones_like/Shape:output:0"lstm_cell/ones_like/Const:output:0*
T0*'
_output_shapes
:         ~
lstm_cell/mulMulstrided_slice_2:output:0lstm_cell/ones_like:output:0*
T0*'
_output_shapes
:         Й
lstm_cell/MatMul/ReadVariableOpReadVariableOp(lstm_cell_matmul_readvariableop_resource*
_output_shapes
:	а*
dtype0Й
lstm_cell/MatMulMatMullstm_cell/mul:z:0'lstm_cell/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         аН
!lstm_cell/MatMul_1/ReadVariableOpReadVariableOp*lstm_cell_matmul_1_readvariableop_resource*
_output_shapes
:	Hа*
dtype0К
lstm_cell/MatMul_1MatMulzeros:output:0)lstm_cell/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         аГ
lstm_cell/addAddV2lstm_cell/MatMul:product:0lstm_cell/MatMul_1:product:0*
T0*(
_output_shapes
:         аЗ
 lstm_cell/BiasAdd/ReadVariableOpReadVariableOp)lstm_cell_biasadd_readvariableop_resource*
_output_shapes	
:а*
dtype0М
lstm_cell/BiasAddBiasAddlstm_cell/add:z:0(lstm_cell/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         а[
lstm_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :╘
lstm_cell/splitSplit"lstm_cell/split/split_dim:output:0lstm_cell/BiasAdd:output:0*
T0*`
_output_shapesN
L:         H:         H:         H:         H*
	num_splith
lstm_cell/SigmoidSigmoidlstm_cell/split:output:0*
T0*'
_output_shapes
:         Hj
lstm_cell/Sigmoid_1Sigmoidlstm_cell/split:output:1*
T0*'
_output_shapes
:         Hs
lstm_cell/mul_1Mullstm_cell/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:         Hb
lstm_cell/TanhTanhlstm_cell/split:output:2*
T0*'
_output_shapes
:         Hs
lstm_cell/mul_2Mullstm_cell/Sigmoid:y:0lstm_cell/Tanh:y:0*
T0*'
_output_shapes
:         Ht
lstm_cell/add_1AddV2lstm_cell/mul_1:z:0lstm_cell/mul_2:z:0*
T0*'
_output_shapes
:         Hj
lstm_cell/Sigmoid_2Sigmoidlstm_cell/split:output:3*
T0*'
_output_shapes
:         H_
lstm_cell/Tanh_1Tanhlstm_cell/add_1:z:0*
T0*'
_output_shapes
:         Hw
lstm_cell/mul_3Mullstm_cell/Sigmoid_2:y:0lstm_cell/Tanh_1:y:0*
T0*'
_output_shapes
:         Hn
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    H   ╕
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щш╥F
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
         T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ∙
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0(lstm_cell_matmul_readvariableop_resource*lstm_cell_matmul_1_readvariableop_resource)lstm_cell_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :         H:         H: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_273039*
condR
while_cond_273038*K
output_shapes:
8: : : : :         H:         H: : : : : *
parallel_iterations Б
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    H   ╦
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :                  H*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
         a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:З
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         H*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          Я
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :                  Hk
IdentityIdentitytranspose_1:y:0^NoOp*
T0*4
_output_shapes"
 :                  H╖
NoOpNoOp!^lstm_cell/BiasAdd/ReadVariableOp ^lstm_cell/MatMul/ReadVariableOp"^lstm_cell/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:                  : : : 2D
 lstm_cell/BiasAdd/ReadVariableOp lstm_cell/BiasAdd/ReadVariableOp2B
lstm_cell/MatMul/ReadVariableOplstm_cell/MatMul/ReadVariableOp2F
!lstm_cell/MatMul_1/ReadVariableOp!lstm_cell/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :                  
"
_user_specified_name
inputs_0
Ч	
├
while_cond_271891
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_271891___redundant_placeholder04
0while_while_cond_271891___redundant_placeholder14
0while_while_cond_271891___redundant_placeholder24
0while_while_cond_271891___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :         H:         H: :::::

_output_shapes
::

_output_shapes
: :-)
'
_output_shapes
:         H:-)
'
_output_shapes
:         H:

_output_shapes
: :

_output_shapes
: :PL

_output_shapes
: 
2
_user_specified_namewhile/maximum_iterations:J F

_output_shapes
: 
,
_user_specified_namewhile/loop_counter
А#
╬
while_body_271388
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0+
while_lstm_cell_271412_0:	а+
while_lstm_cell_271414_0:	Hа'
while_lstm_cell_271416_0:	а
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor)
while_lstm_cell_271412:	а)
while_lstm_cell_271414:	Hа%
while_lstm_cell_271416:	аИв'while/lstm_cell/StatefulPartitionedCallИ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       ж
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:         *
element_dtype0д
'while/lstm_cell/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_271412_0while_lstm_cell_271414_0while_lstm_cell_271416_0*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:         H:         H:         H*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *N
fIRG
E__inference_lstm_cell_layer_call_and_return_conditional_losses_271374┘
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder0while/lstm_cell/StatefulPartitionedCall:output:0*
_output_shapes
: *
element_dtype0:щш╥M
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: Ж
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: Н
while/Identity_4Identity0while/lstm_cell/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:         HН
while/Identity_5Identity0while/lstm_cell/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:         Hv

while/NoOpNoOp(^while/lstm_cell/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0")
while_identitywhile/Identity:output:0"2
while_lstm_cell_271412while_lstm_cell_271412_0"2
while_lstm_cell_271414while_lstm_cell_271414_0"2
while_lstm_cell_271416while_lstm_cell_271416_0"0
while_strided_slice_1while_strided_slice_1_0"и
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :         H:         H: : : : : 2R
'while/lstm_cell/StatefulPartitionedCall'while/lstm_cell/StatefulPartitionedCall:

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:         H:-)
'
_output_shapes
:         H:

_output_shapes
: :

_output_shapes
: :PL

_output_shapes
: 
2
_user_specified_namewhile/maximum_iterations:J F

_output_shapes
: 
,
_user_specified_namewhile/loop_counter
К	
а
$__inference_signature_wrapper_272201
	rnn_input
unknown:	а
	unknown_0:	Hа
	unknown_1:	а
	unknown_2:H2
	unknown_3:2
	unknown_4:2
	unknown_5:
identityИвStatefulPartitionedCall■
StatefulPartitionedCallStatefulPartitionedCall	rnn_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5*
Tin

2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:         d*)
_read_only_resource_inputs
	*-
config_proto

CPU

GPU 2J 8В **
f%R#
!__inference__wrapped_model_271126s
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:         d`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%:         d: : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:V R
+
_output_shapes
:         d
#
_user_specified_name	rnn_input
гo
Е
?__inference_rnn_layer_call_and_return_conditional_losses_273340

inputs;
(lstm_cell_matmul_readvariableop_resource:	а=
*lstm_cell_matmul_1_readvariableop_resource:	Hа8
)lstm_cell_biasadd_readvariableop_resource:	а
identityИв lstm_cell/BiasAdd/ReadVariableOpвlstm_cell/MatMul/ReadVariableOpв!lstm_cell/MatMul_1/ReadVariableOpвwhileI
ShapeShapeinputs*
T0*
_output_shapes
::э╧]
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
valueB:╤
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskP
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :Hs
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    l
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:         HR
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :Hw
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:R
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    r
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:         Hc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          m
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:d         R
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
::э╧_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
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
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
         ┤
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щш╥Ж
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       р
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щш╥_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:щ
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         *
shrink_axis_masko
lstm_cell/ones_like/ShapeShapestrided_slice_2:output:0*
T0*
_output_shapes
::э╧^
lstm_cell/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  А?Х
lstm_cell/ones_likeFill"lstm_cell/ones_like/Shape:output:0"lstm_cell/ones_like/Const:output:0*
T0*'
_output_shapes
:         \
lstm_cell/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  а?О
lstm_cell/dropout/MulMullstm_cell/ones_like:output:0 lstm_cell/dropout/Const:output:0*
T0*'
_output_shapes
:         q
lstm_cell/dropout/ShapeShapelstm_cell/ones_like:output:0*
T0*
_output_shapes
::э╧а
.lstm_cell/dropout/random_uniform/RandomUniformRandomUniform lstm_cell/dropout/Shape:output:0*
T0*'
_output_shapes
:         *
dtype0e
 lstm_cell/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *═╠L>─
lstm_cell/dropout/GreaterEqualGreaterEqual7lstm_cell/dropout/random_uniform/RandomUniform:output:0)lstm_cell/dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:         ^
lstm_cell/dropout/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    ╗
lstm_cell/dropout/SelectV2SelectV2"lstm_cell/dropout/GreaterEqual:z:0lstm_cell/dropout/Mul:z:0"lstm_cell/dropout/Const_1:output:0*
T0*'
_output_shapes
:         ^
lstm_cell/dropout_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  а?Т
lstm_cell/dropout_1/MulMullstm_cell/ones_like:output:0"lstm_cell/dropout_1/Const:output:0*
T0*'
_output_shapes
:         s
lstm_cell/dropout_1/ShapeShapelstm_cell/ones_like:output:0*
T0*
_output_shapes
::э╧д
0lstm_cell/dropout_1/random_uniform/RandomUniformRandomUniform"lstm_cell/dropout_1/Shape:output:0*
T0*'
_output_shapes
:         *
dtype0g
"lstm_cell/dropout_1/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *═╠L>╩
 lstm_cell/dropout_1/GreaterEqualGreaterEqual9lstm_cell/dropout_1/random_uniform/RandomUniform:output:0+lstm_cell/dropout_1/GreaterEqual/y:output:0*
T0*'
_output_shapes
:         `
lstm_cell/dropout_1/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    ├
lstm_cell/dropout_1/SelectV2SelectV2$lstm_cell/dropout_1/GreaterEqual:z:0lstm_cell/dropout_1/Mul:z:0$lstm_cell/dropout_1/Const_1:output:0*
T0*'
_output_shapes
:         ^
lstm_cell/dropout_2/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  а?Т
lstm_cell/dropout_2/MulMullstm_cell/ones_like:output:0"lstm_cell/dropout_2/Const:output:0*
T0*'
_output_shapes
:         s
lstm_cell/dropout_2/ShapeShapelstm_cell/ones_like:output:0*
T0*
_output_shapes
::э╧д
0lstm_cell/dropout_2/random_uniform/RandomUniformRandomUniform"lstm_cell/dropout_2/Shape:output:0*
T0*'
_output_shapes
:         *
dtype0g
"lstm_cell/dropout_2/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *═╠L>╩
 lstm_cell/dropout_2/GreaterEqualGreaterEqual9lstm_cell/dropout_2/random_uniform/RandomUniform:output:0+lstm_cell/dropout_2/GreaterEqual/y:output:0*
T0*'
_output_shapes
:         `
lstm_cell/dropout_2/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    ├
lstm_cell/dropout_2/SelectV2SelectV2$lstm_cell/dropout_2/GreaterEqual:z:0lstm_cell/dropout_2/Mul:z:0$lstm_cell/dropout_2/Const_1:output:0*
T0*'
_output_shapes
:         ^
lstm_cell/dropout_3/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  а?Т
lstm_cell/dropout_3/MulMullstm_cell/ones_like:output:0"lstm_cell/dropout_3/Const:output:0*
T0*'
_output_shapes
:         s
lstm_cell/dropout_3/ShapeShapelstm_cell/ones_like:output:0*
T0*
_output_shapes
::э╧д
0lstm_cell/dropout_3/random_uniform/RandomUniformRandomUniform"lstm_cell/dropout_3/Shape:output:0*
T0*'
_output_shapes
:         *
dtype0g
"lstm_cell/dropout_3/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *═╠L>╩
 lstm_cell/dropout_3/GreaterEqualGreaterEqual9lstm_cell/dropout_3/random_uniform/RandomUniform:output:0+lstm_cell/dropout_3/GreaterEqual/y:output:0*
T0*'
_output_shapes
:         `
lstm_cell/dropout_3/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    ├
lstm_cell/dropout_3/SelectV2SelectV2$lstm_cell/dropout_3/GreaterEqual:z:0lstm_cell/dropout_3/Mul:z:0$lstm_cell/dropout_3/Const_1:output:0*
T0*'
_output_shapes
:         Е
lstm_cell/mulMulstrided_slice_2:output:0#lstm_cell/dropout/SelectV2:output:0*
T0*'
_output_shapes
:         Й
lstm_cell/MatMul/ReadVariableOpReadVariableOp(lstm_cell_matmul_readvariableop_resource*
_output_shapes
:	а*
dtype0Й
lstm_cell/MatMulMatMullstm_cell/mul:z:0'lstm_cell/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         аН
!lstm_cell/MatMul_1/ReadVariableOpReadVariableOp*lstm_cell_matmul_1_readvariableop_resource*
_output_shapes
:	Hа*
dtype0К
lstm_cell/MatMul_1MatMulzeros:output:0)lstm_cell/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         аГ
lstm_cell/addAddV2lstm_cell/MatMul:product:0lstm_cell/MatMul_1:product:0*
T0*(
_output_shapes
:         аЗ
 lstm_cell/BiasAdd/ReadVariableOpReadVariableOp)lstm_cell_biasadd_readvariableop_resource*
_output_shapes	
:а*
dtype0М
lstm_cell/BiasAddBiasAddlstm_cell/add:z:0(lstm_cell/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         а[
lstm_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :╘
lstm_cell/splitSplit"lstm_cell/split/split_dim:output:0lstm_cell/BiasAdd:output:0*
T0*`
_output_shapesN
L:         H:         H:         H:         H*
	num_splith
lstm_cell/SigmoidSigmoidlstm_cell/split:output:0*
T0*'
_output_shapes
:         Hj
lstm_cell/Sigmoid_1Sigmoidlstm_cell/split:output:1*
T0*'
_output_shapes
:         Hs
lstm_cell/mul_1Mullstm_cell/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:         Hb
lstm_cell/TanhTanhlstm_cell/split:output:2*
T0*'
_output_shapes
:         Hs
lstm_cell/mul_2Mullstm_cell/Sigmoid:y:0lstm_cell/Tanh:y:0*
T0*'
_output_shapes
:         Ht
lstm_cell/add_1AddV2lstm_cell/mul_1:z:0lstm_cell/mul_2:z:0*
T0*'
_output_shapes
:         Hj
lstm_cell/Sigmoid_2Sigmoidlstm_cell/split:output:3*
T0*'
_output_shapes
:         H_
lstm_cell/Tanh_1Tanhlstm_cell/add_1:z:0*
T0*'
_output_shapes
:         Hw
lstm_cell/mul_3Mullstm_cell/Sigmoid_2:y:0lstm_cell/Tanh_1:y:0*
T0*'
_output_shapes
:         Hn
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    H   ╕
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щш╥F
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
         T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ∙
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0(lstm_cell_matmul_readvariableop_resource*lstm_cell_matmul_1_readvariableop_resource)lstm_cell_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :         H:         H: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_273221*
condR
while_cond_273220*K
output_shapes:
8: : : : :         H:         H: : : : : *
parallel_iterations Б
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    H   ┬
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:d         H*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
         a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:З
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         H*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          Ц
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:         dHb
IdentityIdentitytranspose_1:y:0^NoOp*
T0*+
_output_shapes
:         dH╖
NoOpNoOp!^lstm_cell/BiasAdd/ReadVariableOp ^lstm_cell/MatMul/ReadVariableOp"^lstm_cell/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:         d: : : 2D
 lstm_cell/BiasAdd/ReadVariableOp lstm_cell/BiasAdd/ReadVariableOp2B
lstm_cell/MatMul/ReadVariableOplstm_cell/MatMul/ReadVariableOp2F
!lstm_cell/MatMul_1/ReadVariableOp!lstm_cell/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:         d
 
_user_specified_nameinputs
√a
╡
while_body_272857
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0C
0while_lstm_cell_matmul_readvariableop_resource_0:	аE
2while_lstm_cell_matmul_1_readvariableop_resource_0:	Hа@
1while_lstm_cell_biasadd_readvariableop_resource_0:	а
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorA
.while_lstm_cell_matmul_readvariableop_resource:	аC
0while_lstm_cell_matmul_1_readvariableop_resource:	Hа>
/while_lstm_cell_biasadd_readvariableop_resource:	аИв&while/lstm_cell/BiasAdd/ReadVariableOpв%while/lstm_cell/MatMul/ReadVariableOpв'while/lstm_cell/MatMul_1/ReadVariableOpИ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       ж
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:         *
element_dtype0Н
while/lstm_cell/ones_like/ShapeShape0while/TensorArrayV2Read/TensorListGetItem:item:0*
T0*
_output_shapes
::э╧d
while/lstm_cell/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  А?з
while/lstm_cell/ones_likeFill(while/lstm_cell/ones_like/Shape:output:0(while/lstm_cell/ones_like/Const:output:0*
T0*'
_output_shapes
:         b
while/lstm_cell/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  а?а
while/lstm_cell/dropout/MulMul"while/lstm_cell/ones_like:output:0&while/lstm_cell/dropout/Const:output:0*
T0*'
_output_shapes
:         }
while/lstm_cell/dropout/ShapeShape"while/lstm_cell/ones_like:output:0*
T0*
_output_shapes
::э╧м
4while/lstm_cell/dropout/random_uniform/RandomUniformRandomUniform&while/lstm_cell/dropout/Shape:output:0*
T0*'
_output_shapes
:         *
dtype0k
&while/lstm_cell/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *═╠L>╓
$while/lstm_cell/dropout/GreaterEqualGreaterEqual=while/lstm_cell/dropout/random_uniform/RandomUniform:output:0/while/lstm_cell/dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:         d
while/lstm_cell/dropout/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    ╙
 while/lstm_cell/dropout/SelectV2SelectV2(while/lstm_cell/dropout/GreaterEqual:z:0while/lstm_cell/dropout/Mul:z:0(while/lstm_cell/dropout/Const_1:output:0*
T0*'
_output_shapes
:         d
while/lstm_cell/dropout_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  а?д
while/lstm_cell/dropout_1/MulMul"while/lstm_cell/ones_like:output:0(while/lstm_cell/dropout_1/Const:output:0*
T0*'
_output_shapes
:         
while/lstm_cell/dropout_1/ShapeShape"while/lstm_cell/ones_like:output:0*
T0*
_output_shapes
::э╧░
6while/lstm_cell/dropout_1/random_uniform/RandomUniformRandomUniform(while/lstm_cell/dropout_1/Shape:output:0*
T0*'
_output_shapes
:         *
dtype0m
(while/lstm_cell/dropout_1/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *═╠L>▄
&while/lstm_cell/dropout_1/GreaterEqualGreaterEqual?while/lstm_cell/dropout_1/random_uniform/RandomUniform:output:01while/lstm_cell/dropout_1/GreaterEqual/y:output:0*
T0*'
_output_shapes
:         f
!while/lstm_cell/dropout_1/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    █
"while/lstm_cell/dropout_1/SelectV2SelectV2*while/lstm_cell/dropout_1/GreaterEqual:z:0!while/lstm_cell/dropout_1/Mul:z:0*while/lstm_cell/dropout_1/Const_1:output:0*
T0*'
_output_shapes
:         d
while/lstm_cell/dropout_2/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  а?д
while/lstm_cell/dropout_2/MulMul"while/lstm_cell/ones_like:output:0(while/lstm_cell/dropout_2/Const:output:0*
T0*'
_output_shapes
:         
while/lstm_cell/dropout_2/ShapeShape"while/lstm_cell/ones_like:output:0*
T0*
_output_shapes
::э╧░
6while/lstm_cell/dropout_2/random_uniform/RandomUniformRandomUniform(while/lstm_cell/dropout_2/Shape:output:0*
T0*'
_output_shapes
:         *
dtype0m
(while/lstm_cell/dropout_2/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *═╠L>▄
&while/lstm_cell/dropout_2/GreaterEqualGreaterEqual?while/lstm_cell/dropout_2/random_uniform/RandomUniform:output:01while/lstm_cell/dropout_2/GreaterEqual/y:output:0*
T0*'
_output_shapes
:         f
!while/lstm_cell/dropout_2/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    █
"while/lstm_cell/dropout_2/SelectV2SelectV2*while/lstm_cell/dropout_2/GreaterEqual:z:0!while/lstm_cell/dropout_2/Mul:z:0*while/lstm_cell/dropout_2/Const_1:output:0*
T0*'
_output_shapes
:         d
while/lstm_cell/dropout_3/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  а?д
while/lstm_cell/dropout_3/MulMul"while/lstm_cell/ones_like:output:0(while/lstm_cell/dropout_3/Const:output:0*
T0*'
_output_shapes
:         
while/lstm_cell/dropout_3/ShapeShape"while/lstm_cell/ones_like:output:0*
T0*
_output_shapes
::э╧░
6while/lstm_cell/dropout_3/random_uniform/RandomUniformRandomUniform(while/lstm_cell/dropout_3/Shape:output:0*
T0*'
_output_shapes
:         *
dtype0m
(while/lstm_cell/dropout_3/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *═╠L>▄
&while/lstm_cell/dropout_3/GreaterEqualGreaterEqual?while/lstm_cell/dropout_3/random_uniform/RandomUniform:output:01while/lstm_cell/dropout_3/GreaterEqual/y:output:0*
T0*'
_output_shapes
:         f
!while/lstm_cell/dropout_3/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    █
"while/lstm_cell/dropout_3/SelectV2SelectV2*while/lstm_cell/dropout_3/GreaterEqual:z:0!while/lstm_cell/dropout_3/Mul:z:0*while/lstm_cell/dropout_3/Const_1:output:0*
T0*'
_output_shapes
:         й
while/lstm_cell/mulMul0while/TensorArrayV2Read/TensorListGetItem:item:0)while/lstm_cell/dropout/SelectV2:output:0*
T0*'
_output_shapes
:         Ч
%while/lstm_cell/MatMul/ReadVariableOpReadVariableOp0while_lstm_cell_matmul_readvariableop_resource_0*
_output_shapes
:	а*
dtype0Ы
while/lstm_cell/MatMulMatMulwhile/lstm_cell/mul:z:0-while/lstm_cell/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         аЫ
'while/lstm_cell/MatMul_1/ReadVariableOpReadVariableOp2while_lstm_cell_matmul_1_readvariableop_resource_0*
_output_shapes
:	Hа*
dtype0Ы
while/lstm_cell/MatMul_1MatMulwhile_placeholder_2/while/lstm_cell/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         аХ
while/lstm_cell/addAddV2 while/lstm_cell/MatMul:product:0"while/lstm_cell/MatMul_1:product:0*
T0*(
_output_shapes
:         аХ
&while/lstm_cell/BiasAdd/ReadVariableOpReadVariableOp1while_lstm_cell_biasadd_readvariableop_resource_0*
_output_shapes	
:а*
dtype0Ю
while/lstm_cell/BiasAddBiasAddwhile/lstm_cell/add:z:0.while/lstm_cell/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         аa
while/lstm_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ц
while/lstm_cell/splitSplit(while/lstm_cell/split/split_dim:output:0 while/lstm_cell/BiasAdd:output:0*
T0*`
_output_shapesN
L:         H:         H:         H:         H*
	num_splitt
while/lstm_cell/SigmoidSigmoidwhile/lstm_cell/split:output:0*
T0*'
_output_shapes
:         Hv
while/lstm_cell/Sigmoid_1Sigmoidwhile/lstm_cell/split:output:1*
T0*'
_output_shapes
:         HВ
while/lstm_cell/mul_1Mulwhile/lstm_cell/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:         Hn
while/lstm_cell/TanhTanhwhile/lstm_cell/split:output:2*
T0*'
_output_shapes
:         HЕ
while/lstm_cell/mul_2Mulwhile/lstm_cell/Sigmoid:y:0while/lstm_cell/Tanh:y:0*
T0*'
_output_shapes
:         HЖ
while/lstm_cell/add_1AddV2while/lstm_cell/mul_1:z:0while/lstm_cell/mul_2:z:0*
T0*'
_output_shapes
:         Hv
while/lstm_cell/Sigmoid_2Sigmoidwhile/lstm_cell/split:output:3*
T0*'
_output_shapes
:         Hk
while/lstm_cell/Tanh_1Tanhwhile/lstm_cell/add_1:z:0*
T0*'
_output_shapes
:         HЙ
while/lstm_cell/mul_3Mulwhile/lstm_cell/Sigmoid_2:y:0while/lstm_cell/Tanh_1:y:0*
T0*'
_output_shapes
:         H┬
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell/mul_3:z:0*
_output_shapes
: *
element_dtype0:щш╥M
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: Ж
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: v
while/Identity_4Identitywhile/lstm_cell/mul_3:z:0^while/NoOp*
T0*'
_output_shapes
:         Hv
while/Identity_5Identitywhile/lstm_cell/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:         H╟

while/NoOpNoOp'^while/lstm_cell/BiasAdd/ReadVariableOp&^while/lstm_cell/MatMul/ReadVariableOp(^while/lstm_cell/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0")
while_identitywhile/Identity:output:0"d
/while_lstm_cell_biasadd_readvariableop_resource1while_lstm_cell_biasadd_readvariableop_resource_0"f
0while_lstm_cell_matmul_1_readvariableop_resource2while_lstm_cell_matmul_1_readvariableop_resource_0"b
.while_lstm_cell_matmul_readvariableop_resource0while_lstm_cell_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"и
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :         H:         H: : : : : 2P
&while/lstm_cell/BiasAdd/ReadVariableOp&while/lstm_cell/BiasAdd/ReadVariableOp2N
%while/lstm_cell/MatMul/ReadVariableOp%while/lstm_cell/MatMul/ReadVariableOp2R
'while/lstm_cell/MatMul_1/ReadVariableOp'while/lstm_cell/MatMul_1/ReadVariableOp:

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:         H:-)
'
_output_shapes
:         H:

_output_shapes
: :

_output_shapes
: :PL

_output_shapes
: 
2
_user_specified_namewhile/maximum_iterations:J F

_output_shapes
: 
,
_user_specified_namewhile/loop_counter
Хi
╡	
rnn_while_body_272334$
 rnn_while_rnn_while_loop_counter*
&rnn_while_rnn_while_maximum_iterations
rnn_while_placeholder
rnn_while_placeholder_1
rnn_while_placeholder_2
rnn_while_placeholder_3#
rnn_while_rnn_strided_slice_1_0_
[rnn_while_tensorarrayv2read_tensorlistgetitem_rnn_tensorarrayunstack_tensorlistfromtensor_0G
4rnn_while_lstm_cell_matmul_readvariableop_resource_0:	аI
6rnn_while_lstm_cell_matmul_1_readvariableop_resource_0:	HаD
5rnn_while_lstm_cell_biasadd_readvariableop_resource_0:	а
rnn_while_identity
rnn_while_identity_1
rnn_while_identity_2
rnn_while_identity_3
rnn_while_identity_4
rnn_while_identity_5!
rnn_while_rnn_strided_slice_1]
Yrnn_while_tensorarrayv2read_tensorlistgetitem_rnn_tensorarrayunstack_tensorlistfromtensorE
2rnn_while_lstm_cell_matmul_readvariableop_resource:	аG
4rnn_while_lstm_cell_matmul_1_readvariableop_resource:	HаB
3rnn_while_lstm_cell_biasadd_readvariableop_resource:	аИв*rnn/while/lstm_cell/BiasAdd/ReadVariableOpв)rnn/while/lstm_cell/MatMul/ReadVariableOpв+rnn/while/lstm_cell/MatMul_1/ReadVariableOpМ
;rnn/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       ║
-rnn/while/TensorArrayV2Read/TensorListGetItemTensorListGetItem[rnn_while_tensorarrayv2read_tensorlistgetitem_rnn_tensorarrayunstack_tensorlistfromtensor_0rnn_while_placeholderDrnn/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:         *
element_dtype0Х
#rnn/while/lstm_cell/ones_like/ShapeShape4rnn/while/TensorArrayV2Read/TensorListGetItem:item:0*
T0*
_output_shapes
::э╧h
#rnn/while/lstm_cell/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  А?│
rnn/while/lstm_cell/ones_likeFill,rnn/while/lstm_cell/ones_like/Shape:output:0,rnn/while/lstm_cell/ones_like/Const:output:0*
T0*'
_output_shapes
:         f
!rnn/while/lstm_cell/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  а?м
rnn/while/lstm_cell/dropout/MulMul&rnn/while/lstm_cell/ones_like:output:0*rnn/while/lstm_cell/dropout/Const:output:0*
T0*'
_output_shapes
:         Е
!rnn/while/lstm_cell/dropout/ShapeShape&rnn/while/lstm_cell/ones_like:output:0*
T0*
_output_shapes
::э╧┤
8rnn/while/lstm_cell/dropout/random_uniform/RandomUniformRandomUniform*rnn/while/lstm_cell/dropout/Shape:output:0*
T0*'
_output_shapes
:         *
dtype0o
*rnn/while/lstm_cell/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *═╠L>т
(rnn/while/lstm_cell/dropout/GreaterEqualGreaterEqualArnn/while/lstm_cell/dropout/random_uniform/RandomUniform:output:03rnn/while/lstm_cell/dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:         h
#rnn/while/lstm_cell/dropout/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    у
$rnn/while/lstm_cell/dropout/SelectV2SelectV2,rnn/while/lstm_cell/dropout/GreaterEqual:z:0#rnn/while/lstm_cell/dropout/Mul:z:0,rnn/while/lstm_cell/dropout/Const_1:output:0*
T0*'
_output_shapes
:         h
#rnn/while/lstm_cell/dropout_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  а?░
!rnn/while/lstm_cell/dropout_1/MulMul&rnn/while/lstm_cell/ones_like:output:0,rnn/while/lstm_cell/dropout_1/Const:output:0*
T0*'
_output_shapes
:         З
#rnn/while/lstm_cell/dropout_1/ShapeShape&rnn/while/lstm_cell/ones_like:output:0*
T0*
_output_shapes
::э╧╕
:rnn/while/lstm_cell/dropout_1/random_uniform/RandomUniformRandomUniform,rnn/while/lstm_cell/dropout_1/Shape:output:0*
T0*'
_output_shapes
:         *
dtype0q
,rnn/while/lstm_cell/dropout_1/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *═╠L>ш
*rnn/while/lstm_cell/dropout_1/GreaterEqualGreaterEqualCrnn/while/lstm_cell/dropout_1/random_uniform/RandomUniform:output:05rnn/while/lstm_cell/dropout_1/GreaterEqual/y:output:0*
T0*'
_output_shapes
:         j
%rnn/while/lstm_cell/dropout_1/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    ы
&rnn/while/lstm_cell/dropout_1/SelectV2SelectV2.rnn/while/lstm_cell/dropout_1/GreaterEqual:z:0%rnn/while/lstm_cell/dropout_1/Mul:z:0.rnn/while/lstm_cell/dropout_1/Const_1:output:0*
T0*'
_output_shapes
:         h
#rnn/while/lstm_cell/dropout_2/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  а?░
!rnn/while/lstm_cell/dropout_2/MulMul&rnn/while/lstm_cell/ones_like:output:0,rnn/while/lstm_cell/dropout_2/Const:output:0*
T0*'
_output_shapes
:         З
#rnn/while/lstm_cell/dropout_2/ShapeShape&rnn/while/lstm_cell/ones_like:output:0*
T0*
_output_shapes
::э╧╕
:rnn/while/lstm_cell/dropout_2/random_uniform/RandomUniformRandomUniform,rnn/while/lstm_cell/dropout_2/Shape:output:0*
T0*'
_output_shapes
:         *
dtype0q
,rnn/while/lstm_cell/dropout_2/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *═╠L>ш
*rnn/while/lstm_cell/dropout_2/GreaterEqualGreaterEqualCrnn/while/lstm_cell/dropout_2/random_uniform/RandomUniform:output:05rnn/while/lstm_cell/dropout_2/GreaterEqual/y:output:0*
T0*'
_output_shapes
:         j
%rnn/while/lstm_cell/dropout_2/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    ы
&rnn/while/lstm_cell/dropout_2/SelectV2SelectV2.rnn/while/lstm_cell/dropout_2/GreaterEqual:z:0%rnn/while/lstm_cell/dropout_2/Mul:z:0.rnn/while/lstm_cell/dropout_2/Const_1:output:0*
T0*'
_output_shapes
:         h
#rnn/while/lstm_cell/dropout_3/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  а?░
!rnn/while/lstm_cell/dropout_3/MulMul&rnn/while/lstm_cell/ones_like:output:0,rnn/while/lstm_cell/dropout_3/Const:output:0*
T0*'
_output_shapes
:         З
#rnn/while/lstm_cell/dropout_3/ShapeShape&rnn/while/lstm_cell/ones_like:output:0*
T0*
_output_shapes
::э╧╕
:rnn/while/lstm_cell/dropout_3/random_uniform/RandomUniformRandomUniform,rnn/while/lstm_cell/dropout_3/Shape:output:0*
T0*'
_output_shapes
:         *
dtype0q
,rnn/while/lstm_cell/dropout_3/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *═╠L>ш
*rnn/while/lstm_cell/dropout_3/GreaterEqualGreaterEqualCrnn/while/lstm_cell/dropout_3/random_uniform/RandomUniform:output:05rnn/while/lstm_cell/dropout_3/GreaterEqual/y:output:0*
T0*'
_output_shapes
:         j
%rnn/while/lstm_cell/dropout_3/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    ы
&rnn/while/lstm_cell/dropout_3/SelectV2SelectV2.rnn/while/lstm_cell/dropout_3/GreaterEqual:z:0%rnn/while/lstm_cell/dropout_3/Mul:z:0.rnn/while/lstm_cell/dropout_3/Const_1:output:0*
T0*'
_output_shapes
:         ╡
rnn/while/lstm_cell/mulMul4rnn/while/TensorArrayV2Read/TensorListGetItem:item:0-rnn/while/lstm_cell/dropout/SelectV2:output:0*
T0*'
_output_shapes
:         Я
)rnn/while/lstm_cell/MatMul/ReadVariableOpReadVariableOp4rnn_while_lstm_cell_matmul_readvariableop_resource_0*
_output_shapes
:	а*
dtype0з
rnn/while/lstm_cell/MatMulMatMulrnn/while/lstm_cell/mul:z:01rnn/while/lstm_cell/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         аг
+rnn/while/lstm_cell/MatMul_1/ReadVariableOpReadVariableOp6rnn_while_lstm_cell_matmul_1_readvariableop_resource_0*
_output_shapes
:	Hа*
dtype0з
rnn/while/lstm_cell/MatMul_1MatMulrnn_while_placeholder_23rnn/while/lstm_cell/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         аб
rnn/while/lstm_cell/addAddV2$rnn/while/lstm_cell/MatMul:product:0&rnn/while/lstm_cell/MatMul_1:product:0*
T0*(
_output_shapes
:         аЭ
*rnn/while/lstm_cell/BiasAdd/ReadVariableOpReadVariableOp5rnn_while_lstm_cell_biasadd_readvariableop_resource_0*
_output_shapes	
:а*
dtype0к
rnn/while/lstm_cell/BiasAddBiasAddrnn/while/lstm_cell/add:z:02rnn/while/lstm_cell/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         аe
#rnn/while/lstm_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Є
rnn/while/lstm_cell/splitSplit,rnn/while/lstm_cell/split/split_dim:output:0$rnn/while/lstm_cell/BiasAdd:output:0*
T0*`
_output_shapesN
L:         H:         H:         H:         H*
	num_split|
rnn/while/lstm_cell/SigmoidSigmoid"rnn/while/lstm_cell/split:output:0*
T0*'
_output_shapes
:         H~
rnn/while/lstm_cell/Sigmoid_1Sigmoid"rnn/while/lstm_cell/split:output:1*
T0*'
_output_shapes
:         HО
rnn/while/lstm_cell/mul_1Mul!rnn/while/lstm_cell/Sigmoid_1:y:0rnn_while_placeholder_3*
T0*'
_output_shapes
:         Hv
rnn/while/lstm_cell/TanhTanh"rnn/while/lstm_cell/split:output:2*
T0*'
_output_shapes
:         HС
rnn/while/lstm_cell/mul_2Mulrnn/while/lstm_cell/Sigmoid:y:0rnn/while/lstm_cell/Tanh:y:0*
T0*'
_output_shapes
:         HТ
rnn/while/lstm_cell/add_1AddV2rnn/while/lstm_cell/mul_1:z:0rnn/while/lstm_cell/mul_2:z:0*
T0*'
_output_shapes
:         H~
rnn/while/lstm_cell/Sigmoid_2Sigmoid"rnn/while/lstm_cell/split:output:3*
T0*'
_output_shapes
:         Hs
rnn/while/lstm_cell/Tanh_1Tanhrnn/while/lstm_cell/add_1:z:0*
T0*'
_output_shapes
:         HХ
rnn/while/lstm_cell/mul_3Mul!rnn/while/lstm_cell/Sigmoid_2:y:0rnn/while/lstm_cell/Tanh_1:y:0*
T0*'
_output_shapes
:         H╥
.rnn/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemrnn_while_placeholder_1rnn_while_placeholderrnn/while/lstm_cell/mul_3:z:0*
_output_shapes
: *
element_dtype0:щш╥Q
rnn/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :h
rnn/while/addAddV2rnn_while_placeholderrnn/while/add/y:output:0*
T0*
_output_shapes
: S
rnn/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :w
rnn/while/add_1AddV2 rnn_while_rnn_while_loop_counterrnn/while/add_1/y:output:0*
T0*
_output_shapes
: e
rnn/while/IdentityIdentityrnn/while/add_1:z:0^rnn/while/NoOp*
T0*
_output_shapes
: z
rnn/while/Identity_1Identity&rnn_while_rnn_while_maximum_iterations^rnn/while/NoOp*
T0*
_output_shapes
: e
rnn/while/Identity_2Identityrnn/while/add:z:0^rnn/while/NoOp*
T0*
_output_shapes
: Т
rnn/while/Identity_3Identity>rnn/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^rnn/while/NoOp*
T0*
_output_shapes
: В
rnn/while/Identity_4Identityrnn/while/lstm_cell/mul_3:z:0^rnn/while/NoOp*
T0*'
_output_shapes
:         HВ
rnn/while/Identity_5Identityrnn/while/lstm_cell/add_1:z:0^rnn/while/NoOp*
T0*'
_output_shapes
:         H╫
rnn/while/NoOpNoOp+^rnn/while/lstm_cell/BiasAdd/ReadVariableOp*^rnn/while/lstm_cell/MatMul/ReadVariableOp,^rnn/while/lstm_cell/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "5
rnn_while_identity_1rnn/while/Identity_1:output:0"5
rnn_while_identity_2rnn/while/Identity_2:output:0"5
rnn_while_identity_3rnn/while/Identity_3:output:0"5
rnn_while_identity_4rnn/while/Identity_4:output:0"5
rnn_while_identity_5rnn/while/Identity_5:output:0"1
rnn_while_identityrnn/while/Identity:output:0"l
3rnn_while_lstm_cell_biasadd_readvariableop_resource5rnn_while_lstm_cell_biasadd_readvariableop_resource_0"n
4rnn_while_lstm_cell_matmul_1_readvariableop_resource6rnn_while_lstm_cell_matmul_1_readvariableop_resource_0"j
2rnn_while_lstm_cell_matmul_readvariableop_resource4rnn_while_lstm_cell_matmul_readvariableop_resource_0"@
rnn_while_rnn_strided_slice_1rnn_while_rnn_strided_slice_1_0"╕
Yrnn_while_tensorarrayv2read_tensorlistgetitem_rnn_tensorarrayunstack_tensorlistfromtensor[rnn_while_tensorarrayv2read_tensorlistgetitem_rnn_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :         H:         H: : : : : 2X
*rnn/while/lstm_cell/BiasAdd/ReadVariableOp*rnn/while/lstm_cell/BiasAdd/ReadVariableOp2V
)rnn/while/lstm_cell/MatMul/ReadVariableOp)rnn/while/lstm_cell/MatMul/ReadVariableOp2Z
+rnn/while/lstm_cell/MatMul_1/ReadVariableOp+rnn/while/lstm_cell/MatMul_1/ReadVariableOp:

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:         H:-)
'
_output_shapes
:         H:

_output_shapes
: :

_output_shapes
: :TP

_output_shapes
: 
6
_user_specified_namernn/while/maximum_iterations:N J

_output_shapes
: 
0
_user_specified_namernn/while/loop_counter
Ч	
├
while_cond_273402
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_273402___redundant_placeholder04
0while_while_cond_273402___redundant_placeholder14
0while_while_cond_273402___redundant_placeholder24
0while_while_cond_273402___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :         H:         H: :::::

_output_shapes
::

_output_shapes
: :-)
'
_output_shapes
:         H:-)
'
_output_shapes
:         H:

_output_shapes
: :

_output_shapes
: :PL

_output_shapes
: 
2
_user_specified_namewhile/maximum_iterations:J F

_output_shapes
: 
,
_user_specified_namewhile/loop_counter
¤K
Е
?__inference_rnn_layer_call_and_return_conditional_losses_271979

inputs;
(lstm_cell_matmul_readvariableop_resource:	а=
*lstm_cell_matmul_1_readvariableop_resource:	Hа8
)lstm_cell_biasadd_readvariableop_resource:	а
identityИв lstm_cell/BiasAdd/ReadVariableOpвlstm_cell/MatMul/ReadVariableOpв!lstm_cell/MatMul_1/ReadVariableOpвwhileI
ShapeShapeinputs*
T0*
_output_shapes
::э╧]
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
valueB:╤
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskP
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :Hs
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    l
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:         HR
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :Hw
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:R
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    r
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:         Hc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          m
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:d         R
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
::э╧_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
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
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
         ┤
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щш╥Ж
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       р
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щш╥_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:щ
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         *
shrink_axis_masko
lstm_cell/ones_like/ShapeShapestrided_slice_2:output:0*
T0*
_output_shapes
::э╧^
lstm_cell/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  А?Х
lstm_cell/ones_likeFill"lstm_cell/ones_like/Shape:output:0"lstm_cell/ones_like/Const:output:0*
T0*'
_output_shapes
:         ~
lstm_cell/mulMulstrided_slice_2:output:0lstm_cell/ones_like:output:0*
T0*'
_output_shapes
:         Й
lstm_cell/MatMul/ReadVariableOpReadVariableOp(lstm_cell_matmul_readvariableop_resource*
_output_shapes
:	а*
dtype0Й
lstm_cell/MatMulMatMullstm_cell/mul:z:0'lstm_cell/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         аН
!lstm_cell/MatMul_1/ReadVariableOpReadVariableOp*lstm_cell_matmul_1_readvariableop_resource*
_output_shapes
:	Hа*
dtype0К
lstm_cell/MatMul_1MatMulzeros:output:0)lstm_cell/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         аГ
lstm_cell/addAddV2lstm_cell/MatMul:product:0lstm_cell/MatMul_1:product:0*
T0*(
_output_shapes
:         аЗ
 lstm_cell/BiasAdd/ReadVariableOpReadVariableOp)lstm_cell_biasadd_readvariableop_resource*
_output_shapes	
:а*
dtype0М
lstm_cell/BiasAddBiasAddlstm_cell/add:z:0(lstm_cell/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         а[
lstm_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :╘
lstm_cell/splitSplit"lstm_cell/split/split_dim:output:0lstm_cell/BiasAdd:output:0*
T0*`
_output_shapesN
L:         H:         H:         H:         H*
	num_splith
lstm_cell/SigmoidSigmoidlstm_cell/split:output:0*
T0*'
_output_shapes
:         Hj
lstm_cell/Sigmoid_1Sigmoidlstm_cell/split:output:1*
T0*'
_output_shapes
:         Hs
lstm_cell/mul_1Mullstm_cell/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:         Hb
lstm_cell/TanhTanhlstm_cell/split:output:2*
T0*'
_output_shapes
:         Hs
lstm_cell/mul_2Mullstm_cell/Sigmoid:y:0lstm_cell/Tanh:y:0*
T0*'
_output_shapes
:         Ht
lstm_cell/add_1AddV2lstm_cell/mul_1:z:0lstm_cell/mul_2:z:0*
T0*'
_output_shapes
:         Hj
lstm_cell/Sigmoid_2Sigmoidlstm_cell/split:output:3*
T0*'
_output_shapes
:         H_
lstm_cell/Tanh_1Tanhlstm_cell/add_1:z:0*
T0*'
_output_shapes
:         Hw
lstm_cell/mul_3Mullstm_cell/Sigmoid_2:y:0lstm_cell/Tanh_1:y:0*
T0*'
_output_shapes
:         Hn
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    H   ╕
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щш╥F
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
         T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ∙
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0(lstm_cell_matmul_readvariableop_resource*lstm_cell_matmul_1_readvariableop_resource)lstm_cell_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :         H:         H: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_271892*
condR
while_cond_271891*K
output_shapes:
8: : : : :         H:         H: : : : : *
parallel_iterations Б
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    H   ┬
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:d         H*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
         a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:З
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         H*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          Ц
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:         dHb
IdentityIdentitytranspose_1:y:0^NoOp*
T0*+
_output_shapes
:         dH╖
NoOpNoOp!^lstm_cell/BiasAdd/ReadVariableOp ^lstm_cell/MatMul/ReadVariableOp"^lstm_cell/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:         d: : : 2D
 lstm_cell/BiasAdd/ReadVariableOp lstm_cell/BiasAdd/ReadVariableOp2B
lstm_cell/MatMul/ReadVariableOplstm_cell/MatMul/ReadVariableOp2F
!lstm_cell/MatMul_1/ReadVariableOp!lstm_cell/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:         d
 
_user_specified_nameinputs
╔
Г
E__inference_lstm_cell_layer_call_and_return_conditional_losses_273734

inputs
states_0
states_11
matmul_readvariableop_resource:	а3
 matmul_1_readvariableop_resource:	Hа.
biasadd_readvariableop_resource:	а
identity

identity_1

identity_2ИвBiasAdd/ReadVariableOpвMatMul/ReadVariableOpвMatMul_1/ReadVariableOpS
ones_like/ShapeShapeinputs*
T0*
_output_shapes
::э╧T
ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  А?w
	ones_likeFillones_like/Shape:output:0ones_like/Const:output:0*
T0*'
_output_shapes
:         X
mulMulinputsones_like:output:0*
T0*'
_output_shapes
:         u
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	а*
dtype0k
MatMulMatMulmul:z:0MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         аy
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes
:	Hа*
dtype0p
MatMul_1MatMulstates_0MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         аe
addAddV2MatMul:product:0MatMul_1:product:0*
T0*(
_output_shapes
:         аs
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:а*
dtype0n
BiasAddBiasAddadd:z:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         аQ
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :╢
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*`
_output_shapesN
L:         H:         H:         H:         H*
	num_splitT
SigmoidSigmoidsplit:output:0*
T0*'
_output_shapes
:         HV
	Sigmoid_1Sigmoidsplit:output:1*
T0*'
_output_shapes
:         HW
mul_1MulSigmoid_1:y:0states_1*
T0*'
_output_shapes
:         HN
TanhTanhsplit:output:2*
T0*'
_output_shapes
:         HU
mul_2MulSigmoid:y:0Tanh:y:0*
T0*'
_output_shapes
:         HV
add_1AddV2	mul_1:z:0	mul_2:z:0*
T0*'
_output_shapes
:         HV
	Sigmoid_2Sigmoidsplit:output:3*
T0*'
_output_shapes
:         HK
Tanh_1Tanh	add_1:z:0*
T0*'
_output_shapes
:         HY
mul_3MulSigmoid_2:y:0
Tanh_1:y:0*
T0*'
_output_shapes
:         HX
IdentityIdentity	mul_3:z:0^NoOp*
T0*'
_output_shapes
:         HZ

Identity_1Identity	mul_3:z:0^NoOp*
T0*'
_output_shapes
:         HZ

Identity_2Identity	add_1:z:0^NoOp*
T0*'
_output_shapes
:         HС
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:         :         H:         H: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:QM
'
_output_shapes
:         H
"
_user_specified_name
states_1:QM
'
_output_shapes
:         H
"
_user_specified_name
states_0:O K
'
_output_shapes
:         
 
_user_specified_nameinputs
о
°
A__inference_dense_layer_call_and_return_conditional_losses_273530

inputs3
!tensordot_readvariableop_resource:H2-
biasadd_readvariableop_resource:2
identityИвBiasAdd/ReadVariableOpвTensordot/ReadVariableOpz
Tensordot/ReadVariableOpReadVariableOp!tensordot_readvariableop_resource*
_output_shapes

:H2*
dtype0X
Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:_
Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       S
Tensordot/ShapeShapeinputs*
T0*
_output_shapes
::э╧Y
Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : ╗
Tensordot/GatherV2GatherV2Tensordot/Shape:output:0Tensordot/free:output:0 Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:[
Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ┐
Tensordot/GatherV2_1GatherV2Tensordot/Shape:output:0Tensordot/axes:output:0"Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:Y
Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: n
Tensordot/ProdProdTensordot/GatherV2:output:0Tensordot/Const:output:0*
T0*
_output_shapes
: [
Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: t
Tensordot/Prod_1ProdTensordot/GatherV2_1:output:0Tensordot/Const_1:output:0*
T0*
_output_shapes
: W
Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : Ь
Tensordot/concatConcatV2Tensordot/free:output:0Tensordot/axes:output:0Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:y
Tensordot/stackPackTensordot/Prod:output:0Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:y
Tensordot/transpose	TransposeinputsTensordot/concat:output:0*
T0*+
_output_shapes
:         dHК
Tensordot/ReshapeReshapeTensordot/transpose:y:0Tensordot/stack:output:0*
T0*0
_output_shapes
:                  К
Tensordot/MatMulMatMulTensordot/Reshape:output:0 Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:         2[
Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:2Y
Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : з
Tensordot/concat_1ConcatV2Tensordot/GatherV2:output:0Tensordot/Const_2:output:0 Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:Г
	TensordotReshapeTensordot/MatMul:product:0Tensordot/concat_1:output:0*
T0*+
_output_shapes
:         d2r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:2*
dtype0|
BiasAddBiasAddTensordot:output:0BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:         d2T
ReluReluBiasAdd:output:0*
T0*+
_output_shapes
:         d2e
IdentityIdentityRelu:activations:0^NoOp*
T0*+
_output_shapes
:         d2z
NoOpNoOp^BiasAdd/ReadVariableOp^Tensordot/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:         dH: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp24
Tensordot/ReadVariableOpTensordot/ReadVariableOp:S O
+
_output_shapes
:         dH
 
_user_specified_nameinputs
╠
У
&__inference_dense_layer_call_fn_273499

inputs
unknown:H2
	unknown_0:2
identityИвStatefulPartitionedCall┌
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:         d2*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *J
fERC
A__inference_dense_layer_call_and_return_conditional_losses_271770s
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:         d2`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:         dH: : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:         dH
 
_user_specified_nameinputs
гo
Е
?__inference_rnn_layer_call_and_return_conditional_losses_271731

inputs;
(lstm_cell_matmul_readvariableop_resource:	а=
*lstm_cell_matmul_1_readvariableop_resource:	Hа8
)lstm_cell_biasadd_readvariableop_resource:	а
identityИв lstm_cell/BiasAdd/ReadVariableOpвlstm_cell/MatMul/ReadVariableOpв!lstm_cell/MatMul_1/ReadVariableOpвwhileI
ShapeShapeinputs*
T0*
_output_shapes
::э╧]
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
valueB:╤
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskP
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :Hs
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    l
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:         HR
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :Hw
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:R
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    r
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:         Hc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          m
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:d         R
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
::э╧_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
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
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
         ┤
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щш╥Ж
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       р
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щш╥_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:щ
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         *
shrink_axis_masko
lstm_cell/ones_like/ShapeShapestrided_slice_2:output:0*
T0*
_output_shapes
::э╧^
lstm_cell/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  А?Х
lstm_cell/ones_likeFill"lstm_cell/ones_like/Shape:output:0"lstm_cell/ones_like/Const:output:0*
T0*'
_output_shapes
:         \
lstm_cell/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  а?О
lstm_cell/dropout/MulMullstm_cell/ones_like:output:0 lstm_cell/dropout/Const:output:0*
T0*'
_output_shapes
:         q
lstm_cell/dropout/ShapeShapelstm_cell/ones_like:output:0*
T0*
_output_shapes
::э╧а
.lstm_cell/dropout/random_uniform/RandomUniformRandomUniform lstm_cell/dropout/Shape:output:0*
T0*'
_output_shapes
:         *
dtype0e
 lstm_cell/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *═╠L>─
lstm_cell/dropout/GreaterEqualGreaterEqual7lstm_cell/dropout/random_uniform/RandomUniform:output:0)lstm_cell/dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:         ^
lstm_cell/dropout/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    ╗
lstm_cell/dropout/SelectV2SelectV2"lstm_cell/dropout/GreaterEqual:z:0lstm_cell/dropout/Mul:z:0"lstm_cell/dropout/Const_1:output:0*
T0*'
_output_shapes
:         ^
lstm_cell/dropout_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  а?Т
lstm_cell/dropout_1/MulMullstm_cell/ones_like:output:0"lstm_cell/dropout_1/Const:output:0*
T0*'
_output_shapes
:         s
lstm_cell/dropout_1/ShapeShapelstm_cell/ones_like:output:0*
T0*
_output_shapes
::э╧д
0lstm_cell/dropout_1/random_uniform/RandomUniformRandomUniform"lstm_cell/dropout_1/Shape:output:0*
T0*'
_output_shapes
:         *
dtype0g
"lstm_cell/dropout_1/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *═╠L>╩
 lstm_cell/dropout_1/GreaterEqualGreaterEqual9lstm_cell/dropout_1/random_uniform/RandomUniform:output:0+lstm_cell/dropout_1/GreaterEqual/y:output:0*
T0*'
_output_shapes
:         `
lstm_cell/dropout_1/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    ├
lstm_cell/dropout_1/SelectV2SelectV2$lstm_cell/dropout_1/GreaterEqual:z:0lstm_cell/dropout_1/Mul:z:0$lstm_cell/dropout_1/Const_1:output:0*
T0*'
_output_shapes
:         ^
lstm_cell/dropout_2/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  а?Т
lstm_cell/dropout_2/MulMullstm_cell/ones_like:output:0"lstm_cell/dropout_2/Const:output:0*
T0*'
_output_shapes
:         s
lstm_cell/dropout_2/ShapeShapelstm_cell/ones_like:output:0*
T0*
_output_shapes
::э╧д
0lstm_cell/dropout_2/random_uniform/RandomUniformRandomUniform"lstm_cell/dropout_2/Shape:output:0*
T0*'
_output_shapes
:         *
dtype0g
"lstm_cell/dropout_2/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *═╠L>╩
 lstm_cell/dropout_2/GreaterEqualGreaterEqual9lstm_cell/dropout_2/random_uniform/RandomUniform:output:0+lstm_cell/dropout_2/GreaterEqual/y:output:0*
T0*'
_output_shapes
:         `
lstm_cell/dropout_2/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    ├
lstm_cell/dropout_2/SelectV2SelectV2$lstm_cell/dropout_2/GreaterEqual:z:0lstm_cell/dropout_2/Mul:z:0$lstm_cell/dropout_2/Const_1:output:0*
T0*'
_output_shapes
:         ^
lstm_cell/dropout_3/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  а?Т
lstm_cell/dropout_3/MulMullstm_cell/ones_like:output:0"lstm_cell/dropout_3/Const:output:0*
T0*'
_output_shapes
:         s
lstm_cell/dropout_3/ShapeShapelstm_cell/ones_like:output:0*
T0*
_output_shapes
::э╧д
0lstm_cell/dropout_3/random_uniform/RandomUniformRandomUniform"lstm_cell/dropout_3/Shape:output:0*
T0*'
_output_shapes
:         *
dtype0g
"lstm_cell/dropout_3/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *═╠L>╩
 lstm_cell/dropout_3/GreaterEqualGreaterEqual9lstm_cell/dropout_3/random_uniform/RandomUniform:output:0+lstm_cell/dropout_3/GreaterEqual/y:output:0*
T0*'
_output_shapes
:         `
lstm_cell/dropout_3/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    ├
lstm_cell/dropout_3/SelectV2SelectV2$lstm_cell/dropout_3/GreaterEqual:z:0lstm_cell/dropout_3/Mul:z:0$lstm_cell/dropout_3/Const_1:output:0*
T0*'
_output_shapes
:         Е
lstm_cell/mulMulstrided_slice_2:output:0#lstm_cell/dropout/SelectV2:output:0*
T0*'
_output_shapes
:         Й
lstm_cell/MatMul/ReadVariableOpReadVariableOp(lstm_cell_matmul_readvariableop_resource*
_output_shapes
:	а*
dtype0Й
lstm_cell/MatMulMatMullstm_cell/mul:z:0'lstm_cell/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         аН
!lstm_cell/MatMul_1/ReadVariableOpReadVariableOp*lstm_cell_matmul_1_readvariableop_resource*
_output_shapes
:	Hа*
dtype0К
lstm_cell/MatMul_1MatMulzeros:output:0)lstm_cell/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         аГ
lstm_cell/addAddV2lstm_cell/MatMul:product:0lstm_cell/MatMul_1:product:0*
T0*(
_output_shapes
:         аЗ
 lstm_cell/BiasAdd/ReadVariableOpReadVariableOp)lstm_cell_biasadd_readvariableop_resource*
_output_shapes	
:а*
dtype0М
lstm_cell/BiasAddBiasAddlstm_cell/add:z:0(lstm_cell/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         а[
lstm_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :╘
lstm_cell/splitSplit"lstm_cell/split/split_dim:output:0lstm_cell/BiasAdd:output:0*
T0*`
_output_shapesN
L:         H:         H:         H:         H*
	num_splith
lstm_cell/SigmoidSigmoidlstm_cell/split:output:0*
T0*'
_output_shapes
:         Hj
lstm_cell/Sigmoid_1Sigmoidlstm_cell/split:output:1*
T0*'
_output_shapes
:         Hs
lstm_cell/mul_1Mullstm_cell/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:         Hb
lstm_cell/TanhTanhlstm_cell/split:output:2*
T0*'
_output_shapes
:         Hs
lstm_cell/mul_2Mullstm_cell/Sigmoid:y:0lstm_cell/Tanh:y:0*
T0*'
_output_shapes
:         Ht
lstm_cell/add_1AddV2lstm_cell/mul_1:z:0lstm_cell/mul_2:z:0*
T0*'
_output_shapes
:         Hj
lstm_cell/Sigmoid_2Sigmoidlstm_cell/split:output:3*
T0*'
_output_shapes
:         H_
lstm_cell/Tanh_1Tanhlstm_cell/add_1:z:0*
T0*'
_output_shapes
:         Hw
lstm_cell/mul_3Mullstm_cell/Sigmoid_2:y:0lstm_cell/Tanh_1:y:0*
T0*'
_output_shapes
:         Hn
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    H   ╕
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щш╥F
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
         T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ∙
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0(lstm_cell_matmul_readvariableop_resource*lstm_cell_matmul_1_readvariableop_resource)lstm_cell_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :         H:         H: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_271612*
condR
while_cond_271611*K
output_shapes:
8: : : : :         H:         H: : : : : *
parallel_iterations Б
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    H   ┬
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:d         H*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
         a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:З
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         H*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          Ц
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:         dHb
IdentityIdentitytranspose_1:y:0^NoOp*
T0*+
_output_shapes
:         dH╖
NoOpNoOp!^lstm_cell/BiasAdd/ReadVariableOp ^lstm_cell/MatMul/ReadVariableOp"^lstm_cell/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:         d: : : 2D
 lstm_cell/BiasAdd/ReadVariableOp lstm_cell/BiasAdd/ReadVariableOp2B
lstm_cell/MatMul/ReadVariableOplstm_cell/MatMul/ReadVariableOp2F
!lstm_cell/MatMul_1/ReadVariableOp!lstm_cell/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:         d
 
_user_specified_nameinputs
ў
▒
$__inference_rnn_layer_call_fn_272751

inputs
unknown:	а
	unknown_0:	Hа
	unknown_1:	а
identityИвStatefulPartitionedCallх
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:         dH*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *H
fCRA
?__inference_rnn_layer_call_and_return_conditional_losses_271731s
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:         dH`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:         d: : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:         d
 
_user_specified_nameinputs
Ч	
├
while_cond_271387
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_271387___redundant_placeholder04
0while_while_cond_271387___redundant_placeholder14
0while_while_cond_271387___redundant_placeholder24
0while_while_cond_271387___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :         H:         H: :::::

_output_shapes
::

_output_shapes
: :-)
'
_output_shapes
:         H:-)
'
_output_shapes
:         H:

_output_shapes
: :

_output_shapes
: :PL

_output_shapes
: 
2
_user_specified_namewhile/maximum_iterations:J F

_output_shapes
: 
,
_user_specified_namewhile/loop_counter
ў
▒
$__inference_rnn_layer_call_fn_272762

inputs
unknown:	а
	unknown_0:	Hа
	unknown_1:	а
identityИвStatefulPartitionedCallх
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:         dH*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *H
fCRA
?__inference_rnn_layer_call_and_return_conditional_losses_271979s
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:         dH`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:         d: : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:         d
 
_user_specified_nameinputs
Ч	
├
while_cond_273038
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_273038___redundant_placeholder04
0while_while_cond_273038___redundant_placeholder14
0while_while_cond_273038___redundant_placeholder24
0while_while_cond_273038___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :         H:         H: :::::

_output_shapes
::

_output_shapes
: :-)
'
_output_shapes
:         H:-)
'
_output_shapes
:         H:

_output_shapes
: :

_output_shapes
: :PL

_output_shapes
: 
2
_user_specified_namewhile/maximum_iterations:J F

_output_shapes
: 
,
_user_specified_namewhile/loop_counter
дМ
Р
F__inference_sequential_layer_call_and_return_conditional_losses_272718

inputs?
,rnn_lstm_cell_matmul_readvariableop_resource:	аA
.rnn_lstm_cell_matmul_1_readvariableop_resource:	Hа<
-rnn_lstm_cell_biasadd_readvariableop_resource:	а9
'dense_tensordot_readvariableop_resource:H23
%dense_biasadd_readvariableop_resource:2;
)dense_1_tensordot_readvariableop_resource:25
'dense_1_biasadd_readvariableop_resource:
identityИвdense/BiasAdd/ReadVariableOpвdense/Tensordot/ReadVariableOpвdense_1/BiasAdd/ReadVariableOpв dense_1/Tensordot/ReadVariableOpв$rnn/lstm_cell/BiasAdd/ReadVariableOpв#rnn/lstm_cell/MatMul/ReadVariableOpв%rnn/lstm_cell/MatMul_1/ReadVariableOpв	rnn/whileM
	rnn/ShapeShapeinputs*
T0*
_output_shapes
::э╧a
rnn/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: c
rnn/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:c
rnn/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:х
rnn/strided_sliceStridedSlicernn/Shape:output:0 rnn/strided_slice/stack:output:0"rnn/strided_slice/stack_1:output:0"rnn/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskT
rnn/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :H
rnn/zeros/packedPackrnn/strided_slice:output:0rnn/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:T
rnn/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    x
	rnn/zerosFillrnn/zeros/packed:output:0rnn/zeros/Const:output:0*
T0*'
_output_shapes
:         HV
rnn/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :HГ
rnn/zeros_1/packedPackrnn/strided_slice:output:0rnn/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:V
rnn/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ~
rnn/zeros_1Fillrnn/zeros_1/packed:output:0rnn/zeros_1/Const:output:0*
T0*'
_output_shapes
:         Hg
rnn/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          u
rnn/transpose	Transposeinputsrnn/transpose/perm:output:0*
T0*+
_output_shapes
:d         Z
rnn/Shape_1Shapernn/transpose:y:0*
T0*
_output_shapes
::э╧c
rnn/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: e
rnn/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:e
rnn/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:я
rnn/strided_slice_1StridedSlicernn/Shape_1:output:0"rnn/strided_slice_1/stack:output:0$rnn/strided_slice_1/stack_1:output:0$rnn/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskj
rnn/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
         └
rnn/TensorArrayV2TensorListReserve(rnn/TensorArrayV2/element_shape:output:0rnn/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щш╥К
9rnn/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       ь
+rnn/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorrnn/transpose:y:0Brnn/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щш╥c
rnn/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: e
rnn/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:e
rnn/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:¤
rnn/strided_slice_2StridedSlicernn/transpose:y:0"rnn/strided_slice_2/stack:output:0$rnn/strided_slice_2/stack_1:output:0$rnn/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         *
shrink_axis_maskw
rnn/lstm_cell/ones_like/ShapeShapernn/strided_slice_2:output:0*
T0*
_output_shapes
::э╧b
rnn/lstm_cell/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  А?б
rnn/lstm_cell/ones_likeFill&rnn/lstm_cell/ones_like/Shape:output:0&rnn/lstm_cell/ones_like/Const:output:0*
T0*'
_output_shapes
:         К
rnn/lstm_cell/mulMulrnn/strided_slice_2:output:0 rnn/lstm_cell/ones_like:output:0*
T0*'
_output_shapes
:         С
#rnn/lstm_cell/MatMul/ReadVariableOpReadVariableOp,rnn_lstm_cell_matmul_readvariableop_resource*
_output_shapes
:	а*
dtype0Х
rnn/lstm_cell/MatMulMatMulrnn/lstm_cell/mul:z:0+rnn/lstm_cell/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         аХ
%rnn/lstm_cell/MatMul_1/ReadVariableOpReadVariableOp.rnn_lstm_cell_matmul_1_readvariableop_resource*
_output_shapes
:	Hа*
dtype0Ц
rnn/lstm_cell/MatMul_1MatMulrnn/zeros:output:0-rnn/lstm_cell/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         аП
rnn/lstm_cell/addAddV2rnn/lstm_cell/MatMul:product:0 rnn/lstm_cell/MatMul_1:product:0*
T0*(
_output_shapes
:         аП
$rnn/lstm_cell/BiasAdd/ReadVariableOpReadVariableOp-rnn_lstm_cell_biasadd_readvariableop_resource*
_output_shapes	
:а*
dtype0Ш
rnn/lstm_cell/BiasAddBiasAddrnn/lstm_cell/add:z:0,rnn/lstm_cell/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         а_
rnn/lstm_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :р
rnn/lstm_cell/splitSplit&rnn/lstm_cell/split/split_dim:output:0rnn/lstm_cell/BiasAdd:output:0*
T0*`
_output_shapesN
L:         H:         H:         H:         H*
	num_splitp
rnn/lstm_cell/SigmoidSigmoidrnn/lstm_cell/split:output:0*
T0*'
_output_shapes
:         Hr
rnn/lstm_cell/Sigmoid_1Sigmoidrnn/lstm_cell/split:output:1*
T0*'
_output_shapes
:         H
rnn/lstm_cell/mul_1Mulrnn/lstm_cell/Sigmoid_1:y:0rnn/zeros_1:output:0*
T0*'
_output_shapes
:         Hj
rnn/lstm_cell/TanhTanhrnn/lstm_cell/split:output:2*
T0*'
_output_shapes
:         H
rnn/lstm_cell/mul_2Mulrnn/lstm_cell/Sigmoid:y:0rnn/lstm_cell/Tanh:y:0*
T0*'
_output_shapes
:         HА
rnn/lstm_cell/add_1AddV2rnn/lstm_cell/mul_1:z:0rnn/lstm_cell/mul_2:z:0*
T0*'
_output_shapes
:         Hr
rnn/lstm_cell/Sigmoid_2Sigmoidrnn/lstm_cell/split:output:3*
T0*'
_output_shapes
:         Hg
rnn/lstm_cell/Tanh_1Tanhrnn/lstm_cell/add_1:z:0*
T0*'
_output_shapes
:         HГ
rnn/lstm_cell/mul_3Mulrnn/lstm_cell/Sigmoid_2:y:0rnn/lstm_cell/Tanh_1:y:0*
T0*'
_output_shapes
:         Hr
!rnn/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    H   ─
rnn/TensorArrayV2_1TensorListReserve*rnn/TensorArrayV2_1/element_shape:output:0rnn/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щш╥J
rnn/timeConst*
_output_shapes
: *
dtype0*
value	B : g
rnn/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
         X
rnn/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ▒
	rnn/whileWhilernn/while/loop_counter:output:0%rnn/while/maximum_iterations:output:0rnn/time:output:0rnn/TensorArrayV2_1:handle:0rnn/zeros:output:0rnn/zeros_1:output:0rnn/strided_slice_1:output:0;rnn/TensorArrayUnstack/TensorListFromTensor:output_handle:0,rnn_lstm_cell_matmul_readvariableop_resource.rnn_lstm_cell_matmul_1_readvariableop_resource-rnn_lstm_cell_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :         H:         H: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *!
bodyR
rnn_while_body_272577*!
condR
rnn_while_cond_272576*K
output_shapes:
8: : : : :         H:         H: : : : : *
parallel_iterations Е
4rnn/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    H   ╬
&rnn/TensorArrayV2Stack/TensorListStackTensorListStackrnn/while:output:3=rnn/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:d         H*
element_dtype0l
rnn/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
         e
rnn/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: e
rnn/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ы
rnn/strided_slice_3StridedSlice/rnn/TensorArrayV2Stack/TensorListStack:tensor:0"rnn/strided_slice_3/stack:output:0$rnn/strided_slice_3/stack_1:output:0$rnn/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         H*
shrink_axis_maski
rnn/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          в
rnn/transpose_1	Transpose/rnn/TensorArrayV2Stack/TensorListStack:tensor:0rnn/transpose_1/perm:output:0*
T0*+
_output_shapes
:         dHЖ
dense/Tensordot/ReadVariableOpReadVariableOp'dense_tensordot_readvariableop_resource*
_output_shapes

:H2*
dtype0^
dense/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:e
dense/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       f
dense/Tensordot/ShapeShapernn/transpose_1:y:0*
T0*
_output_shapes
::э╧_
dense/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : ╙
dense/Tensordot/GatherV2GatherV2dense/Tensordot/Shape:output:0dense/Tensordot/free:output:0&dense/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:a
dense/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ╫
dense/Tensordot/GatherV2_1GatherV2dense/Tensordot/Shape:output:0dense/Tensordot/axes:output:0(dense/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:_
dense/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: А
dense/Tensordot/ProdProd!dense/Tensordot/GatherV2:output:0dense/Tensordot/Const:output:0*
T0*
_output_shapes
: a
dense/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: Ж
dense/Tensordot/Prod_1Prod#dense/Tensordot/GatherV2_1:output:0 dense/Tensordot/Const_1:output:0*
T0*
_output_shapes
: ]
dense/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : ┤
dense/Tensordot/concatConcatV2dense/Tensordot/free:output:0dense/Tensordot/axes:output:0$dense/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:Л
dense/Tensordot/stackPackdense/Tensordot/Prod:output:0dense/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:Т
dense/Tensordot/transpose	Transposernn/transpose_1:y:0dense/Tensordot/concat:output:0*
T0*+
_output_shapes
:         dHЬ
dense/Tensordot/ReshapeReshapedense/Tensordot/transpose:y:0dense/Tensordot/stack:output:0*
T0*0
_output_shapes
:                  Ь
dense/Tensordot/MatMulMatMul dense/Tensordot/Reshape:output:0&dense/Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:         2a
dense/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:2_
dense/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ┐
dense/Tensordot/concat_1ConcatV2!dense/Tensordot/GatherV2:output:0 dense/Tensordot/Const_2:output:0&dense/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:Х
dense/TensordotReshape dense/Tensordot/MatMul:product:0!dense/Tensordot/concat_1:output:0*
T0*+
_output_shapes
:         d2~
dense/BiasAdd/ReadVariableOpReadVariableOp%dense_biasadd_readvariableop_resource*
_output_shapes
:2*
dtype0О
dense/BiasAddBiasAdddense/Tensordot:output:0$dense/BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:         d2`

dense/ReluReludense/BiasAdd:output:0*
T0*+
_output_shapes
:         d2l
dropout/IdentityIdentitydense/Relu:activations:0*
T0*+
_output_shapes
:         d2К
 dense_1/Tensordot/ReadVariableOpReadVariableOp)dense_1_tensordot_readvariableop_resource*
_output_shapes

:2*
dtype0`
dense_1/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:g
dense_1/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       n
dense_1/Tensordot/ShapeShapedropout/Identity:output:0*
T0*
_output_shapes
::э╧a
dense_1/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : █
dense_1/Tensordot/GatherV2GatherV2 dense_1/Tensordot/Shape:output:0dense_1/Tensordot/free:output:0(dense_1/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:c
!dense_1/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ▀
dense_1/Tensordot/GatherV2_1GatherV2 dense_1/Tensordot/Shape:output:0dense_1/Tensordot/axes:output:0*dense_1/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:a
dense_1/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: Ж
dense_1/Tensordot/ProdProd#dense_1/Tensordot/GatherV2:output:0 dense_1/Tensordot/Const:output:0*
T0*
_output_shapes
: c
dense_1/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: М
dense_1/Tensordot/Prod_1Prod%dense_1/Tensordot/GatherV2_1:output:0"dense_1/Tensordot/Const_1:output:0*
T0*
_output_shapes
: _
dense_1/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : ╝
dense_1/Tensordot/concatConcatV2dense_1/Tensordot/free:output:0dense_1/Tensordot/axes:output:0&dense_1/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:С
dense_1/Tensordot/stackPackdense_1/Tensordot/Prod:output:0!dense_1/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:Ь
dense_1/Tensordot/transpose	Transposedropout/Identity:output:0!dense_1/Tensordot/concat:output:0*
T0*+
_output_shapes
:         d2в
dense_1/Tensordot/ReshapeReshapedense_1/Tensordot/transpose:y:0 dense_1/Tensordot/stack:output:0*
T0*0
_output_shapes
:                  в
dense_1/Tensordot/MatMulMatMul"dense_1/Tensordot/Reshape:output:0(dense_1/Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:         c
dense_1/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:a
dense_1/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ╟
dense_1/Tensordot/concat_1ConcatV2#dense_1/Tensordot/GatherV2:output:0"dense_1/Tensordot/Const_2:output:0(dense_1/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:Ы
dense_1/TensordotReshape"dense_1/Tensordot/MatMul:product:0#dense_1/Tensordot/concat_1:output:0*
T0*+
_output_shapes
:         dВ
dense_1/BiasAdd/ReadVariableOpReadVariableOp'dense_1_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0Ф
dense_1/BiasAddBiasAdddense_1/Tensordot:output:0&dense_1/BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:         dk
IdentityIdentitydense_1/BiasAdd:output:0^NoOp*
T0*+
_output_shapes
:         d╦
NoOpNoOp^dense/BiasAdd/ReadVariableOp^dense/Tensordot/ReadVariableOp^dense_1/BiasAdd/ReadVariableOp!^dense_1/Tensordot/ReadVariableOp%^rnn/lstm_cell/BiasAdd/ReadVariableOp$^rnn/lstm_cell/MatMul/ReadVariableOp&^rnn/lstm_cell/MatMul_1/ReadVariableOp
^rnn/while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%:         d: : : : : : : 2<
dense/BiasAdd/ReadVariableOpdense/BiasAdd/ReadVariableOp2@
dense/Tensordot/ReadVariableOpdense/Tensordot/ReadVariableOp2@
dense_1/BiasAdd/ReadVariableOpdense_1/BiasAdd/ReadVariableOp2D
 dense_1/Tensordot/ReadVariableOp dense_1/Tensordot/ReadVariableOp2L
$rnn/lstm_cell/BiasAdd/ReadVariableOp$rnn/lstm_cell/BiasAdd/ReadVariableOp2J
#rnn/lstm_cell/MatMul/ReadVariableOp#rnn/lstm_cell/MatMul/ReadVariableOp2N
%rnn/lstm_cell/MatMul_1/ReadVariableOp%rnn/lstm_cell/MatMul_1/ReadVariableOp2
	rnn/while	rnn/while:S O
+
_output_shapes
:         d
 
_user_specified_nameinputs
о
°
A__inference_dense_layer_call_and_return_conditional_losses_271770

inputs3
!tensordot_readvariableop_resource:H2-
biasadd_readvariableop_resource:2
identityИвBiasAdd/ReadVariableOpвTensordot/ReadVariableOpz
Tensordot/ReadVariableOpReadVariableOp!tensordot_readvariableop_resource*
_output_shapes

:H2*
dtype0X
Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:_
Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       S
Tensordot/ShapeShapeinputs*
T0*
_output_shapes
::э╧Y
Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : ╗
Tensordot/GatherV2GatherV2Tensordot/Shape:output:0Tensordot/free:output:0 Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:[
Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ┐
Tensordot/GatherV2_1GatherV2Tensordot/Shape:output:0Tensordot/axes:output:0"Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:Y
Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: n
Tensordot/ProdProdTensordot/GatherV2:output:0Tensordot/Const:output:0*
T0*
_output_shapes
: [
Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: t
Tensordot/Prod_1ProdTensordot/GatherV2_1:output:0Tensordot/Const_1:output:0*
T0*
_output_shapes
: W
Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : Ь
Tensordot/concatConcatV2Tensordot/free:output:0Tensordot/axes:output:0Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:y
Tensordot/stackPackTensordot/Prod:output:0Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:y
Tensordot/transpose	TransposeinputsTensordot/concat:output:0*
T0*+
_output_shapes
:         dHК
Tensordot/ReshapeReshapeTensordot/transpose:y:0Tensordot/stack:output:0*
T0*0
_output_shapes
:                  К
Tensordot/MatMulMatMulTensordot/Reshape:output:0 Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:         2[
Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:2Y
Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : з
Tensordot/concat_1ConcatV2Tensordot/GatherV2:output:0Tensordot/Const_2:output:0 Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:Г
	TensordotReshapeTensordot/MatMul:product:0Tensordot/concat_1:output:0*
T0*+
_output_shapes
:         d2r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:2*
dtype0|
BiasAddBiasAddTensordot:output:0BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:         d2T
ReluReluBiasAdd:output:0*
T0*+
_output_shapes
:         d2e
IdentityIdentityRelu:activations:0^NoOp*
T0*+
_output_shapes
:         d2z
NoOpNoOp^BiasAdd/ReadVariableOp^Tensordot/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:         dH: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp24
Tensordot/ReadVariableOpTensordot/ReadVariableOp:S O
+
_output_shapes
:         dH
 
_user_specified_nameinputs
Ч	
├
while_cond_271239
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_271239___redundant_placeholder04
0while_while_cond_271239___redundant_placeholder14
0while_while_cond_271239___redundant_placeholder24
0while_while_cond_271239___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :         H:         H: :::::

_output_shapes
::

_output_shapes
: :-)
'
_output_shapes
:         H:-)
'
_output_shapes
:         H:

_output_shapes
: :

_output_shapes
: :PL

_output_shapes
: 
2
_user_specified_namewhile/maximum_iterations:J F

_output_shapes
: 
,
_user_specified_namewhile/loop_counter
б
│
$__inference_rnn_layer_call_fn_272729
inputs_0
unknown:	а
	unknown_0:	Hа
	unknown_1:	а
identityИвStatefulPartitionedCallЁ
StatefulPartitionedCallStatefulPartitionedCallinputs_0unknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :                  H*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *H
fCRA
?__inference_rnn_layer_call_and_return_conditional_losses_271308|
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*4
_output_shapes"
 :                  H`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:                  : : : 22
StatefulPartitionedCallStatefulPartitionedCall:^ Z
4
_output_shapes"
 :                  
"
_user_specified_name
inputs_0
╝N
Х
 sequential_rnn_while_body_270985:
6sequential_rnn_while_sequential_rnn_while_loop_counter@
<sequential_rnn_while_sequential_rnn_while_maximum_iterations$
 sequential_rnn_while_placeholder&
"sequential_rnn_while_placeholder_1&
"sequential_rnn_while_placeholder_2&
"sequential_rnn_while_placeholder_39
5sequential_rnn_while_sequential_rnn_strided_slice_1_0u
qsequential_rnn_while_tensorarrayv2read_tensorlistgetitem_sequential_rnn_tensorarrayunstack_tensorlistfromtensor_0R
?sequential_rnn_while_lstm_cell_matmul_readvariableop_resource_0:	аT
Asequential_rnn_while_lstm_cell_matmul_1_readvariableop_resource_0:	HаO
@sequential_rnn_while_lstm_cell_biasadd_readvariableop_resource_0:	а!
sequential_rnn_while_identity#
sequential_rnn_while_identity_1#
sequential_rnn_while_identity_2#
sequential_rnn_while_identity_3#
sequential_rnn_while_identity_4#
sequential_rnn_while_identity_57
3sequential_rnn_while_sequential_rnn_strided_slice_1s
osequential_rnn_while_tensorarrayv2read_tensorlistgetitem_sequential_rnn_tensorarrayunstack_tensorlistfromtensorP
=sequential_rnn_while_lstm_cell_matmul_readvariableop_resource:	аR
?sequential_rnn_while_lstm_cell_matmul_1_readvariableop_resource:	HаM
>sequential_rnn_while_lstm_cell_biasadd_readvariableop_resource:	аИв5sequential/rnn/while/lstm_cell/BiasAdd/ReadVariableOpв4sequential/rnn/while/lstm_cell/MatMul/ReadVariableOpв6sequential/rnn/while/lstm_cell/MatMul_1/ReadVariableOpЧ
Fsequential/rnn/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       ё
8sequential/rnn/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemqsequential_rnn_while_tensorarrayv2read_tensorlistgetitem_sequential_rnn_tensorarrayunstack_tensorlistfromtensor_0 sequential_rnn_while_placeholderOsequential/rnn/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:         *
element_dtype0л
.sequential/rnn/while/lstm_cell/ones_like/ShapeShape?sequential/rnn/while/TensorArrayV2Read/TensorListGetItem:item:0*
T0*
_output_shapes
::э╧s
.sequential/rnn/while/lstm_cell/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  А?╘
(sequential/rnn/while/lstm_cell/ones_likeFill7sequential/rnn/while/lstm_cell/ones_like/Shape:output:07sequential/rnn/while/lstm_cell/ones_like/Const:output:0*
T0*'
_output_shapes
:         ╧
"sequential/rnn/while/lstm_cell/mulMul?sequential/rnn/while/TensorArrayV2Read/TensorListGetItem:item:01sequential/rnn/while/lstm_cell/ones_like:output:0*
T0*'
_output_shapes
:         ╡
4sequential/rnn/while/lstm_cell/MatMul/ReadVariableOpReadVariableOp?sequential_rnn_while_lstm_cell_matmul_readvariableop_resource_0*
_output_shapes
:	а*
dtype0╚
%sequential/rnn/while/lstm_cell/MatMulMatMul&sequential/rnn/while/lstm_cell/mul:z:0<sequential/rnn/while/lstm_cell/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         а╣
6sequential/rnn/while/lstm_cell/MatMul_1/ReadVariableOpReadVariableOpAsequential_rnn_while_lstm_cell_matmul_1_readvariableop_resource_0*
_output_shapes
:	Hа*
dtype0╚
'sequential/rnn/while/lstm_cell/MatMul_1MatMul"sequential_rnn_while_placeholder_2>sequential/rnn/while/lstm_cell/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         а┬
"sequential/rnn/while/lstm_cell/addAddV2/sequential/rnn/while/lstm_cell/MatMul:product:01sequential/rnn/while/lstm_cell/MatMul_1:product:0*
T0*(
_output_shapes
:         а│
5sequential/rnn/while/lstm_cell/BiasAdd/ReadVariableOpReadVariableOp@sequential_rnn_while_lstm_cell_biasadd_readvariableop_resource_0*
_output_shapes	
:а*
dtype0╦
&sequential/rnn/while/lstm_cell/BiasAddBiasAdd&sequential/rnn/while/lstm_cell/add:z:0=sequential/rnn/while/lstm_cell/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         аp
.sequential/rnn/while/lstm_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :У
$sequential/rnn/while/lstm_cell/splitSplit7sequential/rnn/while/lstm_cell/split/split_dim:output:0/sequential/rnn/while/lstm_cell/BiasAdd:output:0*
T0*`
_output_shapesN
L:         H:         H:         H:         H*
	num_splitТ
&sequential/rnn/while/lstm_cell/SigmoidSigmoid-sequential/rnn/while/lstm_cell/split:output:0*
T0*'
_output_shapes
:         HФ
(sequential/rnn/while/lstm_cell/Sigmoid_1Sigmoid-sequential/rnn/while/lstm_cell/split:output:1*
T0*'
_output_shapes
:         Hп
$sequential/rnn/while/lstm_cell/mul_1Mul,sequential/rnn/while/lstm_cell/Sigmoid_1:y:0"sequential_rnn_while_placeholder_3*
T0*'
_output_shapes
:         HМ
#sequential/rnn/while/lstm_cell/TanhTanh-sequential/rnn/while/lstm_cell/split:output:2*
T0*'
_output_shapes
:         H▓
$sequential/rnn/while/lstm_cell/mul_2Mul*sequential/rnn/while/lstm_cell/Sigmoid:y:0'sequential/rnn/while/lstm_cell/Tanh:y:0*
T0*'
_output_shapes
:         H│
$sequential/rnn/while/lstm_cell/add_1AddV2(sequential/rnn/while/lstm_cell/mul_1:z:0(sequential/rnn/while/lstm_cell/mul_2:z:0*
T0*'
_output_shapes
:         HФ
(sequential/rnn/while/lstm_cell/Sigmoid_2Sigmoid-sequential/rnn/while/lstm_cell/split:output:3*
T0*'
_output_shapes
:         HЙ
%sequential/rnn/while/lstm_cell/Tanh_1Tanh(sequential/rnn/while/lstm_cell/add_1:z:0*
T0*'
_output_shapes
:         H╢
$sequential/rnn/while/lstm_cell/mul_3Mul,sequential/rnn/while/lstm_cell/Sigmoid_2:y:0)sequential/rnn/while/lstm_cell/Tanh_1:y:0*
T0*'
_output_shapes
:         H■
9sequential/rnn/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem"sequential_rnn_while_placeholder_1 sequential_rnn_while_placeholder(sequential/rnn/while/lstm_cell/mul_3:z:0*
_output_shapes
: *
element_dtype0:щш╥\
sequential/rnn/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :Й
sequential/rnn/while/addAddV2 sequential_rnn_while_placeholder#sequential/rnn/while/add/y:output:0*
T0*
_output_shapes
: ^
sequential/rnn/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :г
sequential/rnn/while/add_1AddV26sequential_rnn_while_sequential_rnn_while_loop_counter%sequential/rnn/while/add_1/y:output:0*
T0*
_output_shapes
: Ж
sequential/rnn/while/IdentityIdentitysequential/rnn/while/add_1:z:0^sequential/rnn/while/NoOp*
T0*
_output_shapes
: ж
sequential/rnn/while/Identity_1Identity<sequential_rnn_while_sequential_rnn_while_maximum_iterations^sequential/rnn/while/NoOp*
T0*
_output_shapes
: Ж
sequential/rnn/while/Identity_2Identitysequential/rnn/while/add:z:0^sequential/rnn/while/NoOp*
T0*
_output_shapes
: │
sequential/rnn/while/Identity_3IdentityIsequential/rnn/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^sequential/rnn/while/NoOp*
T0*
_output_shapes
: г
sequential/rnn/while/Identity_4Identity(sequential/rnn/while/lstm_cell/mul_3:z:0^sequential/rnn/while/NoOp*
T0*'
_output_shapes
:         Hг
sequential/rnn/while/Identity_5Identity(sequential/rnn/while/lstm_cell/add_1:z:0^sequential/rnn/while/NoOp*
T0*'
_output_shapes
:         HГ
sequential/rnn/while/NoOpNoOp6^sequential/rnn/while/lstm_cell/BiasAdd/ReadVariableOp5^sequential/rnn/while/lstm_cell/MatMul/ReadVariableOp7^sequential/rnn/while/lstm_cell/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "K
sequential_rnn_while_identity_1(sequential/rnn/while/Identity_1:output:0"K
sequential_rnn_while_identity_2(sequential/rnn/while/Identity_2:output:0"K
sequential_rnn_while_identity_3(sequential/rnn/while/Identity_3:output:0"K
sequential_rnn_while_identity_4(sequential/rnn/while/Identity_4:output:0"K
sequential_rnn_while_identity_5(sequential/rnn/while/Identity_5:output:0"G
sequential_rnn_while_identity&sequential/rnn/while/Identity:output:0"В
>sequential_rnn_while_lstm_cell_biasadd_readvariableop_resource@sequential_rnn_while_lstm_cell_biasadd_readvariableop_resource_0"Д
?sequential_rnn_while_lstm_cell_matmul_1_readvariableop_resourceAsequential_rnn_while_lstm_cell_matmul_1_readvariableop_resource_0"А
=sequential_rnn_while_lstm_cell_matmul_readvariableop_resource?sequential_rnn_while_lstm_cell_matmul_readvariableop_resource_0"l
3sequential_rnn_while_sequential_rnn_strided_slice_15sequential_rnn_while_sequential_rnn_strided_slice_1_0"ф
osequential_rnn_while_tensorarrayv2read_tensorlistgetitem_sequential_rnn_tensorarrayunstack_tensorlistfromtensorqsequential_rnn_while_tensorarrayv2read_tensorlistgetitem_sequential_rnn_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :         H:         H: : : : : 2n
5sequential/rnn/while/lstm_cell/BiasAdd/ReadVariableOp5sequential/rnn/while/lstm_cell/BiasAdd/ReadVariableOp2l
4sequential/rnn/while/lstm_cell/MatMul/ReadVariableOp4sequential/rnn/while/lstm_cell/MatMul/ReadVariableOp2p
6sequential/rnn/while/lstm_cell/MatMul_1/ReadVariableOp6sequential/rnn/while/lstm_cell/MatMul_1/ReadVariableOp:

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:         H:-)
'
_output_shapes
:         H:

_output_shapes
: :

_output_shapes
: :_[

_output_shapes
: 
A
_user_specified_name)'sequential/rnn/while/maximum_iterations:Y U

_output_shapes
: 
;
_user_specified_name#!sequential/rnn/while/loop_counter"є
L
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*╢
serving_defaultв
C
	rnn_input6
serving_default_rnn_input:0         d?
dense_14
StatefulPartitionedCall:0         dtensorflow/serving/predict:а╩
ш
layer_with_weights-0
layer-0
layer_with_weights-1
layer-1
layer-2
layer_with_weights-2
layer-3
	variables
trainable_variables
regularization_losses
	keras_api
	__call__
*
&call_and_return_all_conditional_losses
_default_save_signature
	optimizer

signatures"
_tf_keras_sequential
├
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses
cell

state_spec"
_tf_keras_rnn_layer
╗
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses

kernel
bias"
_tf_keras_layer
╝
	variables
trainable_variables
 regularization_losses
!	keras_api
"__call__
*#&call_and_return_all_conditional_losses
$_random_generator"
_tf_keras_layer
╗
%	variables
&trainable_variables
'regularization_losses
(	keras_api
)__call__
**&call_and_return_all_conditional_losses

+kernel
,bias"
_tf_keras_layer
Q
-0
.1
/2
3
4
+5
,6"
trackable_list_wrapper
Q
-0
.1
/2
3
4
+5
,6"
trackable_list_wrapper
 "
trackable_list_wrapper
╩
0non_trainable_variables

1layers
2metrics
3layer_regularization_losses
4layer_metrics
	variables
trainable_variables
regularization_losses
	__call__
_default_save_signature
*
&call_and_return_all_conditional_losses
&
"call_and_return_conditional_losses"
_generic_user_object
╫
5trace_0
6trace_1
7trace_2
8trace_32ь
+__inference_sequential_layer_call_fn_272046
+__inference_sequential_layer_call_fn_272087
+__inference_sequential_layer_call_fn_272220
+__inference_sequential_layer_call_fn_272239╡
о▓к
FullArgSpec)
args!Ъ
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsв
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 z5trace_0z6trace_1z7trace_2z8trace_3
├
9trace_0
:trace_1
;trace_2
<trace_32╪
F__inference_sequential_layer_call_and_return_conditional_losses_271827
F__inference_sequential_layer_call_and_return_conditional_losses_272004
F__inference_sequential_layer_call_and_return_conditional_losses_272514
F__inference_sequential_layer_call_and_return_conditional_losses_272718╡
о▓к
FullArgSpec)
args!Ъ
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsв
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 z9trace_0z:trace_1z;trace_2z<trace_3
╬B╦
!__inference__wrapped_model_271126	rnn_input"Ш
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
Ь
=
_variables
>_iterations
?_learning_rate
@_index_dict
A
_momentums
B_velocities
C_update_step_xla"
experimentalOptimizer
,
Dserving_default"
signature_map
5
-0
.1
/2"
trackable_list_wrapper
5
-0
.1
/2"
trackable_list_wrapper
 "
trackable_list_wrapper
╣

Estates
Fnon_trainable_variables

Glayers
Hmetrics
Ilayer_regularization_losses
Jlayer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
с
Ktrace_0
Ltrace_1
Mtrace_2
Ntrace_32Ў
$__inference_rnn_layer_call_fn_272729
$__inference_rnn_layer_call_fn_272740
$__inference_rnn_layer_call_fn_272751
$__inference_rnn_layer_call_fn_272762█
╘▓╨
FullArgSpecG
args?Ъ<
jinputs
jmask

jtraining
jinitial_state
j	constants
varargs
 
varkw
 
defaultsв

 
p 

 

 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 zKtrace_0zLtrace_1zMtrace_2zNtrace_3
═
Otrace_0
Ptrace_1
Qtrace_2
Rtrace_32т
?__inference_rnn_layer_call_and_return_conditional_losses_272976
?__inference_rnn_layer_call_and_return_conditional_losses_273126
?__inference_rnn_layer_call_and_return_conditional_losses_273340
?__inference_rnn_layer_call_and_return_conditional_losses_273490█
╘▓╨
FullArgSpecG
args?Ъ<
jinputs
jmask

jtraining
jinitial_state
j	constants
varargs
 
varkw
 
defaultsв

 
p 

 

 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 zOtrace_0zPtrace_1zQtrace_2zRtrace_3
°
S	variables
Ttrainable_variables
Uregularization_losses
V	keras_api
W__call__
*X&call_and_return_all_conditional_losses
Y_random_generator
Z
state_size

-kernel
.recurrent_kernel
/bias"
_tf_keras_layer
 "
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
н
[non_trainable_variables

\layers
]metrics
^layer_regularization_losses
_layer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
р
`trace_02├
&__inference_dense_layer_call_fn_273499Ш
С▓Н
FullArgSpec
argsЪ

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
annotationsк *
 z`trace_0
√
atrace_02▐
A__inference_dense_layer_call_and_return_conditional_losses_273530Ш
С▓Н
FullArgSpec
argsЪ

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
annotationsк *
 zatrace_0
:H22dense/kernel
:22
dense/bias
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
н
bnon_trainable_variables

clayers
dmetrics
elayer_regularization_losses
flayer_metrics
	variables
trainable_variables
 regularization_losses
"__call__
*#&call_and_return_all_conditional_losses
&#"call_and_return_conditional_losses"
_generic_user_object
╖
gtrace_0
htrace_12А
(__inference_dropout_layer_call_fn_273535
(__inference_dropout_layer_call_fn_273540й
в▓Ю
FullArgSpec!
argsЪ
jinputs

jtraining
varargs
 
varkw
 
defaultsв
p 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 zgtrace_0zhtrace_1
э
itrace_0
jtrace_12╢
C__inference_dropout_layer_call_and_return_conditional_losses_273552
C__inference_dropout_layer_call_and_return_conditional_losses_273557й
в▓Ю
FullArgSpec!
argsЪ
jinputs

jtraining
varargs
 
varkw
 
defaultsв
p 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 zitrace_0zjtrace_1
"
_generic_user_object
.
+0
,1"
trackable_list_wrapper
.
+0
,1"
trackable_list_wrapper
 "
trackable_list_wrapper
н
knon_trainable_variables

llayers
mmetrics
nlayer_regularization_losses
olayer_metrics
%	variables
&trainable_variables
'regularization_losses
)__call__
**&call_and_return_all_conditional_losses
&*"call_and_return_conditional_losses"
_generic_user_object
т
ptrace_02┼
(__inference_dense_1_layer_call_fn_273566Ш
С▓Н
FullArgSpec
argsЪ

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
annotationsк *
 zptrace_0
¤
qtrace_02р
C__inference_dense_1_layer_call_and_return_conditional_losses_273596Ш
С▓Н
FullArgSpec
argsЪ

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
annotationsк *
 zqtrace_0
 :22dense_1/kernel
:2dense_1/bias
':%	а2rnn/lstm_cell/kernel
1:/	Hа2rnn/lstm_cell/recurrent_kernel
!:а2rnn/lstm_cell/bias
 "
trackable_list_wrapper
<
0
1
2
3"
trackable_list_wrapper
5
r0
s1
t2"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
їBЄ
+__inference_sequential_layer_call_fn_272046	rnn_input"╡
о▓к
FullArgSpec)
args!Ъ
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsв
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
їBЄ
+__inference_sequential_layer_call_fn_272087	rnn_input"╡
о▓к
FullArgSpec)
args!Ъ
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsв
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
ЄBя
+__inference_sequential_layer_call_fn_272220inputs"╡
о▓к
FullArgSpec)
args!Ъ
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsв
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
ЄBя
+__inference_sequential_layer_call_fn_272239inputs"╡
о▓к
FullArgSpec)
args!Ъ
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsв
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
РBН
F__inference_sequential_layer_call_and_return_conditional_losses_271827	rnn_input"╡
о▓к
FullArgSpec)
args!Ъ
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsв
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
РBН
F__inference_sequential_layer_call_and_return_conditional_losses_272004	rnn_input"╡
о▓к
FullArgSpec)
args!Ъ
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsв
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
НBК
F__inference_sequential_layer_call_and_return_conditional_losses_272514inputs"╡
о▓к
FullArgSpec)
args!Ъ
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsв
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
НBК
F__inference_sequential_layer_call_and_return_conditional_losses_272718inputs"╡
о▓к
FullArgSpec)
args!Ъ
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsв
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
С
>0
u1
v2
w3
x4
y5
z6
{7
|8
}9
~10
11
А12
Б13
В14"
trackable_list_wrapper
:	 2	iteration
: 2learning_rate
 "
trackable_dict_wrapper
R
u0
w1
y2
{3
}4
5
Б6"
trackable_list_wrapper
S
v0
x1
z2
|3
~4
А5
В6"
trackable_list_wrapper
╡2▓п
ж▓в
FullArgSpec*
args"Ъ

jgradient

jvariable
jkey
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 0
═B╩
$__inference_signature_wrapper_272201	rnn_input"Ф
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
'
0"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
УBР
$__inference_rnn_layer_call_fn_272729inputs_0"█
╘▓╨
FullArgSpecG
args?Ъ<
jinputs
jmask

jtraining
jinitial_state
j	constants
varargs
 
varkw
 
defaultsв

 
p 

 

 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
УBР
$__inference_rnn_layer_call_fn_272740inputs_0"█
╘▓╨
FullArgSpecG
args?Ъ<
jinputs
jmask

jtraining
jinitial_state
j	constants
varargs
 
varkw
 
defaultsв

 
p 

 

 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
СBО
$__inference_rnn_layer_call_fn_272751inputs"█
╘▓╨
FullArgSpecG
args?Ъ<
jinputs
jmask

jtraining
jinitial_state
j	constants
varargs
 
varkw
 
defaultsв

 
p 

 

 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
СBО
$__inference_rnn_layer_call_fn_272762inputs"█
╘▓╨
FullArgSpecG
args?Ъ<
jinputs
jmask

jtraining
jinitial_state
j	constants
varargs
 
varkw
 
defaultsв

 
p 

 

 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
оBл
?__inference_rnn_layer_call_and_return_conditional_losses_272976inputs_0"█
╘▓╨
FullArgSpecG
args?Ъ<
jinputs
jmask

jtraining
jinitial_state
j	constants
varargs
 
varkw
 
defaultsв

 
p 

 

 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
оBл
?__inference_rnn_layer_call_and_return_conditional_losses_273126inputs_0"█
╘▓╨
FullArgSpecG
args?Ъ<
jinputs
jmask

jtraining
jinitial_state
j	constants
varargs
 
varkw
 
defaultsв

 
p 

 

 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
мBй
?__inference_rnn_layer_call_and_return_conditional_losses_273340inputs"█
╘▓╨
FullArgSpecG
args?Ъ<
jinputs
jmask

jtraining
jinitial_state
j	constants
varargs
 
varkw
 
defaultsв

 
p 

 

 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
мBй
?__inference_rnn_layer_call_and_return_conditional_losses_273490inputs"█
╘▓╨
FullArgSpecG
args?Ъ<
jinputs
jmask

jtraining
jinitial_state
j	constants
varargs
 
varkw
 
defaultsв

 
p 

 

 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
5
-0
.1
/2"
trackable_list_wrapper
5
-0
.1
/2"
trackable_list_wrapper
 "
trackable_list_wrapper
▓
Гnon_trainable_variables
Дlayers
Еmetrics
 Жlayer_regularization_losses
Зlayer_metrics
S	variables
Ttrainable_variables
Uregularization_losses
W__call__
*X&call_and_return_all_conditional_losses
&X"call_and_return_conditional_losses"
_generic_user_object
╔
Иtrace_0
Йtrace_12О
*__inference_lstm_cell_layer_call_fn_273613
*__inference_lstm_cell_layer_call_fn_273630│
м▓и
FullArgSpec+
args#Ъ 
jinputs
jstates

jtraining
varargs
 
varkw
 
defaultsв
p 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 zИtrace_0zЙtrace_1
 
Кtrace_0
Лtrace_12─
E__inference_lstm_cell_layer_call_and_return_conditional_losses_273698
E__inference_lstm_cell_layer_call_and_return_conditional_losses_273734│
м▓и
FullArgSpec+
args#Ъ 
jinputs
jstates

jtraining
varargs
 
varkw
 
defaultsв
p 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 zКtrace_0zЛtrace_1
"
_generic_user_object
 "
trackable_list_wrapper
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
╨B═
&__inference_dense_layer_call_fn_273499inputs"Ш
С▓Н
FullArgSpec
argsЪ

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
annotationsк *
 
ыBш
A__inference_dense_layer_call_and_return_conditional_losses_273530inputs"Ш
С▓Н
FullArgSpec
argsЪ

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
уBр
(__inference_dropout_layer_call_fn_273535inputs"й
в▓Ю
FullArgSpec!
argsЪ
jinputs

jtraining
varargs
 
varkw
 
defaultsв
p 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
уBр
(__inference_dropout_layer_call_fn_273540inputs"й
в▓Ю
FullArgSpec!
argsЪ
jinputs

jtraining
varargs
 
varkw
 
defaultsв
p 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
■B√
C__inference_dropout_layer_call_and_return_conditional_losses_273552inputs"й
в▓Ю
FullArgSpec!
argsЪ
jinputs

jtraining
varargs
 
varkw
 
defaultsв
p 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
■B√
C__inference_dropout_layer_call_and_return_conditional_losses_273557inputs"й
в▓Ю
FullArgSpec!
argsЪ
jinputs

jtraining
varargs
 
varkw
 
defaultsв
p 

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
╥B╧
(__inference_dense_1_layer_call_fn_273566inputs"Ш
С▓Н
FullArgSpec
argsЪ

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
annotationsк *
 
эBъ
C__inference_dense_1_layer_call_and_return_conditional_losses_273596inputs"Ш
С▓Н
FullArgSpec
argsЪ

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
annotationsк *
 
R
М	variables
Н	keras_api

Оtotal

Пcount"
_tf_keras_metric
c
Р	variables
С	keras_api

Тtotal

Уcount
Ф
_fn_kwargs"
_tf_keras_metric
c
Х	variables
Ц	keras_api

Чtotal

Шcount
Щ
_fn_kwargs"
_tf_keras_metric
,:*	а2Adam/m/rnn/lstm_cell/kernel
,:*	а2Adam/v/rnn/lstm_cell/kernel
6:4	Hа2%Adam/m/rnn/lstm_cell/recurrent_kernel
6:4	Hа2%Adam/v/rnn/lstm_cell/recurrent_kernel
&:$а2Adam/m/rnn/lstm_cell/bias
&:$а2Adam/v/rnn/lstm_cell/bias
#:!H22Adam/m/dense/kernel
#:!H22Adam/v/dense/kernel
:22Adam/m/dense/bias
:22Adam/v/dense/bias
%:#22Adam/m/dense_1/kernel
%:#22Adam/v/dense_1/kernel
:2Adam/m/dense_1/bias
:2Adam/v/dense_1/bias
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
ГBА
*__inference_lstm_cell_layer_call_fn_273613inputsstates_0states_1"│
м▓и
FullArgSpec+
args#Ъ 
jinputs
jstates

jtraining
varargs
 
varkw
 
defaultsв
p 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
ГBА
*__inference_lstm_cell_layer_call_fn_273630inputsstates_0states_1"│
м▓и
FullArgSpec+
args#Ъ 
jinputs
jstates

jtraining
varargs
 
varkw
 
defaultsв
p 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
ЮBЫ
E__inference_lstm_cell_layer_call_and_return_conditional_losses_273698inputsstates_0states_1"│
м▓и
FullArgSpec+
args#Ъ 
jinputs
jstates

jtraining
varargs
 
varkw
 
defaultsв
p 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
ЮBЫ
E__inference_lstm_cell_layer_call_and_return_conditional_losses_273734inputsstates_0states_1"│
м▓и
FullArgSpec+
args#Ъ 
jinputs
jstates

jtraining
varargs
 
varkw
 
defaultsв
p 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
0
О0
П1"
trackable_list_wrapper
.
М	variables"
_generic_user_object
:  (2total
:  (2count
0
Т0
У1"
trackable_list_wrapper
.
Р	variables"
_generic_user_object
:  (2total
:  (2count
 "
trackable_dict_wrapper
0
Ч0
Ш1"
trackable_list_wrapper
.
Х	variables"
_generic_user_object
:  (2total
:  (2count
 "
trackable_dict_wrapperЭ
!__inference__wrapped_model_271126x-./+,6в3
,в)
'К$
	rnn_input         d
к "5к2
0
dense_1%К"
dense_1         d▓
C__inference_dense_1_layer_call_and_return_conditional_losses_273596k+,3в0
)в&
$К!
inputs         d2
к "0в-
&К#
tensor_0         d
Ъ М
(__inference_dense_1_layer_call_fn_273566`+,3в0
)в&
$К!
inputs         d2
к "%К"
unknown         d░
A__inference_dense_layer_call_and_return_conditional_losses_273530k3в0
)в&
$К!
inputs         dH
к "0в-
&К#
tensor_0         d2
Ъ К
&__inference_dense_layer_call_fn_273499`3в0
)в&
$К!
inputs         dH
к "%К"
unknown         d2▓
C__inference_dropout_layer_call_and_return_conditional_losses_273552k7в4
-в*
$К!
inputs         d2
p
к "0в-
&К#
tensor_0         d2
Ъ ▓
C__inference_dropout_layer_call_and_return_conditional_losses_273557k7в4
-в*
$К!
inputs         d2
p 
к "0в-
&К#
tensor_0         d2
Ъ М
(__inference_dropout_layer_call_fn_273535`7в4
-в*
$К!
inputs         d2
p
к "%К"
unknown         d2М
(__inference_dropout_layer_call_fn_273540`7в4
-в*
$К!
inputs         d2
p 
к "%К"
unknown         d2▐
E__inference_lstm_cell_layer_call_and_return_conditional_losses_273698Ф-./Ав}
vвs
 К
inputs         
KвH
"К
states_0         H
"К
states_1         H
p
к "ЙвЕ
~в{
$К!

tensor_0_0         H
SЪP
&К#
tensor_0_1_0         H
&К#
tensor_0_1_1         H
Ъ ▐
E__inference_lstm_cell_layer_call_and_return_conditional_losses_273734Ф-./Ав}
vвs
 К
inputs         
KвH
"К
states_0         H
"К
states_1         H
p 
к "ЙвЕ
~в{
$К!

tensor_0_0         H
SЪP
&К#
tensor_0_1_0         H
&К#
tensor_0_1_1         H
Ъ ▒
*__inference_lstm_cell_layer_call_fn_273613В-./Ав}
vвs
 К
inputs         
KвH
"К
states_0         H
"К
states_1         H
p
к "xвu
"К
tensor_0         H
OЪL
$К!

tensor_1_0         H
$К!

tensor_1_1         H▒
*__inference_lstm_cell_layer_call_fn_273630В-./Ав}
vвs
 К
inputs         
KвH
"К
states_0         H
"К
states_1         H
p 
к "xвu
"К
tensor_0         H
OЪL
$К!

tensor_1_0         H
$К!

tensor_1_1         H┘
?__inference_rnn_layer_call_and_return_conditional_losses_272976Х-./SвP
IвF
4Ъ1
/К,
inputs_0                  

 
p

 

 
к "9в6
/К,
tensor_0                  H
Ъ ┘
?__inference_rnn_layer_call_and_return_conditional_losses_273126Х-./SвP
IвF
4Ъ1
/К,
inputs_0                  

 
p 

 

 
к "9в6
/К,
tensor_0                  H
Ъ ┐
?__inference_rnn_layer_call_and_return_conditional_losses_273340|-./Cв@
9в6
$К!
inputs         d

 
p

 

 
к "0в-
&К#
tensor_0         dH
Ъ ┐
?__inference_rnn_layer_call_and_return_conditional_losses_273490|-./Cв@
9в6
$К!
inputs         d

 
p 

 

 
к "0в-
&К#
tensor_0         dH
Ъ │
$__inference_rnn_layer_call_fn_272729К-./SвP
IвF
4Ъ1
/К,
inputs_0                  

 
p

 

 
к ".К+
unknown                  H│
$__inference_rnn_layer_call_fn_272740К-./SвP
IвF
4Ъ1
/К,
inputs_0                  

 
p 

 

 
к ".К+
unknown                  HЩ
$__inference_rnn_layer_call_fn_272751q-./Cв@
9в6
$К!
inputs         d

 
p

 

 
к "%К"
unknown         dHЩ
$__inference_rnn_layer_call_fn_272762q-./Cв@
9в6
$К!
inputs         d

 
p 

 

 
к "%К"
unknown         dH┼
F__inference_sequential_layer_call_and_return_conditional_losses_271827{-./+,>в;
4в1
'К$
	rnn_input         d
p

 
к "0в-
&К#
tensor_0         d
Ъ ┼
F__inference_sequential_layer_call_and_return_conditional_losses_272004{-./+,>в;
4в1
'К$
	rnn_input         d
p 

 
к "0в-
&К#
tensor_0         d
Ъ ┬
F__inference_sequential_layer_call_and_return_conditional_losses_272514x-./+,;в8
1в.
$К!
inputs         d
p

 
к "0в-
&К#
tensor_0         d
Ъ ┬
F__inference_sequential_layer_call_and_return_conditional_losses_272718x-./+,;в8
1в.
$К!
inputs         d
p 

 
к "0в-
&К#
tensor_0         d
Ъ Я
+__inference_sequential_layer_call_fn_272046p-./+,>в;
4в1
'К$
	rnn_input         d
p

 
к "%К"
unknown         dЯ
+__inference_sequential_layer_call_fn_272087p-./+,>в;
4в1
'К$
	rnn_input         d
p 

 
к "%К"
unknown         dЬ
+__inference_sequential_layer_call_fn_272220m-./+,;в8
1в.
$К!
inputs         d
p

 
к "%К"
unknown         dЬ
+__inference_sequential_layer_call_fn_272239m-./+,;в8
1в.
$К!
inputs         d
p 

 
к "%К"
unknown         dо
$__inference_signature_wrapper_272201Е-./+,Cв@
в 
9к6
4
	rnn_input'К$
	rnn_input         d"5к2
0
dense_1%К"
dense_1         d