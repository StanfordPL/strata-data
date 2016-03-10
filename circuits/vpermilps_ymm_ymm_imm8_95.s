  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                              #  Line  RIP   Bytes  Opcode                       
.target:                            #        0     0      OPC=<label>                  
  vmovshdup %ymm2, %ymm4            #  1     0     4      OPC=vmovshdup_ymm_ymm        
  vpunpcklqdq %ymm4, %ymm2, %ymm15  #  2     0x4   4      OPC=vpunpcklqdq_ymm_ymm_ymm  
  vpunpckhqdq %ymm15, %ymm4, %ymm6  #  3     0x8   5      OPC=vpunpckhqdq_ymm_ymm_ymm  
  vmovaps %ymm6, %ymm1              #  4     0xd   4      OPC=vmovaps_ymm_ymm          
  retq                              #  5     0x11  1      OPC=retq                     
                                                                                       
.size target, .-target
