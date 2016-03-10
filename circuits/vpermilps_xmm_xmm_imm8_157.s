  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                      #  Line  RIP   Bytes  Opcode                       
.target:                                    #        0     0      OPC=<label>                  
  callq .move_128_032_xmm2_eax_edx_r8d_r9d  #  1     0     5      OPC=callq_label              
  vcvtsi2ssl %eax, %xmm2, %xmm6             #  2     0x5   4      OPC=vcvtsi2ssl_xmm_xmm_r32   
  vpunpckldq %xmm2, %xmm6, %xmm14           #  3     0x9   4      OPC=vpunpckldq_xmm_xmm_xmm   
  vrsqrtss %xmm6, %xmm6, %xmm9              #  4     0xd   4      OPC=vrsqrtss_xmm_xmm_xmm     
  vunpckhps %ymm6, %ymm14, %ymm6            #  5     0x11  4      OPC=vunpckhps_ymm_ymm_ymm    
  vunpcklpd %xmm6, %xmm6, %xmm14            #  6     0x15  4      OPC=vunpcklpd_xmm_xmm_xmm    
  vpunpckhqdq %ymm6, %ymm9, %ymm9           #  7     0x19  4      OPC=vpunpckhqdq_ymm_ymm_ymm  
  vunpckhpd %xmm14, %xmm9, %xmm1            #  8     0x1d  5      OPC=vunpckhpd_xmm_xmm_xmm    
  retq                                      #  9     0x22  1      OPC=retq                     
                                                                                               
.size target, .-target
