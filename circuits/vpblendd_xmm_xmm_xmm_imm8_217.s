  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                            #  Line  RIP   Bytes  Opcode                      
.target:                                          #        0     0      OPC=<label>                 
  vmovsldup %xmm2, %xmm6                          #  1     0     4      OPC=vmovsldup_xmm_xmm       
  vpunpckhdq %xmm3, %xmm6, %xmm1                  #  2     0x4   4      OPC=vpunpckhdq_xmm_xmm_xmm  
  callq .move_128_032_xmm2_xmm8_xmm9_xmm10_xmm11  #  3     0x8   5      OPC=callq_label             
  vmovss %xmm3, %xmm8, %xmm8                      #  4     0xd   4      OPC=vmovss_xmm_xmm_xmm      
  punpckldq %xmm9, %xmm8                          #  5     0x11  5      OPC=punpckldq_xmm_xmm       
  movsd %xmm8, %xmm1                              #  6     0x16  5      OPC=movsd_xmm_xmm           
  retq                                            #  7     0x1b  1      OPC=retq                    
                                                                                                    
.size target, .-target
