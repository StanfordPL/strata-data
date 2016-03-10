  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                      #  Line  RIP   Bytes  Opcode                      
.target:                                    #        0     0      OPC=<label>                 
  vpunpckhdq %xmm3, %xmm2, %xmm2            #  1     0     4      OPC=vpunpckhdq_xmm_xmm_xmm  
  callq .move_128_032_xmm2_eax_edx_r8d_r9d  #  2     0x4   5      OPC=callq_label             
  movd %r8d, %xmm9                          #  3     0x9   5      OPC=movd_xmm_r32            
  vunpcklps %xmm2, %xmm9, %xmm7             #  4     0xe   4      OPC=vunpcklps_xmm_xmm_xmm   
  vmovshdup %xmm2, %xmm11                   #  5     0x12  4      OPC=vmovshdup_xmm_xmm       
  vmovlhps %xmm11, %xmm7, %xmm1             #  6     0x16  5      OPC=vmovlhps_xmm_xmm_xmm    
  retq                                      #  7     0x1b  1      OPC=retq                    
                                                                                              
.size target, .-target
