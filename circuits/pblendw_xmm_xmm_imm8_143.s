  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                      #  Line  RIP   Bytes  Opcode             
.target:                                    #        0     0      OPC=<label>        
  callq .move_128_032_xmm2_eax_edx_r8d_r9d  #  1     0     5      OPC=callq_label    
  movsd %xmm2, %xmm1                        #  2     0x5   4      OPC=movsd_xmm_xmm  
  callq .move_032_064_r8d_r9d_rbx           #  3     0x9   5      OPC=callq_label    
  callq .move_byte_6_of_rbx_to_r8b          #  4     0xe   5      OPC=callq_label    
  callq .move_r8b_to_byte_14_of_ymm1        #  5     0x13  5      OPC=callq_label    
  callq .move_byte_7_of_rbx_to_r9b          #  6     0x18  5      OPC=callq_label    
  callq .move_r9b_to_byte_15_of_ymm1        #  7     0x1d  5      OPC=callq_label    
  retq                                      #  8     0x22  1      OPC=retq           
                                                                                     
.size target, .-target
