  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                  #  Line  RIP   Bytes  Opcode                  
.target:                                #        0     0      OPC=<label>             
  vmulpd %xmm2, %xmm1, %xmm3            #  1     0     4      OPC=vmulpd_xmm_xmm_xmm  
  callq .move_256_128_ymm3_xmm10_xmm11  #  2     0x4   5      OPC=callq_label         
  vpmovzxwd %xmm3, %ymm13               #  3     0x9   5      OPC=vpmovzxwd_ymm_xmm   
  haddpd %xmm13, %xmm10                 #  4     0xe   5      OPC=haddpd_xmm_xmm      
  callq .move_64_128_xmm10_xmm11_xmm1   #  5     0x13  5      OPC=callq_label         
  retq                                  #  6     0x18  1      OPC=retq                
                                                                                      
.size target, .-target
