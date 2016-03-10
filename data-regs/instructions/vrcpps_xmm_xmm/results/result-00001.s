  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                                  #  Line  RIP   Bytes  Opcode                 
.target:                                #        0     0      OPC=<label>            
  callq .move_128_064_xmm2_r8_r9        #  1     0     5      OPC=callq_label        
  vzeroall                              #  2     0x5   3      OPC=vzeroall           
  vcvtps2pd %xmm3, %ymm13               #  3     0x8   4      OPC=vcvtps2pd_ymm_xmm  
  callq .move_064_128_r8_r9_xmm3        #  4     0xc   5      OPC=callq_label        
  vrcpps %ymm3, %ymm12                  #  5     0x11  4      OPC=vrcpps_ymm_ymm     
  callq .move_128_256_xmm12_xmm13_ymm1  #  6     0x15  5      OPC=callq_label        
  retq                                  #  7     0x1a  1      OPC=retq               
                                                                                     
.size target, .-target
