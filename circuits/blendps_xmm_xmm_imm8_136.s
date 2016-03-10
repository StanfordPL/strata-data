  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                            #  Line  RIP   Bytes  Opcode                    
.target:                                          #        0     0      OPC=<label>               
  callq .move_128_032_xmm2_xmm8_xmm9_xmm10_xmm11  #  1     0     5      OPC=callq_label           
  vmovapd %xmm1, %xmm14                           #  2     0x5   4      OPC=vmovapd_xmm_xmm       
  vmovhlps %xmm1, %xmm9, %xmm10                   #  3     0x9   4      OPC=vmovhlps_xmm_xmm_xmm  
  callq .move_032_128_xmm8_xmm9_xmm10_xmm11_xmm1  #  4     0xd   5      OPC=callq_label           
  vmovdqa %xmm14, %xmm13                          #  5     0x12  5      OPC=vmovdqa_xmm_xmm       
  movsd %xmm13, %xmm1                             #  6     0x17  5      OPC=movsd_xmm_xmm         
  retq                                            #  7     0x1c  1      OPC=retq                  
                                                                                                  
.size target, .-target
