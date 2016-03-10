  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                            #  Line  RIP   Bytes  Opcode                      
.target:                                          #        0     0      OPC=<label>                 
  vmovshdup %xmm2, %xmm12                         #  1     0     4      OPC=vmovshdup_xmm_xmm       
  callq .move_128_032_xmm1_xmm8_xmm9_xmm10_xmm11  #  2     0x4   5      OPC=callq_label             
  vbroadcastss %xmm12, %ymm15                     #  3     0x9   5      OPC=vbroadcastss_ymm_xmm    
  vmovlhps %xmm12, %xmm15, %xmm9                  #  4     0xe   5      OPC=vmovlhps_xmm_xmm_xmm    
  vpunpckhdq %xmm2, %xmm2, %xmm10                 #  5     0x13  4      OPC=vpunpckhdq_xmm_xmm_xmm  
  callq .move_032_128_xmm8_xmm9_xmm10_xmm11_xmm1  #  6     0x17  5      OPC=callq_label             
  retq                                            #  7     0x1c  1      OPC=retq                    
                                                                                                    
.size target, .-target
