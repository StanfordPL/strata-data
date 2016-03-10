  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                      #  Line  RIP   Bytes  Opcode                      
.target:                                    #        0     0      OPC=<label>                 
  callq .move_128_032_xmm2_eax_edx_r8d_r9d  #  1     0     5      OPC=callq_label             
  vpunpckhdq %xmm2, %xmm2, %xmm15           #  2     0x5   4      OPC=vpunpckhdq_xmm_xmm_xmm  
  movd %r9d, %xmm1                          #  3     0x9   5      OPC=movd_xmm_r32            
  vmovd %edx, %xmm0                         #  4     0xe   4      OPC=vmovd_xmm_r32           
  vunpcklps %xmm15, %xmm0, %xmm7            #  5     0x12  5      OPC=vunpcklps_xmm_xmm_xmm   
  vpunpckldq %xmm0, %xmm1, %xmm0            #  6     0x17  4      OPC=vpunpckldq_xmm_xmm_xmm  
  vpunpckldq %xmm7, %xmm0, %xmm1            #  7     0x1b  4      OPC=vpunpckldq_xmm_xmm_xmm  
  retq                                      #  8     0x1f  1      OPC=retq                    
                                                                                              
.size target, .-target
