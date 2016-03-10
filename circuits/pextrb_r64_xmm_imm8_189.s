  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                #  Line  RIP   Bytes  Opcode           
.target:                              #        0     0      OPC=<label>      
  callq .move_128_064_xmm1_r8_r9      #  1     0     5      OPC=callq_label  
  callq .move_byte_13_of_ymm1_to_r9b  #  2     0x5   5      OPC=callq_label  
  negl %r8d                           #  3     0xa   3      OPC=negl_r32     
  callq .read_cf_into_rbx             #  4     0xd   5      OPC=callq_label  
  xaddb %bl, %r9b                     #  5     0x12  4      OPC=xaddb_r8_r8  
  retq                                #  6     0x16  1      OPC=retq         
                                                                             
.size target, .-target
