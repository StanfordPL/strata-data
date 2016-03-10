  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                                            #  Line  RIP   Bytes  Opcode                       
.target:                                          #        0     0      OPC=<label>                  
  callq .move_128_032_xmm1_xmm8_xmm9_xmm10_xmm11  #  1     0     5      OPC=callq_label              
  vpunpcklqdq %xmm1, %xmm10, %xmm3                #  2     0x5   4      OPC=vpunpcklqdq_xmm_xmm_xmm  
  punpckldq %xmm3, %xmm3                          #  3     0x9   4      OPC=punpckldq_xmm_xmm        
  vpbroadcastq %xmm2, %xmm8                       #  4     0xd   5      OPC=vpbroadcastq_xmm_xmm     
  movupd %xmm3, %xmm1                             #  5     0x12  4      OPC=movupd_xmm_xmm           
  punpckhdq %xmm2, %xmm8                          #  6     0x16  5      OPC=punpckhdq_xmm_xmm        
  movlhps %xmm8, %xmm1                            #  7     0x1b  4      OPC=movlhps_xmm_xmm          
  retq                                            #  8     0x1f  1      OPC=retq                     
                                                                                                     
.size target, .-target
