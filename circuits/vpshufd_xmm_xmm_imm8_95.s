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
  vmovddup %xmm2, %xmm11                    #  3     0xa   4      OPC=vmovddup_xmm_xmm        
  movss %xmm1, %xmm11                       #  4     0xe   5      OPC=movss_xmm_xmm           
  vpunpckldq %xmm11, %xmm1, %xmm11          #  5     0x13  5      OPC=vpunpckldq_xmm_xmm_xmm  
  vmovshdup %xmm11, %xmm1                   #  6     0x18  5      OPC=vmovshdup_xmm_xmm       
  retq                                      #  7     0x1d  1      OPC=retq                    
                                                                                              
.size target, .-target
