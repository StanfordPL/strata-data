  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                  #  Line  RIP   Bytes  Opcode                     
.target:                                #        0     0      OPC=<label>                
  vpmovzxbq %xmm2, %ymm2                #  1     0     5      OPC=vpmovzxbq_ymm_xmm      
  vhaddps %ymm2, %ymm2, %ymm3           #  2     0x5   4      OPC=vhaddps_ymm_ymm_ymm    
  callq .move_256_128_ymm3_xmm10_xmm11  #  3     0x9   5      OPC=callq_label            
  vunpcklpd %xmm11, %xmm3, %xmm1        #  4     0xe   5      OPC=vunpcklpd_xmm_xmm_xmm  
  retq                                  #  5     0x13  1      OPC=retq                   
                                                                                         
.size target, .-target
