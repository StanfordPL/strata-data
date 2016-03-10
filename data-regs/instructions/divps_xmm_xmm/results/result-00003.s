  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text                                 #  Line  RIP   Bytes  Opcode                  
.target:                               #        0     0      OPC=<label>             
  vmovdqu %xmm1, %xmm13                #  1     0     4      OPC=vmovdqu_xmm_xmm     
  vmovdqu %xmm2, %xmm10                #  2     0x4   4      OPC=vmovdqu_xmm_xmm     
  vdivps %ymm10, %ymm13, %ymm3         #  3     0x8   5      OPC=vdivps_ymm_ymm_ymm  
  callq .move_128_64_xmm3_xmm10_xmm11  #  4     0xd   5      OPC=callq_label         
  vmaxpd %ymm10, %ymm10, %ymm10        #  5     0x12  5      OPC=vmaxpd_ymm_ymm_ymm  
  callq .move_64_128_xmm10_xmm11_xmm1  #  6     0x17  5      OPC=callq_label         
  retq                                 #  7     0x1c  1      OPC=retq                
                                                                                     
.size target, .-target
