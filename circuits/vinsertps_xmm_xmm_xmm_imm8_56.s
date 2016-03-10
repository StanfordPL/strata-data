  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                 #  Line  RIP   Bytes  Opcode                    
.target:                               #        0     0      OPC=<label>               
  callq .move_128_064_xmm2_r8_r9       #  1     0     5      OPC=callq_label           
  callq .move_064_128_r8_r9_xmm2       #  2     0x5   5      OPC=callq_label           
  vmovd %r9d, %xmm11                   #  3     0xa   5      OPC=vmovd_xmm_r32         
  vbroadcastsd %xmm2, %ymm10           #  4     0xf   5      OPC=vbroadcastsd_ymm_xmm  
  vrsqrtps %xmm10, %xmm1               #  5     0x14  5      OPC=vrsqrtps_xmm_xmm      
  callq .move_64_128_xmm10_xmm11_xmm1  #  6     0x19  5      OPC=callq_label           
  retq                                 #  7     0x1e  1      OPC=retq                  
                                                                                       
.size target, .-target
