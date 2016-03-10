  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                  #  Line  RIP   Bytes  Opcode                    
.target:                                #        0     0      OPC=<label>               
  callq .move_128_064_xmm2_r12_r13      #  1     0     5      OPC=callq_label           
  vzeroall                              #  2     0x5   3      OPC=vzeroall              
  incl %r13d                            #  3     0x8   3      OPC=incl_r32              
  callq .move_064_128_r12_r13_xmm2      #  4     0xb   5      OPC=callq_label           
  callq .move_256_128_ymm3_xmm8_xmm9    #  5     0x10  5      OPC=callq_label           
  vbroadcastss %xmm2, %xmm10            #  6     0x15  5      OPC=vbroadcastss_xmm_xmm  
  vaddpd %ymm10, %ymm9, %ymm11          #  7     0x1a  5      OPC=vaddpd_ymm_ymm_ymm    
  callq .move_128_256_xmm10_xmm11_ymm1  #  8     0x1f  5      OPC=callq_label           
  retq                                  #  9     0x24  1      OPC=retq                  
                                                                                        
.size target, .-target
