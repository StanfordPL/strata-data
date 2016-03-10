  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text                                          #  Line  RIP   Bytes  Opcode                  
.target:                                        #        0     0      OPC=<label>             
  vmovupd %xmm2, %xmm13                         #  1     0     4      OPC=vmovupd_xmm_xmm     
  vmovdqa %xmm1, %xmm9                          #  2     0x4   4      OPC=vmovdqa_xmm_xmm     
  vdivps %ymm13, %ymm9, %ymm2                   #  3     0x8   5      OPC=vdivps_ymm_ymm_ymm  
  callq .move_128_032_xmm2_xmm4_xmm5_xmm6_xmm7  #  4     0xd   5      OPC=callq_label         
  callq .move_032_128_xmm4_xmm5_xmm6_xmm7_xmm1  #  5     0x12  5      OPC=callq_label         
  retq                                          #  6     0x17  1      OPC=retq                
                                                                                              
.size target, .-target
