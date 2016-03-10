  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                            #  Line  RIP   Bytes  Opcode                     
.target:                          #        0     0      OPC=<label>                
  vmovddup %ymm3, %ymm4           #  1     0     4      OPC=vmovddup_ymm_ymm       
  vmovddup %ymm2, %ymm10          #  2     0x4   4      OPC=vmovddup_ymm_ymm       
  vunpckhps %ymm4, %ymm10, %ymm7  #  3     0x8   4      OPC=vunpckhps_ymm_ymm_ymm  
  vmaxps %ymm7, %ymm7, %ymm1      #  4     0xc   4      OPC=vmaxps_ymm_ymm_ymm     
  retq                            #  5     0x10  1      OPC=retq                   
                                                                                   
.size target, .-target
