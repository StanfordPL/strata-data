  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                         #  Line  RIP  Bytes  Opcode                  
.target:                       #        0    0      OPC=<label>             
  vmovdqu %ymm2, %ymm1         #  1     0    4      OPC=vmovdqu_ymm_ymm     
  vmovss %xmm2, %xmm3, %xmm10  #  2     0x4  4      OPC=vmovss_xmm_xmm_xmm  
  movupd %xmm10, %xmm1         #  3     0x8  5      OPC=movupd_xmm_xmm      
  retq                         #  4     0xd  1      OPC=retq                
                                                                            
.size target, .-target
