  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text                              #  Line  RIP   Bytes  Opcode             
.target:                            #        0     0      OPC=<label>        
  callq .set_zf                     #  1     0     5      OPC=callq_label    
  movsbq %cl, %rdx                  #  2     0x5   4      OPC=movsbq_r64_r8  
  callq .read_zf_into_rbx           #  3     0x9   5      OPC=callq_label    
  callq .move_032_016_edx_r8w_r9w   #  4     0xe   5      OPC=callq_label    
  callq .move_016_032_r8w_r9w_ebx   #  5     0x13  5      OPC=callq_label    
  callq .move_r9b_to_byte_2_of_rbx  #  6     0x18  5      OPC=callq_label    
  retq                              #  7     0x1d  1      OPC=retq           
                                                                             
.size target, .-target
