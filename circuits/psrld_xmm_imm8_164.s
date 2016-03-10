  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                            #  Line  RIP   Bytes  Opcode                      
.target:                                          #        0     0      OPC=<label>                 
  vmovupd %xmm1, %xmm3                            #  1     0     4      OPC=vmovupd_xmm_xmm         
  callq .move_128_032_xmm3_xmm8_xmm9_xmm10_xmm11  #  2     0x4   5      OPC=callq_label             
  cvtps2dq %xmm9, %xmm7                           #  3     0x9   5      OPC=cvtps2dq_xmm_xmm        
  vpunpckhdq %xmm11, %xmm7, %xmm12                #  4     0xe   5      OPC=vpunpckhdq_xmm_xmm_xmm  
  pmovzxbq %xmm12, %xmm1                          #  5     0x13  6      OPC=pmovzxbq_xmm_xmm        
  retq                                            #  6     0x19  1      OPC=retq                    
                                                                                                    
.size target, .-target
