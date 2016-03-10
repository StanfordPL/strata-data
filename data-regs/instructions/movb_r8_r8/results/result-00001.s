  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    3 bytes

# Text                              #  Line  RIP   Bytes  Opcode             
.target:                            #        0     0      OPC=<label>        
  movzbq %cl, %r10                  #  1     0     4      OPC=movzbq_r64_r8  
  callq .write_cl_to_zf             #  2     0x4   5      OPC=callq_label    
  callq .read_zf_into_rbx           #  3     0x9   5      OPC=callq_label    
  xchgw %r10w, %bx                  #  4     0xe   4      OPC=xchgw_r16_r16  
  callq .move_byte_6_of_rbx_to_r8b  #  5     0x12  5      OPC=callq_label    
  callq .move_r8b_to_byte_3_of_rbx  #  6     0x17  5      OPC=callq_label    
  retq                              #  7     0x1c  1      OPC=retq           
                                                                             
.size target, .-target
