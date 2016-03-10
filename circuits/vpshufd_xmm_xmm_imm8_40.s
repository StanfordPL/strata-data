  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                          #  Line  RIP   Bytes  Opcode                  
.target:                                        #        0     0      OPC=<label>             
  vmovsldup %xmm2, %xmm1                        #  1     0     4      OPC=vmovsldup_xmm_xmm   
  callq .move_128_032_xmm1_xmm4_xmm5_xmm6_xmm7  #  2     0x4   5      OPC=callq_label         
  vminps %xmm2, %xmm1, %xmm7                    #  3     0x9   4      OPC=vminps_xmm_xmm_xmm  
  movhlps %xmm7, %xmm1                          #  4     0xd   3      OPC=movhlps_xmm_xmm     
  movq %xmm1, %xmm5                             #  5     0x10  4      OPC=movq_xmm_xmm        
  callq .move_032_128_xmm4_xmm5_xmm6_xmm7_xmm1  #  6     0x14  5      OPC=callq_label         
  retq                                          #  7     0x19  1      OPC=retq                
                                                                                              
.size target, .-target
