  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                #  Line  RIP   Bytes  Opcode                       
.target:                              #        0     0      OPC=<label>                  
  rsqrtps %xmm1, %xmm3                #  1     0     3      OPC=rsqrtps_xmm_xmm          
  xorl %ebx, %ebx                     #  2     0x3   2      OPC=xorl_r32_r32             
  callq .move_byte_14_of_ymm1_to_r8b  #  3     0x5   5      OPC=callq_label              
  vfmadd231ss %xmm3, %xmm1, %xmm1     #  4     0xa   5      OPC=vfmadd231ss_xmm_xmm_xmm  
  callq .move_byte_15_of_ymm1_to_r9b  #  5     0xf   5      OPC=callq_label              
  callq .move_008_016_r8b_r9b_bx      #  6     0x14  5      OPC=callq_label              
  retq                                #  7     0x19  1      OPC=retq                     
                                                                                         
.size target, .-target
