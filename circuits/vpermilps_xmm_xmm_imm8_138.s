  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                            #  Line  RIP   Bytes  Opcode                    
.target:                                          #        0     0      OPC=<label>               
  callq .move_128_064_xmm2_r8_r9                  #  1     0     5      OPC=callq_label           
  xchgl %r9d, %r8d                                #  2     0x5   3      OPC=xchgl_r32_r32         
  callq .move_064_128_r8_r9_xmm1                  #  3     0x8   5      OPC=callq_label           
  callq .move_128_032_xmm1_xmm8_xmm9_xmm10_xmm11  #  4     0xd   5      OPC=callq_label           
  vpbroadcastd %xmm1, %ymm11                      #  5     0x12  5      OPC=vpbroadcastd_ymm_xmm  
  movss %xmm8, %xmm9                              #  6     0x17  5      OPC=movss_xmm_xmm         
  vhsubpd %xmm1, %xmm1, %xmm1                     #  7     0x1c  4      OPC=vhsubpd_xmm_xmm_xmm   
  callq .move_032_128_xmm8_xmm9_xmm10_xmm11_xmm1  #  8     0x20  5      OPC=callq_label           
  retq                                            #  9     0x25  1      OPC=retq                  
                                                                                                  
.size target, .-target
