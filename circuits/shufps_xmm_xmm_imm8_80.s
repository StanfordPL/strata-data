  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                                 #  Line  RIP   Bytes  Opcode                    
.target:                               #        0     0      OPC=<label>               
  vmovdqu %xmm1, %xmm0                 #  1     0     4      OPC=vmovdqu_xmm_xmm       
  vmovdqu %xmm2, %xmm11                #  2     0x4   4      OPC=vmovdqu_xmm_xmm       
  vpbroadcastd %xmm0, %ymm10           #  3     0x8   5      OPC=vpbroadcastd_ymm_xmm  
  vmovshdup %xmm11, %xmm11             #  4     0xd   5      OPC=vmovshdup_xmm_xmm     
  callq .move_64_128_xmm10_xmm11_xmm1  #  5     0x12  5      OPC=callq_label           
  retq                                 #  6     0x17  1      OPC=retq                  
                                                                                       
.size target, .-target
