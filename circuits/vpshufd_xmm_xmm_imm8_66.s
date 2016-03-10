  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                          #  Line  RIP   Bytes  Opcode                     
.target:                                        #        0     0      OPC=<label>                
  callq .move_128_064_xmm2_r8_r9                #  1     0     5      OPC=callq_label            
  callq .move_064_128_r8_r9_xmm1                #  2     0x5   5      OPC=callq_label            
  callq .move_128_032_xmm1_xmm4_xmm5_xmm6_xmm7  #  3     0xa   5      OPC=callq_label            
  unpcklps %xmm4, %xmm6                         #  4     0xf   3      OPC=unpcklps_xmm_xmm       
  callq .move_r9b_to_byte_15_of_ymm1            #  5     0x12  5      OPC=callq_label            
  vunpcklpd %xmm1, %xmm6, %xmm1                 #  6     0x17  4      OPC=vunpcklpd_xmm_xmm_xmm  
  retq                                          #  7     0x1b  1      OPC=retq                   
                                                                                                 
.size target, .-target
