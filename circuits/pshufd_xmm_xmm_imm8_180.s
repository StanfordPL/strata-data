  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                            #  Line  RIP   Bytes  Opcode                     
.target:                                          #        0     0      OPC=<label>                
  callq .move_128_064_xmm2_r12_r13                #  1     0     5      OPC=callq_label            
  callq .move_064_128_r12_r13_xmm1                #  2     0x5   5      OPC=callq_label            
  callq .move_128_032_xmm1_xmm8_xmm9_xmm10_xmm11  #  3     0xa   5      OPC=callq_label            
  vunpcklps %xmm10, %xmm11, %xmm11                #  4     0xf   5      OPC=vunpcklps_xmm_xmm_xmm  
  vmovlhps %xmm2, %xmm2, %xmm10                   #  5     0x14  4      OPC=vmovlhps_xmm_xmm_xmm   
  callq .move_64_128_xmm10_xmm11_xmm1             #  6     0x18  5      OPC=callq_label            
  retq                                            #  7     0x1d  1      OPC=retq                   
                                                                                                   
.size target, .-target
