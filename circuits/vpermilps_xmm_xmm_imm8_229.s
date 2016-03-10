  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                          #  Line  RIP   Bytes  Opcode                 
.target:                                        #        0     0      OPC=<label>            
  callq .move_128_032_xmm2_xmm4_xmm5_xmm6_xmm7  #  1     0     5      OPC=callq_label        
  vpmovzxwd %xmm2, %xmm1                        #  2     0x5   5      OPC=vpmovzxwd_xmm_xmm  
  callq .move_128_64_xmm2_xmm10_xmm11           #  3     0xa   5      OPC=callq_label        
  vmovsldup %xmm5, %xmm10                       #  4     0xf   4      OPC=vmovsldup_xmm_xmm  
  callq .move_64_128_xmm10_xmm11_xmm1           #  5     0x13  5      OPC=callq_label        
  retq                                          #  6     0x18  1      OPC=retq               
                                                                                             
.size target, .-target
