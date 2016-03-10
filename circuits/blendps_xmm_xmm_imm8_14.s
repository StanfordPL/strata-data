  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                          #  Line  RIP   Bytes  Opcode                  
.target:                                        #        0     0      OPC=<label>             
  callq .move_128_032_xmm2_xmm4_xmm5_xmm6_xmm7  #  1     0     5      OPC=callq_label         
  vmovss %xmm1, %xmm2, %xmm9                    #  2     0x5   4      OPC=vmovss_xmm_xmm_xmm  
  pmovsxwq %xmm5, %xmm8                         #  3     0x9   6      OPC=pmovsxwq_xmm_xmm    
  vmovdqu %xmm9, %xmm4                          #  4     0xf   5      OPC=vmovdqu_xmm_xmm     
  movlhps %xmm8, %xmm6                          #  5     0x14  4      OPC=movlhps_xmm_xmm     
  orps %xmm1, %xmm4                             #  6     0x18  3      OPC=orps_xmm_xmm        
  callq .move_032_128_xmm4_xmm5_xmm6_xmm7_xmm1  #  7     0x1b  5      OPC=callq_label         
  retq                                          #  8     0x20  1      OPC=retq                
                                                                                              
.size target, .-target
