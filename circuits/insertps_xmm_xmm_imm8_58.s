  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                 #  Line  RIP   Bytes  Opcode                     
.target:                               #        0     0      OPC=<label>                
  callq .move_128_64_xmm1_xmm12_xmm13  #  1     0     5      OPC=callq_label            
  vunpcklps %xmm13, %xmm12, %xmm9      #  2     0x5   5      OPC=vunpcklps_xmm_xmm_xmm  
  pmovzxdq %xmm9, %xmm1                #  3     0xa   6      OPC=pmovzxdq_xmm_xmm       
  retq                                 #  4     0x10  1      OPC=retq                   
                                                                                        
.size target, .-target
