  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                                 #  Line  RIP   Bytes  Opcode                      
.target:                               #        0     0      OPC=<label>                 
  callq .move_128_64_xmm1_xmm12_xmm13  #  1     0     5      OPC=callq_label             
  vbroadcastss %xmm13, %xmm12          #  2     0x5   5      OPC=vbroadcastss_xmm_xmm    
  vpunpckldq %xmm2, %xmm2, %xmm4       #  3     0xa   4      OPC=vpunpckldq_xmm_xmm_xmm  
  vunpckhps %xmm4, %xmm2, %xmm13       #  4     0xe   4      OPC=vunpckhps_xmm_xmm_xmm   
  callq .move_64_128_xmm12_xmm13_xmm1  #  5     0x12  5      OPC=callq_label             
  retq                                 #  6     0x17  1      OPC=retq                    
                                                                                         
.size target, .-target
