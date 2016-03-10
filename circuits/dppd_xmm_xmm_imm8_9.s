  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                  #  Line  RIP   Bytes  Opcode                  
.target:                                #        0     0      OPC=<label>             
  vcvttps2dq %xmm1, %xmm12              #  1     0     4      OPC=vcvttps2dq_xmm_xmm  
  vcvtdq2pd %xmm1, %xmm0                #  2     0x4   4      OPC=vcvtdq2pd_xmm_xmm   
  vorpd %ymm0, %ymm12, %ymm2            #  3     0x8   4      OPC=vorpd_ymm_ymm_ymm   
  callq .move_256_128_ymm2_xmm12_xmm13  #  4     0xc   5      OPC=callq_label         
  movupd %xmm13, %xmm1                  #  5     0x11  5      OPC=movupd_xmm_xmm      
  retq                                  #  6     0x16  1      OPC=retq                
                                                                                      
.size target, .-target
