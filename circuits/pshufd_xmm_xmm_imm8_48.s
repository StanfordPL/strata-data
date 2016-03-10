  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                            #  Line  RIP   Bytes  Opcode                 
.target:                                          #        0     0      OPC=<label>            
  callq .move_128_032_xmm2_xmm8_xmm9_xmm10_xmm11  #  1     0     5      OPC=callq_label        
  vmovsldup %xmm2, %xmm10                         #  2     0x5   4      OPC=vmovsldup_xmm_xmm  
  unpcklps %xmm10, %xmm11                         #  3     0x9   4      OPC=unpcklps_xmm_xmm   
  callq .move_64_128_xmm10_xmm11_xmm1             #  4     0xd   5      OPC=callq_label        
  retq                                            #  5     0x12  1      OPC=retq               
                                                                                               
.size target, .-target
