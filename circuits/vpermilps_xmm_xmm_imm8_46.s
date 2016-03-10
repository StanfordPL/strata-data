  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                 #  Line  RIP   Bytes  Opcode                     
.target:                               #        0     0      OPC=<label>                
  callq .move_128_064_xmm2_r12_r13     #  1     0     5      OPC=callq_label            
  callq .move_064_128_r12_r13_xmm1     #  2     0x5   5      OPC=callq_label            
  callq .move_128_64_xmm1_xmm10_xmm11  #  3     0xa   5      OPC=callq_label            
  vunpcklps %xmm1, %xmm11, %xmm8       #  4     0xf   4      OPC=vunpcklps_xmm_xmm_xmm  
  vmovlhps %xmm8, %xmm11, %xmm1        #  5     0x13  5      OPC=vmovlhps_xmm_xmm_xmm   
  retq                                 #  6     0x18  1      OPC=retq                   
                                                                                        
.size target, .-target
