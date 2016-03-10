  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                #  Line  RIP  Bytes  Opcode                 
.target:                              #        0    0      OPC=<label>            
  vpmovsxdq %xmm1, %xmm2              #  1     0    5      OPC=vpmovsxdq_xmm_xmm  
  callq .move_256_128_ymm2_xmm8_xmm9  #  2     0x5  5      OPC=callq_label        
  cvtdq2pd %xmm9, %xmm1               #  3     0xa  5      OPC=cvtdq2pd_xmm_xmm   
  retq                                #  4     0xf  1      OPC=retq               
                                                                                  
.size target, .-target
