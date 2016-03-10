  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                               #  Line  RIP   Bytes  Opcode                     
.target:                             #        0     0      OPC=<label>                
  vmovshdup %xmm2, %xmm3             #  1     0     4      OPC=vmovshdup_xmm_xmm      
  vunpcklps %xmm3, %xmm2, %xmm13     #  2     0x4   4      OPC=vunpcklps_xmm_xmm_xmm  
  vunpcklps %xmm13, %xmm3, %xmm0     #  3     0x8   5      OPC=vunpcklps_xmm_xmm_xmm  
  callq .move_128_64_xmm3_xmm8_xmm9  #  4     0xd   5      OPC=callq_label            
  vunpcklpd %xmm0, %xmm9, %xmm1      #  5     0x12  4      OPC=vunpcklpd_xmm_xmm_xmm  
  retq                               #  6     0x16  1      OPC=retq                   
                                                                                      
.size target, .-target
