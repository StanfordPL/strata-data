  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                      #  Line  RIP   Bytes  Opcode                      
.target:                                    #        0     0      OPC=<label>                 
  callq .move_128_032_xmm2_eax_edx_r8d_r9d  #  1     0     5      OPC=callq_label             
  vmovd %r9d, %xmm1                         #  2     0x5   5      OPC=vmovd_xmm_r32           
  vpunpckhdq %xmm2, %xmm2, %xmm5            #  3     0xa   4      OPC=vpunpckhdq_xmm_xmm_xmm  
  vmovss %xmm1, %xmm2, %xmm13               #  4     0xe   4      OPC=vmovss_xmm_xmm_xmm      
  vpunpckldq %ymm5, %ymm13, %ymm1           #  5     0x12  4      OPC=vpunpckldq_ymm_ymm_ymm  
  retq                                      #  6     0x16  1      OPC=retq                    
                                                                                              
.size target, .-target
