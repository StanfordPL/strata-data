  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                              #  Line  RIP   Bytes  Opcode                      
.target:                            #        0     0      OPC=<label>                 
  vmovss %xmm3, %xmm2, %xmm7        #  1     0     4      OPC=vmovss_xmm_xmm_xmm      
  vmovsldup %ymm7, %ymm12           #  2     0x4   4      OPC=vmovsldup_ymm_ymm       
  vpunpckhdq %xmm3, %xmm12, %xmm11  #  3     0x8   4      OPC=vpunpckhdq_xmm_xmm_xmm  
  maxsd %xmm3, %xmm11               #  4     0xc   5      OPC=maxsd_xmm_xmm           
  vmovsd %xmm7, %xmm11, %xmm1       #  5     0x11  4      OPC=vmovsd_xmm_xmm_xmm      
  retq                              #  6     0x15  1      OPC=retq                    
                                                                                      
.size target, .-target
