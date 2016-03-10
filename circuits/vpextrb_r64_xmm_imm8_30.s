  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                #  Line  RIP  Bytes  Opcode             
.target:                              #        0    0      OPC=<label>        
  callq .move_byte_14_of_ymm1_to_r8b  #  1     0    5      OPC=callq_label    
  movsbw %r8b, %ax                    #  2     0x5  5      OPC=movsbw_r16_r8  
  movzbl %al, %ebx                    #  3     0xa  3      OPC=movzbl_r32_r8  
  retq                                #  4     0xd  1      OPC=retq           
                                                                              
.size target, .-target
