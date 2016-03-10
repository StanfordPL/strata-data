  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                            #  Line  RIP   Bytes  Opcode                    
.target:                                          #        0     0      OPC=<label>               
  callq .move_128_032_xmm2_xmm8_xmm9_xmm10_xmm11  #  1     0     5      OPC=callq_label           
  andnps %xmm2, %xmm8                             #  2     0x5   4      OPC=andnps_xmm_xmm        
  vmovlhps %xmm10, %xmm8, %xmm3                   #  3     0x9   5      OPC=vmovlhps_xmm_xmm_xmm  
  vandps %xmm2, %xmm3, %xmm1                      #  4     0xe   4      OPC=vandps_xmm_xmm_xmm    
  retq                                            #  5     0x12  1      OPC=retq                  
                                                                                                  
.size target, .-target
