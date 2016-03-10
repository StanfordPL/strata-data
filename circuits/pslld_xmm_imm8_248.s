  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                     #  Line  RIP  Bytes  Opcode                  
.target:                   #        0    0      OPC=<label>             
  vmovsldup %xmm1, %xmm2   #  1     0    4      OPC=vmovsldup_xmm_xmm   
  cvtpd2ps %xmm2, %xmm4    #  2     0x4  4      OPC=cvtpd2ps_xmm_xmm    
  movhlps %xmm4, %xmm1     #  3     0x8  3      OPC=movhlps_xmm_xmm     
  punpcklqdq %xmm1, %xmm1  #  4     0xb  4      OPC=punpcklqdq_xmm_xmm  
  retq                     #  5     0xf  1      OPC=retq                
                                                                        
.size target, .-target
