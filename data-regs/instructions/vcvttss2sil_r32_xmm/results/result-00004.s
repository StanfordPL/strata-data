  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                               #  Line  RIP   Bytes  Opcode                  
.target:                             #        0     0      OPC=<label>             
  callq .move_byte_6_of_ymm1_to_r8b  #  1     0     5      OPC=callq_label         
  callq .move_r8b_to_byte_9_of_ymm1  #  2     0x5   5      OPC=callq_label         
  movups %xmm1, %xmm6                #  3     0xa   3      OPC=movups_xmm_xmm      
  cvttss2sil %xmm6, %ebx             #  4     0xd   4      OPC=cvttss2sil_r32_xmm  
  retq                               #  5     0x11  1      OPC=retq                
                                                                                   
.size target, .-target
