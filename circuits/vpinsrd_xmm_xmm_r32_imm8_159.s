  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                               #  Line  RIP   Bytes  Opcode                       
.target:                             #        0     0      OPC=<label>                  
  vmaxsd %xmm2, %xmm2, %xmm1         #  1     0     4      OPC=vmaxsd_xmm_xmm_xmm       
  callq .move_128_64_xmm2_xmm8_xmm9  #  2     0x4   5      OPC=callq_label              
  cvtpd2ps %xmm9, %xmm0              #  3     0x9   5      OPC=cvtpd2ps_xmm_xmm         
  vsubpd %xmm1, %xmm0, %xmm10        #  4     0xe   4      OPC=vsubpd_xmm_xmm_xmm       
  vmovd %ebx, %xmm2                  #  5     0x12  4      OPC=vmovd_xmm_r32            
  vbroadcastss %xmm2, %xmm11         #  6     0x16  5      OPC=vbroadcastss_xmm_xmm     
  unpckhps %xmm11, %xmm10            #  7     0x1b  4      OPC=unpckhps_xmm_xmm         
  vpunpcklqdq %xmm10, %xmm8, %xmm1   #  8     0x1f  5      OPC=vpunpcklqdq_xmm_xmm_xmm  
  retq                               #  9     0x24  1      OPC=retq                     
                                                                                        
.size target, .-target
