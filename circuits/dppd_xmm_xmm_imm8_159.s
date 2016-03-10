  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                 #  Line  RIP   Bytes  Opcode                   
.target:                               #        0     0      OPC=<label>              
  callq .move_128_64_xmm1_xmm12_xmm13  #  1     0     5      OPC=callq_label          
  vmulsd %xmm2, %xmm12, %xmm3          #  2     0x5   4      OPC=vmulsd_xmm_xmm_xmm   
  vhaddpd %xmm2, %xmm3, %xmm9          #  3     0x9   4      OPC=vhaddpd_xmm_xmm_xmm  
  movq %xmm9, %xmm8                    #  4     0xd   5      OPC=movq_xmm_xmm         
  callq .move_64_128_xmm8_xmm9_xmm1    #  5     0x12  5      OPC=callq_label          
  retq                                 #  6     0x17  1      OPC=retq                 
                                                                                      
.size target, .-target
