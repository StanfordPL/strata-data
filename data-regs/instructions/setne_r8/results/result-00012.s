  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text                              #  Line  RIP   Bytes  Opcode             
.target:                            #        0     0      OPC=<label>        
  callq .read_zf_into_rbx           #  1     0     5      OPC=callq_label    
  callq .move_byte_6_of_rbx_to_r9b  #  2     0x5   5      OPC=callq_label    
  movzbl %r9b, %edx                 #  3     0xa   4      OPC=movzbl_r32_r8  
  xorw %bx, %dx                     #  4     0xe   3      OPC=xorw_r16_r16   
  sete %bl                          #  5     0x11  3      OPC=sete_r8        
  callq .move_r9b_to_byte_3_of_rbx  #  6     0x14  5      OPC=callq_label    
  retq                              #  7     0x19  1      OPC=retq           
                                                                             
.size target, .-target
