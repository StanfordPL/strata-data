  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                            #  Line  RIP   Bytes  Opcode                  
.target:                                          #        0     0      OPC=<label>             
  callq .move_128_64_xmm1_xmm12_xmm13             #  1     0     5      OPC=callq_label         
  vmulsd %xmm2, %xmm12, %xmm12                    #  2     0x5   4      OPC=vmulsd_xmm_xmm_xmm  
  vmovsldup %ymm12, %ymm3                         #  3     0x9   5      OPC=vmovsldup_ymm_ymm   
  callq .move_128_032_xmm3_xmm8_xmm9_xmm10_xmm11  #  4     0xe   5      OPC=callq_label         
  cvtdq2pd %xmm11, %xmm15                         #  5     0x13  5      OPC=cvtdq2pd_xmm_xmm    
  haddpd %xmm15, %xmm12                           #  6     0x18  5      OPC=haddpd_xmm_xmm      
  movupd %xmm12, %xmm1                            #  7     0x1d  5      OPC=movupd_xmm_xmm      
  retq                                            #  8     0x22  1      OPC=retq                
                                                                                                
.size target, .-target
