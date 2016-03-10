  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                            #  Line  RIP   Bytes  Opcode                       
.target:                                          #        0     0      OPC=<label>                  
  callq .move_128_032_xmm2_xmm8_xmm9_xmm10_xmm11  #  1     0     5      OPC=callq_label              
  vmovapd %xmm8, %xmm1                            #  2     0x5   5      OPC=vmovapd_xmm_xmm          
  callq .move_byte_22_of_ymm1_to_r9b              #  3     0xa   5      OPC=callq_label              
  vmovdqu %xmm8, %xmm9                            #  4     0xf   5      OPC=vmovdqu_xmm_xmm          
  callq .move_r9b_to_byte_28_of_ymm1              #  5     0x14  5      OPC=callq_label              
  callq .move_032_128_xmm8_xmm9_xmm10_xmm11_xmm1  #  6     0x19  5      OPC=callq_label              
  vfmadd132pd %ymm1, %ymm1, %ymm9                 #  7     0x1e  5      OPC=vfmadd132pd_ymm_ymm_ymm  
  vpunpcklqdq %xmm1, %xmm9, %xmm1                 #  8     0x23  4      OPC=vpunpcklqdq_xmm_xmm_xmm  
  retq                                            #  9     0x27  1      OPC=retq                     
                                                                                                     
.size target, .-target
