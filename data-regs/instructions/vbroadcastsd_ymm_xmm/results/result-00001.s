  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                  #  Line  RIP   Bytes  Opcode                
.target:                                #        0     0      OPC=<label>           
  callq .move_128_064_xmm2_r10_r11      #  1     0     5      OPC=callq_label       
  callq .move_064_128_r10_r11_xmm1      #  2     0x5   5      OPC=callq_label       
  callq .move_128_64_xmm2_xmm12_xmm13   #  3     0xa   5      OPC=callq_label       
  unpcklpd %xmm2, %xmm12                #  4     0xf   5      OPC=unpcklpd_xmm_xmm  
  vmovddup %xmm1, %xmm13                #  5     0x14  4      OPC=vmovddup_xmm_xmm  
  callq .move_128_256_xmm12_xmm13_ymm1  #  6     0x18  5      OPC=callq_label       
  retq                                  #  7     0x1d  1      OPC=retq              
                                                                                    
.size target, .-target
