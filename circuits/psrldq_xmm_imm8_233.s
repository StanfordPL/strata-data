  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                            #  Line  RIP   Bytes  Opcode                   
.target:                                          #        0     0      OPC=<label>              
  vpmovzxbd %xmm1, %xmm11                         #  1     0     5      OPC=vpmovzxbd_xmm_xmm    
  callq .move_128_032_xmm1_xmm8_xmm9_xmm10_xmm11  #  2     0x5   5      OPC=callq_label          
  vandnps %ymm11, %ymm11, %ymm4                   #  3     0xa   5      OPC=vandnps_ymm_ymm_ymm  
  movddup %xmm4, %xmm1                            #  4     0xf   4      OPC=movddup_xmm_xmm      
  retq                                            #  5     0x13  1      OPC=retq                 
                                                                                                 
.size target, .-target
