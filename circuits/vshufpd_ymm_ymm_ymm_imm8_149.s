  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                  #  Line  RIP   Bytes  Opcode                     
.target:                                #        0     0      OPC=<label>                
  callq .move_256_128_ymm3_xmm10_xmm11  #  1     0     5      OPC=callq_label            
  vbroadcastsd %xmm11, %ymm0            #  2     0x5   5      OPC=vbroadcastsd_ymm_xmm   
  vmovapd %ymm3, %ymm9                  #  3     0xa   4      OPC=vmovapd_ymm_ymm        
  vunpckhpd %ymm0, %ymm2, %ymm8         #  4     0xe   4      OPC=vunpckhpd_ymm_ymm_ymm  
  vmaxpd %ymm8, %ymm8, %ymm1            #  5     0x12  5      OPC=vmaxpd_ymm_ymm_ymm     
  callq .move_64_128_xmm8_xmm9_xmm1     #  6     0x17  5      OPC=callq_label            
  retq                                  #  7     0x1c  1      OPC=retq                   
                                                                                         
.size target, .-target
