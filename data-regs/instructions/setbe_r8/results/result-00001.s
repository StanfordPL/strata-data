  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text                              #  Line  RIP   Bytes  Opcode            
.target:                            #        0     0      OPC=<label>       
  callq .read_cf_into_rcx           #  1     0     5      OPC=callq_label   
  movw %cx, %r9w                    #  2     0x5   4      OPC=movw_r16_r16  
  shrq %cl, %rcx                    #  3     0x9   3      OPC=shrq_r64_cl   
  callq .read_zf_into_rbx           #  4     0xc   5      OPC=callq_label   
  callq .move_r9b_to_byte_7_of_rbx  #  5     0x11  5      OPC=callq_label   
  retq                              #  6     0x16  1      OPC=retq          
                                                                            
.size target, .-target
