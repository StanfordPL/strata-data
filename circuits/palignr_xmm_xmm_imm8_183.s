  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                #  Line  RIP   Bytes  Opcode                          
.target:                              #        0     0      OPC=<label>                     
  vpmovsxwd %xmm1, %xmm5              #  1     0     5      OPC=vpmovsxwd_xmm_xmm           
  vfmsubadd213ps %xmm5, %xmm1, %xmm2  #  2     0x5   5      OPC=vfmsubadd213ps_xmm_xmm_xmm  
  callq .move_256_128_ymm2_xmm8_xmm9  #  3     0xa   5      OPC=callq_label                 
  cvtps2pd %xmm9, %xmm1               #  4     0xf   4      OPC=cvtps2pd_xmm_xmm            
  retq                                #  5     0x13  1      OPC=retq                        
                                                                                            
.size target, .-target
