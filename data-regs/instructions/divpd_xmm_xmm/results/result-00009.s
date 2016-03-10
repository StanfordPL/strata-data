  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                         #  Line  RIP   Bytes  Opcode                  
.target:                       #        0     0      OPC=<label>             
  vmovups %xmm1, %xmm8         #  1     0     4      OPC=vmovups_xmm_xmm     
  vmovapd %xmm2, %xmm3         #  2     0x4   4      OPC=vmovapd_xmm_xmm     
  vdivpd %ymm3, %ymm8, %ymm13  #  3     0x8   4      OPC=vdivpd_ymm_ymm_ymm  
  movdqu %xmm13, %xmm1         #  4     0xc   5      OPC=movdqu_xmm_xmm      
  retq                         #  5     0x11  1      OPC=retq                
                                                                             
.size target, .-target
