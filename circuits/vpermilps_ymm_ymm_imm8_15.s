  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                              #  Line  RIP   Bytes  Opcode                       
.target:                            #        0     0      OPC=<label>                  
  vmovddup %ymm2, %ymm9             #  1     0     4      OPC=vmovddup_ymm_ymm         
  vmovsldup %ymm9, %ymm14           #  2     0x4   5      OPC=vmovsldup_ymm_ymm        
  vpunpckhqdq %ymm14, %ymm2, %ymm4  #  3     0x9   5      OPC=vpunpckhqdq_ymm_ymm_ymm  
  vmovshdup %ymm4, %ymm1            #  4     0xe   4      OPC=vmovshdup_ymm_ymm        
  retq                              #  5     0x12  1      OPC=retq                     
                                                                                       
.size target, .-target
