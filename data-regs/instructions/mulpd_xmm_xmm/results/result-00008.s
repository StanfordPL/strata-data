  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                         #  Line  RIP   Bytes  Opcode                  
.target:                       #        0     0      OPC=<label>             
  vmovdqu %xmm1, %xmm7         #  1     0     4      OPC=vmovdqu_xmm_xmm     
  vmovdqa %xmm2, %xmm10        #  2     0x4   4      OPC=vmovdqa_xmm_xmm     
  vmulpd %ymm10, %ymm7, %ymm7  #  3     0x8   5      OPC=vmulpd_ymm_ymm_ymm  
  movdqa %xmm7, %xmm1          #  4     0xd   4      OPC=movdqa_xmm_xmm      
  retq                         #  5     0x11  1      OPC=retq                
                                                                             
.size target, .-target
