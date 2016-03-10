  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                              #  Line  RIP   Bytes  Opcode                       
.target:                            #        0     0      OPC=<label>                  
  vmovddup %ymm2, %ymm12            #  1     0     4      OPC=vmovddup_ymm_ymm         
  vmovsldup %ymm2, %ymm1            #  2     0x4   4      OPC=vmovsldup_ymm_ymm        
  vunpckhps %ymm12, %ymm1, %ymm0    #  3     0x8   5      OPC=vunpckhps_ymm_ymm_ymm    
  vunpckhps %ymm1, %ymm2, %ymm14    #  4     0xd   4      OPC=vunpckhps_ymm_ymm_ymm    
  vpunpckhqdq %ymm14, %ymm0, %ymm1  #  5     0x11  5      OPC=vpunpckhqdq_ymm_ymm_ymm  
  retq                              #  6     0x16  1      OPC=retq                     
                                                                                       
.size target, .-target
