  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    3 bytes

# Text                              #  Line  RIP  Bytes  Opcode            
.target:                            #        0    0      OPC=<label>       
  callq .move_byte_3_of_rbx_to_r8b  #  1     0    5      OPC=callq_label   
  xaddb %r8b, %r8b                  #  2     0x5  4      OPC=xaddb_r8_r8   
  adcl %ebx, %ebx                   #  3     0x9  2      OPC=adcl_r32_r32  
  retq                              #  4     0xb  1      OPC=retq          
                                                                           
.size target, .-target
