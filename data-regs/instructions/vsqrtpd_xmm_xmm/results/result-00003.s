  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                            #  Line  RIP   Bytes  Opcode                 
.target:                          #        0     0      OPC=<label>            
  callq .move_128_064_xmm2_r8_r9  #  1     0     5      OPC=callq_label        
  vzeroall                        #  2     0x5   3      OPC=vzeroall           
  vcvtdq2pd %ymm10, %ymm2         #  3     0x8   5      OPC=vcvtdq2pd_ymm_ymm  
  callq .move_064_128_r8_r9_xmm2  #  4     0xd   5      OPC=callq_label        
  vsqrtpd %ymm2, %ymm1            #  5     0x12  4      OPC=vsqrtpd_ymm_ymm    
  retq                            #  6     0x16  1      OPC=retq               
                                                                               
.size target, .-target
