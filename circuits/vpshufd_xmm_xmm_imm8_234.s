  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                            #  Line  RIP   Bytes  Opcode                     
.target:                                          #        0     0      OPC=<label>                
  callq .move_128_032_xmm2_xmm8_xmm9_xmm10_xmm11  #  1     0     5      OPC=callq_label            
  callq .move_128_64_xmm2_xmm8_xmm9               #  2     0x5   5      OPC=callq_label            
  callq .move_128_032_xmm2_xmm4_xmm5_xmm6_xmm7    #  3     0xa   5      OPC=callq_label            
  vmovsldup %xmm6, %xmm15                         #  4     0xf   4      OPC=vmovsldup_xmm_xmm      
  vunpcklpd %xmm11, %xmm9, %xmm6                  #  5     0x13  5      OPC=vunpcklpd_xmm_xmm_xmm  
  vmovlhps %xmm6, %xmm15, %xmm1                   #  6     0x18  4      OPC=vmovlhps_xmm_xmm_xmm   
  retq                                            #  7     0x1c  1      OPC=retq                   
                                                                                                   
.size target, .-target
