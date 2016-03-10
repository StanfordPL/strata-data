  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                              #  Line  RIP   Bytes  Opcode             
.target:                            #        0     0      OPC=<label>        
  callq .move_128_064_xmm2_r12_r13  #  1     0     5      OPC=callq_label    
  callq .move_128_064_xmm3_r8_r9    #  2     0x5   5      OPC=callq_label    
  xaddq %r12, %r8                   #  3     0xa   4      OPC=xaddq_r64_r64  
  vzeroall                          #  4     0xe   3      OPC=vzeroall       
  callq .move_064_128_r12_r13_xmm1  #  5     0x11  5      OPC=callq_label    
  retq                              #  6     0x16  1      OPC=retq           
                                                                             
.size target, .-target
