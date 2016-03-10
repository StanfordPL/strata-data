  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                            #  Line  RIP   Bytes  Opcode                       
.target:                                          #        0     0      OPC=<label>                  
  callq .move_128_032_xmm3_xmm8_xmm9_xmm10_xmm11  #  1     0     5      OPC=callq_label              
  vpunpckhdq %xmm2, %xmm9, %xmm5                  #  2     0x5   4      OPC=vpunpckhdq_xmm_xmm_xmm   
  vpunpcklqdq %xmm10, %xmm2, %xmm7                #  3     0x9   5      OPC=vpunpcklqdq_xmm_xmm_xmm  
  vxorpd %ymm5, %ymm7, %ymm1                      #  4     0xe   4      OPC=vxorpd_ymm_ymm_ymm       
  movsd %xmm2, %xmm1                              #  5     0x12  4      OPC=movsd_xmm_xmm            
  retq                                            #  6     0x16  1      OPC=retq                     
                                                                                                     
.size target, .-target
