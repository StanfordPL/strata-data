  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                            #  Line  RIP   Bytes  Opcode                     
.target:                                          #        0     0      OPC=<label>                
  callq .move_128_032_xmm2_xmm8_xmm9_xmm10_xmm11  #  1     0     5      OPC=callq_label            
  mulps %xmm2, %xmm1                              #  2     0x5   3      OPC=mulps_xmm_xmm          
  vaddps %xmm11, %xmm1, %xmm5                     #  3     0x8   5      OPC=vaddps_xmm_xmm_xmm     
  vunpcklps %xmm5, %xmm8, %xmm15                  #  4     0xd   4      OPC=vunpcklps_xmm_xmm_xmm  
  movshdup %xmm9, %xmm1                           #  5     0x11  5      OPC=movshdup_xmm_xmm       
  punpckhqdq %xmm15, %xmm1                        #  6     0x16  5      OPC=punpckhqdq_xmm_xmm     
  retq                                            #  7     0x1b  1      OPC=retq                   
                                                                                                   
.size target, .-target
