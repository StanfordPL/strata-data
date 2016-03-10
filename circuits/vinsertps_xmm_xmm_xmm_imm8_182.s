  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                            #  Line  RIP   Bytes  Opcode                      
.target:                                          #        0     0      OPC=<label>                 
  callq .move_128_032_xmm2_xmm8_xmm9_xmm10_xmm11  #  1     0     5      OPC=callq_label             
  vmovsldup %xmm3, %xmm12                         #  2     0x5   4      OPC=vmovsldup_xmm_xmm       
  vmaxss %xmm12, %xmm1, %xmm13                    #  3     0x9   5      OPC=vmaxss_xmm_xmm_xmm      
  vpunpckhdq %xmm12, %xmm10, %xmm9                #  4     0xe   5      OPC=vpunpckhdq_xmm_xmm_xmm  
  vhaddps %xmm13, %xmm9, %xmm1                    #  5     0x13  5      OPC=vhaddps_xmm_xmm_xmm     
  callq .move_64_128_xmm8_xmm9_xmm1               #  6     0x18  5      OPC=callq_label             
  retq                                            #  7     0x1d  1      OPC=retq                    
                                                                                                    
.size target, .-target
