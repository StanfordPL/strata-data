  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                            #  Line  RIP   Bytes  Opcode                     
.target:                          #        0     0      OPC=<label>                
  vmovddup %ymm3, %ymm13          #  1     0     4      OPC=vmovddup_ymm_ymm       
  vmovddup %ymm2, %ymm4           #  2     0x4   4      OPC=vmovddup_ymm_ymm       
  vmovddup %ymm4, %ymm2           #  3     0x8   4      OPC=vmovddup_ymm_ymm       
  vunpckhps %ymm13, %ymm2, %ymm1  #  4     0xc   5      OPC=vunpckhps_ymm_ymm_ymm  
  retq                            #  5     0x11  1      OPC=retq                   
                                                                                   
.size target, .-target
