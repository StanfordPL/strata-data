  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                             #  Line  RIP   Bytes  Opcode                       
.target:                           #        0     0      OPC=<label>                  
  vmovsldup %ymm2, %ymm7           #  1     0     4      OPC=vmovsldup_ymm_ymm        
  vmovddup %ymm7, %ymm1            #  2     0x4   4      OPC=vmovddup_ymm_ymm         
  vpunpckhdq %ymm1, %ymm7, %ymm4   #  3     0x8   4      OPC=vpunpckhdq_ymm_ymm_ymm   
  maxss %xmm7, %xmm1               #  4     0xc   4      OPC=maxss_xmm_xmm            
  vpunpcklqdq %ymm4, %ymm1, %ymm1  #  5     0x10  4      OPC=vpunpcklqdq_ymm_ymm_ymm  
  retq                             #  6     0x14  1      OPC=retq                     
                                                                                      
.size target, .-target
