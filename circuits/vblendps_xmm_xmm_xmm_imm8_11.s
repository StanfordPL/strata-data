  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                 #  Line  RIP   Bytes  Opcode                  
.target:                               #        0     0      OPC=<label>             
  vmovaps %xmm3, %xmm12                #  1     0     4      OPC=vmovaps_xmm_xmm     
  vmovsldup %xmm2, %xmm0               #  2     0x4   4      OPC=vmovsldup_xmm_xmm   
  unpckhps %xmm12, %xmm0               #  3     0x8   4      OPC=unpckhps_xmm_xmm    
  callq .move_128_64_xmm3_xmm12_xmm13  #  4     0xc   5      OPC=callq_label         
  vmovsd %xmm12, %xmm0, %xmm1          #  5     0x11  5      OPC=vmovsd_xmm_xmm_xmm  
  retq                                 #  6     0x16  1      OPC=retq                
                                                                                     
.size target, .-target
