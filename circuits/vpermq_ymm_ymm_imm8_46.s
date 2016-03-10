  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                  #  Line  RIP   Bytes  Opcode                     
.target:                                #        0     0      OPC=<label>                
  vorpd %ymm2, %ymm2, %ymm3             #  1     0     4      OPC=vorpd_ymm_ymm_ymm      
  callq .move_256_128_ymm3_xmm8_xmm9    #  2     0x4   5      OPC=callq_label            
  vmovdqu %xmm9, %xmm10                 #  3     0x9   5      OPC=vmovdqu_xmm_xmm        
  vunpcklpd %xmm8, %xmm9, %xmm11        #  4     0xe   5      OPC=vunpcklpd_xmm_xmm_xmm  
  callq .move_128_256_xmm10_xmm11_ymm1  #  5     0x13  5      OPC=callq_label            
  retq                                  #  6     0x18  1      OPC=retq                   
                                                                                         
.size target, .-target
