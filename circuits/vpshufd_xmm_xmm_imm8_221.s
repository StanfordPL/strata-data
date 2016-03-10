  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                             #  Line  RIP   Bytes  Opcode                      
.target:                           #        0     0      OPC=<label>                 
  movshdup %xmm2, %xmm6            #  1     0     4      OPC=movshdup_xmm_xmm        
  vminpd %xmm6, %xmm6, %xmm13      #  2     0x4   4      OPC=vminpd_xmm_xmm_xmm      
  vbroadcastss %xmm13, %ymm14      #  3     0x8   5      OPC=vbroadcastss_ymm_xmm    
  vpunpckhdq %xmm6, %xmm14, %xmm1  #  4     0xd   4      OPC=vpunpckhdq_xmm_xmm_xmm  
  retq                             #  5     0x11  1      OPC=retq                    
                                                                                     
.size target, .-target
