  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text                                  #  Line  RIP   Bytes  Opcode                       
.target:                                #        0     0      OPC=<label>                  
  vpmovzxbq %xmm2, %xmm9                #  1     0     5      OPC=vpmovzxbq_xmm_xmm        
  vfmsub231ps %xmm9, %xmm1, %xmm2       #  2     0x5   5      OPC=vfmsub231ps_xmm_xmm_xmm  
  callq .move_256_128_ymm2_xmm10_xmm11  #  3     0xa   5      OPC=callq_label              
  vaddps %xmm1, %xmm10, %xmm13          #  4     0xf   4      OPC=vaddps_xmm_xmm_xmm       
  movupd %xmm13, %xmm1                  #  5     0x13  5      OPC=movupd_xmm_xmm           
  retq                                  #  6     0x18  1      OPC=retq                     
                                                                                           
.size target, .-target
