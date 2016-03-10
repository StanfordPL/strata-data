  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                              #  Line  RIP   Bytes  Opcode           
.target:                            #        0     0      OPC=<label>      
  callq .clear_zf                   #  1     0     5      OPC=callq_label  
  callq .read_zf_into_rbx           #  2     0x5   5      OPC=callq_label  
  callq .move_byte_6_of_rbx_to_r9b  #  3     0xa   5      OPC=callq_label  
  callq .move_r9b_to_byte_7_of_rbx  #  4     0xf   5      OPC=callq_label  
  movb %ah, %bl                     #  5     0x14  2      OPC=movb_r8_rh   
  retq                              #  6     0x16  1      OPC=retq         
                                                                           
.size target, .-target
