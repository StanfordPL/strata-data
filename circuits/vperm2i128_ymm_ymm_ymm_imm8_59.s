  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                          #  Line  RIP   Bytes  Opcode                  
.target:                                        #        0     0      OPC=<label>             
  vmovdqu %ymm3, %ymm13                         #  1     0     4      OPC=vmovdqu_ymm_ymm     
  vpandn %xmm2, %xmm2, %xmm2                    #  2     0x4   4      OPC=vpandn_xmm_xmm_xmm  
  callq .move_128_032_xmm2_xmm4_xmm5_xmm6_xmm7  #  3     0x8   5      OPC=callq_label         
  vpmovzxbq %xmm4, %ymm1                        #  4     0xd   5      OPC=vpmovzxbq_ymm_xmm   
  pmovzxbd %xmm2, %xmm13                        #  5     0x12  6      OPC=pmovzxbd_xmm_xmm    
  vpor %ymm1, %ymm13, %ymm1                     #  6     0x18  4      OPC=vpor_ymm_ymm_ymm    
  retq                                          #  7     0x1c  1      OPC=retq                
                                                                                              
.size target, .-target
