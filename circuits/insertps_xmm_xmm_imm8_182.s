  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                          #  Line  RIP   Bytes  Opcode                      
.target:                                        #        0     0      OPC=<label>                 
  callq .move_128_032_xmm1_xmm4_xmm5_xmm6_xmm7  #  1     0     5      OPC=callq_label             
  punpckhdq %xmm2, %xmm5                        #  2     0x5   4      OPC=punpckhdq_xmm_xmm       
  vpunpckldq %xmm5, %xmm4, %xmm4                #  3     0x9   4      OPC=vpunpckldq_xmm_xmm_xmm  
  movdqa %xmm4, %xmm1                           #  4     0xd   4      OPC=movdqa_xmm_xmm          
  retq                                          #  5     0x11  1      OPC=retq                    
                                                                                                  
.size target, .-target
