  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                          #  Line  RIP   Bytes  Opcode                 
.target:                                        #        0     0      OPC=<label>            
  callq .move_128_032_xmm2_xmm4_xmm5_xmm6_xmm7  #  1     0     5      OPC=callq_label        
  vpmovsxbd %xmm7, %ymm2                        #  2     0x5   5      OPC=vpmovsxbd_ymm_xmm  
  vmovups %xmm6, %xmm7                          #  3     0xa   4      OPC=vmovups_xmm_xmm    
  callq .move_032_128_xmm4_xmm5_xmm6_xmm7_xmm1  #  4     0xe   5      OPC=callq_label        
  callq .move_128_032_xmm2_eax_edx_r8d_r9d      #  5     0x13  5      OPC=callq_label        
  callq .move_r8b_to_byte_8_of_ymm1             #  6     0x18  5      OPC=callq_label        
  callq .move_r9b_to_byte_9_of_ymm1             #  7     0x1d  5      OPC=callq_label        
  retq                                          #  8     0x22  1      OPC=retq               
                                                                                             
.size target, .-target
