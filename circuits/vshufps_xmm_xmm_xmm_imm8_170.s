  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                            #  Line  RIP   Bytes  Opcode                     
.target:                          #        0     0      OPC=<label>                
  vmovdqu %xmm2, %xmm6            #  1     0     4      OPC=vmovdqu_xmm_xmm        
  movsldup %xmm6, %xmm11          #  2     0x4   5      OPC=movsldup_xmm_xmm       
  vunpckhpd %xmm3, %xmm11, %xmm3  #  3     0x9   4      OPC=vunpckhpd_xmm_xmm_xmm  
  vmovsldup %xmm3, %xmm1          #  4     0xd   4      OPC=vmovsldup_xmm_xmm      
  retq                            #  5     0x11  1      OPC=retq                   
                                                                                   
.size target, .-target
