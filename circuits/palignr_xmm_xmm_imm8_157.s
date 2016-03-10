  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                            #  Line  RIP   Bytes  Opcode                 
.target:                                          #        0     0      OPC=<label>            
  callq .move_128_032_xmm2_xmm8_xmm9_xmm10_xmm11  #  1     0     5      OPC=callq_label        
  callq .move_128_256_xmm10_xmm11_ymm3            #  2     0x5   5      OPC=callq_label        
  cvtpd2ps %xmm3, %xmm1                           #  3     0xa   4      OPC=cvtpd2ps_xmm_xmm   
  vmovshdup %xmm3, %xmm0                          #  4     0xe   4      OPC=vmovshdup_xmm_xmm  
  movsd %xmm0, %xmm1                              #  5     0x12  4      OPC=movsd_xmm_xmm      
  retq                                            #  6     0x16  1      OPC=retq               
                                                                                               
.size target, .-target
