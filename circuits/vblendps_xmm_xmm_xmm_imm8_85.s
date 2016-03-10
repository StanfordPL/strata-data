  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                            #  Line  RIP   Bytes  Opcode                      
.target:                                          #        0     0      OPC=<label>                 
  vmovsldup %xmm3, %xmm0                          #  1     0     4      OPC=vmovsldup_xmm_xmm       
  vmovlhps %xmm3, %xmm2, %xmm5                    #  2     0x4   4      OPC=vmovlhps_xmm_xmm_xmm    
  vpunpckhdq %xmm2, %xmm0, %xmm2                  #  3     0x8   4      OPC=vpunpckhdq_xmm_xmm_xmm  
  callq .move_128_032_xmm2_xmm8_xmm9_xmm10_xmm11  #  4     0xc   5      OPC=callq_label             
  callq .move_128_256_xmm8_xmm9_ymm3              #  5     0x11  5      OPC=callq_label             
  vmovshdup %xmm5, %xmm11                         #  6     0x16  4      OPC=vmovshdup_xmm_xmm       
  vpunpckldq %xmm11, %xmm0, %xmm13                #  7     0x1a  5      OPC=vpunpckldq_xmm_xmm_xmm  
  vsubss %xmm3, %xmm2, %xmm1                      #  8     0x1f  4      OPC=vsubss_xmm_xmm_xmm      
  vmovsd %xmm13, %xmm1, %xmm1                     #  9     0x23  5      OPC=vmovsd_xmm_xmm_xmm      
  retq                                            #  10    0x28  1      OPC=retq                    
                                                                                                    
.size target, .-target
