  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                               #  Line  RIP   Bytes  Opcode             
.target:                             #        0     0      OPC=<label>        
  callq .move_byte_7_of_ymm1_to_r8b  #  1     0     5      OPC=callq_label    
  movzbw %r8b, %r14w                 #  2     0x5   5      OPC=movzbw_r16_r8  
  movzbq %r14b, %rbx                 #  3     0xa   4      OPC=movzbq_r64_r8  
  salb $0x1, %bh                     #  4     0xe   2      OPC=salb_rh_one    
  retq                               #  5     0x10  1      OPC=retq           
                                                                              
.size target, .-target
