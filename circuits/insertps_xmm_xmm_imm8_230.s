  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                          #  Line  RIP   Bytes  Opcode                     
.target:                                        #        0     0      OPC=<label>                
  vminss %xmm1, %xmm1, %xmm3                    #  1     0     4      OPC=vminss_xmm_xmm_xmm     
  callq .move_128_032_xmm3_xmm4_xmm5_xmm6_xmm7  #  2     0x4   5      OPC=callq_label            
  vunpckhps %xmm5, %xmm4, %xmm6                 #  3     0x9   4      OPC=vunpckhps_xmm_xmm_xmm  
  punpckhdq %xmm1, %xmm5                        #  4     0xd   4      OPC=punpckhdq_xmm_xmm      
  callq .move_032_128_xmm4_xmm5_xmm6_xmm7_xmm1  #  5     0x11  5      OPC=callq_label            
  retq                                          #  6     0x16  1      OPC=retq                   
                                                                                                 
.size target, .-target
