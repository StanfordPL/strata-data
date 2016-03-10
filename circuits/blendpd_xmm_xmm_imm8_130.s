  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                 #  Line  RIP  Bytes  Opcode                    
.target:                               #        0    0      OPC=<label>               
  callq .move_128_64_xmm1_xmm12_xmm13  #  1     0    5      OPC=callq_label           
  vmovhlps %xmm2, %xmm1, %xmm13        #  2     0x5  4      OPC=vmovhlps_xmm_xmm_xmm  
  callq .move_64_128_xmm12_xmm13_xmm1  #  3     0x9  5      OPC=callq_label           
  retq                                 #  4     0xe  1      OPC=retq                  
                                                                                      
.size target, .-target
