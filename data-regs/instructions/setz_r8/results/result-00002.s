  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text                              #  Line  RIP   Bytes  Opcode             
.target:                            #        0     0      OPC=<label>        
  callq .read_zf_into_rbx           #  1     0     5      OPC=callq_label    
  movsbl %bl, %r8d                  #  2     0x5   4      OPC=movsbl_r32_r8  
  movzbl %bl, %ebx                  #  3     0x9   3      OPC=movzbl_r32_r8  
  callq .move_r8b_to_byte_3_of_rbx  #  4     0xc   5      OPC=callq_label    
  retq                              #  5     0x11  1      OPC=retq           
                                                                             
.size target, .-target
