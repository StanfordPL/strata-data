  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                            #  Line  RIP   Bytes  Opcode                
.target:                                          #        0     0      OPC=<label>           
  callq .move_128_032_xmm1_xmm8_xmm9_xmm10_xmm11  #  1     0     5      OPC=callq_label       
  pmovzxbd %xmm11, %xmm1                          #  2     0x5   6      OPC=pmovzxbd_xmm_xmm  
  callq .move_128_032_xmm1_xmm4_xmm5_xmm6_xmm7    #  3     0xb   5      OPC=callq_label       
  pmovsxdq %xmm7, %xmm1                           #  4     0x10  5      OPC=pmovsxdq_xmm_xmm  
  retq                                            #  5     0x15  1      OPC=retq              
                                                                                              
.size target, .-target
