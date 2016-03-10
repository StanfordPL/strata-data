  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                 #  Line  RIP   Bytes  Opcode                    
.target:                               #        0     0      OPC=<label>               
  callq .move_128_64_xmm2_xmm12_xmm13  #  1     0     5      OPC=callq_label           
  vminpd %xmm2, %xmm2, %xmm4           #  2     0x5   4      OPC=vminpd_xmm_xmm_xmm    
  vpbroadcastd %xmm13, %xmm1           #  3     0x9   5      OPC=vpbroadcastd_xmm_xmm  
  unpckhps %xmm1, %xmm4                #  4     0xe   3      OPC=unpckhps_xmm_xmm      
  vmovss %xmm12, %xmm4, %xmm1          #  5     0x11  5      OPC=vmovss_xmm_xmm_xmm    
  retq                                 #  6     0x16  1      OPC=retq                  
                                                                                       
.size target, .-target
