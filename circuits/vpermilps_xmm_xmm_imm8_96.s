  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                              #  Line  RIP   Bytes  Opcode                      
.target:                            #        0     0      OPC=<label>                 
  vmovddup %xmm2, %xmm9             #  1     0     4      OPC=vmovddup_xmm_xmm        
  vmovsd %xmm9, %xmm9, %xmm14       #  2     0x4   5      OPC=vmovsd_xmm_xmm_xmm      
  vpunpckhdq %xmm2, %xmm14, %xmm14  #  3     0x9   4      OPC=vpunpckhdq_xmm_xmm_xmm  
  vpunpckldq %xmm2, %xmm14, %xmm1   #  4     0xd   4      OPC=vpunpckldq_xmm_xmm_xmm  
  retq                              #  5     0x11  1      OPC=retq                    
                                                                                      
.size target, .-target
