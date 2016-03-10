  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                            #  Line  RIP   Bytes  Opcode                     
.target:                          #        0     0      OPC=<label>                
  vunpcklps %ymm3, %ymm2, %ymm12  #  1     0     4      OPC=vunpcklps_ymm_ymm_ymm  
  vunpckhps %ymm3, %ymm2, %ymm8   #  2     0x4   4      OPC=vunpckhps_ymm_ymm_ymm  
  vmaxps %ymm12, %ymm12, %ymm2    #  3     0x8   5      OPC=vmaxps_ymm_ymm_ymm     
  vunpckhps %ymm8, %ymm12, %ymm6  #  4     0xd   5      OPC=vunpckhps_ymm_ymm_ymm  
  vunpcklps %ymm8, %ymm2, %ymm14  #  5     0x12  5      OPC=vunpcklps_ymm_ymm_ymm  
  vsubps %ymm6, %ymm14, %ymm15    #  6     0x17  4      OPC=vsubps_ymm_ymm_ymm     
  vmovups %ymm15, %ymm1           #  7     0x1b  5      OPC=vmovups_ymm_ymm        
  retq                            #  8     0x20  1      OPC=retq                   
                                                                                   
.size target, .-target
