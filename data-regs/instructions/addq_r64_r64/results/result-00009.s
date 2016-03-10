  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text                              #  Line  RIP   Bytes  Opcode            
.target:                            #        0     0      OPC=<label>       
  callq .move_byte_4_of_rbx_to_r9b  #  1     0     5      OPC=callq_label   
  callq .move_r9b_to_byte_4_of_rbx  #  2     0x5   5      OPC=callq_label   
  callq .clear_cf                   #  3     0xa   5      OPC=callq_label   
  adcq %rcx, %rbx                   #  4     0xf   3      OPC=adcq_r64_r64  
  callq .set_szp_for_rbx            #  5     0x12  5      OPC=callq_label   
  retq                              #  6     0x17  1      OPC=retq          
                                                                            
.size target, .-target
