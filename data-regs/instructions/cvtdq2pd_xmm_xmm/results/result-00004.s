  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                                            #  Line  RIP   Bytes  Opcode                  
.target:                                          #        0     0      OPC=<label>             
  callq .move_128_64_xmm2_xmm12_xmm13             #  1     0     5      OPC=callq_label         
  callq .move_128_256_xmm12_xmm13_ymm3            #  2     0x5   5      OPC=callq_label         
  vcvtdq2pd %ymm3, %ymm13                         #  3     0xa   4      OPC=vcvtdq2pd_ymm_ymm   
  callq .move_128_032_xmm3_xmm8_xmm9_xmm10_xmm11  #  4     0xe   5      OPC=callq_label         
  vxorpd %xmm10, %xmm13, %xmm5                    #  5     0x13  5      OPC=vxorpd_xmm_xmm_xmm  
  movdqa %xmm5, %xmm1                             #  6     0x18  4      OPC=movdqa_xmm_xmm      
  retq                                            #  7     0x1c  1      OPC=retq                
                                                                                                
.size target, .-target
