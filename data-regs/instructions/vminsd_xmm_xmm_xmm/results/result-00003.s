  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                                 #  Line  RIP  Bytes  Opcode                  
.target:                               #        0    0      OPC=<label>             
  callq .move_128_64_xmm2_xmm12_xmm13  #  1     0    5      OPC=callq_label         
  vminpd %xmm3, %xmm12, %xmm14         #  2     0x5  4      OPC=vminpd_xmm_xmm_xmm  
  vmovsd %xmm14, %xmm2, %xmm1          #  3     0x9  5      OPC=vmovsd_xmm_xmm_xmm  
  retq                                 #  4     0xe  1      OPC=retq                
                                                                                    
.size target, .-target
