  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                                            #  Line  RIP   Bytes  Opcode                   
.target:                                          #        0     0      OPC=<label>              
  unpckhps %xmm3, %xmm2                           #  1     0     3      OPC=unpckhps_xmm_xmm     
  callq .move_128_032_xmm2_xmm8_xmm9_xmm10_xmm11  #  2     0x3   5      OPC=callq_label          
  callq .move_128_64_xmm2_xmm12_xmm13             #  3     0x8   5      OPC=callq_label          
  vandnps %xmm10, %xmm12, %xmm1                   #  4     0xd   5      OPC=vandnps_xmm_xmm_xmm  
  callq .move_64_128_xmm12_xmm13_xmm1             #  5     0x12  5      OPC=callq_label          
  retq                                            #  6     0x17  1      OPC=retq                 
                                                                                                 
.size target, .-target
