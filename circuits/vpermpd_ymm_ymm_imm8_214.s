  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                  #  Line  RIP   Bytes  Opcode                     
.target:                                #        0     0      OPC=<label>                
  callq .move_256_128_ymm2_xmm8_xmm9    #  1     0     5      OPC=callq_label            
  vunpckhpd %xmm9, %xmm8, %xmm13        #  2     0x5   5      OPC=vunpckhpd_xmm_xmm_xmm  
  vmovdqa %xmm9, %xmm12                 #  3     0xa   5      OPC=vmovdqa_xmm_xmm        
  callq .move_128_256_xmm12_xmm13_ymm1  #  4     0xf   5      OPC=callq_label            
  callq .move_64_128_xmm12_xmm13_xmm1   #  5     0x14  5      OPC=callq_label            
  retq                                  #  6     0x19  1      OPC=retq                   
                                                                                         
.size target, .-target
