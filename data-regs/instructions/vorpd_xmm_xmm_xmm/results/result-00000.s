  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                              #  Line  RIP   Bytes  Opcode               
.target:                            #        0     0      OPC=<label>          
  callq .move_128_064_xmm3_r10_r11  #  1     0     5      OPC=callq_label      
  callq .move_128_064_xmm2_r12_r13  #  2     0x5   5      OPC=callq_label      
  orq %r11, %r13                    #  3     0xa   3      OPC=orq_r64_r64      
  vzeroall                          #  4     0xd   3      OPC=vzeroall         
  vsqrtpd %ymm4, %ymm1              #  5     0x10  4      OPC=vsqrtpd_ymm_ymm  
  orq %r10, %r12                    #  6     0x14  3      OPC=orq_r64_r64      
  callq .move_064_128_r12_r13_xmm1  #  7     0x17  5      OPC=callq_label      
  retq                              #  8     0x1c  1      OPC=retq             
                                                                               
.size target, .-target
