  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                             #  Line  RIP   Bytes  Opcode                      
.target:                           #        0     0      OPC=<label>                 
  vmovsd %xmm3, %xmm3, %xmm1       #  1     0     4      OPC=vmovsd_xmm_xmm_xmm      
  vmovddup %xmm1, %xmm5            #  2     0x4   4      OPC=vmovddup_xmm_xmm        
  movsldup %xmm2, %xmm9            #  3     0x8   5      OPC=movsldup_xmm_xmm        
  vpunpckhdq %xmm1, %xmm9, %xmm10  #  4     0xd   4      OPC=vpunpckhdq_xmm_xmm_xmm  
  vmovhlps %xmm5, %xmm10, %xmm1    #  5     0x11  4      OPC=vmovhlps_xmm_xmm_xmm    
  retq                             #  6     0x15  1      OPC=retq                    
                                                                                     
.size target, .-target
