  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                            #  Line  RIP   Bytes  Opcode                    
.target:                                          #        0     0      OPC=<label>               
  callq .move_128_032_xmm2_xmm8_xmm9_xmm10_xmm11  #  1     0     5      OPC=callq_label           
  psubd %xmm11, %xmm1                             #  2     0x5   5      OPC=psubd_xmm_xmm         
  vmovlhps %xmm3, %xmm1, %xmm1                    #  3     0xa   4      OPC=vmovlhps_xmm_xmm_xmm  
  vcvtpd2dqx %xmm10, %xmm9                        #  4     0xe   5      OPC=vcvtpd2dqx_xmm_xmm    
  callq .move_032_128_xmm8_xmm9_xmm10_xmm11_xmm1  #  5     0x13  5      OPC=callq_label           
  retq                                            #  6     0x18  1      OPC=retq                  
                                                                                                  
.size target, .-target
