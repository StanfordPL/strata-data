  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                              #  Line  RIP   Bytes  Opcode                       
.target:                            #        0     0      OPC=<label>                  
  vmovsldup %ymm3, %ymm10           #  1     0     4      OPC=vmovsldup_ymm_ymm        
  vmovsldup %ymm2, %ymm12           #  2     0x4   4      OPC=vmovsldup_ymm_ymm        
  vpunpckhdq %ymm10, %ymm3, %ymm2   #  3     0x8   5      OPC=vpunpckhdq_ymm_ymm_ymm   
  vpunpckhqdq %ymm2, %ymm12, %ymm1  #  4     0xd   4      OPC=vpunpckhqdq_ymm_ymm_ymm  
  retq                              #  5     0x11  1      OPC=retq                     
                                                                                       
.size target, .-target
