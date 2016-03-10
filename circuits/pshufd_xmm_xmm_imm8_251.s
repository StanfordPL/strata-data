  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                            #  Line  RIP   Bytes  Opcode                    
.target:                                          #        0     0      OPC=<label>               
  callq .move_128_064_xmm2_r12_r13                #  1     0     5      OPC=callq_label           
  callq .move_064_128_r12_r13_xmm1                #  2     0x5   5      OPC=callq_label           
  callq .move_128_032_xmm1_xmm8_xmm9_xmm10_xmm11  #  3     0xa   5      OPC=callq_label           
  callq .move_128_64_xmm1_xmm8_xmm9               #  4     0xf   5      OPC=callq_label           
  vbroadcastss %xmm11, %ymm8                      #  5     0x14  5      OPC=vbroadcastss_ymm_xmm  
  vhaddpd %xmm11, %xmm11, %xmm10                  #  6     0x19  5      OPC=vhaddpd_xmm_xmm_xmm   
  callq .move_032_128_xmm8_xmm9_xmm10_xmm11_xmm1  #  7     0x1e  5      OPC=callq_label           
  retq                                            #  8     0x23  1      OPC=retq                  
                                                                                                  
.size target, .-target
