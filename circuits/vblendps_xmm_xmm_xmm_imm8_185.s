  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                             #  Line  RIP   Bytes  Opcode                      
.target:                           #        0     0      OPC=<label>                 
  movsldup %xmm2, %xmm8            #  1     0     5      OPC=movsldup_xmm_xmm        
  vmovss %xmm3, %xmm2, %xmm0       #  2     0x5   4      OPC=vmovss_xmm_xmm_xmm      
  vmovddup %xmm0, %xmm1            #  3     0x9   4      OPC=vmovddup_xmm_xmm        
  vpunpckhdq %xmm8, %xmm8, %xmm15  #  4     0xd   5      OPC=vpunpckhdq_xmm_xmm_xmm  
  vpunpckhdq %xmm3, %xmm15, %xmm8  #  5     0x12  4      OPC=vpunpckhdq_xmm_xmm_xmm  
  addsd %xmm2, %xmm8               #  6     0x16  5      OPC=addsd_xmm_xmm           
  unpckhpd %xmm8, %xmm1            #  7     0x1b  5      OPC=unpckhpd_xmm_xmm        
  retq                             #  8     0x20  1      OPC=retq                    
                                                                                     
.size target, .-target
