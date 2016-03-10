  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                             #  Line  RIP   Bytes  Opcode                       
.target:                           #        0     0      OPC=<label>                  
  vpunpckhqdq %ymm2, %ymm2, %ymm8  #  1     0     4      OPC=vpunpckhqdq_ymm_ymm_ymm  
  vpunpckldq %ymm8, %ymm2, %ymm3   #  2     0x4   5      OPC=vpunpckldq_ymm_ymm_ymm   
  vpor %ymm2, %ymm8, %ymm13        #  3     0x9   4      OPC=vpor_ymm_ymm_ymm         
  vpunpckhdq %ymm3, %ymm13, %ymm1  #  4     0xd   4      OPC=vpunpckhdq_ymm_ymm_ymm   
  retq                             #  5     0x11  1      OPC=retq                     
                                                                                      
.size target, .-target
