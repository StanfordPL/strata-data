  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                                            #  Line  RIP   Bytes  Opcode                 
.target:                                          #        0     0      OPC=<label>            
  callq .move_256_128_ymm2_xmm12_xmm13            #  1     0     5      OPC=callq_label        
  callq .move_128_032_xmm2_xmm8_xmm9_xmm10_xmm11  #  2     0x5   5      OPC=callq_label        
  vmovsldup %xmm13, %xmm11                        #  3     0xa   5      OPC=vmovsldup_xmm_xmm  
  callq .move_128_256_xmm10_xmm11_ymm1            #  4     0xf   5      OPC=callq_label        
  movsldup %xmm12, %xmm1                          #  5     0x14  5      OPC=movsldup_xmm_xmm   
  retq                                            #  6     0x19  1      OPC=retq               
                                                                                               
.size target, .-target
