  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                               #  Line  RIP   Bytes  Opcode             
.target:                             #        0     0      OPC=<label>        
  callq .move_byte_0_of_ymm1_to_r9b  #  1     0     5      OPC=callq_label    
  orb %r9b, %r9b                     #  2     0x5   3      OPC=orb_r8_r8      
  movzbl %r9b, %ebx                  #  3     0x8   4      OPC=movzbl_r32_r8  
  callq .move_byte_2_of_ymm1_to_r9b  #  4     0xc   5      OPC=callq_label    
  xchgb %r9b, %bl                    #  5     0x11  3      OPC=xchgb_r8_r8    
  retq                               #  6     0x14  1      OPC=retq           
                                                                              
.size target, .-target
