  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                 #  Line  RIP   Bytes  Opcode                     
.target:                               #        0     0      OPC=<label>                
  vmulpd %xmm2, %xmm1, %xmm4           #  1     0     4      OPC=vmulpd_xmm_xmm_xmm     
  callq .move_128_64_xmm1_xmm8_xmm9    #  2     0x4   5      OPC=callq_label            
  vaddsubpd %xmm8, %xmm4, %xmm3        #  3     0x9   5      OPC=vaddsubpd_xmm_xmm_xmm  
  callq .move_128_64_xmm3_xmm10_xmm11  #  4     0xe   5      OPC=callq_label            
  vpxor %xmm3, %xmm3, %xmm10           #  5     0x13  4      OPC=vpxor_xmm_xmm_xmm      
  callq .move_64_128_xmm10_xmm11_xmm1  #  6     0x17  5      OPC=callq_label            
  retq                                 #  7     0x1c  1      OPC=retq                   
                                                                                        
.size target, .-target
