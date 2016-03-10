  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                         #  Line  RIP  Bytes  Opcode                  
.target:                       #        0    0      OPC=<label>             
  vmovupd %xmm2, %xmm14        #  1     0    4      OPC=vmovupd_xmm_xmm     
  vmovdqu %xmm3, %xmm1         #  2     0x4  4      OPC=vmovdqu_xmm_xmm     
  vmaxps %ymm1, %ymm14, %ymm1  #  3     0x8  4      OPC=vmaxps_ymm_ymm_ymm  
  retq                         #  4     0xc  1      OPC=retq                
                                                                            
.size target, .-target
