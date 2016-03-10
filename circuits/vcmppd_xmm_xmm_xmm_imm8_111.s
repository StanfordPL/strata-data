  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                             #  Line  RIP   Bytes  Opcode                     
.target:                           #        0     0      OPC=<label>                
  vzeroall                         #  1     0     3      OPC=vzeroall               
  vdivps %xmm1, %xmm14, %xmm1      #  2     0x3   4      OPC=vdivps_xmm_xmm_xmm     
  vpmovsxdq %xmm1, %ymm9           #  3     0x7   5      OPC=vpmovsxdq_ymm_xmm      
  vcvtsd2ss %xmm6, %xmm9, %xmm1    #  4     0xc   4      OPC=vcvtsd2ss_xmm_xmm_xmm  
  pmovsxdq %xmm1, %xmm15           #  5     0x10  6      OPC=pmovsxdq_xmm_xmm       
  vunpckhpd %xmm15, %xmm15, %xmm1  #  6     0x16  5      OPC=vunpckhpd_xmm_xmm_xmm  
  retq                             #  7     0x1b  1      OPC=retq                   
                                                                                    
.size target, .-target
