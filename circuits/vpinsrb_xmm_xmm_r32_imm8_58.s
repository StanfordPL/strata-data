  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                #  Line  RIP   Bytes  Opcode             
.target:                              #        0     0      OPC=<label>        
  callq .move_032_016_ebx_r12w_r13w   #  1     0     5      OPC=callq_label    
  movsbq %r12b, %r9                   #  2     0x5   4      OPC=movsbq_r64_r8  
  callq .move_128_064_xmm2_r10_r11    #  3     0x9   5      OPC=callq_label    
  vzeroall                            #  4     0xe   3      OPC=vzeroall       
  callq .move_064_128_r10_r11_xmm1    #  5     0x11  5      OPC=callq_label    
  callq .move_r9b_to_byte_10_of_ymm1  #  6     0x16  5      OPC=callq_label    
  retq                                #  7     0x1b  1      OPC=retq           
                                                                               
.size target, .-target
