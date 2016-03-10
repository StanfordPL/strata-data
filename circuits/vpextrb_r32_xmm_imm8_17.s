  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                               #  Line  RIP  Bytes  Opcode            
.target:                             #        0    0      OPC=<label>       
  xorq %rbx, %rbx                    #  1     0    3      OPC=xorq_r64_r64  
  sbbb %bl, %bh                      #  2     0x3  2      OPC=sbbb_rh_r8    
  callq .move_byte_1_of_ymm1_to_r8b  #  3     0x5  5      OPC=callq_label   
  xchgb %r8b, %bl                    #  4     0xa  3      OPC=xchgb_r8_r8   
  retq                               #  5     0xd  1      OPC=retq          
                                                                            
.size target, .-target
