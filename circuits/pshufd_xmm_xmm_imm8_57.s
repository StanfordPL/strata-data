  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                      #  Line  RIP   Bytes  Opcode                      
.target:                                    #        0     0      OPC=<label>                 
  callq .move_128_64_xmm2_xmm8_xmm9         #  1     0     5      OPC=callq_label             
  callq .move_128_032_xmm2_eax_edx_r8d_r9d  #  2     0x5   5      OPC=callq_label             
  movd %r9d, %xmm1                          #  3     0xa   5      OPC=movd_xmm_r32            
  vunpcklps %xmm2, %xmm1, %xmm11            #  4     0xf   4      OPC=vunpcklps_xmm_xmm_xmm   
  vmovd %edx, %xmm8                         #  5     0x13  4      OPC=vmovd_xmm_r32           
  vpunpckldq %xmm9, %xmm8, %xmm10           #  6     0x17  5      OPC=vpunpckldq_xmm_xmm_xmm  
  callq .move_64_128_xmm10_xmm11_xmm1       #  7     0x1c  5      OPC=callq_label             
  retq                                      #  8     0x21  1      OPC=retq                    
                                                                                              
.size target, .-target
