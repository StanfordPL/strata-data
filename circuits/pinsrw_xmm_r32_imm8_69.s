  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                #  Line  RIP   Bytes  Opcode              
.target:                              #        0     0      OPC=<label>         
  movzwl %bx, %ecx                    #  1     0     3      OPC=movzwl_r32_r16  
  xchgw %cx, %cx                      #  2     0x3   3      OPC=xchgw_r16_r16   
  callq .move_016_008_cx_r8b_r9b      #  3     0x6   5      OPC=callq_label     
  callq .move_r9b_to_byte_11_of_ymm1  #  4     0xb   5      OPC=callq_label     
  callq .move_r8b_to_byte_10_of_ymm1  #  5     0x10  5      OPC=callq_label     
  retq                                #  6     0x15  1      OPC=retq            
                                                                                
.size target, .-target
