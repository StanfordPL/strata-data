  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                      #  Line  RIP   Bytes  Opcode                 
.target:                                    #        0     0      OPC=<label>            
  callq .move_128_64_xmm1_xmm10_xmm11       #  1     0     5      OPC=callq_label        
  vpmovzxwq %xmm11, %ymm3                   #  2     0x5   5      OPC=vpmovzxwq_ymm_xmm  
  vmovaps %ymm3, %ymm1                      #  3     0xa   4      OPC=vmovaps_ymm_ymm    
  callq .move_128_032_xmm1_eax_edx_r8d_r9d  #  4     0xe   5      OPC=callq_label        
  callq .move_032_064_r8d_r9d_rbx           #  5     0x13  5      OPC=callq_label        
  retq                                      #  6     0x18  1      OPC=retq               
                                                                                         
.size target, .-target
