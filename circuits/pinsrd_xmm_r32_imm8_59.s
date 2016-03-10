  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                            #  Line  RIP   Bytes  Opcode             
.target:                                          #        0     0      OPC=<label>        
  callq .move_128_032_xmm1_xmm8_xmm9_xmm10_xmm11  #  1     0     5      OPC=callq_label    
  xchgb %bh, %bh                                  #  2     0x5   2      OPC=xchgb_rh_rh    
  vmovd %ebx, %xmm11                              #  3     0x7   4      OPC=vmovd_xmm_r32  
  callq .move_032_128_xmm8_xmm9_xmm10_xmm11_xmm1  #  4     0xb   5      OPC=callq_label    
  retq                                            #  5     0x10  1      OPC=retq           
                                                                                           
.size target, .-target
