  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                   #  Line  RIP   Bytes  Opcode                
.target:                 #        0     0      OPC=<label>           
  pxor %xmm1, %xmm1      #  1     0     4      OPC=pxor_xmm_xmm      
  subss %xmm1, %xmm1     #  2     0x4   4      OPC=subss_xmm_xmm     
  cvtss2sd %xmm1, %xmm1  #  3     0x8   4      OPC=cvtss2sd_xmm_xmm  
  subpd %xmm1, %xmm1     #  4     0xc   4      OPC=subpd_xmm_xmm     
  retq                   #  5     0x10  1      OPC=retq              
                                                                     
.size target, .-target
