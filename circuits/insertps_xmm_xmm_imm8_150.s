  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                            #  Line  RIP   Bytes  Opcode                 
.target:                                          #        0     0      OPC=<label>            
  callq .move_128_032_xmm1_xmm8_xmm9_xmm10_xmm11  #  1     0     5      OPC=callq_label        
  callq .move_128_032_xmm2_xmm4_xmm5_xmm6_xmm7    #  2     0x5   5      OPC=callq_label        
  unpckhps %xmm7, %xmm1                           #  3     0xa   3      OPC=unpckhps_xmm_xmm   
  punpckhdq %xmm1, %xmm9                          #  4     0xd   5      OPC=punpckhdq_xmm_xmm  
  callq .move_64_128_xmm8_xmm9_xmm1               #  5     0x12  5      OPC=callq_label        
  retq                                            #  6     0x17  1      OPC=retq               
                                                                                               
.size target, .-target
