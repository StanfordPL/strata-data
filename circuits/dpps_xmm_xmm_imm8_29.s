  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                            #  Line  RIP   Bytes  Opcode                  
.target:                                          #        0     0      OPC=<label>             
  callq .move_128_032_xmm1_xmm8_xmm9_xmm10_xmm11  #  1     0     5      OPC=callq_label         
  vmulss %xmm2, %xmm8, %xmm10                     #  2     0x5   4      OPC=vmulss_xmm_xmm_xmm  
  haddps %xmm1, %xmm10                            #  3     0x9   5      OPC=haddps_xmm_xmm      
  vmovsldup %xmm10, %xmm11                        #  4     0xe   5      OPC=vmovsldup_xmm_xmm   
  callq .move_64_128_xmm10_xmm11_xmm1             #  5     0x13  5      OPC=callq_label         
  retq                                            #  6     0x18  1      OPC=retq                
                                                                                                
.size target, .-target
