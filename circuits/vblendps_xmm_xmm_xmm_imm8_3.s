  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                              #  Line  RIP   Bytes  Opcode             
.target:                            #        0     0      OPC=<label>        
  callq .move_128_064_xmm2_r8_r9    #  1     0     5      OPC=callq_label    
  callq .move_128_064_xmm3_r10_r11  #  2     0x5   5      OPC=callq_label    
  vzeroall                          #  3     0xa   3      OPC=vzeroall       
  decq %r8                          #  4     0xd   3      OPC=decq_r64       
  xchgq %r8, %r10                   #  5     0x10  3      OPC=xchgq_r64_r64  
  callq .move_064_128_r8_r9_xmm1    #  6     0x13  5      OPC=callq_label    
  retq                              #  7     0x18  1      OPC=retq           
                                                                             
.size target, .-target
