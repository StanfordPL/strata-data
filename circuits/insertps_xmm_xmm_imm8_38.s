  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                            #  Line  RIP   Bytes  Opcode                  
.target:                                          #        0     0      OPC=<label>             
  callq .move_128_032_xmm1_xmm8_xmm9_xmm10_xmm11  #  1     0     5      OPC=callq_label         
  vmaxpd %xmm1, %xmm8, %xmm14                     #  2     0x5   4      OPC=vmaxpd_xmm_xmm_xmm  
  vmaxps %xmm1, %xmm9, %xmm12                     #  3     0x9   4      OPC=vmaxps_xmm_xmm_xmm  
  vmovsldup %ymm14, %ymm5                         #  4     0xd   5      OPC=vmovsldup_ymm_ymm   
  unpckhps %xmm5, %xmm10                          #  5     0x12  4      OPC=unpckhps_xmm_xmm    
  punpckhdq %xmm12, %xmm9                         #  6     0x16  5      OPC=punpckhdq_xmm_xmm   
  callq .move_032_128_xmm8_xmm9_xmm10_xmm11_xmm1  #  7     0x1b  5      OPC=callq_label         
  retq                                            #  8     0x20  1      OPC=retq                
                                                                                                
.size target, .-target
