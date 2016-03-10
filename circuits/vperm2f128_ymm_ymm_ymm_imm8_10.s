  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                #  Line  RIP   Bytes  Opcode                    
.target:                              #        0     0      OPC=<label>               
  callq .move_128_64_xmm2_xmm8_xmm9   #  1     0     5      OPC=callq_label           
  vmovlhps %xmm9, %xmm8, %xmm9        #  2     0x5   5      OPC=vmovlhps_xmm_xmm_xmm  
  vpmovsxbd %xmm8, %ymm7              #  3     0xa   5      OPC=vpmovsxbd_ymm_xmm     
  vandnpd %xmm7, %xmm7, %xmm8         #  4     0xf   4      OPC=vandnpd_xmm_xmm_xmm   
  callq .move_128_256_xmm8_xmm9_ymm1  #  5     0x13  5      OPC=callq_label           
  retq                                #  6     0x18  1      OPC=retq                  
                                                                                      
.size target, .-target
