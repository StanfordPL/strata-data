  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                      #  Line  RIP   Bytes  Opcode              
.target:                                    #        0     0      OPC=<label>         
  callq .move_128_032_xmm1_eax_edx_r8d_r9d  #  1     0     5      OPC=callq_label     
  callq .move_byte_1_of_ymm1_to_r8b         #  2     0x5   5      OPC=callq_label     
  xaddb %dl, %r8b                           #  3     0xa   4      OPC=xaddb_r8_r8     
  callq .move_032_016_edx_r8w_r9w           #  4     0xe   5      OPC=callq_label     
  movzwl %r9w, %ebx                         #  5     0x13  4      OPC=movzwl_r32_r16  
  retq                                      #  6     0x17  1      OPC=retq            
                                                                                      
.size target, .-target
