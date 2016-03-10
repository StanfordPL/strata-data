  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                 #  Line  RIP   Bytes  Opcode                     
.target:                               #        0     0      OPC=<label>                
  callq .move_128_64_xmm3_xmm12_xmm13  #  1     0     5      OPC=callq_label            
  vunpcklpd %xmm12, %xmm12, %xmm5      #  2     0x5   5      OPC=vunpcklpd_xmm_xmm_xmm  
  unpckhpd %xmm5, %xmm2                #  3     0xa   4      OPC=unpckhpd_xmm_xmm       
  vmovdqa %xmm2, %xmm1                 #  4     0xe   4      OPC=vmovdqa_xmm_xmm        
  retq                                 #  5     0x12  1      OPC=retq                   
                                                                                        
.size target, .-target
