  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                            #  Line  RIP   Bytes  Opcode                    
.target:                                          #        0     0      OPC=<label>               
  vmovshdup %xmm2, %xmm3                          #  1     0     4      OPC=vmovshdup_xmm_xmm     
  vmovhlps %xmm3, %xmm2, %xmm1                    #  2     0x4   4      OPC=vmovhlps_xmm_xmm_xmm  
  callq .move_128_64_xmm1_xmm10_xmm11             #  3     0x8   5      OPC=callq_label           
  callq .move_128_64_xmm3_xmm8_xmm9               #  4     0xd   5      OPC=callq_label           
  callq .move_032_128_xmm8_xmm9_xmm10_xmm11_xmm1  #  5     0x12  5      OPC=callq_label           
  retq                                            #  6     0x17  1      OPC=retq                  
                                                                                                  
.size target, .-target
