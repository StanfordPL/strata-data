  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                #  Line  RIP   Bytes  Opcode                    
.target:                              #        0     0      OPC=<label>               
  callq .move_128_064_xmm2_r12_r13    #  1     0     5      OPC=callq_label           
  vzeroall                            #  2     0x5   3      OPC=vzeroall              
  vmovd %r12d, %xmm9                  #  3     0x8   5      OPC=vmovd_xmm_r32         
  vbroadcastss %xmm9, %xmm9           #  4     0xd   5      OPC=vbroadcastss_xmm_xmm  
  vaddpd %ymm9, %ymm6, %ymm8          #  5     0x12  5      OPC=vaddpd_ymm_ymm_ymm    
  callq .move_128_256_xmm8_xmm9_ymm1  #  6     0x17  5      OPC=callq_label           
  retq                                #  7     0x1c  1      OPC=retq                  
                                                                                      
.size target, .-target
