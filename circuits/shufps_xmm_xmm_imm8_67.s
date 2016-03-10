  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                                            #  Line  RIP   Bytes  Opcode                      
.target:                                          #        0     0      OPC=<label>                 
  vmovddup %xmm2, %xmm3                           #  1     0     4      OPC=vmovddup_xmm_xmm        
  callq .move_128_032_xmm1_xmm8_xmm9_xmm10_xmm11  #  2     0x4   5      OPC=callq_label             
  vmovaps %xmm3, %xmm9                            #  3     0x9   4      OPC=vmovaps_xmm_xmm         
  vpunpckldq %xmm1, %xmm11, %xmm8                 #  4     0xd   4      OPC=vpunpckldq_xmm_xmm_xmm  
  callq .move_64_128_xmm8_xmm9_xmm1               #  5     0x11  5      OPC=callq_label             
  retq                                            #  6     0x16  1      OPC=retq                    
                                                                                                    
.size target, .-target
