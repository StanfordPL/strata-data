  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                              #  Line  RIP   Bytes  Opcode                       
.target:                            #        0     0      OPC=<label>                  
  vmovddup %ymm2, %ymm1             #  1     0     4      OPC=vmovddup_ymm_ymm         
  vmovshdup %ymm1, %ymm0            #  2     0x4   4      OPC=vmovshdup_ymm_ymm        
  vpunpckhdq %ymm1, %ymm0, %ymm7    #  3     0x8   4      OPC=vpunpckhdq_ymm_ymm_ymm   
  vpunpcklqdq %ymm7, %ymm7, %ymm10  #  4     0xc   4      OPC=vpunpcklqdq_ymm_ymm_ymm  
  vpunpcklqdq %ymm10, %ymm7, %ymm1  #  5     0x10  5      OPC=vpunpcklqdq_ymm_ymm_ymm  
  retq                              #  6     0x15  1      OPC=retq                     
                                                                                       
.size target, .-target
