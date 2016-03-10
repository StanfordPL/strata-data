  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                          #  Line  RIP   Bytes  Opcode                    
.target:                                        #        0     0      OPC=<label>               
  vzeroall                                      #  1     0     3      OPC=vzeroall              
  divps %xmm2, %xmm5                            #  2     0x3   3      OPC=divps_xmm_xmm         
  vpmovsxdq %xmm5, %ymm1                        #  3     0x6   5      OPC=vpmovsxdq_ymm_xmm     
  callq .move_128_032_xmm1_xmm4_xmm5_xmm6_xmm7  #  4     0xb   5      OPC=callq_label           
  vpbroadcastw %xmm7, %xmm4                     #  5     0x10  5      OPC=vpbroadcastw_xmm_xmm  
  vandnps %xmm4, %xmm11, %xmm1                  #  6     0x15  4      OPC=vandnps_xmm_xmm_xmm   
  retq                                          #  7     0x19  1      OPC=retq                  
                                                                                                
.size target, .-target
