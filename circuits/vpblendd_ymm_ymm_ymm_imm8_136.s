  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                  #  Line  RIP   Bytes  Opcode                      
.target:                                #        0     0      OPC=<label>                 
  vmovsldup %ymm2, %ymm1                #  1     0     4      OPC=vmovsldup_ymm_ymm       
  callq .move_256_128_ymm1_xmm12_xmm13  #  2     0x4   5      OPC=callq_label             
  callq .move_128_256_xmm12_xmm13_ymm1  #  3     0x9   5      OPC=callq_label             
  vpunpckhdq %ymm3, %ymm1, %ymm10       #  4     0xe   4      OPC=vpunpckhdq_ymm_ymm_ymm  
  vunpcklps %ymm2, %ymm1, %ymm8         #  5     0x12  4      OPC=vunpcklps_ymm_ymm_ymm   
  vunpckhpd %ymm10, %ymm8, %ymm1        #  6     0x16  5      OPC=vunpckhpd_ymm_ymm_ymm   
  retq                                  #  7     0x1b  1      OPC=retq                    
                                                                                          
.size target, .-target
