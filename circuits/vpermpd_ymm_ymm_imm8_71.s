  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                  #  Line  RIP   Bytes  Opcode                     
.target:                                #        0     0      OPC=<label>                
  callq .move_128_64_xmm2_xmm10_xmm11   #  1     0     5      OPC=callq_label            
  callq .move_64_128_xmm10_xmm11_xmm1   #  2     0x5   5      OPC=callq_label            
  vbroadcastsd %xmm1, %ymm12            #  3     0xa   5      OPC=vbroadcastsd_ymm_xmm   
  callq .move_256_128_ymm2_xmm8_xmm9    #  4     0xf   5      OPC=callq_label            
  callq .move_128_256_xmm10_xmm11_ymm3  #  5     0x14  5      OPC=callq_label            
  vunpcklpd %ymm3, %ymm12, %ymm1        #  6     0x19  4      OPC=vunpcklpd_ymm_ymm_ymm  
  callq .move_64_128_xmm10_xmm11_xmm1   #  7     0x1d  5      OPC=callq_label            
  movhlps %xmm9, %xmm1                  #  8     0x22  4      OPC=movhlps_xmm_xmm        
  retq                                  #  9     0x26  1      OPC=retq                   
                                                                                         
.size target, .-target
