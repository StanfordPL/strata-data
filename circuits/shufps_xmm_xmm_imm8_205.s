  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                                            #  Line  RIP   Bytes  Opcode                    
.target:                                          #        0     0      OPC=<label>               
  callq .move_128_032_xmm2_xmm8_xmm9_xmm10_xmm11  #  1     0     5      OPC=callq_label           
  movddup %xmm8, %xmm10                           #  2     0x5   5      OPC=movddup_xmm_xmm       
  callq .move_128_032_xmm1_xmm4_xmm5_xmm6_xmm7    #  3     0xa   5      OPC=callq_label           
  vmovsd %xmm7, %xmm1, %xmm9                      #  4     0xf   4      OPC=vmovsd_xmm_xmm_xmm    
  vpbroadcastq %xmm5, %ymm8                       #  5     0x13  5      OPC=vpbroadcastq_ymm_xmm  
  callq .move_032_128_xmm8_xmm9_xmm10_xmm11_xmm1  #  6     0x18  5      OPC=callq_label           
  retq                                            #  7     0x1d  1      OPC=retq                  
                                                                                                  
.size target, .-target
