  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                 #  Line  RIP   Bytes  Opcode                     
.target:                               #        0     0      OPC=<label>                
  callq .move_128_64_xmm1_xmm10_xmm11  #  1     0     5      OPC=callq_label            
  vcvtdq2ps %xmm11, %xmm4              #  2     0x5   5      OPC=vcvtdq2ps_xmm_xmm      
  vmaxss %xmm1, %xmm11, %xmm9          #  3     0xa   4      OPC=vmaxss_xmm_xmm_xmm     
  vunpckhpd %ymm9, %ymm4, %ymm10       #  4     0xe   5      OPC=vunpckhpd_ymm_ymm_ymm  
  movdqa %xmm10, %xmm1                 #  5     0x13  5      OPC=movdqa_xmm_xmm         
  retq                                 #  6     0x18  1      OPC=retq                   
                                                                                        
.size target, .-target
