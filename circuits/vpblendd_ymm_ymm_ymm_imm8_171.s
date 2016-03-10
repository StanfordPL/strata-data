  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                              #  Line  RIP   Bytes  Opcode                       
.target:                            #        0     0      OPC=<label>                  
  vmovshdup %ymm3, %ymm12           #  1     0     4      OPC=vmovshdup_ymm_ymm        
  vunpckhps %ymm12, %ymm2, %ymm8    #  2     0x4   5      OPC=vunpckhps_ymm_ymm_ymm    
  vunpcklps %ymm12, %ymm2, %ymm15   #  3     0x9   5      OPC=vunpcklps_ymm_ymm_ymm    
  movdqa %xmm3, %xmm15              #  4     0xe   5      OPC=movdqa_xmm_xmm           
  vpunpcklqdq %ymm8, %ymm15, %ymm1  #  5     0x13  5      OPC=vpunpcklqdq_ymm_ymm_ymm  
  retq                              #  6     0x18  1      OPC=retq                     
                                                                                       
.size target, .-target
