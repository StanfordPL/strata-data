  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                          #  Line  RIP   Bytes  Opcode                   
.target:                                        #        0     0      OPC=<label>              
  vmulpd %xmm2, %xmm1, %xmm9                    #  1     0     4      OPC=vmulpd_xmm_xmm_xmm   
  callq .move_128_032_xmm1_xmm4_xmm5_xmm6_xmm7  #  2     0x4   5      OPC=callq_label          
  vandnps %xmm2, %xmm2, %xmm8                   #  3     0x9   4      OPC=vandnps_xmm_xmm_xmm  
  haddpd %xmm6, %xmm9                           #  4     0xd   5      OPC=haddpd_xmm_xmm       
  callq .move_64_128_xmm8_xmm9_xmm1             #  5     0x12  5      OPC=callq_label          
  retq                                          #  6     0x17  1      OPC=retq                 
                                                                                               
.size target, .-target
