  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                          #  Line  RIP   Bytes  Opcode                      
.target:                                        #        0     0      OPC=<label>                 
  callq .move_128_032_xmm3_xmm4_xmm5_xmm6_xmm7  #  1     0     5      OPC=callq_label             
  vxorps %xmm5, %xmm5, %xmm1                    #  2     0x5   4      OPC=vxorps_xmm_xmm_xmm      
  vpunpckhdq %xmm3, %xmm7, %xmm6                #  3     0x9   4      OPC=vpunpckhdq_xmm_xmm_xmm  
  unpckhps %xmm6, %xmm1                         #  4     0xd   3      OPC=unpckhps_xmm_xmm        
  retq                                          #  5     0x10  1      OPC=retq                    
                                                                                                  
.size target, .-target
