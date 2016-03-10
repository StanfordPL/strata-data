  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                             #  Line  RIP   Bytes  Opcode                       
.target:                           #        0     0      OPC=<label>                  
  vmovshdup %ymm2, %ymm8           #  1     0     4      OPC=vmovshdup_ymm_ymm        
  vunpckhps %ymm2, %ymm8, %ymm6    #  2     0x4   4      OPC=vunpckhps_ymm_ymm_ymm    
  vmovddup %ymm6, %ymm7            #  3     0x8   4      OPC=vmovddup_ymm_ymm         
  vpunpckldq %ymm8, %ymm6, %ymm8   #  4     0xc   5      OPC=vpunpckldq_ymm_ymm_ymm   
  vpunpcklqdq %ymm7, %ymm8, %ymm1  #  5     0x11  4      OPC=vpunpcklqdq_ymm_ymm_ymm  
  retq                             #  6     0x15  1      OPC=retq                     
                                                                                      
.size target, .-target
