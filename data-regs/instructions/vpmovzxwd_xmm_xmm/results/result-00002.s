  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                          #  Line  RIP   Bytes  Opcode                   
.target:                                        #        0     0      OPC=<label>              
  callq .move_128_032_xmm2_xmm4_xmm5_xmm6_xmm7  #  1     0     5      OPC=callq_label          
  vpmovzxwq %xmm5, %xmm3                        #  2     0x5   5      OPC=vpmovzxwq_xmm_xmm    
  vpmovzxwq %xmm2, %xmm0                        #  3     0xa   5      OPC=vpmovzxwq_xmm_xmm    
  vhaddps %xmm3, %xmm0, %xmm1                   #  4     0xf   4      OPC=vhaddps_xmm_xmm_xmm  
  callq .move_128_032_xmm3_eax_edx_r8d_r9d      #  5     0x13  5      OPC=callq_label          
  callq .move_r9b_to_byte_27_of_ymm1            #  6     0x18  5      OPC=callq_label          
  retq                                          #  7     0x1d  1      OPC=retq                 
                                                                                               
.size target, .-target
