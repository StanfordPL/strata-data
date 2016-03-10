  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                          #  Line  RIP   Bytes  Opcode                    
.target:                                        #        0     0      OPC=<label>               
  callq .move_128_032_xmm2_xmm4_xmm5_xmm6_xmm7  #  1     0     5      OPC=callq_label           
  vmovshdup %xmm3, %xmm3                        #  2     0x5   4      OPC=vmovshdup_xmm_xmm     
  callq .move_128_64_xmm3_xmm12_xmm13           #  3     0x9   5      OPC=callq_label           
  vmovss %xmm6, %xmm2, %xmm14                   #  4     0xe   4      OPC=vmovss_xmm_xmm_xmm    
  vmovlhps %xmm13, %xmm14, %xmm1                #  5     0x12  5      OPC=vmovlhps_xmm_xmm_xmm  
  retq                                          #  6     0x17  1      OPC=retq                  
                                                                                                
.size target, .-target
