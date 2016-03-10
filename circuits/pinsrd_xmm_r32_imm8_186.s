  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                          #  Line  RIP   Bytes  Opcode                 
.target:                                        #        0     0      OPC=<label>            
  callq .move_128_032_xmm1_xmm4_xmm5_xmm6_xmm7  #  1     0     5      OPC=callq_label        
  vmovd %ebx, %xmm12                            #  2     0x5   4      OPC=vmovd_xmm_r32      
  vpmovzxdq %xmm12, %ymm6                       #  3     0x9   5      OPC=vpmovzxdq_ymm_xmm  
  callq .move_032_128_xmm4_xmm5_xmm6_xmm7_xmm1  #  4     0xe   5      OPC=callq_label        
  callq .move_128_032_xmm1_eax_edx_r8d_r9d      #  5     0x13  5      OPC=callq_label        
  callq .move_r8b_to_byte_8_of_ymm1             #  6     0x18  5      OPC=callq_label        
  retq                                          #  7     0x1d  1      OPC=retq               
                                                                                             
.size target, .-target
