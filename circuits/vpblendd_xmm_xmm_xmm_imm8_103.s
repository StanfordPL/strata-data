  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                            #  Line  RIP   Bytes  Opcode                      
.target:                          #        0     0      OPC=<label>                 
  vmovsldup %xmm3, %xmm8          #  1     0     4      OPC=vmovsldup_xmm_xmm       
  vpunpckhdq %xmm2, %xmm8, %xmm6  #  2     0x4   4      OPC=vpunpckhdq_xmm_xmm_xmm  
  vmovsd %xmm3, %xmm6, %xmm2      #  3     0x8   4      OPC=vmovsd_xmm_xmm_xmm      
  vminsd %xmm2, %xmm2, %xmm1      #  4     0xc   4      OPC=vminsd_xmm_xmm_xmm      
  retq                            #  5     0x10  1      OPC=retq                    
                                                                                    
.size target, .-target
