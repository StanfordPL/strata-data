  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                                          #  Line  RIP   Bytes  Opcode                    
.target:                                        #        0     0      OPC=<label>               
  callq .move_128_032_xmm1_xmm4_xmm5_xmm6_xmm7  #  1     0     5      OPC=callq_label           
  vmovhlps %xmm1, %xmm4, %xmm12                 #  2     0x5   4      OPC=vmovhlps_xmm_xmm_xmm  
  callq .move_128_64_xmm2_xmm8_xmm9             #  3     0x9   5      OPC=callq_label           
  movupd %xmm12, %xmm1                          #  4     0xe   5      OPC=movupd_xmm_xmm        
  punpcklwd %xmm9, %xmm1                        #  5     0x13  5      OPC=punpcklwd_xmm_xmm     
  retq                                          #  6     0x18  1      OPC=retq                  
                                                                                                
.size target, .-target
