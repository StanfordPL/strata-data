  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                            #  Line  RIP   Bytes  Opcode                     
.target:                                          #        0     0      OPC=<label>                
  callq .move_128_032_xmm1_xmm4_xmm5_xmm6_xmm7    #  1     0     5      OPC=callq_label            
  callq .move_128_032_xmm2_xmm8_xmm9_xmm10_xmm11  #  2     0x5   5      OPC=callq_label            
  vunpckhpd %xmm9, %xmm5, %xmm9                   #  3     0xa   5      OPC=vunpckhpd_xmm_xmm_xmm  
  movq %xmm6, %xmm10                              #  4     0xf   5      OPC=movq_xmm_xmm           
  vpbroadcastd %xmm1, %xmm8                       #  5     0x14  5      OPC=vpbroadcastd_xmm_xmm   
  callq .move_032_128_xmm8_xmm9_xmm10_xmm11_xmm1  #  6     0x19  5      OPC=callq_label            
  retq                                            #  7     0x1e  1      OPC=retq                   
                                                                                                   
.size target, .-target
