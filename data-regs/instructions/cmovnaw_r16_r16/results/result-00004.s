  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                              #  Line  RIP  Bytes  Opcode               
.target:                            #        0    0      OPC=<label>          
  cmovbew %cx, %bx                  #  1     0    4      OPC=cmovbew_r16_r16  
  callq .move_016_008_bx_r10b_r11b  #  2     0x4  5      OPC=callq_label      
  callq .move_008_016_r10b_r11b_bx  #  3     0x9  5      OPC=callq_label      
  retq                              #  4     0xe  1      OPC=retq             
                                                                              
.size target, .-target
