  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                                          #  Line  RIP   Bytes  Opcode                     
.target:                                        #        0     0      OPC=<label>                
  callq .move_128_032_xmm1_xmm4_xmm5_xmm6_xmm7  #  1     0     5      OPC=callq_label            
  subsd %xmm5, %xmm5                            #  2     0x5   4      OPC=subsd_xmm_xmm          
  callq .move_032_128_xmm4_xmm5_xmm6_xmm7_xmm1  #  3     0x9   5      OPC=callq_label            
  vmovsldup %xmm2, %xmm6                        #  4     0xe   4      OPC=vmovsldup_xmm_xmm      
  callq .move_128_64_xmm1_xmm10_xmm11           #  5     0x12  5      OPC=callq_label            
  vunpcklps %xmm11, %xmm1, %xmm10               #  6     0x17  5      OPC=vunpcklps_xmm_xmm_xmm  
  vmovdqu %xmm6, %xmm11                         #  7     0x1c  4      OPC=vmovdqu_xmm_xmm        
  callq .move_64_128_xmm10_xmm11_xmm1           #  8     0x20  5      OPC=callq_label            
  retq                                          #  9     0x25  1      OPC=retq                   
                                                                                                 
.size target, .-target
