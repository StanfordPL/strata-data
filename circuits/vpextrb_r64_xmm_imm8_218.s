  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                      #  Line  RIP   Bytes  Opcode             
.target:                                    #        0     0      OPC=<label>        
  callq .move_128_032_xmm1_eax_edx_r8d_r9d  #  1     0     5      OPC=callq_label    
  callq .move_r8b_to_byte_2_of_ymm1         #  2     0x5   5      OPC=callq_label    
  callq .move_byte_10_of_ymm1_to_r9b        #  3     0xa   5      OPC=callq_label    
  movzbl %r9b, %ebx                         #  4     0xf   4      OPC=movzbl_r32_r8  
  retq                                      #  5     0x13  1      OPC=retq           
                                                                                     
.size target, .-target
