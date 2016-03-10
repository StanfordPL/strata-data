  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                          #  Line  RIP   Bytes  Opcode                     
.target:                                        #        0     0      OPC=<label>                
  callq .move_128_032_xmm2_xmm4_xmm5_xmm6_xmm7  #  1     0     5      OPC=callq_label            
  callq .move_256_128_ymm2_xmm8_xmm9            #  2     0x5   5      OPC=callq_label            
  vminss %xmm4, %xmm2, %xmm11                   #  3     0xa   4      OPC=vminss_xmm_xmm_xmm     
  vpand %xmm9, %xmm9, %xmm10                    #  4     0xe   5      OPC=vpand_xmm_xmm_xmm      
  vunpckhpd %xmm7, %xmm10, %xmm8                #  5     0x13  4      OPC=vunpckhpd_xmm_xmm_xmm  
  movlhps %xmm8, %xmm11                         #  6     0x17  4      OPC=movlhps_xmm_xmm        
  callq .move_128_256_xmm10_xmm11_ymm1          #  7     0x1b  5      OPC=callq_label            
  retq                                          #  8     0x20  1      OPC=retq                   
                                                                                                 
.size target, .-target
