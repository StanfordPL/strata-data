  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                          #  Line  RIP   Bytes  Opcode                      
.target:                                        #        0     0      OPC=<label>                 
  callq .move_128_032_xmm3_xmm4_xmm5_xmm6_xmm7  #  1     0     5      OPC=callq_label             
  vmovups %xmm2, %xmm4                          #  2     0x5   4      OPC=vmovups_xmm_xmm         
  vpunpckhdq %xmm6, %xmm4, %xmm6                #  3     0x9   4      OPC=vpunpckhdq_xmm_xmm_xmm  
  callq .move_032_128_xmm4_xmm5_xmm6_xmm7_xmm3  #  4     0xd   5      OPC=callq_label             
  vmaxps %xmm3, %xmm4, %xmm1                    #  5     0x12  4      OPC=vmaxps_xmm_xmm_xmm      
  callq .move_032_128_xmm4_xmm5_xmm6_xmm7_xmm1  #  6     0x16  5      OPC=callq_label             
  retq                                          #  7     0x1b  1      OPC=retq                    
                                                                                                  
.size target, .-target
