  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text                                            #  Line  RIP   Bytes  Opcode                    
.target:                                          #        0     0      OPC=<label>               
  callq .move_128_032_xmm1_xmm4_xmm5_xmm6_xmm7    #  1     0     5      OPC=callq_label           
  movss %xmm6, %xmm2                              #  2     0x5   4      OPC=movss_xmm_xmm         
  callq .move_128_032_xmm2_xmm8_xmm9_xmm10_xmm11  #  3     0x9   5      OPC=callq_label           
  vmovlhps %xmm5, %xmm7, %xmm14                   #  4     0xe   4      OPC=vmovlhps_xmm_xmm_xmm  
  unpckhpd %xmm8, %xmm10                          #  5     0x12  5      OPC=unpckhpd_xmm_xmm      
  callq .move_128_64_xmm2_xmm8_xmm9               #  6     0x17  5      OPC=callq_label           
  vaddpd %xmm10, %xmm14, %xmm10                   #  7     0x1c  5      OPC=vaddpd_xmm_xmm_xmm    
  callq .move_032_128_xmm8_xmm9_xmm10_xmm11_xmm1  #  8     0x21  5      OPC=callq_label           
  retq                                            #  9     0x26  1      OPC=retq                  
                                                                                                  
.size target, .-target
