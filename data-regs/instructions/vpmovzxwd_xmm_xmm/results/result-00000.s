  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                      #  Line  RIP   Bytes  Opcode                   
.target:                                    #        0     0      OPC=<label>              
  callq .move_128_032_xmm2_eax_edx_r8d_r9d  #  1     0     5      OPC=callq_label          
  vpmovzxwq %xmm2, %xmm9                    #  2     0x5   5      OPC=vpmovzxwq_xmm_xmm    
  vmovd %edx, %xmm11                        #  3     0xa   4      OPC=vmovd_xmm_r32        
  vpmovzxwq %xmm11, %xmm1                   #  4     0xe   5      OPC=vpmovzxwq_xmm_xmm    
  vhaddps %ymm1, %ymm9, %ymm1               #  5     0x13  4      OPC=vhaddps_ymm_ymm_ymm  
  retq                                      #  6     0x17  1      OPC=retq                 
                                                                                           
.size target, .-target
