  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text                     #  Line  RIP  Bytes  Opcode           
.target:                   #        0    0      OPC=<label>      
  callq .read_cf_into_rcx  #  1     0    5      OPC=callq_label  
  sarq %cl, %rcx           #  2     0x5  3      OPC=sarq_r64_cl  
  callq .read_zf_into_rbx  #  3     0x8  5      OPC=callq_label  
  retq                     #  4     0xd  1      OPC=retq         
                                                                 
.size target, .-target
