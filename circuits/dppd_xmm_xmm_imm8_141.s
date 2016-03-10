  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                            #  Line  RIP   Bytes  Opcode                
.target:                                          #        0     0      OPC=<label>           
  pandn %xmm1, %xmm1                              #  1     0     4      OPC=pandn_xmm_xmm     
  cvtpd2ps %xmm2, %xmm2                           #  2     0x4   4      OPC=cvtpd2ps_xmm_xmm  
  callq .move_128_032_xmm2_xmm8_xmm9_xmm10_xmm11  #  3     0x8   5      OPC=callq_label       
  maxsd %xmm10, %xmm1                             #  4     0xd   5      OPC=maxsd_xmm_xmm     
  retq                                            #  5     0x12  1      OPC=retq              
                                                                                              
.size target, .-target
