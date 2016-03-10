  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                      #  Line  RIP   Bytes  Opcode                      
.target:                                    #        0     0      OPC=<label>                 
  callq .move_128_032_xmm2_eax_edx_r8d_r9d  #  1     0     5      OPC=callq_label             
  vmovd %r9d, %xmm1                         #  2     0x5   5      OPC=vmovd_xmm_r32           
  callq .move_r9b_to_byte_0_of_ymm1         #  3     0xa   5      OPC=callq_label             
  punpckldq %xmm2, %xmm1                    #  4     0xf   4      OPC=punpckldq_xmm_xmm       
  vmovapd %xmm1, %xmm14                     #  5     0x13  4      OPC=vmovapd_xmm_xmm         
  vpunpckldq %ymm1, %ymm14, %ymm5           #  6     0x17  4      OPC=vpunpckldq_ymm_ymm_ymm  
  vmovups %xmm2, %xmm14                     #  7     0x1b  4      OPC=vmovups_xmm_xmm         
  vunpcklps %ymm5, %ymm14, %ymm1            #  8     0x1f  4      OPC=vunpcklps_ymm_ymm_ymm   
  retq                                      #  9     0x23  1      OPC=retq                    
                                                                                              
.size target, .-target
