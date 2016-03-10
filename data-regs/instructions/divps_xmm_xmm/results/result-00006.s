  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text                                          #  Line  RIP   Bytes  Opcode                  
.target:                                        #        0     0      OPC=<label>             
  vmovdqa %xmm2, %xmm7                          #  1     0     4      OPC=vmovdqa_xmm_xmm     
  vmovdqu %xmm1, %xmm5                          #  2     0x4   4      OPC=vmovdqu_xmm_xmm     
  vdivps %ymm7, %ymm5, %ymm2                    #  3     0x8   4      OPC=vdivps_ymm_ymm_ymm  
  callq .move_128_032_xmm2_xmm4_xmm5_xmm6_xmm7  #  4     0xc   5      OPC=callq_label         
  callq .move_032_128_xmm4_xmm5_xmm6_xmm7_xmm1  #  5     0x11  5      OPC=callq_label         
  retq                                          #  6     0x16  1      OPC=retq                
                                                                                              
.size target, .-target
