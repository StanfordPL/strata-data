  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                #  Line  RIP   Bytes  Opcode             
.target:                              #        0     0      OPC=<label>        
  callq .move_128_064_xmm2_r12_r13    #  1     0     5      OPC=callq_label    
  callq .move_032_064_r12d_r13d_rbx   #  2     0x5   5      OPC=callq_label    
  callq .move_byte_7_of_rbx_to_r9b    #  3     0xa   5      OPC=callq_label    
  movss %xmm2, %xmm1                  #  4     0xf   4      OPC=movss_xmm_xmm  
  callq .move_r9b_to_byte_11_of_ymm1  #  5     0x13  5      OPC=callq_label    
  callq .move_byte_6_of_rbx_to_r9b    #  6     0x18  5      OPC=callq_label    
  callq .move_r9b_to_byte_10_of_ymm1  #  7     0x1d  5      OPC=callq_label    
  retq                                #  8     0x22  1      OPC=retq           
                                                                               
.size target, .-target
