  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                          #  Line  RIP   Bytes  Opcode                      
.target:                                        #        0     0      OPC=<label>                 
  callq .move_128_032_xmm2_xmm4_xmm5_xmm6_xmm7  #  1     0     5      OPC=callq_label             
  vpunpckhdq %xmm4, %xmm3, %xmm1                #  2     0x5   4      OPC=vpunpckhdq_xmm_xmm_xmm  
  vmovapd %ymm1, %ymm6                          #  3     0x9   4      OPC=vmovapd_ymm_ymm         
  movshdup %xmm3, %xmm5                         #  4     0xd   4      OPC=movshdup_xmm_xmm        
  callq .move_032_128_xmm4_xmm5_xmm6_xmm7_xmm1  #  5     0x11  5      OPC=callq_label             
  retq                                          #  6     0x16  1      OPC=retq                    
                                                                                                  
.size target, .-target
