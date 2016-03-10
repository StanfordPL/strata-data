  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                             #  Line  RIP   Bytes  Opcode               
.target:                           #        0     0      OPC=<label>          
  callq .move_128_064_xmm1_r8_r9   #  1     0     5      OPC=callq_label      
  callq .move_032_064_r8d_r9d_rbx  #  2     0x5   5      OPC=callq_label      
  blsrl %ebx, %r10d                #  3     0xa   5      OPC=blsrl_r32_r32    
  cmovnsl %ebx, %ebx               #  4     0xf   3      OPC=cmovnsl_r32_r32  
  retq                             #  5     0x12  1      OPC=retq             
                                                                              
.size target, .-target
