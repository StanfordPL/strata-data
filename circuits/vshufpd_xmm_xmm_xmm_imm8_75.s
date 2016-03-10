  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                            #  Line  RIP   Bytes  Opcode                    
.target:                                          #        0     0      OPC=<label>               
  callq .move_128_032_xmm3_xmm8_xmm9_xmm10_xmm11  #  1     0     5      OPC=callq_label           
  movupd %xmm3, %xmm1                             #  2     0x5   4      OPC=movupd_xmm_xmm        
  vmaxsd %xmm1, %xmm2, %xmm8                      #  3     0x9   4      OPC=vmaxsd_xmm_xmm_xmm    
  subss %xmm11, %xmm1                             #  4     0xd   5      OPC=subss_xmm_xmm         
  vmovhlps %xmm8, %xmm1, %xmm1                    #  5     0x12  5      OPC=vmovhlps_xmm_xmm_xmm  
  retq                                            #  6     0x17  1      OPC=retq                  
                                                                                                  
.size target, .-target
