  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                  #  Line  RIP   Bytes  Opcode                    
.target:                                #        0     0      OPC=<label>               
  callq .move_256_128_ymm2_xmm10_xmm11  #  1     0     5      OPC=callq_label           
  vmovhlps %xmm11, %xmm10, %xmm12       #  2     0x5   5      OPC=vmovhlps_xmm_xmm_xmm  
  vandps %ymm2, %ymm2, %ymm8            #  3     0xa   4      OPC=vandps_ymm_ymm_ymm    
  vbroadcastsd %xmm8, %ymm14            #  4     0xe   5      OPC=vbroadcastsd_ymm_xmm  
  vmovddup %ymm12, %ymm8                #  5     0x13  5      OPC=vmovddup_ymm_ymm      
  vmovhlps %xmm10, %xmm14, %xmm9        #  6     0x18  5      OPC=vmovhlps_xmm_xmm_xmm  
  callq .move_128_256_xmm8_xmm9_ymm1    #  7     0x1d  5      OPC=callq_label           
  retq                                  #  8     0x22  1      OPC=retq                  
                                                                                        
.size target, .-target
