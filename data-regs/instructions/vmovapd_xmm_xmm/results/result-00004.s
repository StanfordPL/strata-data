  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                                      #  Line  RIP   Bytes  Opcode               
.target:                                    #        0     0      OPC=<label>          
  vmovdqu %xmm2, %xmm1                      #  1     0     4      OPC=vmovdqu_xmm_xmm  
  callq .move_128_032_xmm2_eax_edx_r8d_r9d  #  2     0x4   5      OPC=callq_label      
  xaddb %r9b, %al                           #  3     0x9   4      OPC=xaddb_r8_r8      
  callq .move_r8b_to_byte_8_of_ymm1         #  4     0xd   5      OPC=callq_label      
  callq .move_r9b_to_byte_0_of_ymm1         #  5     0x12  5      OPC=callq_label      
  retq                                      #  6     0x17  1      OPC=retq             
                                                                                       
.size target, .-target
