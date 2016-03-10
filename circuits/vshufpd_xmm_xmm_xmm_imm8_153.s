  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                            #  Line  RIP   Bytes  Opcode                     
.target:                                          #        0     0      OPC=<label>                
  callq .move_128_064_xmm3_r10_r11                #  1     0     5      OPC=callq_label            
  callq .move_128_064_xmm2_r12_r13                #  2     0x5   5      OPC=callq_label            
  callq .move_064_128_r12_r13_xmm3                #  3     0xa   5      OPC=callq_label            
  callq .move_128_032_xmm3_xmm8_xmm9_xmm10_xmm11  #  4     0xf   5      OPC=callq_label            
  callq .move_064_128_r10_r11_xmm2                #  5     0x14  5      OPC=callq_label            
  vunpckhpd %xmm10, %xmm3, %xmm7                  #  6     0x19  5      OPC=vunpckhpd_xmm_xmm_xmm  
  vmovlhps %xmm2, %xmm7, %xmm1                    #  7     0x1e  4      OPC=vmovlhps_xmm_xmm_xmm   
  retq                                            #  8     0x22  1      OPC=retq                   
                                                                                                   
.size target, .-target
