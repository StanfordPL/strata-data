  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                #  Line  RIP  Bytes  Opcode             
.target:                              #        0    0      OPC=<label>        
  xorl %ebx, %ebx                     #  1     0    2      OPC=xorl_r32_r32   
  callq .move_byte_10_of_ymm1_to_r9b  #  2     0x2  5      OPC=callq_label    
  movzbl %r9b, %ebp                   #  3     0x7  4      OPC=movzbl_r32_r8  
  xchgb %bl, %bpl                     #  4     0xb  3      OPC=xchgb_r8_r8    
  retq                                #  5     0xe  1      OPC=retq           
                                                                              
.size target, .-target
