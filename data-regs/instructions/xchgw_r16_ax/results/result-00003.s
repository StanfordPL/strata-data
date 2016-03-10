  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    3 bytes

# Text                            #  Line  RIP   Bytes  Opcode              
.target:                          #        0     0      OPC=<label>         
  movzwl %ax, %ecx                #  1     0     3      OPC=movzwl_r32_r16  
  movzwl %bx, %eax                #  2     0x3   3      OPC=movzwl_r32_r16  
  callq .move_016_008_cx_r8b_r9b  #  3     0x6   5      OPC=callq_label     
  callq .move_008_016_r8b_r9b_bx  #  4     0xb   5      OPC=callq_label     
  retq                            #  5     0x10  1      OPC=retq            
                                                                            
.size target, .-target
