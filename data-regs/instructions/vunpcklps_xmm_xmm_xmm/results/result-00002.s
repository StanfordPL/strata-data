  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                                          #  Line  RIP   Bytes  Opcode                      
.target:                                        #        0     0      OPC=<label>                 
  callq .move_128_032_xmm2_xmm4_xmm5_xmm6_xmm7  #  1     0     5      OPC=callq_label             
  vmovq %xmm4, %xmm1                            #  2     0x5   4      OPC=vmovq_xmm_xmm           
  vpunpckldq %xmm3, %xmm2, %xmm13               #  3     0x9   4      OPC=vpunpckldq_xmm_xmm_xmm  
  vpor %ymm1, %ymm13, %ymm1                     #  4     0xd   4      OPC=vpor_ymm_ymm_ymm        
  retq                                          #  5     0x11  1      OPC=retq                    
                                                                                                  
.size target, .-target
