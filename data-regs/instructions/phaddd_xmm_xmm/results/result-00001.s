  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                            #  Line  RIP   Bytes  Opcode                     
.target:                                          #        0     0      OPC=<label>                
  callq .move_128_032_xmm2_xmm4_xmm5_xmm6_xmm7    #  1     0     5      OPC=callq_label            
  callq .move_128_032_xmm2_xmm8_xmm9_xmm10_xmm11  #  2     0x5   5      OPC=callq_label            
  movshdup %xmm1, %xmm0                           #  3     0xa   4      OPC=movshdup_xmm_xmm       
  vaddpd %xmm4, %xmm9, %xmm10                     #  4     0xe   4      OPC=vaddpd_xmm_xmm_xmm     
  vpaddq %xmm11, %xmm6, %xmm11                    #  5     0x12  5      OPC=vpaddq_xmm_xmm_xmm     
  vpaddq %xmm0, %xmm1, %xmm8                      #  6     0x17  4      OPC=vpaddq_xmm_xmm_xmm     
  vunpckhps %xmm8, %xmm8, %xmm9                   #  7     0x1b  5      OPC=vunpckhps_xmm_xmm_xmm  
  callq .move_032_128_xmm8_xmm9_xmm10_xmm11_xmm1  #  8     0x20  5      OPC=callq_label            
  retq                                            #  9     0x25  1      OPC=retq                   
                                                                                                   
.size target, .-target
