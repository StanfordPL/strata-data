  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                          #  Line  RIP   Bytes  Opcode                
.target:                                        #        0     0      OPC=<label>           
  callq .move_128_032_xmm2_xmm4_xmm5_xmm6_xmm7  #  1     0     5      OPC=callq_label       
  movhlps %xmm4, %xmm2                          #  2     0x5   3      OPC=movhlps_xmm_xmm   
  callq .move_128_64_xmm2_xmm12_xmm13           #  3     0x8   5      OPC=callq_label       
  cvtpd2ps %xmm12, %xmm1                        #  4     0xd   5      OPC=cvtpd2ps_xmm_xmm  
  retq                                          #  5     0x12  1      OPC=retq              
                                                                                            
.size target, .-target
