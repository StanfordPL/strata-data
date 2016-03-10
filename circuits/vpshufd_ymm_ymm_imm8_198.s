  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                              #  Line  RIP   Bytes  Opcode                       
.target:                            #        0     0      OPC=<label>                  
  vmovddup %ymm2, %ymm5             #  1     0     4      OPC=vmovddup_ymm_ymm         
  vmovshdup %ymm2, %ymm15           #  2     0x4   4      OPC=vmovshdup_ymm_ymm        
  vpunpckhdq %ymm15, %ymm5, %ymm12  #  3     0x8   5      OPC=vpunpckhdq_ymm_ymm_ymm   
  vpunpckhdq %ymm12, %ymm2, %ymm1   #  4     0xd   5      OPC=vpunpckhdq_ymm_ymm_ymm   
  vpunpcklqdq %ymm12, %ymm1, %ymm1  #  5     0x12  5      OPC=vpunpcklqdq_ymm_ymm_ymm  
  retq                              #  6     0x17  1      OPC=retq                     
                                                                                       
.size target, .-target
