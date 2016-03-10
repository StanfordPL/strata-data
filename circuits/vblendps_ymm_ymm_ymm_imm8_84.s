  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                             #  Line  RIP   Bytes  Opcode                       
.target:                           #        0     0      OPC=<label>                  
  vmovshdup %ymm2, %ymm9           #  1     0     4      OPC=vmovshdup_ymm_ymm        
  vunpcklps %ymm9, %ymm3, %ymm5    #  2     0x4   5      OPC=vunpcklps_ymm_ymm_ymm    
  vpunpckhdq %ymm9, %ymm3, %ymm1   #  3     0x9   5      OPC=vpunpckhdq_ymm_ymm_ymm   
  vpunpcklqdq %ymm1, %ymm5, %ymm1  #  4     0xe   4      OPC=vpunpcklqdq_ymm_ymm_ymm  
  movsd %xmm2, %xmm1               #  5     0x12  4      OPC=movsd_xmm_xmm            
  retq                             #  6     0x16  1      OPC=retq                     
                                                                                      
.size target, .-target
