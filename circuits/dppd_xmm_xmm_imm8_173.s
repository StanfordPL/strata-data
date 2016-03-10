  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                 #  Line  RIP   Bytes  Opcode                   
.target:                               #        0     0      OPC=<label>              
  callq .move_128_64_xmm2_xmm10_xmm11  #  1     0     5      OPC=callq_label          
  callq .move_128_64_xmm1_xmm12_xmm13  #  2     0x5   5      OPC=callq_label          
  mulpd %xmm11, %xmm13                 #  3     0xa   5      OPC=mulpd_xmm_xmm        
  vhaddpd %xmm11, %xmm13, %xmm0        #  4     0xf   5      OPC=vhaddpd_xmm_xmm_xmm  
  vandps %xmm13, %xmm0, %xmm13         #  5     0x14  5      OPC=vandps_xmm_xmm_xmm   
  movq %xmm13, %xmm1                   #  6     0x19  5      OPC=movq_xmm_xmm         
  retq                                 #  7     0x1e  1      OPC=retq                 
                                                                                      
.size target, .-target
