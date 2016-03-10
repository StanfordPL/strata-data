  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                          #  Line  RIP   Bytes  Opcode                      
.target:                                        #        0     0      OPC=<label>                 
  callq .move_128_032_xmm1_xmm4_xmm5_xmm6_xmm7  #  1     0     5      OPC=callq_label             
  vpunpckhdq %xmm1, %xmm4, %xmm15               #  2     0x5   4      OPC=vpunpckhdq_xmm_xmm_xmm  
  movups %xmm15, %xmm4                          #  3     0x9   4      OPC=movups_xmm_xmm          
  movdqu %xmm15, %xmm6                          #  4     0xd   5      OPC=movdqu_xmm_xmm          
  callq .move_032_128_xmm4_xmm5_xmm6_xmm7_xmm1  #  5     0x12  5      OPC=callq_label             
  retq                                          #  6     0x17  1      OPC=retq                    
                                                                                                  
.size target, .-target
