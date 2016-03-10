  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                  #  Line  RIP   Bytes  Opcode                  
.target:                                #        0     0      OPC=<label>             
  vmulpd %xmm2, %xmm1, %xmm2            #  1     0     4      OPC=vmulpd_xmm_xmm_xmm  
  callq .move_128_64_xmm1_xmm12_xmm13   #  2     0x4   5      OPC=callq_label         
  callq .move_256_128_ymm2_xmm10_xmm11  #  3     0x9   5      OPC=callq_label         
  haddpd %xmm12, %xmm10                 #  4     0xe   5      OPC=haddpd_xmm_xmm      
  callq .move_64_128_xmm10_xmm11_xmm1   #  5     0x13  5      OPC=callq_label         
  retq                                  #  6     0x18  1      OPC=retq                
                                                                                      
.size target, .-target
