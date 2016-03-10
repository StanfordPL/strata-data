  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                         #  Line  RIP   Bytes  Opcode                  
.target:                       #        0     0      OPC=<label>             
  vmovsldup %xmm2, %xmm7       #  1     0     4      OPC=vmovsldup_xmm_xmm   
  unpckhps %xmm3, %xmm7        #  2     0x4   3      OPC=unpckhps_xmm_xmm    
  vmovq %xmm2, %xmm13          #  3     0x7   4      OPC=vmovq_xmm_xmm       
  vmovsd %xmm13, %xmm7, %xmm1  #  4     0xb   5      OPC=vmovsd_xmm_xmm_xmm  
  retq                         #  5     0x10  1      OPC=retq                
                                                                             
.size target, .-target
