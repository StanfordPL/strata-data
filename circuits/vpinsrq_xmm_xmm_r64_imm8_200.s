  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                              #  Line  RIP   Bytes  Opcode             
.target:                            #        0     0      OPC=<label>        
  callq .move_128_064_xmm2_r12_r13  #  1     0     5      OPC=callq_label    
  xaddq %r12, %rbx                  #  2     0x5   4      OPC=xaddq_r64_r64  
  vzeroall                          #  3     0x9   3      OPC=vzeroall       
  callq .move_064_128_r12_r13_xmm1  #  4     0xc   5      OPC=callq_label    
  retq                              #  5     0x11  1      OPC=retq           
                                                                             
.size target, .-target
