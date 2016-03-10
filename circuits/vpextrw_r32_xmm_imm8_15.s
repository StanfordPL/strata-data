  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                      #  Line  RIP   Bytes  Opcode                   
.target:                                    #        0     0      OPC=<label>              
  callq .move_128_032_xmm1_eax_edx_r8d_r9d  #  1     0     5      OPC=callq_label          
  orw %r9w, %r9w                            #  2     0x5   4      OPC=orw_r16_r16          
  callq .read_sf_into_rbx                   #  3     0x9   5      OPC=callq_label          
  vsqrtsd %xmm1, %xmm1, %xmm1               #  4     0xe   4      OPC=vsqrtsd_xmm_xmm_xmm  
  callq .move_byte_14_of_ymm1_to_r8b        #  5     0x12  5      OPC=callq_label          
  callq .move_byte_15_of_ymm1_to_r9b        #  6     0x17  5      OPC=callq_label          
  callq .move_008_016_r8b_r9b_bx            #  7     0x1c  5      OPC=callq_label          
  retq                                      #  8     0x21  1      OPC=retq                 
                                                                                           
.size target, .-target
