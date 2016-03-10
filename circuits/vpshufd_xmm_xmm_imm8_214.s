  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                             #  Line  RIP   Bytes  Opcode                      
.target:                           #        0     0      OPC=<label>                 
  vmovddup %xmm2, %xmm12           #  1     0     4      OPC=vmovddup_xmm_xmm        
  vpunpckhdq %xmm2, %xmm12, %xmm4  #  2     0x4   4      OPC=vpunpckhdq_xmm_xmm_xmm  
  punpckhdq %xmm4, %xmm2           #  3     0x8   4      OPC=punpckhdq_xmm_xmm       
  vmovsd %xmm2, %xmm4, %xmm1       #  4     0xc   4      OPC=vmovsd_xmm_xmm_xmm      
  retq                             #  5     0x10  1      OPC=retq                    
                                                                                     
.size target, .-target
