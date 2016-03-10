  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                             #  Line  RIP  Bytes  Opcode                       
.target:                           #        0    0      OPC=<label>                  
  vfmsub213ss %xmm2, %xmm1, %xmm2  #  1     0    5      OPC=vfmsub213ss_xmm_xmm_xmm  
  andnps %xmm2, %xmm2              #  2     0x5  3      OPC=andnps_xmm_xmm           
  cvtpd2ps %xmm2, %xmm1            #  3     0x8  4      OPC=cvtpd2ps_xmm_xmm         
  retq                             #  4     0xc  1      OPC=retq                     
                                                                                     
.size target, .-target
