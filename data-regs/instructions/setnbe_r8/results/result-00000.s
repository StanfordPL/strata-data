  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text                              #  Line  RIP   Bytes  Opcode            
.target:                            #        0     0      OPC=<label>       
  callq .read_zf_into_rcx           #  1     0     5      OPC=callq_label   
  adcw %cx, %cx                     #  2     0x5   3      OPC=adcw_r16_r16  
  callq .read_zf_into_rbx           #  3     0x8   5      OPC=callq_label   
  callq .move_byte_6_of_rbx_to_r8b  #  4     0xd   5      OPC=callq_label   
  callq .move_r8b_to_byte_2_of_rbx  #  5     0x12  5      OPC=callq_label   
  retq                              #  6     0x17  1      OPC=retq          
                                                                            
.size target, .-target
