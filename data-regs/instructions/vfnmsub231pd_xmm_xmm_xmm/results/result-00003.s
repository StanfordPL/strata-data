  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                            #  Line  RIP   Bytes  Opcode                        
.target:                                          #        0     0      OPC=<label>                   
  vmulps %xmm3, %xmm3, %xmm6                      #  1     0     4      OPC=vmulps_xmm_xmm_xmm        
  vfnmsub213pd %xmm1, %xmm2, %xmm3                #  2     0x4   5      OPC=vfnmsub213pd_xmm_xmm_xmm  
  callq .move_128_032_xmm2_xmm8_xmm9_xmm10_xmm11  #  3     0x9   5      OPC=callq_label               
  callq .move_128_032_xmm1_xmm4_xmm5_xmm6_xmm7    #  4     0xe   5      OPC=callq_label               
  cvtsd2ss %xmm8, %xmm6                           #  5     0x13  5      OPC=cvtsd2ss_xmm_xmm          
  vandnps %ymm3, %ymm6, %ymm1                     #  6     0x18  4      OPC=vandnps_ymm_ymm_ymm       
  retq                                            #  7     0x1c  1      OPC=retq                      
                                                                                                      
.size target, .-target
