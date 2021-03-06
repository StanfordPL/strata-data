  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                 #  Line  RIP   Bytes  Opcode                    
.target:                               #        0     0      OPC=<label>               
  callq .move_128_64_xmm2_xmm12_xmm13  #  1     0     5      OPC=callq_label           
  vmaxss %xmm13, %xmm2, %xmm4          #  2     0x5   5      OPC=vmaxss_xmm_xmm_xmm    
  punpckldq %xmm13, %xmm4              #  3     0xa   5      OPC=punpckldq_xmm_xmm     
  vpbroadcastd %xmm13, %xmm6           #  4     0xf   5      OPC=vpbroadcastd_xmm_xmm  
  vmovsd %xmm6, %xmm4, %xmm1           #  5     0x14  4      OPC=vmovsd_xmm_xmm_xmm    
  retq                                 #  6     0x18  1      OPC=retq                  
                                                                                       
.size target, .-target
