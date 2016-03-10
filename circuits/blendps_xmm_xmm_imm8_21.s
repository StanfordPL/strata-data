  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                               #  Line  RIP   Bytes  Opcode                     
.target:                             #        0     0      OPC=<label>                
  vunpckhps %xmm1, %xmm1, %xmm14     #  1     0     4      OPC=vunpckhps_xmm_xmm_xmm  
  vmovsldup %xmm2, %xmm13            #  2     0x4   4      OPC=vmovsldup_xmm_xmm      
  vunpckhps %xmm14, %xmm13, %xmm9    #  3     0x8   5      OPC=vunpckhps_xmm_xmm_xmm  
  vmovss %xmm13, %xmm1, %xmm8        #  4     0xd   5      OPC=vmovss_xmm_xmm_xmm     
  callq .move_64_128_xmm8_xmm9_xmm1  #  5     0x12  5      OPC=callq_label            
  retq                               #  6     0x17  1      OPC=retq                   
                                                                                      
.size target, .-target
