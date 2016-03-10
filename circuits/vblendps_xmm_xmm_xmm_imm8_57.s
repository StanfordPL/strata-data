  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                             #  Line  RIP   Bytes  Opcode                      
.target:                           #        0     0      OPC=<label>                 
  vmovsldup %xmm2, %xmm10          #  1     0     4      OPC=vmovsldup_xmm_xmm       
  vpunpckhdq %xmm3, %xmm10, %xmm1  #  2     0x4   4      OPC=vpunpckhdq_xmm_xmm_xmm  
  vmovss %xmm3, %xmm2, %xmm2       #  3     0x8   4      OPC=vmovss_xmm_xmm_xmm      
  movsd %xmm2, %xmm1               #  4     0xc   4      OPC=movsd_xmm_xmm           
  retq                             #  5     0x10  1      OPC=retq                    
                                                                                     
.size target, .-target
