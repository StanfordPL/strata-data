  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                  #  Line  RIP   Bytes  Opcode                    
.target:                                #        0     0      OPC=<label>               
  callq .move_256_128_ymm2_xmm12_xmm13  #  1     0     5      OPC=callq_label           
  vsqrtss %xmm2, %xmm13, %xmm10         #  2     0x5   4      OPC=vsqrtss_xmm_xmm_xmm   
  vbroadcastsd %xmm12, %ymm1            #  3     0x9   5      OPC=vbroadcastsd_ymm_xmm  
  unpckhpd %xmm10, %xmm2                #  4     0xe   5      OPC=unpckhpd_xmm_xmm      
  callq .move_128_064_xmm2_r8_r9        #  5     0x13  5      OPC=callq_label           
  callq .move_064_128_r8_r9_xmm1        #  6     0x18  5      OPC=callq_label           
  retq                                  #  7     0x1d  1      OPC=retq                  
                                                                                        
.size target, .-target
