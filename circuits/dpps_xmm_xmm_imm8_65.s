  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                            #  Line  RIP   Bytes  Opcode                   
.target:                                          #        0     0      OPC=<label>              
  callq .move_128_64_xmm2_xmm12_xmm13             #  1     0     5      OPC=callq_label          
  callq .move_128_032_xmm1_xmm8_xmm9_xmm10_xmm11  #  2     0x5   5      OPC=callq_label          
  vmulss %xmm13, %xmm10, %xmm4                    #  3     0xa   5      OPC=vmulss_xmm_xmm_xmm   
  vhaddps %xmm10, %xmm4, %xmm14                   #  4     0xf   5      OPC=vhaddps_xmm_xmm_xmm  
  movq %xmm14, %xmm1                              #  5     0x14  5      OPC=movq_xmm_xmm         
  retq                                            #  6     0x19  1      OPC=retq                 
                                                                                                 
.size target, .-target
