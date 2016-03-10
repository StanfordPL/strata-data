  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                               #  Line  RIP   Bytes  Opcode                 
.target:                             #        0     0      OPC=<label>            
  vpmovsxwd %xmm1, %ymm2             #  1     0     5      OPC=vpmovsxwd_ymm_xmm  
  vpmovzxwd %xmm2, %xmm1             #  2     0x5   5      OPC=vpmovzxwd_xmm_xmm  
  callq .move_128_64_xmm1_xmm8_xmm9  #  3     0xa   5      OPC=callq_label        
  movd %xmm9, %ebx                   #  4     0xf   5      OPC=movd_r32_xmm       
  retq                               #  5     0x14  1      OPC=retq               
                                                                                  
.size target, .-target
