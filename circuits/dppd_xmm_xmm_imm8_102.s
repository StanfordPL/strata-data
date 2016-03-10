  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                   #  Line  RIP  Bytes  Opcode                
.target:                 #        0    0      OPC=<label>           
  xorps %xmm0, %xmm0     #  1     0    3      OPC=xorps_xmm_xmm     
  mulpd %xmm2, %xmm1     #  2     0x3  4      OPC=mulpd_xmm_xmm     
  cvtss2sd %xmm0, %xmm1  #  3     0x7  4      OPC=cvtss2sd_xmm_xmm  
  addsubpd %xmm0, %xmm1  #  4     0xb  4      OPC=addsubpd_xmm_xmm  
  retq                   #  5     0xf  1      OPC=retq              
                                                                    
.size target, .-target
