  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                            #  Line  RIP  Bytes  Opcode                       
.target:                                          #        0    0      OPC=<label>                  
  callq .move_128_032_xmm3_xmm8_xmm9_xmm10_xmm11  #  1     0    5      OPC=callq_label              
  movlhps %xmm3, %xmm9                            #  2     0x5  4      OPC=movlhps_xmm_xmm          
  vpunpckhqdq %xmm9, %xmm2, %xmm1                 #  3     0x9  5      OPC=vpunpckhqdq_xmm_xmm_xmm  
  retq                                            #  4     0xe  1      OPC=retq                     
                                                                                                    
.size target, .-target
