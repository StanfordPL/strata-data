  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                             #  Line  RIP   Bytes  Opcode                       
.target:                           #        0     0      OPC=<label>                  
  vmovdqu %xmm2, %xmm1             #  1     0     4      OPC=vmovdqu_xmm_xmm          
  vpunpckhdq %ymm2, %ymm2, %ymm12  #  2     0x4   4      OPC=vpunpckhdq_ymm_ymm_ymm   
  vunpckhpd %ymm1, %ymm12, %ymm6   #  3     0x8   4      OPC=vunpckhpd_ymm_ymm_ymm    
  vpunpcklqdq %ymm3, %ymm6, %ymm1  #  4     0xc   4      OPC=vpunpcklqdq_ymm_ymm_ymm  
  retq                             #  5     0x10  1      OPC=retq                     
                                                                                      
.size target, .-target
