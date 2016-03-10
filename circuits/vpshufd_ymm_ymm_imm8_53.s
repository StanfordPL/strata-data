  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                             #  Line  RIP   Bytes  Opcode                       
.target:                           #        0     0      OPC=<label>                  
  vmovshdup %ymm2, %ymm9           #  1     0     4      OPC=vmovshdup_ymm_ymm        
  movdqa %xmm2, %xmm6              #  2     0x4   4      OPC=movdqa_xmm_xmm           
  vpbroadcastd %xmm6, %ymm12       #  3     0x8   5      OPC=vpbroadcastd_ymm_xmm     
  vunpckhpd %ymm12, %ymm9, %ymm1   #  4     0xd   5      OPC=vunpckhpd_ymm_ymm_ymm    
  vunpcklps %ymm2, %ymm1, %ymm4    #  5     0x12  4      OPC=vunpcklps_ymm_ymm_ymm    
  vpunpcklqdq %ymm4, %ymm9, %ymm1  #  6     0x16  4      OPC=vpunpcklqdq_ymm_ymm_ymm  
  retq                             #  7     0x1a  1      OPC=retq                     
                                                                                      
.size target, .-target
