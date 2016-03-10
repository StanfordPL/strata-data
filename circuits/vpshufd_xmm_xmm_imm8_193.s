  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                      #  Line  RIP   Bytes  Opcode                      
.target:                                    #        0     0      OPC=<label>                 
  vpbroadcastd %xmm2, %ymm8                 #  1     0     5      OPC=vpbroadcastd_ymm_xmm    
  callq .move_128_032_xmm2_eax_edx_r8d_r9d  #  2     0x5   5      OPC=callq_label             
  vmovd %edx, %xmm1                         #  3     0xa   4      OPC=vmovd_xmm_r32           
  vpunpckldq %xmm8, %xmm1, %xmm14           #  4     0xe   5      OPC=vpunpckldq_xmm_xmm_xmm  
  vunpckhps %xmm2, %xmm8, %xmm1             #  5     0x13  4      OPC=vunpckhps_xmm_xmm_xmm   
  vmovsd %xmm14, %xmm1, %xmm1               #  6     0x17  5      OPC=vmovsd_xmm_xmm_xmm      
  retq                                      #  7     0x1c  1      OPC=retq                    
                                                                                              
.size target, .-target
