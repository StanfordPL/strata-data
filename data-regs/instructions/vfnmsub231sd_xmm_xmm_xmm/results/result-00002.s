  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                            #  Line  RIP   Bytes  Opcode                        
.target:                                          #        0     0      OPC=<label>                   
  callq .move_128_032_xmm1_xmm4_xmm5_xmm6_xmm7    #  1     0     5      OPC=callq_label               
  callq .move_128_032_xmm3_xmm8_xmm9_xmm10_xmm11  #  2     0x5   5      OPC=callq_label               
  vfnmsub213ps %xmm8, %xmm11, %xmm9               #  3     0xa   5      OPC=vfnmsub213ps_xmm_xmm_xmm  
  vfmsub231sd %xmm9, %xmm4, %xmm1                 #  4     0xf   5      OPC=vfmsub231sd_xmm_xmm_xmm   
  callq .move_byte_29_of_ymm1_to_r9b              #  5     0x14  5      OPC=callq_label               
  vfnmadd231sd %xmm3, %xmm2, %xmm1                #  6     0x19  5      OPC=vfnmadd231sd_xmm_xmm_xmm  
  callq .move_r9b_to_byte_22_of_ymm1              #  7     0x1e  5      OPC=callq_label               
  retq                                            #  8     0x23  1      OPC=retq                      
                                                                                                      
.size target, .-target
