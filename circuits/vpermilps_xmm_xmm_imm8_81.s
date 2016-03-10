  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                      #  Line  RIP   Bytes  Opcode                      
.target:                                    #        0     0      OPC=<label>                 
  callq .move_128_032_xmm2_eax_edx_r8d_r9d  #  1     0     5      OPC=callq_label             
  vmovd %edx, %xmm1                         #  2     0x5   4      OPC=vmovd_xmm_r32           
  vmovsldup %ymm1, %ymm11                   #  3     0x9   4      OPC=vmovsldup_ymm_ymm       
  vpunpckldq %xmm2, %xmm11, %xmm1           #  4     0xd   4      OPC=vpunpckldq_xmm_xmm_xmm  
  movlhps %xmm11, %xmm1                     #  5     0x11  4      OPC=movlhps_xmm_xmm         
  retq                                      #  6     0x15  1      OPC=retq                    
                                                                                              
.size target, .-target
