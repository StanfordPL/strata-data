  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                          #  Line  RIP   Bytes  Opcode                       
.target:                                        #        0     0      OPC=<label>                  
  callq .move_128_032_xmm2_xmm4_xmm5_xmm6_xmm7  #  1     0     5      OPC=callq_label              
  callq .move_128_032_xmm1_eax_edx_r8d_r9d      #  2     0x5   5      OPC=callq_label              
  callq .move_byte_9_of_ymm1_to_r9b             #  3     0xa   5      OPC=callq_label              
  vfmadd213pd %xmm1, %xmm4, %xmm4               #  4     0xf   5      OPC=vfmadd213pd_xmm_xmm_xmm  
  callq .move_032_128_xmm4_xmm5_xmm6_xmm7_xmm1  #  5     0x14  5      OPC=callq_label              
  callq .move_r9b_to_byte_9_of_ymm1             #  6     0x19  5      OPC=callq_label              
  callq .move_r8b_to_byte_8_of_ymm1             #  7     0x1e  5      OPC=callq_label              
  retq                                          #  8     0x23  1      OPC=retq                     
                                                                                                   
.size target, .-target
