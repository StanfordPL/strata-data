  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                  #  Line  RIP   Bytes  Opcode                    
.target:                                #        0     0      OPC=<label>               
  vbroadcastss %xmm2, %xmm14            #  1     0     5      OPC=vbroadcastss_xmm_xmm  
  vmovq %xmm14, %xmm1                   #  2     0x5   5      OPC=vmovq_xmm_xmm         
  vcvttpd2dq %ymm1, %xmm2               #  3     0xa   4      OPC=vcvttpd2dq_xmm_ymm    
  callq .move_128_64_xmm1_xmm10_xmm11   #  4     0xe   5      OPC=callq_label           
  vaddpd %ymm2, %ymm14, %ymm11          #  5     0x13  4      OPC=vaddpd_ymm_ymm_ymm    
  callq .move_128_256_xmm10_xmm11_ymm1  #  6     0x17  5      OPC=callq_label           
  callq .move_64_128_xmm10_xmm11_xmm1   #  7     0x1c  5      OPC=callq_label           
  retq                                  #  8     0x21  1      OPC=retq                  
                                                                                        
.size target, .-target
