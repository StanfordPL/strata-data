  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                             #  Line  RIP   Bytes  Opcode                       
.target:                           #        0     0      OPC=<label>                  
  vmovshdup %ymm2, %ymm1           #  1     0     4      OPC=vmovshdup_ymm_ymm        
  vunpcklpd %ymm2, %ymm1, %ymm9    #  2     0x4   4      OPC=vunpcklpd_ymm_ymm_ymm    
  vmovdqu %ymm1, %ymm7             #  3     0x8   4      OPC=vmovdqu_ymm_ymm          
  vpunpckhdq %ymm9, %ymm1, %ymm5   #  4     0xc   5      OPC=vpunpckhdq_ymm_ymm_ymm   
  vpunpcklqdq %ymm7, %ymm5, %ymm1  #  5     0x11  4      OPC=vpunpcklqdq_ymm_ymm_ymm  
  retq                             #  6     0x15  1      OPC=retq                     
                                                                                      
.size target, .-target
