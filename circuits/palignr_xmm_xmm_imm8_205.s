  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                          #  Line  RIP   Bytes  Opcode                     
.target:                                        #        0     0      OPC=<label>                
  callq .move_128_032_xmm2_xmm4_xmm5_xmm6_xmm7  #  1     0     5      OPC=callq_label            
  cvtpd2dq %xmm6, %xmm10                        #  2     0x5   5      OPC=cvtpd2dq_xmm_xmm       
  vunpckhps %xmm6, %xmm10, %xmm2                #  3     0xa   4      OPC=vunpckhps_xmm_xmm_xmm  
  cvtpd2ps %xmm2, %xmm1                         #  4     0xe   4      OPC=cvtpd2ps_xmm_xmm       
  retq                                          #  5     0x12  1      OPC=retq                   
                                                                                                 
.size target, .-target
