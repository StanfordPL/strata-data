  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                          #  Line  RIP   Bytes  Opcode                      
.target:                                        #        0     0      OPC=<label>                 
  callq .move_128_032_xmm2_xmm4_xmm5_xmm6_xmm7  #  1     0     5      OPC=callq_label             
  vhsubpd %xmm5, %xmm5, %xmm1                   #  2     0x5   4      OPC=vhsubpd_xmm_xmm_xmm     
  vmaxss %xmm1, %xmm1, %xmm15                   #  3     0x9   4      OPC=vmaxss_xmm_xmm_xmm      
  vpunpckhdq %xmm2, %xmm15, %xmm6               #  4     0xd   4      OPC=vpunpckhdq_xmm_xmm_xmm  
  vmovddup %ymm6, %ymm1                         #  5     0x11  4      OPC=vmovddup_ymm_ymm        
  retq                                          #  6     0x15  1      OPC=retq                    
                                                                                                  
.size target, .-target
