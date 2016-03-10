  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                 #  Line  RIP   Bytes  Opcode                     
.target:                               #        0     0      OPC=<label>                
  callq .move_128_64_xmm2_xmm12_xmm13  #  1     0     5      OPC=callq_label            
  vmovshdup %xmm13, %xmm5              #  2     0x5   5      OPC=vmovshdup_xmm_xmm      
  callq .move_64_128_xmm12_xmm13_xmm1  #  3     0xa   5      OPC=callq_label            
  vpmovzxdq %xmm5, %ymm13              #  4     0xf   5      OPC=vpmovzxdq_ymm_xmm      
  vunpckhps %xmm1, %xmm13, %xmm15      #  5     0x14  4      OPC=vunpckhps_xmm_xmm_xmm  
  movss %xmm15, %xmm1                  #  6     0x18  5      OPC=movss_xmm_xmm          
  movlhps %xmm15, %xmm1                #  7     0x1d  4      OPC=movlhps_xmm_xmm        
  retq                                 #  8     0x21  1      OPC=retq                   
                                                                                        
.size target, .-target
