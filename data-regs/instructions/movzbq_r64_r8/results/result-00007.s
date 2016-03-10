  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                              #  Line  RIP   Bytes  Opcode           
.target:                            #        0     0      OPC=<label>      
  callq .clear_sf                   #  1     0     5      OPC=callq_label  
  callq .read_sf_into_rbx           #  2     0x5   5      OPC=callq_label  
  clc                               #  3     0xa   1      OPC=clc          
  adcb %cl, %bl                     #  4     0xb   2      OPC=adcb_r8_r8   
  callq .move_byte_3_of_rbx_to_r9b  #  5     0xd   5      OPC=callq_label  
  callq .move_r9b_to_byte_7_of_rbx  #  6     0x12  5      OPC=callq_label  
  retq                              #  7     0x17  1      OPC=retq         
                                                                           
.size target, .-target
