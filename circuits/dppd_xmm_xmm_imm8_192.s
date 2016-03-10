  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                            #  Line  RIP   Bytes  Opcode                
.target:                                          #        0     0      OPC=<label>           
  cvtps2dq %xmm2, %xmm3                           #  1     0     4      OPC=cvtps2dq_xmm_xmm  
  callq .move_128_032_xmm3_xmm8_xmm9_xmm10_xmm11  #  2     0x4   5      OPC=callq_label       
  callq .move_032_128_xmm8_xmm9_xmm10_xmm11_xmm1  #  3     0x9   5      OPC=callq_label       
  pandn %xmm3, %xmm1                              #  4     0xe   4      OPC=pandn_xmm_xmm     
  retq                                            #  5     0x12  1      OPC=retq              
                                                                                              
.size target, .-target
