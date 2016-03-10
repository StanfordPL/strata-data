  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                         #  Line  RIP   Bytes  Opcode                   
.target:                       #        0     0      OPC=<label>              
  andnpd %xmm1, %xmm1          #  1     0     4      OPC=andnpd_xmm_xmm       
  vandnps %xmm1, %xmm1, %xmm4  #  2     0x4   4      OPC=vandnps_xmm_xmm_xmm  
  vcvttpd2dq %xmm4, %xmm15     #  3     0x8   4      OPC=vcvttpd2dq_xmm_xmm   
  movddup %xmm15, %xmm1        #  4     0xc   5      OPC=movddup_xmm_xmm      
  retq                         #  5     0x11  1      OPC=retq                 
                                                                              
.size target, .-target
