  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                  #  Line  RIP   Bytes  Opcode                  
.target:                                #        0     0      OPC=<label>             
  vmovdqu %ymm2, %ymm10                 #  1     0     4      OPC=vmovdqu_ymm_ymm     
  vpmovzxdq %xmm3, %xmm6                #  2     0x4   5      OPC=vpmovzxdq_xmm_xmm   
  vminss %xmm6, %xmm3, %xmm11           #  3     0x9   4      OPC=vminss_xmm_xmm_xmm  
  callq .move_128_256_xmm10_xmm11_ymm1  #  4     0xd   5      OPC=callq_label         
  retq                                  #  5     0x12  1      OPC=retq                
                                                                                      
.size target, .-target
