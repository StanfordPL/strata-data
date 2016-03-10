  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                              #  Line  RIP   Bytes  Opcode                      
.target:                            #        0     0      OPC=<label>                 
  vmaxsd %xmm2, %xmm2, %xmm12       #  1     0     4      OPC=vmaxsd_xmm_xmm_xmm      
  vpunpckldq %xmm12, %xmm12, %xmm1  #  2     0x4   5      OPC=vpunpckldq_xmm_xmm_xmm  
  vpunpckhdq %xmm1, %xmm2, %xmm9    #  3     0x9   4      OPC=vpunpckhdq_xmm_xmm_xmm  
  vmovlhps %xmm9, %xmm2, %xmm1      #  4     0xd   5      OPC=vmovlhps_xmm_xmm_xmm    
  retq                              #  5     0x12  1      OPC=retq                    
                                                                                      
.size target, .-target
