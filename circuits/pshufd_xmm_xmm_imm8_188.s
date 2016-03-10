  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                          #  Line  RIP   Bytes  Opcode                      
.target:                                        #        0     0      OPC=<label>                 
  callq .move_128_032_xmm2_r10d_r11d_r12d_r13d  #  1     0     5      OPC=callq_label             
  vpunpckhdq %xmm2, %xmm2, %xmm0                #  2     0x5   4      OPC=vpunpckhdq_xmm_xmm_xmm  
  vmovd %r13d, %xmm14                           #  3     0x9   5      OPC=vmovd_xmm_r32           
  vpunpckldq %xmm0, %xmm14, %xmm11              #  4     0xe   4      OPC=vpunpckldq_xmm_xmm_xmm  
  vpunpckldq %xmm11, %xmm2, %xmm10              #  5     0x12  5      OPC=vpunpckldq_xmm_xmm_xmm  
  callq .move_64_128_xmm10_xmm11_xmm1           #  6     0x17  5      OPC=callq_label             
  retq                                          #  7     0x1c  1      OPC=retq                    
                                                                                                  
.size target, .-target
