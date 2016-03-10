  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                              #  Line  RIP  Bytes  Opcode                       
.target:                            #        0    0      OPC=<label>                  
  vpunpcklqdq %ymm3, %ymm2, %ymm14  #  1     0    4      OPC=vpunpcklqdq_ymm_ymm_ymm  
  vpunpckhqdq %ymm14, %ymm2, %ymm7  #  2     0x4  5      OPC=vpunpckhqdq_ymm_ymm_ymm  
  vmovdqu %ymm7, %ymm1              #  3     0x9  4      OPC=vmovdqu_ymm_ymm          
  retq                              #  4     0xd  1      OPC=retq                     
                                                                                      
.size target, .-target
