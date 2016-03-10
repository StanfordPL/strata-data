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
  blsmskl %r13d, %r12d              #  3     0x8   5      OPC=blsmskl_r32_r32       
  callq .move_064_128_r12_r13_xmm1  #  4     0xd   5      OPC=callq_label           
  vpbroadcastb %xmm1, %xmm1         #  5     0x12  5      OPC=vpbroadcastb_xmm_xmm  
  retq                              #  6     0x17  1      OPC=retq                  
                                                                                    
.size target, .-target
