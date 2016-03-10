  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                         #  Line  RIP   Bytes  Opcode                  
.target:                       #        0     0      OPC=<label>             
  vmovshdup %xmm2, %xmm1       #  1     0     4      OPC=vmovshdup_xmm_xmm   
  vpand %xmm1, %xmm1, %xmm7    #  2     0x4   4      OPC=vpand_xmm_xmm_xmm   
  addss %xmm7, %xmm2           #  3     0x8   4      OPC=addss_xmm_xmm       
  vmovsldup %xmm2, %xmm11      #  4     0xc   4      OPC=vmovsldup_xmm_xmm   
  vmovsd %xmm1, %xmm11, %xmm1  #  5     0x10  4      OPC=vmovsd_xmm_xmm_xmm  
  retq                         #  6     0x14  1      OPC=retq                
                                                                             
.size target, .-target
