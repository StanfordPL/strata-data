  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                            #  Line  RIP   Bytes  Opcode                      
.target:                                          #        0     0      OPC=<label>                 
  callq .move_128_032_xmm2_xmm8_xmm9_xmm10_xmm11  #  1     0     5      OPC=callq_label             
  movddup %xmm3, %xmm0                            #  2     0x5   4      OPC=movddup_xmm_xmm         
  vpunpckhdq %xmm0, %xmm3, %xmm7                  #  3     0x9   4      OPC=vpunpckhdq_xmm_xmm_xmm  
  vpbroadcastd %xmm10, %xmm1                      #  4     0xd   5      OPC=vpbroadcastd_xmm_xmm    
  movlhps %xmm7, %xmm1                            #  5     0x12  3      OPC=movlhps_xmm_xmm         
  retq                                            #  6     0x15  1      OPC=retq                    
                                                                                                    
.size target, .-target
