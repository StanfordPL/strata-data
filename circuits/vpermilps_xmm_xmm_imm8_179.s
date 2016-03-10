  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                          #  Line  RIP   Bytes  Opcode                    
.target:                                        #        0     0      OPC=<label>               
  callq .move_128_032_xmm2_xmm4_xmm5_xmm6_xmm7  #  1     0     5      OPC=callq_label           
  vmaxsd %xmm4, %xmm2, %xmm0                    #  2     0x5   4      OPC=vmaxsd_xmm_xmm_xmm    
  vbroadcastss %xmm7, %xmm1                     #  3     0x9   5      OPC=vbroadcastss_xmm_xmm  
  punpckldq %xmm6, %xmm0                        #  4     0xe   4      OPC=punpckldq_xmm_xmm     
  unpcklps %xmm0, %xmm1                         #  5     0x12  3      OPC=unpcklps_xmm_xmm      
  retq                                          #  6     0x15  1      OPC=retq                  
                                                                                                
.size target, .-target
