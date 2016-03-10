  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                              #  Line  RIP   Bytes  Opcode                    
.target:                            #        0     0      OPC=<label>               
  vzeroall                          #  1     0     3      OPC=vzeroall              
  callq .move_128_064_xmm2_r12_r13  #  2     0x3   5      OPC=callq_label           
  movq $0xffffffffffffffff, %r12    #  3     0x8   10     OPC=movq_r64_imm64        
  callq .move_064_128_r12_r13_xmm3  #  4     0x12  5      OPC=callq_label           
  vpbroadcastq %xmm3, %ymm1         #  5     0x17  5      OPC=vpbroadcastq_ymm_xmm  
  retq                              #  6     0x1c  1      OPC=retq                  
                                                                                    
.size target, .-target
