  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                              #  Line  RIP   Bytes  Opcode                      
.target:                            #        0     0      OPC=<label>                 
  vmovsldup %xmm2, %xmm12           #  1     0     4      OPC=vmovsldup_xmm_xmm       
  vpunpckhdq %xmm3, %xmm12, %xmm14  #  2     0x4   4      OPC=vpunpckhdq_xmm_xmm_xmm  
  vmulsd %xmm3, %xmm14, %xmm13      #  3     0x8   4      OPC=vmulsd_xmm_xmm_xmm      
  vmovsd %xmm2, %xmm13, %xmm1       #  4     0xc   4      OPC=vmovsd_xmm_xmm_xmm      
  retq                              #  5     0x10  1      OPC=retq                    
                                                                                      
.size target, .-target
