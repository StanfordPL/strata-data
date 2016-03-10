  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                      #  Line  RIP   Bytes  Opcode                      
.target:                                    #        0     0      OPC=<label>                 
  callq .move_128_032_xmm2_eax_edx_r8d_r9d  #  1     0     5      OPC=callq_label             
  movd %edx, %xmm7                          #  2     0x5   4      OPC=movd_xmm_r32            
  vbroadcastss %xmm7, %xmm1                 #  3     0x9   5      OPC=vbroadcastss_xmm_xmm    
  vmovhlps %xmm1, %xmm2, %xmm4              #  4     0xe   4      OPC=vmovhlps_xmm_xmm_xmm    
  vbroadcastss %xmm1, %ymm8                 #  5     0x12  5      OPC=vbroadcastss_ymm_xmm    
  vpunpckhdq %ymm4, %ymm8, %ymm0            #  6     0x17  4      OPC=vpunpckhdq_ymm_ymm_ymm  
  unpckhps %xmm0, %xmm1                     #  7     0x1b  3      OPC=unpckhps_xmm_xmm        
  retq                                      #  8     0x1e  1      OPC=retq                    
                                                                                              
.size target, .-target
