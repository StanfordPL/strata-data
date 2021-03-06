  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                          #  Line  RIP   Bytes  Opcode                    
.target:                                        #        0     0      OPC=<label>               
  callq .move_128_032_xmm2_xmm4_xmm5_xmm6_xmm7  #  1     0     5      OPC=callq_label           
  vmovss %xmm4, %xmm1, %xmm12                   #  2     0x5   4      OPC=vmovss_xmm_xmm_xmm    
  vbroadcastss %xmm6, %xmm9                     #  3     0x9   5      OPC=vbroadcastss_xmm_xmm  
  punpckhdq %xmm1, %xmm9                        #  4     0xe   5      OPC=punpckhdq_xmm_xmm     
  vmovhlps %xmm9, %xmm12, %xmm13                #  5     0x13  5      OPC=vmovhlps_xmm_xmm_xmm  
  callq .move_64_128_xmm12_xmm13_xmm1           #  6     0x18  5      OPC=callq_label           
  retq                                          #  7     0x1d  1      OPC=retq                  
                                                                                                
.size target, .-target
