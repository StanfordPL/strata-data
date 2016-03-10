  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                               #  Line  RIP   Bytes  Opcode             
.target:                             #        0     0      OPC=<label>        
  callq .move_128_064_xmm2_r12_r13   #  1     0     5      OPC=callq_label    
  movzbw %bl, %r9w                   #  2     0x5   5      OPC=movzbw_r16_r8  
  vzeroall                           #  3     0xa   3      OPC=vzeroall       
  callq .move_064_128_r12_r13_xmm1   #  4     0xd   5      OPC=callq_label    
  callq .move_r9b_to_byte_6_of_ymm1  #  5     0x12  5      OPC=callq_label    
  retq                               #  6     0x17  1      OPC=retq           
                                                                              
.size target, .-target
