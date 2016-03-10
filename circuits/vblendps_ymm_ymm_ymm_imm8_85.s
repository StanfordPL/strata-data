  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                              #  Line  RIP   Bytes  Opcode                       
.target:                            #        0     0      OPC=<label>                  
  vmovshdup %ymm2, %ymm12           #  1     0     4      OPC=vmovshdup_ymm_ymm        
  vunpcklps %ymm12, %ymm3, %ymm15   #  2     0x4   5      OPC=vunpcklps_ymm_ymm_ymm    
  vpunpckhdq %ymm12, %ymm3, %ymm2   #  3     0x9   5      OPC=vpunpckhdq_ymm_ymm_ymm   
  vpunpcklqdq %ymm2, %ymm15, %ymm1  #  4     0xe   4      OPC=vpunpcklqdq_ymm_ymm_ymm  
  retq                              #  5     0x12  1      OPC=retq                     
                                                                                       
.size target, .-target
