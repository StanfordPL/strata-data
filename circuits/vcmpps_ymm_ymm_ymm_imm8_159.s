  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                              #  Line  RIP   Bytes  Opcode                    
.target:                            #        0     0      OPC=<label>               
  vzeroall                          #  1     0     3      OPC=vzeroall              
  callq .move_128_064_xmm3_r12_r13  #  2     0x3   5      OPC=callq_label           
  notq %r13                         #  3     0x8   3      OPC=notq_r64              
  movq %r13, %xmm7                  #  4     0xb   5      OPC=movq_xmm_r64          
  vbroadcastss %xmm7, %ymm1         #  5     0x10  5      OPC=vbroadcastss_ymm_xmm  
  retq                              #  6     0x15  1      OPC=retq                  
                                                                                    
.size target, .-target
