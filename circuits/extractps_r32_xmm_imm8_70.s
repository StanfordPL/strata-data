  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                 #  Line  RIP  Bytes  Opcode                  
.target:                               #        0    0      OPC=<label>             
  vminpd %xmm1, %xmm1, %xmm2           #  1     0    4      OPC=vminpd_xmm_xmm_xmm  
  callq .move_128_64_xmm2_xmm12_xmm13  #  2     0x4  5      OPC=callq_label         
  movd %xmm13, %ebx                    #  3     0x9  5      OPC=movd_r32_xmm        
  retq                                 #  4     0xe  1      OPC=retq                
                                                                                    
.size target, .-target
