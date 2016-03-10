  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text                     #  Line  RIP  Bytes  Opcode                 
.target:                   #        0    0      OPC=<label>            
  vcvtdq2ps %xmm2, %xmm14  #  1     0    4      OPC=vcvtdq2ps_xmm_xmm  
  vmovaps %xmm14, %xmm15   #  2     0x4  5      OPC=vmovaps_xmm_xmm    
  movaps %xmm15, %xmm1     #  3     0x9  4      OPC=movaps_xmm_xmm     
  retq                     #  4     0xd  1      OPC=retq               
                                                                       
.size target, .-target
