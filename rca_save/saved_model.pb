�
��
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
.
Identity

input"T
output"T"	
Ttype
q
MatMul
a"T
b"T
product"T"
transpose_abool( "
transpose_bbool( "
Ttype:

2	
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
9
Softmax
logits"T
softmax"T"
Ttype:
2
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
 �"serve*2.11.02v2.11.0-rc2-17-gd5b57ca93e58ђ
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
�
"RMSprop/velocity/Output-Layer/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*3
shared_name$"RMSprop/velocity/Output-Layer/bias
�
6RMSprop/velocity/Output-Layer/bias/Read/ReadVariableOpReadVariableOp"RMSprop/velocity/Output-Layer/bias*
_output_shapes
:*
dtype0
�
$RMSprop/velocity/Output-Layer/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	�*5
shared_name&$RMSprop/velocity/Output-Layer/kernel
�
8RMSprop/velocity/Output-Layer/kernel/Read/ReadVariableOpReadVariableOp$RMSprop/velocity/Output-Layer/kernel*
_output_shapes
:	�*
dtype0
�
$RMSprop/velocity/Hidden-Layer-2/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*5
shared_name&$RMSprop/velocity/Hidden-Layer-2/bias
�
8RMSprop/velocity/Hidden-Layer-2/bias/Read/ReadVariableOpReadVariableOp$RMSprop/velocity/Hidden-Layer-2/bias*
_output_shapes	
:�*
dtype0
�
&RMSprop/velocity/Hidden-Layer-2/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
��*7
shared_name(&RMSprop/velocity/Hidden-Layer-2/kernel
�
:RMSprop/velocity/Hidden-Layer-2/kernel/Read/ReadVariableOpReadVariableOp&RMSprop/velocity/Hidden-Layer-2/kernel* 
_output_shapes
:
��*
dtype0
�
$RMSprop/velocity/Hidden-Layer-1/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*5
shared_name&$RMSprop/velocity/Hidden-Layer-1/bias
�
8RMSprop/velocity/Hidden-Layer-1/bias/Read/ReadVariableOpReadVariableOp$RMSprop/velocity/Hidden-Layer-1/bias*
_output_shapes	
:�*
dtype0
�
&RMSprop/velocity/Hidden-Layer-1/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	�*7
shared_name(&RMSprop/velocity/Hidden-Layer-1/kernel
�
:RMSprop/velocity/Hidden-Layer-1/kernel/Read/ReadVariableOpReadVariableOp&RMSprop/velocity/Hidden-Layer-1/kernel*
_output_shapes
:	�*
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
z
Output-Layer/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*"
shared_nameOutput-Layer/bias
s
%Output-Layer/bias/Read/ReadVariableOpReadVariableOpOutput-Layer/bias*
_output_shapes
:*
dtype0
�
Output-Layer/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	�*$
shared_nameOutput-Layer/kernel
|
'Output-Layer/kernel/Read/ReadVariableOpReadVariableOpOutput-Layer/kernel*
_output_shapes
:	�*
dtype0

Hidden-Layer-2/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*$
shared_nameHidden-Layer-2/bias
x
'Hidden-Layer-2/bias/Read/ReadVariableOpReadVariableOpHidden-Layer-2/bias*
_output_shapes	
:�*
dtype0
�
Hidden-Layer-2/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
��*&
shared_nameHidden-Layer-2/kernel
�
)Hidden-Layer-2/kernel/Read/ReadVariableOpReadVariableOpHidden-Layer-2/kernel* 
_output_shapes
:
��*
dtype0

Hidden-Layer-1/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*$
shared_nameHidden-Layer-1/bias
x
'Hidden-Layer-1/bias/Read/ReadVariableOpReadVariableOpHidden-Layer-1/bias*
_output_shapes	
:�*
dtype0
�
Hidden-Layer-1/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	�*&
shared_nameHidden-Layer-1/kernel
�
)Hidden-Layer-1/kernel/Read/ReadVariableOpReadVariableOpHidden-Layer-1/kernel*
_output_shapes
:	�*
dtype0
�
$serving_default_Hidden-Layer-1_inputPlaceholder*'
_output_shapes
:���������*
dtype0*
shape:���������
�
StatefulPartitionedCallStatefulPartitionedCall$serving_default_Hidden-Layer-1_inputHidden-Layer-1/kernelHidden-Layer-1/biasHidden-Layer-2/kernelHidden-Layer-2/biasOutput-Layer/kernelOutput-Layer/bias*
Tin
	2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*(
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8� *,
f'R%
#__inference_signature_wrapper_17382

NoOpNoOp
�'
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*�&
value�&B�& B�&
�
layer_with_weights-0
layer-0
layer_with_weights-1
layer-1
layer_with_weights-2
layer-2
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*	&call_and_return_all_conditional_losses

_default_save_signature
	optimizer

signatures*
�
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses

kernel
bias*
�
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses

kernel
bias*
�
	variables
trainable_variables
regularization_losses
 	keras_api
!__call__
*"&call_and_return_all_conditional_losses

#kernel
$bias*
.
0
1
2
3
#4
$5*
.
0
1
2
3
#4
$5*
* 
�
%non_trainable_variables

&layers
'metrics
(layer_regularization_losses
)layer_metrics
	variables
trainable_variables
regularization_losses
__call__

_default_save_signature
*	&call_and_return_all_conditional_losses
&	"call_and_return_conditional_losses*
6
*trace_0
+trace_1
,trace_2
-trace_3* 
6
.trace_0
/trace_1
0trace_2
1trace_3* 
* 
�
2
_variables
3_iterations
4_learning_rate
5_index_dict
6_velocities
7
_momentums
8_average_gradients
9_update_step_xla*

:serving_default* 

0
1*

0
1*
* 
�
;non_trainable_variables

<layers
=metrics
>layer_regularization_losses
?layer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses*

@trace_0* 

Atrace_0* 
e_
VARIABLE_VALUEHidden-Layer-1/kernel6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUE*
a[
VARIABLE_VALUEHidden-Layer-1/bias4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUE*

0
1*

0
1*
* 
�
Bnon_trainable_variables

Clayers
Dmetrics
Elayer_regularization_losses
Flayer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses*

Gtrace_0* 

Htrace_0* 
e_
VARIABLE_VALUEHidden-Layer-2/kernel6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUE*
a[
VARIABLE_VALUEHidden-Layer-2/bias4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUE*

#0
$1*

#0
$1*
* 
�
Inon_trainable_variables

Jlayers
Kmetrics
Llayer_regularization_losses
Mlayer_metrics
	variables
trainable_variables
regularization_losses
!__call__
*"&call_and_return_all_conditional_losses
&""call_and_return_conditional_losses*

Ntrace_0* 

Otrace_0* 
c]
VARIABLE_VALUEOutput-Layer/kernel6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUE*
_Y
VARIABLE_VALUEOutput-Layer/bias4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 

0
1
2*

P0
Q1*
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
5
30
R1
S2
T3
U4
V5
W6*
SM
VARIABLE_VALUE	iteration0optimizer/_iterations/.ATTRIBUTES/VARIABLE_VALUE*
ZT
VARIABLE_VALUElearning_rate3optimizer/_learning_rate/.ATTRIBUTES/VARIABLE_VALUE*
* 
.
R0
S1
T2
U3
V4
W5*
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
8
X	variables
Y	keras_api
	Ztotal
	[count*
H
\	variables
]	keras_api
	^total
	_count
`
_fn_kwargs*
qk
VARIABLE_VALUE&RMSprop/velocity/Hidden-Layer-1/kernel1optimizer/_variables/1/.ATTRIBUTES/VARIABLE_VALUE*
oi
VARIABLE_VALUE$RMSprop/velocity/Hidden-Layer-1/bias1optimizer/_variables/2/.ATTRIBUTES/VARIABLE_VALUE*
qk
VARIABLE_VALUE&RMSprop/velocity/Hidden-Layer-2/kernel1optimizer/_variables/3/.ATTRIBUTES/VARIABLE_VALUE*
oi
VARIABLE_VALUE$RMSprop/velocity/Hidden-Layer-2/bias1optimizer/_variables/4/.ATTRIBUTES/VARIABLE_VALUE*
oi
VARIABLE_VALUE$RMSprop/velocity/Output-Layer/kernel1optimizer/_variables/5/.ATTRIBUTES/VARIABLE_VALUE*
mg
VARIABLE_VALUE"RMSprop/velocity/Output-Layer/bias1optimizer/_variables/6/.ATTRIBUTES/VARIABLE_VALUE*

Z0
[1*

X	variables*
UO
VARIABLE_VALUEtotal_14keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUE*
UO
VARIABLE_VALUEcount_14keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUE*

^0
_1*

\	variables*
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
�
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename)Hidden-Layer-1/kernel/Read/ReadVariableOp'Hidden-Layer-1/bias/Read/ReadVariableOp)Hidden-Layer-2/kernel/Read/ReadVariableOp'Hidden-Layer-2/bias/Read/ReadVariableOp'Output-Layer/kernel/Read/ReadVariableOp%Output-Layer/bias/Read/ReadVariableOpiteration/Read/ReadVariableOp!learning_rate/Read/ReadVariableOp:RMSprop/velocity/Hidden-Layer-1/kernel/Read/ReadVariableOp8RMSprop/velocity/Hidden-Layer-1/bias/Read/ReadVariableOp:RMSprop/velocity/Hidden-Layer-2/kernel/Read/ReadVariableOp8RMSprop/velocity/Hidden-Layer-2/bias/Read/ReadVariableOp8RMSprop/velocity/Output-Layer/kernel/Read/ReadVariableOp6RMSprop/velocity/Output-Layer/bias/Read/ReadVariableOptotal_1/Read/ReadVariableOpcount_1/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOpConst*
Tin
2	*
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
GPU 2J 8� *'
f"R 
__inference__traced_save_17603
�
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenameHidden-Layer-1/kernelHidden-Layer-1/biasHidden-Layer-2/kernelHidden-Layer-2/biasOutput-Layer/kernelOutput-Layer/bias	iterationlearning_rate&RMSprop/velocity/Hidden-Layer-1/kernel$RMSprop/velocity/Hidden-Layer-1/bias&RMSprop/velocity/Hidden-Layer-2/kernel$RMSprop/velocity/Hidden-Layer-2/bias$RMSprop/velocity/Output-Layer/kernel"RMSprop/velocity/Output-Layer/biastotal_1count_1totalcount*
Tin
2*
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
GPU 2J 8� **
f%R#
!__inference__traced_restore_17667��
�
�
G__inference_sequential_7_layer_call_and_return_conditional_losses_17291

inputs'
hidden_layer_1_17275:	�#
hidden_layer_1_17277:	�(
hidden_layer_2_17280:
��#
hidden_layer_2_17282:	�%
output_layer_17285:	� 
output_layer_17287:
identity��&Hidden-Layer-1/StatefulPartitionedCall�&Hidden-Layer-2/StatefulPartitionedCall�$Output-Layer/StatefulPartitionedCall�
&Hidden-Layer-1/StatefulPartitionedCallStatefulPartitionedCallinputshidden_layer_1_17275hidden_layer_1_17277*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *R
fMRK
I__inference_Hidden-Layer-1_layer_call_and_return_conditional_losses_17167�
&Hidden-Layer-2/StatefulPartitionedCallStatefulPartitionedCall/Hidden-Layer-1/StatefulPartitionedCall:output:0hidden_layer_2_17280hidden_layer_2_17282*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *R
fMRK
I__inference_Hidden-Layer-2_layer_call_and_return_conditional_losses_17184�
$Output-Layer/StatefulPartitionedCallStatefulPartitionedCall/Hidden-Layer-2/StatefulPartitionedCall:output:0output_layer_17285output_layer_17287*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *P
fKRI
G__inference_Output-Layer_layer_call_and_return_conditional_losses_17201|
IdentityIdentity-Output-Layer/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp'^Hidden-Layer-1/StatefulPartitionedCall'^Hidden-Layer-2/StatefulPartitionedCall%^Output-Layer/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:���������: : : : : : 2P
&Hidden-Layer-1/StatefulPartitionedCall&Hidden-Layer-1/StatefulPartitionedCall2P
&Hidden-Layer-2/StatefulPartitionedCall&Hidden-Layer-2/StatefulPartitionedCall2L
$Output-Layer/StatefulPartitionedCall$Output-Layer/StatefulPartitionedCall:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs
�P
�
!__inference__traced_restore_17667
file_prefix9
&assignvariableop_hidden_layer_1_kernel:	�5
&assignvariableop_1_hidden_layer_1_bias:	�<
(assignvariableop_2_hidden_layer_2_kernel:
��5
&assignvariableop_3_hidden_layer_2_bias:	�9
&assignvariableop_4_output_layer_kernel:	�2
$assignvariableop_5_output_layer_bias:&
assignvariableop_6_iteration:	 *
 assignvariableop_7_learning_rate: L
9assignvariableop_8_rmsprop_velocity_hidden_layer_1_kernel:	�F
7assignvariableop_9_rmsprop_velocity_hidden_layer_1_bias:	�N
:assignvariableop_10_rmsprop_velocity_hidden_layer_2_kernel:
��G
8assignvariableop_11_rmsprop_velocity_hidden_layer_2_bias:	�K
8assignvariableop_12_rmsprop_velocity_output_layer_kernel:	�D
6assignvariableop_13_rmsprop_velocity_output_layer_bias:%
assignvariableop_14_total_1: %
assignvariableop_15_count_1: #
assignvariableop_16_total: #
assignvariableop_17_count: 
identity_19��AssignVariableOp�AssignVariableOp_1�AssignVariableOp_10�AssignVariableOp_11�AssignVariableOp_12�AssignVariableOp_13�AssignVariableOp_14�AssignVariableOp_15�AssignVariableOp_16�AssignVariableOp_17�AssignVariableOp_2�AssignVariableOp_3�AssignVariableOp_4�AssignVariableOp_5�AssignVariableOp_6�AssignVariableOp_7�AssignVariableOp_8�AssignVariableOp_9�
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*�
value�B�B6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB0optimizer/_iterations/.ATTRIBUTES/VARIABLE_VALUEB3optimizer/_learning_rate/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/1/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/2/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/3/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/4/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/5/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/6/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH�
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*9
value0B.B B B B B B B B B B B B B B B B B B B �
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*`
_output_shapesN
L:::::::::::::::::::*!
dtypes
2	[
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOpAssignVariableOp&assignvariableop_hidden_layer_1_kernelIdentity:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_1AssignVariableOp&assignvariableop_1_hidden_layer_1_biasIdentity_1:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_2AssignVariableOp(assignvariableop_2_hidden_layer_2_kernelIdentity_2:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_3AssignVariableOp&assignvariableop_3_hidden_layer_2_biasIdentity_3:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_4AssignVariableOp&assignvariableop_4_output_layer_kernelIdentity_4:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_5AssignVariableOp$assignvariableop_5_output_layer_biasIdentity_5:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0	*
_output_shapes
:�
AssignVariableOp_6AssignVariableOpassignvariableop_6_iterationIdentity_6:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0	]

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_7AssignVariableOp assignvariableop_7_learning_rateIdentity_7:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_8AssignVariableOp9assignvariableop_8_rmsprop_velocity_hidden_layer_1_kernelIdentity_8:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_9AssignVariableOp7assignvariableop_9_rmsprop_velocity_hidden_layer_1_biasIdentity_9:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_10AssignVariableOp:assignvariableop_10_rmsprop_velocity_hidden_layer_2_kernelIdentity_10:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_11AssignVariableOp8assignvariableop_11_rmsprop_velocity_hidden_layer_2_biasIdentity_11:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_12AssignVariableOp8assignvariableop_12_rmsprop_velocity_output_layer_kernelIdentity_12:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_13AssignVariableOp6assignvariableop_13_rmsprop_velocity_output_layer_biasIdentity_13:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_14AssignVariableOpassignvariableop_14_total_1Identity_14:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_15AssignVariableOpassignvariableop_15_count_1Identity_15:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_16AssignVariableOpassignvariableop_16_totalIdentity_16:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_17AssignVariableOpassignvariableop_17_countIdentity_17:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0Y
NoOpNoOp"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 �
Identity_18Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_2^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: W
Identity_19IdentityIdentity_18:output:0^NoOp_1*
T0*
_output_shapes
: �
NoOp_1NoOp^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_2^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9*"
_acd_function_control_output(*
_output_shapes
 "#
identity_19Identity_19:output:0*9
_input_shapes(
&: : : : : : : : : : : : : : : : : : : 2$
AssignVariableOpAssignVariableOp2(
AssignVariableOp_1AssignVariableOp_12*
AssignVariableOp_10AssignVariableOp_102*
AssignVariableOp_11AssignVariableOp_112*
AssignVariableOp_12AssignVariableOp_122*
AssignVariableOp_13AssignVariableOp_132*
AssignVariableOp_14AssignVariableOp_142*
AssignVariableOp_15AssignVariableOp_152*
AssignVariableOp_16AssignVariableOp_162*
AssignVariableOp_17AssignVariableOp_172(
AssignVariableOp_2AssignVariableOp_22(
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
I__inference_Hidden-Layer-1_layer_call_and_return_conditional_losses_17486

inputs1
matmul_readvariableop_resource:	�.
biasadd_readvariableop_resource:	�
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	�*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0w
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������Q
ReluReluBiasAdd:output:0*
T0*(
_output_shapes
:����������b
IdentityIdentityRelu:activations:0^NoOp*
T0*(
_output_shapes
:����������w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:���������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs
�
�
.__inference_Hidden-Layer-1_layer_call_fn_17475

inputs
unknown:	�
	unknown_0:	�
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *R
fMRK
I__inference_Hidden-Layer-1_layer_call_and_return_conditional_losses_17167p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:����������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:���������: : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs
�
�
G__inference_sequential_7_layer_call_and_return_conditional_losses_17466

inputs@
-hidden_layer_1_matmul_readvariableop_resource:	�=
.hidden_layer_1_biasadd_readvariableop_resource:	�A
-hidden_layer_2_matmul_readvariableop_resource:
��=
.hidden_layer_2_biasadd_readvariableop_resource:	�>
+output_layer_matmul_readvariableop_resource:	�:
,output_layer_biasadd_readvariableop_resource:
identity��%Hidden-Layer-1/BiasAdd/ReadVariableOp�$Hidden-Layer-1/MatMul/ReadVariableOp�%Hidden-Layer-2/BiasAdd/ReadVariableOp�$Hidden-Layer-2/MatMul/ReadVariableOp�#Output-Layer/BiasAdd/ReadVariableOp�"Output-Layer/MatMul/ReadVariableOp�
$Hidden-Layer-1/MatMul/ReadVariableOpReadVariableOp-hidden_layer_1_matmul_readvariableop_resource*
_output_shapes
:	�*
dtype0�
Hidden-Layer-1/MatMulMatMulinputs,Hidden-Layer-1/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
%Hidden-Layer-1/BiasAdd/ReadVariableOpReadVariableOp.hidden_layer_1_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
Hidden-Layer-1/BiasAddBiasAddHidden-Layer-1/MatMul:product:0-Hidden-Layer-1/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������o
Hidden-Layer-1/ReluReluHidden-Layer-1/BiasAdd:output:0*
T0*(
_output_shapes
:�����������
$Hidden-Layer-2/MatMul/ReadVariableOpReadVariableOp-hidden_layer_2_matmul_readvariableop_resource* 
_output_shapes
:
��*
dtype0�
Hidden-Layer-2/MatMulMatMul!Hidden-Layer-1/Relu:activations:0,Hidden-Layer-2/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
%Hidden-Layer-2/BiasAdd/ReadVariableOpReadVariableOp.hidden_layer_2_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
Hidden-Layer-2/BiasAddBiasAddHidden-Layer-2/MatMul:product:0-Hidden-Layer-2/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������o
Hidden-Layer-2/ReluReluHidden-Layer-2/BiasAdd:output:0*
T0*(
_output_shapes
:�����������
"Output-Layer/MatMul/ReadVariableOpReadVariableOp+output_layer_matmul_readvariableop_resource*
_output_shapes
:	�*
dtype0�
Output-Layer/MatMulMatMul!Hidden-Layer-2/Relu:activations:0*Output-Layer/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
#Output-Layer/BiasAdd/ReadVariableOpReadVariableOp,output_layer_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
Output-Layer/BiasAddBiasAddOutput-Layer/MatMul:product:0+Output-Layer/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������p
Output-Layer/SoftmaxSoftmaxOutput-Layer/BiasAdd:output:0*
T0*'
_output_shapes
:���������m
IdentityIdentityOutput-Layer/Softmax:softmax:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp&^Hidden-Layer-1/BiasAdd/ReadVariableOp%^Hidden-Layer-1/MatMul/ReadVariableOp&^Hidden-Layer-2/BiasAdd/ReadVariableOp%^Hidden-Layer-2/MatMul/ReadVariableOp$^Output-Layer/BiasAdd/ReadVariableOp#^Output-Layer/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:���������: : : : : : 2N
%Hidden-Layer-1/BiasAdd/ReadVariableOp%Hidden-Layer-1/BiasAdd/ReadVariableOp2L
$Hidden-Layer-1/MatMul/ReadVariableOp$Hidden-Layer-1/MatMul/ReadVariableOp2N
%Hidden-Layer-2/BiasAdd/ReadVariableOp%Hidden-Layer-2/BiasAdd/ReadVariableOp2L
$Hidden-Layer-2/MatMul/ReadVariableOp$Hidden-Layer-2/MatMul/ReadVariableOp2J
#Output-Layer/BiasAdd/ReadVariableOp#Output-Layer/BiasAdd/ReadVariableOp2H
"Output-Layer/MatMul/ReadVariableOp"Output-Layer/MatMul/ReadVariableOp:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs
�
�
G__inference_sequential_7_layer_call_and_return_conditional_losses_17441

inputs@
-hidden_layer_1_matmul_readvariableop_resource:	�=
.hidden_layer_1_biasadd_readvariableop_resource:	�A
-hidden_layer_2_matmul_readvariableop_resource:
��=
.hidden_layer_2_biasadd_readvariableop_resource:	�>
+output_layer_matmul_readvariableop_resource:	�:
,output_layer_biasadd_readvariableop_resource:
identity��%Hidden-Layer-1/BiasAdd/ReadVariableOp�$Hidden-Layer-1/MatMul/ReadVariableOp�%Hidden-Layer-2/BiasAdd/ReadVariableOp�$Hidden-Layer-2/MatMul/ReadVariableOp�#Output-Layer/BiasAdd/ReadVariableOp�"Output-Layer/MatMul/ReadVariableOp�
$Hidden-Layer-1/MatMul/ReadVariableOpReadVariableOp-hidden_layer_1_matmul_readvariableop_resource*
_output_shapes
:	�*
dtype0�
Hidden-Layer-1/MatMulMatMulinputs,Hidden-Layer-1/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
%Hidden-Layer-1/BiasAdd/ReadVariableOpReadVariableOp.hidden_layer_1_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
Hidden-Layer-1/BiasAddBiasAddHidden-Layer-1/MatMul:product:0-Hidden-Layer-1/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������o
Hidden-Layer-1/ReluReluHidden-Layer-1/BiasAdd:output:0*
T0*(
_output_shapes
:�����������
$Hidden-Layer-2/MatMul/ReadVariableOpReadVariableOp-hidden_layer_2_matmul_readvariableop_resource* 
_output_shapes
:
��*
dtype0�
Hidden-Layer-2/MatMulMatMul!Hidden-Layer-1/Relu:activations:0,Hidden-Layer-2/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
%Hidden-Layer-2/BiasAdd/ReadVariableOpReadVariableOp.hidden_layer_2_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
Hidden-Layer-2/BiasAddBiasAddHidden-Layer-2/MatMul:product:0-Hidden-Layer-2/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������o
Hidden-Layer-2/ReluReluHidden-Layer-2/BiasAdd:output:0*
T0*(
_output_shapes
:�����������
"Output-Layer/MatMul/ReadVariableOpReadVariableOp+output_layer_matmul_readvariableop_resource*
_output_shapes
:	�*
dtype0�
Output-Layer/MatMulMatMul!Hidden-Layer-2/Relu:activations:0*Output-Layer/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
#Output-Layer/BiasAdd/ReadVariableOpReadVariableOp,output_layer_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
Output-Layer/BiasAddBiasAddOutput-Layer/MatMul:product:0+Output-Layer/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������p
Output-Layer/SoftmaxSoftmaxOutput-Layer/BiasAdd:output:0*
T0*'
_output_shapes
:���������m
IdentityIdentityOutput-Layer/Softmax:softmax:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp&^Hidden-Layer-1/BiasAdd/ReadVariableOp%^Hidden-Layer-1/MatMul/ReadVariableOp&^Hidden-Layer-2/BiasAdd/ReadVariableOp%^Hidden-Layer-2/MatMul/ReadVariableOp$^Output-Layer/BiasAdd/ReadVariableOp#^Output-Layer/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:���������: : : : : : 2N
%Hidden-Layer-1/BiasAdd/ReadVariableOp%Hidden-Layer-1/BiasAdd/ReadVariableOp2L
$Hidden-Layer-1/MatMul/ReadVariableOp$Hidden-Layer-1/MatMul/ReadVariableOp2N
%Hidden-Layer-2/BiasAdd/ReadVariableOp%Hidden-Layer-2/BiasAdd/ReadVariableOp2L
$Hidden-Layer-2/MatMul/ReadVariableOp$Hidden-Layer-2/MatMul/ReadVariableOp2J
#Output-Layer/BiasAdd/ReadVariableOp#Output-Layer/BiasAdd/ReadVariableOp2H
"Output-Layer/MatMul/ReadVariableOp"Output-Layer/MatMul/ReadVariableOp:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs
�
�
,__inference_Output-Layer_layer_call_fn_17515

inputs
unknown:	�
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
*-
config_proto

CPU

GPU 2J 8� *P
fKRI
G__inference_Output-Layer_layer_call_and_return_conditional_losses_17201o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:����������: : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
�	
�
,__inference_sequential_7_layer_call_fn_17223
hidden_layer_1_input
unknown:	�
	unknown_0:	�
	unknown_1:
��
	unknown_2:	�
	unknown_3:	�
	unknown_4:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallhidden_layer_1_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4*
Tin
	2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*(
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8� *P
fKRI
G__inference_sequential_7_layer_call_and_return_conditional_losses_17208o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:���������: : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:] Y
'
_output_shapes
:���������
.
_user_specified_nameHidden-Layer-1_input
�	
�
,__inference_sequential_7_layer_call_fn_17323
hidden_layer_1_input
unknown:	�
	unknown_0:	�
	unknown_1:
��
	unknown_2:	�
	unknown_3:	�
	unknown_4:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallhidden_layer_1_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4*
Tin
	2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*(
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8� *P
fKRI
G__inference_sequential_7_layer_call_and_return_conditional_losses_17291o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:���������: : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:] Y
'
_output_shapes
:���������
.
_user_specified_nameHidden-Layer-1_input
�
�
,__inference_sequential_7_layer_call_fn_17399

inputs
unknown:	�
	unknown_0:	�
	unknown_1:
��
	unknown_2:	�
	unknown_3:	�
	unknown_4:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4*
Tin
	2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*(
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8� *P
fKRI
G__inference_sequential_7_layer_call_and_return_conditional_losses_17208o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:���������: : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs
�

�
I__inference_Hidden-Layer-1_layer_call_and_return_conditional_losses_17167

inputs1
matmul_readvariableop_resource:	�.
biasadd_readvariableop_resource:	�
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	�*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0w
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������Q
ReluReluBiasAdd:output:0*
T0*(
_output_shapes
:����������b
IdentityIdentityRelu:activations:0^NoOp*
T0*(
_output_shapes
:����������w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:���������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs
�
�
G__inference_sequential_7_layer_call_and_return_conditional_losses_17361
hidden_layer_1_input'
hidden_layer_1_17345:	�#
hidden_layer_1_17347:	�(
hidden_layer_2_17350:
��#
hidden_layer_2_17352:	�%
output_layer_17355:	� 
output_layer_17357:
identity��&Hidden-Layer-1/StatefulPartitionedCall�&Hidden-Layer-2/StatefulPartitionedCall�$Output-Layer/StatefulPartitionedCall�
&Hidden-Layer-1/StatefulPartitionedCallStatefulPartitionedCallhidden_layer_1_inputhidden_layer_1_17345hidden_layer_1_17347*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *R
fMRK
I__inference_Hidden-Layer-1_layer_call_and_return_conditional_losses_17167�
&Hidden-Layer-2/StatefulPartitionedCallStatefulPartitionedCall/Hidden-Layer-1/StatefulPartitionedCall:output:0hidden_layer_2_17350hidden_layer_2_17352*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *R
fMRK
I__inference_Hidden-Layer-2_layer_call_and_return_conditional_losses_17184�
$Output-Layer/StatefulPartitionedCallStatefulPartitionedCall/Hidden-Layer-2/StatefulPartitionedCall:output:0output_layer_17355output_layer_17357*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *P
fKRI
G__inference_Output-Layer_layer_call_and_return_conditional_losses_17201|
IdentityIdentity-Output-Layer/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp'^Hidden-Layer-1/StatefulPartitionedCall'^Hidden-Layer-2/StatefulPartitionedCall%^Output-Layer/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:���������: : : : : : 2P
&Hidden-Layer-1/StatefulPartitionedCall&Hidden-Layer-1/StatefulPartitionedCall2P
&Hidden-Layer-2/StatefulPartitionedCall&Hidden-Layer-2/StatefulPartitionedCall2L
$Output-Layer/StatefulPartitionedCall$Output-Layer/StatefulPartitionedCall:] Y
'
_output_shapes
:���������
.
_user_specified_nameHidden-Layer-1_input
�%
�
 __inference__wrapped_model_17149
hidden_layer_1_inputM
:sequential_7_hidden_layer_1_matmul_readvariableop_resource:	�J
;sequential_7_hidden_layer_1_biasadd_readvariableop_resource:	�N
:sequential_7_hidden_layer_2_matmul_readvariableop_resource:
��J
;sequential_7_hidden_layer_2_biasadd_readvariableop_resource:	�K
8sequential_7_output_layer_matmul_readvariableop_resource:	�G
9sequential_7_output_layer_biasadd_readvariableop_resource:
identity��2sequential_7/Hidden-Layer-1/BiasAdd/ReadVariableOp�1sequential_7/Hidden-Layer-1/MatMul/ReadVariableOp�2sequential_7/Hidden-Layer-2/BiasAdd/ReadVariableOp�1sequential_7/Hidden-Layer-2/MatMul/ReadVariableOp�0sequential_7/Output-Layer/BiasAdd/ReadVariableOp�/sequential_7/Output-Layer/MatMul/ReadVariableOp�
1sequential_7/Hidden-Layer-1/MatMul/ReadVariableOpReadVariableOp:sequential_7_hidden_layer_1_matmul_readvariableop_resource*
_output_shapes
:	�*
dtype0�
"sequential_7/Hidden-Layer-1/MatMulMatMulhidden_layer_1_input9sequential_7/Hidden-Layer-1/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
2sequential_7/Hidden-Layer-1/BiasAdd/ReadVariableOpReadVariableOp;sequential_7_hidden_layer_1_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
#sequential_7/Hidden-Layer-1/BiasAddBiasAdd,sequential_7/Hidden-Layer-1/MatMul:product:0:sequential_7/Hidden-Layer-1/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
 sequential_7/Hidden-Layer-1/ReluRelu,sequential_7/Hidden-Layer-1/BiasAdd:output:0*
T0*(
_output_shapes
:�����������
1sequential_7/Hidden-Layer-2/MatMul/ReadVariableOpReadVariableOp:sequential_7_hidden_layer_2_matmul_readvariableop_resource* 
_output_shapes
:
��*
dtype0�
"sequential_7/Hidden-Layer-2/MatMulMatMul.sequential_7/Hidden-Layer-1/Relu:activations:09sequential_7/Hidden-Layer-2/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
2sequential_7/Hidden-Layer-2/BiasAdd/ReadVariableOpReadVariableOp;sequential_7_hidden_layer_2_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
#sequential_7/Hidden-Layer-2/BiasAddBiasAdd,sequential_7/Hidden-Layer-2/MatMul:product:0:sequential_7/Hidden-Layer-2/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
 sequential_7/Hidden-Layer-2/ReluRelu,sequential_7/Hidden-Layer-2/BiasAdd:output:0*
T0*(
_output_shapes
:�����������
/sequential_7/Output-Layer/MatMul/ReadVariableOpReadVariableOp8sequential_7_output_layer_matmul_readvariableop_resource*
_output_shapes
:	�*
dtype0�
 sequential_7/Output-Layer/MatMulMatMul.sequential_7/Hidden-Layer-2/Relu:activations:07sequential_7/Output-Layer/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
0sequential_7/Output-Layer/BiasAdd/ReadVariableOpReadVariableOp9sequential_7_output_layer_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
!sequential_7/Output-Layer/BiasAddBiasAdd*sequential_7/Output-Layer/MatMul:product:08sequential_7/Output-Layer/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
!sequential_7/Output-Layer/SoftmaxSoftmax*sequential_7/Output-Layer/BiasAdd:output:0*
T0*'
_output_shapes
:���������z
IdentityIdentity+sequential_7/Output-Layer/Softmax:softmax:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp3^sequential_7/Hidden-Layer-1/BiasAdd/ReadVariableOp2^sequential_7/Hidden-Layer-1/MatMul/ReadVariableOp3^sequential_7/Hidden-Layer-2/BiasAdd/ReadVariableOp2^sequential_7/Hidden-Layer-2/MatMul/ReadVariableOp1^sequential_7/Output-Layer/BiasAdd/ReadVariableOp0^sequential_7/Output-Layer/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:���������: : : : : : 2h
2sequential_7/Hidden-Layer-1/BiasAdd/ReadVariableOp2sequential_7/Hidden-Layer-1/BiasAdd/ReadVariableOp2f
1sequential_7/Hidden-Layer-1/MatMul/ReadVariableOp1sequential_7/Hidden-Layer-1/MatMul/ReadVariableOp2h
2sequential_7/Hidden-Layer-2/BiasAdd/ReadVariableOp2sequential_7/Hidden-Layer-2/BiasAdd/ReadVariableOp2f
1sequential_7/Hidden-Layer-2/MatMul/ReadVariableOp1sequential_7/Hidden-Layer-2/MatMul/ReadVariableOp2d
0sequential_7/Output-Layer/BiasAdd/ReadVariableOp0sequential_7/Output-Layer/BiasAdd/ReadVariableOp2b
/sequential_7/Output-Layer/MatMul/ReadVariableOp/sequential_7/Output-Layer/MatMul/ReadVariableOp:] Y
'
_output_shapes
:���������
.
_user_specified_nameHidden-Layer-1_input
�
�
.__inference_Hidden-Layer-2_layer_call_fn_17495

inputs
unknown:
��
	unknown_0:	�
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *R
fMRK
I__inference_Hidden-Layer-2_layer_call_and_return_conditional_losses_17184p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:����������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:����������: : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
�
�
#__inference_signature_wrapper_17382
hidden_layer_1_input
unknown:	�
	unknown_0:	�
	unknown_1:
��
	unknown_2:	�
	unknown_3:	�
	unknown_4:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallhidden_layer_1_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4*
Tin
	2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*(
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8� *)
f$R"
 __inference__wrapped_model_17149o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:���������: : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:] Y
'
_output_shapes
:���������
.
_user_specified_nameHidden-Layer-1_input
�
�
,__inference_sequential_7_layer_call_fn_17416

inputs
unknown:	�
	unknown_0:	�
	unknown_1:
��
	unknown_2:	�
	unknown_3:	�
	unknown_4:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4*
Tin
	2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*(
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8� *P
fKRI
G__inference_sequential_7_layer_call_and_return_conditional_losses_17291o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:���������: : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs
�

�
I__inference_Hidden-Layer-2_layer_call_and_return_conditional_losses_17506

inputs2
matmul_readvariableop_resource:
��.
biasadd_readvariableop_resource:	�
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOpv
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
��*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0w
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������Q
ReluReluBiasAdd:output:0*
T0*(
_output_shapes
:����������b
IdentityIdentityRelu:activations:0^NoOp*
T0*(
_output_shapes
:����������w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:����������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
�

�
G__inference_Output-Layer_layer_call_and_return_conditional_losses_17526

inputs1
matmul_readvariableop_resource:	�-
biasadd_readvariableop_resource:
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	�*
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
:���������V
SoftmaxSoftmaxBiasAdd:output:0*
T0*'
_output_shapes
:���������`
IdentityIdentitySoftmax:softmax:0^NoOp*
T0*'
_output_shapes
:���������w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:����������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
�
�
G__inference_sequential_7_layer_call_and_return_conditional_losses_17208

inputs'
hidden_layer_1_17168:	�#
hidden_layer_1_17170:	�(
hidden_layer_2_17185:
��#
hidden_layer_2_17187:	�%
output_layer_17202:	� 
output_layer_17204:
identity��&Hidden-Layer-1/StatefulPartitionedCall�&Hidden-Layer-2/StatefulPartitionedCall�$Output-Layer/StatefulPartitionedCall�
&Hidden-Layer-1/StatefulPartitionedCallStatefulPartitionedCallinputshidden_layer_1_17168hidden_layer_1_17170*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *R
fMRK
I__inference_Hidden-Layer-1_layer_call_and_return_conditional_losses_17167�
&Hidden-Layer-2/StatefulPartitionedCallStatefulPartitionedCall/Hidden-Layer-1/StatefulPartitionedCall:output:0hidden_layer_2_17185hidden_layer_2_17187*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *R
fMRK
I__inference_Hidden-Layer-2_layer_call_and_return_conditional_losses_17184�
$Output-Layer/StatefulPartitionedCallStatefulPartitionedCall/Hidden-Layer-2/StatefulPartitionedCall:output:0output_layer_17202output_layer_17204*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *P
fKRI
G__inference_Output-Layer_layer_call_and_return_conditional_losses_17201|
IdentityIdentity-Output-Layer/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp'^Hidden-Layer-1/StatefulPartitionedCall'^Hidden-Layer-2/StatefulPartitionedCall%^Output-Layer/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:���������: : : : : : 2P
&Hidden-Layer-1/StatefulPartitionedCall&Hidden-Layer-1/StatefulPartitionedCall2P
&Hidden-Layer-2/StatefulPartitionedCall&Hidden-Layer-2/StatefulPartitionedCall2L
$Output-Layer/StatefulPartitionedCall$Output-Layer/StatefulPartitionedCall:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs
�

�
G__inference_Output-Layer_layer_call_and_return_conditional_losses_17201

inputs1
matmul_readvariableop_resource:	�-
biasadd_readvariableop_resource:
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	�*
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
:���������V
SoftmaxSoftmaxBiasAdd:output:0*
T0*'
_output_shapes
:���������`
IdentityIdentitySoftmax:softmax:0^NoOp*
T0*'
_output_shapes
:���������w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:����������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
�

�
I__inference_Hidden-Layer-2_layer_call_and_return_conditional_losses_17184

inputs2
matmul_readvariableop_resource:
��.
biasadd_readvariableop_resource:	�
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOpv
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
��*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0w
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������Q
ReluReluBiasAdd:output:0*
T0*(
_output_shapes
:����������b
IdentityIdentityRelu:activations:0^NoOp*
T0*(
_output_shapes
:����������w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:����������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
�
�
G__inference_sequential_7_layer_call_and_return_conditional_losses_17342
hidden_layer_1_input'
hidden_layer_1_17326:	�#
hidden_layer_1_17328:	�(
hidden_layer_2_17331:
��#
hidden_layer_2_17333:	�%
output_layer_17336:	� 
output_layer_17338:
identity��&Hidden-Layer-1/StatefulPartitionedCall�&Hidden-Layer-2/StatefulPartitionedCall�$Output-Layer/StatefulPartitionedCall�
&Hidden-Layer-1/StatefulPartitionedCallStatefulPartitionedCallhidden_layer_1_inputhidden_layer_1_17326hidden_layer_1_17328*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *R
fMRK
I__inference_Hidden-Layer-1_layer_call_and_return_conditional_losses_17167�
&Hidden-Layer-2/StatefulPartitionedCallStatefulPartitionedCall/Hidden-Layer-1/StatefulPartitionedCall:output:0hidden_layer_2_17331hidden_layer_2_17333*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *R
fMRK
I__inference_Hidden-Layer-2_layer_call_and_return_conditional_losses_17184�
$Output-Layer/StatefulPartitionedCallStatefulPartitionedCall/Hidden-Layer-2/StatefulPartitionedCall:output:0output_layer_17336output_layer_17338*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *P
fKRI
G__inference_Output-Layer_layer_call_and_return_conditional_losses_17201|
IdentityIdentity-Output-Layer/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp'^Hidden-Layer-1/StatefulPartitionedCall'^Hidden-Layer-2/StatefulPartitionedCall%^Output-Layer/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:���������: : : : : : 2P
&Hidden-Layer-1/StatefulPartitionedCall&Hidden-Layer-1/StatefulPartitionedCall2P
&Hidden-Layer-2/StatefulPartitionedCall&Hidden-Layer-2/StatefulPartitionedCall2L
$Output-Layer/StatefulPartitionedCall$Output-Layer/StatefulPartitionedCall:] Y
'
_output_shapes
:���������
.
_user_specified_nameHidden-Layer-1_input
�.
�
__inference__traced_save_17603
file_prefix4
0savev2_hidden_layer_1_kernel_read_readvariableop2
.savev2_hidden_layer_1_bias_read_readvariableop4
0savev2_hidden_layer_2_kernel_read_readvariableop2
.savev2_hidden_layer_2_bias_read_readvariableop2
.savev2_output_layer_kernel_read_readvariableop0
,savev2_output_layer_bias_read_readvariableop(
$savev2_iteration_read_readvariableop	,
(savev2_learning_rate_read_readvariableopE
Asavev2_rmsprop_velocity_hidden_layer_1_kernel_read_readvariableopC
?savev2_rmsprop_velocity_hidden_layer_1_bias_read_readvariableopE
Asavev2_rmsprop_velocity_hidden_layer_2_kernel_read_readvariableopC
?savev2_rmsprop_velocity_hidden_layer_2_bias_read_readvariableopC
?savev2_rmsprop_velocity_output_layer_kernel_read_readvariableopA
=savev2_rmsprop_velocity_output_layer_bias_read_readvariableop&
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
: �
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*�
value�B�B6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB0optimizer/_iterations/.ATTRIBUTES/VARIABLE_VALUEB3optimizer/_learning_rate/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/1/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/2/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/3/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/4/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/5/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/6/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH�
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*9
value0B.B B B B B B B B B B B B B B B B B B B �
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:00savev2_hidden_layer_1_kernel_read_readvariableop.savev2_hidden_layer_1_bias_read_readvariableop0savev2_hidden_layer_2_kernel_read_readvariableop.savev2_hidden_layer_2_bias_read_readvariableop.savev2_output_layer_kernel_read_readvariableop,savev2_output_layer_bias_read_readvariableop$savev2_iteration_read_readvariableop(savev2_learning_rate_read_readvariableopAsavev2_rmsprop_velocity_hidden_layer_1_kernel_read_readvariableop?savev2_rmsprop_velocity_hidden_layer_1_bias_read_readvariableopAsavev2_rmsprop_velocity_hidden_layer_2_kernel_read_readvariableop?savev2_rmsprop_velocity_hidden_layer_2_bias_read_readvariableop?savev2_rmsprop_velocity_output_layer_kernel_read_readvariableop=savev2_rmsprop_velocity_output_layer_bias_read_readvariableop"savev2_total_1_read_readvariableop"savev2_count_1_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableopsavev2_const"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *!
dtypes
2	�
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:�
MergeV2CheckpointsMergeV2Checkpoints/MergeV2Checkpoints/checkpoint_prefixes:output:0file_prefix"/device:CPU:0*&
 _has_manual_control_dependencies(*
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
_input_shapes~
|: :	�:�:
��:�:	�:: : :	�:�:
��:�:	�:: : : : : 2(
MergeV2CheckpointsMergeV2Checkpoints:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:%!

_output_shapes
:	�:!

_output_shapes	
:�:&"
 
_output_shapes
:
��:!

_output_shapes	
:�:%!

_output_shapes
:	�: 

_output_shapes
::

_output_shapes
: :

_output_shapes
: :%	!

_output_shapes
:	�:!


_output_shapes	
:�:&"
 
_output_shapes
:
��:!

_output_shapes	
:�:%!

_output_shapes
:	�: 

_output_shapes
::

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: "�
L
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*�
serving_default�
U
Hidden-Layer-1_input=
&serving_default_Hidden-Layer-1_input:0���������@
Output-Layer0
StatefulPartitionedCall:0���������tensorflow/serving/predict:�r
�
layer_with_weights-0
layer-0
layer_with_weights-1
layer-1
layer_with_weights-2
layer-2
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*	&call_and_return_all_conditional_losses

_default_save_signature
	optimizer

signatures"
_tf_keras_sequential
�
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses

kernel
bias"
_tf_keras_layer
�
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses

kernel
bias"
_tf_keras_layer
�
	variables
trainable_variables
regularization_losses
 	keras_api
!__call__
*"&call_and_return_all_conditional_losses

#kernel
$bias"
_tf_keras_layer
J
0
1
2
3
#4
$5"
trackable_list_wrapper
J
0
1
2
3
#4
$5"
trackable_list_wrapper
 "
trackable_list_wrapper
�
%non_trainable_variables

&layers
'metrics
(layer_regularization_losses
)layer_metrics
	variables
trainable_variables
regularization_losses
__call__

_default_save_signature
*	&call_and_return_all_conditional_losses
&	"call_and_return_conditional_losses"
_generic_user_object
�
*trace_0
+trace_1
,trace_2
-trace_32�
,__inference_sequential_7_layer_call_fn_17223
,__inference_sequential_7_layer_call_fn_17399
,__inference_sequential_7_layer_call_fn_17416
,__inference_sequential_7_layer_call_fn_17323�
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
 z*trace_0z+trace_1z,trace_2z-trace_3
�
.trace_0
/trace_1
0trace_2
1trace_32�
G__inference_sequential_7_layer_call_and_return_conditional_losses_17441
G__inference_sequential_7_layer_call_and_return_conditional_losses_17466
G__inference_sequential_7_layer_call_and_return_conditional_losses_17342
G__inference_sequential_7_layer_call_and_return_conditional_losses_17361�
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
 z.trace_0z/trace_1z0trace_2z1trace_3
�B�
 __inference__wrapped_model_17149Hidden-Layer-1_input"�
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
�
2
_variables
3_iterations
4_learning_rate
5_index_dict
6_velocities
7
_momentums
8_average_gradients
9_update_step_xla"
experimentalOptimizer
,
:serving_default"
signature_map
.
0
1"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
;non_trainable_variables

<layers
=metrics
>layer_regularization_losses
?layer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
�
@trace_02�
.__inference_Hidden-Layer-1_layer_call_fn_17475�
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
 z@trace_0
�
Atrace_02�
I__inference_Hidden-Layer-1_layer_call_and_return_conditional_losses_17486�
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
 zAtrace_0
(:&	�2Hidden-Layer-1/kernel
": �2Hidden-Layer-1/bias
.
0
1"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
Bnon_trainable_variables

Clayers
Dmetrics
Elayer_regularization_losses
Flayer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
�
Gtrace_02�
.__inference_Hidden-Layer-2_layer_call_fn_17495�
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
 zGtrace_0
�
Htrace_02�
I__inference_Hidden-Layer-2_layer_call_and_return_conditional_losses_17506�
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
 zHtrace_0
):'
��2Hidden-Layer-2/kernel
": �2Hidden-Layer-2/bias
.
#0
$1"
trackable_list_wrapper
.
#0
$1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
Inon_trainable_variables

Jlayers
Kmetrics
Llayer_regularization_losses
Mlayer_metrics
	variables
trainable_variables
regularization_losses
!__call__
*"&call_and_return_all_conditional_losses
&""call_and_return_conditional_losses"
_generic_user_object
�
Ntrace_02�
,__inference_Output-Layer_layer_call_fn_17515�
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
 zNtrace_0
�
Otrace_02�
G__inference_Output-Layer_layer_call_and_return_conditional_losses_17526�
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
 zOtrace_0
&:$	�2Output-Layer/kernel
:2Output-Layer/bias
 "
trackable_list_wrapper
5
0
1
2"
trackable_list_wrapper
.
P0
Q1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
�B�
,__inference_sequential_7_layer_call_fn_17223Hidden-Layer-1_input"�
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
,__inference_sequential_7_layer_call_fn_17399inputs"�
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
,__inference_sequential_7_layer_call_fn_17416inputs"�
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
,__inference_sequential_7_layer_call_fn_17323Hidden-Layer-1_input"�
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
G__inference_sequential_7_layer_call_and_return_conditional_losses_17441inputs"�
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
G__inference_sequential_7_layer_call_and_return_conditional_losses_17466inputs"�
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
G__inference_sequential_7_layer_call_and_return_conditional_losses_17342Hidden-Layer-1_input"�
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
G__inference_sequential_7_layer_call_and_return_conditional_losses_17361Hidden-Layer-1_input"�
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
Q
30
R1
S2
T3
U4
V5
W6"
trackable_list_wrapper
:	 2	iteration
: 2learning_rate
 "
trackable_dict_wrapper
J
R0
S1
T2
U3
V4
W5"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
�2��
���
FullArgSpec2
args*�'
jself

jgradient

jvariable
jkey
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
�B�
#__inference_signature_wrapper_17382Hidden-Layer-1_input"�
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
.__inference_Hidden-Layer-1_layer_call_fn_17475inputs"�
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
I__inference_Hidden-Layer-1_layer_call_and_return_conditional_losses_17486inputs"�
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
.__inference_Hidden-Layer-2_layer_call_fn_17495inputs"�
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
I__inference_Hidden-Layer-2_layer_call_and_return_conditional_losses_17506inputs"�
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
,__inference_Output-Layer_layer_call_fn_17515inputs"�
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
G__inference_Output-Layer_layer_call_and_return_conditional_losses_17526inputs"�
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
N
X	variables
Y	keras_api
	Ztotal
	[count"
_tf_keras_metric
^
\	variables
]	keras_api
	^total
	_count
`
_fn_kwargs"
_tf_keras_metric
7:5	�2&RMSprop/velocity/Hidden-Layer-1/kernel
1:/�2$RMSprop/velocity/Hidden-Layer-1/bias
8:6
��2&RMSprop/velocity/Hidden-Layer-2/kernel
1:/�2$RMSprop/velocity/Hidden-Layer-2/bias
5:3	�2$RMSprop/velocity/Output-Layer/kernel
.:,2"RMSprop/velocity/Output-Layer/bias
.
Z0
[1"
trackable_list_wrapper
-
X	variables"
_generic_user_object
:  (2total
:  (2count
.
^0
_1"
trackable_list_wrapper
-
\	variables"
_generic_user_object
:  (2total
:  (2count
 "
trackable_dict_wrapper�
I__inference_Hidden-Layer-1_layer_call_and_return_conditional_losses_17486d/�,
%�"
 �
inputs���������
� "-�*
#� 
tensor_0����������
� �
.__inference_Hidden-Layer-1_layer_call_fn_17475Y/�,
%�"
 �
inputs���������
� ""�
unknown�����������
I__inference_Hidden-Layer-2_layer_call_and_return_conditional_losses_17506e0�-
&�#
!�
inputs����������
� "-�*
#� 
tensor_0����������
� �
.__inference_Hidden-Layer-2_layer_call_fn_17495Z0�-
&�#
!�
inputs����������
� ""�
unknown�����������
G__inference_Output-Layer_layer_call_and_return_conditional_losses_17526d#$0�-
&�#
!�
inputs����������
� ",�)
"�
tensor_0���������
� �
,__inference_Output-Layer_layer_call_fn_17515Y#$0�-
&�#
!�
inputs����������
� "!�
unknown����������
 __inference__wrapped_model_17149�#$=�:
3�0
.�+
Hidden-Layer-1_input���������
� ";�8
6
Output-Layer&�#
output_layer����������
G__inference_sequential_7_layer_call_and_return_conditional_losses_17342}#$E�B
;�8
.�+
Hidden-Layer-1_input���������
p 

 
� ",�)
"�
tensor_0���������
� �
G__inference_sequential_7_layer_call_and_return_conditional_losses_17361}#$E�B
;�8
.�+
Hidden-Layer-1_input���������
p

 
� ",�)
"�
tensor_0���������
� �
G__inference_sequential_7_layer_call_and_return_conditional_losses_17441o#$7�4
-�*
 �
inputs���������
p 

 
� ",�)
"�
tensor_0���������
� �
G__inference_sequential_7_layer_call_and_return_conditional_losses_17466o#$7�4
-�*
 �
inputs���������
p

 
� ",�)
"�
tensor_0���������
� �
,__inference_sequential_7_layer_call_fn_17223r#$E�B
;�8
.�+
Hidden-Layer-1_input���������
p 

 
� "!�
unknown����������
,__inference_sequential_7_layer_call_fn_17323r#$E�B
;�8
.�+
Hidden-Layer-1_input���������
p

 
� "!�
unknown����������
,__inference_sequential_7_layer_call_fn_17399d#$7�4
-�*
 �
inputs���������
p 

 
� "!�
unknown����������
,__inference_sequential_7_layer_call_fn_17416d#$7�4
-�*
 �
inputs���������
p

 
� "!�
unknown����������
#__inference_signature_wrapper_17382�#$U�R
� 
K�H
F
Hidden-Layer-1_input.�+
hidden_layer_1_input���������";�8
6
Output-Layer&�#
output_layer���������