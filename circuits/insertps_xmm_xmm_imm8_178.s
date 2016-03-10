  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                 #  Line  RIP   Bytes  Opcode                     
.target:                               #        0     0      OPC=<label>                
  pmovzxdq %xmm1, %xmm12               #  1     0     6      OPC=pmovzxdq_xmm_xmm       
  movups %xmm2, %xmm11                 #  2     0x6   4      OPC=movups_xmm_xmm         
  vunpckhps %xmm11, %xmm1, %xmm13      #  3     0xa   5      OPC=vunpckhps_xmm_xmm_xmm  
  callq .move_64_128_xmm12_xmm13_xmm1  #  4     0xf   5      OPC=callq_label            
  retq                                 #  5     0x14  1      OPC=retq                   
                                                                                        
.size target, .-target
