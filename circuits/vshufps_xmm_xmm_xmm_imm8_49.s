  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                      #  Line  RIP   Bytes  Opcode                      
.target:                                    #        0     0      OPC=<label>                 
  callq .move_128_032_xmm2_eax_edx_r8d_r9d  #  1     0     5      OPC=callq_label             
  vbroadcastss %xmm3, %ymm9                 #  2     0x5   5      OPC=vbroadcastss_ymm_xmm    
  movd %edx, %xmm12                         #  3     0xa   5      OPC=movd_xmm_r32            
  vunpcklps %xmm2, %xmm12, %xmm6            #  4     0xf   4      OPC=vunpcklps_xmm_xmm_xmm   
  vpunpckhdq %xmm9, %xmm3, %xmm11           #  5     0x13  5      OPC=vpunpckhdq_xmm_xmm_xmm  
  vmovsd %xmm6, %xmm11, %xmm1               #  6     0x18  4      OPC=vmovsd_xmm_xmm_xmm      
  retq                                      #  7     0x1c  1      OPC=retq                    
                                                                                              
.size target, .-target
