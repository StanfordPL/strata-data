  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                      #  Line  RIP   Bytes  Opcode                      
.target:                                    #        0     0      OPC=<label>                 
  callq .move_128_032_xmm2_eax_edx_r8d_r9d  #  1     0     5      OPC=callq_label             
  movd %edx, %xmm1                          #  2     0x5   4      OPC=movd_xmm_r32            
  callq .move_128_64_xmm1_xmm10_xmm11       #  3     0x9   5      OPC=callq_label             
  vpunpckhdq %xmm1, %xmm2, %xmm12           #  4     0xe   4      OPC=vpunpckhdq_xmm_xmm_xmm  
  unpcklps %xmm12, %xmm10                   #  5     0x12  4      OPC=unpcklps_xmm_xmm        
  callq .move_64_128_xmm10_xmm11_xmm1       #  6     0x16  5      OPC=callq_label             
  unpcklpd %xmm2, %xmm1                     #  7     0x1b  4      OPC=unpcklpd_xmm_xmm        
  retq                                      #  8     0x1f  1      OPC=retq                    
                                                                                              
.size target, .-target
