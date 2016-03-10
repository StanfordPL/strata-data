  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                              #  Line  RIP   Bytes  Opcode                      
.target:                            #        0     0      OPC=<label>                 
  vmovddup %xmm2, %xmm1             #  1     0     4      OPC=vmovddup_xmm_xmm        
  vmovsldup %xmm2, %xmm8            #  2     0x4   4      OPC=vmovsldup_xmm_xmm       
  vdivss %xmm1, %xmm8, %xmm10       #  3     0x8   4      OPC=vdivss_xmm_xmm_xmm      
  vpunpckhdq %xmm3, %xmm10, %xmm13  #  4     0xc   4      OPC=vpunpckhdq_xmm_xmm_xmm  
  punpckhqdq %xmm13, %xmm1          #  5     0x10  5      OPC=punpckhqdq_xmm_xmm      
  retq                              #  6     0x15  1      OPC=retq                    
                                                                                      
.size target, .-target
