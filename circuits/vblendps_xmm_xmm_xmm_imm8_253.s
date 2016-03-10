  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                            #  Line  RIP   Bytes  Opcode                     
.target:                                          #        0     0      OPC=<label>                
  vmovdqa %xmm3, %xmm1                            #  1     0     4      OPC=vmovdqa_xmm_xmm        
  callq .move_128_032_xmm3_xmm8_xmm9_xmm10_xmm11  #  2     0x4   5      OPC=callq_label            
  vmovss %xmm8, %xmm2, %xmm14                     #  3     0x9   5      OPC=vmovss_xmm_xmm_xmm     
  callq .move_128_64_xmm1_xmm12_xmm13             #  4     0xe   5      OPC=callq_label            
  vunpcklpd %xmm13, %xmm14, %xmm1                 #  5     0x13  5      OPC=vunpcklpd_xmm_xmm_xmm  
  retq                                            #  6     0x18  1      OPC=retq                   
                                                                                                   
.size target, .-target
