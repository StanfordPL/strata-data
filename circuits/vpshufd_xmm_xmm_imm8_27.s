  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                          #  Line  RIP   Bytes  Opcode                       
.target:                                        #        0     0      OPC=<label>                  
  callq .move_128_032_xmm2_xmm4_xmm5_xmm6_xmm7  #  1     0     5      OPC=callq_label              
  vunpcklps %xmm2, %xmm5, %xmm12                #  2     0x5   4      OPC=vunpcklps_xmm_xmm_xmm    
  vbroadcastss %xmm7, %xmm14                    #  3     0x9   5      OPC=vbroadcastss_xmm_xmm     
  punpckhdq %xmm2, %xmm14                       #  4     0xe   5      OPC=punpckhdq_xmm_xmm        
  vpunpcklqdq %xmm12, %xmm14, %xmm1             #  5     0x13  5      OPC=vpunpcklqdq_xmm_xmm_xmm  
  retq                                          #  6     0x18  1      OPC=retq                     
                                                                                                   
.size target, .-target
