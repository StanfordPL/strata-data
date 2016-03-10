  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                             #  Line  RIP   Bytes  Opcode                       
.target:                           #        0     0      OPC=<label>                  
  vmovupd %xmm1, %xmm7             #  1     0     4      OPC=vmovupd_xmm_xmm          
  vmovdqa %xmm3, %xmm5             #  2     0x4   4      OPC=vmovdqa_xmm_xmm          
  vmovdqa %xmm2, %xmm1             #  3     0x8   4      OPC=vmovdqa_xmm_xmm          
  vfmsub231ps %ymm5, %ymm7, %ymm1  #  4     0xc   5      OPC=vfmsub231ps_ymm_ymm_ymm  
  retq                             #  5     0x11  1      OPC=retq                     
                                                                                      
.size target, .-target
