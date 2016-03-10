  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                            #  Line  RIP   Bytes  Opcode                    
.target:                                          #        0     0      OPC=<label>               
  vpbroadcastq %xmm3, %xmm12                      #  1     0     5      OPC=vpbroadcastq_xmm_xmm  
  callq .move_128_032_xmm3_xmm8_xmm9_xmm10_xmm11  #  2     0x5   5      OPC=callq_label           
  vmaxsd %xmm8, %xmm9, %xmm0                      #  3     0xa   5      OPC=vmaxsd_xmm_xmm_xmm    
  paddq %xmm2, %xmm0                              #  4     0xf   4      OPC=paddq_xmm_xmm         
  vandps %xmm0, %xmm12, %xmm1                     #  5     0x13  4      OPC=vandps_xmm_xmm_xmm    
  vmovhlps %xmm0, %xmm12, %xmm10                  #  6     0x17  4      OPC=vmovhlps_xmm_xmm_xmm  
  callq .move_032_128_xmm8_xmm9_xmm10_xmm11_xmm1  #  7     0x1b  5      OPC=callq_label           
  retq                                            #  8     0x20  1      OPC=retq                  
                                                                                                  
.size target, .-target
