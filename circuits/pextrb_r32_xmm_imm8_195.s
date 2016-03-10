  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                               #  Line  RIP  Bytes  Opcode             
.target:                             #        0    0      OPC=<label>        
  xorq %rbx, %rbx                    #  1     0    3      OPC=xorq_r64_r64   
  xchgw %bx, %bx                     #  2     0x3  3      OPC=xchgw_r16_r16  
  callq .move_byte_3_of_ymm1_to_r8b  #  3     0x6  5      OPC=callq_label    
  addb %r8b, %bl                     #  4     0xb  3      OPC=addb_r8_r8     
  retq                               #  5     0xe  1      OPC=retq           
                                                                             
.size target, .-target
