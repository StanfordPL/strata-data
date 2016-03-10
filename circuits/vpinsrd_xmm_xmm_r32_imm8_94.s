  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                            #  Line  RIP   Bytes  Opcode             
.target:                                          #        0     0      OPC=<label>        
  callq .move_128_064_xmm2_r8_r9                  #  1     0     5      OPC=callq_label    
  xaddw %r9w, %r9w                                #  2     0x5   5      OPC=xaddw_r16_r16  
  vzeroall                                        #  3     0xa   3      OPC=vzeroall       
  callq .move_byte_0_of_ymm1_to_r9b               #  4     0xd   5      OPC=callq_label    
  callq .move_064_128_r8_r9_xmm2                  #  5     0x12  5      OPC=callq_label    
  callq .move_128_032_xmm2_xmm8_xmm9_xmm10_xmm11  #  6     0x17  5      OPC=callq_label    
  vmovd %ebx, %xmm10                              #  7     0x1c  4      OPC=vmovd_xmm_r32  
  callq .move_032_128_xmm8_xmm9_xmm10_xmm11_xmm1  #  8     0x20  5      OPC=callq_label    
  retq                                            #  9     0x25  1      OPC=retq           
                                                                                           
.size target, .-target
