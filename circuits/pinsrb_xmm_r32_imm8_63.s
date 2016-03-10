  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                #  Line  RIP  Bytes  Opcode             
.target:                              #        0    0      OPC=<label>        
  movzbq %bl, %rcx                    #  1     0    4      OPC=movzbq_r64_r8  
  movsbl %cl, %r8d                    #  2     0x4  4      OPC=movsbl_r32_r8  
  callq .move_r8b_to_byte_15_of_ymm1  #  3     0x8  5      OPC=callq_label    
  retq                                #  4     0xd  1      OPC=retq           
                                                                              
.size target, .-target
