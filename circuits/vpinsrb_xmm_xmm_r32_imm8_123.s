  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                #  Line  RIP   Bytes  Opcode             
.target:                              #        0     0      OPC=<label>        
  callq .move_128_064_xmm2_r12_r13    #  1     0     5      OPC=callq_label    
  movsbq %bl, %r8                     #  2     0x5   4      OPC=movsbq_r64_r8  
  vzeroall                            #  3     0x9   3      OPC=vzeroall       
  callq .move_064_128_r12_r13_xmm1    #  4     0xc   5      OPC=callq_label    
  callq .move_r8b_to_byte_11_of_ymm1  #  5     0x11  5      OPC=callq_label    
  retq                                #  6     0x16  1      OPC=retq           
                                                                               
.size target, .-target
