  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                      #  Line  RIP   Bytes  Opcode            
.target:                                    #        0     0      OPC=<label>       
  callq .move_128_032_xmm1_eax_edx_r8d_r9d  #  1     0     5      OPC=callq_label   
  callq .move_r8b_to_byte_8_of_ymm1         #  2     0x5   5      OPC=callq_label   
  addw %r8w, %r9w                           #  3     0xa   4      OPC=addw_r16_r16  
  callq .move_byte_15_of_ymm1_to_r9b        #  4     0xe   5      OPC=callq_label   
  callq .read_zf_into_rbx                   #  5     0x13  5      OPC=callq_label   
  callq .move_byte_14_of_ymm1_to_r8b        #  6     0x18  5      OPC=callq_label   
  callq .move_008_016_r8b_r9b_bx            #  7     0x1d  5      OPC=callq_label   
  retq                                      #  8     0x22  1      OPC=retq          
                                                                                    
.size target, .-target
