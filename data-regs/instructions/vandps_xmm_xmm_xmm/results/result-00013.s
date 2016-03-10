  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                              #  Line  RIP   Bytes  Opcode                    
.target:                            #        0     0      OPC=<label>               
  vmovlhps %xmm2, %xmm3, %xmm7      #  1     0     4      OPC=vmovlhps_xmm_xmm_xmm  
  callq .move_128_064_xmm2_r12_r13  #  2     0x4   5      OPC=callq_label           
  vpbroadcastw %xmm7, %xmm1         #  3     0x9   5      OPC=vpbroadcastw_xmm_xmm  
  callq .move_064_128_r12_r13_xmm1  #  4     0xe   5      OPC=callq_label           
  andpd %xmm3, %xmm1                #  5     0x13  4      OPC=andpd_xmm_xmm         
  retq                              #  6     0x17  1      OPC=retq                  
                                                                                    
.size target, .-target
