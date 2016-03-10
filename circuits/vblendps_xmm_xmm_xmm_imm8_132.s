  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                            #  Line  RIP   Bytes  Opcode                      
.target:                          #        0     0      OPC=<label>                 
  vmovaps %xmm2, %xmm13           #  1     0     4      OPC=vmovaps_xmm_xmm         
  vpunpckhdq %xmm3, %xmm2, %xmm5  #  2     0x4   4      OPC=vpunpckhdq_xmm_xmm_xmm  
  vpunpckhdq %xmm5, %xmm3, %xmm1  #  3     0x8   4      OPC=vpunpckhdq_xmm_xmm_xmm  
  vmovlhps %xmm1, %xmm13, %xmm1   #  4     0xc   4      OPC=vmovlhps_xmm_xmm_xmm    
  retq                            #  5     0x10  1      OPC=retq                    
                                                                                    
.size target, .-target
