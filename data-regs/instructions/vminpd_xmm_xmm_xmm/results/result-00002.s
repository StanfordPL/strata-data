  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                         #  Line  RIP   Bytes  Opcode                  
.target:                       #        0     0      OPC=<label>             
  vmovaps %xmm2, %xmm8         #  1     0     4      OPC=vmovaps_xmm_xmm     
  movdqa %xmm3, %xmm1          #  2     0x4   4      OPC=movdqa_xmm_xmm      
  vpand %xmm3, %xmm1, %xmm10   #  3     0x8   4      OPC=vpand_xmm_xmm_xmm   
  vminpd %ymm10, %ymm8, %ymm1  #  4     0xc   5      OPC=vminpd_ymm_ymm_ymm  
  retq                         #  5     0x11  1      OPC=retq                
                                                                             
.size target, .-target
