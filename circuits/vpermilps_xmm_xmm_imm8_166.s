  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                            #  Line  RIP   Bytes  Opcode                      
.target:                          #        0     0      OPC=<label>                 
  vpunpckhdq %xmm2, %xmm2, %xmm8  #  1     0     4      OPC=vpunpckhdq_xmm_xmm_xmm  
  vmovlhps %xmm8, %xmm2, %xmm6    #  2     0x4   5      OPC=vmovlhps_xmm_xmm_xmm    
  vmovss %xmm6, %xmm6, %xmm2      #  3     0x9   4      OPC=vmovss_xmm_xmm_xmm      
  vmovss %xmm8, %xmm2, %xmm1      #  4     0xd   5      OPC=vmovss_xmm_xmm_xmm      
  retq                            #  5     0x12  1      OPC=retq                    
                                                                                    
.size target, .-target
