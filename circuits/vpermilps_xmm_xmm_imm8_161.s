  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                            #  Line  RIP   Bytes  Opcode                  
.target:                                          #        0     0      OPC=<label>             
  callq .move_128_064_xmm2_r8_r9                  #  1     0     5      OPC=callq_label         
  callq .move_064_128_r8_r9_xmm3                  #  2     0x5   5      OPC=callq_label         
  vmovsldup %xmm3, %xmm1                          #  3     0xa   4      OPC=vmovsldup_xmm_xmm   
  callq .move_128_032_xmm3_xmm8_xmm9_xmm10_xmm11  #  4     0xe   5      OPC=callq_label         
  vmovss %xmm9, %xmm1, %xmm1                      #  5     0x13  5      OPC=vmovss_xmm_xmm_xmm  
  retq                                            #  6     0x18  1      OPC=retq                
                                                                                                
.size target, .-target
