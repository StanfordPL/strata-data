  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                               #  Line  RIP   Bytes  Opcode             
.target:                             #        0     0      OPC=<label>        
  xorw %bx, %bx                      #  1     0     3      OPC=xorw_r16_r16   
  callq .move_byte_6_of_ymm1_to_r8b  #  2     0x3   5      OPC=callq_label    
  movzbw %r8b, %r14w                 #  3     0x8   5      OPC=movzbw_r16_r8  
  callq .read_pf_into_rbx            #  4     0xd   5      OPC=callq_label    
  xchgb %r14b, %bl                   #  5     0x12  3      OPC=xchgb_r8_r8    
  retq                               #  6     0x15  1      OPC=retq           
                                                                              
.size target, .-target
