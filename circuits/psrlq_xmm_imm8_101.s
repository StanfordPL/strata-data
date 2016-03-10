  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                            #  Line  RIP  Bytes  Opcode                 
.target:                                          #        0    0      OPC=<label>            
  vcvtpd2ps %xmm1, %xmm2                          #  1     0    4      OPC=vcvtpd2ps_xmm_xmm  
  callq .move_128_032_xmm2_xmm8_xmm9_xmm10_xmm11  #  2     0x4  5      OPC=callq_label        
  movups %xmm10, %xmm1                            #  3     0x9  4      OPC=movups_xmm_xmm     
  retq                                            #  4     0xd  1      OPC=retq               
                                                                                              
.size target, .-target
