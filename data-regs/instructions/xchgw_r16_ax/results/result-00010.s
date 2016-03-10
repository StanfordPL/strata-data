  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    3 bytes

# Text                              #  Line  RIP   Bytes  Opcode              
.target:                            #        0     0      OPC=<label>         
  callq .move_016_008_bx_r10b_r11b  #  1     0     5      OPC=callq_label     
  callq .move_008_016_r10b_r11b_cx  #  2     0x5   5      OPC=callq_label     
  xchgw %cx, %ax                    #  3     0xa   3      OPC=xchgw_r16_r16   
  movzwl %cx, %ebx                  #  4     0xd   3      OPC=movzwl_r32_r16  
  retq                              #  5     0x10  1      OPC=retq            
                                                                              
.size target, .-target
