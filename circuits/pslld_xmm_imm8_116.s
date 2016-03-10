  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                            #  Line  RIP   Bytes  Opcode                    
.target:                                          #        0     0      OPC=<label>               
  callq .move_128_032_xmm1_xmm8_xmm9_xmm10_xmm11  #  1     0     5      OPC=callq_label           
  callq .move_128_032_xmm1_xmm4_xmm5_xmm6_xmm7    #  2     0x5   5      OPC=callq_label           
  vxorpd %xmm8, %xmm4, %xmm8                      #  3     0xa   5      OPC=vxorpd_xmm_xmm_xmm    
  vmovhlps %xmm11, %xmm10, %xmm9                  #  4     0xf   5      OPC=vmovhlps_xmm_xmm_xmm  
  callq .move_64_128_xmm8_xmm9_xmm1               #  5     0x14  5      OPC=callq_label           
  retq                                            #  6     0x19  1      OPC=retq                  
                                                                                                  
.size target, .-target
