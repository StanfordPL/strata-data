  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                                 #  Line  RIP   Bytes  Opcode                      
.target:                               #        0     0      OPC=<label>                 
  vpunpckhdq %xmm2, %xmm2, %xmm14      #  1     0     4      OPC=vpunpckhdq_xmm_xmm_xmm  
  vpbroadcastd %xmm2, %xmm3            #  2     0x4   5      OPC=vpbroadcastd_xmm_xmm    
  callq .move_128_64_xmm1_xmm12_xmm13  #  3     0x9   5      OPC=callq_label             
  vpunpckldq %xmm14, %xmm3, %xmm6      #  4     0xe   5      OPC=vpunpckldq_xmm_xmm_xmm  
  punpcklqdq %xmm6, %xmm1              #  5     0x13  4      OPC=punpcklqdq_xmm_xmm      
  movss %xmm13, %xmm1                  #  6     0x17  5      OPC=movss_xmm_xmm           
  retq                                 #  7     0x1c  1      OPC=retq                    
                                                                                         
.size target, .-target
