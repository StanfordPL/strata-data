  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text                     #  Line  RIP   Bytes  Opcode              
.target:                   #        0     0      OPC=<label>         
  callq .read_cf_into_rbx  #  1     0     5      OPC=callq_label     
  movslq %ebx, %rcx        #  2     0x5   3      OPC=movslq_r64_r32  
  callq .set_cf            #  3     0x8   5      OPC=callq_label     
  callq .read_cf_into_rbx  #  4     0xd   5      OPC=callq_label     
  sarq %cl, %rbx           #  5     0x12  3      OPC=sarq_r64_cl     
  retq                     #  6     0x15  1      OPC=retq            
                                                                     
.size target, .-target
