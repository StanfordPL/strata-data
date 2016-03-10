  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                            #  Line  RIP   Bytes  Opcode                     
.target:                                          #        0     0      OPC=<label>                
  callq .move_128_032_xmm1_xmm8_xmm9_xmm10_xmm11  #  1     0     5      OPC=callq_label            
  xorps %xmm1, %xmm8                              #  2     0x5   4      OPC=xorps_xmm_xmm          
  vbroadcastss %xmm11, %ymm4                      #  3     0x9   5      OPC=vbroadcastss_ymm_xmm   
  vunpcklps %xmm4, %xmm2, %xmm14                  #  4     0xe   4      OPC=vunpcklps_xmm_xmm_xmm  
  movsd %xmm8, %xmm14                             #  5     0x12  5      OPC=movsd_xmm_xmm          
  movupd %xmm14, %xmm1                            #  6     0x17  5      OPC=movupd_xmm_xmm         
  retq                                            #  7     0x1c  1      OPC=retq                   
                                                                                                   
.size target, .-target
