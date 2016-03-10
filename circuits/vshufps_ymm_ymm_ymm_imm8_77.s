  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                             #  Line  RIP   Bytes  Opcode                       
.target:                           #        0     0      OPC=<label>                  
  vmovups %ymm3, %ymm15            #  1     0     4      OPC=vmovups_ymm_ymm          
  vmovshdup %ymm2, %ymm8           #  2     0x4   4      OPC=vmovshdup_ymm_ymm        
  vunpckhps %ymm2, %ymm8, %ymm2    #  3     0x8   4      OPC=vunpckhps_ymm_ymm_ymm    
  vmovupd %ymm15, %ymm0            #  4     0xc   5      OPC=vmovupd_ymm_ymm          
  vunpcklps %ymm2, %ymm8, %ymm5    #  5     0x11  4      OPC=vunpcklps_ymm_ymm_ymm    
  vpunpcklqdq %ymm0, %ymm5, %ymm1  #  6     0x15  4      OPC=vpunpcklqdq_ymm_ymm_ymm  
  retq                             #  7     0x19  1      OPC=retq                     
                                                                                      
.size target, .-target
