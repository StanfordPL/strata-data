  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                            #  Line  RIP   Bytes  Opcode                    
.target:                                          #        0     0      OPC=<label>               
  callq .move_128_032_xmm2_xmm8_xmm9_xmm10_xmm11  #  1     0     5      OPC=callq_label           
  callq .move_128_032_xmm2_xmm4_xmm5_xmm6_xmm7    #  2     0x5   5      OPC=callq_label           
  vpbroadcastw %xmm9, %xmm5                       #  3     0xa   5      OPC=vpbroadcastw_xmm_xmm  
  xorpd %xmm5, %xmm2                              #  4     0xf   4      OPC=xorpd_xmm_xmm         
  pmovzxwq %xmm2, %xmm3                           #  5     0x13  5      OPC=pmovzxwq_xmm_xmm      
  callq .move_128_64_xmm3_xmm10_xmm11             #  6     0x18  5      OPC=callq_label           
  vpxor %xmm11, %xmm9, %xmm4                      #  7     0x1d  5      OPC=vpxor_xmm_xmm_xmm     
  vmovups %xmm7, %xmm1                            #  8     0x22  4      OPC=vmovups_xmm_xmm       
  callq .move_032_128_xmm4_xmm5_xmm6_xmm7_xmm1    #  9     0x26  5      OPC=callq_label           
  retq                                            #  10    0x2b  1      OPC=retq                  
                                                                                                  
.size target, .-target
