  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                             #  Line  RIP   Bytes  Opcode                       
.target:                           #        0     0      OPC=<label>                  
  vmovdqa %ymm2, %ymm11            #  1     0     4      OPC=vmovdqa_ymm_ymm          
  vunpcklpd %ymm11, %ymm11, %ymm7  #  2     0x4   5      OPC=vunpcklpd_ymm_ymm_ymm    
  vpunpckhqdq %ymm7, %ymm2, %ymm1  #  3     0x9   4      OPC=vpunpckhqdq_ymm_ymm_ymm  
  movdqu %xmm2, %xmm1              #  4     0xd   4      OPC=movdqu_xmm_xmm           
  retq                             #  5     0x11  1      OPC=retq                     
                                                                                      
.size target, .-target
