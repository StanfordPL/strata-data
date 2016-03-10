  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                          #  Line  RIP   Bytes  Opcode                      
.target:                                        #        0     0      OPC=<label>                 
  callq .move_128_64_xmm2_xmm10_xmm11           #  1     0     5      OPC=callq_label             
  callq .move_128_032_xmm2_xmm4_xmm5_xmm6_xmm7  #  2     0x5   5      OPC=callq_label             
  movsd %xmm11, %xmm4                           #  3     0xa   5      OPC=movsd_xmm_xmm           
  callq .move_032_128_xmm4_xmm5_xmm6_xmm7_xmm1  #  4     0xf   5      OPC=callq_label             
  vmovshdup %xmm10, %xmm10                      #  5     0x14  5      OPC=vmovshdup_xmm_xmm       
  vmaxpd %xmm11, %xmm4, %xmm14                  #  6     0x19  5      OPC=vmaxpd_xmm_xmm_xmm      
  vmovss %xmm14, %xmm10, %xmm11                 #  7     0x1e  5      OPC=vmovss_xmm_xmm_xmm      
  vpunpckldq %xmm11, %xmm10, %xmm13             #  8     0x23  5      OPC=vpunpckldq_xmm_xmm_xmm  
  unpcklps %xmm13, %xmm1                        #  9     0x28  4      OPC=unpcklps_xmm_xmm        
  retq                                          #  10    0x2c  1      OPC=retq                    
                                                                                                  
.size target, .-target
