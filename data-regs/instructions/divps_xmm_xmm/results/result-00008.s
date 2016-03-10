  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text                                 #  Line  RIP   Bytes  Opcode                  
.target:                               #        0     0      OPC=<label>             
  vmovupd %xmm1, %xmm8                 #  1     0     4      OPC=vmovupd_xmm_xmm     
  vmovupd %xmm2, %xmm9                 #  2     0x4   4      OPC=vmovupd_xmm_xmm     
  vdivps %ymm9, %ymm8, %ymm2           #  3     0x8   5      OPC=vdivps_ymm_ymm_ymm  
  callq .move_128_64_xmm2_xmm12_xmm13  #  4     0xd   5      OPC=callq_label         
  callq .move_64_128_xmm12_xmm13_xmm1  #  5     0x12  5      OPC=callq_label         
  retq                                 #  6     0x17  1      OPC=retq                
                                                                                     
.size target, .-target
