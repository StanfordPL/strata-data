  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                            #  Line  RIP   Bytes  Opcode                     
.target:                                          #        0     0      OPC=<label>                
  callq .move_128_032_xmm2_xmm8_xmm9_xmm10_xmm11  #  1     0     5      OPC=callq_label            
  callq .move_128_032_xmm1_xmm4_xmm5_xmm6_xmm7    #  2     0x5   5      OPC=callq_label            
  punpckhdq %xmm2, %xmm8                          #  3     0xa   5      OPC=punpckhdq_xmm_xmm      
  vmovshdup %xmm2, %xmm5                          #  4     0xf   4      OPC=vmovshdup_xmm_xmm      
  vpbroadcastb %xmm8, %ymm4                       #  5     0x13  5      OPC=vpbroadcastb_ymm_xmm   
  vunpckhpd %xmm4, %xmm6, %xmm7                   #  6     0x18  4      OPC=vunpckhpd_xmm_xmm_xmm  
  callq .move_032_128_xmm4_xmm5_xmm6_xmm7_xmm1    #  7     0x1c  5      OPC=callq_label            
  retq                                            #  8     0x21  1      OPC=retq                   
                                                                                                   
.size target, .-target
