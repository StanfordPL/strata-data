  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                      #  Line  RIP   Bytes  Opcode                 
.target:                                    #        0     0      OPC=<label>            
  vpxor %xmm13, %xmm13, %xmm3               #  1     0     5      OPC=vpxor_xmm_xmm_xmm  
  callq .move_128_032_xmm3_eax_edx_r8d_r9d  #  2     0x5   5      OPC=callq_label        
  callq .move_032_064_r8d_r9d_rbx           #  3     0xa   5      OPC=callq_label        
  callq .move_byte_14_of_ymm1_to_r8b        #  4     0xf   5      OPC=callq_label        
  callq .move_byte_15_of_ymm1_to_r9b        #  5     0x14  5      OPC=callq_label        
  callq .move_008_016_r8b_r9b_bx            #  6     0x19  5      OPC=callq_label        
  retq                                      #  7     0x1e  1      OPC=retq               
                                                                                         
.size target, .-target
