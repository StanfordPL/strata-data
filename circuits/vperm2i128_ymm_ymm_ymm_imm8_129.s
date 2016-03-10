  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                #  Line  RIP   Bytes  Opcode                 
.target:                              #        0     0      OPC=<label>            
  vpmovzxbd %xmm2, %ymm4              #  1     0     5      OPC=vpmovzxbd_ymm_xmm  
  callq .move_256_128_ymm2_xmm8_xmm9  #  2     0x5   5      OPC=callq_label        
  vorps %xmm4, %xmm2, %xmm1           #  3     0xa   4      OPC=vorps_xmm_xmm_xmm  
  movapd %xmm9, %xmm1                 #  4     0xe   5      OPC=movapd_xmm_xmm     
  retq                                #  5     0x13  1      OPC=retq               
                                                                                   
.size target, .-target
