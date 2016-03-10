  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                          #  Line  RIP   Bytes  Opcode                   
.target:                                        #        0     0      OPC=<label>              
  callq .move_128_032_xmm1_xmm4_xmm5_xmm6_xmm7  #  1     0     5      OPC=callq_label          
  vmulss %xmm2, %xmm4, %xmm5                    #  2     0x5   4      OPC=vmulss_xmm_xmm_xmm   
  vhaddps %xmm2, %xmm5, %xmm12                  #  3     0x9   4      OPC=vhaddps_xmm_xmm_xmm  
  movddup %xmm12, %xmm1                         #  4     0xd   5      OPC=movddup_xmm_xmm      
  retq                                          #  5     0x12  1      OPC=retq                 
                                                                                               
.size target, .-target
