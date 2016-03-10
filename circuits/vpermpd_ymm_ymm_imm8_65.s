  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                  #  Line  RIP   Bytes  Opcode                    
.target:                                #        0     0      OPC=<label>               
  callq .move_128_064_xmm2_r8_r9        #  1     0     5      OPC=callq_label           
  movq %r9, %xmm8                       #  2     0x5   5      OPC=movq_xmm_r64          
  vmovupd %xmm2, %xmm13                 #  3     0xa   4      OPC=vmovupd_xmm_xmm       
  vmovlhps %xmm13, %xmm8, %xmm12        #  4     0xe   5      OPC=vmovlhps_xmm_xmm_xmm  
  callq .move_128_256_xmm12_xmm13_ymm1  #  5     0x13  5      OPC=callq_label           
  retq                                  #  6     0x18  1      OPC=retq                  
                                                                                        
.size target, .-target
