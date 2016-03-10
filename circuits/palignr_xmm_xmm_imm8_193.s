  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                           #  Line  RIP   Bytes  Opcode                     
.target:                         #        0     0      OPC=<label>                
  vaddsubps %xmm1, %xmm1, %xmm7  #  1     0     4      OPC=vaddsubps_xmm_xmm_xmm  
  vmovaps %xmm7, %xmm3           #  2     0x4   4      OPC=vmovaps_xmm_xmm        
  vandnps %ymm3, %ymm3, %ymm7    #  3     0x8   4      OPC=vandnps_ymm_ymm_ymm    
  cvtpd2ps %xmm7, %xmm1          #  4     0xc   4      OPC=cvtpd2ps_xmm_xmm       
  retq                           #  5     0x10  1      OPC=retq                   
                                                                                  
.size target, .-target
