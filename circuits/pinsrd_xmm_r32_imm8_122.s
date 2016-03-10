  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                 #  Line  RIP   Bytes  Opcode                    
.target:                               #        0     0      OPC=<label>               
  vmovd %ebx, %xmm3                    #  1     0     4      OPC=vmovd_xmm_r32         
  vpbroadcastq %xmm1, %xmm10           #  2     0x4   5      OPC=vpbroadcastq_xmm_xmm  
  callq .move_128_64_xmm1_xmm8_xmm9    #  3     0x9   5      OPC=callq_label           
  vmovss %xmm3, %xmm9, %xmm11          #  4     0xe   4      OPC=vmovss_xmm_xmm_xmm    
  callq .move_64_128_xmm10_xmm11_xmm1  #  5     0x12  5      OPC=callq_label           
  retq                                 #  6     0x17  1      OPC=retq                  
                                                                                       
.size target, .-target
