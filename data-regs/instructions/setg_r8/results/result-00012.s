  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text                              #  Line  RIP   Bytes  Opcode            
.target:                            #        0     0      OPC=<label>       
  callq .read_of_into_rbx           #  1     0     5      OPC=callq_label   
  setnle %bl                        #  2     0x5   3      OPC=setnle_r8     
  xorq %r8, %r8                     #  3     0x8   3      OPC=xorq_r64_r64  
  callq .move_r8b_to_byte_7_of_rbx  #  4     0xb   5      OPC=callq_label   
  callq .move_r8b_to_byte_3_of_rbx  #  5     0x10  5      OPC=callq_label   
  retq                              #  6     0x15  1      OPC=retq          
                                                                            
.size target, .-target
