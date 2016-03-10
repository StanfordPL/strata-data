  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                           #  Line  RIP   Bytes  Opcode                     
.target:                         #        0     0      OPC=<label>                
  vcvtsd2ss %xmm3, %xmm2, %xmm8  #  1     0     4      OPC=vcvtsd2ss_xmm_xmm_xmm  
  vmovdqa %xmm3, %xmm1           #  2     0x4   4      OPC=vmovdqa_xmm_xmm        
  mulss %xmm2, %xmm1             #  3     0x8   4      OPC=mulss_xmm_xmm          
  vmovhlps %xmm8, %xmm1, %xmm1   #  4     0xc   5      OPC=vmovhlps_xmm_xmm_xmm   
  retq                           #  5     0x11  1      OPC=retq                   
                                                                                  
.size target, .-target
