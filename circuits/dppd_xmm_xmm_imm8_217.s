  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                           #  Line  RIP   Bytes  Opcode                   
.target:                         #        0     0      OPC=<label>              
  vandnps %xmm1, %xmm1, %xmm13   #  1     0     4      OPC=vandnps_xmm_xmm_xmm  
  mulsd %xmm2, %xmm1             #  2     0x4   4      OPC=mulsd_xmm_xmm        
  unpcklpd %xmm13, %xmm1         #  3     0x8   5      OPC=unpcklpd_xmm_xmm     
  vsqrtsd %xmm13, %xmm13, %xmm6  #  4     0xd   5      OPC=vsqrtsd_xmm_xmm_xmm  
  cvtpd2ps %xmm6, %xmm15         #  5     0x12  5      OPC=cvtpd2ps_xmm_xmm     
  addpd %xmm15, %xmm1            #  6     0x17  5      OPC=addpd_xmm_xmm        
  retq                           #  7     0x1c  1      OPC=retq                 
                                                                                
.size target, .-target
