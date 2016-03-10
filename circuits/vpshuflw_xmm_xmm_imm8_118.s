  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                               #  Line  RIP   Bytes  Opcode                    
.target:                             #        0     0      OPC=<label>               
  vpmovzxwd %xmm2, %ymm1             #  1     0     5      OPC=vpmovzxwd_ymm_xmm     
  callq .move_128_64_xmm1_xmm8_xmm9  #  2     0x5   5      OPC=callq_label           
  xorpd %xmm8, %xmm2                 #  3     0xa   5      OPC=xorpd_xmm_xmm         
  vpbroadcastd %xmm2, %xmm14         #  4     0xf   5      OPC=vpbroadcastd_xmm_xmm  
  vorps %xmm1, %xmm14, %xmm1         #  5     0x14  4      OPC=vorps_xmm_xmm_xmm     
  unpckhpd %xmm2, %xmm1              #  6     0x18  4      OPC=unpckhpd_xmm_xmm      
  retq                               #  7     0x1c  1      OPC=retq                  
                                                                                     
.size target, .-target
