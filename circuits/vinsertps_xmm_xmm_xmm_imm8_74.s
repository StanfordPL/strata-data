  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                            #  Line  RIP   Bytes  Opcode                     
.target:                                          #        0     0      OPC=<label>                
  pmovzxdq %xmm3, %xmm1                           #  1     0     5      OPC=pmovzxdq_xmm_xmm       
  vunpckhps %xmm2, %xmm1, %xmm9                   #  2     0x5   4      OPC=vunpckhps_xmm_xmm_xmm  
  vpmovzxdq %xmm9, %ymm7                          #  3     0x9   5      OPC=vpmovzxdq_ymm_xmm      
  callq .move_128_032_xmm1_xmm8_xmm9_xmm10_xmm11  #  4     0xe   5      OPC=callq_label            
  vaddsd %xmm9, %xmm7, %xmm1                      #  5     0x13  5      OPC=vaddsd_xmm_xmm_xmm     
  retq                                            #  6     0x18  1      OPC=retq                   
                                                                                                   
.size target, .-target
