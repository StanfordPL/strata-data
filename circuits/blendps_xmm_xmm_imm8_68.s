  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                            #  Line  RIP   Bytes  Opcode                     
.target:                                          #        0     0      OPC=<label>                
  callq .move_128_032_xmm1_xmm8_xmm9_xmm10_xmm11  #  1     0     5      OPC=callq_label            
  vmovsldup %xmm2, %xmm5                          #  2     0x5   4      OPC=vmovsldup_xmm_xmm      
  punpckhdq %xmm1, %xmm5                          #  3     0x9   4      OPC=punpckhdq_xmm_xmm      
  vunpcklpd %xmm5, %xmm5, %xmm10                  #  4     0xd   4      OPC=vunpcklpd_xmm_xmm_xmm  
  callq .move_032_128_xmm8_xmm9_xmm10_xmm11_xmm1  #  5     0x11  5      OPC=callq_label            
  retq                                            #  6     0x16  1      OPC=retq                   
                                                                                                   
.size target, .-target
