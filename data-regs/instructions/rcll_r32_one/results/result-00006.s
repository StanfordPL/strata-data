  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    3 bytes

# Text                     #  Line  RIP  Bytes  Opcode               
.target:                   #        0    0      OPC=<label>          
  callq .read_cf_into_rcx  #  1     0    5      OPC=callq_label      
  popcntq %rcx, %rcx       #  2     0x5  5      OPC=popcntq_r64_r64  
  sarq %cl, %rcx           #  3     0xa  3      OPC=sarq_r64_cl      
  adcl %ebx, %ebx          #  4     0xd  2      OPC=adcl_r32_r32     
  retq                     #  5     0xf  1      OPC=retq             
                                                                     
.size target, .-target
