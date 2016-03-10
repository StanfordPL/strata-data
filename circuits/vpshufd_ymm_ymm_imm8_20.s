  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                             #  Line  RIP   Bytes  Opcode                      
.target:                           #        0     0      OPC=<label>                 
  vmovddup %ymm2, %ymm8            #  1     0     4      OPC=vmovddup_ymm_ymm        
  vpunpckldq %ymm8, %ymm2, %ymm12  #  2     0x4   5      OPC=vpunpckldq_ymm_ymm_ymm  
  vunpcklps %ymm12, %ymm2, %ymm9   #  3     0x9   5      OPC=vunpcklps_ymm_ymm_ymm   
  vmovups %ymm8, %ymm10            #  4     0xe   5      OPC=vmovups_ymm_ymm         
  vunpckhpd %ymm9, %ymm10, %ymm1   #  5     0x13  5      OPC=vunpckhpd_ymm_ymm_ymm   
  retq                             #  6     0x18  1      OPC=retq                    
                                                                                     
.size target, .-target
