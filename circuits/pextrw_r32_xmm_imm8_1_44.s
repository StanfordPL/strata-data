  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                            #  Line  RIP   Bytes  Opcode                    
.target:                                          #        0     0      OPC=<label>               
  callq .move_128_064_xmm1_r10_r11                #  1     0     5      OPC=callq_label           
  vbroadcastss %xmm1, %ymm2                       #  2     0x5   5      OPC=vbroadcastss_ymm_xmm  
  callq .move_128_032_xmm2_xmm8_xmm9_xmm10_xmm11  #  3     0xa   5      OPC=callq_label           
  vmovmskpd %xmm8, %ebx                           #  4     0xf   5      OPC=vmovmskpd_r32_xmm     
  xaddb %bh, %bh                                  #  5     0x14  3      OPC=xaddb_rh_rh           
  xaddw %bx, %r11w                                #  6     0x17  5      OPC=xaddw_r16_r16         
  retq                                            #  7     0x1c  1      OPC=retq                  
                                                                                                  
.size target, .-target
