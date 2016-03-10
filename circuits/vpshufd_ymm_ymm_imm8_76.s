  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                              #  Line  RIP   Bytes  Opcode                       
.target:                            #        0     0      OPC=<label>                  
  vpunpcklqdq %ymm2, %ymm2, %ymm3   #  1     0     4      OPC=vpunpcklqdq_ymm_ymm_ymm  
  vmovshdup %ymm2, %ymm5            #  2     0x4   4      OPC=vmovshdup_ymm_ymm        
  vpunpckhdq %ymm5, %ymm3, %ymm11   #  3     0x8   4      OPC=vpunpckhdq_ymm_ymm_ymm   
  vpunpcklqdq %ymm3, %ymm11, %ymm1  #  4     0xc   4      OPC=vpunpcklqdq_ymm_ymm_ymm  
  retq                              #  5     0x10  1      OPC=retq                     
                                                                                       
.size target, .-target
