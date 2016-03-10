  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text                              #  Line  RIP   Bytes  Opcode           
.target:                            #        0     0      OPC=<label>      
  callq .read_zf_into_rcx           #  1     0     5      OPC=callq_label  
  callq .read_zf_into_rbx           #  2     0x5   5      OPC=callq_label  
  setng %bl                         #  3     0xa   3      OPC=setng_r8     
  callq .move_064_032_rcx_r8d_r9d   #  4     0xd   5      OPC=callq_label  
  callq .move_r8b_to_byte_5_of_rbx  #  5     0x12  5      OPC=callq_label  
  retq                              #  6     0x17  1      OPC=retq         
                                                                           
.size target, .-target
