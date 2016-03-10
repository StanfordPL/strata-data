  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                             #  Line  RIP   Bytes  Opcode                       
.target:                           #        0     0      OPC=<label>                  
  vmovups %ymm2, %ymm9             #  1     0     4      OPC=vmovups_ymm_ymm          
  vpunpckhdq %ymm2, %ymm9, %ymm7   #  2     0x4   4      OPC=vpunpckhdq_ymm_ymm_ymm   
  vmovapd %ymm7, %ymm15            #  3     0x8   4      OPC=vmovapd_ymm_ymm          
  vunpcklps %ymm9, %ymm15, %ymm2   #  4     0xc   5      OPC=vunpcklps_ymm_ymm_ymm    
  vmovsldup %ymm2, %ymm7           #  5     0x11  4      OPC=vmovsldup_ymm_ymm        
  vpunpckhqdq %ymm2, %ymm7, %ymm1  #  6     0x15  4      OPC=vpunpckhqdq_ymm_ymm_ymm  
  retq                             #  7     0x19  1      OPC=retq                     
                                                                                      
.size target, .-target
