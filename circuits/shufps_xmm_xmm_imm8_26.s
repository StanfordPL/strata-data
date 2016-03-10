  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                       #  Line  RIP   Bytes  Opcode                    
.target:                     #        0     0      OPC=<label>               
  vbroadcastss %xmm2, %ymm3  #  1     0     5      OPC=vbroadcastss_ymm_xmm  
  punpckldq %xmm3, %xmm2     #  2     0x5   4      OPC=punpckldq_xmm_xmm     
  movsldup %xmm1, %xmm1      #  3     0x9   4      OPC=movsldup_xmm_xmm      
  unpckhpd %xmm2, %xmm1      #  4     0xd   4      OPC=unpckhpd_xmm_xmm      
  retq                       #  5     0x11  1      OPC=retq                  
                                                                             
.size target, .-target
