  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                #  Line  RIP   Bytes  Opcode              
.target:                              #        0     0      OPC=<label>         
  movswl %bx, %ebx                    #  1     0     3      OPC=movswl_r32_r16  
  callq .move_byte_3_of_ymm1_to_r8b   #  2     0x3   5      OPC=callq_label     
  xchgb %bl, %r8b                     #  3     0x8   3      OPC=xchgb_r8_r8     
  callq .move_r8b_to_byte_11_of_ymm1  #  4     0xb   5      OPC=callq_label     
  retq                                #  5     0x10  1      OPC=retq            
                                                                                
.size target, .-target
