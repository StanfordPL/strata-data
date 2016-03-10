  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                            #  Line  RIP   Bytes  Opcode                   
.target:                                          #        0     0      OPC=<label>              
  callq .move_128_032_xmm1_xmm8_xmm9_xmm10_xmm11  #  1     0     5      OPC=callq_label          
  vhaddpd %xmm10, %xmm11, %xmm2                   #  2     0x5   5      OPC=vhaddpd_xmm_xmm_xmm  
  callq .move_128_032_xmm2_xmm4_xmm5_xmm6_xmm7    #  3     0xa   5      OPC=callq_label          
  unpcklpd %xmm6, %xmm1                           #  4     0xf   4      OPC=unpcklpd_xmm_xmm     
  movss %xmm5, %xmm1                              #  5     0x13  4      OPC=movss_xmm_xmm        
  retq                                            #  6     0x17  1      OPC=retq                 
                                                                                                 
.size target, .-target
