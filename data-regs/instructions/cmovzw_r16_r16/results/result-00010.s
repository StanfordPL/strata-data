  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                            #  Line  RIP   Bytes  Opcode               
.target:                          #        0     0      OPC=<label>          
  callq .move_016_008_bx_r8b_r9b  #  1     0     5      OPC=callq_label      
  movswl %cx, %eax                #  2     0x5   3      OPC=movswl_r32_r16   
  callq .move_008_016_r8b_r9b_dx  #  3     0x8   5      OPC=callq_label      
  cmovnzw %dx, %ax                #  4     0xd   4      OPC=cmovnzw_r16_r16  
  xchgw %bx, %ax                  #  5     0x11  3      OPC=xchgw_r16_r16    
  retq                            #  6     0x14  1      OPC=retq             
                                                                             
.size target, .-target
