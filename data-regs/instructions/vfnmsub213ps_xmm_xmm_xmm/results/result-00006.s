  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                          #  Line  RIP   Bytes  Opcode                        
.target:                                        #        0     0      OPC=<label>                   
  vfnmsub231ps %xmm1, %xmm2, %xmm3              #  1     0     5      OPC=vfnmsub231ps_xmm_xmm_xmm  
  callq .move_128_064_xmm3_r10_r11              #  2     0x5   5      OPC=callq_label               
  callq .move_128_032_xmm1_xmm4_xmm5_xmm6_xmm7  #  3     0xa   5      OPC=callq_label               
  vcvtpd2ps %xmm7, %xmm1                        #  4     0xf   4      OPC=vcvtpd2ps_xmm_xmm         
  callq .move_064_128_r10_r11_xmm1              #  5     0x13  5      OPC=callq_label               
  retq                                          #  6     0x18  1      OPC=retq                      
                                                                                                    
.size target, .-target
