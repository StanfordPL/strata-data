  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                 #  Line  RIP   Bytes  Opcode                     
.target:                               #        0     0      OPC=<label>                
  callq .move_128_64_xmm2_xmm10_xmm11  #  1     0     5      OPC=callq_label            
  vunpckhps %xmm2, %xmm10, %xmm13      #  2     0x5   4      OPC=vunpckhps_xmm_xmm_xmm  
  vmovdqu %xmm13, %xmm0                #  3     0x9   5      OPC=vmovdqu_xmm_xmm        
  vmovss %xmm3, %xmm10, %xmm12         #  4     0xe   4      OPC=vmovss_xmm_xmm_xmm     
  vmovsd %xmm12, %xmm0, %xmm1          #  5     0x12  5      OPC=vmovsd_xmm_xmm_xmm     
  retq                                 #  6     0x17  1      OPC=retq                   
                                                                                        
.size target, .-target
