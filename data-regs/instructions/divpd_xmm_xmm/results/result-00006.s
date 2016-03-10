  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                         #  Line  RIP   Bytes  Opcode                  
.target:                       #        0     0      OPC=<label>             
  vpor %xmm2, %xmm2, %xmm4     #  1     0     4      OPC=vpor_xmm_xmm_xmm    
  vmovupd %xmm1, %xmm3         #  2     0x4   4      OPC=vmovupd_xmm_xmm     
  vdivpd %ymm4, %ymm3, %ymm12  #  3     0x8   4      OPC=vdivpd_ymm_ymm_ymm  
  movdqa %xmm12, %xmm1         #  4     0xc   5      OPC=movdqa_xmm_xmm      
  retq                         #  5     0x11  1      OPC=retq                
                                                                             
.size target, .-target
