  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                      #  Line  RIP   Bytes  Opcode                 
.target:                                    #        0     0      OPC=<label>            
  vmovups %xmm2, %xmm1                      #  1     0     4      OPC=vmovups_xmm_xmm    
  callq .move_128_032_xmm2_eax_edx_r8d_r9d  #  2     0x4   5      OPC=callq_label        
  callq .move_byte_3_of_ymm1_to_r9b         #  3     0x9   5      OPC=callq_label        
  callq .move_r9b_to_byte_24_of_ymm1        #  4     0xe   5      OPC=callq_label        
  xchgl %edx, %eax                          #  5     0x13  1      OPC=xchgl_eax_r32      
  punpckldq %xmm2, %xmm2                    #  6     0x14  4      OPC=punpckldq_xmm_xmm  
  callq .move_032_016_edx_r8w_r9w           #  7     0x18  5      OPC=callq_label        
  callq .move_r9b_to_byte_16_of_ymm1        #  8     0x1d  5      OPC=callq_label        
  pmovzxbq %xmm2, %xmm1                     #  9     0x22  5      OPC=pmovzxbq_xmm_xmm   
  retq                                      #  10    0x27  1      OPC=retq               
                                                                                         
.size target, .-target
