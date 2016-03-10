  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                              #  Line  RIP  Bytes  Opcode                       
.target:                            #        0    0      OPC=<label>                  
  vmovsldup %ymm2, %ymm4            #  1     0    4      OPC=vmovsldup_ymm_ymm        
  vpunpckhqdq %ymm4, %ymm2, %ymm10  #  2     0x4  4      OPC=vpunpckhqdq_ymm_ymm_ymm  
  vmovdqa %ymm10, %ymm1             #  3     0x8  5      OPC=vmovdqa_ymm_ymm          
  retq                              #  4     0xd  1      OPC=retq                     
                                                                                      
.size target, .-target
