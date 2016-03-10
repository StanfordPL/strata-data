  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                  #  Line  RIP   Bytes  Opcode                 
.target:                                #        0     0      OPC=<label>            
  vcvtpd2ps %ymm2, %xmm1                #  1     0     4      OPC=vcvtpd2ps_xmm_ymm  
  callq .move_128_64_xmm1_xmm12_xmm13   #  2     0x4   5      OPC=callq_label        
  vorpd %xmm3, %xmm3, %xmm13            #  3     0x9   4      OPC=vorpd_xmm_xmm_xmm  
  callq .move_128_256_xmm12_xmm13_ymm1  #  4     0xd   5      OPC=callq_label        
  movapd %xmm2, %xmm1                   #  5     0x12  4      OPC=movapd_xmm_xmm     
  retq                                  #  6     0x16  1      OPC=retq               
                                                                                     
.size target, .-target
