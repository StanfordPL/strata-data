  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                  #  Line  RIP   Bytes  Opcode                 
.target:                                #        0     0      OPC=<label>            
  vcvtdq2pd %ymm2, %ymm15               #  1     0     4      OPC=vcvtdq2pd_ymm_ymm  
  vmovdqu %ymm2, %ymm1                  #  2     0x4   4      OPC=vmovdqu_ymm_ymm    
  haddps %xmm15, %xmm3                  #  3     0x8   5      OPC=haddps_xmm_xmm     
  callq .move_256_128_ymm3_xmm10_xmm11  #  4     0xd   5      OPC=callq_label        
  movapd %xmm11, %xmm1                  #  5     0x12  5      OPC=movapd_xmm_xmm     
  retq                                  #  6     0x17  1      OPC=retq               
                                                                                     
.size target, .-target
