  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                  #  Line  RIP   Bytes  Opcode                        
.target:                                #        0     0      OPC=<label>                   
  callq .move_256_128_ymm1_xmm12_xmm13  #  1     0     5      OPC=callq_label               
  vsubss %xmm12, %xmm13, %xmm1          #  2     0x5   5      OPC=vsubss_xmm_xmm_xmm        
  vfnmsub231pd %xmm1, %xmm13, %xmm1     #  3     0xa   5      OPC=vfnmsub231pd_xmm_xmm_xmm  
  movdqu %xmm13, %xmm1                  #  4     0xf   5      OPC=movdqu_xmm_xmm            
  retq                                  #  5     0x14  1      OPC=retq                      
                                                                                            
.size target, .-target
