  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                             #  Line  RIP   Bytes  Opcode                       
.target:                           #        0     0      OPC=<label>                  
  vdivpd %ymm2, %ymm2, %ymm6       #  1     0     4      OPC=vdivpd_ymm_ymm_ymm       
  vunpckhpd %ymm6, %ymm2, %ymm8    #  2     0x4   4      OPC=vunpckhpd_ymm_ymm_ymm    
  vpunpckldq %ymm8, %ymm8, %ymm0   #  3     0x8   5      OPC=vpunpckldq_ymm_ymm_ymm   
  vpunpcklqdq %ymm8, %ymm0, %ymm1  #  4     0xd   5      OPC=vpunpcklqdq_ymm_ymm_ymm  
  movdqa %xmm1, %xmm1              #  5     0x12  4      OPC=movdqa_xmm_xmm           
  retq                             #  6     0x16  1      OPC=retq                     
                                                                                      
.size target, .-target
